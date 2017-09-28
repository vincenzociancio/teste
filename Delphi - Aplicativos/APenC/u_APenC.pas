unit u_APenC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, FileCtrl,
  ActnList;

const
  vCodAPL = 'APENC';
  totST = 11;
  vOK = 1;
  vERRO = 2;
  c_EMAIL_MONITORACAO_PADRAO = 'duda.ms2000@mslogistica.com.br;odilma.queiroz@mslogistica.com.br;sule.ferreira@mslogistica.com.br';

type
  TfrmAPenC = class(TForm)
    DB_MSCOMEX: TDatabase;
    qrProcessos: TQuery;
    pnlTop: TPanel;
    pnlLog: TPanel;
    reProcessa: TRichEdit;
    alAPen: TActionList;
    acInicializa: TAction;
    acGeraEmail: TAction;
    acProcessa: TAction;
    acEnviaEmail: TAction;
    acFinaliza: TAction;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    qrUsuarios: TQuery;
    qrUsuariosEmail: TStringField;
    qrUsuariosnome_completo: TStringField;
    tbEmailAuto: TTable;
    qrFatura: TQuery;
    qrProcRegImp: TQuery;
    qrFollow: TQuery;
    qrItens: TQuery;
    qrTribut: TQuery;
    qrItensSequencial: TStringField;
    qrTributSequencial: TStringField;
    tmIniciar: TTimer;
    qrListaDoc: TQuery;
    qrListaDocProcesso: TStringField;
    qrListaDocSub_Tipo_Doc: TStringField;
    qrListaDocNumero_Doc: TStringField;
    qrListaDocData_inclusao: TDateTimeField;
    qrListaDocDescricao: TStringField;
    qrListaDocCodigo: TStringField;
    qrListaProc: TQuery;
    qrListaProcImportador: TStringField;
    qrListaProcCodPro: TStringField;
    qrListaProcCodFat: TStringField;
    qrListaProcNumerodoccarga: TStringField;
    qrListaProcNR_DECLARACAO_IMP: TStringField;
    qrListaProcNR_DECLARACAO_IMPC: TStringField;
    qrListaProcNumero_RCR: TStringField;
    qrListaProcNumero_TR: TStringField;
    qrListaProcTipo: TStringField;
    qrListaProcDESCRICAO: TStringField;
    qrListaProcResponsavel: TStringField;
    qrListaProcLocalPasta: TStringField;
    qrListaProcDT_DESEMBARACO: TDateTimeField;
    qrListaProcDT_DESEMBARACOC: TDateTimeField;
    qrListaProcData_Chegada_URF_Cheg: TDateTimeField;
    Q_UP: TQuery;
    q_nfs: TQuery;
    q_log_aplicativo: TQuery;
    q_log_aplicativo_adicionar: TQuery;
    q_log_aplicativo_atualizar_data: TQuery;
    q_log_aplicativo_atualizar_finalizar: TQuery;
    q_log_aplicativoAplicativo: TStringField;
    q_log_aplicativoChave: TStringField;
    q_log_aplicativoData_Processamento: TStringField;
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
    qrFaturaCodigo: TStringField;
    qrProcRegImpEmpresa: TStringField;
    qrProcRegImpFilial: TStringField;
    qrProcRegImpProcesso: TStringField;
    qrProcRegImpBanco: TStringField;
    qrProcRegImpAgencia: TStringField;
    qrProcRegImpConta_Corrente: TStringField;
    qrProcRegImpII: TFloatField;
    qrProcRegImpIPI: TFloatField;
    qrProcRegImpTaxa_SISCOMEX: TFloatField;
    qrProcRegImpBancoc: TStringField;
    qrProcRegImpAgenciac: TStringField;
    qrProcRegImpConta_Correntec: TStringField;
    qrProcRegImpIIc: TFloatField;
    qrProcRegImpIPIc: TFloatField;
    qrProcRegImpTaxa_SISCOMEXc: TFloatField;
    qrProcRegImpEnviou_adcc: TIntegerField;
    qrProcRegImpEnviou_adcc_c: TIntegerField;
    qrProcRegImpEnviou_adr: TIntegerField;
    qrProcRegImpEnviou_adr_c: TIntegerField;
    q_nfsNFiscal: TStringField;
    q_nfsProcesso: TStringField;
    q_nfsCancelada: TIntegerField;
    q_nfsData_emissao: TDateTimeField;
    q_tot_resumo_insert: TQuery;
    q_tot_resumo: TQuery;
    q_tot_resumo_delete: TQuery;
    q_tot_resumoTotOkGeral: TIntegerField;
    q_tot_resumoTotErroGeral: TIntegerField;
    q_tot_resumoTotProcGeral: TIntegerField;
    qrProcessosStatus: TStringField;
    qrProcessosFATURADO: TIntegerField;
    qrProcessosCodigo: TStringField;
    qrProcessosImportador: TStringField;
    qrProcessosCodigo_Cliente: TStringField;
    qrProcessosTipo_Declaracao: TStringField;
    qrProcessosTipo: TStringField;
    qrProcessosContrato: TStringField;
    qrProcessosLocal_Inventario: TStringField;
    qrProcessosNR_DECL_IMP_MICRO: TStringField;
    qrProcessosNR_DECL_IMP_PROT: TStringField;
    qrProcessosNR_DECLARACAO_IMP: TStringField;
    qrProcessosDT_PROCESSAMENTO: TStringField;
    qrProcessosDT_TRANSMISSAO: TStringField;
    qrProcessosDT_REGISTRO_DI: TStringField;
    qrProcessosDT_DESEMBARACO: TDateTimeField;
    qrProcessosDT_DISTRIBUICAO: TDateTimeField;
    qrProcessosCanal: TStringField;
    qrProcessosFiscal: TStringField;
    qrProcessosCOD_SIT: TStringField;
    qrProcessosCD_MOTIVO_TRANS: TStringField;
    qrProcessosIN_MOEDA_UNICA: TIntegerField;
    qrProcessosTX_INFO_COMPL: TStringField;
    qrProcessosCD_TIPO_PGTO_TRIB: TStringField;
    qrProcessosNumero_RCR: TStringField;
    qrProcessosData_Entrada_RCR: TDateTimeField;
    qrProcessosData_Aprovacao_RCR: TDateTimeField;
    qrProcessosFundamentacao_RCR: TStringField;
    qrProcessosProcurador: TStringField;
    qrProcessosNumero_TR: TStringField;
    qrProcessosData_Entrada_TR: TDateTimeField;
    qrProcessosData_vencimento_TR: TDateTimeField;
    qrProcessosData_Aprovacao_TR: TDateTimeField;
    qrProcessosData_Baixa_TR: TDateTimeField;
    qrProcessosData_CI: TDateTimeField;
    qrProcessosTipo_Garantia: TStringField;
    qrProcessosNome_banco_GAR: TStringField;
    qrProcessosAgencia_GAR: TStringField;
    qrProcessosData_deposito_GAR: TDateTimeField;
    qrProcessosNome_titulo_GAR: TStringField;
    qrProcessosnumeros_titulos_GAR: TStringField;
    qrProcessosNome_seguradora_GAR: TStringField;
    qrProcessosapolice_GAR: TStringField;
    qrProcessosnome_fiador_GAR: TStringField;
    qrProcessosCNPJ_fiador_GAR: TStringField;
    qrProcessosendereco_fiador_GAR: TStringField;
    qrProcessosQuantidade_LI: TFloatField;
    qrProcessosValor_FOB: TFloatField;
    qrProcessosValor_CIF: TFloatField;
    qrProcessosResponsavel_Importador: TStringField;
    qrProcessosSaldo_Faturamento: TFloatField;
    qrProcessosNR_DECL_IMP_MICROC: TStringField;
    qrProcessosNR_DECL_IMP_PROTC: TStringField;
    qrProcessosNR_DECLARACAO_IMPC: TStringField;
    qrProcessosDT_PROCESSAMENTOC: TStringField;
    qrProcessosDT_TRANSMISSAOC: TStringField;
    qrProcessosDT_REGISTRO_DIC: TStringField;
    qrProcessosDT_DESEMBARACOC: TDateTimeField;
    qrProcessosDT_DISTRIBUICAOC: TDateTimeField;
    qrProcessosCanalC: TStringField;
    qrProcessosFiscalC: TStringField;
    qrProcessosCOD_SITC: TStringField;
    qrProcessosData_CIC: TDateTimeField;
    qrProcessosValor_FOBC: TFloatField;
    qrProcessosValor_CIFC: TFloatField;
    qrProcessosident_meio1: TStringField;
    qrProcessosident_meio2: TStringField;
    qrProcessosCodevento: TStringField;
    qrProcessosCodobs: TStringField;
    qrProcessosObs_especifica: TStringField;
    qrProcessosData_ufollowup: TDateTimeField;
    qrProcessosHora_ufollowup: TStringField;
    qrProcessosData_liberacao: TDateTimeField;
    qrProcessosUrgente: TIntegerField;
    qrProcessosconsolidado: TIntegerField;
    qrProcessosPag_proporcional: TIntegerField;
    qrProcessosRazao_Social: TStringField;
    qrProcessosDescI: TStringField;
    qrProcessosDescII: TStringField;
    qrProcessosDescIII: TStringField;
    qrProcessosEmail: TStringField;
    qrProcessosConhecimentoProcesso: TStringField;
    qrProcessosVia: TStringField;
    qrProcessosEmbarcacao: TStringField;
    qrProcessosTransportador: TStringField;
    qrProcessosTipodoccarga: TStringField;
    qrProcessosNumerodoccarga: TStringField;
    qrProcessosNumeromaster: TStringField;
    qrProcessosUtilizacao: TStringField;
    qrProcessosTipomanifesto: TStringField;
    qrProcessosNumeromanifesto: TStringField;
    qrProcessosCodigo_Presenca_Carga: TStringField;
    qrProcessosLocal: TStringField;
    qrProcessosDataConhecimento: TDateTimeField;
    qrProcessosPeso_Bruto: TFloatField;
    qrProcessosPeso_Liquido: TFloatField;
    qrProcessosPais_Procedencia: TStringField;
    qrProcessosURF_chegada: TStringField;
    qrProcessosData_Chegada_URF_Cheg: TDateTimeField;
    qrProcessosURF_Despacho: TStringField;
    qrProcessosData_Chegada_URF_Desp: TDateTimeField;
    qrProcessosRecinto_Alfandegario: TStringField;
    qrProcessosSetor_Alfandegario: TStringField;
    qrProcessosFrete_Prepaid: TFloatField;
    qrProcessosFrete_Collect: TFloatField;
    qrProcessosFrete_Ter_Nac: TFloatField;
    qrProcessosMoeda_Frete: TStringField;
    qrProcessosValor_Seguro: TFloatField;
    qrProcessosMoeda_Seguro: TStringField;
    qrProcessosProcessoRegImp: TStringField;
    qrProcessosBanco: TStringField;
    qrProcessosAgencia: TStringField;
    qrProcessosConta_Corrente: TStringField;
    qrProcessosTaxa_SISCOMEX: TFloatField;
    qrProcessosBancoc: TStringField;
    qrProcessosAgenciac: TStringField;
    qrProcessosConta_Correntec: TStringField;
    qrProcessosTaxa_SISCOMEXc: TFloatField;
    qrProcessosResponsavel_EmpresaC: TStringField;
    qrProcessosResponsavel_Empresa: TStringField;
    qrProcessosUsuario: TStringField;
    qrProcessosSEM_NFS: TIntegerField;
    qrFollowData: TDateTimeField;
    qrFollowHora: TStringField;
    qrFollowCodevento: TStringField;
    qrFollowDescricao: TStringField;
    qrFollowDESC_OBS: TStringField;
    qrClientes: TQuery;
    qrClientesCodigo: TStringField;
    qrClientesRazao_Social: TStringField;
    qrClientesEMAIL_MONITORACAO: TStringField;
    qrEmailAuto: TQuery;
    qrProcessosCGC_CPF: TStringField;
    qrPorImp: TQuery;
    qrPorImpCodigo: TStringField;
    qrPorImpRazao_Social: TStringField;
    qrPorImpEMAIL_MONITORACAO: TStringField;
    qrUpdatePorImp: TQuery;
    qrCarga: TQuery;
    qrApenc_Pendencias: TQuery;
    qrUpApenc_Pendencias: TQuery;
    qrInsertApenc_Pendencias: TQuery;
    qrDeleteApenc_Pendencias: TQuery;
    qrProcessosData: TStringField;
    qrInsertLogApenc_Pendencias: TQuery;
    qrProcessosNumero_RAT: TStringField;
    qrListaProcNumero_RAT: TStringField;
    qrEmailAviso: TQuery;
    qrEmailAvisoEmpresa: TStringField;
    qrEmailAvisoFilial: TStringField;
    qrEmailAvisoImportador: TStringField;
    qrEmailAvisoTipo: TStringField;
    qrEmailAvisoEmail: TStringField;
    qrEmailAvisoNome_completo: TStringField;
    qrEmailAvisoParametros: TStringField;
    qrEmailAvisoHTML: TIntegerField;
    qrEmailAvisoPlataforma: TStringField;
    qrEmailAvisoPara: TBooleanField;
    qrEmailAvisoCc: TBooleanField;
    qrEmailAvisoCCo: TBooleanField;
    qrEmailAvisoAtivo: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInicializaExecute(Sender: TObject);
    procedure acGeraEmailExecute(Sender: TObject);
    function Log_Aplicativo(Aplicativo: string; Chave: String) : boolean;
    procedure Log_Aplicativo_finalizar(Aplicativo : String);
    procedure Log_Aplicativo_Atualizar_Data(Aplicativo : String; Chave: String);    
    procedure acProcessaExecute(Sender: TObject);
    procedure VerificaDoc(Sender: TObject; Documento : String);
    procedure acEnviaEmailExecute(Sender: TObject);
    procedure acFinalizaExecute(Sender: TObject);
    procedure reProcessaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmIniciarTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
    procedure ExcluindoLogPendencias;

    procedure AdicionaDestinatarios;
  public
    { Public declarations }
  end;

  vet = Array[1..totST, 1..2] Of Integer;
  vetSubTipo = Array[1..totST, 1..2] Of String;

var
  frmAPenC: TfrmAPenC;
  arqDir, arqNome, Linha, arqDirResumo, arqNomeResumo: String;
  arqDirEmail, arqNomeEmail : String;
  arqLog, arqResumo, arqEmail: TextFile;
  vFil, vEmp: String;
  vProc,vPro: String;
  vProcOk : BOOLEAN;
  vMsg: String;
  vCli, vCliR, vCliN: String;
  vStrResumo: String;
  totProc, totOk, totErro: Integer;
  totProcGeral, totOkGeral, totErroGeral: Integer;
  vperc,vpercTot,vpercgeral:real;
  vCliValido: Boolean; // CLIENTE VÁLIDO NO SISTEMA
  totStatusFin, totStatusOKFin, totstatusNaoOkFin : integer;

  vDe, vPara, vCC, vCCO : String;
  vAssunto: String;
  vTitulo: String;
  vBody: String;
  vHTML: boolean = True;
  vAnexo: String = '';

  vNum,vprocesso: String;
  vST: Integer;
  vContInicial: vet = ((0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0),(0,0));
  vCont: vet;

  vetST: vetSubTipo = (('FATURA','1'), ('CONHECIMENTO','2'), ('DI','3'), ('DI CONSUMO','3'),
                       ('DSI','16'), ('CI','5'), ('CI CONSUMO','5'), ('RAT','76'),
                       ('TR','11'), ('DI/DSI',''), ('DTA','13'));
 
implementation

{$R *.DFM}

{ TfrmAPenC }
procedure TfrmAPenC.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if acFinaliza.Checked
   then CanClose := True
   else begin
     CanClose := False;
     acFinaliza.Execute;
   end;
end;

procedure TfrmAPenC.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmAPenC.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;
  acInicializa.Execute;
end;

procedure TfrmAPenC.FormCreate(Sender: TObject);
begin
  try
    with DB_MSCOMEX do
     begin
       Params.Values['USER NAME'] := 'APENC';
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
  qrParametros.Close;

  ExcluindoLogPendencias;

  with qrFatura do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrItens do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  with qrTribut do
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

  q_nfs.Open;
end;

procedure TfrmAPenC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
  except
  end;

  frmAPenC := nil;
  Action := caFree;
end;

procedure TfrmAPenC.acInicializaExecute(Sender: TObject);
begin
  arqDir := ExtractFilePath(Application.ExeName)+'Log\';
  arqNome := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.txt';
  AssignFile(arqLog,arqDir+arqNome);

  if not DirectoryExists(arqDir)
   then CreateDir(arqDir);

  try
    if FileExists(arqDir+arqNome)
     then AppEnd(arqLog)
     else begin
       ReWrite(arqLog);
       Linha := '    DATA    |   HORA   | DESCRIÇÃO ';
       Writeln(arqLog, Linha);  Flush(arqLog);
       reProcessa.Lines.Append(Linha);
     end;
  except
    Showmessage('Erro ao criar e abrir arquivo de log, o sistema será fechado.');
    Abort;
  end;

  arqDirEmail := ExtractFilePath(Application.ExeName)+'Planilhas_Ms2000\APENC\';
  arqNomeEmail := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.html';
  AssignFile(arqEmail,arqDirEmail+arqNomeEmail);

  if not DirectoryExists(arqDirEmail)
   then CreateDir(arqDirEmail);

  try
    if FileExists(arqDirEmail+arqNomeEmail)
     then AppEnd(arqEmail)
     else begin
       ReWrite(arqEmail);
     end;

  except
    Showmessage('Erro ao criar o arquivo arqResumo, o sistema será fechado.');
    Abort;
  end;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + '>>> INICIANDO O PROCESSAMENTO DO APenC';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  arqDirResumo := ExtractFilePath(Application.ExeName);
  arqNomeResumo := 'Resumo.txt';
  AssignFile(arqResumo,arqDirResumo+arqNomeResumo);

  try
    if FileExists(arqDirResumo+arqNomeResumo)
     then begin
       AppEnd(arqResumo);
       q_tot_resumo.open;
       q_tot_resumo.Last;
       totOkGeral := q_tot_resumoTotOkGeral.AsInteger;
       totErroGeral := q_tot_resumoTotErroGeral.AsInteger;
       totProcGeral := q_tot_resumoTotProcGeral.AsInteger;
       q_tot_resumo.close;
     end
     else begin
       ReWrite(arqResumo);
     end;
  except
    showmessage('Erro ao criar o arquivo arqResumo, o sistema será fechado 2.');
    q_tot_resumo.close;
    Abort;
  end;

  { GERA EMAIL COM A RELAÇÃO DAS PENDÊNCIAS DOS PROCESSOS }
  acGeraEmail.Execute;

  if acFinaliza.Checked
   then Exit;

  { FINALIZA APLICAÇÃO }
  acFinaliza.Execute;
end;

procedure TfrmAPenC.acGeraEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + 'GERANDO RELAÇÃO DAS PENDÊNCIAS DOS PROCESSOS';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  vTitulo := Caption;

  vDe   := 'APENC<auditoria@logistic-ms.com.br>';
  vPara := '';

  qrProcessos.open;
  qrClientes.Open;
  qrPorImp.open;

  AdicionaDestinatarios;

  while not qrClientes.Eof do
   begin
     if Log_Aplicativo('APENC',qrClientesCodigo.AsString) = true
      then begin
        Application.ProcessMessages;

        if acFinaliza.Checked
         then Exit;

        vCont      := vContInicial;
        totProc    := 0;
        vPRO       := '';
        vCli       := qrClientesCodigo.AsString;
        vCliR      := qrClientesCodigo.AsString;
        vCliN      := qrClientesRazao_Social.AsString;
        vPara      := qrClientesEMAIL_MONITORACAO.AsString;
        vCliValido := True;

        vBody := '<TABLE ALIGN="CENTER" BORDER="1" WIDTH="100%">';

        acProcessa.Execute;

        if acFinaliza.Checked
         then Exit;

        vBody := vBody + '</TABLE>';

        vperc := 0;
        vpercTot := 0;

        { CONSTRUINDO RESUMO GERAL }
        if totProc <> 0
         then begin
           if totstatusNaoOkFin <> totErro
            then begin
              if totProc > totStatusFin
               then vperc := ((totok - totStatusOKFin) *100)/(totproc - totStatusFin)
               else vperc := totok *100/totproc;
            end
            else begin
              if totProc > totStatusFin
               then begin
                 if ((totStatusOKFin = 0) or (totStatusFin = 0))
                  then vperc := 0
                  else vperc := ( totStatusOKFin *100)/totStatusFin;
               end
               else vperc := totok *100/totproc;
            end;

           vpercTot   := totok *100/totproc;
           vpercgeral := vpercgeral+vpercTot;

           vStrResumo := '<TR>'
                       + '<TD><FONT SIZE="2">'+ vCli+ '-'+ vCliN +'</FONT></TD>'
                       + '<TD ALIGN="CENTER"><FONT COLOR="#0000DD">'+ IntToStr((totOk)) +'</FONT></TD>'
                       + '<TD ALIGN="CENTER"><FONT COLOR="#DD0000">'+ IntToStr((totErro)) +'</FONT></TD>'
                       + '<TD ALIGN="CENTER">'+ IntToStr(totProc) +'</TD>'
                       + '<TD ALIGN="CENTER">'+ floattostrf(vpercTot,fffixed,15,2) +'%</TD>'
                       + '</TR>';

           Inc(totOkGeral, totOk);
           Inc(totErroGeral, totErro);
           Inc(totProcGeral, totProc);
           Writeln(arqResumo, vStrResumo);
           Flush(arqResumo);
         end;

        Log_Aplicativo_Atualizar_Data('APENC',qrClientesCodigo.AsString);

        q_tot_resumo_insert.Params[0].AsInteger := totOkGeral;
        q_tot_resumo_insert.Params[1].AsInteger := totErroGeral;
        q_tot_resumo_insert.Params[2].AsInteger := totProcGeral;
        q_tot_resumo_insert.ExecSQL;

        qrClientes.Next;

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                              + 'Total de Processos OK: '+ IntToStr(totOk);

        reProcessa.Lines.Append(Linha);
        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                              + 'Total de Processos Desatualizados: '+ IntToStr(totErro);
        reProcessa.Lines.Append(Linha);

        if (totProc <> 0)
         then begin
           { ENVIA E-MAIL DA RELAÇÃO DAS PENDÊNCIA DOS PROCESSOS }
           if totstatusNaoOkFin <> totErro
            then vAssunto := 'APENC - '+ COPY(vCliN,1,15)+'... ('+vCli+')  , ATENÇÃO!!! '+floattostrf(vperc,fffixed,15,2)+'% - OK('+IntToStr(totOk - totStatusOKFin )+'), NÃO OK('+IntToStr(totErro - totstatusNaoOkFin)+')'+', em '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now())
            else vAssunto := 'APENC - '+ COPY(vCliN,1,15)+'... ('+vCli+')  , ATENÇÃO!!! '+floattostrf(vperc,fffixed,15,2)+'% - OK('+IntToStr(totStatusOKFin )+'), NÃO OK('+IntToStr(totstatusNaoOkFin)+')'+', em '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now());

           if toterro = 0
            then vAssunto := 'APENC - '+ COPY(vCliN,1,15)+'... ('+vCli+') 100% OK!!!, em '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now());

           Q_UP.Params[0].AsString  := vCli;
           Q_UP.Params[1].Asinteger := totok;
           Q_UP.Params[2].Asinteger := toterro;
           Q_UP.Params[3].Asinteger := totproc;
           Q_UP.Params[4].Asfloat   := vperc;
           Q_UP.ExecSQL;

           // Leonardo.alabarce
           // Data: 27/09/2011
           // Detalhe: Não enviar e-mail quando não tiver erros
           // Solicitado por: Odilma

           if (toterro <> 0)
            then acEnviaEmail.Execute;

           //---------------------------------
           if acFinaliza.Checked
            then Exit;
         end;
      end
      else qrClientes.Next;
   end; // Fim do while

  { RESUMO GERAL }
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + 'GERANDO RESUMO GERAL DAS PENDÊNCIAS DOS PROCESSOS';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  Reset(arqResumo);
  vStrResumo:= '';

  vPara := '';

  while not Eof(arqResumo) do
   begin
     Readln(arqResumo, Linha);
     vStrResumo:= vStrResumo + Linha;
   end;

  q_tot_resumo.Open;
  q_tot_resumo.Last;

  vAssunto := 'APenC - RESUMO GERAL - '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now());

  vBody := '<TABLE ALIGN="CENTER" BORDER="1" WIDTH="100%">'
         + '<TR>'
            + '<TD ALIGN="CENTER" WIDTH="40%"><FONT SIZE="2"><B>RESPONSÁVEIS</B></FONT></TD>'
            + '<TD ALIGN="CENTER" WIDTH="20%"><FONT SIZE="2"><B>PROCESSOS<BR>OK</B></FONT></TD>'
            + '<TD ALIGN="CENTER" WIDTH="20%"><FONT SIZE="2"><B>PROCESSOS<BR>DESATUALIZADOS</B></FONT></TD>'
            + '<TD ALIGN="CENTER" WIDTH="20%"><FONT SIZE="2"><B>TOTAL</B></FONT></TD>'
            + '<TD ALIGN="CENTER" WIDTH="20%"><FONT SIZE="2"><B>PERCENTUAL</B></FONT></TD>'
         + '</TR>'
         + vStrResumo
         + '<TR>'
            + '<TD ALIGN="RIGHT"><B>TOTAIS</B></TD>'
            + '<TD ALIGN="CENTER"><B>'+ IntToStr(q_tot_resumoTotOkGeral.Value) +'</B></TD>'
            + '<TD ALIGN="CENTER"><B>'+ IntToStr(q_tot_resumoTotErroGeral.Value) +'</B></TD>'
            + '<TD ALIGN="CENTER"><B>'+ IntToStr(q_tot_resumoTotProcGeral.Value) +'</B></TD>'
            + '<TD ALIGN="CENTER"><B>'+ FLOATToStrF((q_tot_resumoTotOkGeral.Value*100)/q_tot_resumoTotProcGeral.Value,FFFIXED,15,2) +'%</B></TD>'
         + '</TR>'
         + '</TABLE>';

  q_tot_resumo.close;

  { ENVIA E-MAIL DO RESUMO GERAL DAS PENDÊNCIAS }
  // Leonardo.alabarce
  // Data: 27/09/2011
  // Detalhe: Não enviar e-mail quando não tiver erros
  // Solicitado por: Odilma
  if (toterro <> 0)
   then acEnviaEmail.Execute;

  Log_Aplicativo_finalizar('APENC');

  try
    CloseFile(arqResumo);
  except
    showmessage('Erro ao tentar fechar o arquivo arqResumo, o mesmo já está fechado.');
    Abort;
  end;

  DeleteFile(arqDirResumo+arqNomeResumo);
end;

function TfrmAPenC.Log_Aplicativo(Aplicativo : String; Chave: String) : boolean;
var
  DataHoje : TDateTime;
begin
  DataHoje := Date;

  q_log_aplicativo.Params[0].AsString := Aplicativo;
  q_log_aplicativo.Params[1].AsString := Chave;
  q_log_aplicativo.open;

  if q_log_aplicativo.RecordCount > 0
   then begin
     if q_log_aplicativoData_Processamento.AsString <> ''
      then begin
        if q_log_aplicativoData_Processamento.AsDateTime <> DataHoje
         then Log_Aplicativo := true
         else Log_Aplicativo := false;
      end
      else Log_Aplicativo := true;
   end
   else begin
     q_log_aplicativo_adicionar.Params[0].AsString := Aplicativo;
     q_log_aplicativo_adicionar.Params[1].AsString := Chave;
     q_log_aplicativo_adicionar.ExecSQL;
     Log_Aplicativo := true;
   end;

  q_log_aplicativo.close;
end;

procedure TfrmAPenC.Log_Aplicativo_Atualizar_Data(Aplicativo : String; Chave: String);
var
  DataHoje : TDateTime;
begin
  DataHoje := Date;
  
  q_log_aplicativo_atualizar_data.Params[0].AsString := DateToStr(DataHoje);
  q_log_aplicativo_atualizar_data.Params[1].AsString := Aplicativo;
  q_log_aplicativo_atualizar_data.Params[2].AsString := Chave;
  q_log_aplicativo_atualizar_data.ExecSQL;
end;

procedure TfrmAPenC.Log_Aplicativo_finalizar(Aplicativo : String);
begin
  q_log_aplicativo_atualizar_finalizar.Params[0].AsString := '';
  q_log_aplicativo_atualizar_finalizar.Params[1].AsString := Aplicativo;
  q_log_aplicativo_atualizar_finalizar.ExecSQL;
end;

procedure TfrmAPenC.VerificaDoc(Sender: TObject; Documento : String);
begin
  qrListaDoc.first;

  if not qrListaDoc.Locate('Numero_doc', vNum, [])
   then begin
     if vMsg = ''
      then vMsg := 'Documento '+ Documento +' não Cadastrado/Digitalizado no MSDoc'
      else vMsg := vMsg + ', Documento '+ Documento +' não Cadastrado/Digitalizado no MSDoc';

     vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
     vProcOk := False;
   end
   else begin
     with qrListaDoc do
      begin
        if vST = 10
         then begin // DI/DSI
           while not Eof do
            begin
              if qrListaDocSub_Tipo_Doc.AsString = vetST[5,2]
               then vST := 5; // DSI

              if qrListaDocSub_Tipo_Doc.AsString = vetST[3,2]
               then vST := 3; // DI

              if qrListaDocSub_Tipo_Doc.AsString = vetST[4,2]
               then vST := 4; // DI CONSUMO

              if (vST <> 10) and (vST <> 0)
               then begin
                 if qrListaDocData_inclusao.AsString <> ''
                  then Inc(vCont[vST,vOK])
                  else begin
                    vMsg := 'Documento '+ Documento +' não Digitalizado!';
                    Inc(vCont[vST,vERRO]);
                    vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
                    vProcOk := False;
                  end;

                 vST := 0;
               end;

              Next;
            end;

           if vST = 0
            then Exit
            else begin
              First;
              vMsg := 'Documento '+ Documento +' não Cadastrado/Digitalizado no MSDoc! Foi(ram) encontrado(s) o(s) Subtipo(s): <I>';

              while not Eof do
               begin
                 vMsg := vMsg + qrListaDocDescricao.AsString +', ';
                 vProcOk := False;
                 Next;
               end;

              vMsg := vMsg + '</I>com este número de documento. Verifique se o Subtipo do Documentos está trocado.';
              vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
              vProcOk := False;
            end;
         end
         else begin
           if Locate('Sub_Tipo_Doc', vetST[vST,2],[])
            then begin
              if qrListaDocData_inclusao.AsString <> ''
               then begin
                 Inc(vCont[vST,vOK]);
                 Exit;
               end
               else begin
                 vMsg := 'Documento '+ Documento +' não Digitalizado!';
                 vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
               end;
            end
            else begin
              First;
              vMsg := 'Documento '+ Documento +' não Cadastrado/Digitalizado no MSDoc! Foi(ram) encontrado(s) o(s) Subtipo(s): <I>';

              while not Eof do
               begin
                 if qrListaDocNumero_Doc.AsString = vNum
                  then begin
                    vMsg := vMsg + qrListaDocDescricao.AsString +', ';
                    vProcOk := False;
                  end;

                 Next;
               end;

              vMsg := vMsg + '</I>com este número de documento. Verifique se o Subtipo do Documentos está trocado.';
              vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
              vProcOk := False;
            end;
         end;
      end;
   end;

  Inc(vCont[vST,vERRO]);
end;

procedure TfrmAPenC.acEnviaEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + 'Gravando e-Mail automático...';

  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  vBody := StringReplace(vBody, '''', '''+ Chr(39) +''', [rfReplaceAll]);
  vBody := StringReplace(vBody, '`', '''+ Chr(96)  +''', [rfReplaceAll]);

  if (vPara + vCC + vCCO) = ''
   then begin
     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                           + '<*> ERRO! Não há e-Mail para envio.';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);
     Exit;
   end;

  try
    DB_MSCOMEX.StartTransaction;

    qrEmailAuto.close;
    qrEmailAuto.ParamByName('Programa').AsString := vCodAPL;
    qrEmailAuto.ParamByName('Assunto').AsString  := vAssunto;
    qrEmailAuto.ParamByName('Titulo').AsString   := vTitulo;
    qrEmailAuto.ParamByName('De').AsString       := vDe;
    qrEmailAuto.ParamByName('Para').AsString     := vPara;
    qrEmailAuto.ParamByName('Cc').AsString       := vCC;
    qrEmailAuto.ParamByName('Cco').AsString      := vCCO;
    qrEmailAuto.ParamByName('Body').AsMemo       := vBody;
    qrEmailAuto.ParamByName('Anexo').AsString    := vAnexo;

    if vHTML = true
     then qrEmailAuto.ParamByName('HTML').AsInteger := 1
     else qrEmailAuto.ParamByName('HTML').AsInteger := 0;

    qrEmailAuto.ParamByName('Data').AsDateTime := Date();
    qrEmailAuto.ParamByName('Hora').AsDateTime := Now();

    qrEmailAuto.Prepare;
    qrEmailAuto.ExecSQL;
    DB_MSCOMEX.Commit;

    Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
    Writeln(arqEmail, Linha);  Flush(arqEmail);
    Writeln(arqEmail, vBody);  Flush(arqEmail);
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

procedure TfrmAPenC.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + '>>> FINALIZANDO O PROCESSAMENTO DO APenC';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  acFinaliza.Checked := True;

  try
    CloseFile(arqLog);
  except
    showmessage('Erro ao tentar fechar o arquivo arqLog, o mesmo já está fechado.');
    Abort;
  end;

  Close;
end;

procedure TfrmAPenC.reProcessaChange(Sender: TObject);
begin
  pnlTop.Refresh;
  pnlLog.Refresh;
end;

procedure TfrmAPenC.acProcessaExecute(Sender: TObject);
var
  vTemFatura: Boolean;
  vFaltaFol: Boolean;
  vOBS: String;
  vResumo: String;
  vSemFol, vUltFol: String;
  vStatus, vStatusDesc: String;
  totStatus, totStatusOk, totStatusErro: Integer;
  vData, vDataMaior: String;
  v1, v2, v3, v4, v5, v6: String;
  i: Integer;
  entra: boolean;
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                 	+ 'ANALISANDO CLIENTE(S): '+ vCliN;

  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  totProc := 0; totOk := 0; totErro := 0;
  totStatus := 0; totStatusOk := 0; totStatusErro := 0;
  vResumo := '';
  qrProcessos.Close;
  qrProcessos.Params[0].AsString := vCli;
  qrProcessos.Open;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + 'Total de Processos: '+ IntToStr(qrProcessos.RecordCount);
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
	+ 'Verificando por Status...';
  reProcessa.Lines.Append(Linha);

  while not qrProcessos.Eof do
   begin
     Application.ProcessMessages;

     if acFinaliza.Checked
      then Exit;

     vProc := qrProcessosCodigo.AsString;

     if (copy(vproc,1,4) <> 'CRED')
      then begin
        vStatus     := qrProcessosStatus.AsString;
        vStatusDesc := qrProcessosDescIII.AsString;
        Linha       := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + '--> Processo: '+ vproc;

        Writeln(arqLog, Linha);
        Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        vProcOk    := True;
        vTemFatura := False;

        vPRO := '';
        vOBS := '';

       	vPRO := vPRO
	            + '<TR><TD><FONT SIZE="2">'
      	      + '<B>PROCESSO: </B>' + vProc;

        //Leonardo.Alabarce 29/02/2012 ticket 1922
        with qrCarga do
         begin
           Close;
           ParamByName('Processo').value := qrProcessosCodigo.AsString;
           Open;
         end;
        //fim----------------------------------------------------------------

        { VERIFICA CLIENTE }
      	if qrProcessosImportador.AsString <> ''
         then vPRO := vPRO +', '+ qrProcessosRazao_Social.AsString
         else begin
           vProcOk := False;
       	   vOBS := vOBS + 'Cliente não informado';
      	 end;

       	{ VERIFICA TIPO }
       	if qrProcessosTipo.AsString <> ''
         then vPRO := vPRO +', '+ qrProcessosDescI.AsString
      	 else begin
       	   vProcOk := False;

           if vOBS <> ''
            then vOBS := vOBS + ', ';

    	     vOBS := vOBS + 'Tipo de Processo não informado';
      	 end;

        { VERIFICA DATA DE ABERTURA }
      	if qrProcessosData.AsString = ''
         then begin
	         vProcOk := False;

      	   if vOBS <> ''
            then vOBS := vOBS + ', ';

      	   vOBS := vOBS + 'Informar a data de Abertura do Processo';
      	 end
      	 else begin
      	   { VERIFICAR SOMENTE SE TIVER DATA DE ABERTURA }
      	   { VERIFICA TIPO DE DECLARAÇÃO }
      	   if (qrProcessosTipo.AsString = '1')  or (qrProcessosTipo.AsString = '11') or
              (qrProcessosTipo.AsString = '12') or (qrProcessosTipo.AsString = '13') or
              (qrProcessosTipo.AsString = 'IT') or (qrProcessosTipo.AsString = 'TT') or
              (qrProcessosTipo.AsString = '6')  or (qrProcessosTipo.AsString = '19') or
              (qrProcessosTipo.AsString = 'IB') or (qrProcessosTipo.AsString = 'LI') or
             ((qrProcessosTipo.AsString = '17') and (qrProcessosData.AsDateTime >= StrToDateTime('13/11/2003')) )
            then begin
      	      if qrProcessosTipo_Declaracao.AsString <> ''
               then vPRO := vPRO +', '+ qrProcessosDescII.AsString
      	       else begin
            		 if vOBS <> ''
                  then vOBS := vOBS + ', ';

             		 vOBS := vOBS +'Tipo de Declaração não informado';
      	       end;
	          end
      	    else begin
	            if qrProcessosTipo_Declaracao.AsString <> ''
               then begin
            		 if vOBS <> ''
                  then vOBS := vOBS + ', ';

             		 vOBS := vOBS +'Tipo de Declaração não deve ser informado';
      	       end;
	          end;

           // Leonardo.alabarce 27/02/2012 ticket 1934
           if (qrProcessosTipo.AsString <> 'US') and (qrProcessosTipo.AsString <> '21') and
              (qrProcessosTipo.AsString <> 'MR') and (qrProcessosTipo.AsString <> 'CO')
            then begin
              if (qrProcessosTipo_Declaracao.AsString <> '01' )
               then begin
                 { VERIFICA CONTRATO }
                 if qrProcessosContrato.AsString = ''
                  then begin
                    vProcOk := False;

                    if vOBS <> ''
                     then vOBS := vOBS + ', ';

                    vOBS := vOBS + 'Informar o Contrato';
                  end;
               end;

              { VERIFICA LOCAL DE INVENTÁRIO }
              if qrProcessosLocal_Inventario.AsString = ''
               then begin
                 vProcOk := False;

                 if vOBS <> ''
                  then vOBS := vOBS + ', ';

                 vOBS := vOBS + 'Informar o Local de Inventário';
               end;
            end;
           //FIM-------------------------------------------------------------------

           { VERIFICA SITUAÇÃO FISCAL }
           if qrProcessosCOD_SIT.AsString = ''
            then begin
	            vProcOk := False;

              if vOBS <> ''
               then vOBS := vOBS + ', ';

              vOBS := vOBS + 'Informar a Situação Fiscal do Processo';
          	end;

           with qrFatura do
            begin
              Params[2].AsString := vProc;
              Open;
              vTemFatura := (RecordCount <> 0);
              Close;
            end;

           { VERIFICA REFERÊNCIA DO CLIENTE }
           if vTemFatura
            then if qrProcessosCodigo_Cliente.AsString = ''
                  then begin
	                  vProcOk := False;

                    if vOBS <> ''
                     then vOBS := vOBS + ', ';

                  	vOBS := vOBS + 'Informar a Referência do Cliente';
	                end;

           if vStatus >= '1'
            then begin
	            if (qrProcessosTipo.AsString = '1')  or (qrProcessosTipo.AsString = '11') or
                 (qrProcessosTipo.AsString = '12') or (qrProcessosTipo.AsString = '13')
               then begin
                 if qrProcessosTipo_Declaracao.AsString = '12'
                  then begin
	                  { ADMISSÃO }
                	  { VERIFICA DI DE ADMISSÃO }
                		if qrProcessosNR_DECLARACAO_IMP.AsString = ''
                     then begin
              		     vProcOk := False;

                	     if vOBS <> ''
                        then vOBS := vOBS + ', ';

	                     vOBS := vOBS + 'Informar o Número da DI de Admissão';
                		 end;

                    { VERIFICA DATA DE REGISTRO DA DI DE ADMISSÃO }
                	  if qrProcessosDT_REGISTRO_DI.AsString = ''
                     then begin
                       vProcOk := False;

                		   if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar a data de Registro da DI de Admissão';
               		   end;

                	  { VERIFICA DATA DE DESEMBARAÇO DE ADMISSÃO }
               		  if qrProcessosDT_DESEMBARACO.AsString = ''
                     then begin
                       vProcOk := False;

               		     if vOBS <> ''
                        then vOBS := vOBS + ', ';

               		     vOBS := vOBS + 'Informar a data de Desembaraço de Admissão';
               		   end;

		                { VERIFICA VALOR FOB DE ADMISSÃO }
                	  if qrProcessosValor_FOB.AsFloat = 0
                     then begin
                       vProcOk := False;

               		     if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar o Valor FOB de Admissão';
               		   end;

              		  { VERIFICA VALOR CIF DE ADMISSÃO }
              		  if qrProcessosValor_CIF.AsFloat = 0
                     then begin
                       vProcOk := False;

              		     if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar o Valor CIF de Admissão';
              		   end;

              		  { CONSUMO }
              	    if (not qrProcessosPag_Proporcional.AsInteger = 1) and
              	       (not qrProcessosConsolidado.AsInteger = 1)
                     then begin
             		       if (qrProcessosNR_DECLARACAO_IMPC.AsString <> '') or
            		          (qrProcessosDT_REGISTRO_DIC.AsString <> '')    or
              		        (qrProcessosDT_DESEMBARACOC.AsString <> '')    or
              		        (qrProcessosValor_FOBC.AsFloat > 0 )           or
              		        (qrProcessosValor_CIFC.AsFloat > 0 )
                        then begin
              		        { VERIFICA DI DE CONSUMO }
  		                    if qrProcessosNR_DECLARACAO_IMPC.AsString = ''
                           then begin

                      		 vProcOk := False;

                     	  	if vOBS <> ''
                           then vOBS := vOBS + ', ';

                     		  vOBS := vOBS + 'Informar o Número da DI de Consumo';
                   		  end;

                       { VERIFICA DATA DE REGISTRO DA DI DE CONSUMO }
                       if qrProcessosDT_REGISTRO_DIC.AsString = ''
                        then begin
                	  	    vProcOk := False;

                   	      if vOBS <> ''
                           then vOBS := vOBS + ', ';

                			    vOBS := vOBS + 'Informar a data de Registro da DI de Consumo';
                  		  end;

		                   { VERIFICA DATA DESEMBARAÇO DE CONSUMO }
      		             if qrProcessosDT_DESEMBARACOC.AsString = ''
                        then begin
              			      vProcOk := False;

                  		    if vOBS <> ''
                           then vOBS := vOBS + ', ';

                  		    vOBS := vOBS + 'Informar a data de Desembaraço de Consumo';
                  		  end;

          		         { VERIFICA VALOR FOB DE CONSUMO }
          		         if qrProcessosValor_FOBC.AsFloat = 0
                        then begin
                			    vProcOk := False;

                  		    if vOBS <> ''
                           then vOBS := vOBS + ', ';

                  		    vOBS := vOBS + 'Informar o Valor FOB de Consumo';
                  		  end;

  		                 { VERIFICA VALOR CIF DE CONSUMO }
               		     if qrProcessosValor_CIFC.AsFloat = 0
                        then begin
                    	  	vProcOk := False;

                     	 	  if vOBS <> ''
                           then vOBS := vOBS + ', ';

                 			    vOBS := vOBS + 'Informar o Valor CIF de Consumo';
                  		  end;
		                 end;
		              end;
	             end
	             else begin
	               { VERIFICA DI }
          		   if qrProcessosNR_DECLARACAO_IMP.AsString = ''
                  then begin
        		        vProcOk := False;

             		    if vOBS <> ''
                     then vOBS := vOBS + ', ';

          		      vOBS := vOBS + 'Informar o Número da DI';
          		    end;

		             { VERIFICA DATA DE REGISTRO DA DI }
		             if qrProcessosDT_REGISTRO_DI.AsString = ''
                  then begin
       		          vProcOk := False;

              		  if vOBS <> ''
                     then vOBS := vOBS + ', ';

		                vOBS := vOBS + 'Informar a data de Registro da DI';
		              end;

		             { VERIFICA DATA DE DESEMBARAÇO }
		             if qrProcessosDT_DESEMBARACO.AsString = ''
                  then begin
         		        vProcOk := False;

            		    if vOBS <> ''
                     then vOBS := vOBS + ', ';

                    vOBS := vOBS + 'Informar a data de Desembaraço';
        		      end;

		             { VERIFICA VALOR FOB }
		             if qrProcessosValor_FOB.AsFloat = 0
                  then begin
          		      vProcOk := False;

             		    if vOBS <> ''
                     then vOBS := vOBS + ', ';

          		      vOBS := vOBS + 'Informar o Valor FOB';
		              end;

                 { VERIFICA VALOR CIF }
                 if qrProcessosValor_CIF.AsFloat = 0
                  then begin
                    vProcOk := False;

                    if vOBS <> ''
                     then vOBS := vOBS + ', ';

                    vOBS := vOBS + 'Informar o Valor CIF';
                  end;
	             end;

	            if qrProcessosProcessoRegImp.AsString <> ''
               then begin
	               { VERIFICA REGISTROS DO SISCOMEX }
          		   if ((qrProcessosNR_Declaracao_Imp.AsString <> '') and
                    ((qrProcessosBanco.AsString              = '') or
            	       (qrProcessosAgencia.AsString            = '') or
          		       (qrProcessosConta_Corrente.AsString     = '') or
         		         (qrProcessosTaxa_Siscomex.AsFloat       = 0)))
                  then begin
		                if qrProcessosDT_Registro_DI.AsString <> ''
                     then begin
                       if (StrToDate(Copy(qrProcessosDT_Registro_DI.AsString,1,2)+'/'+Copy(qrProcessosDT_Registro_DI.AsString,3,2)+'/'+Copy(qrProcessosDT_Registro_DI.AsString,5,4)) >= StrToDate('25/10/2002'))
                        then begin
                          vProcOk := False;

                			    if vOBS <> ''
                           then vOBS := vOBS + ', ';

			                    vOBS := vOBS + 'Informar no Desembaraço os valores e/ou banco-agência-c.corrente registrados no Siscomex';
                        end;
		                 end;
		              end;

		             { VERIFICA REGISTROS NA DI DE CONSUMO DO SISCOMEX }
         		     if ((qrProcessosNR_Declaracao_ImpC.AsString <> '') and
                    ((qrProcessosBancoC.AsString          = '') or
                     (qrProcessosAgenciaC.AsString        = '') or
          		       (qrProcessosConta_CorrenteC.AsString = '') or
         		         (qrProcessosTaxa_SiscomexC.AsFloat   = 0 )))
                  then begin
         	          if qrProcessosDT_Registro_DIC.AsString <> ''
                     then begin
        	             if (StrToDate(Copy(qrProcessosDT_Registro_DIC.AsString,1,2)+'/'+Copy(qrProcessosDT_Registro_DIC.AsString,3,2)+'/'+Copy(qrProcessosDT_Registro_DIC.AsString,5,4)) >= StrToDate('25/10/2002'))
                        then begin
                		      vProcOk := False;

               			      if vOBS <> ''
                           then vOBS := vOBS + ', ';

              			      vOBS := vOBS + 'Informar no Desembaraço os valores e/ou banco-agência-c.corrente registrados na DI de consumo no Siscomex';
                		    end;
		                 end;
		              end;
	             end
	             else begin
	               { VERIFICA VALORES REGISTRADOS NO SISCOMEX }
         	       if (qrProcessosNR_Declaracao_Imp.AsString <> '')
                  then begin
        		        if qrProcessosDT_Registro_DI.AsString <> ''
                     then begin
        		           if (StrToDate(Copy(qrProcessosDT_Registro_DI.AsString,1,2)+'/'+Copy(qrProcessosDT_Registro_DI.AsString,3,2)+'/'+Copy(qrProcessosDT_Registro_DI.AsString,5,4)) >= StrToDate('25/10/2002'))
                        then begin
             			        vProcOk := False;

                		      if vOBS <> ''
                           then vOBS := vOBS + ', ';

                			    vOBS := vOBS + 'Informar no Desembaraço os valores registrados no Siscomex';
               			    end;
		                 end;
		              end;

		             { VERIFICA NA DI DE CONSUMO VALORES REGISTRADOS NO SISCOMEX }
		             if (qrProcessosNR_Declaracao_ImpC.AsString <> '')
                  then begin
        		        if qrProcessosDT_Registro_DIC.AsString <> ''
                     then begin
        		           if (StrToDate(Copy(qrProcessosDT_Registro_DIC.AsString,1,2)+'/'+Copy(qrProcessosDT_Registro_DIC.AsString,3,2)+'/'+Copy(qrProcessosDT_Registro_DIC.AsString,5,4)) >= StrToDate('25/10/2002'))
                        then begin
          			          vProcOk := False;

                			    if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar no Desembaraço os valores registrados na DI de consumo no Siscomex';
                		    end;
		                 end;
		              end;
	             end;

	            { VERIFICA CANAL }
	            if qrProcessosCanal.AsString = ''
               then begin
       		       vProcOk := False;

        		     if vOBS <> ''
                  then vOBS := vOBS + ', ';

         		     vOBS := vOBS + 'Informar o Canal';
        		   end;

	            { VERIFICA FISCAL }
	            if qrProcessosFiscal.AsString = ''
               then begin
      		       vProcOk := False;

        		     if vOBS <> ''
                  then vOBS := vOBS + ', ';

          		   vOBS := vOBS + 'Informar o Fiscal';
		           end;

	            if (qrProcessosTipo_Declaracao.AsString = '05') or
        		     (qrProcessosTipo_Declaracao.AsString = '12')
               then begin
                 // VERIFICA RAT
                 if (qrProcessosNumero_RAT.AsString = '') and (qrProcessosData.AsDateTime >= StrToDateTime('25/05/2013'))
                  then begin
	        	        vProcOk := False;

        		        if vOBS <> ''
                     then vOBS := vOBS + ', ';

		                vOBS := vOBS + 'Informar o número do RAT';
         		      end;

      		       {// VERIFICA RCR
          	     if qrProcessosNumero_RCR.AsString = ''
                  then begin
	        	        vProcOk := False;

        		        if vOBS <> ''
                     then vOBS := vOBS + ', ';

		                vOBS := vOBS + 'Informar o número do RCR';
         		      end;

        		     // VERIFICA DATA DE ENTRADA DO RCR
		             if qrProcessosData_Entrada_RCR.AsString = ''
                  then begin
		                vProcOk := False;

        		        if vOBS <> ''
                     then vOBS := vOBS + ', ';

		                vOBS := vOBS + 'Informar a data de entrada do RCR';
        		      end;

		             // VERIFICA DATA DE APROVAÇÃO DO RCR
		             if qrProcessosData_Aprovacao_RCR.AsString = ''
                  then begin
		                vProcOk := False;

        		        if vOBS <> ''
                     then vOBS := vOBS + ', ';

		                vOBS := vOBS + 'Informar a data de aprovação do RCR';
        		      end;

		             // VERIFICA FUNDAMENTAÇÃO DO RCR
		             if qrProcessosFundamentacao_RCR.AsString = ''
                  then begin
        		        vProcOk := False;

		                if vOBS <> ''
                     then vOBS := vOBS + ', ';

		                vOBS := vOBS + 'Informar a Fundamentação do RCR';
		              end;}

		             { VERIFICA PROCURADOR }
		             if qrProcessosProcurador.AsString = ''
                  then begin
        		        vProcOk := False;

		                if vOBS <> ''
                     then vOBS := vOBS + ', ';

        		        vOBS := vOBS + 'Informar o Procurador';
		              end;

		             { VERIFICA TR }
		             if qrProcessosNumero_TR.AsString = ''
                  then begin
		                vProcOk := False;

         		        if vOBS <> ''
                     then vOBS := vOBS + ', ';

		                vOBS := vOBS + 'Informar o número do TR';
		              end;
		           end;
             end;
	          end; { FIM DAS VERIFICAÇÕES COM STATUS >= 1 }

	         if vTemFatura
            then begin
	            { 1 = Importação; 11 = Importação - Aéreo; 12 = Importação - Marítimo; 13 = Importação - Rodoviário }
              if (qrProcessosTipo.AsString = '1')  or (qrProcessosTipo.AsString = '11') or
                 (qrProcessosTipo.AsString = '12') or (qrProcessosTipo.AsString = '13')
               then begin
	               { VERIFICA CONHECIMENTO }
          	     { ALTERADO A VERIFICAÇÃO DAS INFORMAÇÕES DO CONHECIMENTO APENCAS APÓS SER
                	 INFORMADO A DATA DE CHEGADA NA URF DE CHEGADA (ENTRADA)
          	       SOLICITADO POR ODILMA NO DIA 03/10/2006 }
          	     if qrProcessosData_Chegada_URF_Cheg.AsString <> ''
                  then begin
        	          { VERIFICA VIA DE TRANSPORTE }
                		if qrProcessosVia.AsString = ''
                     then begin
     		               vProcOk := False;

                		   if vOBS <> ''
                        then vOBS := vOBS + ', ';

                		   vOBS := vOBS + 'Informar a Via de Transporte';
                		 end;

               		  { VERIFICA EMBARCAÇÃO }
          	        { 9 = Meios Próprios; A = Entrada Fícta }
                    if (qrProcessosVia.AsString <> '9') and (qrProcessosVia.AsString <> 'A')
                     then begin
                       { VERIFICA TRANSPORTADOR }
                       if qrProcessosTransportador.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar o Transportador';
                        end;

                       { VERIFICA TIPO DE CARGA }
                       if qrProcessosTipoDocCarga.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar o Tipo de Carga';
                        end;

                       { VERIFICA DOCUMENTO DE CARGA }
                       if qrProcessosNumeroDocCarga.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar o número do Documento de Carga';
                        end;

                       { VERIFICA UTILIZAÇÃO DOCUMENTO DA CARGA }
                       if qrProcessosUtilizacao.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar a utilização Documento da Carga';
                        end;

                       { VERIFICA TIPO DE MANIFESTO }
                       if qrProcessosTipomanifesto.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar o Tipo de Manifesto';
                        end;

                       { VERIFICA MANIFESTO }
                       if qrProcessosNumeroManifesto.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar o número do Manifesto';
                        end;

                 		   if qrProcessosVia.AsString = '1'
                        then begin
                          if(qrProcessosTipo.AsString = '11') or (qrProcessosTipo.AsString = '12')
                           then begin
                             if qrCarga.RecordCount <> 0
                              then begin
                                { VERIFICA PRESENÇA DE CARGA }
                                if qrProcessosCodigo_Presenca_Carga.AsString = ''
                                 then begin
                                   if vOBS <> ''
                                    then vOBS := vOBS + ', ';

                                   vOBS := vOBS + 'Informar o código de Presença de Carga';
                                 end;
                              end;
                           end;
           	            end;
	                   end;

	                  { A = Entrada Fícta }
                    if qrProcessosVia.AsString <> 'A'
                     then begin
                       { VERIFICA LOCAL DE EMBARQUE }
          	           if qrProcessosLocal.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar o Local de Embarque';
                        end;

                       { VERIFICA DATA DE EMBARQUE }
                       if qrProcessosDataConhecimento.AsString = ''
                        then begin
                          if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar a Data de Embarque';
                        end;
                     end;

                    { VERIFICA PESO BRUTO DA CARGA }
                    if qrProcessosPeso_Bruto.AsFloat = 0
                     then begin
                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar o Peso Bruto da Carga';
                     end;

    	              { VERIFICA PESO LÍQUIDO DA CARGA }
         	          if qrProcessosPeso_Liquido.AsFloat = 0
                     then begin
                	     if vOBS <> ''
                        then vOBS := vOBS + ', ';

          	           vOBS := vOBS + 'Informar o Peso Líquido da Carga';
                     end;

	                  { VERIFICA PAIS DE PROCEDÊNCIA }
                    if qrProcessosPais_Procedencia.AsString = ''
                     then begin
                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar o País de Procedência';
        	           end;

         	          { VERIFICA URF DE CHEGADA }
                    if qrProcessosURF_Chegada.AsString = ''
                     then begin
          	           if vOBS <> ''
                        then vOBS := vOBS + ', ';

         	             vOBS := vOBS + 'Informar a URF de Chegada';
         	           end;

                    { VERIFICA DATA DE CHEGADA NA URF DE CHEGADA }
                    if qrProcessosData_Chegada_URF_Cheg.AsString = ''
                     then begin
                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar a Data de Chegada na URF de Chegada';
                     end;

                    { VERIFICA URF DE DESPACHO }
                    if qrProcessosURF_Despacho.AsString = ''
                     then begin
                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar a URF de Despacho';
                     end;

                    if (qrProcessosTipo.AsString = '11') or (qrProcessosTipo.AsString = '12')
                     then begin
                       if qrCarga.RecordCount <> 0
                        then begin
                          { VERIFICA DATA DE CHEGADA NA URF DE DESPACHO }
                          if qrProcessosData_Chegada_URF_Desp.AsString = ''
                           then begin
                             if vOBS <> ''
                              then vOBS := vOBS + ', ';

                             vOBS := vOBS + 'Informar a Data de Chegada na URF de Despacho';
                           end;
                        end;
                     end;

         	          { VERIFICA RECINTO ALFANDEGADO }
        	          if qrProcessosRecinto_Alfandegario.AsString = ''
                     then begin
                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

	                     vOBS := vOBS + 'Informar o Recinto Alfandegado';
	                   end;

                	  { VERIFICA SETOR ALFANDEGADO }
        	          if qrProcessosSetor_Alfandegario.AsString = ''
                     then begin
                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

         	             vOBS := vOBS + 'Informar o Setor Alfandegado';
	                   end;

                    if (qrProcessosFrete_Prepaid.AsFloat > 0) or
                       (qrProcessosFrete_Collect.AsFloat > 0) or
         	             (qrProcessosFrete_Ter_Nac.AsFloat > 0)
                     then begin
                       { VERIFICA MOEDA DO FRETE }
	                     if qrProcessosMoeda_Frete.AsString = ''
                        then begin
                          vProcOk := False;

         	                if vOBS <> ''
                           then vOBS := vOBS + ', ';

         	                vOBS := vOBS + 'Informar a Moeda do Frete';
        	              end;
                  	 end;

                  	if qrProcessosValor_Seguro.AsFloat > 0
                     then begin
                       { VERIFICA MOEDA DO SEGURO }
	                     if qrProcessosMoeda_Seguro.AsString = ''
                        then begin
                          vProcOk := False;

          	              if vOBS <> ''
                           then vOBS := vOBS + ', ';

                          vOBS := vOBS + 'Informar a Moeda do Seguro';
	                      end;
	                   end;
                  end;
               end;
            end; { FIM DAS VERIFICAÇÕES SE O PROCESSO TEM FATURA }

           if vStatus >= '1'
            then begin
              if (qrProcessosTipo.AsString = '1') or (qrProcessosTipo.AsString = '11') or
                 (qrProcessosTipo.AsString = '12') Or (qrProcessosTipo.AsString = '13')
               then begin
	               { VERIFICA FATURA }
            	   if not vTemFatura
                  then begin
          	        vProcOk := False;

            	      if vOBS <> ''
                     then vOBS := vOBS + ', ';

                    vOBS := vOBS + 'Verificar Faturas deste Processo';
             	    end
	                else begin
           	        { VERIFICA ITENS DE FATURA }
	                  qrItens.Params[2].AsString := vProc;
            	      qrItens.Open;

	                  if qrItens.RecordCount = 0
                     then begin
                 		   vProcOk := False;

                  		 if vOBS <> ''
                        then vOBS := vOBS + ', ';

                  		 vOBS := vOBS + 'Verificar Itens de Faturas deste Processo';
	                   end
	                   else begin
                  	   { VERIFICA TRIBUTAÇÃO DOS ITENS DE FATURA }
                       qrTribut.Params[2].AsString := vProc;
                       qrTribut.Open;

                   		 if qrTribut.RecordCount = 0
                        then begin
                  		    vProcOk := False;

                  		    if vOBS <> ''
                           then vOBS := vOBS + ', ';

		                      vOBS := vOBS + 'Verificar Tributação dos Itens de Faturas deste Processo';
		                    end;

		                   qrTribut.Close;
                     end;

	                  qrItens.Close;
	                end;
	             end;
            end;

           vFaltaFol := False;
           vUltFol := '';
           vSemFol := '';

           { VERIFICA FOLLOW UP DE PROCESSOS NÃO FINALIZADOS }
           entra := false;

           if qrprocessossem_nfs.asinteger = 0
            then begin
              if not q_NFS.Locate('Processo', qrprocessoscodigo.asstring, [])
               then entra := true;
            end;

           if ((vStatus < '3') or entra) and (qrprocessosFATURADO.asinteger <> 1)
            then begin
            	qrFollow.Params[0].AsString := vProc;
            	qrFollow.Open;

              if qrFollow.RecordCount = 0
               then begin
            	   vProcOk := False;

             	   if vOBS <> ''
                  then vOBS := vOBS + ', ';

             	   vOBS := vOBS + 'Processo NÃO POSSUI FOLLOW INFORMADO!';
	             end
	             else begin
	               vData := qrProcessosData.AsString;
            	   vDataMaior := DateToStr(Date());

                 { PEGA A MAIOR DATA DO DESEMBARAÇO, CASO TENHA DESEMBARAÇO }
                 if qrProcessosTipo_Declaracao.AsString = '12'
                  then begin
                    if (qrProcessosDT_DESEMBARACO.AsString <> '') or (qrProcessosDT_DESEMBARACOC.AsString <> '')
                     then begin
                       if qrProcessosDT_DESEMBARACO.AsString <> ''
                        then begin
                          vDataMaior := qrProcessosDT_DESEMBARACO.AsString;

                          if qrProcessosDT_DESEMBARACOC.AsString <> ''
                           then begin
                             if qrProcessosDT_DESEMBARACOC.AsDateTime > StrToDate(vDataMaior)
                              then vDataMaior := qrProcessosDT_DESEMBARACOC.AsString;
                           end;
		                    end
                        else begin
		                      if qrProcessosDT_DESEMBARACOC.AsString <> ''
                           then vDataMaior := qrProcessosDT_DESEMBARACOC.AsString;
                  		  end;
             	       end;
	                end
            	    else begin
	                  if qrProcessosDT_DESEMBARACO.AsString <> ''
                     then vDataMaior := qrProcessosDT_DESEMBARACO.AsString;
            	    end;

             	   if (qrProcessosData.AsDateTime >= StrToDateTime('01/01/2007')) and
                    (qrProcessosTipo_Declaracao.AsString <> '') and
                    (qrProcessosTipo.AsString <> '6')
                  then begin
                    if qrProcessosData_Liberacao.AsString <> ''
                     then vDataMaior := qrProcessosData_Liberacao.AsString
            	       else vDataMaior := DateToStr(Date());
            	    end;

            	   if qrprocessossem_nfs.asinteger = 0
                  then begin
	                  if not q_NFS.Locate('Processo', qrprocessoscodigo.asstring, [])
                     then vDataMaior := DateToStr(Date());
	                end;

               	 { VERIFICA FOLLOW DA DATA DE ABERTURA DO PROCESSO ATÉ O DESEMBARAÇO OU ATÉ A DATA ATUAL }
	               while StrToDate(vData) <= StrToDate(vDataMaior) do
                  begin
                    if not qrFollow.Locate('Data', StrToDate(vData), [])
                     then begin
                   		 vProcOk := False;

                  		 if vSemFol <> ''
                        then vSemFol := vSemFol + ', ';

                   		 vSemFol := vSemFol + vData;
                   		 vFaltaFol := True;
         	           end
	                   else begin
              		     while (not qrFollow.Eof) and (qrFollowData.AsString = vData) do
                        begin
              		        vUltFol := qrFollowData.AsString +' às '+ qrFollowHora.AsString +' - '+ qrFollowDescricao.AsString;

    		                  if (not qrFollowDesc_obs.IsNull) and (qrFollowDesc_obs.AsString<>'')
                           then vUltFol := vUltFol+' - '+qrFollowDesc_obs.AsString;

              		        qrFollow.Next;
		                    end;
	                   end;

	                  vData := DateToStr(StrToDateTime(vData)+1);
	                end;

	               if vFaltaFol
                  then begin
	                  if vOBS <> ''
                     then vOBS := vOBS + ', ';

	                  vOBS := vOBS + 'Não foram informados follow up na(s) data(s): '+ vSemFol;
             	    end;
	             end;

	            qrFollow.Close;
            end; { FIM DAS VERIFICAÇÕES COM STATUS <= 1 }
         end; { FIM DAS VERIFICAÇÕES COM DATA DE ABERTURA }

        { VERIFICA STATUS }
        if vStatus <> ''
         then vPRO := vPRO +'<BR><B>STATUS: </B>'+ vStatusDesc
         else vPRO := vPRO +'<BR><B>STATUS: </B>NÃO INFORMADO';

        if length(vobs) > 500
         then vPRO := vPRO + '<BR><B>OBSERVAÇÕES: </B>'+ copy(vOBS,1,500)+'...'
         else vPRO := vPRO + '<BR><B>OBSERVAÇÕES: </B>'+ vOBS;

        if vUltFol <> ''
         then vPRO := vPRO + '<BR><B>Último Follow informado até o desembaraço: </B>'+ vUltFol;

        vPRO := vPRO+ '<BR><B>Resp. Operacional: </B>'+ qrProcessosresponsavel_empresa.asstring;
        vPRO := vPRO+ '<BR><B>e-Mail da Localização da Pasta: </B>';

        if qrProcessosEmail.AsString <> ''
         then vPRO := vPRO + qrProcessosEmail.AsString
         else vPRO := vPRO + 'NÃO LOCALIZADO';

        if copy(qrprocessosdata.asstring,7,4)=copy(datetostr(date()),7,4)
         then begin
           vprocesso := qrprocessoscodigo.asstring;

           qrListaDoc.CLOSE;
           qrListaDoc.Params[0].AsString := vProcesso;
           qrListaDoc.Open;

           with qrListaProc do
          	begin
          	  close;
          	  Params[0].AsString := vprocesso;
          	  Open;

          	  while not Eof do
          	   begin
          	     Application.ProcessMessages;

                 vMsg := '';

          	     v1 := qrListaProcCodFat.AsString;
          	     v2 := qrListaProcNumerodoccarga.AsString;
          	     v3 := qrListaProcNR_DECLARACAO_IMP.AsString;
          	     v4 := qrListaProcNR_DECLARACAO_IMPC.AsString;
          	     //v5 := qrListaProcNumero_RCR.AsString;
          	     v5 := qrListaProcNumero_RAT.AsString;
          	     v6 := qrListaProcNumero_TR.AsString;

          	     if qrListaProcDT_DESEMBARACO.asstring = ''
                  then v3 := '';

                 if  qrListaProcDT_DESEMBARACOc.asstring=''
                  then v4 := '';

                 vST := 0;
          	     vST := 1;

          	     if qrListaProcdata_chegada_urf_cheg.AsString <> ''
                  then begin
                		if v1 <> ''
                     then begin // FATURA
		                   vNum := v1;

                		   VerificaDoc(frmApenC,'Fatura');
                		 end;

                		vST := 2;

                		if v2 <> ''
                     then begin // CONHECIMENTO
                		   vNum := v2;

                		   VerificaDoc(frmApenC,'Conhecimento');
                		 end;
          	      end;

          	     { PROCESSO DO TIPO: Importação DTA III or DTA Passagem Comum }
          	     if (qrListaProcTipo.AsString = '16') or (qrListaProcTipo.AsString = '25')
                  then begin
                		vST := 11;

	                  if v3 <> ''
                     then begin // DTA
		                   vNum := v3;

                		   VerificaDoc(frmApenC,'DTA');
                		 end;
          	      end
          	      else begin
                		{ PROCESSO DO TIPO: Prorrogação de TR or Baixa de TR }
                  	if (qrListaProcTipo.AsString = '8') or (qrListaProcTipo.AsString = 'BT')
                     then vST := 8
                		 else begin
                		   { PROCESSO DO TIPO: Importação DSI }
                		   if qrListaProcTipo.AsString = '17'
                        then begin
                		      vST := 5;

                		      if v3 <> ''
                           then begin // DSI
                      			 vNum := v3;

                      			 VerificaDoc(frmApenC,'DSI');
                		       end;
                		    end
                		    else begin
                		      { PROCESSO DO TIPO: Atendimento / Passageiro; Bagagem Acompanhada; Bagagem Desacompanhada / Destruição }
                  	      if (qrListaProcTipo.AsString = 'AP') or (qrListaProcTipo.AsString = 'BA') or
                      			 (qrListaProcTipo.AsString = 'BD') or (qrListaProcTipo.AsString = '5')
                           then begin
                      			 vST := 10;

                          	 if v3 <> ''
                              then begin // DI/DSI
                         		    vNum := v3;

                      			    VerificaDoc(frmApenC,'DI / DSI');
                        		  end;

                        		 { PROCESSO DO TIPO: Destruição }
                      			 if qrListaProcTipo.AsString = '5'
                              then begin
                        		    vST := 6;

                      			    if v3 <> ''
                                 then begin // CI
                      			       vNum := v3;

                      			       VerificaDoc(frmApenC,'CI');

                      			       vST := 7;

                      			       if v4 <> ''
                                    then begin // CI CONSUMO
                            				  vNum := v4;

                              			  VerificaDoc(frmApenC,'CI');
                              			end;
                      			     end;
                        		  end;
                		       end
                		       else begin
                		         { PROCESSO DO TIPO: Reexportação }
                      			 if qrListaProcTipo.AsString <> '22'
                              then begin
                      			    vST := 3;

                      			    if v3 <> ''
                                 then begin // DI
                                   vNum := v3;
                                   VerificaDoc(frmApenC,'DI');
                                   vST := 4;

              	                   if v4 <> ''
                                    then begin // DI CONSUMO
                            				  vNum := v4;

                            				  VerificaDoc(frmApenC,'DI');
                            				end;
                      			     end
                      			     else vST := 4;

                      			    vST := 6;

                      			    if v3 <> ''
                                 then begin // CI
                     		           vNum := v3;

                      			       VerificaDoc(frmApenC,'CI');

                          	       vST := 7;

			                             if v4 <> ''
                                    then begin // CI CONSUMO
                            				  vNum := v4;

                               			  VerificaDoc(frmApenC,'CI');
                            				end;
                      			     end
                      			     else vST := 7;
                      			  end;
                  		     end;
                		    end;

                  	   vST := 8;

                		   if v5 <> ''
                        then begin // RAT
                		      vNum := v5;

                          VerificaDoc(frmApenC,'RAT');
                		    end;

{                		   if v5 <> ''
                        then begin // RCR
                		      vNum := v5;

                          VerificaDoc(frmApenC,'RCR');
                		    end;}
          	         end;

	                  vST := 9;

	                  if v6 <> ''
                     then begin
              		     vNum := v6;

                       VerificaDoc(frmApenC,'TR');
                     end;
          	      end;

	               Next;
	             end; // WHILE

          	  Close;
            end;
         end;

        if vProcOk
         then begin
           vPRO := vPRO +'<BR><BR><CENTER><FONT COLOR="0000DD"><B>PROCESSO OK</B></FONT></CENTER></FONT></TD></TR>';
           Inc(totOk);
           Inc(totStatusOk);

           with qrApenc_Pendencias do
            begin
              close;
              ParamByName('Proc').asString := qrProcessosCodigo.AsString;
              Open;
            end;

           if qrApenc_Pendencias.RecordCount > 0
            then begin
              qrDeleteApenc_Pendencias.close;
              qrDeleteApenc_Pendencias.ParamByName('qProc').Value := qrProcessosCodigo.AsString;
              qrDeleteApenc_Pendencias.ExecSQL;
            end;

           qrInsertLogApenc_Pendencias.close;
           qrInsertLogApenc_Pendencias.ParamByName('Cod').Value   := qrProcessosCodigo.AsString;
           qrInsertLogApenc_Pendencias.ParamByName('Desc').AsMemo := 'PROCESSO SEM PENDÊNCIA';
           qrInsertLogApenc_Pendencias.ParamByName('Data').Value  := Date();
           qrInsertLogApenc_Pendencias.ExecSQL;
         end
         else begin
           vPRO := vPRO +'<BR><BR><CENTER><FONT COLOR="DD0000"><B>PROCESSO DESATUALIZADO</B></FONT></CENTER></FONT></TD></TR>';
           Inc(totErro);
           Inc(totStatusErro);

           with qrApenc_Pendencias do
            begin
              close;
              ParamByName('Proc').asString := qrProcessosCodigo.AsString;
              Open;
            end;

           if qrApenc_Pendencias.RecordCount > 0
            then begin
              qrUpApenc_Pendencias.close;
              qrUpApenc_Pendencias.ParamByName('Valor').Value  := 1;
              qrUpApenc_Pendencias.ParamByName('OBS').AsMemo   := vOBS + ' ' + vMsg;
              qrUpApenc_Pendencias.ParamByName('codigo').Value := qrProcessosCodigo.AsString;
              qrUpApenc_Pendencias.ExecSQL;
            end
            else begin
              qrInsertApenc_Pendencias.close;
              qrInsertApenc_Pendencias.ParamByName('Cod').Value       := qrProcessosCodigo.AsString;
              qrInsertApenc_Pendencias.ParamByName('Pendencia').Value := 1;
              qrInsertApenc_Pendencias.ParamByName('Desc').AsMemo     := vOBS + ' ' + vMsg;
              qrInsertApenc_Pendencias.ExecSQL;
            end;

           qrInsertLogApenc_Pendencias.close;
           qrInsertLogApenc_Pendencias.ParamByName('Cod').Value   := qrProcessosCodigo.AsString;
           qrInsertLogApenc_Pendencias.ParamByName('Desc').AsMemo := vOBS + ' ' + vMsg;
           qrInsertLogApenc_Pendencias.ParamByName('Data').Value  := Date();
           qrInsertLogApenc_Pendencias.ExecSQL;
         end;

        { ADICIONAR O PROCESSO AO E-MAIL }
        if vProcOk = false
         then begin
           if (vStatus = '0') or (vStatus = '01') or (not vProcOk)
            then vBody := vBody + vPRO;
         end;

        Inc(totProc);
        Inc(totStatus);
      end;

     qrProcessos.Next;

     if (vStatus <> qrProcessosStatus.AsString) Or (qrProcessos.Eof)
      then begin
        if qrProcessosStatus.AsString = '3'
         then begin
           totStatusFin      := totStatus ;
           totStatusOKFin    := totStatusOk;
           totstatusNaoOkFin := totStatusErro;
         end;

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                              + 'Status Verificado: '+ vStatusDesc;
        reProcessa.Lines.Append(Linha);
        vResumo := vResumo
                 + '<TR>'
                 + '  <TD><FONT SIZE="2">'+ vStatusDesc +'</FONT></TD>'
                 + '  <TD ALIGN="CENTER"><FONT COLOR="#0000DD">'+ IntToStr(totStatusOk) +'</FONT></TD>'
                 + '  <TD ALIGN="CENTER"><FONT COLOR="#DD0000">'+ IntToStr(totStatusErro) +'</FONT></TD>'
                 + '  <TD ALIGN="CENTER">'+ IntToStr(totStatus) +'</TD>'
                 + '</TR>';

        totStatus := 0; totStatusOk := 0; totStatusErro := 0;
      end;
   end;

   { RESUMO }
   vBody := vBody
         	+ '<TR><TD><BR>'
        	+ '<TABLE ALIGN="CENTER" WIDTH="90%" BORDER="1">'
       		+ '<TR><TD ALIGN="CENTER" COLSPAN="4"><B>RESUMO DOS PROCESSOS</B></TD></TR>'
      		+ '<TR>'
      		+ '  <TD ALIGN="CENTER"><FONT SIZE="2"><B>STATUS</B></FONT></TD>'
      		+ '  <TD ALIGN="CENTER"><FONT SIZE="2"><B>PROCESSOS<BR>OK</B></FONT></TD>'
      		+ '  <TD ALIGN="CENTER"><FONT SIZE="2"><B>PROCESSOS<BR>DESATUALIZADOS</B></FONT></TD>'
      		+ '  <TD ALIGN="CENTER"><FONT SIZE="2"><B>TOTAL</B></FONT></TD>'
      		+ '</TR>'
      		+ vResumo
      		+ '<TR>'
      		+ '  <TD ALIGN="RIGHT"><B>TOTAIS</B></TD>'
      		+ '  <TD ALIGN="CENTER"><B>'+ IntToStr(totOk) +'</B></TD>'
      		+ '  <TD ALIGN="CENTER"><B>'+ inttostr(totErro) +'</B></TD>'
      		+ '  <TD ALIGN="CENTER"><B>'+ inttostr(totProc) +'</B></TD>'
      		+ '</TR>'
      		+ '</TABLE><BR>'
      		+ '</TD></TR>';
end;

procedure TfrmAPenC.ExcluindoLogPendencias;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('DELETE Apenc_Pendencias_Log WHERE MONTH(DATA) < (MONTH(:Data) - 3)');
    QryAux.Params[0].Value := Date();
    QryAux.ExecSQL;
  finally
    QryAux.Free;
  end;
end;

procedure TfrmAPenC.AdicionaDestinatarios;
begin
  vCC   := '';
  vCCO  := '';

  qrEmailAviso.Open;

  while not qrEmailAviso.Eof do
   begin
     {if qrEmailAvisoPara.AsBoolean
      then begin
        if vPara = ''
         then vPara := qrEmailAvisoEmail.Value
         else vPara := vPara + '; ' + qrEmailAvisoEmail.Value;
      end;}

     if qrEmailAvisoCc.AsBoolean
      then begin
        if vCC = ''
         then vCC := qrEmailAvisoEmail.Value
         else vCC := vCC + '; ' + qrEmailAvisoEmail.Value;
      end;

     if qrEmailAvisoCCo.AsBoolean
      then begin
        if vCCO = ''
         then vCCO := qrEmailAvisoEmail.Value
         else vCCO := vCCO + '; ' + qrEmailAvisoEmail.Value;
      end;

     qrEmailAviso.Next;
   end;

  qrEmailAviso.Close;
end;

end.


