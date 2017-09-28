unit U_AAP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, Gauges, ExtCtrls,
  Psock, filectrl, Mask, ActnList;

type
  TfrmAAP = class(TForm)
    DB_MSCOMEX: TDatabase;
    qrUsuarios: TQuery;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    qrParametrosEndereco_ftp: TStringField;
    qrParametrosUsuario_ftp: TStringField;
    qrParametrosSenha_ftp: TStringField;
    qrParametrosHost: TStringField;
    qrParametrosHost_SMTP: TStringField;
    qrParametrosPorta_SMTP: TSmallintField;
    qrParametrosUsuario_SMTP: TStringField;
    qrParametrosSenha_SMTP: TStringField;
    qrParametrosKeyCrypt: TStringField;
    alAAP: TActionList;
    acInicializa: TAction;
    acGeraEmail: TAction;
    acProcessa: TAction;
    acEnviaEmail: TAction;
    acFinaliza: TAction;
    pnlTop: TPanel;
    pnlLog: TPanel;
    reProcessa: TRichEdit;
    qrAAP: TQuery;
    qrFollow: TQuery;
    qrEnviaEmail: TQuery;
    qrEnviaEmailNome_Completo: TStringField;
    qrEnviaEmailEmail: TStringField;
    tbEmailAuto: TTable;
    tmIniciar: TTimer;
    qrFollowData: TDateTimeField;
    qrFollowHora: TStringField;
    qrFollowEvento: TStringField;
    qrFollowObs: TStringField;
    tbEmailAutoCodigo: TAutoIncField;
    tbEmailAutoPrograma: TStringField;
    tbEmailAutoAssunto: TStringField;
    tbEmailAutoTitulo: TStringField;
    tbEmailAutoDe: TStringField;
    tbEmailAutoPara: TStringField;
    tbEmailAutoCC: TStringField;
    tbEmailAutoCCO: TStringField;
    tbEmailAutoBody: TMemoField;
    tbEmailAutoAnexo: TStringField;
    tbEmailAutoHTML: TIntegerField;
    tbEmailAutoData: TDateTimeField;
    tbEmailAutoHora: TDateTimeField;
    qrAAPNome_Completo: TStringField;
    qrAAPStatus: TStringField;
    qrAAPREF_MS: TStringField;
    qrAAPRazao_Social: TStringField;
    qrAAPNomeSupervisor: TStringField;
    qrAAPEmailSupervisor: TStringField;
    qrUsuariosEmpresa: TStringField;
    qrUsuariosFilial: TStringField;
    qrUsuariosImportador: TStringField;
    qrUsuariosTipo: TStringField;
    qrUsuariosEmail: TStringField;
    qrUsuariosNome_completo: TStringField;
    qrUsuariosParametros: TStringField;
    qrUsuariosHTML: TIntegerField;
    qrUsuariosPlataforma: TStringField;
    qrUsuariosPara: TBooleanField;
    qrUsuariosCc: TBooleanField;
    qrUsuariosCCo: TBooleanField;
    qrUsuariosAtivo: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInicializaExecute(Sender: TObject);
    procedure acGeraEmailExecute(Sender: TObject);
    procedure acEnviaEmailExecute(Sender: TObject);
    procedure acFinalizaExecute(Sender: TObject);
    procedure reProcessaChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tmIniciarTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  vCodAPL = 'AAP';

var
  frmAAP: TfrmAAP;
  arqLog: TextFile;
  strSMTP, strPorta, strUser, strPass: String;
  totPro: Integer;
  arqDir, arqNome, Linha: String;
  vEmp, vFil: String;
  totFol: Integer;

  vDe, vPara, vCC, vCCO: String;
  vAssunto: String;
  vTitulo: String;
  vBody: String;
  vHTML: integer = 1;
  vAnexo: String = '';
  qestilocelula:string;

implementation

{$R *.DFM}

procedure TfrmAAP.FormCreate(Sender: TObject);
begin
  try
   with DB_MSCOMEX do
    begin
      Params.Values['USER NAME'] := 'AAP';
      Params.Values['PASSWORD']  := 'lasbrug30@';
      Connected := True;
    end;
  except
   on E:Exception do
    begin
      MessageDlg('Erro de Conexão com o Banco de Dados! Verifique sua conexão de rede.'+#13#10+#13#10+'ERRO: '+E.message, mtError,[mbOk], 0);
      Close;
      Application.Terminate;
      Exit;
    end;
  end;

  qrParametros.Open;
  vEmp := qrParametrosEmpresa.AsString;
  vFil := qrParametrosFilial.AsString;
     
  with qrUsuarios do
   begin
     Params[0].AsString := vCodAPL;
   end;

  tbEmailAuto.Open;
  qrParametros.Close;
end;

procedure TfrmAAP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
    CloseFile(arqLog);
  except
  end;

  frmAAP := nil;
  Action := caFree;
end;

procedure TfrmAAP.acInicializaExecute(Sender: TObject);
begin
  arqDir  := ExtractFilePath(Application.ExeName)+'Log\';
  arqNome := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.txt';
  
  AssignFile(arqLog,arqDir+ArqNome);

  if Not DirectoryExists(arqDir)
   then CreateDir(arqDir);

  if FileExists(arqDir+ArqNome)
   then AppEnd(arqLog)
   else begin
     ReWrite(arqLog);
     Linha := '    DATA    |   HORA   | DESCRIÇÃO ';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);
   end;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + '>>> INICIANDO O PROCESSAMENTO DO AAP';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  { GERA E-MAIL COM A RELAÇÃO DOS PROCESSOS POR RESPONSÁVEL }
  acGeraEmail.Execute;
  qrAAP.Close;

  if acFinaliza.Checked
   then Exit;

  { FINALIZA APLICAÇÃO AAP }
  acFinaliza.Execute;
end;

procedure TfrmAAP.acGeraEmailExecute(Sender: TObject);
var
  vUsu, vStat: String;
  vCont: Integer;
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + 'Gerando relação dos últimos Follows dos processos';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  vTitulo := Caption;

  vDe   := 'AAP - MS2000<auditoria@logistic-ms.com.br>';
  vPara := '';
  vCC   := '';
  vCCO  := '';

  vUsu  := '';
  vStat := '';

  vBody := '<TABLE ALIGN="CENTER" WIDTH="100%" CELLSPACING="0" CELLPADDING="0" >';

  vCont := 0;
  qrAAP.Open;

  while not qrAAP.Eof do
   begin
     Application.ProcessMessages;

     if acFinaliza.Checked
      then Exit;

     if qrAAPNome_Completo.AsString <> vUsu
      then begin
        if vUsu <> ''
         then begin
           vBody := vBody
                  + '</TABLE><BR><TABLE CELLSPACING="0" CELLPADDING="0" ALIGN="CENTER" WIDTH="100%"><TR><TD><B>TOTAL DE PROCESSOS: '+ IntToStr(vCont) + '</B></TD></TR></TABLE><BR></TD></TR>'
                  + '</TABLE>';

           Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                  + 'Total de processos: '+ IntToStr(vCont);
                     Writeln(arqLog, Linha);  Flush(arqLog);
                     reProcessa.Lines.Append(Linha);

           { ENVIA E-MAIL DA RELAÇÃO DOS PROCESSOS }
           acEnviaEmail.Execute;
           if acFinaliza.Checked
            then Exit;

           vCont := 0;
         end;

        vUsu := qrAAPNome_Completo.AsString;
        vStat := '';

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'RESPONSÁVEL: '+ vUsu;
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        vAssunto := 'AAP - '+ vUsu +' - '+ FormatDateTime('dd/mm/yyyy', Now);
        vPara := '';

        if qrAAPEmailSupervisor.AsString <> ''
         then vPara := qrAAPNomeSupervisor.AsString +'<'+ qrAAPEmailSupervisor.AsString +'>';

        vBody := '<TABLE ALIGN="CENTER" WIDTH="100%" CELLSPACING="0" CELLPADDING="0">'
               + '<TR><TD ALIGN="LEFT">';
      end;

     qestilocelula := ' class="celulatitulo" ';

     if qrAAPStatus.AsString <> vStat
      then begin
        if vStat <> ''
         then vBody := vBody + '</TABLE>';

        vStat := qrAAPStatus.AsString;
        vBody := vBody
               + '<B>'+ vStat +'</B><BR>'
               + '<TABLE ALIGN="CENTER" WIDTH="100%" CELLSPACING="0" CELLPADDING="0"><TR>'
               + '<TD ROWSPAN="2" '+qestilocelula+' >Processo</TD>'
               + '<TD ROWSPAN="2" '+qestilocelula+' >Cliente</TD>'
               + '<TD COLSPAN="3" '+qestilocelula+' >Último Follow</TD>'
               + '</TR>'
               + '<TR>'
               + '<TD WIDTH="10%" '+qestilocelula+' >Data</TD>'
               + '<TD WIDTH="6%" '+qestilocelula+' >Hora</TD>'
               + '<TD '+qestilocelula+' >Descrição</TD>'
               + '</TR>'
      end;

     qrFollow.Params[0].AsString := qrAAPREF_MS.AsString;
     qrFollow.Open;

     qestilocelula := ' class="estilocelula" ';

     vBody := vBody
            + '<TR>'
            + '<TD '+qestilocelula+' >'+ qrAAPREF_MS.AsString +'</TD>'
            + '<TD '+qestilocelula+' >'+ qrAAPRazao_Social.AsString +'</TD>'
            + '<TD '+qestilocelula+' >'+ qrFollowData.AsString +'</TD>'
            + '<TD '+qestilocelula+' >'+ qrFollowHora.AsString +'</TD>'
            + '<TD '+qestilocelula+' >'+ qrFollowEvento.AsString;

     if not  qrFollowobs.IsNull
      then vBody := vBody + ' - '+qrFollowobs.AsString;;

     vBody := vBody + '</TD></TR>';

     qrFollow.Close;
     Inc(vCont);
     qrAAP.Next;
   end;

  vBody := vBody
         + '</TABLE><BR><TABLE ALIGN="CENTER" WIDTH="100%" CELLSPACING="0" CELLPADDING="0"><TR><TD  '+qestilocelula+' >TOTAL DE PROCESSOS: '+ IntToStr(vCont) + '</TD></TR></TABLE><BR></TD></TR>'
         + '</TABLE>';

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + 'Total de processos: '+ IntToStr(vCont);
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  { ENVIA E-MAIL DA RELAÇÃO DOS PROCESSOS }
  acEnviaEmail.Execute;
end;

procedure TfrmAAP.acEnviaEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + 'Gravando e-Mail automático...';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  with qrUsuarios do
   begin
     Open;

     while not Eof Do
      begin
        if (Pos(qrUsuariosEmail.AsString, vPara) = 0) and
           (Pos(qrUsuariosEmail.AsString, vCC)   = 0) and
           (Pos(qrUsuariosEmail.AsString, vCCO)  = 0)
         then begin
           if vCCO <> ''
            then vCCO := vCCO + ', ';

           vCCO := vCCO + qrUsuariosEmail.AsString;
         end;

        Next;
      end;

     Close;
   end;

  if (vPara + vCC + vCCO) = ''
   then begin
     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + '<*> ERRO! Não há e-Mail para envio.';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);
     Exit;
   end;

  try
    tbEmailAuto.Append;
    tbEmailAutoPrograma.AsString := vCodAPL;
    tbEmailAutoTitulo.AsString   := vTitulo;
    tbEmailAutoAssunto.AsString  := vAssunto;
    tbEmailAutoAnexo.AsString    := vAnexo;
    tbEmailAutoHTML.Asinteger    := vHTML;
    tbEmailAutoDe.AsString       := vDe;
    tbEmailAutoPara.AsString     := vPara;
    tbEmailAutoCC.AsString       := vCC;
    tbEmailAutoCCO.AsString      := vCCO;
    tbEmailAutoBody.AsString     := vBody;
    tbEmailAutoData.AsDateTime   := Date();
    tbEmailAutoHora.AsDateTime   := Now();
    tbEmailAuto.Post;
  except
    on E:Exception do
     begin
       Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
              + '<*> ERRO! e-Mail não gravado. MSG: '+ StringReplace(E.Message, #13#10, ' ', [rfReplaceAll]);
       Writeln(arqLog, Linha);  Flush(arqLog);
       reProcessa.Lines.Append(Linha);
     end;
  end;
end;

procedure TfrmAAP.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + '>>> FINALIZANDO O PROCESSAMENTO DO AAP';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  acFinaliza.Checked := True;
  CloseFile(arqLog);
  Close;
end;

procedure TfrmAAP.reProcessaChange(Sender: TObject);
begin
  pnlLog.Refresh;
  pnlTop.Refresh;
  Refresh;
end;

procedure TfrmAAP.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if acFinaliza.Checked
   then CanClose := True
   else begin
     CanClose := False;
     acFinaliza.Execute;
   end;
end;

procedure TfrmAAP.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmAAP.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;

  acInicializa.Execute;
end;

end.
