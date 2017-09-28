unit u_CadastroPropostas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, Mask, Buttons, ExtCtrls, FileCtrl, shellAPI;

type
  TfrmCadastroPropostas = class(TForm)
    dbgContratos: TDBGrid;
    dbgArquivos: TDBGrid;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dsContratoUpload: TDataSource;
    qContratoUpload: TQuery;
    qContratoUploadfk_contrato: TIntegerField;
    qContratoUploadArquivo: TStringField;
    Panel1: TPanel;
    StaticText1: TStaticText;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    btnIncluir: TBitBtn;
    btnSair: TBitBtn;
    OP: TOpenDialog;
    qryParametro: TQuery;
    qryParametroNumerador_Documentos: TStringField;
    qryUpdateN: TQuery;
    qInsUpload: TQuery;
    qryDelErro: TQuery;
    txtData: TDBEdit;
    txtContato: TDBEdit;
    txtEmail: TDBEdit;
    txtAprovacao: TDBEdit;
    txtObs: TDBMemo;
    tbcontratos_cadastrados_financeiro: TTable;
    tbcontratos_cadastrados_financeironumero_contrato: TStringField;
    tbcontratos_cadastrados_financeiropk_contrato: TAutoIncField;
    tbcontratos_cadastrados_financeirodata: TDateTimeField;
    tbcontratos_cadastrados_financeirocliente: TStringField;
    tbcontratos_cadastrados_financeirocontato: TStringField;
    tbcontratos_cadastrados_financeiroemail: TStringField;
    tbcontratos_cadastrados_financeirodata_aprovacao: TDateTimeField;
    tbcontratos_cadastrados_financeiroobservacao: TMemoField;
    dscontratos_cadastrados_financeiro: TDataSource;
    qNumero_Proposta: TQuery;
    qNumero_PropostaPROXIMO_CONTADOR: TIntegerField;
    qNumero_PropostaDECIMAL: TIntegerField;
    qNumero_PropostaANO_REGISTRO: TIntegerField;
    qContrato: TQuery;
    qContratonumero_contrato: TStringField;
    qContratopk_contrato: TAutoIncField;
    qContratodata: TDateTimeField;
    qContratocliente: TStringField;
    qContratocontato: TStringField;
    qContratoemail: TStringField;
    qContratodata_aprovacao: TDateTimeField;
    qContratoobservacao: TMemoField;
    btnAbrir: TBitBtn;
    btnAtivarImport: TBitBtn;
    qrUpdtImportador: TQuery;
    GroupBox1: TGroupBox;
    edtProcesso: TMaskEdit;
    Label8: TLabel;
    edtCliente: TEdit;
    Label9: TLabel;
    pnlUpload: TPanel;
    gbUpload: TGroupBox;
    txtUploadArquivo: TEdit;
    btnBuscar: TSpeedButton;
    btnLimpar: TSpeedButton;
    btnUpload: TBitBtn;
    Label7: TLabel;
    txtNrCliente: TDBEdit;
    Label10: TLabel;
    edtNrCliente: TMaskEdit;
    cbMovimentacaoDeRepetro: TDBCheckBox;
    cbUtilizacaoDoSistema: TDBCheckBox;
    gbVigencia: TGroupBox;
    txtVigInicial: TDBEdit;
    txtVigFinal: TDBEdit;
    Label11: TLabel;
    dsImport: TDataSource;
    qrImport: TQuery;
    qrImportEmpresa: TStringField;
    qrImportFilial: TStringField;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrImportCGC_CPF: TStringField;
    qrImportTipo_Importador: TStringField;
    qrImportEndereco: TStringField;
    qrImportNumero: TStringField;
    qrImportComplemento: TStringField;
    qrImportBairro: TStringField;
    qrImportCidade: TStringField;
    qrImportCEP: TStringField;
    qrImportUF: TStringField;
    qrImportEstado: TStringField;
    qrImportInscricao_Estadual: TStringField;
    qrImportCNPJ_CPF_COMPLETO: TStringField;
    cmbImport: TDBLookupComboBox;
    Label12: TLabel;
    tbcontratos_cadastrados_financeiroutilizacao_de_sistema: TBooleanField;
    tbcontratos_cadastrados_financeiromovimentacao_de_repetro: TBooleanField;
    tbcontratos_cadastrados_financeironro_cliente: TStringField;
    tbcontratos_cadastrados_financeirodata_vigencia_final: TDateTimeField;
    tbcontratos_cadastrados_financeirodata_vigencia_inicial: TDateTimeField;
    tbcontratos_cadastrados_financeirocod_importador: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure HabilitarComponentes(blnEnabled: Boolean);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Verifica_Campos();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function Retorna_Numero_Proposta : String;
    function Year( Data : TDateTime ): Integer;
    procedure Limpa_Campos();
    procedure btnFecharClick(Sender: TObject);
    procedure edtProcessoChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure tbcontratos_cadastrados_financeiroAfterScroll(
      DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAbrirClick(Sender: TObject);
    procedure txtAprovacaoExit(Sender: TObject);
    procedure btnAtivarImportClick(Sender: TObject);
    procedure edtClienteChange(Sender: TObject);
    procedure dbgContratosTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure txtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure edtNrClienteChange(Sender: TObject);
    procedure dbgContratosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure txtVigInicialExit(Sender: TObject);
    procedure txtVigFinalExit(Sender: TObject);
    procedure txtAprovacaoKeyPress(Sender: TObject; var Key: Char);
    procedure txtVigInicialKeyPress(Sender: TObject; var Key: Char);
    procedure txtVigFinalKeyPress(Sender: TObject; var Key: Char);
  private
    function verificarFaixa(a: String): String;
    { Private declarations }
  public
    { Public declarations }                                                                      
  end;
  
const
  DIR_IMG = '\\msserver01\ContPro';

var
  frmCadastroPropostas: TfrmCadastroPropostas;
  vOper : String;
  LimpaQuery, Ascendente : Boolean;
  N_Contrato, nome : String;
  
implementation

uses U_MSCOMEX, U_importadores;

{$R *.DFM}

procedure TfrmCadastroPropostas.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  tbcontratos_cadastrados_financeiro.Close;
  tbcontratos_cadastrados_financeiro.Open;
  tbcontratos_cadastrados_financeiro.Last;

  HabilitarComponentes(False);
end;

procedure TfrmCadastroPropostas.HabilitarComponentes(blnEnabled: Boolean);
begin
  {Caixas de Texto para inserção}
  txtData.Enabled                 := blnEnabled;
  txtNrCliente.Enabled            := blnEnabled;
  cmbImport.Enabled               := blnEnabled;
  txtContato.Enabled              := blnEnabled;
  txtEmail.Enabled                := blnEnabled;
  txtAprovacao.Enabled            := blnEnabled;
  gbVigencia.Enabled              := blnEnabled;
  cbUtilizacaoDoSistema.Enabled   := blnEnabled;
  cbMovimentacaoDeRepetro.Enabled := blnEnabled;

  txtObs.Enabled           := blnEnabled;
  txtUploadArquivo.Enabled := blnEnabled;

  pnlUpload.Visible        := blnEnabled;
  btnSalvar.Enabled        := blnEnabled;
  btnCancelar.Enabled      := blnEnabled;
end;

procedure TfrmCadastroPropostas.btnIncluirClick(Sender: TObject);
begin
  vOper := 'I';
  HabilitarComponentes(True);
  txtNrCliente.setFocus;

  txtData.text       := DateToStr(Date);
  btnIncluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnAbrir.Enabled   := False;
  btnSair.Enabled    := False;
  pnlUpload.Visible  := False;

  Limpa_Campos;
  tbcontratos_cadastrados_financeiro.Append;
  tbcontratos_cadastrados_financeirodata.Value := Date();
  dbgContratos.Enabled := False;
end;

procedure TfrmCadastroPropostas.btnAlterarClick(Sender: TObject);
begin
  vOper := 'A';
  HabilitarComponentes(True);
  txtNrCliente.setFocus;

  txtData.enabled    := False;
  btnIncluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnAbrir.Enabled   := False;
  btnSair.Enabled    := False;

  pnlUpload.Visible    := True;
  dbgContratos.Enabled := False;
end;

procedure TfrmCadastroPropostas.btnSalvarClick(Sender: TObject);
begin
  btnIncluir.Enabled := True;
  btnAlterar.Enabled := True;
  btnAbrir.Enabled   := True;
  btnSair.Enabled    := True;

  Verifica_Campos();

  if vOper = 'I'
   then begin
     try
       tbcontratos_cadastrados_financeironumero_contrato.Value := Retorna_Numero_Proposta;
       tbcontratos_cadastrados_financeironro_cliente.Value     := txtNrCliente.Text;
       tbcontratos_cadastrados_financeirocontato.Value         := txtContato.text;
       tbcontratos_cadastrados_financeiroemail.Value           := txtEmail.text;

       try
         if (txtAprovacao.text <> '')
          then tbcontratos_cadastrados_financeirodata_aprovacao.Value := strToDatetime(txtAprovacao.text);
       except
         on EConvertError do
          begin
            ShowMessage ('Por favor, informe uma data válida.');
            txtAprovacao.Text := datetostr(Date);
            txtAprovacao.setFocus;
            exit;
          end;
       end;

       try
         if (txtVigInicial.text <> '')
          then tbcontratos_cadastrados_financeirodata_vigencia_inicial.Value := strToDatetime(txtVigInicial.text);
       except
         on EConvertError do
          begin
            ShowMessage ('Por favor, informe uma data válida.');
            txtVigInicial.setFocus;
            exit;
          end;
       end;

       try
         if (txtVigFinal.text <> '')
          then tbcontratos_cadastrados_financeirodata_vigencia_final.Value := strToDatetime(txtVigFinal.text);
       except
         on EConvertError do
          begin
            ShowMessage ('Por favor, informe uma data válida.');
            txtVigFinal.setFocus;
            exit;
          end;
       end;

       if txtObs.text = ''
        then tbcontratos_cadastrados_financeiroobservacao.Value := ''
        else tbcontratos_cadastrados_financeiroobservacao.Value := txtObs.text;

       if cbUtilizacaoDoSistema.Checked
        then tbcontratos_cadastrados_financeiroutilizacao_de_sistema.Value := True
        else tbcontratos_cadastrados_financeiroutilizacao_de_sistema.Value := False;

       if cbMovimentacaoDeRepetro.Checked
        then tbcontratos_cadastrados_financeiromovimentacao_de_repetro.Value := True
        else tbcontratos_cadastrados_financeiromovimentacao_de_repetro.Value := False;

       tbcontratos_cadastrados_financeiro.Post;
       tbcontratos_cadastrados_financeiro.Refresh;
       logusu('I','Incluiu proposta Nº, ' + N_Contrato );
       HabilitarComponentes(False);
     except
       on EConvertError do
        begin
          ShowMessage ('Ocorreu um erro na inserção do registro.');
          tbcontratos_cadastrados_financeiro.cancel;
          exit;
        end;
     end;

     if MessageDlg('Contrato registrado com sucesso. Deseja realizar upload do arquivo agora?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        txtUploadArquivo.clear;
        pnlUpload.Visible := True;

        btnAlterar.Enabled  := false;
        btnIncluir.Enabled  := false;
        btnSalvar.Enabled   := false;
        btnCancelar.Enabled := True;
      end
      else begin
        txtUploadArquivo.clear;
        pnlUpload.Visible:=False;
      end;
   end
   else begin
     try
       tbcontratos_cadastrados_financeiro.edit;
       N_Contrato := tbcontratos_cadastrados_financeironumero_contrato.Value;

       try
         tbcontratos_cadastrados_financeironro_cliente.Value     := txtNrCliente.Text;
         tbcontratos_cadastrados_financeirocontato.Value         := txtContato.text;
         tbcontratos_cadastrados_financeiroemail.Value           := txtEmail.text;

         try
           if (txtAprovacao.text <> '')
            then tbcontratos_cadastrados_financeirodata_aprovacao.Value := strToDatetime(txtAprovacao.text);
         except
           on EConvertError do
            begin
              ShowMessage ('Por favor, informe uma data válida.');
              txtAprovacao.setFocus;
              exit;
            end;
         end;

         try
           if (txtVigInicial.text <> '')
            then tbcontratos_cadastrados_financeirodata_vigencia_inicial.Value := strToDatetime(txtVigInicial.text);
         except
           on EConvertError do
            begin
              ShowMessage ('Por favor, informe uma data válida.');
              txtVigInicial.setFocus;
              exit;
            end;
         end;

         try
           if (txtVigFinal.text <> '')
            then tbcontratos_cadastrados_financeirodata_vigencia_final.Value := strToDatetime(txtVigFinal.text);
         except
           on EConvertError do
            begin
              ShowMessage ('Por favor, informe uma data válida.');
              txtVigFinal.setFocus;
              exit;
            end;
         end;

         if txtObs.text = ''
          then tbcontratos_cadastrados_financeiroobservacao.Value := ''
          else tbcontratos_cadastrados_financeiroobservacao.Value := txtObs.text;

         if cbUtilizacaoDoSistema.Checked
          then tbcontratos_cadastrados_financeiroutilizacao_de_sistema.Value := True
          else tbcontratos_cadastrados_financeiroutilizacao_de_sistema.Value := False;

         if cbMovimentacaoDeRepetro.Checked
          then tbcontratos_cadastrados_financeiromovimentacao_de_repetro.Value := True
          else tbcontratos_cadastrados_financeiromovimentacao_de_repetro.Value := False;

         tbcontratos_cadastrados_financeiro.Post;
         tbcontratos_cadastrados_financeiro.Refresh;
         logusu('A','Alterou proposta Nº, ' + N_Contrato );
         HabilitarComponentes(False);

         if MessageDlg('Contrato atualizado com sucesso. Deseja realizar upload do arquivo agora?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
          then begin
            txtUploadArquivo.clear;
            pnlUpload.Visible := True;

            btnAlterar.Enabled  := false;
            btnIncluir.Enabled  := false;
            btnSalvar.Enabled   := false;
            btnCancelar.Enabled := True;
          end
          else begin
            txtUploadArquivo.clear;
            pnlUpload.Visible:=False;
          end;
       except
         on EConvertError do
          begin
            ShowMessage ('Ocorreu um erro na atualização do registro.');
            tbcontratos_cadastrados_financeiro.cancel;
            Exit;
          end;
       end;
     except
       on EConvertError do
        begin
          ShowMessage ('Por favor, informe uma data válida.');
          txtAprovacao.Text := datetostr(Date);
          txtAprovacao.setFocus;
          Exit;
        end;
     end;
   end;

  txtUploadArquivo.Clear;
  tbcontratos_cadastrados_financeiro.Locate('numero_contrato',N_Contrato,[]);
  tbcontratos_cadastrados_financeiroAfterScroll(qContratoUpload);
  dbgContratos.Enabled := True;
end;

procedure TfrmCadastroPropostas.btnCancelarClick(Sender: TObject);
begin
  tbcontratos_cadastrados_financeiro.cancel;

  btnSalvar.Enabled    := False;

  HabilitarComponentes(False);

  btnIncluir.Enabled   := True;
  btnAlterar.Enabled   := True;
  btnAbrir.Enabled     := True;
  btnSair.Enabled      := True;
  dbgContratos.Enabled := True;
end;

procedure TfrmCadastroPropostas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroPropostas.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  Action := caFree;
  frmCadastroPropostas := Nil;
  f_mscomex.Contratos3.Enabled := True;
end;

procedure TfrmCadastroPropostas.Verifica_Campos;
begin
  if (txtData.Text = '') or (txtData.Text = '  /  /    ')
   then begin
     showmessage('Por favor, informe a data de aprovação para continuar a gravação.');
     txtData.SetFocus;
     Abort;
   end
   else begin
     try
       StrToDate(txtData.Text);
     except
     on EConvertError do
       begin
        ShowMessage ('Por favor, informe uma data de aprovação válida.');
        txtData.Text := datetostr(Date);
        txtData.setFocus;
        Abort;
       end;
     end;
   end;

  if (cmbImport.KeyValue = NULL)
   then begin
     showmessage('Por favor, informe o cliente para continuar a gravação.');
     cmbImport.SetFocus;
     Abort;
   end;
end;

function TfrmCadastroPropostas.Retorna_Numero_Proposta: String;
var
  vCont : integer;
begin
  with qNumero_Proposta do
   begin
     Close;
     Open;
   end;

  {Quando virar o ano reinicia o contador}
  if qNumero_PropostaANO_REGISTRO.Value <> Year(Now)
   then result := '00001/'+copy(inttostr(Year(Now)), 3, 2)
   else begin
     vCont := qNumero_PropostaDecimal.value;

     case vCont  of
       1 : result := '0000' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3,2);
       2 : result := '000' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
       3 : result := '00' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
       4 : result := '0' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
       5 :
           begin
             if qNumero_PropostaPROXIMO_CONTADOR.AsString = '100000'
              then showmessage('Por favor, entre em contato com o sistema houve um estouro no contador e a operação foi cancelada.')
              else result := qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
            end;
     end;
   end;

  N_Contrato := result;
end;

function TfrmCadastroPropostas.Year(Data: TDateTime): Integer;
var
  Dia,Mes,Ano:Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);
  
  Result := Ano;
end;

procedure TfrmCadastroPropostas.Limpa_Campos;
begin
  txtNrCliente.Clear;
  cmbImport.KeyValue := '';
  txtContato.clear;
  txtEmail.clear;
  txtAprovacao.text  := '  /  /    ';
  txtVigInicial.Text := '  /  /    ';
  txtVigFinal.Text   := '  /  /    ';
  txtObs.Text := '';
  txtUploadArquivo.Clear;
end;

procedure TfrmCadastroPropostas.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroPropostas.edtProcessoChange(Sender: TObject);
begin
  LimpaQuery:=True;

  if ( Length(F_MSCOMEX.LRTrim(edtProcesso.Text)) >= 8 )
   then begin
     btnSalvar.Enabled := False;
     HabilitarComponentes(False);

     if not tbcontratos_cadastrados_financeiro.Locate('numero_contrato',edtProcesso.text,[loCaseInsensitive])
      then showmessage('Contrato não encontrado.');
   end;
end;

procedure TfrmCadastroPropostas.btnBuscarClick(Sender: TObject);
begin
  if (OP.Execute)
   then txtUploadArquivo.Text := OP.filename;
end;

procedure TfrmCadastroPropostas.btnLimparClick(Sender: TObject);
begin
  txtUploadArquivo.clear;
end;

procedure TfrmCadastroPropostas.btnUploadClick(Sender: TObject);
var
  Numerador,
  Arquivo,
  CodigoPasta,
  Origem,
  Destino : String;
  GoOn : Boolean;
begin
  if (Trim(txtUploadArquivo.Text) = '')
   then begin
     Application.MessageBox('Favor selecionar um arquivo para Upload.','Atenção',MB_ICONWARNING);
     Exit;
   end;

  with qContrato do
  begin
    Close;
    ParamByName('pContrato').asString := N_Contrato;
    Open;
  end;

  //Buscando numero na tabela parametro
  GoOn := False;
  qryParametro.Close;
  qryParametro.Open;

  //Testando numero
  if not( qryParametro.IsEmpty ) and
    ( Trim(qryParametroNumerador_Documentos.AsString) <> '' )
   then begin
     // Incrementando numerador
     Numerador := qryParametroNumerador_Documentos.AsString;
     Numerador := IntToStr(StrToInt(Numerador)+1);
     Numerador := StringOfChar('0', 8-Length(Numerador)) + Numerador;
     Arquivo   := Copy('RJO',1,3) + Numerador;
     qryParametro.Close;

     //Atualizando numerador
     try
       qryUpdateN.ParamByName('NewNumero').Value := Numerador;
       qryUpdateN.ExecSQL;
       GoOn := True;
     except
       GoOn := False;
       Application.MessageBox('Erro na atualização do numerador. Upload foi CANCELADO!','Erro', MB_OK+MB_ICONWARNING);
     end;

     //Gravando na tabela contratos_cadastrados_upload
     if ( GoOn )
      then begin
        try
          CodigoPasta := verificarFaixa( Arquivo );
          {Obs: o Código da pasta era uma idéia louca que tive, surto, kkkkkk mas abortei
          Então para não reestruturar a tabela deixei, ou seja não serve para nada rsrs, foi mal kkk.}

          qInsUpload.ParamByName('pCodigo').Value      := 'RJO' + CodigoPasta;
          qInsUpload.ParamByName('pfk_contrato').Value := qContratopk_contrato.value;
          qInsUpload.ParamByName('pArquivo' ).Value    := Arquivo;
          qInsUpload.ExecSQL;
          GoOn := GoOn and True;
        except
          GoOn := False;
        end;
      end;

     //Copiando arquivo pdf para servidor
     if( GoOn )
      then begin
        //Diretorio
        Origem := OP.FileName;
        Destino := DIR_IMG + '\'+ Arquivo +'.pdf';
        if (not DirectoryExists( ExtractFilePath( Destino )))
         then ForceDirectories( ExtractFilePath( Destino ));

        if (FileExists( Destino ))
         then DeleteFile( Destino );

        if not CopyFile(PChar(Origem), PChar(Destino), true)
         then begin
           qryDelErro.ParamByName('pfk_contrato').Value := tbcontratos_cadastrados_financeiropk_contrato.Value;
           qryDelErro.ParamByName('pArquivo').Value     := Arquivo;
           qryDelErro.ParamByName('pCodigo').Value      := 'RJO' + CodigoPasta;
           qryDelErro.ExecSQL;
           GoOn := false;
           ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
         end;

        if (GoOn)
         then begin
           Application.MessageBox('Upload foi Realizado com Sucesso!','Informação', MB_OK+MB_ICONINFORMATION);
           edtProcesso.Clear;
           logusu('I','Reallizou upload para contrato: '+ N_Contrato + ' , Arquivo: '+ Arquivo );
         end
         else Application.MessageBox('Não foi possível Realizar o Upload!','Erro', MB_OK+MB_ICONERROR);
      end;
   end
   else Application.MessageBox('Erro com o numerador na tabela parametros','Erro', MB_OK+MB_ICONWARNING);

  LimpaQuery := False;
  btnSalvar.Enabled := False;

  HabilitarComponentes(False);
  
  btnIncluir.Enabled := True;
  btnAlterar.Enabled := True;
  btnAbrir.Enabled   := True;
  btnSair.Enabled    := True;

  tbcontratos_cadastrados_financeiro.close;
  tbcontratos_cadastrados_financeiro.open;
  tbcontratos_cadastrados_financeiro.Locate('numero_contrato',N_Contrato,[]);
  tbcontratos_cadastrados_financeiroAfterScroll(qContratoUpload);
end;

function TfrmCadastroPropostas.verificarFaixa(a: String): String;
var
  v, d: String;
  n, f: Integer;
begin
  v := Copy(a, 4, 8);
  n := StrToInt(v);
  f := (n div 10000);

  if (n mod 10000) <> 0
   then Inc(f);

  case f of
    1..9: d       := '000' + IntToStr(f) + '0000';
    10..99: d     := '00'  + IntToStr(f) + '0000';
    100..999: d   := '0'   + IntToStr(f) + '0000';
    1000..9999: d := ''    + IntToStr(f) + '0000';
  end;

  { GERANDO DIRETÓRIO DA FAIXA DOS DOCUMENTOS, CASO NÃO EXISTENTA }
  if Not DirectoryExists( DIR_IMG + d )
   then CreateDir( DIR_IMG + d );
   
  Result := d;
end;

procedure TfrmCadastroPropostas.tbcontratos_cadastrados_financeiroAfterScroll(
  DataSet: TDataSet);
begin
  with qContratoUpload do
   begin
     Close;
     ParamByName('pkContrato').AsInteger:= tbcontratos_cadastrados_financeiropk_contrato.Value;
     Open;
   end;
end;

procedure TfrmCadastroPropostas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tbcontratos_cadastrados_financeiro.State In [dsInsert, dsEdit]
   then begin
     MessageDlg('O contrato está no modo de inserção ou edição nã sendo possível fechá-lo agora, somente terminando a operação.', mtWarning, [mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TfrmCadastroPropostas.btnAbrirClick(Sender: TObject);
Var
 Pdir : pchar ;
begin
  nome := '\\msserver01\ContPro\'+ qContratoUploadArquivo.AsString +'.pdf';
  GetMem(Pdir,256);
  StrPCopy(Pdir,nome);

  if FileExists(nome)
   then begin
     ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
     FreeMem(Pdir,256);
   end
   else ShowMessage('O arquivo não foi localizado.');
end;

procedure TfrmCadastroPropostas.txtAprovacaoExit(Sender: TObject);
begin
  if txtAprovacao.text <> ''
   then begin
     if  (txtAprovacao.text) > DateToStr(Date)
      then begin
        ShowMessage('Informe uma data de aprovação que seja menor ou igual a de hoje.');
        txtAprovacao.setFocus;
        Exit;
      end;

     if DateToStr(Date) < (txtData.text)
      then begin
        ShowMessage('Informe uma data de aprovação maior ou igual a data de abertura.');
        txtAprovacao.setFocus;
        Exit;
      end;
   end;
end;

procedure TfrmCadastroPropostas.btnAtivarImportClick(Sender: TObject);
var
  Importador : String;
begin
  qrUpdtImportador.close;

  if Assigned(F_importadores)
   then begin
     if tbcontratos_cadastrados_financeironumero_contrato.value <> ''
      then begin
        Importador := F_importadores.t_ImportadoresRazao_Social.AsString + ' - '+ F_importadores.t_ImportadoresCGC_CPF.asString;

        {Recolhe as informações do Importador}
        if MessageDlg('Deseja ativar o importador '+ Importador+ ', a proposta de número '+ tbcontratos_cadastrados_financeironumero_contrato.Value +' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
         then begin
           qrUpdtImportador.ParamByName('pfk_contrato_financ').value:=tbcontratos_cadastrados_financeiropk_contrato.value;
           qrUpdtImportador.ParamByName('pImp').asString:=F_importadores.t_ImportadoresCodigo.Value;

           if (qrUpdtImportador.ParamByName('pfk_contrato_financ').IsNull) or (qrUpdtImportador.ParamByName('pfk_contrato_financ').asString = '')
            then begin
              ShowMessage('Por favor, selecione um contrato para realizar a ativação do importador.');
              Exit;
            end;

           qrUpdtImportador.ExecSql;
           F_Importadores.Close;

           if inttostr(F_MSCOMEX.Importadores1.tag) < v_nivel
            then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
            else begin
              if not assigned (F_Importadores)
               then Application.CreateForm(TF_Importadores, F_Importadores);

              F_MSCOMEX.Importadores1.enabled := false;
              logusu('A','Acessou ao Cadastro de Importadores.');
              F_Importadores.show;
            end;
         end
         else Exit;
      end
      else begin
        Showmessage('Por favor, informe o número do contrato.');
        edtProcesso.SetFocus;
        Exit;
      end;
   end
   else begin
     {Abre a tela de importador}
     Showmessage('Por favor, informe o importador que será ativado.');

     if inttostr(F_MSCOMEX.Importadores1.tag) < v_nivel
      then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
      else begin
        if not assigned (F_Importadores)
         then Application.CreateForm(TF_Importadores, F_Importadores);

        F_MSCOMEX.Importadores1.enabled := false;
        logusu('A','Acessou ao Cadastro de Importadores.');
        F_Importadores.show;
      end;
   end;
end;

procedure TfrmCadastroPropostas.edtClienteChange(Sender: TObject);
begin
  LimpaQuery := True;

  btnSalvar.Enabled := False;
  HabilitarComponentes(False);
end;

procedure TfrmCadastroPropostas.dbgContratosTitleClick(Column: TColumn);
begin
  Ascendente:= not Ascendente;

  if Ascendente
   then tbcontratos_cadastrados_financeiro.IndexFieldNames := Column.FieldName
   else tbcontratos_cadastrados_financeiro.IndexFieldNames := Column.FieldName;
end;

procedure TfrmCadastroPropostas.FormShow(Sender: TObject);
begin
  Ascendente := False;

  qrImport.Close;
  qrImport.Open;

  edtProcesso.SetFocus;
end;

procedure TfrmCadastroPropostas.txtEmailKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9','a'..'z','A'..'Z','@','.','_','-',#8])
   then key := #0;
end;

procedure TfrmCadastroPropostas.edtNrClienteChange(Sender: TObject);
begin
  LimpaQuery := True;

  if (F_MSCOMEX.LRTrim(edtNrCliente.Text) <> '')
   then begin
     btnSalvar.Enabled := False;
     HabilitarComponentes(False);

     if not tbcontratos_cadastrados_financeiro.Locate('nro_cliente',edtNrCliente.Text,[LoPartialKey])
      then showmessage('Número do Cliente não encontrado.');
   end;
end;

procedure TfrmCadastroPropostas.dbgContratosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check : Integer;
  R     : TRect;
begin
  {Desenha um checkbox no dbgrid}
  if (Column.FieldName = 'utilizacao_de_sistema')
   then begin
     dbgContratos.Canvas.FillRect(Rect);
     Check := 0;

     if (tbcontratos_cadastrados_financeiroutilizacao_de_sistema.AsBoolean = True)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(dbgContratos.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     Exit;
   end;

  if (Column.FieldName = 'movimentacao_de_repetro')
   then begin
     dbgContratos.Canvas.FillRect(Rect);
     Check := 0;

     if (tbcontratos_cadastrados_financeiromovimentacao_de_repetro.AsBoolean = True)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(dbgContratos.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     Exit;
   end;
end;

procedure TfrmCadastroPropostas.txtVigInicialExit(Sender: TObject);
begin
  if (txtVigInicial.text <> '')
   then begin
     try
       if (txtVigInicial.text <> '')
        then tbcontratos_cadastrados_financeirodata_vigencia_inicial.Value := strToDatetime(txtVigInicial.text);
     except
       on EConvertError do
        begin
          ShowMessage ('Por favor, informe uma data válida.');
          txtVigInicial.text := DateToStr(Date);
          txtVigInicial.setFocus;
          Exit;
        end;
     end;
   end;
end;

procedure TfrmCadastroPropostas.txtVigFinalExit(Sender: TObject);
begin
  if (txtVigFinal.text <> '')
   then begin
     try
       if (txtVigFinal.text <> '')
        then tbcontratos_cadastrados_financeirodata_vigencia_Final.Value := strToDatetime(txtVigFinal.text);
     except
       on EConvertError do
        begin
          ShowMessage ('Por favor, informe uma data válida.');
          txtVigFinal.text := DateToStr(Date);
          txtVigFinal.SetFocus;
          Exit;
        end;
     end;
   end;
end;

procedure TfrmCadastroPropostas.txtAprovacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9','/'])
   then key := #0;
end;

procedure TfrmCadastroPropostas.txtVigInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9','/'])
   then key := #0;
end;

procedure TfrmCadastroPropostas.txtVigFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9','/'])
   then key := #0;
end;

end.

