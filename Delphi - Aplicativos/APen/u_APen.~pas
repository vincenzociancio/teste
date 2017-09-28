unit u_APen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, FileCtrl,
  ActnList;

const
  vCodAPL = 'APEN';
  totST = 11;
  vOK   = 1;
  vERRO = 2;


type
  TfrmAPen = class(TForm)
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
    qrUsuariosProc: TQuery;
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
    qrUsuariosProcUsuario: TStringField;
    qrUsuariosProcNome_Completo: TStringField;
    qrUsuariosProcEmail: TStringField;
    qrUsuariosProcNomeSupervisor: TStringField;
    qrUsuariosProcEmailSupervisor: TStringField;
    qrUsuariosProcNomeSupervisorC: TStringField;
    qrUsuariosProcEmailSupervisorC: TStringField;
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
    qrProcessosData: TDateTimeField;
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
    q_num: TQuery;
    q_numProcesso: TStringField;
    q_numNumerario: TStringField;
    q_numValor_Registrado: TFloatField;
    qrProcRegImpProcesso: TStringField;
    qrProcRegImpbanco: TStringField;
    qrProcRegImpII: TFloatField;
    qrProcRegImpIPI: TFloatField;
    qrProcRegImpTAXA_SISCOMEX: TFloatField;
    qrFollowProcesso: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInicializaExecute(Sender: TObject);
    procedure acGeraEmailExecute(Sender: TObject);
    procedure acProcessaExecute(Sender: TObject);
    procedure acEnviaEmailExecute(Sender: TObject);
    procedure acFinalizaExecute(Sender: TObject);
    procedure reProcessaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmIniciarTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure VerificaDoc(Sender: TObject);
    function Log_Aplicativo(Aplicativo: string; Chave: String) : boolean;
    procedure Log_Aplicativo_finalizar(Aplicativo : String);
    procedure Log_Aplicativo_Atualizar_Data(Aplicativo : String; Chave: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

    vet = Array[1..totST, 1..2] Of Integer;
    vetSubTipo = Array[1..totST, 1..2] Of String;

var
   frmAPen: TfrmAPen;
   arqDir, arqNome, Linha, arqDirResumo, arqNomeResumo: String;
   arqDirEmail, arqNomeEmail : String;
   arqLog, arqResumo, arqEmail: TextFile;
   vFil, vEmp: String;
   vProc,vPro: String;
   vProcOk : BOOLEAN;

   vUsu, vUsuR, vUsuN, vUsuE: String;
   vStrResumo: String;
   totProc, totOk, totErro: Integer;
   totProcGeral, totOkGeral, totErroGeral: Integer;
   vperc,vpercgeral:real;
   vUsuValido: Boolean; // USUÁRIO VÁLIDO NO SISTEMA

   vDe, vPara, vCC, vCCO: String;
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
                        ('DSI','16'), ('CI','5'), ('CI CONSUMO','5'), ('RCR','14'),
                        ('TR','11'), ('DI/DSI',''), ('DTA','13'));
   
implementation

{$R *.DFM}

procedure TfrmAPen.FormCreate(Sender: TObject);
begin
  try
    with DB_MSCOMEX do
     begin
       Params.Values['USER NAME'] := 'APEN';
       Params.Values['PASSWORD']  := '@du@n@305ms';
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

  with qrFatura do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
   end;

  qrProcRegImp.open;
  q_num.open;
     
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
     
  q_nfs.Open;
end;

procedure TfrmAPen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
    CloseFile(arqLog);
    CloseFile(arqEmail);
  except
  end;

  frmAPen := nil;
  Action := caFree;
end;

procedure TfrmAPen.acInicializaExecute(Sender: TObject);
begin
  arqDir := ExtractFilePath(Application.ExeName)+'Log\';
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
     reProcessa.Lines.Append(Linha);
   end;

  arqDirEmail := ExtractFilePath(Application.ExeName)+'Planilhas_Ms2000\APEN\';
  arqNomeEmail := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.html';
  AssignFile(arqEmail,arqDirEmail+arqNomeEmail);

  if not DirectoryExists(arqDirEmail)
   then CreateDir(arqDirEmail);

  if FileExists(arqDirEmail+arqNomeEmail)
   then AppEnd(arqEmail)
   else ReWrite(arqEmail);

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + '>>> INICIANDO O PROCESSAMENTO DO APen';

  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  arqDirResumo := ExtractFilePath(Application.ExeName);
  arqNomeResumo := 'Resumo2.txt';
  AssignFile(arqResumo,arqDirResumo+arqNomeResumo);

  if FileExists(arqDirResumo+arqNomeResumo)
   then begin
     AppEnd(arqResumo);

     q_tot_resumo.open;
     q_tot_resumo.Last;

     totOkGeral   := q_tot_resumoTotOkGeral.AsInteger;
     totErroGeral := q_tot_resumoTotErroGeral.AsInteger;
     totProcGeral := q_tot_resumoTotProcGeral.AsInteger;
     
     q_tot_resumo.close;
   end
   else ReWrite(arqResumo);


  { GERA EMAIL COM A RELAÇÃO DAS PENDÊNCIAS DOS PROCESSOS }
  acGeraEmail.Execute;

  if acFinaliza.Checked
   then Exit;

  { FINALIZA APLICAÇÃO }
  acFinaliza.Execute;
end;

procedure TfrmAPen.acGeraEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + 'GERANDO RELAÇÃO DAS PENDÊNCIAS DOS PROCESSOS';

  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  vTitulo := Caption;
  vDe := 'APEN<auditoria@logistic-ms.com.br>';
  vPara := '';
  vCC   := '';
  vCCO  := '';
  VCCO  := 'duda.ms2000@mslogistica.com.br;natasha.cunha@mslogistica.com.br;';  //'APEN@mslogistica.com.br';

{ ********* RETIRADA DO ENVIO DE E-MAIL PARA O OPERACIONAL (SOLICITADO POR ODILMA) ********
     With qrUsuarios Do Begin
         Open;
         While Not Eof Do Begin
              If (Pos(qrUsuariosEmail.AsString, vPara) = 0) And
                 (Pos(qrUsuariosEmail.AsString, vCC) = 0) And
                 (Pos(qrUsuariosEmail.AsString, vCCO) = 0) Then Begin
                 If vCCO <> '' Then vCCO := vCCO + ', ';
                 vCCO := vCCO + qrUsuariosEmail.AsString;
              End;
              Next;
         End;
         Close;
     End;
}

  qrUsuariosProc.Open;

  while not qrUsuariosProc.Eof do
   begin
     if Log_Aplicativo('APEN',qrUsuariosProcUsuario.AsString) = true
      then begin
        Application.ProcessMessages;

        if acFinaliza.Checked
         then Exit;

        vCont := vContInicial;
        totProc := 0;
        vPRO := '';

        vUsu  := qrUsuariosProcUsuario.AsString;
        vUsuR := qrUsuariosProcUsuario.AsString;
        vUsuN := qrUsuariosProcNome_Completo.AsString;
        vUsuE := qrUsuariosProcEmail.AsString;

        vUsuValido := True;

        if vUsuN='ARQUIVO'
         then vUsuN := 'SEM RESPONSÁVEL';

        if vUsuR = ''
         then begin
           vUsu  := '"SEM USUÁRIO"';
           vUsuN := '"SEM USUÁRIO"';
           vUsuE := '"SEM E-MAIL"';
         end
         else begin
           if vUsu = ''
            then begin
              vUsu  := vUsuR;
              vUsuN := vUsuR +' - "INVÁLIDO NO SISTEMA"';
              vUsuE := '"SEM E-MAIL"';
              vUsuValido := False;
            end
            else if vUsuE = ''
                  then vUsuE := '"SEM E-MAIL"';
         end;

        if vUsuE <> '"SEM E-MAIL"'
         then vPara := vUsuN +'<'+ vUsuE +'>'
         else vPara := '';

        vCC := '';

        { Incluído filtro para atender a solicitação da odilma para não mais receber e-mails do APEN como supervisora}
        if ((qrUsuariosProcEmailSupervisor.AsString <> '') and
            (qrUsuariosProcEmailSupervisor.AsString <> 'odilma.queiroz@mslogistica.com.br'))
         then vCC := qrUsuariosProcNomeSupervisor.AsString +'<'+ qrUsuariosProcEmailSupervisor.AsString +'>';

        { Incluído filtro para atender a solicitação da odilma para não mais receber e-mails do APEN como supervisora}
        if ((qrUsuariosProcEmailSupervisorC.AsString <> '') and
            (qrUsuariosProcEmailSupervisorC.AsString <> 'odilma.queiroz@mslogistica.com.br'))
         then vCC := qrUsuariosProcNomeSupervisorC.AsString +'<'+ qrUsuariosProcEmailSupervisorC.AsString +'>';

        vBody := '<TABLE ALIGN="CENTER" BORDER="1" WIDTH="100%">'
               + '<TR><TD><B>RESPONSÁVEL: '+ vUsuN +' ('+ vUsuE +')</B></TD></TR>';

        { PROCESSA AS PENDÊNCIAS DOS PROCESSOS DO USUÁRIO }
        acProcessa.Execute;

        if acFinaliza.Checked
         then Exit;

        vBody := vBody + '</TABLE>';

        vperc := 0;
        { CONSTRUINDO RESUMO GERAL }

        if totProc <> 0
         then begin
           vperc      := (totok*100)/totproc;
           vpercgeral := vpercgeral+vperc;

           vStrResumo := '<TR>'
                       + '<TD><FONT SIZE="2">'+ vUsuN +'</FONT></TD>'
                       + '<TD ALIGN="CENTER"><FONT COLOR="#0000DD">'+ IntToStr(totOk) +'</FONT></TD>'
                       + '<TD ALIGN="CENTER"><FONT COLOR="#DD0000">'+ IntToStr(totErro) +'</FONT></TD>'
                       + '<TD ALIGN="CENTER">'+ IntToStr(totProc) +'</TD>'
                       + '<TD ALIGN="CENTER">'+ floattostrf(vperc,fffixed,15,2) +'%</TD>'
                       + '</TR>';

           Inc(totOkGeral, totOk);
           Inc(totErroGeral, totErro);
           Inc(totProcGeral, totProc);
           Writeln(arqResumo, vStrResumo);  Flush(arqResumo);
         end;

        Log_Aplicativo_Atualizar_Data('APEN',qrUsuariosProcUsuario.AsString);

        q_tot_resumo_insert.Params[0].AsInteger := totOkGeral;
        q_tot_resumo_insert.Params[1].AsInteger := totErroGeral;
        q_tot_resumo_insert.Params[2].AsInteger := totProcGeral;
        q_tot_resumo_insert.ExecSQL;

        qrUsuariosProc.Next;

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                              + 'Total de Processos OK: '+ IntToStr(totOk);

        reProcessa.Lines.Append(Linha);

        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                              + 'Total de Processos Desatualizados: '+ IntToStr(totErro);

        reProcessa.Lines.Append(Linha);

        { ENVIA E-MAIL DA RELAÇÃO DAS PENDÊNCIA DOS PROCESSOS }
        if (totProc <> 0)
         then Begin
           if vUsu = 'ARQUIVO'
            then vAssunto := 'APEN - PROCESSOS SEM DISTRIBUIÇÃO, ATENÇÃO!!! '+floattostrf(vperc,fffixed,15,2)+'% - OK('+IntToStr(totOk)+'), NÃO OK('+IntToStr(totErro)+')'+', em '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now())
            else vAssunto := 'APEN - '+ vUsu+', ATENÇÃO!!! '+floattostrf(vperc,fffixed,15,2)+'% - OK('+IntToStr(totOk)+'), NÃO OK('+IntToStr(totErro)+')'+', em '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now());

           if ( toterro = 0 )
            then begin
              if vUsu = 'ARQUIVO'
               then vAssunto := 'APEN - PROCESSOS SEM DISTRIBUIÇÃO, PARABÉNS!!! 100% OK!!!, em '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now())
               else vAssunto := 'APEN - '+ vUsu+', PARABÉNS!!! 100% OK!!!, em '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now());
            end;

           Q_UP.Params[0].AsString  := vusu;
           Q_UP.Params[1].Asinteger := totok;
           Q_UP.Params[2].Asinteger := toterro;
           Q_UP.Params[3].Asinteger := totproc;
           Q_UP.Params[4].Asfloat   := vperc;
           Q_UP.ExecSQL;

           // Data: 17/08/2011
           // Detalhe: Não enviar e-mail quando não tiver erros
           // Solicitado por: Odilma
           if ( toterro <> 0 ) then
            acEnviaEmail.Execute;
           //---------------------------------
           if acFinaliza.Checked then
             Exit;

         end;
      end
      else begin
        qrUsuariosProc.Next;
      end; // Fim do IF
   end; // Fim do while


  { RESUMO GERAL }
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + 'GERANDO RESUMO GERAL DAS PENDÊNCIAS DOS PROCESSOS';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  Reset(arqResumo);
  vStrResumo := '';

  while not Eof(arqResumo) do
   begin
     Readln(arqResumo, Linha);
     vStrResumo := vStrResumo + Linha;
   end;

  q_tot_resumo.Open;
  q_tot_resumo.Last;

  vCC   := '';
  vPara := 'duda.ms2000@mslogistica.com.br;natasha.cunha@mslogistica.com.br;'; //'APEN@mslogistica.com.br';
  VCCO  := '';
  
  vAssunto := 'APen - RESUMO GERAL - '+ FormatDateTime('dd/mm/yyyy "às" hh:nn:ss', Now());

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
  // Data: 17/08/2011
  // Detalhe: Não enviar e-mail quando não tiver erros
  // Solicitado por: Odilma
  if ( toterro <> 0 ) then
  acEnviaEmail.Execute;
  //---------------------------------

  Log_Aplicativo_finalizar('APEN');

  CloseFile(arqResumo);
  DeleteFile(arqDirResumo+arqNomeResumo);
end;

procedure TfrmAPen.acProcessaExecute(Sender: TObject);
var
  vTemFatura : Boolean;
  vFaltaFol : Boolean;
  vOBS : String;
  vResumo : String;
  vSemFol, vUltFol : String;
  vStatus, vStatusDesc : String;
  totStatus, totStatusOk, totStatusErro : Integer;
  vData, vDataMaior : String;

  v1, v2, v3, v4, v5, v6 : String;
  i : Integer;
  entra, tem_ii, tem_ipi, tem_taxa : boolean;
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                        + 'ANALISANDO USUÁRIO(A): '+ vUsuN;
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  totProc       := 0;
  totOk         := 0;
  totErro       := 0;
  totStatus     := 0;
  totStatusOk   := 0;
  totStatusErro := 0;
  
  vResumo := '';

  qrProcessos.Close;
  qrProcessos.Params[0].AsString := vUSUR;
  qrProcessos.Params[1].AsString := vUSUR;
  qrProcessos.Params[2].AsString := vUSUR;
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

     if copy(vproc,1,4) <> 'CRED'
      then begin
        vStatus := qrProcessosStatus.AsString;
        vStatusDesc := qrProcessosDescIII.AsString;

        {coloquei para ver os processos}
        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + '--> Processo: '+ vproc;
        Writeln(arqLog, Linha);  Flush(arqLog);
        reProcessa.Lines.Append(Linha);

        vProcOk := True;
        vTemFatura := False;
        vPRO := '';
        vOBS := '';

        vPRO := vPRO
              + '<TR><TD><FONT SIZE="2">'
              + '<B>PROCESSO: </B>'+ vProc;

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
             ((qrProcessosTipo.AsString = '17') and
              (qrProcessosData.AsDateTime >= StrToDateTime('13/11/2003')) )
            then Begin
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

           { VERIFICA CONTRATO }
           if qrProcessosContrato.AsString = ''
            then begin
              vProcOk := False;

              if vOBS <> ''
               then vOBS := vOBS + ', ';

              vOBS := vOBS + 'Informar o Contrato';
            end;

           { VERIFICA LOCAL DE INVENTÁRIO }
           if qrProcessosLocal_Inventario.AsString = ''
            then begin
              vProcOk := False;

              if vOBS <> ''
               then vOBS := vOBS + ', ';

              vOBS := vOBS + 'Informar o Local de Inventário';
            end;

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
              if (qrProcessosTipo.AsString = '1') Or (qrProcessosTipo.AsString = '11') Or
                 (qrProcessosTipo.AsString = '12') Or (qrProcessosTipo.AsString = '13')
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
                    if qrProcessosDT_REGISTRO_DI.AsString    =''
                     then Begin
                       vProcOk := False;

                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar a data de Registro da DI de Admissão';
                     end;

                    { VERIFICA DATA DE DESEMBARAÇO DE ADMISSÃO }
                    if qrProcessosDT_DESEMBARACO.AsString    =''
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
                             (qrProcessosDT_REGISTRO_DIC.AsString <> '') or
                             (qrProcessosDT_DESEMBARACOC.AsString <> '') or
                                    (qrProcessosValor_FOBC.AsFloat > 0 ) or
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
                          if qrProcessosDT_REGISTRO_DIC.AsString    = ''
                           then begin
                             vProcOk := False;

                             if vOBS <> ''
                              then vOBS := vOBS + ', ';

                             vOBS := vOBS + 'Informar a data de Registro da DI de Consumo';
                           end;

                          { VERIFICA DATA DESEMBARAÇO DE CONSUMO }
                          if qrProcessosDT_DESEMBARACOC.AsString    = ''
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
                    if ( (qrProcessosNR_Declaracao_Imp.AsString <> '') and
                       ( (qrProcessosBanco.AsString = '')              or
                         (qrProcessosAgencia.AsString = '')            or
                         (qrProcessosConta_Corrente.AsString = '')     or
                         (qrProcessosTaxa_Siscomex.AsFloat   = 0) ) )
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
                    if ( (qrProcessosNR_Declaracao_ImpC.AsString <> '') And
                       ( (qrProcessosBancoC.AsString = '') or
                         (qrProcessosAgenciaC.AsString = '') or
                         (qrProcessosConta_CorrenteC.AsString = '') or
                         (qrProcessosTaxa_SiscomexC.AsFloat = 0) ) )
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
                    { VERIFICA RCR }
                    if qrProcessosNumero_RCR.AsString = ''
                     then begin
                       vProcOk := False;

                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar o número do RCR';
                     end;

                    { VERIFICA DATA DE ENTRADA DO RCR }
                    if qrProcessosData_Entrada_RCR.AsString = ''
                     then begin
                       vProcOk := False;

                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar a data de entrada do RCR';
                     end;

                    { VERIFICA DATA DE APROVAÇÃO DO RCR }
                    if qrProcessosData_Aprovacao_RCR.AsString = ''
                     then begin
                       vProcOk := False;

                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar a data de aprovação do RCR';
                     end;

                    { VERIFICA FUNCAMENTAÇÃO DO RCR }
                    if qrProcessosFundamentacao_RCR.AsString = ''
                     then begin
                       vProcOk := False;

                       if vOBS <> ''
                        then vOBS := vOBS + ', ';

                       vOBS := vOBS + 'Informar a Fundamentação do RCR';
                     end;

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
                 { ALTERADO A VERIFICAÇÃO DAS INFORMAÇÕES DO CONHECIMENTO APENAS APÓS SER
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
                        {Leandro Serra - 07/10/2011 Ticket 745}
                       with qrFollowProcesso do
                       begin
                          close;
                          sql.clear;
                          sql.add('SELECT F.Data, F.Hora, F.Codevento, E.Descricao');
                          sql.add(' FROM Followup AS F LEFT OUTER JOIN  Eventos AS E ON F.Codevento = E.Codigo');
                          sql.add(' WHERE F.Processo =:pProcesso and E.Codigo ="290"');
                          sql.add(' ORDER BY F.Data, F.Hora');
                          ParamByName('pProcesso').asString :=  qrProcessosCodigo.Value;
//                              ParamByName('pCodigo').asString :=  '290')'; // Averbamos B/L
                          Open;
                       end;
                       { VERIFICA MANIFESTO }
                       if qrProcessosNumeroManifesto.AsString = ''
                        then begin

                          if  qrFollowProcesso.recordcount > 0 then
                          begin
                              if vOBS <> ''
                               then vOBS := vOBS + ', ';

                              vOBS := vOBS + 'Informar o número do Manifesto';
                          end  {Fim 745}
                        end;

                       if qrProcessosVia.AsString = '1'
                        then begin
                          { VERIFICA PRESENÇA DE CARGA }
                          if qrProcessosCodigo_Presenca_Carga.AsString = ''
                           then begin
                              {Leandro Serra - 07/10/2011 Ticket 745}
                              if  qrFollowProcesso.recordcount > 0 then
                              begin
                                 if vOBS <> ''
                                  then vOBS := vOBS + ', ';

                                 vOBS := vOBS + 'Informar o código de Presença de Carga';
                              end;  {Fim 745}        
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
                    { VERIFICA DATA DE CHEGADA NA URF DE DESPACHO }
                    if qrProcessosData_Chegada_URF_Desp.AsString = ''
                     then begin
                         with qrFollowProcesso do
                         begin
                            close;
                            sql.Clear;
                            sql.add('SELECT F.Data, F.Hora, F.Codevento, E.Descricao');
                            sql.add(' FROM Followup AS F LEFT OUTER JOIN  Eventos AS E ON F.Codevento = E.Codigo');
                            sql.add(' WHERE F.Processo =:pProcesso and E.Codigo in ("2255","72","717") ORDER BY F.Data, F.Hora');
                            ParamByName('pProcesso').asString :=  qrProcessosCodigo.Value;
//                            ParamByName('pCodigo').asString :=  '2255","72","717")'; // carga transferida para Arraial do Cabo / Niteroi / Cabo Frio
                           // sql.SaveToFile('C:\Teste.txt');
                            Open;
                         end;
                         if qrFollowProcesso.recordcount > 0 then
                         begin
                             if vOBS <> ''
                              then vOBS := vOBS + ', ';

                             vOBS := vOBS + 'Informar a Data de Chegada na URF de Despacho';
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
              if (qrProcessosTipo.AsString = '1')  or (qrProcessosTipo.AsString = '11') or
                 (qrProcessosTipo.AsString = '12') or (qrProcessosTipo.AsString = '13')
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
               then begin
                 entra := true;
               end;
            end;

           if ((vStatus < '3') or entra ) and (qrprocessosFATURADO.asinteger <> 1)
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

                 if (qrProcessosData.AsDateTime >= StrToDateTime('01/01/2007')) and (qrProcessosTipo_Declaracao.AsString <> '') and (qrProcessosTipo.AsString <> '6')
                  then begin
                    if qrProcessosData_Liberacao.AsString <> ''
                     then vDataMaior := qrProcessosData_Liberacao.AsString
                     else vDataMaior := DateToStr(Date());
                  end;

                 if qrprocessossem_nfs.asinteger=0
                  then begin
                    if not q_NFS.Locate('Processo', qrprocessoscodigo.asstring, [])
                     then vDataMaior := DateToStr(Date());
                  end;

                 { VERIFICA FOLLOW DA DATA DE ABERTURA DO PRECESSO ATÉ O DESEMBARAÇO OU ATÉ A DATA ATUAL }
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
                       while (Not qrFollow.Eof) And (qrFollowData.AsString = vData) do
                        begin
                          vUltFol := qrFollowData.AsString +' às '+ qrFollowHora.AsString +' - '+ qrFollowDescricao.AsString;

                          if (not qrFollowDesc_obs.IsNull) and (qrFollowDesc_obs.AsString<>'')
                           then vUltFol := vUltFol+' - '+qrFollowDesc_obs.AsString;

                          qrFollow.Next;
                        end;
                     end;

                    vData := DateToStr(StrToDate(vData)+1);
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

        vPRO := vPRO + '<BR><B>Resp. Operacional: </B>'+ qrProcessosresponsavel_empresa.asstring;

        vPRO := vPRO + '<BR><B>e-Mail da Localização da Pasta: </B>';

        if qrProcessosEmail.AsString <> ''
         then vPRO := vPRO + qrProcessosEmail.AsString
         else vPRO := vPRO +'NÃO LOCALIZADO';

///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
////////////////////////////////////////tratamento de DOCUMENTOS

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

                 v1 := qrListaProcCodFat.AsString;
                 v2 := qrListaProcNumerodoccarga.AsString;
                 v3 := qrListaProcNR_DECLARACAO_IMP.AsString;
                 v4 := qrListaProcNR_DECLARACAO_IMPC.AsString;
                 v5 := qrListaProcNumero_RCR.AsString;
                 v6 := qrListaProcNumero_TR.AsString;

                 if qrListaProcDT_DESEMBARACO.asstring = ''
                  then v3 := '';

                 if qrListaProcDT_DESEMBARACOc.asstring = ''
                  then v4 := '';

                 vST := 0;
                 vST := 1;

                 if qrListaProcdata_chegada_urf_cheg.AsString <> ''
                  then begin
                    { FATURA }
                    if v1 <> ''
                     then begin
                       vNum := v1;
                       VerificaDoc(frmapen);
                     end;

                    vST := 2;
                    { CONHECIMENTO }
                    if v2 <> ''
                     then begin
                       vNum := v2;
                       VerificaDoc(frmapen);
                     end;
                  end;

                 { PROCESSO DO TIPO: Importação DTA III or DTA Passagem Comum }
                 if (qrListaProcTipo.AsString = '16') OR (qrListaProcTipo.AsString = '25')
                  then begin
                    vST := 11;

                    { DTA }
                    if v3 <> ''
                     then begin
                       vNum := v3;
                       VerificaDoc(frmapen);
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

                          { DSI }
                          if v3 <> ''
                           then begin
                             vNum := v3;
                             VerificaDoc(frmapen);
                           end;
                        end
                        else begin
                          { PROCESSO DO TIPO: Atendimento / Passageiro; Bagagem Acompanhada; Bagagem Desacompanhada / Destruição }
                          if (qrListaProcTipo.AsString = 'AP') or (qrListaProcTipo.AsString = 'BA') or (qrListaProcTipo.AsString = 'BD') or (qrListaProcTipo.AsString = '5') or (qrListaProcTipo.AsString = 'IB')
                           then begin
                             vST := 10;

                             { DI/DSI }
                             if v3 <> ''
                              then begin
                                vNum := v3;
                                VerificaDoc(frmapen);
                              end;

                             { PROCESSO DO TIPO: Destruição }
                             if qrListaProcTipo.AsString = '5'
                              then begin
                                vST := 6;

                                { CI }
                                if v3 <> ''
                                 then begin
                                   if (qrProcessosDT_DESEMBARACO.AsString <> '')
                                    then begin
                                      vNum := v3;
                                      VerificaDoc(frmapen);
                                    end;  

                                   { CI CONSUMO }
                                   vST := 7;

                                   if (v4 <> '') and (qrProcessosDT_DESEMBARACOC.AsString <> '')
                                    then begin
                                      vNum := v4;
                                      VerificaDoc(frmapen);
                                    end;
                                 end;
                              end;
                           end
                           else begin
                             { PROCESSO DO TIPO: Reexportação }

                             if qrListaProcTipo.AsString <> '22'
                              then begin
                                vST := 3;

                                { DI }
                                if v3 <> ''
                                 then begin
                                   vNum := v3;
                                   VerificaDoc(frmapen);

                                   vST := 4;

                                   { DI CONSUMO }
                                   if v4 <> ''
                                    then begin
                                      vNum := v4;
                                      VerificaDoc(frmapen);
                                    end;
                                 end
                                 else vST := 4;

                                vST := 6;

                                { CI }
                                if v3 <> ''
                                 then begin
                                   if qrProcessosDT_DESEMBARACO.AsString <> ''
                                    then begin
                                      vNum := v3;
                                      VerificaDoc(frmapen);
                                    end;  

                                   vST := 7;

                                   { CI CONSUMO }
                                   if (v4 <> '') and (qrProcessosDT_DESEMBARACOC.AsString <> '')
                                    then begin
                                      vNum := v4;
                                      VerificaDoc(frmapen);
                                    end;
                                 end
                                 else vST := 7;
                              end;
                           end;
                        end;

                       vST := 8;

                       { RCR }
                       if v5 <> ''
                        then begin
                          vNum := v5;
                          VerificaDoc(frmapen);
                        end;
                     end;

                    vST := 9;

                    { TR }
                    if v6 <> ''
                     then begin
                       vNum := v6;
                       VerificaDoc(frmapen);
                     end;
                  end;

                 Next;
               end;

              Close;
            end;
         end;
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////

        { VERIFICA taxas registradas }
        if qrProcRegImp.Locate('Processo', qrprocessoscodigo.asstring, [])
         then begin
           tem_ii   := false;
           tem_ipi  := false;
           tem_taxa := false;

           if qrProcRegImpii.asfloat > 0
            then tem_ii := true;

           if qrProcRegImpipi.asfloat > 0
            then tem_ipi := true;

           if qrProcRegImptaxa_siscomex.asfloat > 0
            then tem_taxa := true;

           q_num.First;

           if q_num.Locate('Processo', qrprocessoscodigo.asstring, [])
            then begin
              while (not q_num.eof) and ( q_numprocesso.asstring=qrprocessoscodigo.asstring) do
               begin
                 if (tem_ii) and (q_numnumerario.asstring='II') and (q_numvalor_registrado.asfloat=qrProcRegImpii.asfloat)
                  then tem_ii := false;

                 if (tem_ipi) and (q_numnumerario.asstring='IPI') and (q_numvalor_registrado.asfloat=qrProcRegImpipi.asfloat)
                  then tem_ipi := false;

                 if (tem_taxa) and (q_numnumerario.asstring='TAXA') and (q_numvalor_registrado.asfloat=qrProcRegImpipi.asfloat)
                  then tem_ipi := false;

                 q_num.Next;
               end;
            end;

           if (tem_ii)
            then begin
              vProcOk := False;
              vPRO := vPRO + '<BR>Valor registrado do II - NÃO informado nos numerários ou não confere com o informado no desembaraço - '+qrProcRegImpii.asstring;
            end;

           if (tem_ipi)
            then begin
              vProcOk := False;
              vPRO    := vPRO + '<BR>Valor registrado do IPI - NÃO informado nos numerários ou não confere com o informado no desembaraço - '+qrProcRegImpipi.asstring;
            end;

           if (tem_ipi)
            then begin
              vProcOk := False;
              vPRO := vPRO + '<BR>Valor registrado de TAXA SISCOMEX - NÃO informado nos numerários ou não confere com o informado no desembaraço - '+qrProcRegImptaxa_siscomex.asstring;
            end;
         end;

        if vProcOk
         then begin
           vPRO := vPRO +'<BR><BR><CENTER><FONT COLOR="0000DD"><B>PROCESSO OK</B></FONT></CENTER></FONT></TD></TR>';
           Inc(totOk);
           Inc(totStatusOk);
         end
         else begin
           vPRO := vPRO +'<BR><BR><CENTER><FONT COLOR="DD0000"><B>PROCESSO DESATUALIZADO</B></FONT></CENTER></FONT></TD></TR>';
           Inc(totErro);
           Inc(totStatusErro);
         end;

        { ADICIONAR O PROCESSO AO E-MAIL }
        if (vStatus = '0') or (vStatus = '01') or (not vProcOk)
         then vBody := vBody + vPRO;

        Inc(totProc);
        Inc(totStatus);
      end;

     qrProcessos.Next;

     if (vStatus <> qrProcessosStatus.AsString) Or (qrProcessos.Eof)
      then begin
        Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                              + 'Status Verificado: '+ vStatusDesc;

        reProcessa.Lines.Append(Linha);

        vResumo := vResumo + '<TR>'
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

procedure TfrmAPen.acEnviaEmailExecute(Sender: TObject);
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
    tbEmailAuto.Open;
    tbEmailAuto.Append;
    tbEmailAutoPrograma.AsString := vCodAPL;
    tbEmailAutoTitulo.AsString   := vTitulo;
    tbEmailAutoAssunto.AsString  := vAssunto;
    tbEmailAutoAnexo.AsString    := vAnexo;

    if vHTML = true
     then tbEmailAutoHTML.AsInteger := 1
     else tbEmailAutoHTML.AsInteger := 0;

    tbEmailAutoDe.AsString   := vDe;
    tbEmailAutoPara.AsString := vPara;
    tbEmailAutoCC.AsString   := vCC;
    tbEmailAutoCCO.AsString  := vCCO;

    tbEmailAutoBody.AsString   := vBody;
    tbEmailAutoData.AsDateTime := Date();
    tbEmailAutoHora.AsDateTime := Time();
    
    tbEmailAuto.Post;
    tbEmailAuto.Close;

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

procedure TfrmAPen.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
            + '>>> FINALIZANDO O PROCESSAMENTO DO APen';
            
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  acFinaliza.Checked := True;
  CloseFile(arqLog);
  Close;
end;

procedure TfrmAPen.reProcessaChange(Sender: TObject);
begin
  pnlTop.Refresh;
  pnlLog.Refresh;
end;

procedure TfrmAPen.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmAPen.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;

  acInicializa.Execute;
end;

procedure TfrmAPen.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if acFinaliza.Checked
   then CanClose := True
   else begin
     CanClose := False;
     acFinaliza.Execute;
   end;
end;

procedure TfrmAPen.VerificaDoc(Sender: TObject);
var
  vMsg : String;
begin
  qrListaDoc.first;

  if not qrListaDoc.Locate('Numero_doc', vNum, [])
   then begin
     vMsg := 'Documento não Cadastrado/Digitalizado no MSDoc!';
     vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
     vProcOk := False;
   end
   else begin
     with qrListaDoc do
      begin
        { DI/DSI }
        if vST = 10
         then begin
           while not Eof do
            begin
              { DSI }
              if qrListaDocSub_Tipo_Doc.AsString = vetST[5,2]
               then vST := 5;

              { DI }
              if qrListaDocSub_Tipo_Doc.AsString = vetST[3,2]
               then vST := 3;

              { DI CONSUMO }
              if qrListaDocSub_Tipo_Doc.AsString = vetST[4,2]
               then vST := 4;

              if (vST <> 10) and (vST <> 0)
               then begin
                 if qrListaDocData_inclusao.AsString <> ''
                  then Inc(vCont[vST,vOK])
                  else begin
                    vMsg := 'Documento não Digitalizado!';
                    Inc(vCont[vST,vERRO]);
                    vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
                    vProcOk := False;
                  end;

                 vST := 0;
               end;

              Next;
            end;

           if vST = 0
            then begin
              Exit;
            end
            else begin
              First;
              vMsg := 'Documento não Cadastrado/Digitalizado no MSDoc! Foi(ram) encontrado(s) o(s) Subtipo(s): <I>';

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
                 vMsg := 'Documento não Digitalizado!';
                 vPRO := vPRO +'<BR><B>'+ vetST[vST,1] +': '+ vNum +' » </B>'+ vMsg ;
               end;
            end
            else begin
              First;
              vMsg := 'Documento não Cadastrado/Digitalizado no MSDoc! Foi(ram) encontrado(s) o(s) Subtipo(s): <I>';

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

function TfrmAPen.Log_Aplicativo(Aplicativo : String; Chave: String) : boolean;
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
      else begin
        Log_Aplicativo := true;
      end;
   end
   else begin
     q_log_aplicativo_adicionar.Params[0].AsString := Aplicativo;
     q_log_aplicativo_adicionar.Params[1].AsString := Chave;
     q_log_aplicativo_adicionar.ExecSQL;
     Log_Aplicativo := true;
   end;

  q_log_aplicativo.close;
end;

procedure TfrmAPen.Log_Aplicativo_Atualizar_Data(Aplicativo : String; Chave: String);
var
  DataHoje : TDateTime;
begin
  DataHoje := Date;
  
  q_log_aplicativo_atualizar_data.Params[0].AsString := DateToStr(DataHoje);
  q_log_aplicativo_atualizar_data.Params[1].AsString := Aplicativo;
  q_log_aplicativo_atualizar_data.Params[2].AsString := Chave;
  q_log_aplicativo_atualizar_data.ExecSQL;
end;

procedure TfrmAPen.Log_Aplicativo_finalizar(Aplicativo : String);
begin
  q_log_aplicativo_atualizar_finalizar.Params[0].AsString := '';
  q_log_aplicativo_atualizar_finalizar.Params[1].AsString := Aplicativo;
  q_log_aplicativo_atualizar_finalizar.ExecSQL;
end;

end.
