unit uPlataformas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, Buttons,
  DBCtrls, Mask;

Type
  TOperacao = (tInsert, tUpdate);

type
  TfrmPlataformas = class(TForm)
    sbControle: TScrollBox;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    StatusBar1: TStatusBar;
    pnlMain: TPanel;
    gridMain: TDBGrid;
    pnlText: TPanel;
    qryMain: TQuery;
    dsPlataforma: TDataSource;
    qryExcluir: TQuery;
    qryInsert: TQuery;
    qryUpdate: TQuery;
    qryMainPK_Plataforma: TAutoIncField;
    qryMainFK_Importador: TStringField;
    qryMainPlataforma: TStringField;
    qryMainSigla: TStringField;
    qryMainExcluido: TBooleanField;
    Label1: TLabel;
    Label2: TLabel;
    edtPlataforma: TEdit;
    edtSigla: TEdit;
    qryImportador: TQuery;
    dtsImport: TDataSource;
    qryImportadorCodigo: TStringField;
    qryImportadorRazao_Social: TStringField;
    qryImportadorCNPJ_CPF_COMPLETO: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    edtCliente: TEdit;
    edtCNPJ: TEdit;
    SpeedButton1: TSpeedButton;
    qryMainRazao_Social: TStringField;
    qryMainCNPJ_CPF_COMPLETO: TStringField;
    Panel3: TPanel;
    Label6: TLabel;
    edtLocalizarPlataforma: TEdit;
    pnlImport: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label5: TLabel;
    edtLocalizar: TEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryMainAfterScroll(DataSet: TDataSet);
    procedure edtLocalizarChange(Sender: TObject);
    procedure edtLocalizarPlataformaChange(Sender: TObject);
  private
    Operacao : TOperacao;
    MouseDownSpot : TPoint;
    Capturing : bool;
  public
    { Public declarations }
  end;

var
  frmPlataformas: TfrmPlataformas;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmPlataformas.btnNovoClick(Sender: TObject);
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
  //--
  edtPlataforma.Clear;
  edtSigla.Clear;
  edtCliente.Clear;
  edtCNPJ.Clear;
end;

procedure TfrmPlataformas.btnCancelarClick(Sender: TObject);
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
   //--
   qryMain.Close;
   qryMain.Open;
end;

procedure TfrmPlataformas.btnAlterarClick(Sender: TObject);
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
  gridMain.Enabled := False;
  //--
end;

procedure TfrmPlataformas.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryMain.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update Plataformas set Excluido = 1 where PK_Plataforma = %d',
                                      [ qryMainPK_Plataforma.AsInteger ]);
        qryExcluir.ExecSQL;
        qryMain.Close;
        qryMain.Open;
        If ( qryMain.Eof ) Then Begin
          edtPlataforma.Clear;
          edtSigla.Clear;
          edtCliente.Clear;
          edtCNPJ.Clear;
        end;
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );
end;

procedure TfrmPlataformas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.Plataformas1.enabled := true;
  frmPlataformas := Nil;
  Action := caFree;
end;

procedure TfrmPlataformas.SpeedButton1Click(Sender: TObject);
begin
  if ( Not qryImportador.IsEmpty ) Then
    pnlImport.Show;
end;

procedure TfrmPlataformas.BitBtn2Click(Sender: TObject);
begin
  pnlImport.Hide;
end;

procedure TfrmPlataformas.BitBtn1Click(Sender: TObject);
begin
  edtCliente.Text := Trim( qryImportadorRazao_Social.AsString );
  edtCNPJ.Text := Trim( qryImportadorCNPJ_CPF_COMPLETO.AsString );
  pnlImport.Hide;
end;

procedure TfrmPlataformas.btnGravarClick(Sender: TObject);
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
   pnlText.Enabled := False;
   gridMain.Enabled := True;
   ActiveControl := btnNovo;
   //--
   GoOn := True;
   Vazio := False;

   If ( Trim( edtCliente.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo cliente não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end
   else
   If ( Trim( edtPlataforma.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo descrição da plataforma não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   end;

   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.ParamByName( 'FK_Importador' ).Value := qryImportadorCodigo.AsString;
             qryInsert.ParamByName( 'Plataforma' ).Value := edtPlataforma.Text;
             qryInsert.ParamByName( 'Sigla' ).Value := edtSigla.Text;
             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             qryUpdate.ParamByName( 'FK_Importador' ).Value := qryImportadorCodigo.Text;
             qryUpdate.ParamByName( 'Plataforma' ).Value := edtPlataforma.Text;
             qryUpdate.ParamByName( 'Sigla' ).Value := edtSigla.Text;
             qryUpdate.ParamByName( 'PK_Plataforma' ).Value := qryMainPK_Plataforma.AsInteger;   
             qryUpdate.ExecSQL;
             GoOn := True;
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
        pnlText.Enabled := True;
        gridMain.Enabled := True;
        //--
     end;
   end;
end;

procedure TfrmPlataformas.FormShow(Sender: TObject);
begin
  qryMain.Close;
  qryMain.Open;
  qryImportador.Close;
  qryImportador.Open;
end;

procedure TfrmPlataformas.qryMainAfterScroll(DataSet: TDataSet);
begin
  edtCliente.Text := qryMainRazao_Social.AsString;
  edtCNPJ.Text := qryMainCNPJ_CPF_COMPLETO.AsString;
  edtPlataforma.Text := qryMainPlataforma.AsString;
  edtSigla.Text := qryMainSigla.AsString;
end;

procedure TfrmPlataformas.edtLocalizarChange(Sender: TObject);
begin
  qryImportador.Locate('Razao_Social', edtLocalizar.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmPlataformas.edtLocalizarPlataformaChange(Sender: TObject);
begin
  qryMain.Locate('Plataforma', edtLocalizarPlataforma.Text, [loCaseInsensitive, loPartialKey]);
end;

end.
