unit u_RelEmail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Quickrpt, QRPrntr, QRPDFFilt, IdBaseComponent,
  IdAntiFreezeBase, IdAntiFreeze, Db, DBTables, ActnList, IdMessage,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  ComCtrls, FileCtrl;

type
  Tf_RelEmail = class(TForm)
    pnlPrincipal: TPanel;
    IdAntiFreeze1: TIdAntiFreeze;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    alMSeM: TActionList;
    acGeraEmail: TAction;
    acEnviaEmail: TAction;
    acExcluirArqTemp: TAction;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    qrParametrosHost_SMTP: TStringField;
    qrParametrosPorta_SMTP: TSmallintField;
    qrParametrosUsuario_SMTP: TStringField;
    qrParametrosSenha_SMTP: TStringField;
    qrParametrosPATH_SERVER: TStringField;
    qrFilial: TQuery;
    qrFilialCodigo_Empresa: TStringField;
    qrFilialCodigo_Filial: TStringField;
    qrFilialDescricao: TStringField;
    qrFilialEndereo: TStringField;
    qrFilialNmero: TStringField;
    qrFilialComplemento: TStringField;
    qrFilialBairro: TStringField;
    qrFilialCidade: TStringField;
    qrFilialUF: TStringField;
    qrFilialCEP: TStringField;
    qrFilialTelefone: TStringField;
    qrFilialFax: TStringField;
    pnlStatusBar: TPanel;
    stStatus: TStaticText;
    ProgressBar1: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    pnlEnviar: TPanel;
    btnFechar: TBitBtn;
    btnEnviar: TBitBtn;
    edtEmail: TEdit;
    edtNomeArq: TEdit;
    btnParar: TBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    Panel4: TPanel;
    pnlOpcao: TPanel;
    Panel1: TPanel;
    cbVisualizar: TCheckBox;
    cbEnviar: TCheckBox;
    btnOk: TBitBtn;
    btnFecharOP: TBitBtn;
    acConfigurarSMTP: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbVisualizarClick(Sender: TObject);
    procedure edtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure edtNomeArqKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnPararClick(Sender: TObject);
    procedure IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure IdSMTPWork(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure IdSMTPWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure IdSMTPWorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure acConfigurarSMTPExecute(Sender: TObject);
    procedure acEnviaEmailExecute(Sender: TObject);
    procedure acGeraEmailExecute(Sender: TObject);
    procedure acExcluirArqTempExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    QRPDFRel: TObject;
    RemetenteNome: String;
    RemetenteEmail: String;
  end;

const  DIR_TEMP = 'MS2000\';

var
   f_RelEmail: Tf_RelEmail;

   vArqDir, vArqNome, Linha: String;

   vDe, vPara, vCC, vCCO: String;
   vCodAPL: String;
   vAssunto: String;
   vTitulo: String;

   strSMTP, strPorta, strUser, strPass: String;
   vBodyT, vBodyPlanC, vBodyPlanR: TStrings;
   vFilialEnder, vFilialTel, vFilialCid: String;
   vData, vHora: TDateTime;

   vTotKBytes: LongWord;
   vContKBytes: LongWord;

   vStop: Boolean = False;
   vMsgFileTemp: String;

implementation

{$R *.DFM}

{ FUNÇÃO PARA PEGAR O DIRETÓRIO TEMP DO WINDOWS }
function GetTempPath: String;
var
   PText : array[0..255] of Char;
   laenge : integer;
begin
   laenge := Windows.GetTempPath(Windows.MAX_PATH, PText);
   Result := Copy(PText, 1, laenge);
end;

procedure Tf_RelEmail.FormCreate(Sender: TObject);
begin
     pnlOpcao.Align := alClient;
     pnlEnviar.Align := alClient;

     Linha := 'Escolha a opção de relatório';
     stStatus.Caption := Linha;
end;

procedure Tf_RelEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_RelEmail := Nil;
end;

procedure Tf_RelEmail.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     Try
        If IdSMTP.Connected Then IdSMTP.Disconnect;
        Application.ProcessMessages;
        acExcluirArqTemp.Execute;
     Except
     End;
end;

procedure Tf_RelEmail.cbVisualizarClick(Sender: TObject);
begin
     btnOk.Enabled := cbVisualizar.Checked OR cbEnviar.Checked;
end;

procedure Tf_RelEmail.edtEmailKeyPress(Sender: TObject; var Key: Char);
begin
     { CONFIGURAR CARACTERES INVÁLIDOS NA DIGITAÇÃO DO E-MAIL }
end;

procedure Tf_RelEmail.edtNomeArqKeyPress(Sender: TObject; var Key: Char);
begin
     If Key In ['\','/',':','*','?','"','<','>','|'] Then Key := #0;
end;

procedure Tf_RelEmail.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_RelEmail.btnOkClick(Sender: TObject);
begin
     If cbVisualizar.Checked Then Begin
        pnlOpcao.Enabled := False;
        Linha := 'Visualizando relatório...';
        stStatus.Caption := Linha;
        TQuickRep(QRPDFRel).Preview;
     End;

     If cbEnviar.Checked Then Begin
        acConfigurarSMTP.Execute;
        pnlOpcao.Visible := False;
        pnlEnviar.Visible := True;
        edtEmail.SetFocus;
        Linha := 'Enviar relatório por e-mail';
        stStatus.Caption := Linha;
     End
     Else
        btnFechar.Click;
end;

procedure Tf_RelEmail.btnEnviarClick(Sender: TObject);
begin
     If edtEmail.Text = '' Then Begin
        MessageDlg('O e-mail do destinatário não pode estar em branco!', mtWarning, [mbOk], 0);
        edtEmail.SetFocus;
        Exit;
     End;
     If Trim(edtNomeArq.Text) = '' Then Begin
        MessageDlg('O nome do arquivo não pode estar em branco!', mtWarning, [mbOk], 0);
        edtNomeArq.SetFocus;
        Exit;
     End;

     edtEmail.Enabled := False;
     edtNomeArq.Enabled := False;
     btnEnviar.Visible := False;
     btnFechar.Visible := False;
     btnParar.Visible := True;
     vStop := False;
     Try
        vArqNome := GetTempPath + DIR_TEMP + Trim(edtNomeArq.Text) +'.pdf';
        vMsgFileTemp := GetTempPath + DIR_TEMP + Trim(edtNomeArq.Text) +'.msg';

        acEnviaEmail.Execute;
     Except
        On E: Exception Do Begin
           Linha := 'ERRO! Problemas no envio.'+ #13#10 +'MSG: '+ E.Message;
           stStatus.Caption := 'ERRO! Problemas no envio.';
           MessageDlg(Linha, mtWarning, [mbOk], 0);
           Exit;
        End;
     End;
     btnParar.Visible := False;
     btnEnviar.Visible := True;
     btnFechar.Visible := True;
     edtEmail.Enabled := True;
     edtNomeArq.Enabled := True;

     ProgressBar1.Max := 0;
     ProgressBar1.Position := 0;

     acExcluirArqTemp.Execute;

     If Not vStop Then
        btnFechar.Click;
end;

procedure Tf_RelEmail.btnPararClick(Sender: TObject);
begin
     vStop := True;
     If IdSMTP.Connected Then
        IdSMTP.Disconnect;
end;

procedure Tf_RelEmail.IdSMTPStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
     Case AStatus Of
        hsConnecting,
        hsConnected,
        hsDisconnecting,
        hsDisconnected: Begin
             Linha := 'STATUS> '+ AStatusText;
             stStatus.Caption := Linha;
        End;
     End;
     Application.ProcessMessages;
end;

procedure Tf_RelEmail.IdSMTPWork(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCount: Integer);
begin
     vContKBytes := Round(AWorkCount/1024);
     ProgressBar1.Position := vContKBytes;
     Application.ProcessMessages;
end;

procedure Tf_RelEmail.IdSMTPWorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin
     ProgressBar1.Max := vTotKBytes;
     ProgressBar1.Position := vContKBytes;
     stStatus.Caption := 'Enviando e-mail...';
end;

procedure Tf_RelEmail.IdSMTPWorkEnd(Sender: TObject; AWorkMode: TWorkMode);
begin
     stStatus.Caption := 'E-mail enviado com sucesso.';
     ProgressBar1.Position := vTotKBytes;
     vTotKBytes := 0;
     vContKBytes := 0;
end;

procedure Tf_RelEmail.acConfigurarSMTPExecute(Sender: TObject);
begin
     qrParametros.Open;
     strSMTP  := qrParametrosHost_SMTP.AsString;
     strPorta := qrParametrosPorta_SMTP.AsString;
     strUser  := qrParametrosUsuario_SMTP.AsString;
     strPass  := qrParametrosSenha_SMTP.AsString;
     With IdSMTP Do Begin
         Host     := strSMTP;
         Port     := StrToInt(strPorta);
         Username := strUser;
         Password := strPass;
         If strUser = '' Then
            AuthenticationType := atNone
         Else
            AuthenticationType := atLogin;
     End;

     With qrFilial Do Begin
         Params[0].AsString := qrParametrosEmpresa.AsString;
         Params[1].AsString := qrParametrosFilial.AsString;
         Open;
         vFilialEnder := qrFilialEndereo.AsString +', '+ qrFilialNmero.AsString;
         If qrFilialComplemento.AsString <> '' Then
            vFilialEnder := vFilialEnder +' - '+ qrFilialComplemento.AsString;
         vFilialEnder := vFilialEnder +' - '+ qrFilialBairro.AsString
                                      +' - '+ qrFilialCidade.AsString
                                      +' - '+ qrFilialUF.AsString
                                      +', CEP: '+ qrFilialCEP.AsString;
         vFilialTel := 'Tel: '+ qrFilialTelefone.AsString +', Fax: '+ qrFilialFax.AsString;
         vFilialCid := qrFilialCidade.AsString;
         Close;
     End;

     qrParametros.Close;

     vBodyPlanC := TStringList.Create;
     vBodyPlanR := TStringList.Create;
     vBodyT := TStringList.Create;
end;

procedure Tf_RelEmail.acEnviaEmailExecute(Sender: TObject);
var
   newText: TIdText;
   vTotErro: Integer;
   vMsgTemp: TMemoryStream;

label LInicio;

begin
   vTotErro := 0;
   vTitulo := 'MS2000 - Sistema Gerencial Aduaneiro';
   vCodAPL := 'MS2000';
   vAssunto := 'MS2000 - Envio de Relatório por e-mail';
   vData := Date();
   vHora := Time();

   { CONECTANDO O SMTP }
   Try
      If Not IdSMTP.Connected Then
         IdSMTP.Connect;
   Except
      On E: Exception Do Begin
         Linha := 'ERRO! Falha na conexão.'+ #13#10 +'MSG: '+ E.Message;
         stStatus.Caption := 'ERRO! Falha na conexão.';
         MessageDlg(Linha, mtWarning, [mbOk], 0);
         vStop := True;
         Exit;
      End;
   End;

   { GERANDO ARQUIVO PDF }
   Try
      stStatus.Caption := 'Gerando arquivo PDF...';
      If Not DirectoryExists(GetTempPath + DIR_TEMP) Then
         CreateDir(GetTempPath + DIR_TEMP);

      If QRPDFRel Is TQuickRep Then
         TQuickRep(QRPDFRel).ExportToFilter(TQRPDFDocumentFilter.Create(vArqNome))
      Else begin
         showmessage('printer');
         TQRPrinter(QRPDFRel).ExportToFilter(TQRPDFDocumentFilter.Create(vArqNome));
         exit;
      end;

      If Not FileExists(vArqNome) Then Begin
         acEnviaEmail.Execute;
         Exit;
      End;
      stStatus.Caption := 'Arquivo PDF gerado.';
   Except
      On E: Exception Do Begin
         Linha := 'ERRO! Não foi possível gerar o arquivo.'+ #13#10 +'MSG: '+ E.Message;
         stStatus.Caption := 'ERRO! Não foi possível gerar o arquivo.';
         MessageDlg(Linha, mtWarning, [mbOk], 0);
         Exit;
      End;
   End;

   vDe := vCodApl +' <auditoria@logistic-ms.com.br>';
   vPara := Trim(edtEmail.Text);

   vBodyT.Clear;
   vBodyT.Append('E-MAIL ENVIADO POR: ');
   vBodyT.Append('Usuário: '+ RemetenteNome);
   vBodyT.Append('E-mail: '+ RemetenteEmail);
   vBodyT.Append('ARQUIVO ANEXO: '+ Trim(edtNomeArq.Text) +'.pdf');

   LInicio:
   With IdMessage Do Begin
       Clear;
       Subject := vAssunto;

       { Configura o Remetente da Mensagem }
       From.Text := vDe;
       ReplyTo.Clear;
       ReplyTo.EMailAddresses := RemetenteEmail;

       { configura os destinatários }
       Recipients.Clear;
       Recipients.EMailAddresses := vPara;

       { configura os destinatários com cópia }
       CCList.Clear;
       CCList.EMailAddresses := vCC;

       { configura os destinatários com cópia oculta }
       BccList.Clear;
       BccList.EMailAddresses := vCCO;

       { Gera o cabeçalho e o rodapé do e-mail }
       acGeraEmail.Execute;

       { Adiciona uma parte texto ao corpo }
       newText := TIdText.Create(MessageParts, nil);
       newText.ContentType := 'text/plain';

       Body.Clear;
       { INCLUINDO CABEÇALHO DO E-MAIL }
       Body.AddStrings(vBodyPlanC);
       { INCLUINDO CORPO DO E-MAIL }
       Body.AddStrings(vBodyT);
       { INCLUINDO RODAPÉ DO E-MAIL }
       Body.AddStrings(vBodyPlanR);

       TIdAttachment.Create(MessageParts, vArqNome);
   End;

   { VERIFICANDO A CONEXÃO DO SMTP }
   If Not IdSMTP.Connected Then Begin
      Try
         IdSMTP.Connect;
         IdSMTP.Authenticate;
      Except
         On E: Exception Do Begin
            vStop := True;
            Linha := 'ERRO! Falha na conexão.'+ #13#10 +'MSG: '+ E.Message;
            stStatus.Caption := 'ERRO! Falha na conexão.';
            MessageDlg(Linha, mtWarning, [mbOk], 0);
            Exit;
         End;
      End;
   End;

   { GERANDO MENSAGEM TEMPORÁRIA }
   Linha := 'Gerando mensagem...';
   stStatus.Caption := Linha;
   Try
      vMsgTemp := TMemoryStream.Create;
      IdMessage.SaveToStream(TFileStream.Create(vMsgFileTemp, fmCreate));
      vMsgTemp.LoadFromFile(vMsgFileTemp);
      vTotKBytes := Round(vMsgTemp.Size/1024);
      vMsgTemp := nil;
      DeleteFile(vMsgFileTemp);
   Except
      On E: Exception Do Begin
         vMsgTemp := nil;
         vStop := True;
         Linha := 'ERRO! Falha na geração da mensagem.'+ #13#10 +'MSG: '+ E.Message;
         stStatus.Caption := 'ERRO! Falha na geração da mensagem..';
         MessageDlg(Linha, mtWarning, [mbOk], 0);
         Exit;
      End;
   End;

   { Envia e-mail }
   Linha := 'Enviando mensagem...';
   stStatus.Caption := Linha;
   Linha := 'Codificando mensagem...';
   stStatus.Caption := Linha;
   Try
      { ENVIANDO E-MAIL }
      IdSMTP.Send(IdMessage);
      vTotErro := 0;
   Except
      On E: Exception Do Begin
         If vStop Then Begin
            Linha := 'Processamento cancelado';
            stStatus.Caption := Linha;
            MessageDlg(Linha, mtInformation, [mbOk], 0);
            Exit;
         End;
         Inc(vTotErro);
         Linha := 'ERRO! Mensagem não enviada.'+ #13#10 +'MSG: '+ E.Message;
      End;
   End;

   Case vTotErro Of
       1: Begin
            Linha := 'Tentando reenvio da mensagem...';
            stStatus.Caption := Linha;
            goto LInicio;
       End;
       2: Begin
          stStatus.Caption := 'ERRO! Mensagem não enviada.';
          MessageDlg(Linha, mtWarning, [mbOk], 0);
          Exit;
       End;
   End;

   Linha := 'Mensagem enviada com sucesso.';
   stStatus.Caption := Linha;
   MessageDlg(Linha, mtInformation, [mbOk], 0);
end;

procedure Tf_RelEmail.acGeraEmailExecute(Sender: TObject);
begin
     { RODAPÉ DO BODY DO PLAN }
     With vBodyPlanC Do Begin
         Clear;
         Append(StringOfChar('_', 87));
//         Append(vTitulo);
         Append(StringOfChar('¯', 87));
         Append('MS2000 - SISTEMA GERENCIAL ADUANEIRO');
         Append(vAssunto);
         Append(vFilialCid +', '
              + FormatDateTime('dddd, d "de" mmmm "de" yyyy "às "', vData)
              + FormatDateTime('hh:mm:ss', vHora));
         Append(StringOfChar('_', 87));
         Append(StringOfChar('¯', 87));
     End;

     { RODAPÉ DO BODY DO PLAN }
     With vBodyPlanR Do Begin
         Clear;
         Append(StringOfChar('_', 87));
         Append('Copyright © 2000-'+ FormatDateTime('yyyy', Date()) +' MS Logística Aduaneira Ltda. - Todos os direitos reservados');
         Append(StringOfChar('¯', 87));
         Append('MS Logística Aduaneira Ltda.');
         Append(vFilialEnder);
         Append(vFilialTel);
         Append('www.logistic-ms.com.br');
         Append(StringOfChar('_', 87));
    End;
end;

procedure Tf_RelEmail.acExcluirArqTempExecute(Sender: TObject);
begin
     If Not FileExists(vArqNome) Then Exit;

     Try
        Linha := 'Excluindo arquivo temporário...';

        { EXCLUINDO ARQUIVO TEMPORÁRIO }
        If FileExists(vArqNome) Then
           DeleteFile(vArqNome);
        If FileExists(vMsgFileTemp) Then
           DeleteFile(vMsgFileTemp);

        Linha := 'Arquivo temporário excluido.';
     Except
        On E:Exception Do Begin
           Linha := 'ERRO! Não foi possível excluir o arquivo.'+ #13#10 +'MSG: '+ E.Message;
        End;
     End;
end;

end.
