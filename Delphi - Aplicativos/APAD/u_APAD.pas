unit u_APAD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ActnList, Psock, NMsmtp, StdCtrls, ComCtrls,
  ExtCtrls, FileCtrl;

type
  TfrmAPAD = class(TForm)
    pnlTop: TPanel;
    pnlLog: TPanel;
    reProcessa: TRichEdit;
    DB_MSCOMEX: TDatabase;
    alAPA: TActionList;
    acInicializa: TAction;
    acGeraEmail: TAction;
    acEnviaEmail: TAction;
    acFinaliza: TAction;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    qrParametrosHost: TStringField;
    qrParametrosHost_SMTP: TStringField;
    qrParametrosPorta_SMTP: TSmallintField;
    qrParametrosUsuario_SMTP: TStringField;
    qrParametrosSenha_SMTP: TStringField;
    qrUsuarios: TQuery;
    qrEmailAviso: TQuery;
    qrEmailAvisoImportador: TStringField;
    qrEmailAvisoEmail: TStringField;
    qrEmailAvisoNome_completo: TStringField;
    qrEmailAvisoParametros: TStringField;
    qrParametrosDescricao: TStringField;
    tbEmailAuto: TTable;
    qrAPAD: TQuery;
    tmIniciar: TTimer;
    acProcessa: TAction;
    qrAtuEmailAviso: TQuery;
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
    qrUsuariosEmail: TStringField;
    qrUsuariosnome_completo: TStringField;
    qrUsuariosEmail_aviso_oper: TIntegerField;
    qrAPADProcesso: TStringField;
    qrAPADImportador: TStringField;
    qrAPADCliente: TStringField;
    qrAPADTipo: TStringField;
    qrAPADtipopro: TStringField;
    qrAPADResponsavel_empresa: TStringField;
    qrAPADDT_REGISTRO_DI: TStringField;
    qrAPADQTD_DIAS: TIntegerField;
    qrAPADNR_DECLARACAO_IMP: TStringField;
    qrAPADCOD_URF: TStringField;
    qrAPADURF_DESPACHO: TStringField;
    qrAPADCNPJ_CPF_COMPLETO: TStringField;
    qrAPADSETOR_ARMAZENAMENTO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInicializaExecute(Sender: TObject);
    procedure acFinalizaExecute(Sender: TObject);
    procedure acGeraEmailExecute(Sender: TObject);
    procedure acEnviaEmailExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmIniciarTimer(Sender: TObject);
    procedure reProcessaChange(Sender: TObject);
  private
    { Private declarations }
    function SeparaParametros(Str:String): Variant;
    function AnoBiSexto(Ayear: Integer): Boolean;
  public
    { Public declarations }
  end;

const
  vCodAPL = 'APAD';

var
  frmAPAD : TfrmAPAD;
  arqLog : TextFile;
  arqDir, arqNome, Linha : String;
  vFil, vEmp : String;

  vDe, vPara, vCC, vCCO : String;
  vAssunto : String;
  vTitulo : String;
  vBody : String;
  vHTML : integer = 1;
  vAnexo : String = '';
  vDias : String;
  vStrFilial : String;

implementation

{$R *.DFM}
function TfrmAPAD.AnoBiSexto(Ayear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function TfrmAPAD.SeparaParametros(str: String): Variant;
const
  Parametro = ',';
var
  x,i : Integer;
  vet : Array Of String;
begin
  i := -1;

  for x := 0 to Length(Str) do
   begin
     if (Str[x] <> Parametro) and (i > -1)
      then vet[i] := vet[i] + Copy(Str, x, 1)
      else begin
        Inc(i);
        SetLength(vet, i+1);
        vet[i] := '';
      end;
   end;

  Result := vet;
end;

procedure TfrmAPAD.FormCreate(Sender: TObject);
begin
  try
    with DB_MSCOMEX do
     begin
       Params.Values['USER NAME'] := 'APA';
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
  vEmp       := qrParametrosEmpresa.AsString;
  vFil       := qrParametrosFilial.AsString;
  vStrFilial := qrParametrosDescricao.AsString;
  qrParametros.Close;

  with qrUsuarios do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrEmailAviso do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Params[2].AsString := vCodAPL;
   end;

  with qrAtuEmailAviso do
   begin
     Params[1].AsString := vEmp;
     Params[2].AsString := vFil;
     Params[3].AsString := vCodAPL;
   end;
end;

procedure TfrmAPAD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
    CloseFile(arqLog);
  except
  end;

  frmAPAD := nil;
  Action := caFree;
end;

procedure TfrmAPAD.acInicializaExecute(Sender: TObject);
begin
  arqDir := ExtractFilePath(Application.ExeName)+'Log\';
  arqNome := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.txt';
  AssignFile(arqLog,ArqDir+ArqNome);

  if not DirectoryExists(ArqDir)
   then CreateDir(ArqDir);

  if FileExists(ArqDir+ArqNome)
   then AppEnd(arqLog)
   else begin
     ReWrite(arqLog);
     Linha := '    DATA    |   HORA   | DESCRIÇÃO ';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);
   end;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + '>>> INICIANDO O PROCESSAMENTO DO APAD';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  { GERA EMAIL DE PROCESSOS ABERTOS }
  acGeraEmail.Execute;

  { FINALIZA O PROGRAMA APAD }
  acFinaliza.Execute;
end;

procedure TfrmAPAD.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + '>>> FINALIZANDO O PROCESSAMENTO DO APAD';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  CloseFile(arqLog);
  Close;
end;

procedure TfrmAPAD.acGeraEmailExecute(Sender: TObject);
var
  vTotProcessos : Integer;
  vImp : String;
  vExecutar : Boolean;
  v : Array of String;
begin
  with qrEmailAviso do
   begin
     Open;

     if RecordCount = 0
      then begin
        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'Não há contatos para o envio do aviso!';
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);
        Close;
        Exit;
      end;
   end;

  vImp := '';
  vTitulo := Caption;

  vDe := 'APAD - MS2000<auditoria@logistic-ms.com.br>';
  vPara := '';
  vCC   := '';
  vCCO  := '';

{                     1   2   3   4    5  6   7
          DD,MM,AAAA,DOM,SEG,TER,QUA,QUI,SEX,SAB,HH:MM_ini,HH:MM_fim,QT_DIAS_ANALISE_ATRAS, ANALÍTICO, RESUMO_ANALÍTICO, RESUMO_SINTÉTICO, Data_Último_Aviso
           0  1   2    3   4   5   6    7  8   9     10         11          12                  13             14              15                  16
          v := SeparaParametros('12,10,2004,0,0,0,0,0,0,0,14:20,16:20',7,1,1,1,25/05/2005);
}

  while not qrEmailAviso.Eof do
   begin
     vExecutar := True;

     v := SeparaParametros(qrEmailAvisoParametros.AsString);

     {hora}
     if (StrToTime(FormatDateTime('hh:mm',Now)) < StrToTime(v[10])) or (StrToTime(FormatDateTime('hh:mm',Now)) > StrToTime(v[11]))
      then vExecutar := False
      else begin
        {dia}
        if (v[0] <> '0')
         then vExecutar := StrToInt(v[0]) = StrToInt(FormatDateTime('dd',Now))
         else begin
           if (v[1] <> '0') and (StrToInt(v[1]) <> StrToInt(FormatDateTime('mm',Now)))
            then vExecutar := False
            else begin
              if (v[2] <> '0') and (StrToInt(v[2]) <> StrToInt(FormatDateTime('yyyy',Now)))
               then vExecutar := False
               else if (StrToInt(v[DayOfWeek(now) + 2]) = 0)
                     then vExecutar := False;
            end;
         end;
      end;

     try
       if StrToDate(v[16]) = Date
        then vExecutar := False;
     except
       // Não tem data do último processamento
     end;

     if not vExecutar
      then begin
        vExecutar := True;
        qrEmailAviso.Next;
        Continue;
      end;

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
           + 'Gerando e-mail para: '+ qrEmailAvisoNome_completo.AsString +'...';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     vPara := qrEmailAvisoEmail.AsString;

     vAssunto := 'APAD - Aviso de Processos Aguardando Desembaraço.';

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + 'Verificando Processos Aguardando Desembaraço:';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     with qrAPAD do
      begin
        Open;

        if RecordCount = 0
         then begin
           Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                  + 'Não foram encontrados processos abertos no período!';
           Writeln(arqLog, Linha);  Flush(arqLog);
           reProcessa.Lines.Append(Linha);

           Close;
           qrEmailAviso.Next;
           Continue;
         end
         else qrAPAD.First;
      end;

     vImp := qrAPADImportador.AsString;
     vTotProcessos := 0;
     vBody:= '';
     vBody:= '<FONT FACE="Arial"><TR bgcolor="#002255"><TD ALIGN="LEFT"><B>('+ vImp + ')'+ qrAPADCliente.AsString +' - '+ qrAPADCNPJ_CPF_COMPLETO.asstring +'</B></TD></TR>'
           + '<TR><TD><TABLE cellspacing="0" ALIGN="CENTER" BORDER="1" WIDTH="100%" style="font-size:13px;">'
           + '<TR><TD WIDTH="10%" ALIGN="CENTER"><B>MS</B></TD>'
           +      '<TD WIDTH="20%" ALIGN="CENTER"><B>DI</B></TD>'
           +      '<TD WIDTH="30%" ALIGN="CENTER"><B>URF DESPACHO</B></TD>'
           +      '<TD WIDTH="30%" ALIGN="CENTER"><B>SETOR ARMAZENAMENTO</B></TD>'
           +      '<TD WIDTH="10%" ALIGN="CENTER"><B>QTD DIAS</B></TD></tr>';

     while not qrAPAD.Eof Do
      begin
        if qrAPADImportador.AsString <> vImp
         then begin
           vImp := qrAPADImportador.AsString;

           vBody := vBody
                  + '<TR bgcolor="#CCCCCC"><TD ALIGN="CENTER" WIDTH="10%"><B>TOTAL: </B></TD><TD COLSPAN="3" align="LEFT" WIDTH="90%"><B>'+ IntToStr(vTotProcessos) +'</B></TD></TR>';

           vTotProcessos := 0;
           vBody:= vBody +'<TR bgcolor="#002255"><TD COLSPAN="4" ALIGN="LEFT"><B>('+ vImp + ')'+ qrAPADCliente.AsString +' - '+ qrAPADCNPJ_CPF_COMPLETO.asstring +'</B></TD></TR>'
                         + '<TR><TD WIDTH="10%" ALIGN="CENTER"><B>MS</B></TD>'
                         +      '<TD WIDTH="20%" ALIGN="CENTER"><B>DI</B></TD>'
                         +      '<TD WIDTH="30%" ALIGN="CENTER"><B>URF DESPACHO</B></TD>'
                         +      '<TD WIDTH="30%" ALIGN="CENTER"><B>SETOR ARMAZENAMENTO</B></TD>'
                         +      '<TD WIDTH="10%" ALIGN="CENTER"><B>QTD DIAS</B></TD></tr>';
         end;

        vBody  := vBody + '<TR><TD WIDTH="10%" ALIGN="CENTER">'+ qrAPADProcesso.asstring +'</TD>'
                        + '<TD WIDTH="20%" ALIGN="CENTER">'+ qrAPADNR_DECLARACAO_IMP.AsString +'</TD>'
                        + '<TD WIDTH="30%" ALIGN="LEFT">('+ qrAPADCOD_URF.AsString +')-'+ qrAPADURF_DESPACHO.AsString +'</TD>'
                        + '<TD WIDTH="30%" ALIGN="LEFT">'+ qrAPADSETOR_ARMAZENAMENTO.AsString +'</TD>'
                        + '<TD WIDTH="10%" ALIGN="CENTER">'+ qrAPADQTD_DIAS.AsString +'</TD></TR>';

        inc(vTotProcessos);
        qrAPAD.Next;
      end;

     qrAPAD.Close;
     vBody := vBody + '<TR bgcolor="#CCCCCC"><TD ALIGN="CENTER" WIDTH="20%"><B>TOTAL: </B></TD><TD COLSPAN="3" align="LEFT" WIDTH="80%"><B>'+ IntToStr(vTotProcessos) +'</B></TD></TR>'
                    + '</TABLE></TD></TR></FONT>';

     acEnviaEmail.Execute;

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + 'Gravando data do aviso no parâmetro.';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     with qrAtuEmailAviso do
      begin
        Params[4].AsString := qrEmailAvisoImportador.AsString;
        Params[5].AsString := vPara;

        if Length(v) = 17
         then Params[0].AsString := Copy(qrEmailAvisoParametros.AsString, 1, LastDelimiter(',', qrEmailAvisoParametros.AsString)) + FormatDateTime('dd/mm/yyyy', Date)
         else Params[0].AsString := qrEmailAvisoParametros.AsString +','+ FormatDateTime('dd/mm/yyyy', Date);

        ExecSQL;
      end;

     qrEmailAviso.Next;   
   end;

  qrEmailAviso.close;
end;

procedure TfrmAPAD.acEnviaEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + 'Gravando e-Mail automático...';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  if (vPara + vCC + vCCO) = ''
   then begin
     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + '<*> ERRO! Não há e-Mail para envio.';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);
     Exit;
   end;

  try
    tbEmailAuto.Open;
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
    tbEmailAutoHora.AsDateTime   := Time();
    tbEmailAuto.Post;
    tbEmailAuto.Close;
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

procedure TfrmAPAD.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmAPAD.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;

  acInicializa.Execute;
end;

procedure TfrmAPAD.reProcessaChange(Sender: TObject);
begin
  pnlLog.Refresh;
  pnlTop.Refresh;
  Refresh;
end;

end.

