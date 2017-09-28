unit uControleHierarquicoCelula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, Db, DBTables,
  ExtCtrls;

Type
  TOperacao = (tInsert, tUpdate);
  TFuncao = (tVazio, tSupervisor, tCoordenador, tGerente);

type
  TfrmControleHierarquicoCelula = class(TForm)
    StatusBar1: TStatusBar;
    gridMain: TDBGrid;
    sbControle: TScrollBox;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    qryColabor: TQuery;
    dtsColabor: TDataSource;
    qryCoord: TQuery;
    dtsCoord: TDataSource;
    qrySuper: TQuery;
    dtsSuper: TDataSource;
    qryMain: TQuery;
    dtsMain: TDataSource;
    qryMainPK_Celula: TAutoIncField;
    qryMainDescricao: TStringField;
    qryMainFK_Supervisor: TStringField;
    qryMainFK_Coordenador: TStringField;
    qryMainFK_Colaborador_Independente: TStringField;
    qryMainTipo: TBooleanField;
    qryMainExcluido: TBooleanField;
    pnlText: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    edtDescricao: TEdit;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    qryUpdate: TQuery;
    qryInsert: TQuery;
    qryExcluir: TQuery;
    qryCoordUsuario: TStringField;
    qryCoordNome_Completo: TStringField;
    qryColaborUsuario: TStringField;
    qryColaborNome_Completo: TStringField;
    qrySuperUsuario: TStringField;
    qrySuperNome_Completo: TStringField;
    btnCliente: TBitBtn;
    btnColaborador: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    dblGerente: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    qryGerente: TQuery;
    dtsGerente: TDataSource;
    qryGerenteUsuario: TStringField;
    qryGerenteNome_Completo: TStringField;
    qryMainFK_Gerente: TStringField;
    qryAtualizaResp: TQuery;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure qryMainAfterScroll(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnColaboradorClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure dblGerenteExit(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure dblGerenteCloseUp(Sender: TObject);
  private
    { Private declarations }
    Operacao : TOperacao;
    SupervisorOld,
    CoordenadorOld,
    GerenteOld : String;
    FuncaoSuper : TFuncao;
    FuncaoGerente : TFuncao;
    FuncaoCoord : TFuncao;
  public
    { Public declarations }
  end;

var
  frmControleHierarquicoCelula: TfrmControleHierarquicoCelula;

implementation

uses uControleHierarquicoClienteColaborador;

{$R *.DFM}

procedure TfrmControleHierarquicoCelula.FormShow(Sender: TObject);
begin
  qryColabor.Open;
  qryCoord.Open;
  qrySuper.Open;
  qryMain.Open;
  qryGerente.Open;
  if ( qryGerente.RecordCount = 1 ) then begin
    dblGerente.Enabled := False;
    SpeedButton4.Enabled := False;
  end
  else begin
    dblGerente.Enabled := True;
    SpeedButton4.Enabled := True;
  end;
end;

procedure TfrmControleHierarquicoCelula.CheckBox1Click(Sender: TObject);
begin
  DBLookupComboBox3.Enabled := CheckBox1.Checked;
  //DBLookupComboBox3.KeyValue := -1;
end;

procedure TfrmControleHierarquicoCelula.qryMainAfterScroll(
  DataSet: TDataSet);
begin
 DBLookupComboBox1.KeyValue := Trim( qryMainFK_Coordenador.AsString );
 DBLookupComboBox2.KeyValue := Trim( qryMainFK_Supervisor.AsString );
 DBLookupComboBox3.KeyValue := Trim( qryMainFK_Colaborador_Independente.AsString );
 dblGerente.KeyValue := Trim( qryMainFK_Gerente.AsString );
 CheckBox1.Checked := qryMainTipo.AsBoolean;
 edtDescricao.Text := qryMainDescricao.AsString;
 btnCliente.Enabled := Not( qryMain.IsEmpty );
 btnColaborador.Enabled := Not( qryMain.IsEmpty );
end;

procedure TfrmControleHierarquicoCelula.btnNovoClick(Sender: TObject);
begin
  // Define tipo de Operaçao
  Operacao := tInsert;
  //--
  // Controles
  btnNovo.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnFechar.Enabled := False;
  btnCancelar.Enabled := True;
  btnGravar.Enabled := True;
  pnlText.Enabled := True;
  gridMain.Enabled := True;
  btnCliente.Enabled := False;
  btnColaborador.Enabled := False;
  gridMain.Enabled := false;
  //
  DBLookupComboBox1.KeyValue := -1;
  DBLookupComboBox2.KeyValue := -1;
  DBLookupComboBox3.KeyValue := -1;
  if ( qryGerente.RecordCount = 1 ) then
    dblGerente.KeyValue := qryGerente['Usuario'];
  CheckBox1.Checked := false;
  edtDescricao.Clear;
end;

procedure TfrmControleHierarquicoCelula.btnAlterarClick(Sender: TObject);
begin
  // Define tipo de Operaçao
  Operacao := tUpdate;
  //--
  // Controles
  btnNovo.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnFechar.Enabled := False;
  btnCancelar.Enabled := True;
  btnGravar.Enabled := True;
  pnlText.Enabled := True;
  gridMain.Enabled := True;
  gridMain.Enabled := false;
  //
  // Old
  FuncaoSuper := tVazio;
  FuncaoCoord := tVazio;
  FuncaoGerente := tVazio;
  
  SupervisorOld := qrySuperUsuario.AsString ;
  CoordenadorOld := qryCoordUsuario.AsString;
  GerenteOld := qryGerenteUsuario.AsString;
  //---
end;

procedure TfrmControleHierarquicoCelula.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryMain.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update Controle_Hierarquico_Celulas set Excluido = 1 where PK_Celula = %d',
                                      [ qryMainPK_Celula.AsInteger ]);
        qryExcluir.ExecSQL;
        qryMain.Close;
        qryMain.Open;
        If ( qryMain.Eof ) Then Begin
          DBLookupComboBox1.KeyValue := -1;
          DBLookupComboBox2.KeyValue := -1;
          DBLookupComboBox3.KeyValue := -1;
          CheckBox1.Checked := false;
          edtDescricao.Clear;
        end;
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );
end;

procedure TfrmControleHierarquicoCelula.btnCancelarClick(Sender: TObject);
begin
   // Controles
   btnNovo.Enabled := True;
   btnAlterar.Enabled := True;
   btnExcluir.Enabled := True;
   btnFechar.Enabled := True;
   btnCancelar.Enabled := False;
   btnGravar.Enabled := False;
   gridMain.Enabled := True;
   pnlText.Enabled := False;
   ActiveControl := btnNovo;
   btnCliente.Enabled := True;
   btnColaborador.Enabled := True;
   gridMain.Enabled := true;
   //--
end;

procedure TfrmControleHierarquicoCelula.btnGravarClick(Sender: TObject);
  var
    GoOn,
    Vazio : Boolean;
begin
   // Controles
   btnNovo.Enabled := True;
   btnAlterar.Enabled := True;
   btnExcluir.Enabled := True;
   btnFechar.Enabled := True;
   btnCancelar.Enabled := False;
   btnGravar.Enabled := False;
   gridMain.Enabled := True;
   pnlText.Enabled := False;
   ActiveControl := btnNovo;
   btnCliente.Enabled := True;
   btnColaborador.Enabled := True;
   gridMain.Enabled := true;
   //--
   GoOn := True;
   Vazio := False;
   If ( Trim( edtDescricao.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo descrição não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( CheckBox1.Checked ) Then begin
     If ( DBLookupComboBox3.Text = '' ) Then Begin
       GoOn := False;
       Vazio := True;
       Application.MessageBox('Campo Colaborador Independente não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     end;
   end;
   {else
   If ( Not CheckBox1.Checked ) Then begin
     If ( DBLookupComboBox2.Text = '' ) Then Begin
       GoOn := False;
       Vazio := True;
       Application.MessageBox('Campo Supervisor não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     end;
   end
   else
   If ( Not CheckBox1.Checked ) Then begin
     If ( DBLookupComboBox1.Text = '' ) Then Begin
       GoOn := False;
       Vazio := True;
       Application.MessageBox('Campo Coordenador não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     end;
   end;
   }
   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.ParamByName( 'Descricao' ).AsString := Trim( edtDescricao.Text );
             if ( DBLookupComboBox2.Text <> '' ) then
               qryInsert.ParamByName( 'FK_Supervisor' ).AsString := Trim( qrySuperUsuario.AsString )
             else
               qryInsert.ParamByName( 'FK_Supervisor' ).AsString := '';

             if ( DBLookupComboBox1.Text <> '' ) then
               qryInsert.ParamByName( 'FK_Coordenador' ).AsString := Trim( qryCoordUsuario.AsString )
             else
               qryInsert.ParamByName( 'FK_Coordenador' ).AsString := '';
             if ( DBLookupComboBox3.Text <> '' ) then
               qryInsert.ParamByName( 'FK_Colaborador_Independente' ).AsString := Trim( qryColaborUsuario.AsString )
             else
               qryInsert.ParamByName( 'FK_Colaborador_Independente' ).AsString := '';
             if ( dblGerente.Text <> '' ) then
               qryInsert.ParamByName( 'FK_Gerente' ).AsString := Trim( qryGerenteUsuario.AsString )
             else
               qryInsert.ParamByName( 'FK_Gerente' ).AsString := '';
             qryInsert.ParamByName( 'Tipo' ).Value := CheckBox1.Checked;
             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryUpdate.ParamByName( 'Descricao' ).AsString := Trim( edtDescricao.Text );

             if ( DBLookupComboBox2.Text <> '' ) then
               qryUpdate.ParamByName( 'FK_Supervisor' ).AsString := Trim( qrySuperUsuario.AsString )
             else
               qryUpdate.ParamByName( 'FK_Supervisor' ).AsString := '';

             if ( DBLookupComboBox1.Text <> '' ) then
               qryUpdate.ParamByName( 'FK_Coordenador' ).AsString := Trim( qryCoordUsuario.AsString )
             else
               qryUpdate.ParamByName( 'FK_Coordenador' ).AsString := '';
             if ( DBLookupComboBox3.Text <> '' ) then
               qryUpdate.ParamByName( 'FK_Colaborador_Independente' ).AsString := Trim( qryColaborUsuario.AsString )
             else
               qryUpdate.ParamByName( 'FK_Colaborador_Independente' ).AsString := '';

             if ( dblGerente.Text <> '' ) then
               qryUpdate.ParamByName( 'FK_Gerente' ).AsString := Trim( qryGerenteUsuario.AsString )
             else
               qryUpdate.ParamByName( 'FK_Gerente' ).AsString := '';
             qryUpdate.ParamByName( 'Tipo' ).AsBoolean := CheckBox1.Checked;
             qryUpdate.ParamByName( 'PK_Celula' ).AsInteger := qryMainPK_Celula.AsInteger;
             qryUpdate.ExecSQL;
             GoOn := True;
             // Atualizar responsável atual
             if ( GoOn ) and ( FuncaoSuper <> tVazio ) then begin
               if ( FuncaoSuper = tSupervisor ) then begin
                 qryAtualizaResp.ParamByName('AutorizadoNew').Value := qrySuperUsuario.AsString;
                 qryAtualizaResp.ParamByName('AutorizadorOld').Value := SupervisorOld;
                 qryAtualizaResp.ExecSQL;
               end;
             end;
             if ( GoOn ) and ( FuncaoCoord <> tVazio ) then begin
               if ( FuncaoCoord = tCoordenador ) then begin
                 qryAtualizaResp.ParamByName('AutorizadoNew').Value := qryCoordUsuario.AsString;
                 qryAtualizaResp.ParamByName('AutorizadorOld').Value := CoordenadorOld;
                 qryAtualizaResp.ExecSQL;
               end;
             end;
             if ( GoOn ) and ( FuncaoGerente <> tVazio ) then begin
               if ( FuncaoGerente = tGerente ) then begin
                 qryAtualizaResp.ParamByName('AutorizadoNew').Value := qryGerenteUsuario.AsString;
                 qryAtualizaResp.ParamByName('AutorizadorOld').Value := GerenteOld;
                 qryAtualizaResp.ExecSQL;
               end;
             end;
             //---
           except
             GoOn := False;
           end;
         end;
       end;
     end;
   finally
     If ( GoOn ) Then Begin
       Application.MessageBox('Gravado com sucesso!','Informação', MB_OK + MB_ICONINFORMATION );
       qryMain.Close;
       qryMain.Open;
     end
     else
     If ( Not Vazio ) Then
        Application.MessageBox('Erro na gravação. Tente gravar novamente','Erro', MB_OK + MB_ICONERROR );
     If ( Vazio ) Then begin
        // Define tipo de Operaçao
        Operacao := tInsert;
        //--
        // Controles
        btnNovo.Enabled := False;
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
        btnFechar.Enabled := False;
        btnCancelar.Enabled := True;
        btnGravar.Enabled := True;
        gridMain.Enabled := True;
        pnlText.Enabled := True;
        //--  
     end;
   end;
end;

procedure TfrmControleHierarquicoCelula.btnClienteClick(Sender: TObject);
begin
  frmControleHierarquicoClienteColaborador := TfrmControleHierarquicoClienteColaborador.create(Self);
  frmControleHierarquicoClienteColaborador.Tipo := 1;
  frmControleHierarquicoClienteColaborador.Caption := 'Seleção de clientes';
  frmControleHierarquicoClienteColaborador.lb1.Caption := 'Clientes';
  frmControleHierarquicoClienteColaborador.Celula := qryMainPK_Celula.AsInteger;
  frmControleHierarquicoClienteColaborador.ShowModal;
  frmControleHierarquicoClienteColaborador.free;
end;

procedure TfrmControleHierarquicoCelula.btnColaboradorClick(Sender: TObject);
begin
  frmControleHierarquicoClienteColaborador := TfrmControleHierarquicoClienteColaborador.create(Self);
  frmControleHierarquicoClienteColaborador.Tipo := 2;
  frmControleHierarquicoClienteColaborador.Caption := 'Seleção de colaboradores';
  frmControleHierarquicoClienteColaborador.lb1.Caption := 'Colaboradores';
  frmControleHierarquicoClienteColaborador.Celula := qryMainPK_Celula.AsInteger;
  frmControleHierarquicoClienteColaborador.ShowModal;
  frmControleHierarquicoClienteColaborador.free;
end;

procedure TfrmControleHierarquicoCelula.SpeedButton1Click(Sender: TObject);
begin
  DBLookupComboBox1.KeyValue := -1;
end;

procedure TfrmControleHierarquicoCelula.SpeedButton3Click(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue := -1;
end;

procedure TfrmControleHierarquicoCelula.SpeedButton2Click(Sender: TObject);
begin
  DBLookupComboBox3.KeyValue := -1;
end;

procedure TfrmControleHierarquicoCelula.DBLookupComboBox2Exit(
  Sender: TObject);
begin
{  if ( SupervisorOld <> qrySuperUsuario.AsString ) then begin
    Funcao := tSupervisor;
    Application.MessageBox(PChar(format('O(A) Supervisor(a): %s herdará as solicitações de autorização de numerários pendentes do(a) supervisor(a): %s',[DBLookupComboBox2.Text, SupervisorOld])),'Informação', MB_OK + MB_ICONINFORMATION );
  end
  else
    Funcao := tVazio;
}
end;

procedure TfrmControleHierarquicoCelula.DBLookupComboBox1Exit(
  Sender: TObject);
begin
{
  if ( CoordenadorOld <> qryCoordUsuario.AsString ) then begin
    Funcao := tCoordenador;
    Application.MessageBox(PChar(format('O(A) Coordenador(a): %s herdará as solicitações de autorização de numerários pendentes do(a) coordenador(a): %s',[DBLookupComboBox1.Text, CoordenadorOld])),'Informação', MB_OK + MB_ICONINFORMATION );
  end
  else
    Funcao := tVazio;
    }
end;

procedure TfrmControleHierarquicoCelula.dblGerenteExit(Sender: TObject);
begin
{
  if ( GerenteOld <> qryGerenteUsuario.AsString ) then begin
    Funcao := tGerente;
    Application.MessageBox(PChar(format('O(A) Gerente: %s herdará as solicitações de autorização de numerários pendentes do(a) gerente: %s', [dblGerente.Text, GerenteOld])),'Informação', MB_OK + MB_ICONINFORMATION );
  end
  else
    Funcao := tVazio;
}
end;

procedure TfrmControleHierarquicoCelula.DBLookupComboBox1CloseUp(
  Sender: TObject);
begin
  if ( CoordenadorOld <> qryCoordUsuario.AsString ) then begin
    FuncaoCoord := tCoordenador;
    Application.MessageBox(PChar(format('O(A) Coordenador(a): %s herdará as solicitações de autorização de numerários pendentes do(a) coordenador(a): %s',[DBLookupComboBox1.Text, CoordenadorOld])),'Informação', MB_OK + MB_ICONINFORMATION );
  end
  else
    FuncaoCoord := tVazio;
end;

procedure TfrmControleHierarquicoCelula.DBLookupComboBox2CloseUp(
  Sender: TObject);
begin
  if ( SupervisorOld <> qrySuperUsuario.AsString ) then begin
    FuncaoSuper := tSupervisor;
    Application.MessageBox(PChar(format('O(A) Supervisor(a): %s herdará as solicitações de autorização de numerários pendentes do(a) supervisor(a): %s',[DBLookupComboBox2.Text, SupervisorOld])),'Informação', MB_OK + MB_ICONINFORMATION );
  end
  else
    FuncaoSuper := tVazio;
end;

procedure TfrmControleHierarquicoCelula.dblGerenteCloseUp(Sender: TObject);
begin
  if ( GerenteOld <> qryGerenteUsuario.AsString ) then begin
    FuncaoGerente := tGerente;
    Application.MessageBox(PChar(format('O(A) Gerente: %s herdará as solicitações de autorização de numerários pendentes do(a) gerente: %s', [dblGerente.Text, GerenteOld])),'Informação', MB_OK + MB_ICONINFORMATION );
  end
  else
    FuncaoGerente := tVazio;
end;

end.
