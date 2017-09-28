unit u_APA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ActnList, Psock, NMsmtp, StdCtrls, ComCtrls,
  ExtCtrls, FileCtrl;

type
  TfrmAPA = class(TForm)
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
    qrAPA: TQuery;
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
    qrAPACodigo: TStringField;
    qrAPARazao_Social: TStringField;
    qrAPAREF_MS: TStringField;
    qrAPAREF_CLIENTE: TStringField;
    qrAPATipo: TStringField;
    qrAPADESCRICAO: TStringField;
    qrAPAData: TDateTimeField;
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

const vCodAPL = 'APA';

var
  frmAPA : TfrmAPA;
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
function TfrmAPA.AnoBiSexto(Ayear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function TfrmAPA.SeparaParametros(str: String): Variant;
const Parametro = ',';
var
  x,i : Integer;
  vet : Array Of String;
begin
  i := -1;

  for x := 0 to Length(Str) do
   begin
     if (Str[x] <> Parametro) And (i > -1)
      then vet[i] := vet[i] + Copy(Str, x, 1)
      else begin
        Inc(i);
        SetLength(vet, i+1);
        vet[i] := '';
      end;
   end;

  Result := vet;
end;

procedure TfrmAPA.FormCreate(Sender: TObject);
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

procedure TfrmAPA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
    CloseFile(arqLog);
  except
  end;

  frmAPA := nil;
  Action := caFree;
end;

procedure TfrmAPA.acInicializaExecute(Sender: TObject);
begin
  arqDir  := ExtractFilePath(Application.ExeName)+'Log\';
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
         + '>>> INICIANDO O PROCESSAMENTO DO APA';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  { GERA EMAIL DE PROCESSOS ABERTOS }
  acGeraEmail.Execute;

  { FINALIZA O PROGRAMA APA }
  acFinaliza.Execute;
end;

procedure TfrmAPA.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + '>>> FINALIZANDO O PROCESSAMENTO DO APA';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  CloseFile(arqLog);
  Close;
end;

procedure TfrmAPA.acGeraEmailExecute(Sender: TObject);
var
  contResumoSintetico, contResumoSinteticoTotal : Integer;
  contTipo, contTipoTotal : Integer;
  vTotProcessos : Integer;
  vImp, vTipo : String;
  analitico, resumoAnalitico, resumoSintetico : String;
  imprimeAnalitico, imprimeResumoAnalitico, imprimeResumoSintetico : Boolean;
  vExecutar : Boolean;
  v : Array of String;
  vTotCol : Integer;
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

  vTitulo := Caption;

  vDe   := 'APA - MS2000<auditoria@logistic-ms.com.br>';
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
     if (StrToTime(FormatDateTime('hh:mm',Now)) < StrToTime(v[10])) or
        (StrToTime(FormatDateTime('hh:mm',Now)) > StrToTime(v[11]))
      then vExecutar := False
      else begin {dia}
        if (v[0] <> '0')
         then vExecutar := StrToInt(v[0]) = StrToInt(FormatDateTime('dd',Now))
         else begin
           if (v[1] <> '0') and
              (StrToInt(v[1]) <> StrToInt(FormatDateTime('mm',Now)))
            then vExecutar := False
            else begin
              if (v[2] <> '0') and
                 (StrToInt(v[2]) <> StrToInt(FormatDateTime('yyyy',Now)))
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

     if v[12] = '*'
      then v[12] := '2000';

     if v[12] = '*1'
      then case StrToInt(FormatDateTime('mm',Now)) Of
             1,2,4,6,8,9,11 : v[12] := '31';
             5,7,10,12      : v[12] := '30';
             3              : if AnoBiSexto(StrToInt(FormatDateTime('yyyy',Now)))
                               then v[12] := '29'
                               else v[12] := '28'
           end;

     vAssunto := 'APA - Total de processos abertos em ' + FormatDateTime('dd/mm/yyyy', Now - 1);

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                           + 'Verificando Processos abertos no período de: '+ v[12] +' dias...';

     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     imprimeAnalitico := v[13] = '1';
     imprimeResumoAnalitico := v[14] = '1';
     imprimeResumoSintetico := v[15] = '1';

     with qrAPA do
      begin
        Params[0].Asinteger := strtoint(v[12]);
        Open;
        vTotProcessos := RecordCount;

        if RecordCount = 0
         then begin
           Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                  + 'Não foram encontrados processos abertos no período!';
           Writeln(arqLog, Linha);  Flush(arqLog);
           reProcessa.Lines.Append(Linha);
           Close;
           qrEmailAviso.Next;
           Continue;
         end;
      end;

     if v[12] <> '0'
      then vTotCol := 4
      else vTotCol := 3;

     //****************************** ANALÍTICO E RESUMO SINTÉTICO
     analitico := '<TR bgcolor="#BBBBBB"><TD ALIGN="CENTER"><B>ANALÍTICO</B></TD></TR>'
                + '<TR><TD><TABLE cellspacing="0" ALIGN="CENTER" BORDER="1" WIDTH="100%" style="font-size:13px;">';

     resumoSintetico := '<TR bgcolor="#BBBBBB"><TD ALIGN="CENTER"><B>RESUMO SINTÉTICO</B></TD></TR>'
                      + '<TR><TD><TABLE cellspacing="0" ALIGN="CENTER" BORDER="1" WIDTH="100%" style="font-size:13px;">'
                      + '<TR><TD WIDTH="80%" ALIGN="CENTER"><B>CLIENTE</B></TD>'
                      + '<TD WIDTH="20%" ALIGN="CENTER"><B>TOTAL</B></TD></TR>';

     vImp := '';
     contResumoSinteticoTotal := 0;

     if imprimeAnalitico or imprimeResumoSintetico
      then begin
        while not qrAPA.Eof do
         begin
           if qrAPACodigo.AsString <> vImp
            then begin
              vImp := qrAPACodigo.AsString;
              contResumoSintetico := 0;

              analitico := analitico
                         + '<TR bgcolor="#CCCCCC">'
                         + '<TD COLSPAN="'+ IntToStr(vTotCol) +'" style="border-style: solid; border-width: 0px 0px 1px;" bordercolor="#000000"><B>('+ vImp +') '+ qrAPARazao_Social.AsString +'</B></TD></TR>'
                         + '<TR><TD WIDTH="40%" ALIGN="CENTER"><B>TIPO DE PROCESSO</B></TD>'
                         + '<TD WIDTH="20%" ALIGN="CENTER"><B>PROCESSO</B></TD>'
                         + '<TD WIDTH="20%" ALIGN="CENTER"><B>REF. DO CLIENTE</B></TD>';

              if v[12] <> '0'
               then  analitico := analitico +'<TD WIDTH="20%" ALIGN="CENTER"><B>DATA DE ABERTURA</B></TD>';

              analitico := analitico +'</TR>';

              resumoSintetico := resumoSintetico +'<TR><TD>('+ vImp +') '+ qrAPARazao_Social.AsString +'</TD>';
            end;

           analitico := analitico
                      + '<TR><TD>'+ qrAPADESCRICAO.AsString +'</TD>'
                      + '<TD>'+ qrAPAREF_MS.AsString +'</TD>'
                      + '<TD>'+ qrAPAREF_CLIENTE.AsString +'</TD>';

           if v[12] <> '0'
            then analitico := analitico + '<TD>'+ qrAPAData.AsString +'</TD>';

           analitico := analitico +'</TR>';

           Inc(contResumoSintetico);
           Inc(contResumoSinteticoTotal);

           qrAPA.Next;

           if not qrAPA.Eof
            then if qrAPACodigo.AsString <> vImp
                  then resumoSintetico := resumoSintetico +'<TD align="center">'+ IntToStr(contResumoSintetico) +'</TD></TR>';
         end;

        qrAPA.Close;
      end;

     analitico := analitico + '</TABLE><BR></TD></TR>';

     resumoSintetico := resumoSintetico
                      + '<TD align="center">'+ IntToStr(contResumoSintetico) +'</TD></TR>'
                      + '<TR bgcolor="#CCCCCC"><TD><B>TOTAL: </B></TD><TD align="center"><B>'+ IntToStr(contResumoSinteticoTotal) +'</B></TD></TR>'
                      + '</TABLE><BR></TD></TR>';

     //******************************** RESUMO ANALÍTICO
     resumoAnalitico := '<TR bgcolor="#BBBBBB"><TD ALIGN="CENTER"><B>RESUMO ANALÍTICO</B></TD></TR>'
                      + '<TR><TD><TABLE cellspacing="0" ALIGN="CENTER" BORDER="1" WIDTH="100%" style="font-size:13px;">';

     if imprimeResumoAnalitico
      then begin
        with qrAPA do
         begin
           Close;
           SQL.Strings[SQL.Count-1] := 'TP.DESCRICAO, P.Data ';
           Open;
         end;

        vImp     := '';
        vTipo    := '';
        contTipo := 0;
        contTipoTotal := 0;

        while not qrAPA.Eof do
         begin
           if qrAPACodigo.AsString <> vImp
            then begin
              vImp  := qrAPACodigo.AsString;
              vTipo := '';
              contTipo := 0;
              contTipoTotal := 0;

              resumoAnalitico := resumoAnalitico
                               + '<TR bgcolor="#CCCCCC">'
                               + '<TD style="border-style: solid; border-width: 0px 0px 1px;" bordercolor="#000000"><B>('+ vImp +') '+ qrAPARazao_Social.AsString +'</B></TD></TR>'
                               + '<TR><TD><TABLE cellspacing="0" ALIGN="CENTER" BORDER="1" WIDTH="80%" style="font-size:13px;">'
                               + '<TR><TD WIDTH="80%" ALIGN="CENTER"><B>TIPO DE PROCESSO</B></TD>'
                               + '<TD WIDTH="20%" ALIGN="CENTER"><B>QUANTIDADE</B></TD></TR>';
            end;

           if qrAPATipo.AsString <> vTipo
            then begin
              vTipo := qrAPATipo.AsString;
              contTipo := 0;

              resumoAnalitico := resumoAnalitico
                               + '<TR><TD>'+ qrAPADESCRICAO.AsString +'</TD>';
            end;

           Inc(contTipo);
           Inc(contTipoTotal);

           qrAPA.Next;

           if not qrAPA.Eof
            then begin
              if qrAPACodigo.AsString <> vImp
               then resumoAnalitico := resumoAnalitico
                                     + '<TD ALIGN="CENTER">'+ IntToStr(contTipo) +'</TD></TR>'
                                     + '</TABLE></TD></TR>'
                                     + '<TR><TD><B>TOTAL: '+ IntToStr(contTipoTotal) +'</B></TD></TR>'
               else if qrAPATipo.AsString <> vTipo
                     then resumoAnalitico := resumoAnalitico
                                           + '<TD ALIGN="CENTER">'+ IntToStr(contTipo) +'</TD></TR>';

            end;
         end;

        qrAPA.Close;

        resumoAnalitico := resumoAnalitico
                         + '<TD ALIGN="CENTER">'+ IntToStr(contTipo) +'</TD></TR>'
                         + '</TABLE></TD></TR>'
                         + '<TR><TD><B>TOTAL: '+ IntToStr(contTipoTotal) +'</B></TD></TR>'
                         + '</TABLE><BR></TD></TR>';
      end;

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + 'Processos abertos no período: '+ IntToStr(vTotProcessos);
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     vBody := '<FONT FACE="Arial">'
            + '<TABLE ALIGN="CENTER" BORDER="0" WIDTH="100%">';

     if imprimeAnalitico
      then vBody := vBody + analitico;

     if imprimeResumoAnalitico
      then vBody := vBody + resumoAnalitico;

     if imprimeResumoSintetico
      then vBody := vBody + resumoSintetico;

     vBody := vBody +'</TABLE></FONT>';

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

  qrEmailAviso.Close;
end;

procedure TfrmAPA.acEnviaEmailExecute(Sender: TObject);
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

procedure TfrmAPA.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmAPA.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;

  acInicializa.Execute;
end;

procedure TfrmAPA.reProcessaChange(Sender: TObject);
begin
  pnlLog.Refresh;
  pnlTop.Refresh;
  Refresh;
end;

end.
