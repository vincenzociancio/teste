unit uControle_ADE_Andamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, Grids, DBGrids, DBCtrls, Db,
  DBTables, Mask;

Type
  TOperacao = (tInsert, tUpdate);

type
  TfrmControle_ADE_Andamento = class(TForm)
    StatusBar1: TStatusBar;
    sbControle: TScrollBox;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFechar: TBitBtn;
    pnlMain: TPanel;
    gridMain: TDBGrid;
    Bevel3: TBevel;
    btnCad_Fiscais: TBitBtn;
    pnlText: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlNum_Processo_Pasta: TPanel;
    Label3: TLabel;
    edtProcessoMS2000: TMaskEdit;
    btnBuscar: TBitBtn;
    edtStatus: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edtFiscal: TDBLookupComboBox;
    qryControle_ADE_Andamento: TQuery;
    qryStatus: TQuery;
    dtsControle_ADE_Andamento: TDataSource;
    dtsStatus: TDataSource;
    qryFiscais: TQuery;
    dtsFiscais: TDataSource;
    Label6: TLabel;
    edtTipoADE: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    qryBuscaProcesso: TQuery;
    edtProcessoReceita: TMaskEdit;
    qryExcluir: TQuery;
    qryUpdate: TQuery;
    qryInsert: TQuery;
    edtCliente: TEdit;
    edtEmbarcacao: TEdit;
    dtsTipo: TDataSource;
    qryTipo: TQuery;
    edtDataProtocolo: TMaskEdit;
    btnLocais: TSpeedButton;
    pnlEmbarcacao: TPanel;
    Panel1: TPanel;
    btnCancelarEmb: TBitBtn;
    btnConfirmar: TBitBtn;
    DBGrid1: TDBGrid;
    qryLocais: TQuery;
    dtsLocais: TDataSource;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    edtDT_COANA: TMaskEdit;
    edtDT_DITEC: TMaskEdit;
    Label10: TLabel;
    Label11: TLabel;
    edtDT_DIANA: TMaskEdit;
    pnlLocalizar: TPanel;
    Label12: TLabel;
    edtBuscaProcesso: TMaskEdit;
    Label13: TLabel;
    Label14: TLabel;
    edtDTPlub: TMaskEdit;
    edtADENum: TEdit;
    edtOp: TComboBox;
    edtBuscaCliente: TEdit;
    edtMS: TMaskEdit;
    btnFinalizar: TBitBtn;
    pnlStatus: TPanel;
    qryControle_ADE_AndamentoPK_ADEA: TAutoIncField;
    qryControle_ADE_AndamentoFK_Importador: TStringField;
    qryControle_ADE_AndamentoFK_Processo: TStringField;
    qryControle_ADE_AndamentoDT_Abertura_Processo: TDateTimeField;
    qryControle_ADE_AndamentoNum_Processo_Receita: TStringField;
    qryControle_ADE_AndamentoFK_Fiscais: TIntegerField;
    qryControle_ADE_AndamentoFK_Status: TIntegerField;
    qryControle_ADE_AndamentoEmbarcacao: TStringField;
    qryControle_ADE_AndamentoRazao_Social: TStringField;
    qryControle_ADE_AndamentoFK_Tipo: TIntegerField;
    qryControle_ADE_AndamentoDT_COANA: TDateTimeField;
    qryControle_ADE_AndamentoDT_DITEC: TDateTimeField;
    qryControle_ADE_AndamentoDT_DIANA: TDateTimeField;
    qryControle_ADE_AndamentoDT_ADE_Plublicacao: TDateTimeField;
    qryControle_ADE_AndamentoADE_Num: TIntegerField;
    qryControle_ADE_AndamentoFinalizado: TBooleanField;
    btnOpen: TBitBtn;
    procedure btnCad_FiscaisClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure qryControle_ADE_AndamentoAfterScroll(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarEmbClick(Sender: TObject);
    procedure btnLocaisClick(Sender: TObject);
    procedure edtProcessoMS2000Change(Sender: TObject);
    procedure edtBuscaProcessoChange(Sender: TObject);
    procedure gridMainTitleClick(Column: TColumn);
    procedure edtADENumKeyPress(Sender: TObject; var Key: Char);
    procedure edtStatusCloseUp(Sender: TObject);
    procedure edtStatusExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtOpChange(Sender: TObject);
    procedure edtBuscaClienteChange(Sender: TObject);
    procedure edtMSChange(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
    Operacao : TOperacao;
    fAtualizarFiscais: Boolean;
    Ordem : String;
    procedure HDBotao( status : Boolean );
  public
    { Public declarations }
    property AtualizarFiscais : Boolean Read fAtualizarFiscais write fAtualizarFiscais;
  end;

var
  frmControle_ADE_Andamento: TfrmControle_ADE_Andamento;

implementation

uses uControle_ADE_Fiscais, U_MSCOMEX;

{$R *.DFM}

procedure TfrmControle_ADE_Andamento.btnCad_FiscaisClick(Sender: TObject);
begin
  try
    frmCadastroFiscais := TfrmCadastroFiscais.Create( Self );
    frmCadastroFiscais.ShowModal;
  finally
    If ( AtualizarFiscais ) Then Begin
      qryFiscais.Close;
      qryFiscais.Open;
    end;
    frmCadastroFiscais.Free;
  end;
end;

procedure TfrmControle_ADE_Andamento.FormShow(Sender: TObject);
begin
  //cbbTipo.ItemIndex := 0;
  qryControle_ADE_Andamento.Close;
  qryControle_ADE_Andamento.Open;

  qryStatus.Close;
  qryStatus.Open;

  qryFiscais.Close;
  qryFiscais.Open;

  qryTipo.Close;
  qryTipo.Open;
  edtOp.ItemIndex := 0;
end;

procedure TfrmControle_ADE_Andamento.btnNovoClick(Sender: TObject);
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
  pnlNum_Processo_Pasta.Enabled := True;
  btnCad_Fiscais.Enabled := False;
  edtTipoADE.KeyValue := -1;
  edtCliente.Clear;
  edtEmbarcacao.Clear;
  edtFiscal.KeyValue := -1;
  edtProcessoReceita.Clear;
  edtStatus.KeyValue := -1;
  edtDataProtocolo.Clear;
  edtDT_COANA.Clear;
  edtDT_DITEC.Clear;
  edtDT_DIANA.Clear;
  edtADENum.Clear;
  edtDTPlub.Clear;
  //--
  edtProcessoMS2000.Text := '';
  edtProcessoMS2000.SetFocus;
end;

procedure TfrmControle_ADE_Andamento.btnBuscarClick(Sender: TObject);
begin
  If ( Trim( edtProcessoMS2000.Text )<> '' ) Then Begin
    qryBuscaProcesso.Params[0].value := edtProcessoMS2000.Text;
    qryBuscaProcesso.Close;
    qryBuscaProcesso.Open;
    edtCliente.Text := '';
    edtEmbarcacao.Text := '';
    edtFiscal.KeyValue := -1;
    edtStatus.KeyValue := -1;
    edtTipoADE.KeyValue := -1;
    edtProcessoReceita.Text := '';
    If ( Not qryBuscaProcesso.IsEmpty ) Then Begin
      If ( qryBuscaProcesso.FieldByName( 'TIPO' ).asString <> 'AD' ) Then begin
        Application.MessageBox('Processo não é do tipo Ato Declaratório!','Informação', MB_OK + MB_ICONINFORMATION );
        edtProcessoMS2000.SetFocus;
        Exit;
      end;
      edtCliente.Text := qryBuscaProcesso.FieldByName( 'Razao_Social' ).asString;
      // Pegando embarcação
      edtEmbarcacao.Clear;
      qryLocais.Params[0].Value := qryBuscaProcesso.FieldByName( 'Importador' ).AsString;
      qryLocais.Close;
      qryLocais.Open;
      pnlEmbarcacao.Show;
      //--
      edtTipoADE.SetFocus;
    end
    else
      Application.MessageBox('Não foi possível localizar o registro!','Informação', MB_OK + MB_ICONINFORMATION );
  end;
end;

procedure TfrmControle_ADE_Andamento.qryControle_ADE_AndamentoAfterScroll(
  DataSet: TDataSet);
begin
  edtProcessoReceita.Text := '';
  edtProcessoReceita.Text := qryControle_ADE_Andamento.FieldByName( 'Num_Processo_Receita' ).asString;
  edtCliente.Text := qryControle_ADE_Andamento.FieldByName( 'Razao_Social' ).asString;
  edtEmbarcacao.Text := qryControle_ADE_Andamento.FieldByName( 'Embarcacao' ).asString;
  edtStatus.KeyValue := qryControle_ADE_Andamento.FieldByName( 'FK_Status' ).asInteger;
  edtFiscal.KeyValue := qryControle_ADE_Andamento.fieldByName( 'FK_Fiscais' ).asInteger;
  edtTipoADE.KeyValue := qryControle_ADE_Andamento.fieldByName( 'FK_Tipo' ).asInteger;
  edtADENum.Text := qryControle_ADE_Andamento.fieldByName( 'ADE_Num' ).asString;
  // Datas
  edtDataProtocolo.Text := FormatDateTime('dd/mm/yyyy', qryControle_ADE_Andamento.fieldByName( 'DT_Abertura_Processo' ).AsDateTime );
  If ( qryControle_ADE_Andamento.fieldByName( 'DT_COANA' ).AsDateTime = 0 ) Then
    edtDT_COANA.Clear
  else
    edtDT_COANA.Text := FormatDateTime('dd/mm/yyyy', qryControle_ADE_Andamento.fieldByName( 'DT_COANA' ).AsDateTime );
  If ( qryControle_ADE_Andamento.fieldByName( 'DT_DITEC' ).AsDateTime = 0 ) Then
    edtDT_DITEC.Clear
  else
    edtDT_DITEC.Text := FormatDateTime('dd/mm/yyyy', qryControle_ADE_Andamento.fieldByName( 'DT_DITEC' ).AsDateTime );
  If ( qryControle_ADE_Andamento.fieldByName( 'DT_DIANA' ).AsDateTime = 0 ) Then
    edtDT_DIANA.Clear
  else
    edtDT_DIANA.Text := FormatDateTime('dd/mm/yyyy', qryControle_ADE_Andamento.fieldByName( 'DT_DIANA' ).AsDateTime );

  If ( qryControle_ADE_Andamento.fieldByName( 'DT_ADE_Plublicacao' ).AsDateTime = 0 ) Then
    edtDTPlub.Clear
  else
    edtDTPlub.Text := FormatDateTime('dd/mm/yyyy', qryControle_ADE_Andamento.fieldByName( 'DT_ADE_Plublicacao' ).AsDateTime );
  //--
  // Finalizado?
  HDBotao( qryControle_ADE_AndamentoFinalizado.AsBoolean );
  btnOpen.Enabled := (v_usuario = 'FLAVIA') And (qryControle_ADE_AndamentoFinalizado.AsBoolean);
end;

procedure TfrmControle_ADE_Andamento.btnAlterarClick(Sender: TObject);
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
   pnlNum_Processo_Pasta.Enabled := False;
   btnCad_Fiscais.Enabled := False;
   //--
   // buscado embarcações
    qryLocais.Params[0].Value := qryControle_ADE_Andamento.FieldByName( 'FK_Importador' ).AsString;
    qryLocais.Close;
    qryLocais.Open;
   //--
end;

procedure TfrmControle_ADE_Andamento.btnExcluirClick(Sender: TObject);
begin
  If ( Not qryControle_ADE_Andamento.IsEmpty ) Then Begin
    If ( MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes ) Then Begin
      try
        qryExcluir.Close;
        qryExcluir.SQL.Clear;
        qryExcluir.SQL.Text := Format('update Controle_ADE_Andamento set Excluido = 1 where PK_ADEA = %d',
                                      [ qryControle_ADE_Andamento.FieldByName( 'PK_ADEA' ).asInteger ]);
        qryExcluir.ExecSQL;
        qryControle_ADE_Andamento.Close;
        qryControle_ADE_Andamento.Open;
        If ( qryControle_ADE_Andamento.Eof ) Then Begin
          edtTipoADE.KeyValue := -1;
          edtCliente.Clear;
          edtEmbarcacao.Clear;
          edtFiscal.KeyValue := -1;
          edtProcessoReceita.Clear;
          edtStatus.KeyValue := -1;
          edtDataProtocolo.Clear;
          edtDT_COANA.Clear;
          edtDT_DITEC.Clear;
          edtDT_DIANA.Clear;
          edtADENum.Clear;
          edtDTPlub.Clear;
        end;
      except
        Application.MessageBox('Ocorreu um erro na exclusão. Tente excluir novamente','Erro', MB_OK + MB_ICONERROR );
      end;
    end;
  end
  else
  Application.MessageBox('Não existe registro para excluir!','Informação', MB_OK + MB_ICONINFORMATION );
end;

procedure TfrmControle_ADE_Andamento.btnCancelarClick(Sender: TObject);
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
   pnlNum_Processo_Pasta.Enabled := False;
   btnCad_Fiscais.Enabled := True;
   //--     
   qryControle_ADE_Andamento.Close;
   qryControle_ADE_Andamento.Open;
end;

procedure TfrmControle_ADE_Andamento.btnGravarClick(Sender: TObject);
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
   pnlNum_Processo_Pasta.Enabled := False;
   btnCad_Fiscais.Enabled := True;
   //--
   GoOn := True;
   Vazio := False;
   If ( Trim( edtCliente.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo nome não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtCliente.SetFocus;
   end
   else
   If ( Trim( edtTipoADE.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo tipo não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtTipoADE.SetFocus;
   end
   else
   If ( Trim( edtCliente.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo cliente não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtCliente.SetFocus;
   end
   else
   If ( Trim( edtProcessoReceita.Text ) = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo nº processo da receita não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtProcessoReceita.SetFocus;
   end
   else
   If ( edtDataProtocolo.Text = '' ) Or
     ( edtDataProtocolo.Text ='  /  /    ' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo data não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtDataAbertura.SetFocus;
   end
   else
   If ( edtStatus.Text = '' ) Then Begin
     GoOn := False;
     Vazio := True;
     Application.MessageBox('Campo status não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
     //edtStatus.SetFocus;
   end;

   try
     If ( GoOn ) Then Begin
       case Operacao of
         tInsert: Begin
           try
             qryInsert.ParamByName( 'FK_Importador' ).Value := qryBuscaProcesso.FieldValues[ 'Importador' ];
             qryInsert.ParamByName( 'FK_Processo' ).Value := qryBuscaProcesso.FieldValues[ 'Codigo' ];
             If ( edtDataProtocolo.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_Abertura_Processo' ).AsDateTime := StrToDateTime( edtDataProtocolo.Text )
             else
               qryInsert.ParamByName( 'DT_Abertura_Processo' ).Value := NULL;
             qryInsert.ParamByName( 'Num_Processo_Receita' ).Value := edtProcessoReceita.Text;
             qryInsert.ParamByName( 'FK_Fiscais' ).Value := qryFiscais.FieldValues[ 'PK_Fiscais' ];
             qryInsert.ParamByName( 'FK_Status' ).Value := qryStatus.FieldValues[ 'PK_Status' ];
             qryInsert.ParamByName( 'Embarcacao' ).Value := edtEmbarcacao.Text;
             qryInsert.ParamByName( 'FK_Tipo' ).Value := qryTipo.FieldValues[ 'PK_Tipo' ];
             If ( edtDT_COANA.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_COANA' ).AsDateTime := StrToDateTime( edtDT_COANA.Text )
             else
               qryInsert.ParamByName( 'DT_COANA' ).Value := NULL;
             If ( edtDt_DITEC.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_DITEC' ).AsDateTime := StrToDateTime( edtDt_DITEC.Text )
             else
              qryInsert.ParamByName( 'DT_DITEC' ).Value := NULL;
             If ( edtDT_DIANA.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_DIANA' ).AsDateTime := StrToDateTime( edtDT_DIANA.Text )
             else
               qryInsert.ParamByName( 'DT_DIANA' ).Value := NULL;
             If ( edtDTPlub.Text <> '  /  /    ' ) Then
               qryInsert.ParamByName( 'DT_ADE_Plublicacao' ).AsDateTime := StrToDateTime( edtDTPlub.Text )
             else
               qryInsert.ParamByName( 'DT_ADE_Plublicacao' ).Value := NULL;
             If ( Trim(edtADENum.Text) <> '' ) Then
               qryInsert.ParamByName( 'ADE_Num' ).Value := StrToInt( edtADENum.Text )
             else
               qryInsert.ParamByName( 'ADE_Num' ).Value := NULL;
             qryInsert.ExecSQL;
             GoOn := True;
           except
             GoOn := False;
           end;
         end;
         tUpdate: Begin
           try
             If ( edtDataProtocolo.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_Abertura_Processo' ).AsDateTime := StrToDateTime( edtDataProtocolo.Text )
             else
               qryUpdate.ParamByName( 'DT_Abertura_Processo' ).Value := NULL;
             qryUpdate.ParamByName( 'Num_Processo_Receita' ).value := edtProcessoReceita.Text;
             qryUpdate.ParamByName( 'FK_Fiscais' ).value := qryFiscais.FieldValues[ 'PK_Fiscais' ];
             qryUpdate.ParamByName( 'FK_Status' ).value := qryStatus.FieldValues[ 'PK_Status' ];
             qryUpdate.ParamByName( 'Embarcacao' ).Value := edtEmbarcacao.Text;
             qryUpdate.ParamByName( 'FK_Tipo' ).value := qryTipo.FieldValues[ 'PK_Tipo' ];
             qryUpdate.ParamByName( 'PK_ADEA' ).value := qryControle_ADE_Andamento.FieldValues[ 'PK_ADEA' ];
             If ( edtDT_COANA.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_COANA' ).AsDateTime := StrToDateTime( edtDT_COANA.Text )
             else
               qryUpdate.ParamByName( 'DT_COANA' ).Value := NULL;
             If ( edtDt_DITEC.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_DITEC' ).AsDateTime := StrToDateTime( edtDt_DITEC.Text )
             else
              qryUpdate.ParamByName( 'DT_DITEC' ).Value := NULL;
             If ( edtDT_DIANA.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_DIANA' ).AsDateTime := StrToDateTime( edtDT_DIANA.Text )
             else
               qryUpdate.ParamByName( 'DT_DIANA' ).Value := NULL;
             If ( edtDTPlub.Text <> '  /  /    ' ) Then
               qryUpdate.ParamByName( 'DT_ADE_Plublicacao' ).AsDateTime := StrToDateTime( edtDTPlub.Text )
             else
               qryUpdate.ParamByName( 'DT_ADE_Plublicacao' ).Value := NULL;
             If ( Trim(edtADENum.Text) <> '' ) Then
               qryUpdate.ParamByName( 'ADE_Num' ).Value := StrToInt( edtADENum.Text )
             else
               qryUpdate.ParamByName( 'ADE_Num' ).Value := NULL;
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
       qryControle_ADE_Andamento.Close;
       qryControle_ADE_Andamento.Open;
       qryFiscais.Close;
       qryFiscais.Open;
     end
     else
     If ( Not Vazio ) Then
       Application.MessageBox('Erro na gravação. Tente gravar novamente','Erro', MB_OK + MB_ICONERROR );
     If ( Vazio ) Then Begin
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
       pnlNum_Processo_Pasta.Enabled := True;
       btnCad_Fiscais.Enabled := False;
     end;
   end;
end;

procedure TfrmControle_ADE_Andamento.btnConfirmarClick(Sender: TObject);
begin
  edtEmbarcacao.Text := qryLocais.fieldByName( 'Descricao' ).asString;
  pnlEmbarcacao.Hide;
end;

procedure TfrmControle_ADE_Andamento.btnCancelarEmbClick(Sender: TObject);
begin
  pnlEmbarcacao.Hide;
end;

procedure TfrmControle_ADE_Andamento.btnLocaisClick(Sender: TObject);
begin
  pnlEmbarcacao.Show;
end;

procedure TfrmControle_ADE_Andamento.edtProcessoMS2000Change(
  Sender: TObject);
begin
  If ( Length( Trim(edtProcessoMS2000.Text) ) = edtProcessoMS2000.MaxLength ) Then
    btnBuscar.Click;
end;

procedure TfrmControle_ADE_Andamento.edtBuscaProcessoChange(Sender: TObject);
begin
  qryControle_ADE_Andamento.Locate('Num_Processo_Receita', edtBuscaProcesso.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmControle_ADE_Andamento.gridMainTitleClick(Column: TColumn);
  var
    Campo : string;
begin
  If ( Ordem = ' Desc' ) Then
    Ordem := ' ASC'
  else
    Ordem := ' Desc';
  Campo := Column.FieldName;
  Application.ProcessMessages;
  qryControle_ADE_Andamento.SQL.clear;
  qryControle_ADE_Andamento.SQL.Text := 'select C.Finalizado, C.PK_ADEA, C.FK_Importador, C.FK_Processo, Cast( C.DT_Abertura_Processo as DateTime ) as "DT_Abertura_Processo" '+
                                        ',C.Num_Processo_Receita, C.FK_Fiscais, C.FK_Status, L.Razao_Social, C.Embarcacao, C.FK_Tipo '+
                                        ',Cast( C.DT_COANA as DateTime ) as "DT_COANA", Cast( C.DT_DITEC as DateTime ) as "DT_DITEC", Cast( C.DT_DIANA as DateTime ) as "DT_DIANA"  ,Cast( C.DT_ADE_Plublicacao as DateTime ) as "DT_ADE_Plublicacao", C.ADE_Num '+
                                        'from Controle_ADE_Andamento C left join Importadores L on ( L.Codigo = C.FK_Importador ) '+
                                        'where C.Excluido <> 1 Order by '+ Campo + Ordem;
  If ( Not qryControle_ADE_Andamento.Prepared ) Then
    qryControle_ADE_Andamento.Prepare;
    qryControle_ADE_Andamento.Open;
end;

procedure TfrmControle_ADE_Andamento.edtADENumKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Not (key IN ['0'..'9', '-', #13, #8]) Then Begin
    key := #0;
    exit;
  End;
end;

procedure TfrmControle_ADE_Andamento.edtStatusCloseUp(Sender: TObject);
begin
  if ( qryStatus.FieldByName( 'PK_Status' ).AsInteger = 6 ) then begin
    edtDTPlub.Enabled := True;
    edtADENum.Enabled := True;
  end
  else begin
    edtDTPlub.Clear;
    edtDTPlub.Enabled := False;
    edtADENum.Clear;
    edtADENum.Enabled := False;
  end;
end;

procedure TfrmControle_ADE_Andamento.edtStatusExit(Sender: TObject);
begin
  edtStatus.OnCloseUp(Self);
end;

procedure TfrmControle_ADE_Andamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.ControleADEAndamento1.Enabled := True;
  frmControle_ADE_Andamento := Nil;
  Action := caFree;
end;

procedure TfrmControle_ADE_Andamento.edtOpChange(Sender: TObject);
begin
  If ( edtOp.ItemIndex = 0 ) Then Begin
    edtBuscaCliente.Visible := true;
    edtBuscaProcesso.Visible := false;
    edtMS.Visible := false;
  End
  else
  If ( edtOp.ItemIndex = 1 ) Then Begin
    edtBuscaCliente.Visible := false;
    edtBuscaProcesso.Visible := true;
    edtMS.Visible := false;
  End
  else
  If ( edtOp.ItemIndex = 2 ) Then Begin
    edtBuscaCliente.Visible := false;
    edtBuscaProcesso.Visible := false;
    edtMS.Visible := true;
  End;
end;

procedure TfrmControle_ADE_Andamento.edtBuscaClienteChange(
  Sender: TObject);
begin
  qryControle_ADE_Andamento.Locate('Razao_Social', edtBuscaCliente.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmControle_ADE_Andamento.edtMSChange(Sender: TObject);
begin
  qryControle_ADE_Andamento.Locate('FK_Processo', edtMS.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmControle_ADE_Andamento.btnFinalizarClick(Sender: TObject);
begin
  If ( Not qryControle_ADE_AndamentoFinalizado.AsBoolean ) Then Begin
    if MessageBox(handle, 'Deseja realmente finalizar este registro?','Confirmação', MB_ICONQUESTION + MB_YESNO) = ID_YES then Begin
      qryUpdate.close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Text := format( 'update Controle_ADE_Andamento set Finalizado = 1 where PK_ADEA=%d', [qryControle_ADE_AndamentoPK_ADEA.AsInteger]);
      qryUpdate.ExecSQL;
      qryControle_ADE_Andamento.Close;
      qryControle_ADE_Andamento.Open;
    End;
  End;
end;

procedure TfrmControle_ADE_Andamento.HDBotao(status: Boolean);
begin
  If ( status ) Then Begin
    btnAlterar.Enabled := False;
    btnExcluir.Enabled := False;
    btnGravar.Enabled := False;
    btnFinalizar.Enabled := False;
    pnlStatus.Color := clRed;
    pnlStatus.Caption := 'Status: Finalizado';
    btnOpen.Enabled := true;
  End
  Else Begin
    btnAlterar.Enabled := True;
    btnExcluir.Enabled := True;
    btnGravar.Enabled := True;
    btnFinalizar.Enabled := True;
    pnlStatus.Color := clGreen;
    pnlStatus.Caption := 'Status: Aberto';
    btnOpen.Enabled := false;
  End;
end;

procedure TfrmControle_ADE_Andamento.btnOpenClick(Sender: TObject);
begin
  If ( qryControle_ADE_AndamentoFinalizado.AsBoolean ) Then Begin
    if MessageBox(handle, 'Deseja realmente abrir este registro?','Confirmação', MB_ICONQUESTION + MB_YESNO) = ID_YES then Begin
      qryUpdate.close;
      qryUpdate.SQL.Clear;
      qryUpdate.SQL.Text := format( 'update Controle_ADE_Andamento set Finalizado = 0 where PK_ADEA=%d', [qryControle_ADE_AndamentoPK_ADEA.AsInteger]);
      qryUpdate.ExecSQL;
      qryControle_ADE_Andamento.Close;
      qryControle_ADE_Andamento.Open;
    End;
  End;
end;

end.
