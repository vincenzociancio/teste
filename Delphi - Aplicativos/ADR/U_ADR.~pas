unit U_ADR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, FileCtrl, ActnList;
  
type
  TfrmADR = class(TForm)
    DB_MSCOMEX: TDatabase;
    tbProRegImp: TTable;
    qrADR: TQuery;
    qrItens: TQuery;
    qrConhecimento: TQuery;
    qrTaxas: TQuery;
    qrEmbalagem: TQuery;
    qrFaturas: TQuery;
    qrICMS: TQuery;
    qrUsuariosFinan: TQuery;
    qrUsuariosFinanEmail: TStringField;
    qrUsuariosFinannome_completo: TStringField;
    alADR: TActionList;
    acInicializa: TAction;
    acGeraEmail: TAction;
    acProcessa: TAction;
    acEnviaEmail: TAction;
    acFinaliza: TAction;
    pnlTop: TPanel;
    pnlLog: TPanel;
    reProcessa: TRichEdit;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    tbEmailAuto: TTable;
    qrUsuariosOper: TQuery;
    qrUsuariosOperEmail: TStringField;
    qrUsuariosOpernome_completo: TStringField;
    qrConhecimentoqtransporte: TStringField;
    qrConhecimentoqtransportador: TStringField;
    qrConhecimentoqembarcacao: TStringField;
    qrConhecimentoqlocal: TStringField;
    qrConhecimentoqdataembarque: TDateTimeField;
    qrConhecimentoqconhecimento: TStringField;
    qrConhecimentoqtipo: TStringField;
    qrConhecimentoqmaster: TStringField;
    qrConhecimentoqutilizacao: TStringField;
    qrConhecimentoqpaisprocedencia: TStringField;
    qrConhecimentoqurfentrada: TStringField;
    qrConhecimentoqdataurfchegada: TDateTimeField;
    qrConhecimentoqmoedafrete: TStringField;
    qrConhecimentoFrete_Prepaid: TFloatField;
    qrConhecimentoFrete_Collect: TFloatField;
    qrConhecimentoFrete_Ter_Nac: TFloatField;
    qrConhecimentoqmoedaseguro: TStringField;
    qrConhecimentoValor_Seguro: TFloatField;
    qrConhecimentoPeso_Liquido: TFloatField;
    qrConhecimentoPeso_Bruto: TFloatField;
    qrConhecimentoqurfdespacho: TStringField;
    qrConhecimentoqrecinto: TStringField;
    qrConhecimentoqsetor: TStringField;
    qrConhecimentoqdatadespacho: TDateTimeField;
    qrConhecimentoqdocentrada: TStringField;
    qrConhecimentoqtipodocentrada: TStringField;
    qrConhecimentoqpresencacarga: TStringField;
    qrTaxasProcesso: TStringField;
    qrTaxasMoeda: TStringField;
    qrTaxasDESCRICAO: TStringField;
    qrTaxasTaxa_conversao: TFloatField;
    qrTaxasTaxa_conversaoc: TFloatField;
    qrFaturasq_pro: TStringField;
    qrFaturasq_fat: TStringField;
    qrFaturasq_inc: TStringField;
    qrFaturasq_exp: TStringField;
    qrFaturasq_end: TStringField;
    qrFaturasq_com: TStringField;
    qrFaturasq_bai: TStringField;
    qrFaturasq_cid: TStringField;
    qrFaturasq_est: TStringField;
    qrFaturasq_moe: TStringField;
    qrFaturasq_val: TFloatField;
    qrEmbalagemTipoEmbalagem: TStringField;
    qrEmbalagemDescricaoEmbalagem: TStringField;
    qrEmbalagemQuantidade: TStringField;
    qrICMSNumerario: TStringField;
    qrICMSData_Registro: TDateTimeField;
    qrICMSValor_Registrado: TFloatField;
    qrICMSValor_Contabilizado: TFloatField;
    qrICMSContabilizado: TStringField;
    acGeraDI: TAction;
    acGeraDIConsumo: TAction;
    qrEmailAviso: TQuery;
    acVerificaEnvios: TAction;
    acEnviarCC: TAction;
    qrParametrosPATH_SERVER: TStringField;
    reArqDI: TRichEdit;
    qrFaturasMoeda: TStringField;
    qrArrumaADR: TQuery;
    tmIniciar: TTimer;
    Q_ICMS_TRATA: TQuery;
    Q_ICMS_TRATAProcesso: TStringField;
    Q_ICMS_TRATATratamento_Tributario: TStringField;
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
    qrEmailAvisoEmail: TStringField;
    qrEmailAvisoNome_completo: TStringField;
    qrEmailAvisoHTML: TIntegerField;
    qrADRCodigo: TStringField;
    qrADRcliente: TStringField;
    qrADRref_ms: TStringField;
    qrADRref_empresa: TStringField;
    qrADRdi: TStringField;
    qrADRdt_reg: TStringField;
    qrADRresp_ms: TStringField;
    qrADRemail_resp_ms: TStringField;
    qrADRdic: TStringField;
    qrADRdt_regc: TStringField;
    qrADRms: TStringField;
    qrADRqfilial: TStringField;
    qrADRBanco: TStringField;
    qrADRAgencia: TStringField;
    qrADRConta_Corrente: TStringField;
    qrADRII: TFloatField;
    qrADRIPI: TFloatField;
    qrADRTaxa_SISCOMEX: TFloatField;
    qrADRBancoc: TStringField;
    qrADRAgenciac: TStringField;
    qrADRConta_Correntec: TStringField;
    qrADRIIc: TFloatField;
    qrADRIPIc: TFloatField;
    qrADRTaxa_SISCOMEXc: TFloatField;
    qrADREnviou_adcc: TIntegerField;
    qrADREnviou_adcc_c: TIntegerField;
    qrADREnviou_adr: TIntegerField;
    qrADREnviou_adr_c: TIntegerField;
    qrADRqcontrato: TStringField;
    qrADRqlocal: TStringField;
    qrADRTipo: TStringField;
    qrADRqtipo: TStringField;
    qrADRqtipodecl: TStringField;
    qrADRqdecl: TStringField;
    qrADRPag_proporcional: TIntegerField;
    qrADRNomeSupervisor: TStringField;
    qrADREmailSupervisor: TStringField;
    tbProRegImpEmpresa: TStringField;
    tbProRegImpFilial: TStringField;
    tbProRegImpProcesso: TStringField;
    tbProRegImpBanco: TStringField;
    tbProRegImpAgencia: TStringField;
    tbProRegImpConta_Corrente: TStringField;
    tbProRegImpII: TFloatField;
    tbProRegImpIPI: TFloatField;
    tbProRegImpTaxa_SISCOMEX: TFloatField;
    tbProRegImpBancoc: TStringField;
    tbProRegImpAgenciac: TStringField;
    tbProRegImpConta_Correntec: TStringField;
    tbProRegImpIIc: TFloatField;
    tbProRegImpIPIc: TFloatField;
    tbProRegImpTaxa_SISCOMEXc: TFloatField;
    tbProRegImpEnviou_adcc: TIntegerField;
    tbProRegImpEnviou_adcc_c: TIntegerField;
    tbProRegImpEnviou_adr: TIntegerField;
    tbProRegImpEnviou_adr_c: TIntegerField;
    qrItensDI: TStringField;
    qrItensvad: TIntegerField;
    qrItensvseq: TIntegerField;
    qrItensTaxa_conversao: TFloatField;
    qrItensIncoterm: TStringField;
    qrItensqmoeda: TStringField;
    qrItensAdicao: TStringField;
    qrItensSeq_Adicao: TSmallintField;
    qrItensSomaDePeso_Total_Acertado: TFloatField;
    qrItensFOB: TFloatField;
    qrItensFOB_em_reais: TFloatField;
    qrItensCIF: TFloatField;
    qrItensCIF_em_reas: TFloatField;
    qrItensValor_mercadoria: TFloatField;
    qrItensValunit: TFloatField;
    qrItensValtot: TFloatField;
    qrItenspesounit: TFloatField;
    qrItenspesototal: TFloatField;
    qrItensSomaDeVMLE: TFloatField;
    qrItensProduto: TStringField;
    qrItensqDescricao_Produto: TMemoField;
    qrItensQuantidade: TFloatField;
    qrItensNCM: TStringField;
    qrItensDestaque_NCM: TStringField;
    qrItensNALADI: TStringField;
    qrItensfreteprepaid: TFloatField;
    qrItensfreteprepaid_em_reais: TFloatField;
    qrItensfretecollect: TFloatField;
    qrItensfretecollect_em_reais: TFloatField;
    qrItensfreteternac: TFloatField;
    qrItensfreteternac_em_reais: TFloatField;
    qrItensseguro: TFloatField;
    qrItensseguro_em_reais: TFloatField;
    qrItensRegime_tri: TStringField;
    qrItensAliq_NCM_II: TFloatField;
    qrItensRegime_Tributacao_II: TStringField;
    qrItensRegime_Tributacao_IPI: TStringField;
    qrItensAliq_NCM_IPI: TFloatField;
    qrItensValor_II_a_recolher: TFloatField;
    qrItensValor_II_a_recolher_em_reais: TFloatField;
    qrItensValor_IPI_a_recolher: TFloatField;
    qrItensValor_IPI_a_recolher_em_reais: TFloatField;
    qrItensfob2: TFloatField;
    qrItensFOB_em_reais2: TFloatField;
    qrItensAto_Concessorio: TStringField;
    qrADRCGC_CPF: TStringField;
    qrEmailAviso_Plataforma: TQuery;
    qrEmailAviso_PlataformaEmail: TStringField;
    qrEmailAviso_PlataformaNome_completo: TStringField;
    qrEmailAviso_PlataformaParametros: TStringField;
    qrEmailAviso_PlataformaHTML: TIntegerField;
    qrEmailAviso_PlataformaPlataforma: TStringField;
    qrPlataforma: TQuery;
    qrPlataformaPlataforma: TStringField;
    qrEmailAvisoEmpresa: TStringField;
    qrEmailAvisoFilial: TStringField;
    qrEmailAvisoImportador: TStringField;
    qrEmailAvisoTipo: TStringField;
    qrEmailAvisoParametros: TStringField;
    qrEmailAvisoPlataforma: TStringField;
    qrEmailAvisoPara: TBooleanField;
    qrEmailAvisoCc: TBooleanField;
    qrEmailAvisoCCo: TBooleanField;
    qrEmailAvisoAtivo: TBooleanField;
    qrEmailAviso_PlataformaEmpresa: TStringField;
    qrEmailAviso_PlataformaFilial: TStringField;
    qrEmailAviso_PlataformaImportador: TStringField;
    qrEmailAviso_PlataformaTipo: TStringField;
    qrEmailAviso_PlataformaPara: TBooleanField;
    qrEmailAviso_PlataformaCc: TBooleanField;
    qrEmailAviso_PlataformaCCo: TBooleanField;
    qrEmailAviso_PlataformaAtivo: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInicializaExecute(Sender: TObject);
    procedure acGeraEmailExecute(Sender: TObject);
    procedure acProcessaExecute(Sender: TObject);
    procedure acGeraDIExecute(Sender: TObject);
    procedure acGeraDIConsumoExecute(Sender: TObject);
    procedure acVerificaEnviosExecute(Sender: TObject);
    procedure acEnviaEmailExecute(Sender: TObject);
    procedure acEnviarCCExecute(Sender: TObject);
    procedure acFinalizaExecute(Sender: TObject);
    procedure reProcessaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmIniciarTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }

    function UsuarioAtivo(Email : String) : Boolean; 
  public
    { Public declarations }
  end;

const
  vCodAPL = 'ADR';
  vNomeAPL = 'ADR - AVISO AUTOMÁTICO DE DI''S REGISTRADAS';

var
   frmADR: TfrmADR;
   arqDir, arqNome, Linha: String;
   arqLog: TextFile;
   vEmp, vFil: String;
   vImp, vProc: String;
   vDI, vDataDI: String;
   vMsgTrans: string;
   vMsgComu: string;

   vFilNome: String;
   vImpNome: String;

   vTaxaDolar: Real;
   vValICMS: Real;

   vSemVal, vSemValC: Boolean;
   vEnviaMsg, vICMSok, vTemAto: Boolean;
   eDolar: Boolean;

   vSetor: Integer;

   vExpor: String;
   vAdicao: String;
   vInfoDI: String;

   dirServ: String;
   dirApl: String;

   vErro, vDe, vPara, vCC, vCCO: String;
   vAssunto: String;
   vTitulo: String;
   vBody: String;
   vHTML: integer = 1;
   vAnexo: String = '';


implementation

{$R *.DFM}

{ FUNÇÃO PARA FORMATAR O VALOR COM ESPAÇOS ANTES DO VALOR }
function FormataValor(valor: Real; decimal: Integer): String;
var
  frm, val: String;
begin
  if decimal = 0
   then frm := '#,##0'
   else frm := '#,##0.'+ StringOfChar('0', decimal);

  val := FormatFloat(frm, valor);

  Result := StringOfChar(' ', 14-Length(val)) + val;
end;

procedure TfrmADR.FormCreate(Sender: TObject);
begin
  try
    with DB_MSCOMEX do
     begin
       Params.Values['USER NAME'] := 'ADR';
       Params.Values['PASSWORD']  := 'lasbrug30@';
       Connected := True;
     end;
  except
    on E : Exception do
     begin
       MessageDlg('Erro de Conexão com o Banco de Dados! Verifique sua conexão de rede.'+#13#10+#13#10+'ERRO: '+E.message, mtError,[mbOk], 0);
       Close;
       Application.Terminate;
       Exit;
     end;
  end;

  qrParametros.Open;

  vEmp    := qrParametrosEmpresa.AsString;
  vFil    := qrParametrosFilial.AsString;
  dirServ := qrParametrosPATH_SERVER.AsString;

  qrParametros.Close;

  with qrUsuariosOper do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrUsuariosFinan do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrEmailAviso do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrADR do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrConhecimento do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;
   
  with qrTaxas do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrFaturas do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrItens do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrEmbalagem do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrICMS do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;
end;

procedure TfrmADR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
    CloseFile(arqLog);
  except
  end;

  frmADR := nil;
  Action := caFree;
end;

procedure TfrmADR.acInicializaExecute(Sender: TObject);
begin
  dirApl := ExtractFilePath(Application.ExeName);
  vMsgTrans := 'Favor informar a transportadora que irá fazer o carregamento.<BR>'
              +'Favor Responder: <BR>'
              +'bruna.silva@mslogistica.com.br'
              +'<BR> <BR> <BR>' ;

  vMsgComu :=  'Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>'
             + 'e/ou esclarecimento, favor entrar em contato com o responsável pelo processo.'
             + '<BR> <BR> <BR>';

  arqDir  := dirApl+'Log\';
  arqNome := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.txt';
  AssignFile(arqLog,arqDir+arqNome);

  if not DirectoryExists(arqDir)
   then CreateDir(arqDir);

  if FileExists(arqDir+arqNome)
   then AppEnd(arqLog)
   else begin
     ReWrite(arqLog);
     Linha := '    DATA    |   HORA   | DESCRIÇÃO ';
     Writeln(arqLog, Linha);  Flush(arqLog);
   end;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + '>>> INICIANDO O PROCESSAMENTO DO ADR';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  tbProRegImp.Open;

  { GERA E-MAIL COM A RELAÇÃO DAS DI'S REGISTRADAS }
  acGeraEmail.Execute;

  tbProRegImp.Close;
  qrEmailAviso.Close;
  qrADR.Close;

  if acFinaliza.Checked
   then Exit;

  { FINALIZA APLICAÇÃO }
  acFinaliza.Execute;
end;

procedure TfrmADR.acGeraEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + 'Arrumando Tributação...';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  qrArrumaADR.ExecSQL;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
         + 'GERANDO RELAÇÃO DAS DI''S REGISTRADAS';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  vTitulo := Caption;

  vDe    := 'ADR - MS2000<auditoria@logistic-ms.com.br>';
  vPara  := '';
  vCC    := '';
  vCCO   := '';
  vSetor := 0;

  vImp     := '';
  vImpNome := '';

  qrADR.Open;

  while not qrADR.Eof do
   begin
     Application.ProcessMessages;

     if acFinaliza.Checked
      then Exit;

     qrPlataforma.Close;
     qrPlataforma.Params[0].AsString := qrADRref_ms.AsString;
     qrPlataforma.Open;

     if vImp <> qrADRCodigo.AsString
      then begin
        vImp     := qrADRCodigo.AsString;
        vImpNome := qrADRcliente.AsString;

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'CLIENTE: ('+ vImp +') '+ vImpNome;
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        qrEmailAviso.Close;
        qrEmailAviso.Params[2].AsString := vImp;
        qrEmailAviso.Open;

        qrEmailAviso_Plataforma.Close;
        qrEmailAviso_Plataforma.Params[0].AsString := vCodAPL;
        qrEmailAviso_Plataforma.Params[1].AsString := qrPlataformaPlataforma.AsString;
        qrEmailAviso_Plataforma.Params[2].AsString := vImp;
        qrEmailAviso_Plataforma.Open;
      end;

     vFilNome := qrADRqfilial.AsString;
     vProc    := qrADRref_ms.AsString;

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + 'Verificando Processo: '+ vProc;
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     qrItens.Params[2].AsString := vProc;
     qrItens.Open;

     { PROCESSA VERIFICAÇÃO DE DI REGISTRADA }
     acProcessa.Execute;

     if acFinaliza.Checked
      then Exit;

     qrItens.Close;

     qrADR.Next;
   end;
end;

procedure TfrmADR.acProcessaExecute(Sender: TObject);
begin
  { PROCESSA DI DE ADMISSÃO }
  vDI := qrADRDI.AsString;

  vTemAto := False;
  vSemVal := False;
  vSemValC := False;

  vInfoDI := '<B>Ref. MS</B>: '+ vProc +'<BR>'
           + '<B>Ref. Empresa</B>: '+ qrADRref_empresa.AsString +'<BR>';
  vErro := '';

  if (qrADREnviou_ADR.Asinteger = 0) and (vDI <> '')
   then begin
     { GERANDO ARQUIVO DA DI }
     acGeraDI.Execute;

     if acFinaliza.Checked
      then Exit;

     if qrADRqtipodecl.AsString <> '12'
      then vInfoDI := vInfoDI +'<B>DI</B>: '+ vDI +'<BR>'
      else vInfoDI := vInfoDI +'<B>DI</B>: '+ vDI +' -> ADMISSÃO TEMPORÁRIA<BR>';

     vInfoDI := vInfoDI
              + '<B>Data Registro</B>: '+ Copy(qrADRdt_reg.AsString,1,2) +'/'+ Copy(qrADRdt_reg.AsString,3,2) +'/'+ Copy(qrADRdt_reg.AsString,5,4) +'<BR>'
              + StringOfChar('_', 80) +'<BR>';

     if (qrItens.RecordCount = 0) or
        ((vDI <> '') and ((qrADRII.AsFloat <> 0) or (qrADRIPI.AsFloat <> 0)) and
        ((qrADRbanco.AsString = '') or (qrADRagencia.AsString = '') or
        (qrADRconta_corrente.AsString = '') or (qrADRtaxa_siscomex.AsFloat = 0)))
      then begin
        vSemVal := True;
        vErro :='Ao registrar a DI possíveis Informações foram omitidas, por favor verifique o seguinte:'+chr(13)+
                'Se os itens da fatura estão cadastrados corretamente; '+chr(13)+
                'Se há tributação dos itens da fatura atribuídas corretamente; '+chr(13)+
                'Se a Taxa Siscomex foi informada; ' +chr(13)+
                'Verifique o regime de tributação se está correto; '+chr(13)+
                'Talvez, informações do financeiro que estão ausentes tais como Banco, Agência ou Conta Corrente.' +chr(13)+chr(13)+

                'Verifique nos numerários se o ICMS está registrado, informado data de registro, valor registrado, e se está contabilizado.'+chr(13);

      end
      else vSemVal := False;

     acVerificaEnvios.Execute;
     if acFinaliza.Checked
      then Exit;
   end;
  { FINALIZOU DI DE ADMISSÃO }

  { PROCESSA DI DE CONSUMO }
  vDI := qrADRDIC.AsString;

  vTemAto := False;

  vInfoDI := '<B>Ref. MS</B>: '+ vProc +'<BR>'
           + '<B>Ref. Empresa</B>: '+ qrADRref_empresa.AsString +'<BR>';

  if ( qrADREnviou_ADR_C.Asinteger = 0) and (vDI <> '') and (not qrADRpag_proporcional.Asinteger = 1)
   then begin
     { GERANDO ARQUIVO DA DI DE CONSUMO }
     acGeraDIConsumo.Execute;

     if acFinaliza.Checked
      then Exit;

     vInfoDI := vInfoDI
              + '<B>DI</B>: '+ vDI +' -> CONSUMO<BR>'
              + '<B>Data Registro</B>: '+ Copy(qrADRdt_regc.AsString,1,2) +'/'+ Copy(qrADRdt_regc.AsString,3,2) +'/'+ Copy(qrADRdt_regc.AsString,5,4) +'<BR>'
              + StringOfChar('_', 80) +'<BR>';

     if (qrItens.RecordCount = 0) or ((vDI <> '') and
        ((qrADRbancoc.AsString = '') or (qrADRagenciac.AsString = '') or
        (qrADRconta_correntec.AsString = '') or (qrADRtaxa_siscomexc.AsFloat = 0) ) )
      then begin
        vSemValC := True;
        vErro :='Ao registrar a DI possíveis Informações foram omitidas, por favor verifique o seguinte:'+chr(13)+
                'Se os itens da fatura estão cadastrados corretamente; '+chr(13)+
                'Se há tributação dos itens da fatura atribuídas corretamente; '+chr(13)+
                'Se a Taxa Siscomex foi informada; ' +chr(13)+
                'Verifique o regime de tributação se está correto; '+chr(13)+
                'Talvez, informações do financeiro que estão ausentes tais como Banco, Agência ou Conta Corrente.' +chr(13)+chr(13)+

                'Verifique nos numerários se o ICMS está registrado, informado data de registro, valor registrado, e se está contabilizado.'+chr(13);
      end
      else begin
        vSemValC := False;
        vErro := '';
      end;

     acVerificaEnvios.Execute;

     if acFinaliza.Checked
      then Exit;
   end;
  { FINALIZOU DI DE CONSUMO }
end;

procedure TfrmADR.acGeraDIExecute(Sender: TObject);
begin
  { GERANDO ARQUIVO DA DI }
  with reArqDI.Lines do
   begin
     Clear;
     Append('MS2000 - SISTEMA GERENCIAL ADUANEIRO');
     Append(vNomeAPL + #9 + FormatDateTime('dd/mm/yyyy "às" hh:nn', Now()));
     Append('_______________________________________________________________________________________________');
     Append(' ');
     { CAPA }
     Append('Despachante                    : '+ #9 +'MS LOGÍSTICA ADUANEIRA LTDA.');
     Append('Filial                         : '+ #9 + vFilNome);
     Append(' ');
     Append('Cliente                        : '+ #9 + vImpNome);
     Append(' ');
     Append('Contrato                       : '+ #9 + qrADRqcontrato.AsString);
     Append('Local de Inventário            : '+ #9 + qrADRqlocal.AsString);
     Append(' ');
     Append('Referência MS                  : '+ #9 + vProc);
     Append('Tipo Processo                  : '+ #9 + qrADRqtipo.AsString);
     Append('Referência Cliente             : '+ #9 + qrADRref_empresa.AsString);

     if qrADRqtipodecl.AsString <> '12'
      then Append('DI - Declaração de Importação  : '+ #9 + vDI)
      else begin
        if not qrADRpag_proporcional.Asinteger = 1
         then Append('DI - Declaração de Importação  : '+ #9 + vDI +' -> ADMISSÃO TEMPORÁRIA ')
         else Append('DI - Declaração de Importação  : '+ #9 + vDI +' -> CONSUMO E ADMISSÃO TEMPORÁRIA ');
      end;

     Append('Tipo de Declaração             : '+ #9 + qrADRqdecl.AsString);
     Append('Data Registro                  : '+ #9 + Copy(qrADRdt_reg.AsString,1,2)+'/'+Copy(qrADRdt_reg.AsString,3,2)+'/'+Copy(qrADRdt_reg.AsString,5,4));

     vDataDI := Copy(qrADRdt_reg.AsString,1,2)+'/'+Copy(qrADRdt_reg.AsString,3,2)+'/'+Copy(qrADRdt_reg.AsString,5,4);

     qrConhecimento.Params[2].AsString := vProc;
     qrConhecimento.Open;

     if qrConhecimento.RecordCount > 0
      then begin
        { TRANSPORTES / CONHECIMENTO }
        Append('_______________________________________________________________________________________________');
        Append('TRANSPORTES / CONHECIMENTO');
        Append(' ');
        Append('Transporte                     : '+ #9 + qrConhecimentoqtransporte.AsString);
        Append('Transportador                  : '+ #9 + qrConhecimentoqtransportador.AsString);
        Append('Embarcação                     : '+ #9 + qrConhecimentoqembarcacao.AsString);
        Append('Local de Embarque              : '+ #9 + qrConhecimentoqlocal.AsString);
        Append('Data do Embarque               : '+ #9 + qrConhecimentoqdataembarque.AsString);
        Append('Conhecimento                   : '+ #9 + qrConhecimentoqconhecimento.AsString);
        Append('Tipo                           : '+ #9 + qrConhecimentoqtipo.AsString);
        Append('Master                         : '+ #9 + qrConhecimentoqmaster.AsString);
        Append('Utilização                     : '+ #9 + qrConhecimentoqutilizacao.AsString);
        Append('_______________________________________________________________________________________________');
        { CARGA }
        Append('CARGA');
        Append(' ');
        Append('País de Procedência            : '+ #9 + qrConhecimentoqpaisprocedencia.AsString);
        Append('URF de Entrada no País         : '+ #9 + qrConhecimentoqurfentrada.AsString);
        Append('Moeda Frete                    : '+ #9 + qrConhecimentoqmoedafrete.AsString);
        Append('Frete Prepaid                  : '+ #9 + FormataValor(qrConhecimentofrete_prepaid.AsFloat, 2));
        Append('Frete Collect                  : '+ #9 + FormataValor(qrConhecimentofrete_collect.AsFloat, 2));
        Append('Frete Territorio Nacional      : '+ #9 + FormataValor(qrConhecimentofrete_ter_nac.AsFloat, 2));
        Append('Moeda Seguro                   : '+ #9 + qrConhecimentoqmoedaseguro.AsString);
        Append('Seguro                         : '+ #9 + FormataValor(qrConhecimentovalor_seguro.AsFloat, 2));
        Append('Peso Líquido                   : '+ #9 + FormataValor(qrConhecimentopeso_liquido.AsFloat, 2));
        Append('Peso Bruto                     : '+ #9 + FormataValor(qrConhecimentopeso_bruto.AsFloat, 2));
        Append('_______________________________________________________________________________________________');
        { REGISTRO DE CHEGADA }
        Append('REGISTRO DE CHEGADA');
        Append(' ');
        Append('URF de Despacho                : '+ #9 + qrConhecimentoqurfdespacho.AsString);
        Append('Recinto Alfandegado            : '+ #9 + qrConhecimentoqrecinto.AsString);
        Append('Setor de Armazenamento         : '+ #9 + qrConhecimentoqsetor.AsString);
        Append('Data de Chegada URF de Entrada : '+ #9 + qrConhecimentoqdataurfchegada.AsString);
        Append('Documento de Entrada           : '+ #9 + qrConhecimentoqdocentrada.AsString);
        Append('Tipo Documento                 : '+ #9 + qrConhecimentoqtipodocentrada.AsString);
        Append('Presença de Carga              : '+ #9 + qrConhecimentoqpresencacarga.AsString);
        Append('Data de Chegada URF de Despacho: '+ #9 + qrConhecimentoqdatadespacho.AsString);
      end;

     qrConhecimento.Close;

     qrEmbalagem.Params[2].AsString := vProc;
     qrEmbalagem.Open;
     
     if qrEmbalagem.RecordCount > 0
      then begin
        { TIPOS DE EMBALAGENS }
        Append('_______________________________________________________________________________________________');
        Append('TIPOS DE EMBALAGENS');
        Append(' ');
        Append('Tipo de  Embalagem                      '+ #9 +'    Quantidade');

        while not qrEmbalagem.Eof do
         begin
           Append(Copy(qrEmbalagemDescricaoEmbalagem.AsString+StringOfChar(' ',40),1,40)
                + #9 + FormataValor(qrEmbalagemQuantidade.AsFloat, 2));

           qrEmbalagem.Next;
         end;
      end;

     qrEmbalagem.Close;

     qrTaxas.Params[2].AsString := vProc;
     qrTaxas.Open;

     if qrTaxas.RecordCount > 0
      then begin
        { TAXAS DE CÂMBIO }
        Append('_______________________________________________________________________________________________');
        Append('TAXAS DE CÂMBIO');
        Append(' ');

        if qrADRqtipodecl.AsString <> '12'
         then Append('Moeda                         '+ #9 +'          Taxa')
         else begin
           if not qrADRpag_proporcional.Asinteger = 1
            then Append('Moeda                         '+ #9 +'      Taxa ADM'+ #9 +'      Taxa CON')
            else Append('Moeda                         '+ #9 +'          Taxa');
         end;

        while not qrTaxas.Eof do
         begin
           linha := Copy(qrTaxasDescricao.AsString+StringOfChar(' ',30),1,30)
                    + #9 + FormataValor(qrTaxasTaxa_Conversao.AsFloat, 7);

           if (qrADRqtipodecl.AsString = '12') and (not qrADRpag_proporcional.Asinteger = 1)
            then linha := linha + #9 + FormataValor(qrTaxasTaxa_ConversaoC.AsFloat, 7);

           Append(Linha);

           if qrTaxasMoeda.AsString = '220'
            then vTaxaDolar := qrTaxastaxa_conversao.AsFloat;

           qrTaxas.Next;
         end;
      end;

     qrTaxas.Close;

     qrFaturas.Params[2].AsString := vProc;
     qrFaturas.Open;

     if qrFaturas.RecordCount > 0
      then begin
        { FATURAS }
        Append('_______________________________________________________________________________________________');
        Append('FATURAS');

        while not qrFaturas.Eof do
         begin
           Append(' ');
           Append(#9 +'______________________________________________________________________________________');
           Append(#9 +'Exportador                     : '+ #9 + Copy(qrFaturasq_exp.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Endereço                       : '+ #9 + Copy(qrFaturasq_end.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Complemento                    : '+ #9 + Copy(qrFaturasq_com.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Bairro                         : '+ #9 + Copy(qrFaturasq_bai.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Cidade                         : '+ #9 + Copy(qrFaturasq_cid.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Estado                         : '+ #9 + Copy(qrFaturasq_est.AsString+StringOfChar(' ',30),1,30));
           Append(' ');
           Append(#9 +'Faturas                       '+ #9 +'Incoterm Moeda                                   Valor');
           Append(' ');

           eDolar := False;
           vExpor := qrFaturasq_exp.AsString;

           while ((not qrFaturas.Eof) and (vExpor = qrFaturasq_exp.AsString)) do
            begin
              Append(#9 + Copy(qrFaturasq_fat.AsString+StringOfChar(' ',30),1,30)
                   + #9 + Copy(qrFaturasq_inc.AsString+StringOfChar(' ',8),1,8)+' '
                        + Copy(qrFaturasq_moe.AsString+StringOfChar(' ',30),1,30)+' '
                        + FormataValor(qrFaturasq_val.AsFloat, 2));

              if qrFaturasMoeda.AsString = '220'
               then eDolar := True;

              qrFaturas.Next;
            end;
         end;

        Append(#9 +'______________________________________________________________________________________');
      end;

     qrFaturas.Close;

     { IMPOSTOS }
     Append('_______________________________________________________________________________________________');
     Append('IMPOSTOS');
     Append(' ');

     vICMSok := True;

     if qrADRqtipodecl.AsString <> '12'
      then begin
        Append('II - Imposto de Importação     : '+ #9 + FormataValor(qrADRII.AsFloat, 2));
        Append('IPI - Imposto de Produtos Ind. : '+ #9 + FormataValor(qrADRIPI.AsFloat, 2));
        Append('Taxa Siscomex                  : '+ #9 + FormataValor(qrADRTAXA_SISCOMEX.AsFloat, 2));

        if vFil = 'RJO'
         then begin
           if qrADRqtipodecl.AsString = '01'
            then begin
              qrICMS.Params[2].AsString := vProc;
              qrICMS.Open;

              if qrICMS.RecordCount = 0
               then begin
                 vValICMS := 0;
                 vICMSok := False;
               end
               else begin
                 vValICMS := 0;

                 while not qrICMS.eof do
                  begin
                    vValICMS := vValICMS+qrICMSValor_Contabilizado.AsFloat;
                    qrICMS.Next
                  end;

                 vICMSok := True;
               end;

              qrICMS.Close;

              //SOMENTE SE EXIXTIR ICMS NAO EXONERADO NA TRIBUTAÇÃO
              Q_ICMS_TRATA.Params[0].AsString := vProc;
              Q_ICMS_TRATA.Open;

              if Q_ICMS_TRATA.RecordCount = 0
               then begin
                 vValICMS := 0;
                 vICMSok  := true;
               end;

              Append('ICMS                           : '+ #9 + FormataValor(vValICMS, 2));
            end;
         end;
      end
      else begin
        if not qrADRpag_proporcional.Asinteger = 1
         then Append('Admissão Temporária:')
         else Append('Consumo e Admissão Temporária:');

        Append('II - Imposto de Importação     : '+ #9 + FormataValor(qrADRII.AsFloat, 2));
        Append('IPI - Imposto de Produtos Ind. : '+ #9 + FormataValor(qrADRIPI.AsFloat, 2));
        Append('Taxa Siscomex                  : '+ #9 + FormataValor(qrADRTAXA_SISCOMEX.AsFloat, 2));
      end;

     Append(' ');

     { ITENS DO PROCESSO }
     if qrItens.RecordCount > 0
      then begin
        Append('_______________________________________________________________________________________________');

        if qrADRqtipodecl.AsString <> '12'
         then Append('ITENS DO PROCESSO')
         else begin
           if not qrADRpag_proporcional.Asinteger = 1
            then Append('ITENS DE ADMISSÃO TEMPORÁRIA DO PROCESSO')
            else Append('ITENS DE CONSUMO E ADMISSÃO TEMPORÁRIA DO PROCESSO');
         end;

        qrItens.First;

        while not qrItens.Eof do
         begin
           if qrADRqtipodecl.AsString = '12'
            then begin
              if not ((qrItensRegime_Tributacao_II.AsString = '5') Or (qrADRpag_proporcional.Asinteger = 1))
               then begin
                 qrItens.Next;
                 Continue;
               end;

              { SOMENTE SUSPENÇÃO }
              Append('_______________________________________________________________________________________________');
              Append('Adicao              : '+ #9 + Copy(qrItensadicao.AsString+StringOfChar(' ',6),1,6));
              Append('Regime Tributação   : '+ #9 + Copy(qrItensregime_tri.AsString+StringOfChar(' ',40),1,40));
              Append('NCM                 : '+ #9 + Copy(qrItensncm.AsString+StringOfChar(' ',8),1,8));
              Append('DESTAQUE            : '+ #9 + Copy(qrItensdestaque_ncm.AsString+StringOfChar(' ',8),1,8));
              Append('NALADI              : '+ #9 + Copy(qrItensnaladi.AsString+StringOfChar(' ',8),1,8));
              Append('Aliq. II            : '+ #9 + FormataValor(qrItensaliq_ncm_ii.AsFloat, 2));
              Append('Aliq. IPI           : '+ #9 + FormataValor(qrItensaliq_ncm_ipi.AsFloat, 2));
              Append(' ');
              vAdicao := qrItensadicao.AsString;

              while (not qrItens.Eof) and (vAdicao = qrItensadicao.AsString) do
               begin
                 Append(#9 +'_______________________________________________________________________________________');
                 Append(#9 +'Seq             : '+ #9 + qrItensseq_adicao.AsString);
                 Append(#9 +'Produto         : '+ #9 + qrItensproduto.AsString);
                 Append(#9 +'Descrição       : '+ #9 + Copy(qrItensqdescricao_produto.AsString,1,60));
                 Append(#9 +'                : '+ #9 + Copy(qrItensqdescricao_produto.AsString,61,60));
                 Append(#9 +'Quantidade      : '+ #9 + FormataValor(qrItensquantidade.AsFloat, 2));
                 Append(#9 +'Valor Unitário  : '+ #9 + FormataValor(qrItensvalunit.AsFloat, 2));
                 Append(#9 +'Valor Total     : '+ #9 + FormataValor(qrItensvaltot.AsFloat, 2));
                 Append(#9 +'Peso Unitário   : '+ #9 + FormataValor(qrItenspesounit.AsFloat, 2));
                 Append(#9 +'Peso Total      : '+ #9 + FormataValor(qrItenspesototal.AsFloat, 2));
                 Append(' ');
                 Append(#9#9#9#9 +'Valores Totais                '+ #9 +'Valores Unitários             ');
                 Append(#9#9#9#9 +'______________________________'+ #9 +'______________________________');
                 Append(#9#9#9#9 +'          (U$)'+ #9 +'          (R$)'+ #9 +'          (U$)'+ #9 +'          (R$)');

                 if eDolar
                  then begin
                    Append(#9#9 +'FOB            '
                                + #9 + FormataValor(qrItensfob2.AsFloat, 2)
                                + #9 + FormataValor(qrItensfob_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensfob2.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfob_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE PREPAID  '
                                + #9 + FormataValor(qrItensfreteprepaid.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteprepaid.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE COLLECT  '
                                + #9 + FormataValor(qrItensfretecollect.AsFloat, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensfretecollect.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE TER.NAC. '
                                + #9 + FormataValor(qrItensfreteternac.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteternac.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'SEGURO         '
                                + #9 + FormataValor(qrItensseguro.AsFloat, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensseguro.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'CIF            '
                                + #9 + FormataValor(qrItenscif.AsFloat, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat, 2)
                                + #9 + FormataValor(qrItenscif.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'II             '
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'IPI            '
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));
                  end
                  else begin //convertendo real para dolar
                    Append(#9#9 +'FOB            '
                                + #9 + FormataValor(qrItensfob_em_reais2.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfob_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfob_em_reais2.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfob_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE PREPAID  '
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE COLLECT  '
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE TER.NAC. '
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'SEGURO         '
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'CIF            '
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat, 2)
                                + #9 + FormataValor((qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'II             '
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'IPI            '
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));
                  end;

                 Append(#9 +'_______________________________________________________________________________________');

                 if qrItensato_concessorio.AsString <> ''
                  then vTemAto := True;

                 qrItens.Next;
               end;
            end
            else begin
              Append('_______________________________________________________________________________________________');
              Append('Adicao              : '+ #9 + Copy(qrItensadicao.AsString+StringOfChar(' ',6),1,6));
              Append('Regime Tributação   : '+ #9 + Copy(qrItensregime_tri.AsString+StringOfChar(' ',40),1,40));
              Append('NCM                 : '+ #9 + Copy(qrItensncm.AsString+StringOfChar(' ',8),1,8));
              Append('DESTAQUE            : '+ #9 + Copy(qrItensdestaque_ncm.AsString+StringOfChar(' ',8),1,8));
              Append('NALADI              : '+ #9 + Copy(qrItensnaladi.AsString+StringOfChar(' ',8),1,8));
              Append('Aliq. II            : '+ #9 + FormataValor(qrItensaliq_ncm_ii.AsFloat, 2));
              Append('Aliq. IPI           : '+ #9 + FormataValor(qrItensaliq_ncm_ipi.AsFloat, 2));
              Append(' ');

              vAdicao := qrItensadicao.AsString;
              while (not qrItens.Eof) and (vAdicao = qrItensadicao.AsString) do
               begin
                 Append(#9 +'_______________________________________________________________________________________');
                 Append(#9 +'Seq             : '+ #9 + qrItensseq_adicao.AsString);
                 Append(#9 +'Produto         : '+ #9 + qrItensproduto.AsString);
                 Append(#9 +'Descrição       : '+ #9 + Copy(qrItensqdescricao_produto.AsString,1,60));
                 Append(#9 +'                : '+ #9 + Copy(qrItensqdescricao_produto.AsString,61,60));
                 Append(#9 +'Quantidade      : '+ #9 + FormataValor(qrItensquantidade.AsFloat, 2));
                 Append(#9 +'Valor Unitário  : '+ #9 + FormataValor(qrItensvalunit.AsFloat, 2));
                 Append(#9 +'Valor Total     : '+ #9 + FormataValor(qrItensvaltot.AsFloat, 2));
                 Append(#9 +'Peso Unitário   : '+ #9 + FormataValor(qrItenspesounit.AsFloat, 2));
                 Append(#9 +'Peso Total      : '+ #9 + FormataValor(qrItenspesototal.AsFloat, 2));
                 Append(' ');
                 Append(#9#9#9#9 +'Valores Totais                '+ #9 +'Valores Unitários             ');
                 Append(#9#9#9#9 +'______________________________'+ #9 +'______________________________');
                 Append(#9#9#9#9 +'          (U$)'+ #9 +'          (R$)'+ #9 +'          (U$)'+ #9 +'          (R$)');

                 if eDolar
                  then begin
                    Append(#9#9 +'FOB            '
                                + #9 + FormataValor(qrItensfob2.AsFloat, 2)
                                + #9 + FormataValor(qrItensfob_em_reais2.AsFloat, 2)
                                + #9 + FormataValor(qrItensfob2.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfob_em_reais2.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE PREPAID  '
                                + #9 + FormataValor(qrItensfreteprepaid.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteprepaid.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE COLLECT  '
                                + #9 + FormataValor(qrItensfretecollect.AsFloat, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensfretecollect.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE TER.NAC. '
                                + #9 + FormataValor(qrItensfreteternac.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteternac.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'SEGURO         '
                                + #9 + FormataValor(qrItensseguro.AsFloat, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensseguro.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'CIF            '
                                + #9 + FormataValor(qrItenscif.AsFloat, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat, 2)
                                + #9 + FormataValor(qrItenscif.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'II             '
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'IPI            '
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));
                  end
                  else begin //convertendo real para dolar
                    Append(#9#9 +'FOB            '
                                + #9 + FormataValor(qrItensfob_em_reais2.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfob_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfob_em_reais2.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfob_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE PREPAID  '
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE COLLECT  '
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'FRETE TER.NAC. '
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'SEGURO         '
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'CIF            '
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat, 2)
                                + #9 + FormataValor((qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'II             '
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                    Append(#9#9 +'IPI            '
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat, 2)
                                + #9 + FormataValor((qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat)/vTaxaDolar, 2)
                                + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));
                  end;

                 Append(#9 +'_______________________________________________________________________________________');

                 if qrItensato_concessorio.AsString <> ''
                  then vTemAto := True;

                 qrItens.Next;
               end;
            end;
         end;
      end;

     { SALVANDO ARQUIVO }
     arqDir := dirServ +'planilhas\';
     if Not DirectoryExists(arqDir)
      then CreateDir(arqDir);
      
     arqNome := 'ADR_MS'+ Copy(vProc,1,5) +'_DI_'+ vDI +'.txt';
     vAnexo := arqDir+arqNome;
     vAnexo := StringReplace(vAnexo, '/', '0', [rfReplaceAll]);

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                           + 'Salvando arquivo: '+ vAnexo;
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     SaveToFile(vAnexo);
   end;
   { FIM DA GERAÇÃO DO ARQUIVO DA DI }
end;

procedure TfrmADR.acGeraDIConsumoExecute(Sender: TObject);
begin
  { GERANDO ARQUIVO DA DI DE CONSUMO }
  with reArqDI.Lines do
   begin
     Clear;
     Append('MS2000 - SISTEMA GERENCIAL ADUANEIRO');
     Append(vNomeAPL + #9 + FormatDateTime('dd/mm/yyyy "às" hh:nn', Now()));
     Append('_______________________________________________________________________________________________');
     Append(' ');
     { CAPA }
     Append('Despachante                    : '+ #9 +'MS LOGÍSTICA ADUANEIRA LTDA.');
     Append('Filial                         : '+ #9 + vFilNome);
     Append(' ');
     Append('Cliente                        : '+ #9 + vImpNome);
     Append(' ');
     Append('Contrato                       : '+ #9 + qrADRqcontrato.AsString);
     Append('Local de Inventário            : '+ #9 + qrADRqlocal.AsString);
     Append(' ');
     Append('Referência MS                  : '+ #9 + vProc);
     Append('Tipo Processo                  : '+ #9 + qrADRqtipo.AsString);
     Append('Referência Cliente             : '+ #9 + qrADRref_empresa.AsString);

     if qrADRqtipodecl.AsString <> '12'
      then Append('DI - Declaração de Importação  : '+ #9 + vDI)
      else Append('DI - Declaração de Importação  : '+ #9 + vDI +' -> CONSUMO');

     Append('Tipo de Declaração             : '+ #9 + qrADRqdecl.AsString);
     Append('Data Registro                  : '+ #9 + Copy(qrADRdt_regc.AsString,1,2)+'/'+Copy(qrADRdt_regc.AsString,3,2)+'/'+Copy(qrADRdt_regc.AsString,5,4));

     vDataDI := Copy(qrADRdt_regc.AsString,1,2)+'/'+Copy(qrADRdt_regc.AsString,3,2)+'/'+Copy(qrADRdt_regc.AsString,5,4);

     qrConhecimento.Params[2].AsString := vProc;
     qrConhecimento.Open;

     if qrConhecimento.RecordCount > 0
      then begin
        { TRANSPORTES / CONHECIMENTO }
        Append('_______________________________________________________________________________________________');
        Append('TRANSPORTES / CONHECIMENTO');
        Append(' ');
        Append('Transporte                     : '+ #9 + qrConhecimentoqtransporte.AsString);
        Append('Transportador                  : '+ #9 + qrConhecimentoqtransportador.AsString);
        Append('Embarcação                     : '+ #9 + qrConhecimentoqembarcacao.AsString);
        Append('Local de Embarque              : '+ #9 + qrConhecimentoqlocal.AsString);
        Append('Data do Embarque               : '+ #9 + qrConhecimentoqdataembarque.AsString);
        Append('Conhecimento                   : '+ #9 + qrConhecimentoqconhecimento.AsString);
        Append('Tipo                           : '+ #9 + qrConhecimentoqtipo.AsString);
        Append('Master                         : '+ #9 + qrConhecimentoqmaster.AsString);
        Append('Utilização                     : '+ #9 + qrConhecimentoqutilizacao.AsString);
        Append('_______________________________________________________________________________________________');
        { CARGA }
        Append('CARGA');
        Append(' ');
        Append('País de Procedência            : '+ #9 + qrConhecimentoqpaisprocedencia.AsString);
        Append('URF de Entrada no País         : '+ #9 + qrConhecimentoqurfentrada.AsString);
        Append('Moeda Frete                    : '+ #9 + qrConhecimentoqmoedafrete.AsString);
        Append('Frete Prepaid                  : '+ #9 + FormataValor(qrConhecimentofrete_prepaid.AsFloat, 2));
        Append('Frete Collect                  : '+ #9 + FormataValor(qrConhecimentofrete_collect.AsFloat, 2));
        Append('Frete Territorio Nacional      : '+ #9 + FormataValor(qrConhecimentofrete_ter_nac.AsFloat, 2));
        Append('Moeda Seguro                   : '+ #9 + qrConhecimentoqmoedaseguro.AsString);
        Append('Seguro                         : '+ #9 + FormataValor(qrConhecimentovalor_seguro.AsFloat, 2));
        Append('Peso Líquido                   : '+ #9 + FormataValor(qrConhecimentopeso_liquido.AsFloat, 2));
        Append('Peso Bruto                     : '+ #9 + FormataValor(qrConhecimentopeso_bruto.AsFloat, 2));
        Append('_______________________________________________________________________________________________');
        { REGISTRO DE CHEGADA }
        Append('REGISTRO DE CHEGADA');
        Append(' ');
        Append('URF de Despacho                : '+ #9 + qrConhecimentoqurfdespacho.AsString);
        Append('Recinto Alfandegado            : '+ #9 + qrConhecimentoqrecinto.AsString);
        Append('Setor de Armazenamento         : '+ #9 + qrConhecimentoqsetor.AsString);
        Append('Data de Chegada URF de Entrada : '+ #9 + qrConhecimentoqdataurfchegada.AsString);
        Append('Documento de Entrada           : '+ #9 + qrConhecimentoqdocentrada.AsString);
        Append('Tipo Documento                 : '+ #9 + qrConhecimentoqtipodocentrada.AsString);
        Append('Presença de Carga              : '+ #9 + qrConhecimentoqpresencacarga.AsString);
        Append('Data de Chegada URF de Despacho: '+ #9 + qrConhecimentoqdatadespacho.AsString);
      end;

     qrConhecimento.Close;

     { TIPOS DE EMBALAGENS }
     qrEmbalagem.Params[2].AsString := vProc;
     qrEmbalagem.Open;

     if qrEmbalagem.RecordCount > 0
      then begin
        Append('_______________________________________________________________________________________________');
        Append('TIPOS DE EMBALAGENS');
        Append(' ');
        Append('Tipo de  Embalagem                      '+ #9 +'    Quantidade');

        while not qrEmbalagem.Eof do
         begin
           Append(Copy(qrEmbalagemdescricaoembalagem.AsString+StringOfChar(' ',40),1,40)
                  + #9 + FormataValor(qrEmbalagemquantidade.AsFloat, 2));
           qrEmbalagem.Next;
         end;
      end;

     qrEmbalagem.Close;

     { TAXAS DE CÂMBIO }
     qrTaxas.Params[2].AsString := vProc;
     qrTaxas.Open;

     if qrTaxas.RecordCount > 0
      then begin
        Append('_______________________________________________________________________________________________');
        Append('TAXAS DE CÂMBIO');
        Append(' ');

        if qrADRqtipodecl.AsString <> '12'
         then Append('Moeda                         '+ #9 +'          Taxa')
         else Append('Moeda                         '+ #9 +'      Taxa ADM'+ #9 +'      Taxa CON');

        while not qrTaxas.Eof do
         begin
           Linha := Copy(qrTaxasdescricao.AsString+StringOfChar(' ',30),1,30)
                    + #9 + FormataValor(qrTaxastaxa_conversao.AsFloat, 7);

           if qrADRqtipodecl.AsString = '12'
            then Linha := Linha + #9 + FormataValor(qrTaxastaxa_conversaoc.AsFloat, 7);

           Append(Linha);

           if qrTaxasmoeda.AsString = '220'
            then vTaxaDolar := qrTaxastaxa_conversaoc.AsFloat;

           qrTaxas.Next;
         end;
      end;

     qrTaxas.Close;

     { FATURAS }
     qrFaturas.Params[2].AsString := vProc;
     qrFaturas.Open;

     if qrFaturas.RecordCount > 0
      then begin
        Append('_______________________________________________________________________________________________');
        Append('FATURAS');

        while not qrFaturas.Eof do
         begin
           Append(' ');
           Append(#9 +'______________________________________________________________________________________');
           Append(#9 +'Exportador                     : '+ #9 + Copy(qrFaturasq_exp.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Endereço                       : '+ #9 + Copy(qrFaturasq_end.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Complemento                    : '+ #9 + Copy(qrFaturasq_com.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Bairro                         : '+ #9 + Copy(qrFaturasq_bai.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Cidade                         : '+ #9 + Copy(qrFaturasq_cid.AsString+StringOfChar(' ',30),1,30));
           Append(#9 +'Estado                         : '+ #9 + Copy(qrFaturasq_est.AsString+StringOfChar(' ',30),1,30));
           Append(' ');
           Append(#9 +'Faturas                       '+ #9 +'Incoterm Moeda                                   Valor');
           Append(' ');

           eDolar := False;
           vExpor := qrFaturasq_exp.AsString;

           while (not qrFaturas.Eof) and (vExpor = qrFaturasq_exp.AsString) do
            begin
              Append(#9 + Copy(qrFaturasq_fat.AsString+StringOfChar(' ',30),1,30)
                        + #9 + Copy(qrFaturasq_inc.AsString+StringOfChar(' ',8),1,8)+' '
                        + Copy(qrFaturasq_moe.AsString+StringOfChar(' ',30),1,30)+' '
                        + FormataValor(qrFaturasq_val.AsFloat, 2));

              if qrFaturasMoeda.AsString = '220'
               then eDolar := True;

              qrFaturas.Next;
            end;
         end;

        Append(#9 +'______________________________________________________________________________________');
      end;

     qrFaturas.Close;

     { IMPOSTOS }
     Append('_______________________________________________________________________________________________');
     Append('IMPOSTOS');
     Append(' ');
     vICMSok := True;

     if qrADRqtipodecl.AsString <> '12'
      then begin
        Append('II - Imposto de Importação     : '+ #9 + FormataValor(qrADRII.AsFloat, 2));
        Append('IPI - Imposto de Produtos Ind. : '+ #9 + FormataValor(qrADRIPI.AsFloat, 2));
        Append('Taxa Siscomex                  : '+ #9 + FormataValor(qrADRTAXA_SISCOMEX.AsFloat, 2));
      end
      else begin
        Append('Consumo:');
        Append('II - Imposto de Importação     : '+ #9 + FormataValor(qrADRIIc.AsFloat, 2));
        Append('IPI - Imposto de Produtos Ind. : '+ #9 + FormataValor(qrADRIPIc.AsFloat, 2));
        Append('Taxa Siscomex                  : '+ #9 + FormataValor(qrADRTAXA_SISCOMEXc.AsFloat, 2));

        if vFil = 'RJO'
         then begin
           qrICMS.Params[2].AsString := vProc;
           qrICMS.Open;

           if qrICMS.RecordCount = 0
            then begin
              vValICMS := 0;
              vICMSok  := False;
            end
            else begin
              vValICMS := 0;

              while not qrICMS.eof do
               begin
                 vValICMS := vValICMS + qrICMSValor_Contabilizado.AsFloat;
                 qrICMS.Next
               end;

              vICMSok := True;
            end;

           qrICMS.Close;
           //SOMENTE SE EXIXTIR ICMS NAO EXONERADO NA TRIBUTAÇÃO
           Q_ICMS_TRATA.Params[0].AsString := vProc;
           Q_ICMS_TRATA.Open;

           if Q_ICMS_TRATA.RecordCount = 0
            then begin
              vValICMS := 0;
              vICMSok  := true;
            end;

           Append('ICMS                           : '+ #9 + FormataValor(vValICMS, 2));
           Append(' ');
         end;
      end;

     { ITENS DO PROCESSO }
     if qrItens.RecordCount > 0
      then begin
        Append('_______________________________________________________________________________________________');

        if qrADRqtipodecl.AsString <> '12'
         then Append('ITENS DO PROCESSO')
         else Append('ITENS DE CONSUMO DO PROCESSO');

        qrItens.First;

        while not qrItens.Eof do
         begin
           if qrADRqtipodecl.AsString = '12'
            then begin
              if qrItensRegime_Tributacao_II.AsString <> '1'
               then begin
                 qrItens.Next;
                 Continue;
               end;

              { somente suspencao }
              Append('_______________________________________________________________________________________________');
              Append('Adicao              : '+ #9 + Copy(qrItensadicao.AsString+StringOfChar(' ',6),1,6));
              Append('Regime Tributação   : '+ #9 + Copy(qrItensregime_tri.AsString+StringOfChar(' ',40),1,40));
              Append('NCM                 : '+ #9 + Copy(qrItensncm.AsString+StringOfChar(' ',8),1,8));
              Append('DESTAQUE            : '+ #9 + Copy(qrItensdestaque_ncm.AsString+StringOfChar(' ',8),1,8));
              Append('NALADI              : '+ #9 + Copy(qrItensnaladi.AsString+StringOfChar(' ',8),1,8));
              Append('Aliq. II            : '+ #9 + FormataValor(qrItensaliq_ncm_ii.AsFloat, 2));
              Append('Aliq. IPI           : '+ #9 + FormataValor(qrItensaliq_ncm_ipi.AsFloat, 2));
              Append(' ');

              vAdicao := qrItensadicao.AsString;

              while (not qrItens.Eof) and (vAdicao = qrItensadicao.AsString) do
               begin
                 Append(#9 +'_______________________________________________________________________________________');
                 Append(#9 +'Seq             : '+ #9 + qrItensseq_adicao.AsString);
                 Append(#9 +'Produto         : '+ #9 + qrItensproduto.AsString);
                 Append(#9 +'Descrição       : '+ #9 + Copy(qrItensqdescricao_produto.AsString,1,60));
                 Append(#9 +'                : '+ #9 + Copy(qrItensqdescricao_produto.AsString,61,60));
                 Append(#9 +'Quantidade      : '+ #9 + FormataValor(qrItensquantidade.AsFloat, 2));
                 Append(#9 +'Valor Unitário  : '+ #9 + FormataValor(qrItensvalunit.AsFloat, 2));
                 Append(#9 +'Valor Total     : '+ #9 + FormataValor(qrItensvaltot.AsFloat, 2));
                 Append(#9 +'Peso Unitário   : '+ #9 + FormataValor(qrItenspesounit.AsFloat, 2));
                 Append(#9 +'Peso Total      : '+ #9 + FormataValor(qrItenspesototal.AsFloat, 2));
                 Append(' ');

                 Append(#9#9#9#9 +'Valores Totais                '+ #9 +'Valores Unitários             ');
                 Append(#9#9#9#9 +'______________________________'+ #9 +'______________________________');
                 Append(#9#9#9#9 +'          (U$)'+ #9 +'          (R$)'+ #9 +'          (U$)'+ #9 +'          (R$)');

                 Append(#9#9 +'FOB            '
                             + #9 + FormataValor(qrItensfob2.AsFloat, 2)
                             + #9 + FormataValor(qrItensfob_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfob2.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfob_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'FRETE PREPAID  '
                             + #9 + FormataValor(qrItensfreteprepaid.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteprepaid.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'FRETE COLLECT  '
                             + #9 + FormataValor(qrItensfretecollect.AsFloat, 2)
                             + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfretecollect.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'FRETE TER.NAC. '
                             + #9 + FormataValor(qrItensfreteternac.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteternac.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'SEGURO         '
                             + #9 + FormataValor(qrItensseguro.AsFloat, 2)
                             + #9 + FormataValor(qrItensseguro_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensseguro.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'CIF            '
                             + #9 + FormataValor(qrItenscif.AsFloat, 2)
                             + #9 + FormataValor(qrItenscif_em_reas.AsFloat, 2)
                             + #9 + FormataValor(qrItenscif.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'II             '
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'IPI            '
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9 +'_______________________________________________________________________________________');

                 if qrItensato_concessorio.AsString <> ''
                  then vTemAto := True;

                 qrItens.Next;
               end;
            end
            else begin
              Append('_______________________________________________________________________________________________');
              Append('Adicao              : '+ #9 + Copy(qrItensadicao.AsString+StringOfChar(' ',6),1,6));
              Append('Regime Tributação   : '+ #9 + Copy(qrItensregime_tri.AsString+StringOfChar(' ',40),1,40));
              Append('NCM                 : '+ #9 + Copy(qrItensncm.AsString+StringOfChar(' ',8),1,8));
              Append('DESTAQUE            : '+ #9 + Copy(qrItensdestaque_ncm.AsString+StringOfChar(' ',8),1,8));
              Append('NALADI              : '+ #9 + Copy(qrItensnaladi.AsString+StringOfChar(' ',8),1,8));
              Append('Aliq. II            : '+ #9 + FormataValor(qrItensaliq_ncm_ii.AsFloat, 2));
              Append('Aliq. IPI           : '+ #9 + FormataValor(qrItensaliq_ncm_ipi.AsFloat, 2));
              Append(' ');

              vAdicao := qrItensadicao.AsString;

              while (Not qrItens.Eof) And (vAdicao = qrItensadicao.AsString) do
               begin
                 Append(#9 +'_______________________________________________________________________________________');
                 Append(#9 +'Seq             : '+ #9 + qrItensseq_adicao.AsString);
                 Append(#9 +'Produto         : '+ #9 + qrItensproduto.AsString);
                 Append(#9 +'Descrição       : '+ #9 + Copy(qrItensqdescricao_produto.AsString,1,60));
                 Append(#9 +'                : '+ #9 + Copy(qrItensqdescricao_produto.AsString,61,60));
                 Append(#9 +'Quantidade      : '+ #9 + FormataValor(qrItensquantidade.AsFloat, 2));
                 Append(#9 +'Valor Unitário  : '+ #9 + FormataValor(qrItensvalunit.AsFloat, 2));
                 Append(#9 +'Valor Total     : '+ #9 + FormataValor(qrItensvaltot.AsFloat, 2));
                 Append(#9 +'Peso Unitário   : '+ #9 + FormataValor(qrItenspesounit.AsFloat, 2));
                 Append(#9 +'Peso Total      : '+ #9 + FormataValor(qrItenspesototal.AsFloat, 2));
                 Append(' ');

                 Append(#9#9#9#9 +'Valores Totais                '+ #9 +'Valores Unitários             ');
                 Append(#9#9#9#9 +'______________________________'+ #9 +'______________________________');
                 Append(#9#9#9#9 +'          (U$)'+ #9 +'          (R$)'+ #9 +'          (U$)'+ #9 +'          (R$)');

                 Append(#9#9 +'FOB            '
                             + #9 + FormataValor(qrItensfob2.AsFloat, 2)
                             + #9 + FormataValor(qrItensfob_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfob2.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfob_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'FRETE PREPAID  '
                             + #9 + FormataValor(qrItensfreteprepaid.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteprepaid.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteprepaid_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'FRETE COLLECT  '
                             + #9 + FormataValor(qrItensfretecollect.AsFloat, 2)
                             + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfretecollect.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfretecollect_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'FRETE TER.NAC. '
                             + #9 + FormataValor(qrItensfreteternac.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteternac.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensfreteternac_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'SEGURO         '
                             + #9 + FormataValor(qrItensseguro.AsFloat, 2)
                             + #9 + FormataValor(qrItensseguro_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensseguro.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensseguro_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'CIF            '
                             + #9 + FormataValor(qrItenscif.AsFloat, 2)
                             + #9 + FormataValor(qrItenscif_em_reas.AsFloat, 2)
                             + #9 + FormataValor(qrItenscif.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItenscif_em_reas.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'II             '
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ii_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9#9 +'IPI            '
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher.AsFloat/qrItensquantidade.AsFloat, 2)
                             + #9 + FormataValor(qrItensvalor_ipi_a_recolher_em_reais.AsFloat/qrItensquantidade.AsFloat, 2));

                 Append(#9 +'_______________________________________________________________________________________');

                 if qrItensato_concessorio.AsString <> ''
                  then vTemAto := True;
                            
                 qrItens.Next;
               end;
            end;
         end;
      end;

     { SALVANDO ARQUIVO }
     arqDir := dirServ +'planilhas\';

     if not DirectoryExists(arqDir)
      then CreateDir(arqDir);

     arqNome := 'ADR_MS'+ Copy(vProc,1,5) +'_DI_'+ vDI +'.txt';
     vAnexo := arqDir+arqNome;
     vAnexo := StringReplace(vAnexo, '/', '0', [rfReplaceAll]);

     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + 'Salvando arquivo: '+ vAnexo;
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     SaveToFile(vAnexo);
   end;
   { FIM DA GERAÇÃO DO ARQUIVO DA DI DE CONSUMO }
end;

procedure TfrmADR.acVerificaEnviosExecute(Sender: TObject);
var
  vInfo : String;
begin
  if vTemAto
   then vICMSok := True;

  vCCO := '';

  vEnviaMsg := False;
  vHTML := 1;

  vBody := ' <BR>'
         + 'Prezado(a) Sr(a). '+ qrADRresp_ms.AsString +',<BR>'
         + '<BR>'
         + 'Por meio deste, informamos '+ vInfo +' <BR>'
         + 'para o processo da empresa '+ vImpNome +', <BR>'
         + 'oriundos dos processos que foram registrados pela <BR>'
         + 'MS LOGÍSTICA ADUANEIRA LTDA.<BR>'
         + '<BR><BR>'
         + 'Segue a informação do processo abaixo:<BR>'
         + '<BR><BR>'
         + vInfoDI
         + vErro
         + '<BR><BR>'
         + 'Segue em anexo a planilha com informações do processo.'
         + '<BR><BR>';

  if (qrADRCGC_CPF.AsString = '0809110200')
   then vBody := vBody + vMsgTrans + '<BR>'
   else vBody := vBody + vMsgComu  + '<BR><BR><BR>';

  vBody := vBody + 'Atenciosamente,'
                 + '<BR><BR>'
                 + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';
                 
  vPara := '';
  vCC   := '';

  if UsuarioAtivo(qrADRemail_resp_ms.AsString)
   then vPara := qrADRresp_ms.AsString +'<'+ qrADRemail_resp_ms.AsString +'>';

  if Trim(qrADREmailSupervisor.AsString) <> ''
   then if UsuarioAtivo(qrADREmailSupervisor.AsString)
         then if vPara = ''
               then vPara := qrADRNomeSupervisor.AsString +'<'+ qrADREmailSupervisor.AsString +'>'
               else vPara := vPara + '; ' + qrADRNomeSupervisor.AsString +'<'+ qrADREmailSupervisor.AsString +'>';

  vSetor := 2; { FINANCEIRO}
  acEnviarCC.Execute;

  { ENVIANDO E-MAIL PARA O RESPONSÁVEL DA EMPRESA E PARA O SETOR OPERACIONAL }
  if vSemVal or vSemValC
   then begin
     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
           + 'ERRO! Enviando Erro no Processo: '+ vProc +'; Responsável: '+ qrADRresp_ms.AsString;
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     vInfo := 'os erros nas informações de registro da DI';

     vAssunto := 'ADR - ERRO NO PROCESSO: '+ vProc;

     { ENVIAR E-MAIL }
     acEnviaEmail.Execute;

     if acFinaliza.Checked
      then Exit;
   end
   else begin
     { ENVIANDO PARA O RESPONSÁVEL DA EMPRESA A CONFIRMAÇÃO DO REGISTRO DA DI }
     if vICMSok
      then begin
        vEnviaMsg := True;

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'Enviando confirmação do registro da DI do Processo: '+ vProc +'; Responsável: '+ qrADRresp_ms.AsString;
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        vInfo := 'as informações de registro da DI';

        vAssunto := 'ADR - DI REGISTRADA; PROCESSO: '+ vProc;

        { ENVIAR E-MAIL }
        acEnviaEmail.Execute;

        if acFinaliza.Checked
         then Exit;
      end
      else begin
        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'ERRO! Não houve envios.';
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);
      end;
   end;

  { GRAVANDO ENVIO DE ADR }
  if vICMSok and ((not vSemVal) and (not vSemValc))
   then if tbProRegImp.FindKey([vEmp,vFil,vProc])
         then begin
           tbProRegImp.Edit;

           if not vSemVal
            then tbProRegImpEnviou_ADR.Asinteger := 1;

           if not vSemValC
            then tbProRegImpEnviou_ADR_c.Asinteger := 1;

           tbProRegImp.Post;
         end;

  vCC := '';
  
  if vEnviaMsg
   then begin
     if qrEmailAviso.RecordCount <> 0
      then begin
        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'Enviando e-mails para contatos das empresas...';
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        if qrEmailAviso_Plataforma.RecordCount > 0
         then begin
           qrEmailAviso_Plataforma.First;

           while not qrEmailAviso_Plataforma.Eof do
            begin
              { ENVIANDO INFORMAÇÕES DA DI PARA OS CONTATOS DA EMPRESA }
              Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                    + 'CONTATO: '+ qrEmailAviso_PlataformaNome_completo.AsString;
              Writeln(arqLog, Linha);  Flush(arqLog);
              reProcessa.Lines.Append(Linha);

              vBody := '<BR>'
                     + 'Prezado(a) Sr(a). '+ qrEmailAviso_PlataformaNome_completo.AsString +','
                     + '<BR> <BR>'
                     + 'Segue relatório de DI''s registradas no SISCOMEX:<BR>'
                     + 'Cliente: <BR>'
                     + vImpNome +', <BR>'
                     + 'Despachante: <BR>'
                     + 'MS LOGÍSTICA ADUANEIRA LTDA.<BR>'
                     + StringOfChar('_',80) +'<BR>'
                     + vInfoDI
                     + vErro
                     + '<BR> <BR>'
                     + 'Segue em anexo a planilha com informações do processo.'
                     + '<BR> <BR>'
                     + 'Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>'
                     + 'e/ou esclarecimento, favor entrar em contato com o responsável pelo processo.'
                     + '<BR> <BR> <BR>'
                     + 'Atenciosamente,'
                     + '<BR> <BR>'
                     + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

              vHTML := qrEmailAviso_PlataformaHTML.Asinteger;

              if not vHTML = 1
               then begin
                 vBody := StringReplace(vBody, '<BR><BR>', '<BR>', [rfReplaceAll]);
                 vBody := StringReplace(vBody, '</B>', #9, [rfReplaceAll]);
               end;

              vAssunto := 'ADR - DI: '+ vDI +' Registrada em '+ vDataDI;

              vPara := '';
              vCC   := '';

              vPara := qrEmailAviso_PlataformaNome_completo.AsString +'<'+ qrEmailAviso_PlataformaEmail.AsString +'>';

              vSetor := 2; { FINANCEIRO}
              acEnviarCC.Execute;

              { ENVIAR E-MAIL }
              acEnviaEmail.Execute;

              if acFinaliza.Checked
               then Exit;

              qrEmailAviso_Plataforma.Next;
            end;
         end
         else begin
           qrEmailAviso.First;

           while not qrEmailAviso.Eof do
            begin
              { ENVIANDO INFORMAÇÕES DA DI PARA OS CONTATOS DA EMPRESA }
              Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                     + 'CONTATO: '+ qrEmailAvisoNome_completo.AsString;
              Writeln(arqLog, Linha);  Flush(arqLog);
              reProcessa.Lines.Append(Linha);

              vBody := '<BR>'
                     + 'Prezado(a) Sr(a). '+ qrEmailAvisoNome_completo.AsString +','
                     + '<BR> <BR>'
                     + 'Segue relatório de DI''s registradas no SISCOMEX:<BR>'
                     + 'Cliente: <BR>'
                     + vImpNome +', <BR>'
                     + 'Despachante: <BR>'
                     + 'MS LOGÍSTICA ADUANEIRA LTDA.<BR>'
                     + StringOfChar('_',80) +'<BR>'
                     + vInfoDI
                     + vErro
                     + '<BR> <BR>'
                     + 'Segue em anexo a planilha com informações do processo.'
                     + '<BR> <BR>'
                     + 'Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>'
                     + 'e/ou esclarecimento, favor entrar em contato com o responsável pelo processo.'
                     + '<BR> <BR> <BR>'
                     + 'Atenciosamente,'
                     + '<BR> <BR>'
                     + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

              vHTML := qrEmailAvisoHTML.Asinteger;

              if not vHTML = 1
               then begin
                 vBody := StringReplace(vBody, '<BR><BR>', '<BR>', [rfReplaceAll]);
                 vBody := StringReplace(vBody, '</B>', #9, [rfReplaceAll]);
               end;

              vAssunto := 'ADR - DI: '+ vDI +' Registrada em '+ vDataDI;

              vPara := '';
              vCC   := '';

              vPara := qrEmailAvisoNome_completo.AsString +'<'+ qrEmailAvisoEmail.AsString +'>';

              vSetor := 2; { FINANCEIRO}
              acEnviarCC.Execute;

              { ENVIAR E-MAIL }
              acEnviaEmail.Execute;

              if acFinaliza.Checked
               then Exit;

              qrEmailAviso.Next;
            end;
         end;
      end
      else begin
        { ENVIANDO AVISO PARA O SETOR OPERACIONAL CASO NÃO TENHA CONTATO DA EMPRESA }
        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'Não foram encontrados contatos da empresa.';
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
               + 'Enviando e-mail de aviso para o setor Operacional...';
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        vBody := ' <BR>'
               + 'Prezados(as) Srs(as).,'
               + '<BR><BR>'
               + 'Segue relatório de DI''s registradas no SISCOMEX:<BR>'
               + 'Cliente: <BR>'
               + vImpNome +', <BR>'
               + 'Despachante: <BR>'
               + 'MS LOGÍSTICA ADUANEIRA LTDA.<BR>'
               + StringOfChar('_',80) +'<BR>'
               + vInfoDI
               + vErro
               + '<BR><BR>'
               + 'Segue em anexo a planilha com informações do processo.'
               + '<BR><BR>'
               + 'Informamos que não existem contatos cadastrados para este cliente para o recebimento <BR>'
               + 'deste aviso, portanto este relatório será enviado apenas, para os supervisores operacionais.'
               + '<BR><BR>'
               + 'Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>'
               + 'e/ou esclarecimento, favor entrar em contato.'
               + '<BR><BR><BR>'
               + 'Atenciosamente,'
               + '<BR><BR>'
               + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

        vAssunto := 'ADR - DI: '+ vDI +' Registrada em '+ vDataDI;
        vHTML := 1;

        { ENVIAR E-MAIL }
        acEnviaEmail.Execute;

        if acFinaliza.Checked
         then Exit;
      end;
   end;

  vCCO := '';

  if not vICMSok
   then begin
     { ENVIANDO AVISO PARA O SETOR OPERACIONAL E FINANCEIRO }
     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + 'ERRO! Enviando aviso de Aguardando Contabilização ICMS';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     vBody := ' <BR>'
            + 'Prezados(as) Srs(as).,'
            + '<BR><BR>'
            + 'Por meio deste, informamos necessidade de contabilizar o ICMS <BR>'
            + 'para o processo da empresa '+ vImpNome +', <BR>'
            + 'oriundos dos processos que foram registrados pela <BR>'
            + 'MS LOGÍSTICA ADUANEIRA LTDA.<BR>'
            + '<BR><BR>'
            + 'Segue as informações do processo abaixo:'
            + '<BR><BR>'
            + vInfoDI
            + vErro
            + '<BR><BR>'
            + 'Segue em anexo a planilha com informações do processo.'
            + '<BR><BR>'
            + 'Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>'
            + 'e/ou esclarecimento, favor entrar em contato com o responsável pelo processo.'
            + '<BR><BR><BR>'
            + 'Atenciosamente,'
            + '<BR><BR>'
            + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

     vAssunto := 'ADR - Aguardando Contabilização ICMS - PROCESSO: '+ vProc;

     vPara := '';
     vCC   := '';

     if UsuarioAtivo(qrADRemail_resp_ms.AsString)
      then vPara := qrADRresp_ms.AsString +'<'+ qrADRemail_resp_ms.AsString +'>';

     if Trim(qrADREmailSupervisor.AsString) <> ''
      then if UsuarioAtivo(qrADREmailSupervisor.AsString)
            then if vPara = ''
                  then vPara := qrADRNomeSupervisor.AsString +'<'+ qrADREmailSupervisor.AsString +'>'
                  else vPara := vPara + '; ' + qrADRNomeSupervisor.AsString +'<'+ qrADREmailSupervisor.AsString +'>';

     vSetor := 2; { FINANCEIRO}
     acEnviarCC.Execute;

     vHTML := 1;

     { ENVIAR E-MAIL }
     acEnviaEmail.Execute;

     if acFinaliza.Checked
      then Exit;
   end;
end;

procedure TfrmADR.acEnviaEmailExecute(Sender: TObject);
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
    tbEmailAutoHora.AsDateTime   := Now();
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

procedure TfrmADR.acEnviarCCExecute(Sender: TObject);
begin
  case vSetor of
    { FINANCEIRO }
    2: begin
         qrUsuariosFinan.Open;

         while not qrUsuariosFinan.Eof do
          begin
            if vCC = ''
             then vCC := qrUsuariosFinanEmail.AsString + ';'
             else vCC := vCC + qrUsuariosFinanEmail.AsString + ';';

            qrUsuariosFinan.Next;
          end;

         qrUsuariosFinan.Close;
       end;
    else vCCo := ''; { NÃO ENVIAR COM CÓPIA OCULTA }
  end
end;

procedure TfrmADR.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
          + '>>> FINALIZANDO O PROCESSAMENTO DO ADR';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  acFinaliza.Checked := True;
  CloseFile(arqLog);
  Close;
end;

procedure TfrmADR.reProcessaChange(Sender: TObject);
begin
  pnlTop.Refresh;
  pnlLog.Refresh;
end;

procedure TfrmADR.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmADR.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;

  acInicializa.Execute;
end;

procedure TfrmADR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if acFinaliza.Checked
   then CanClose := True
   else begin
     CanClose := False;
     acFinaliza.Execute;
   end;
end;

function TfrmADR.UsuarioAtivo(Email: String): Boolean;
var
  QryAux : TQuery;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.Sql.Add(' SELECT USUARIO FROM Usuarios WHERE Ativo = 1 AND Email = :Email ');
    QryAux.ParamByName('Email').AsString := Email;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Result := True
     else Result := False;
  finally
    QryAux.Free;
  end;
end;

end.
