unit U_MSCOMEX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus, Db, DBTables, StdCtrls, Buttons, Grids, DBGrids, Gauges,
  OleCtrls, SHDocVw, Winsock, Registry, QRPDFFilt, jpeg, QRExport, DBCtrls,
  ADODB, TeEngine, Series, TeeProcs, Chart, DBChart, TeeFunci,AppEvnts, ShellAPI;


procedure gravaweb_log(qusums,qinfo : String);
procedure logusu(qmov,qdesc:string);
procedure processamento(qtitulo:string;quantosreg:integer;fim:boolean);
procedure ProcessarRelatorio(Sender: TObject);
function Verifica_Data_Taxa_Siscomex() : Boolean;
function StrIsTime(S: string): boolean;
//eduardo.souza 01/02/2012
function IsClosedProcess(Process: string; Frm: TForm ): Boolean;
//---
//eduardo.souza 26/12/2011

type
  TContador = Class(TThread)
  protected
  procedure Execute; Override;
end;
//--
type
  TF_MSCOMEX = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Importadores1: TMenuItem;
    Exportadores1: TMenuItem;
    Transportadores1: TMenuItem;
    Produtos1: TMenuItem;
    Processos1: TMenuItem;
    Financeiro1: TMenuItem;
    Sistema1: TMenuItem;
    Usuarios1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    DB_IMPORT: TDatabase;
    DB_TABSISCO: TDatabase;
    FabricantesProdutores1: TMenuItem;
    Faturamento1: TMenuItem;
    FluxodeCaixa1: TMenuItem;
    Sair1: TMenuItem;
    Distribuicao: TMenuItem;
    Contratos1: TMenuItem;
    Procuradores1: TMenuItem;
    Contratos2: TMenuItem;
    TiposLocaisdeInventrio1: TMenuItem;
    Armazens1: TMenuItem;
    AtosLegais1: TMenuItem;
    FundamentaoRCR1: TMenuItem;
    EventosObservaesFOLLOWUP1: TMenuItem;
    TiposdeCargas1: TMenuItem;
    Timer2: TTimer;
    Cadastros6: TMenuItem;
    Clientes1: TMenuItem;
    PlanodeContas1: TMenuItem;
    contascorrentes: TMenuItem;
    AtosConcessorios1: TMenuItem;
    Consultas1: TMenuItem;
    Parmetros1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Timer_avisos: TTimer;
    q_libera: TQuery;
    ds_qlibera: TDataSource;
    Processos2: TMenuItem;
    TiposdeCrditos1: TMenuItem;
    Custos1: TMenuItem;
    Timer_termos: TTimer;
    Pendncias1: TMenuItem;
    Pendncias2: TMenuItem;
    TermosdeResponsabilidade1: TMenuItem;
    NotasFiscaisdeServios1: TMenuItem;
    Certificados1: TMenuItem;
    Timer_follow: TTimer;
    q_follow: TQuery;
    ds_qfollow: TDataSource;
    q_data: TQuery;
    SeuFollowUp1: TMenuItem;
    SuaResponsabilidade1: TMenuItem;
    p_processa: TPanel;
    G_processa: TGauge;
    l_processa: TLabel;
    timer_versao: TTimer;
    MovimentaoCargaDescarga1: TMenuItem;
    AjudantesdeDespachante1: TMenuItem;
    Relatrios1: TMenuItem;
    DespesasMensais1: TMenuItem;
    Tradues1: TMenuItem;
    Patrimnio1: TMenuItem;
    DbitosCrditosporProcesso1: TMenuItem;
    ControledeSoftwares1: TMenuItem;
    t_cambio_s: TTable;
    t_cambio_m: TTable;
    FollowUpprocessosantigos1: TMenuItem;
    MovimentaodePastas1: TMenuItem;
    Abertura1: TMenuItem;
    Faturas1: TMenuItem;
    Conhecimentos1: TMenuItem;
    Tributao1: TMenuItem;
    RCR1: TMenuItem;
    Numerrios1: TMenuItem;
    RegistrodeChegada1: TMenuItem;
    DIDSI1: TMenuItem;
    TR1: TMenuItem;
    FollowUp2: TMenuItem;
    Desembarao1: TMenuItem;
    p_msplus: TPanel;
    l_usuario: TLabel;
    l_data: TLabel;
    Controles1: TMenuItem;
    ControledePastas2: TMenuItem;
    ControledeDocumentos2: TMenuItem;
    TaxasdeConversoSISCOMEX2: TMenuItem;
    q_up_atualizanet2: TQuery;
    q_in_movusu: TQuery;
    q_up_atualizanet3: TQuery;
    Cargas1: TMenuItem;
    T_processos: TTable;
    ds_parametros: TDataSource;
    ds_processos: TDataSource;
    q_inprotaxa: TQuery;
    Q_upprotaxa: TQuery;
    q_up_atualizanet: TQuery;
    T_pastas: TTable;
    T_movpastas: TTable;
    DARJICMS1: TMenuItem;
    t_ncm_m: TTable;
    t_ncm_s: TTable;
    NotasFiscaisdeServios2: TMenuItem;
    Fiadores1: TMenuItem;
    Custos2: TMenuItem;
    Perodo1: TMenuItem;
    Processo1: TMenuItem;
    ExtratodeProcessos1: TMenuItem;
    RPR1: TMenuItem;
    UnidadesdeMedida1: TMenuItem;
    GuiadeExoneraoICMS1: TMenuItem;
    AvisosAutomticos1: TMenuItem;
    TiposdeAvisos1: TMenuItem;
    Avisos1: TMenuItem;
    TratamentoTributrioICMS1: TMenuItem;
    FundamentoLegalICMS1: TMenuItem;
    CAE1: TMenuItem;
    ParmetrosdeFaturamento1: TMenuItem;
    FeriadosGreves1: TMenuItem;
    Cadastro1: TMenuItem;
    Movimentaes1: TMenuItem;
    ApuraodeCPMF1: TMenuItem;
    DB_DSI: TDatabase;
    PlanilhaExcelDbitosCrditosporProcesso1: TMenuItem;
    ExtratoContaCorrenteClientes1: TMenuItem;
    ControledeTransmittal1: TMenuItem;
    ProcessosporTipo1: TMenuItem;
    ParmetrosContabilizao1: TMenuItem;
    ControledeSolicitaesdeCheques1: TMenuItem;
    ControledeTransmittal2: TMenuItem;
    CadastrodeDestinatrios1: TMenuItem;
    ControledeSolicitaesdeAutorizaodeRegistros1: TMenuItem;
    CadastrodeContas1: TMenuItem;
    ControledeSolicitaesdeAutorizaodeRegistros2: TMenuItem;
    ControledeTraduoeClassificao1: TMenuItem;
    Palnilhas1: TMenuItem;
    Consultas2: TMenuItem;
    Valoressemdesmembramento1: TMenuItem;
    Fechamento1: TMenuItem;
    SalriosMnimos1: TMenuItem;
    q_menu: TQuery;
    q_usucli: TQuery;
    atusiscomex: TButton;
    t_atusiscomex_tab: TTable;
    q_atusiscomextab: TQuery;
    t_atusiscomex_maq: TTable;
    AtualizaoSiscomex1: TMenuItem;
    qNFS01: TQuery;
    qNFS02: TQuery;
    TraduoeClassificao2: TMenuItem;
    PlanilhaPrestaodeContas1: TMenuItem;
    DocumentosdeInstruo1: TMenuItem;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    ParmetrosdeSolicitaodeNumerrios1: TMenuItem;
    DistribuioComercial1: TMenuItem;
    HabilitarUsurios1: TMenuItem;
    t_frases: TTable;
    DBMemo1: TDBMemo;
    dsfrases: TDataSource;
    ValoresporItem1: TMenuItem;
    ControledeIPS1: TMenuItem;
    ControledePontosdeLgica1: TMenuItem;
    ControledePontosdeTelefonia1: TMenuItem;
    ControlesInformtica1: TMenuItem;
    ControledeSenhasdeUsurios1: TMenuItem;
    TBGERAL_IMPORTADORES: TTable;
    TBGERAL_PROCESSOS: TTable;
    DB_MSCOMEX: TDatabase;
    DB_LOGMSCOMEX: TDatabase;
    q_liberaEmpresa: TStringField;
    q_liberaFilial: TStringField;
    q_liberaProcesso: TStringField;
    q_liberaREG: TAutoIncField;
    q_liberaRazao_Social: TStringField;
    q_liberaDescricao: TStringField;
    q_liberaUsuario_Previsao: TStringField;
    q_liberaData_Previsao: TDateTimeField;
    q_liberaValor_Previsao: TFloatField;
    q_liberaPrevisao_solicitada: TStringField;
    q_liberaOk_Previsao_financeiro: TStringField;
    q_followStatus: TStringField;
    q_followResponsavel_Empresa: TStringField;
    q_followRazao_Social: TStringField;
    q_followCodigo: TStringField;
    q_followDESCRICAO: TStringField;
    q_followUsuario: TStringField;
    t_cambio_mCodigo: TStringField;
    t_cambio_mDescricao: TStringField;
    t_cambio_mTaxa_Conversao: TStringField;
    t_cambio_mVigencia_Inicio_Taxa: TStringField;
    t_cambio_mVigencia_Fim_Taxa: TStringField;
    t_cambio_sCodigo: TStringField;
    t_cambio_sDescricao: TStringField;
    t_cambio_sTaxa_Conversao: TStringField;
    t_cambio_sVigencia_Inicio_Taxa: TStringField;
    t_cambio_sVigencia_Fim_Taxa: TStringField;
    t_ncm_mCODIGO: TStringField;
    t_ncm_mDESCRICAO: TStringField;
    t_ncm_mUNIDADE_MEDIDA: TStringField;
    t_ncm_mALIQUOTA_II: TStringField;
    t_ncm_mDATA_INICIO_VIG_II: TStringField;
    t_ncm_mDATA_FIM_VIG_II: TStringField;
    t_ncm_mALIQUOTA_II_MERCOSUL: TStringField;
    t_ncm_mDATA_INICIO_VIG_II_MSUL: TStringField;
    t_ncm_mDATA_FIM_VIG_II_MSUL: TStringField;
    t_ncm_mALIQUOTA_IPI: TStringField;
    t_ncm_mDATA_INICIO_VIG_IPI: TStringField;
    t_ncm_mDATA_FIM_VIG_IPI: TStringField;
    t_ncm_mALIQUOTA_PIS_ADVAL: TStringField;
    t_ncm_mDATA_INI_VIG_PIS_ADVAL: TStringField;
    t_ncm_mDATA_FIM_VIG_PIS_ADVAL: TStringField;
    t_ncm_mALIQUOTA_COFINS_ADVAL: TStringField;
    t_ncm_mDATA_INI_VIG_COFINS_ADVAL: TStringField;
    t_ncm_mDATA_FIM_VIG_COFINS_ADVAL: TStringField;
    t_ncm_sCODIGO: TStringField;
    t_ncm_sDESCRICAO: TStringField;
    t_ncm_sUNIDADE_MEDIDA: TStringField;
    t_ncm_sALIQUOTA_II: TStringField;
    t_ncm_sDATA_INICIO_VIG_II: TStringField;
    t_ncm_sDATA_FIM_VIG_II: TStringField;
    t_ncm_sALIQUOTA_II_MERCOSUL: TStringField;
    t_ncm_sDATA_INICIO_VIG_II_MSUL: TStringField;
    t_ncm_sDATA_FIM_VIG_II_MSUL: TStringField;
    t_ncm_sALIQUOTA_IPI: TStringField;
    t_ncm_sDATA_INICIO_VIG_IPI: TStringField;
    t_ncm_sDATA_FIM_VIG_IPI: TStringField;
    t_ncm_sALIQUOTA_PIS_ADVAL: TStringField;
    t_ncm_sDATA_INI_VIG_PIS_ADVAL: TStringField;
    t_ncm_sDATA_FIM_VIG_PIS_ADVAL: TStringField;
    t_ncm_sALIQUOTA_COFINS_ADVAL: TStringField;
    t_ncm_sDATA_INI_VIG_COFINS_ADVAL: TStringField;
    t_ncm_sDATA_FIM_VIG_COFINS_ADVAL: TStringField;
    T_pastasEmpresa: TStringField;
    T_pastasFilial: TStringField;
    T_pastasProcesso: TStringField;
    T_pastasUsuario: TStringField;
    T_movpastasMovimento: TAutoIncField;
    T_movpastasEmpresa: TStringField;
    T_movpastasFilial: TStringField;
    T_movpastasProcesso: TStringField;
    T_movpastasDe_usuario: TStringField;
    T_movpastasPara_usuario: TStringField;
    T_movpastasData: TDateTimeField;
    T_movpastasHora: TDateTimeField;
    q_usucliUsuario: TStringField;
    q_usucliImportador: TStringField;
    q_menuUsuario: TStringField;
    q_menuMenu: TStringField;
    q_menuACESSA: TSmallintField;
    q_menuDescricao: TStringField;
    q_menuNivel: TStringField;
    q_menuHabilitado: TSmallintField;
    t_atusiscomex_maqMaquina: TStringField;
    t_atusiscomex_maqTabela: TStringField;
    t_atusiscomex_maqData_Atualizacao: TDateTimeField;
    t_atusiscomex_tabTabela: TStringField;
    t_atusiscomex_tabDescricao: TStringField;
    t_atusiscomex_tabAtualiza_WEB: TSmallintField;
    t_atusiscomex_tabUsuario: TStringField;
    t_atusiscomex_tabData_Atualizacao: TDateTimeField;
    t_frasesreg: TAutoIncField;
    t_frasesFrase: TMemoField;
    TBGERAL_IMPORTADORESEmpresa: TStringField;
    TBGERAL_IMPORTADORESFilial: TStringField;
    TBGERAL_IMPORTADORESCodigo: TStringField;
    TBGERAL_IMPORTADORESRazao_Social: TStringField;
    TBGERAL_IMPORTADORESPais: TStringField;
    TBGERAL_IMPORTADORESCNPJ_CPF_COMPLETO: TStringField;
    TBGERAL_IMPORTADORESCGC_CPF: TStringField;
    TBGERAL_IMPORTADORESTipo_Importador: TStringField;
    TBGERAL_IMPORTADORESEndereco: TStringField;
    TBGERAL_IMPORTADORESNumero: TStringField;
    TBGERAL_IMPORTADORESComplemento: TStringField;
    TBGERAL_IMPORTADORESBairro: TStringField;
    TBGERAL_IMPORTADORESCidade: TStringField;
    TBGERAL_IMPORTADORESCEP: TStringField;
    TBGERAL_IMPORTADORESUF: TStringField;
    TBGERAL_IMPORTADORESEstado: TStringField;
    TBGERAL_IMPORTADORESInscricao_Estadual: TStringField;
    TBGERAL_IMPORTADORESBanco: TStringField;
    TBGERAL_IMPORTADORESAgencia: TStringField;
    TBGERAL_IMPORTADORESConta_Corrente: TStringField;
    TBGERAL_IMPORTADORESConta_Corrente_Registro: TIntegerField;
    TBGERAL_IMPORTADORESConta_Corrente_Deposito: TIntegerField;
    TBGERAL_IMPORTADORESlink: TStringField;
    TBGERAL_IMPORTADORESCAE: TStringField;
    TBGERAL_IMPORTADORESTelefone: TStringField;
    TBGERAL_IMPORTADORESAtivo: TSmallintField;
    TBGERAL_IMPORTADORESAcesso_WEB_MS: TSmallintField;
    TBGERAL_IMPORTADORESAcesso_WEB_CLI: TSmallintField;
    TBGERAL_IMPORTADORESAcesso_WEB_REC: TSmallintField;
    TBGERAL_IMPORTADORESBASE_ICMS: TSmallintField;
    TBGERAL_PROCESSOSEmpresa: TStringField;
    TBGERAL_PROCESSOSFilial: TStringField;
    TBGERAL_PROCESSOSCodigo: TStringField;
    TBGERAL_PROCESSOSData: TDateTimeField;
    TBGERAL_PROCESSOSImportador: TStringField;
    TBGERAL_PROCESSOSCodigo_Cliente: TStringField;
    TBGERAL_PROCESSOSTipo_Declaracao: TStringField;
    TBGERAL_PROCESSOSTipo: TStringField;
    TBGERAL_PROCESSOSContrato: TStringField;
    TBGERAL_PROCESSOSLocal_Inventario: TStringField;
    TBGERAL_PROCESSOSNR_DECL_IMP_MICRO: TStringField;
    TBGERAL_PROCESSOSNR_DECL_IMP_PROT: TStringField;
    TBGERAL_PROCESSOSNR_DECLARACAO_IMP: TStringField;
    TBGERAL_PROCESSOSDT_PROCESSAMENTO: TStringField;
    TBGERAL_PROCESSOSDT_TRANSMISSAO: TStringField;
    TBGERAL_PROCESSOSDT_REGISTRO_DI: TStringField;
    TBGERAL_PROCESSOSDT_DESEMBARACO: TDateTimeField;
    TBGERAL_PROCESSOSDT_DISTRIBUICAO: TDateTimeField;
    TBGERAL_PROCESSOSCanal: TStringField;
    TBGERAL_PROCESSOSFiscal: TStringField;
    TBGERAL_PROCESSOSStatus: TStringField;
    TBGERAL_PROCESSOSCOD_SIT: TStringField;
    TBGERAL_PROCESSOSCD_MOTIVO_TRANS: TStringField;
    TBGERAL_PROCESSOSIN_MOEDA_UNICA: TSmallintField;
    TBGERAL_PROCESSOSTX_INFO_COMPL: TMemoField;
    TBGERAL_PROCESSOSCD_TIPO_PGTO_TRIB: TStringField;
    TBGERAL_PROCESSOSNumero_RCR: TStringField;
    TBGERAL_PROCESSOSData_Entrada_RCR: TDateTimeField;
    TBGERAL_PROCESSOSData_Aprovacao_RCR: TDateTimeField;
    TBGERAL_PROCESSOSFundamentacao_RCR: TStringField;
    TBGERAL_PROCESSOSProcurador: TStringField;
    TBGERAL_PROCESSOSNumero_TR: TStringField;
    TBGERAL_PROCESSOSData_Entrada_TR: TDateTimeField;
    TBGERAL_PROCESSOSData_vencimento_TR: TDateTimeField;
    TBGERAL_PROCESSOSData_Aprovacao_TR: TDateTimeField;
    TBGERAL_PROCESSOSData_Baixa_TR: TDateTimeField;
    TBGERAL_PROCESSOSData_CI: TDateTimeField;
    TBGERAL_PROCESSOSTipo_Garantia: TStringField;
    TBGERAL_PROCESSOSNome_banco_GAR: TStringField;
    TBGERAL_PROCESSOSAgencia_GAR: TStringField;
    TBGERAL_PROCESSOSData_deposito_GAR: TDateTimeField;
    TBGERAL_PROCESSOSNome_titulo_GAR: TStringField;
    TBGERAL_PROCESSOSnumeros_titulos_GAR: TStringField;
    TBGERAL_PROCESSOSNome_seguradora_GAR: TStringField;
    TBGERAL_PROCESSOSapolice_GAR: TStringField;
    TBGERAL_PROCESSOSnome_fiador_GAR: TStringField;
    TBGERAL_PROCESSOSCNPJ_fiador_GAR: TStringField;
    TBGERAL_PROCESSOSendereco_fiador_GAR: TStringField;
    TBGERAL_PROCESSOSQuantidade_LI: TFloatField;
    TBGERAL_PROCESSOSValor_FOB: TFloatField;
    TBGERAL_PROCESSOSValor_CIF: TFloatField;
    TBGERAL_PROCESSOSResponsavel_Empresa: TStringField;
    TBGERAL_PROCESSOSResponsavel_Importador: TStringField;
    TBGERAL_PROCESSOSSaldo_Faturamento: TFloatField;
    TBGERAL_PROCESSOSNR_DECL_IMP_MICROC: TStringField;
    TBGERAL_PROCESSOSNR_DECL_IMP_PROTC: TStringField;
    TBGERAL_PROCESSOSNR_DECLARACAO_IMPC: TStringField;
    TBGERAL_PROCESSOSDT_PROCESSAMENTOC: TStringField;
    TBGERAL_PROCESSOSDT_TRANSMISSAOC: TStringField;
    TBGERAL_PROCESSOSDT_REGISTRO_DIC: TStringField;
    TBGERAL_PROCESSOSDT_DESEMBARACOC: TDateTimeField;
    TBGERAL_PROCESSOSDT_DISTRIBUICAOC: TDateTimeField;
    TBGERAL_PROCESSOSCanalC: TStringField;
    TBGERAL_PROCESSOSFiscalC: TStringField;
    TBGERAL_PROCESSOSCOD_SITC: TStringField;
    TBGERAL_PROCESSOSData_CIC: TDateTimeField;
    TBGERAL_PROCESSOSValor_FOBC: TFloatField;
    TBGERAL_PROCESSOSValor_CIFC: TFloatField;
    TBGERAL_PROCESSOSident_meio1: TStringField;
    TBGERAL_PROCESSOSident_meio2: TStringField;
    TBGERAL_PROCESSOSCodevento: TStringField;
    TBGERAL_PROCESSOSCodobs: TStringField;
    TBGERAL_PROCESSOSObs_especifica: TStringField;
    TBGERAL_PROCESSOSData_ufollowup: TDateTimeField;
    TBGERAL_PROCESSOSHora_ufollowup: TStringField;
    TBGERAL_PROCESSOSData_liberacao: TDateTimeField;
    TBGERAL_PROCESSOSUrgente: TSmallintField;
    TBGERAL_PROCESSOSconsolidado: TSmallintField;
    TBGERAL_PROCESSOSPag_proporcional: TSmallintField;
    TBGERAL_PROCESSOSTR_VAL_FOB_US: TFloatField;
    TBGERAL_PROCESSOSTR_VAL_CIF_US: TFloatField;
    TBGERAL_PROCESSOSTR_VAL_II: TFloatField;
    TBGERAL_PROCESSOSTR_VAL_IPI: TFloatField;
    TBGERAL_PROCESSOSDDE: TStringField;
    TBGERAL_PROCESSOSProcesso_Adm: TStringField;
    TBGERAL_PROCESSOSProc_Adm_Data_Entrada: TDateTimeField;
    TBGERAL_PROCESSOSFaturado: TSmallintField;
    TBGERAL_PROCESSOSFechado: TSmallintField;
    TBGERAL_PROCESSOSCentro_Custo: TStringField;
    TBGERAL_PROCESSOSProcurador2: TStringField;
    TBGERAL_PROCESSOSTR_VAL_PIS: TFloatField;
    TBGERAL_PROCESSOSTR_VAL_COFINS: TFloatField;
    TBGERAL_PROCESSOSRCR_LOCAL: TStringField;
    TBGERAL_PROCESSOSResponsavel_EmpresaC: TStringField;
    TBGERAL_PROCESSOSvinc_processo: TSmallintField;
    TBGERAL_PROCESSOSproc_vinc: TStringField;
    q_atusql: TQuery;
    DB_MS2000_SISCOMEX: TDatabase;
    ControledePlanilhasTransocean1: TMenuItem;
    T_processosEmpresa: TStringField;
    T_processosFilial: TStringField;
    T_processosCodigo: TStringField;
    T_processosData: TDateTimeField;
    T_processosImportador: TStringField;
    T_processosCodigo_Cliente: TStringField;
    T_processosTipo_Declaracao: TStringField;
    T_processosTipo: TStringField;
    T_processosContrato: TStringField;
    T_processosLocal_Inventario: TStringField;
    T_processosNR_DECL_IMP_MICRO: TStringField;
    T_processosNR_DECL_IMP_PROT: TStringField;
    T_processosNR_DECLARACAO_IMP: TStringField;
    T_processosDT_PROCESSAMENTO: TStringField;
    T_processosDT_TRANSMISSAO: TStringField;
    T_processosDT_REGISTRO_DI: TStringField;
    T_processosDT_DESEMBARACO: TDateTimeField;
    T_processosDT_DISTRIBUICAO: TDateTimeField;
    T_processosCanal: TStringField;
    T_processosFiscal: TStringField;
    T_processosStatus: TStringField;
    T_processosCOD_SIT: TStringField;
    T_processosCD_MOTIVO_TRANS: TStringField;
    T_processosIN_MOEDA_UNICA: TIntegerField;
    T_processosTX_INFO_COMPL: TMemoField;
    T_processosCD_TIPO_PGTO_TRIB: TStringField;
    T_processosNumero_RCR: TStringField;
    T_processosData_Entrada_RCR: TDateTimeField;
    T_processosData_Aprovacao_RCR: TDateTimeField;
    T_processosFundamentacao_RCR: TStringField;
    T_processosProcurador: TStringField;
    T_processosNumero_TR: TStringField;
    T_processosData_Entrada_TR: TDateTimeField;
    T_processosData_vencimento_TR: TDateTimeField;
    T_processosData_Aprovacao_TR: TDateTimeField;
    T_processosData_Baixa_TR: TDateTimeField;
    T_processosData_CI: TDateTimeField;
    T_processosTipo_Garantia: TStringField;
    T_processosNome_banco_GAR: TStringField;
    T_processosAgencia_GAR: TStringField;
    T_processosData_deposito_GAR: TDateTimeField;
    T_processosNome_titulo_GAR: TStringField;
    T_processosnumeros_titulos_GAR: TStringField;
    T_processosNome_seguradora_GAR: TStringField;
    T_processosapolice_GAR: TStringField;
    T_processosnome_fiador_GAR: TStringField;
    T_processosCNPJ_fiador_GAR: TStringField;
    T_processosendereco_fiador_GAR: TStringField;
    T_processosQuantidade_LI: TFloatField;
    T_processosValor_FOB: TFloatField;
    T_processosValor_CIF: TFloatField;
    T_processosResponsavel_Empresa: TStringField;
    T_processosResponsavel_Importador: TStringField;
    T_processosSaldo_Faturamento: TFloatField;
    T_processosNR_DECL_IMP_MICROC: TStringField;
    T_processosNR_DECL_IMP_PROTC: TStringField;
    T_processosNR_DECLARACAO_IMPC: TStringField;
    T_processosDT_PROCESSAMENTOC: TStringField;
    T_processosDT_TRANSMISSAOC: TStringField;
    T_processosDT_REGISTRO_DIC: TStringField;
    T_processosDT_DESEMBARACOC: TDateTimeField;
    T_processosDT_DISTRIBUICAOC: TDateTimeField;
    T_processosCanalC: TStringField;
    T_processosFiscalC: TStringField;
    T_processosCOD_SITC: TStringField;
    T_processosData_CIC: TDateTimeField;
    T_processosValor_FOBC: TFloatField;
    T_processosValor_CIFC: TFloatField;
    T_processosident_meio1: TStringField;
    T_processosident_meio2: TStringField;
    T_processosCodevento: TStringField;
    T_processosCodobs: TStringField;
    T_processosObs_especifica: TStringField;
    T_processosData_ufollowup: TDateTimeField;
    T_processosHora_ufollowup: TStringField;
    T_processosData_liberacao: TDateTimeField;
    T_processosUrgente: TIntegerField;
    T_processosconsolidado: TIntegerField;
    T_processosPag_proporcional: TIntegerField;
    T_processosTR_VAL_FOB_US: TFloatField;
    T_processosTR_VAL_CIF_US: TFloatField;
    T_processosTR_VAL_II: TFloatField;
    T_processosTR_VAL_IPI: TFloatField;
    T_processosDDE: TStringField;
    T_processosProcesso_Adm: TStringField;
    T_processosProc_Adm_Data_Entrada: TDateTimeField;
    T_processosFaturado: TIntegerField;
    T_processosFechado: TIntegerField;
    T_processosCentro_Custo: TStringField;
    T_processosProcurador2: TStringField;
    T_processosTR_VAL_PIS: TFloatField;
    T_processosTR_VAL_COFINS: TFloatField;
    T_processosRCR_LOCAL: TStringField;
    T_processosResponsavel_EmpresaC: TStringField;
    T_processosvinc_processo: TIntegerField;
    T_processosproc_vinc: TStringField;
    T_processossem_nfs: TIntegerField;
    q_atualizaPasta: TQuery;
    q_pasta: TQuery;
    q_pastaEmpresa: TStringField;
    q_pastaFilial: TStringField;
    q_pastaProcesso: TStringField;
    q_pastaUsuario: TStringField;
    T_movpastas_insert: TQuery;
    q_pasta_insert: TQuery;
    q_processa: TQuery;
    ControledePlanilhasBRASDRIL1: TMenuItem;
    qfol1: TQuery;
    qfol1up: TQuery;
    DTR1: TMenuItem;
    ControleListasEMAILSAVISOS1: TMenuItem;
    q_faturas: TQuery;
    q_faturasMoeda: TStringField;
    ControleADEAndamento1: TMenuItem;
    ControleADEDeferido1: TMenuItem;
    ControledeChegadadeNavios1: TMenuItem;
    ControleTVs1: TMenuItem;
    Ramais1: TMenuItem;
    ControleBL1: TMenuItem;
    ControleTR1: TMenuItem;
    mnObservaesEspecficas1: TMenuItem;
    Plataformas1: TMenuItem;
    Prestaodecontasconsolidada1: TMenuItem;
    PlanilhaExcelRelatriodePrestaodeContas1: TMenuItem;
    qryFollowAutomatico: TQuery;
    ControleHierarquico1: TMenuItem;
    ControledeSolicitaesdeNumerrios1: TMenuItem;
    Solicitao1: TMenuItem;
    Autorizao1: TMenuItem;
    AgrupamentodeClientes1: TMenuItem;
    Consulta1: TMenuItem;
    VoucherTransocean1: TMenuItem;
    ControledeAnlisedeDesempenho1: TMenuItem;
    AnlisedeDesempenhoIndividual1: TMenuItem;
    AnlisedeColaboradoresSupervisionados1: TMenuItem;
    ControledeHierarquia1: TMenuItem;
    CadastrodeAnlises1: TMenuItem;
    CadastrodeCompetncias1: TMenuItem;
    CadastrodePerguntas1: TMenuItem;
    Resultados1: TMenuItem;
    ResultadoIndividualdasAnlises1: TMenuItem;
    ResultadoSupervisionados1: TMenuItem;
    ContasaReceber1: TMenuItem;
    qAtuProcessoVisaoGeral: TQuery;
    qryUpdate_Alerta_Atualizacao: TQuery;
    Controle_Alerta_Atualizacao: TTimer;
    ControledenormasISO: TMenuItem;
    gerencianormas: TMenuItem;
    visualizanormas: TMenuItem;
    PlanilhaExcelRelatrioQuinzenalBrasdril1: TMenuItem;
    HistricodeChecks1: TMenuItem;
    visualizanormasoperacional: TMenuItem;
    visualizanormasfinanceiro: TMenuItem;
    visualizanormasRH: TMenuItem;
    visualizanormasTI: TMenuItem;
    visualizanormasSGI: TMenuItem;
    CadastrodeContasClientes1: TMenuItem;
    qryProcessoFechado: TQuery;
    ControledeNumerrios1: TMenuItem;
    Recibos1: TMenuItem;
    NotasdeDbito1: TMenuItem;
    NotasdeCrdito1: TMenuItem;
    DeclaraesdeOrigem1: TMenuItem;
    Fornecedores1: TMenuItem;
    Exportacoes1: TMenuItem;
    NFe1: TMenuItem;
    visualizanormasSMS: TMenuItem;
    UploaddeArquivosPDF1: TMenuItem;
    RH1: TMenuItem;
    ISO1: TMenuItem;
    PorProcesso1: TMenuItem;
    PorUsurio1: TMenuItem;
    GernciadeNumerriosObrigatrios1: TMenuItem;
    CheckListDocumentao1: TMenuItem;
    Formularios1: TMenuItem;
    Contratos3: TMenuItem;
    LanamentodeHoraExtra1: TMenuItem;
    Turnover1: TMenuItem;
    Button1: TButton;
    ControleNaoConformidade: TMenuItem;
    AberturaNaoConformidade: TMenuItem;
    ConsumodeEnergia1: TMenuItem;
    AdesaoLaboral: TMenuItem;
    Formulrios1: TMenuItem;
    RequerimentodeAgricultura1: TMenuItem;
    RequerimentodeAgriculturaapartirde181220061: TMenuItem;
    RequerimentodeAgriculturaAntigo1: TMenuItem;
    CapaDINiteri1: TMenuItem;
    CapaDISepetiba1: TMenuItem;
    TermoSunamannDrawback1: TMenuItem;
    ExtratordeDocumentos1: TMenuItem;
    ContratodehabilitaoaoRepetro1: TMenuItem;
    TiposdeNumerrios2: TMenuItem;
    TiposdeCustos2: TMenuItem;
    PlanilhaExcelRelatriodeDespesasPanMarineMarAlta1: TMenuItem;
    LanamentodeAcidentes1: TMenuItem;
    ContasaPagar1: TMenuItem;
    AssociaoNumerriosDocumentos1: TMenuItem;
    UploaddeDocumentos1: TMenuItem;
    VisualizarIndicadores1: TMenuItem;
    qDeleteNCM_LI: TQuery;
    qNCM_COM_LI: TQuery;
    tbEmailAuto: TTable;
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
    qProcLI: TQuery;
    qProcLIProcesso: TStringField;
    qProcLINCM: TStringField;
    qProcLIImportador: TStringField;
    qProcLIRazao_Social: TStringField;
    qProcLICNPJ_CPF_COMPLETO: TStringField;
    qIns_Log_NCM_LI: TQuery;
    qVerificaLogNCM: TQuery;
    qVerificaLogNCMusuario: TStringField;
    qEmailAvisos: TQuery;
    qEmailAvisosEmpresa: TStringField;
    qEmailAvisosFilial: TStringField;
    qEmailAvisosImportador: TStringField;
    qEmailAvisosTipo: TStringField;
    qEmailAvisosEmail: TStringField;
    qEmailAvisosNome_completo: TStringField;
    qEmailAvisosParametros: TStringField;
    qEmailAvisosHTML: TIntegerField;
    qEmailAvisosPlataforma: TStringField;
    ExtraoNCMcomLI1: TMenuItem;
    qUsuOperac: TQuery;
    qUsuOperacEmail: TStringField;
    pnlLetreiro: TPanel;
    lblLetreiro: TLabel;
    Controle_Letreiro: TTimer;
    qrISO_Letreiro: TQuery;
    qrISO_LetreiroSequencial: TAutoIncField;
    qrISO_LetreiroNorma: TStringField;
    qrISO_LetreiroDt_Final: TDateTimeField;
    qrISO_LetreiroExcluido: TBooleanField;
    Executa_Letreiro: TTimer;
    qrISO_LetreiroDt_Inicial: TDateTimeField;
    ControledeMedies1: TMenuItem;
    TaxadeConversoparaAmanha: TMenuItem;
    MODECNFe1: TMenuItem;
    CalculoLubrisol1: TMenuItem;
    ODFJELLDI1: TMenuItem;
    PlanilhaExcelPlanilhadeMediodeHonorrios1: TMenuItem;
    TermosdeResponsabilidade2: TMenuItem;
    AcrscimoICMSATAreo1: TMenuItem;
    qryEmail_Auto: TQuery;
    t_parametros: TTable;
    t_parametrosEmpresa: TStringField;
    t_parametrosFilial: TStringField;
    t_parametrosNumerador_Processos: TStringField;
    t_parametrosNumerador_Documentos: TStringField;
    t_parametrosEndereco_ftp: TStringField;
    t_parametrosUsuario_ftp: TStringField;
    t_parametrosSenha_ftp: TStringField;
    t_parametrosHost: TStringField;
    t_parametrosVersao: TStringField;
    t_parametroskeycrypt: TStringField;
    t_parametrosHost_smtp: TStringField;
    t_parametrosPorta_smtp: TSmallintField;
    t_parametrosUsuario_smtp: TStringField;
    t_parametrosSenha_smtp: TStringField;
    t_parametrosNumerador_Transmittal: TStringField;
    t_parametrosPATH_SERVER: TStringField;
    t_parametrosAliq_PIS_PASEP: TFloatField;
    t_parametrosAliq_COFINS: TFloatField;
    t_parametrosAliq_ICMS: TFloatField;
    t_parametrosAliq_ICMS_EXTRA: TFloatField;
    t_parametrosNumerador_Sol_Cheques: TStringField;
    t_parametrosNumerador_Sol_Reg: TStringField;
    t_parametrosNumerador_Sol_Tracla: TStringField;
    t_parametrosAlerta_Atualizacao: TIntegerField;
    t_parametrosValorMinimoRegistroDI: TFloatField;
    t_parametrosValorMaximoRegistroDI: TFloatField;
    BitBtn1: TBitBtn;
    qrConhecimento: TQuery;
    ds_Processo: TDataSource;
    qrProcesso: TQuery;
    qrProcessoCodigo: TStringField;
    qrProcessoTipo: TStringField;
    qrProcessoNR_DECLARACAO_IMP: TStringField;
    qrProcessoNR_DECLARACAO_IMPC: TStringField;
    q_protaxaconv: TQuery;
    q_protaxaconvEmpresa: TStringField;
    q_protaxaconvFilial: TStringField;
    q_protaxaconvProcesso: TStringField;
    q_protaxaconvMoeda: TStringField;
    q_protaxaconvTaxa_conversao: TFloatField;
    q_protaxaconvTaxa_conversaoc: TFloatField;
    qrConhecimentoEmpresa: TStringField;
    qrConhecimentoFilial: TStringField;
    qrConhecimentoProcesso: TStringField;
    qrConhecimentoMoeda_Frete: TStringField;
    qrConhecimentoMoeda_Seguro: TStringField;
    qrConhecimentoMoeda_Despesas_ate_FOB: TStringField;
    procedure Sobre1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Transportadores1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Exportadores1Click(Sender: TObject);
    procedure FabricantesProdutores1Click(Sender: TObject);
    procedure Importadores1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Procuradores1Click(Sender: TObject);
    procedure TiposLocaisdeInventrio1Click(Sender: TObject);
    procedure Armazens1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FundamentaoRCR1Click(Sender: TObject);
    procedure AtosLegais1Click(Sender: TObject);
    procedure TiposdeCargas1Click(Sender: TObject);
    procedure EventosObservaesFOLLOWUP1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Contratos2Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure AtosConcessorios1Click(Sender: TObject);
    procedure AtosConcessrios1Click(Sender: TObject);
    procedure FollowUp1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure Processos2Click(Sender: TObject);
    procedure TiposdeCrditos1Click(Sender: TObject);
    procedure Custos1Click(Sender: TObject);
    procedure Pendncias1Click(Sender: TObject);
    procedure Pendncias2Click(Sender: TObject);
    procedure TermosdeResponsabilidade1Click(Sender: TObject);
    procedure Timer_termosTimer(Sender: TObject);
    procedure NotasFiscaisdeServios1Click(Sender: TObject);
    procedure Certificados1Click(Sender: TObject);
    procedure Timer_followTimer(Sender: TObject);
    procedure b_fechaClick(Sender: TObject);
    procedure SeuFollowUp1Click(Sender: TObject);
    procedure DistribuicaoClick(Sender: TObject);
    procedure SuaResponsabilidade1Click(Sender: TObject);
    procedure timer_versaoTimer(Sender: TObject);
    procedure MovimentaoCargaDescarga1Click(Sender: TObject);
    procedure AjudantesdeDespachante1Click(Sender: TObject);
    procedure t_atualizanetPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DespesasMensais1Click(Sender: TObject);
    procedure Tradues1Click(Sender: TObject);
    procedure Patrimnio1Click(Sender: TObject);
    procedure DbitosCrditosporProcesso1Click(Sender: TObject);
    procedure TaxasdeConversoSISCOMEX1Click(Sender: TObject);
    procedure ControledeSoftwares1Click(Sender: TObject);
    procedure ControledeDocumentos1Click(Sender: TObject);
    procedure ControleFollowUpComercial1Click(Sender: TObject);
    procedure FollowUpprocessosantigos1Click(Sender: TObject);
    procedure MovimentaodePastas1Click(Sender: TObject);
    procedure Abertura1Click(Sender: TObject);
    procedure Desembarao1Click(Sender: TObject);
    procedure ControledePastas2Click(Sender: TObject);
    procedure ControledeDocumentos2Click(Sender: TObject);
    procedure ControleFollowUpComercial2Click(Sender: TObject);
    procedure TaxasdeConversoSISCOMEX2Click(Sender: TObject);
    procedure FollowUp2Click(Sender: TObject);
    procedure TR1Click(Sender: TObject);
    procedure DIDSI1Click(Sender: TObject);
    procedure RegistrodeChegada1Click(Sender: TObject);
    procedure Numerrios1Click(Sender: TObject);
    procedure RCR1Click(Sender: TObject);
    procedure Tributao1Click(Sender: TObject);
    procedure Conhecimentos1Click(Sender: TObject);
    procedure Cargas1Click(Sender: TObject);
    procedure Faturas1Click(Sender: TObject);
    procedure atualizataxaconversao(qprocesso:string);
    procedure atualizacpastas(qprocesso:string);
    procedure atualizamoeda(oprocesso,qmoeda:string;qatuadm,qatucon:boolean);
    procedure DARJICMS1Click(Sender: TObject);
    procedure NotasFiscaisdeServios2Click(Sender: TObject);
    procedure Fiadores1Click(Sender: TObject);
    procedure ExtratodeProcessos1Click(Sender: TObject);
    procedure Perodo1Click(Sender: TObject);
    procedure Processo1Click(Sender: TObject);
    procedure RPR1Click(Sender: TObject);
    procedure UnidadesdeMedida1Click(Sender: TObject);
    procedure GuiadeExoneraoICMS1Click(Sender: TObject);
    procedure TiposdeAvisos1Click(Sender: TObject);
    procedure Avisos1Click(Sender: TObject);
    procedure TratamentoTributrioICMS1Click(Sender: TObject);
    procedure FundamentoLegalICMS1Click(Sender: TObject);
    procedure CAE1Click(Sender: TObject);
    procedure ParmetrosdeFaturamento1Click(Sender: TObject);
    procedure FeriadosGreves1Click(Sender: TObject);
    procedure Movimentaes1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure ApuraodeCPMF1Click(Sender: TObject);
    procedure PlanilhaExcelDbitosCrditosporProcesso1Click(Sender: TObject);
    procedure ExtratoContaCorrenteClientes1Click(Sender: TObject);
    procedure ProcessosporTipo1Click(Sender: TObject);
    procedure ParmetrosContabilizao1Click(Sender: TObject);
    procedure ControledeSolicitaesdeCheques1Click(Sender: TObject);
    procedure ControledeTransmittal2Click(Sender: TObject);
    procedure CadastrodeDestinatrios1Click(Sender: TObject);
    procedure ControledeSolicitaesdeAutorizaodeRegistros2Click(
      Sender: TObject);
    procedure CadastrodeContas1Click(Sender: TObject);
    procedure ControledeTraduoeClassificao1Click(Sender: TObject);
    procedure Valoressemdesmembramento1Click(Sender: TObject);
    procedure Fechamento1Click(Sender: TObject);
    procedure SalriosMnimos1Click(Sender: TObject);
    procedure q_menuAfterOpen(DataSet: TDataSet);
    procedure atusiscomexClick(Sender: TObject);
    procedure AtualizaoSiscomex1Click(Sender: TObject);
    procedure ControledeTraduoeClassificao2Click(Sender: TObject);
    procedure TraduoeClassificao2Click(Sender: TObject);
    procedure PlanilhaPrestaodeContas1Click(Sender: TObject);
    procedure DocumentosdeInstruo1Click(Sender: TObject);
    procedure ParmetrosdeSolicitaodeNumerrios1Click(Sender: TObject);
    procedure DistribuioComercial1Click(Sender: TObject);
    procedure HabilitarUsurios1Click(Sender: TObject);
    procedure ControledePapisImpresses1Click(Sender: TObject);
    procedure ValoresporItem1Click(Sender: TObject);
    procedure ControledeIPS1Click(Sender: TObject);
    procedure ControledePontosdeTelefonia1Click(Sender: TObject);
    procedure ControledeSenhasdeUsurios1Click(Sender: TObject);
    procedure ControledePontosdeLgica1Click(Sender: TObject);
    procedure gravaarqlog(reg: String;NomeArquivo: String;cont:integer);
    procedure ControledePlanilhasTransocean1Click(Sender: TObject);
    procedure Delay(MSec: Cardinal);
    procedure MSPGP(oprocesso:STRING);
    procedure ControledePlanilhasBRASDRIL1Click(Sender: TObject);
    procedure apaga_rpt();
    procedure DTR1Click(Sender: TObject);
    procedure ControleListasEMAILSAVISOS1Click(Sender: TObject);
    procedure ControleADEAndamento1Click(Sender: TObject);
    procedure ControleADEDeferido1Click(Sender: TObject);
    procedure ControledeChegadadeNavios1Click(Sender: TObject);
    procedure ControleTVs1Click(Sender: TObject);
    procedure Ramais1Click(Sender: TObject);
    procedure ControleBL1Click(Sender: TObject);
    procedure ControleTR1Click(Sender: TObject);
    procedure mnObservaesEspecficas1Click(Sender: TObject);
    procedure Plataformas1Click(Sender: TObject);
    procedure Prestaodecontasconsolidada1Click(Sender: TObject);
    procedure PlanilhaExcelBrasdril1Click(Sender: TObject);
    procedure ControleHierarquico1Click(Sender: TObject);
    procedure Solicitao1Click(Sender: TObject);
    procedure Autorizao1Click(Sender: TObject);
    procedure AgrupamentodeClientes1Click(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
    procedure VoucherTransocean1Click(Sender: TObject);
    procedure AnlisedeDesempenhoIndividual1Click(Sender: TObject);
    procedure AnlisedeColaboradoresSupervisionados1Click(Sender: TObject);
    procedure ControledeHierarquia1Click(Sender: TObject);
    procedure CadastrodeAnlises1Click(Sender: TObject);
    procedure CadastrodeCompetncias1Click(Sender: TObject);
    procedure CadastrodePerguntas1Click(Sender: TObject);
    procedure ResultadoIndividualdasAnlises1Click(Sender: TObject);
    procedure ResultadoSupervisionados1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Controle_Alerta_AtualizacaoTimer(Sender: TObject);
    procedure gerencianormasClick(Sender: TObject);
    procedure PlanilhaExcelRelatrioQuinzenalBrasdril1Click(
      Sender: TObject);
    procedure visualizanormasoperacionalClick(Sender: TObject);
    procedure visualizanormasfinanceiroClick(Sender: TObject);
    procedure visualizanormasRHClick(Sender: TObject);
    procedure visualizanormasTIClick(Sender: TObject);
    procedure visualizanormasSGIClick(Sender: TObject);
    procedure CadastrodeContasClientes1Click(Sender: TObject);
    procedure ControledeNumerrios1Click(Sender: TObject);
    procedure Recibos1Click(Sender: TObject);
    procedure NotasdeDbito1Click(Sender: TObject);
    procedure NotasdeCrdito1Click(Sender: TObject);
    procedure DeclaraesdeOrigem1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure NFe1Click(Sender: TObject);
    procedure visualizanormasSMSClick(Sender: TObject);
    procedure UploaddeArquivosPDF1Click(Sender: TObject);
    procedure PorProcesso1Click(Sender: TObject);
    procedure PorUsurio1Click(Sender: TObject);
    procedure GernciadeNumerriosObrigatrios1Click(Sender: TObject);
    procedure CheckListDocumentao1Click(Sender: TObject);
    procedure Formularios1Click(Sender: TObject);
    procedure Contratos3Click(Sender: TObject);
    procedure LanamentodeHoraExtra1Click(Sender: TObject);
    procedure Turnover1Click(Sender: TObject);
    procedure ControleNaoConformidadeClick(Sender: TObject);
    procedure AberturaNaoConformidadeClick(Sender: TObject);
    procedure ConsumodeEnergia1Click(Sender: TObject);
    procedure AdesaoLaboralClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RequerimentodeAgricultura1Click(Sender: TObject);
    procedure RequerimentodeAgriculturaapartirde181220061Click(
      Sender: TObject);
    procedure RequerimentodeAgriculturaAntigo1Click(Sender: TObject);
    procedure CapaDINiteri1Click(Sender: TObject);
    procedure CapaDISepetiba1Click(Sender: TObject);
    procedure TermoSunamannDrawback1Click(Sender: TObject);
    procedure ExtratordeDocumentos1Click(Sender: TObject);
    procedure ContratodehabilitaoaoRepetro1Click(Sender: TObject);
    procedure TiposdeNumerrios2Click(Sender: TObject);
    procedure TiposdeCustos2Click(Sender: TObject);
    procedure PlanilhaExcelRelatriodeDespesasPanMarineMarAlta1Click(
      Sender: TObject);
    procedure LanamentodeAcidentes1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure AssociaoNumerriosDocumentos1Click(Sender: TObject);
    procedure UploaddeDocumentos1Click(Sender: TObject);
    procedure VisualizarIndicadores1Click(Sender: TObject);
    procedure ExtraoNCMcomLI1Click(Sender: TObject);
    procedure Controle_LetreiroTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Executa_LetreiroTimer(Sender: TObject);
    procedure ControledeMedies1Click(Sender: TObject);
    procedure TaxadeConversoparaAmanhaClick(Sender: TObject);
    procedure MODECNFe1Click(Sender: TObject);
    procedure CalculoLubrisol1Click(Sender: TObject);
    procedure ODFJELLDI1Click(Sender: TObject);
    procedure PlanilhaExcel1Click(Sender: TObject);
    procedure TermosdeResponsabilidade2Click(Sender: TObject);
    procedure AcrscimoICMSATAreo1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    procedure EnviaEmail;
    function Func_DataDeCriacaoArquivo(Arq: string): TDateTime;
    { Private declarations }
    //procedure WMSysCommand(var Message: TMessage); message WM_SYSCOMMAND;

    function MyMessageDlg(const aCaption: String; const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;



  public
    { Public declarations }
    QRPDFFilter1: TQRPDFFilter;

    //eduardo.souza 11/07/2011 Follow Automático
    Function IncluiFollow(Processo: String; CodEvento : String; CodObs : String; ObsEspecifica : String ;Usuario : String; Data: TDateTime; Hora: TDateTime): Boolean;
    //--
    Function LRTrim( Texto: String) : String;
    Function LRDataTrim( Texto: String) : String;
    Function PesquisaConcluida : Boolean;

    procedure AtualizaProcessoVisaoGeral(Processo: String);
    procedure Chamar_Alerta_Atualizacao();
    Procedure ExecutaLetreiro();

    function AcessaPasta(Processo, Tipo : String; FormFoco : TForm): Boolean;

    procedure IncluiEmailAuto(Titulo, Assunto, Anexo, De, Para, Cc, Cco,Body: String);

    function DINaoSolicitada(Processo: String; FormFoco : TForm): Boolean;

    function DIAutorizada(Processo: String): Boolean;

    function TotalFatura(Processo: String): Double;

    function TrazNumeroRAT(Processo : String) : String;

    function UsuarioAtivo(Email: String): Boolean;
  end;

const
  BDUser  = 'ms2000';
  BDSenha = 'lasbrug30@';
  // flag para informar se o banco é access ou sqlserver
  // 0 - access; 1 - sqlserver;
  TipoBanco = 1;

var

  F_MSCOMEX: TF_MSCOMEX;
  v_sistema: string;
  v_versao : string;
  v_versao_s: string;
  v_empresa: string;
  v_empresanome:string;
  v_filial: string;
  v_filialnome: string;
  v_usuario: string;
  v_nomecompleto:string;
  v_email:string;
  v_nivel: string;
  v_distribui: integer;
  v_distribuic: integer;
  v_abreproc: integer;
  v_editaevento: integer;
  v_nivel_cc: string;
  v_path_server:string;
  deuerro:boolean;
  v_Inativa_Cliente:integer;
  v_Edita_cliente_inativo:integer;
  v_Fecha_Processo:integer;
  v_Edita_Processo_Fechado:integer;
  v_AlteraPRO:integer;
  v_Acessa_Patrimonio,v_Acessa_PARAFAT :integer;
  v_supervisor:string;
  v_supervisorc:string;
  v_autorizadocli: integer;
  v_atusiscomex: Boolean;
  v_dataFollow: string;
  v_dataFollowant: string;  
  v_frase1:string;
  v_usuarios: string;
  v_frasesok: Boolean;
  v_frases:string;
  v_user:string;
  v_pass:string;
  vpassa:integer;
  v_follow_liberado: integer;
  v_documentador : Boolean;
  v_digitalizador: integer;
  v_hora : string;
  v_hierarquia : integer;
  v_arquivista : Boolean;
  v_montador : Boolean;
  v_setor : String;
  v_registra_di : Integer;
  v_audita_di : Integer;
  v_ValorMinimoRegistroDI : Double;
  v_ValorMaximoRegistroDI : Double;  

  Contador60 : TContador;
  Cont, TamanhoHorizontal : integer;
  frases : TStringList;
implementation

uses U_about, U_parametros, U_empresas, U_usuarios, U_transportadores,
  U_exportadores, U_fabricantes, U_importadores,
  U_produtos, U_procuradores, U_locaisinv,
  U_armazens, u_fundarcr, U_atoslegais, U_tiposcargas,
  u_follow, u_contratos,
  u_clientes, u_fornec, u_plano, u_atosconce, U_conato, u_prefollowup,
  u_tiposnumer, u_status, u_parafat, u_conpastas, u_fatura,
  U_tipocred, u_tiposcustos, U_custos, u_notasfiscais, u_pendencias, u_conpendencias,
  u_termos, u_nfservicos, U_concertifi,
  u_trocanum, u_internet, u_contasp, U_contascorrentes,
  u_psfollowup, u_distribui, u_conresp, u_movcarga, U_ajudantes,
  u_reldesp, U_followaut, U_Traduz, U_Patrimonio, U_DebCredProc, u_taxassis,
  U_ContSoftware, u_urgentes, u_condocs, u_followcomercial, u_fantigo,
  u_movpastas, u_abertura, u_prodesembaraco, u_profollowup, u_proTR,
  u_prodidsi, u_proregistro, u_pronumerarios, u_proRCR, u_protributacao,
  u_proconhecimentos, u_procargas, u_profaturas, u_prodarjicms,
  u_RelNFServicos, U_fiadores, u_extratopro, u_RelCustoPer, u_RelCustoProc,u_proRPR,
  U_UnidadesMedida, u_Exoneracao, u_TiposAvisosAuto, u_CadAvisoAuto,
  u_tratICMS, u_fundICMS, u_relmovicc, u_cae, u_RelParamFat, u_ferGrev,
  u_CadConCor, u_relapucpmf, U_relDebCred, u_extratocc_clientes,
  u_ctrlTransmittal, U_ProcPorTipo, u_paramContab,
  u_Destinatario, u_solRegistros, u_AutorizacaoRegContas, u_solTraCla,
  u_PlaProcKoyo, u_consaldodesmem, u_fechamento, U_salminimos, u_AtuProc,
  U_acesso, u_RelEmail, u_extratopro_geral, u_controletracla,
  u_consultatracla, U_eventosgrupos, U_Relprestcontas, u_prodocinstru,
  u_paramSolNum, u_distribuiC, U_usuresp, U_ms2000plus, u_ctrPapeis,
  u_plaitens, u_ctrIPS, u_ctrTELEFONIA, u_ctrSENHAS, u_ctrLOGICA,
  u_ctrlTransocean, u_solCheques, u_ctrlBRASDRIL, u_proDTR,
  u_importadores_grupos, uControle_ADE_Andamento, uControle_ADE_Deferido,
  u_connavs, uControle_TVs_Main, uConsultas_Ramais, uControle_BL,
  uControle_TR, U_RCR_OBS_ESP, uPlataformas,
  uPlanilhaPrestacaoContasConsolidada, 
  u_pnlPrestContasFinanc, uControleHierarquico, uSolicitacaoNumerario,
  uAutorizacaoNumerario, u_agrupaclientes, uConsultaNumerario,
  u_vouchertransocean, u_avldesanalisedesempenho,
  u_avldesavaliacaocolaboradores, u_avldescontrolehierarquia,
  u_avldescadastroanalises, u_avldescadastrocompetencia,
  u_avldescadastroperguntas, u_proitens,
  u_avlrelresultadoindividualanalises, u_avlresultadoanalises, u_contasr,
  uGrafico, uAlerta_Atualizacao, u_relususet, u_gernormas, u_visuNorma,
  u_relquinzebrasdril, uHistoricoCheckFollow, u_visuNormaFinanceiro,
  u_visuNormaRH, u_visuNormaTI, u_visuNormaSGI,
  u_AutorizacaoRegContasClientes, u_controlenumerarios, u_recibos, u_ExportacaoArquivos,
  u_notasdebito, u_notascredito, u_declorigem,
  uNotaFiscalEletronicaExportacao, u_visuNormaSMS, uUpload_PDF,
  uHistoricoCheckPorUsuario, uNumerarioObrigatorio, u_checklist,
  u_formulario, u_CadastroPropostas, uHoraExtra, uRotatividade_Funcionario, u_ConsumoDeEnergia,
  uAcoesCorPre,uNaoConformidade,uAdesaoLaboral,u_ReqAgriculNovo,u_ReqAgriculNovo18122006,u_CapaDINit,u_CapaDISep,
  u_TermoSunDrawH,u_ReqAgricul,u_Sac, u_contratos_juridico,
  u_pnlPrestContasDespFinanc, uFrequencia_Acidente, u_contasapagar,
  u_associacao_numerarios_documentos, u_uploaddocumentos,
  u_controle_medicoes,  u_TaxasConversaoCambioAmanha, u_ExpModecNfe,
  uCalculoLubrizol, u_ExpOdfjellDI, u_pnlMedicaoHonorarios, u_TermosDeResponsabilidades,u_ATAereo;


function UserName : String;
var
lpBuffer : Array[0..20] of Char;
nSize : dWord;
Achou : boolean;
erro : dWord;
begin
nSize := 120;
Achou := GetUserName(lpBuffer,nSize);
if (Achou) then begin
result := lpBuffer;
end
else begin
Erro :=GetLastError();
result :=IntToStr(Erro);
end;
end;

function computerName : String;
var
lpBuffer : Array[0..20] of Char;
nSize : dWord;
Achou : boolean;
erro : dWord;
begin
nSize := 120;
Achou := GetComputerName(lpBuffer,nSize);
if (Achou) then begin
result := lpBuffer;
end
else begin
Erro :=GetLastError();
result :=IntToStr(Erro);
end;
end;

function LocalIP : string;
//
// Retorna o IP de sua máquina no momento em que
// você está conectado
//
// Declare a Winsock na clausula uses da unit
//
type
TaPInAddr = array [0..10] of PInAddr;
PaPInAddr = ^TaPInAddr;
var
phe  : PHostEnt;
pptr : PaPInAddr;
Buffer : array [0..63] of char;
I    : Integer;
GInitData      : TWSADATA;
begin
WSAStartup($101, GInitData);
Result := '';
GetHostName(Buffer, SizeOf(Buffer));
phe :=GetHostByName(buffer);
if phe = nil then
   begin
   Exit;
   end;
pptr := PaPInAddr(Phe^.h_addr_list);
I := 0;
while pptr^[I] <> nil do
      begin
      result:=StrPas(inet_ntoa(pptr^[I]^));
      Inc(I);
      end;
WSACleanup;
end;

Function GetHostName(strIPAddress : String) : String;
//
// Retorna o Host onde seu TCP/IP está conectado
//
// Requer a Winsock declarada na clausula uses da unit
//
Var
strHost          : String   ;
pszIPAddress     : PChar    ;
pReturnedHostEnt : PHostEnt ;
InternetAddr     : u_long   ;
GInitData        : TWSADATA ;
Begin
strHost := '';
If WSAStartup($101, GInitData) = 0 then
   Begin
   pszIPAddress := StrAlloc( Length( strIPAddress ) + 1 ) ;
   StrPCopy( pszIPAddress, strIPAddress ) ;
   InternetAddr := Inet_Addr(pszIPAddress) ;
   StrDispose( pszIPAddress ) ;
   pReturnedHostEnt := GetHostByAddr( PChar(@InternetAddr),4, PF_INET );
   try
     strHost := pReturnedHostEnt^.h_name;
     WSACleanup;
     Result := strHost ;
   except
     Result := 'Host inválido ou não encontrado';
   end;
   end;
end;

function WinsockEnabled: boolean;
//
// Testa se o Winsock está habilitado na maquina.
//
// Requer a Winsock declarada na clausula Uses da unit
//
var
  wsaData: TWSAData;
begin
  result := true;
  case Winsock.WSAStartup($0101, wsaData) of
    WSAEINVAL, WSASYSNOTREADY, WSAVERNOTSUPPORTED: result := false;
  else
    Winsock.WSACleanup;
  end;
end;

function RemoteConnection: boolean;
const
  Key = '\System\CurrentControlSet\Services\RemoteAccess';
  Value = 'Remote Connection';
var
  Reg: TRegistry;
  Buffer: DWord;
begin
  Result := false;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey(Key, false) then
    begin
      Reg.ReadBinaryData(Value, Buffer, SizeOf(Buffer));
      Result := Buffer = 1;
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;

///procedure TForm1.Button1Click(Sender: TObject);
//begin
///edit1.text := UserName;
///end;


const 
INTERNET_CONNECTION_MODEM      = 1; 
INTERNET_CONNECTION_LAN      = 2;
INTERNET_CONNECTION_PROXY      = 4;
INTERNET_CONNECTION_MODEM_BUSY      = 8;

//são estas duas funções:

function InternetGetConnectedState(lpdwFlags: LPDWORD; 
dwReserved: DWORD): BOOL; stdcall; external 'WININET.DLL'; 

function IsConnectedToInternet: Boolean;
var 
dwConnectionTypes: Integer; 
begin 
{try
 dwConnectionTypes := INTERNET_CONNECTION_MODEM +
INTERNET_CONNECTION_LAN +
INTERNET_CONNECTION_PROXY;
 if InternetGetConnectedState(@dwConnectionTypes, 0) then
   Result := true
 else
   Result := false;
except
 Result := false;
end;}
end;


{$R *.DFM}

procedure TF_MSCOMEX.atualizamoeda( oprocesso,qmoeda:string;qatuadm,qatucon:boolean);
var
  novataxa,vtaxa,vtaxac:real;
begin
  novataxa:=0;

  if t_cambio_m.findkey([qmoeda])
   then novataxa := t_cambio_mtaxa_conversao.asfloat;
  //achou moeda

  q_protaxaconv.Close;
  q_protaxaconv.ParamByName('Empresa').AsString  := t_parametrosempresa.asstring;
  q_protaxaconv.ParamByName('Filial').AsString   := t_parametrosfilial.asstring;
  q_protaxaconv.ParamByName('Processo').AsString := oprocesso;
  q_protaxaconv.ParamByName('Moeda').AsString    := qmoeda;
  q_protaxaconv.Open;

  if q_protaxaconv.RecordCount > 0
   then begin
     vtaxa  := novataxa;
     vtaxac := novataxa;

     if not qatuadm then vtaxa  := q_protaxaconvtaxa_conversao.asfloat;
     if not qatucon then vtaxac := q_protaxaconvtaxa_conversaoc.asfloat;

     q_upprotaxa.Close;
     q_upprotaxa.params[0].asfloat  := vtaxa;
     q_upprotaxa.params[1].asfloat  := vtaxac;
     q_upprotaxa.params[2].asstring := t_parametrosempresa.asstring;
     q_upprotaxa.params[3].asstring := t_parametrosfilial.asstring;
     q_upprotaxa.params[4].asstring := oprocesso;
     q_upprotaxa.params[5].asstring := qmoeda;

     q_upprotaxa.execsql;
   end
   else begin
     ///não achou moeda
     q_inprotaxa.Close;
     q_inprotaxa.params[0].asstring := t_parametrosempresa.asstring;
     q_inprotaxa.params[1].asstring := t_parametrosfilial.asstring;
     q_inprotaxa.params[2].asstring := oprocesso;
     q_inprotaxa.params[3].asstring := qmoeda;
     q_inprotaxa.params[4].asfloat  := novataxa;
     q_inprotaxa.params[5].asfloat  := novataxa;
     q_inprotaxa.execsql;
   end
end;

procedure TF_MSCOMEX.atualizataxaconversao(qprocesso:string);
var
  atuadm, atucon, moedafrete, moedaseguro, moedadesp : boolean;
begin
  if t_parametros.state = dsinactive
   then t_parametros.open;

  atuadm      := false;
  atucon      := false;
  moedafrete  := false;
  moedaseguro := false;
  moedadesp   := false;

  qrProcesso.Close;
  qrProcesso.ParamByName('Empresa').AsString := t_parametrosEmpresa.AsString;
  qrProcesso.ParamByName('Filial').AsString  := t_parametrosFilial.AsString;
  qrProcesso.ParamByName('Codigo').AsString  := qprocesso;
  qrProcesso.Open;

  qrConhecimento.Close;
  qrConhecimento.ParamByName('Empresa').AsString  := t_parametrosEmpresa.AsString;
  qrConhecimento.ParamByName('Filial').AsString   := t_parametrosFilial.AsString;
  qrConhecimento.ParamByName('Processo').AsString := qprocesso;
  qrConhecimento.Open;

  if t_cambio_m.state = dsinactive
   then t_cambio_m.open;

  t_cambio_m.Refresh;

  if (qrProcesso.RecordCount > 0)
   then begin
     if ((qrProcessotipo.asstring <> '12') and (qrProcessonr_declaracao_imp.asstring = ''))
      then begin
        atuadm := true;
        atucon := true;
      end
      else begin // processos tipo 12
        // atualiza taxas admissão
        if (qrProcessonr_declaracao_imp.asstring = '')
         then atuadm := true;

        // atualiza taxas consumo
        if (qrProcessonr_declaracao_impc.asstring = '')
         then atucon := true;
      end;

     if (atuadm or atucon)
      then begin
        //processa dolar para todos os processos
        atualizamoeda(qprocesso,'220',atuadm,atucon);

        {Leandro Serra - 25/03/2011 OBS: A conversão não era realizada quando existia apenas uma fatura.}
        q_faturas.close;
        q_faturas.SQL.Clear;
        q_faturas.SQL.add('SELECT MOEDA FROM FATURAS WHERE PROCESSO = '+ QuotedStr(qprocesso));
        q_faturas.Open;

        if q_faturas.RecordCount = 0
         then begin
           ShowMessage('A conversão não será concluída,p rocesso não foi encontrado na respectiva fatura.');
           Exit;
         end;

        if q_faturas.RecordCount = 1
         then begin
           if q_faturasmoeda.asstring <> '220'
            then atualizamoeda(qprocesso,q_faturasmoeda.asstring,atuadm,atucon);

           if q_faturasmoeda.asstring = qrConhecimentomoeda_frete.asstring
            then moedafrete  := true;

           if q_faturasmoeda.asstring = qrConhecimentomoeda_seguro.asstring
            then moedaseguro := true;

           if q_faturasmoeda.asstring = qrConhecimentoMoeda_Despesas_ate_FOB.asstring
            then moedadesp := true;
         end
         else begin
           q_faturas.first; {Antes 25/03/2011}

           while not q_faturas.eof do
            begin
              if q_faturasmoeda.asstring <> '220'
               then atualizamoeda(qprocesso, q_faturasmoeda.asstring, atuadm, atucon);

              if q_faturasmoeda.asstring = qrConhecimentomoeda_frete.asstring
               then moedafrete  := true;

              if q_faturasmoeda.asstring = qrConhecimentomoeda_seguro.asstring
               then moedaseguro := true;

              if q_faturasmoeda.asstring = qrConhecimentoMoeda_Despesas_ate_FOB.asstring
               then moedadesp := true;

              q_faturas.next;
            end;
        end;

        if qrConhecimentomoeda_frete.asstring = qrConhecimentomoeda_seguro.asstring
         then moedaseguro := true;

        if qrConhecimentomoeda_frete.asstring = qrConhecimentomoeda_Despesas_ate_FOB.asstring
         then moedadesp := true;

        if qrConhecimentomoeda_seguro.asstring = qrConhecimentomoeda_Despesas_ate_FOB.asstring
         then moedadesp := true;

        if ((not moedafrete)  and (qrConhecimentomoeda_frete.asstring <> ''))
         then atualizamoeda(qprocesso, qrConhecimentomoeda_frete.asstring, atuadm, atucon);

        if ((not moedaseguro) and (qrConhecimentomoeda_seguro.asstring <> ''))
         then atualizamoeda(qprocesso, qrConhecimentomoeda_seguro.asstring, atuadm, atucon);

        if ((not moedadesp) and (qrConhecimentoMoeda_Despesas_ate_FOB.asstring <> ''))
         then atualizamoeda(qprocesso, qrConhecimentoMoeda_Despesas_ate_FOB.asstring, atuadm, atucon);
     end;
   end;


end;

procedure TF_MSCOMEX.atualizacpastas(qprocesso:string);
begin
 {  Leandro Serra Ticket 1499 - 26/03/2012
 // f_mscomex.MSPGP(qprocesso);

  q_pasta.close;
  q_pasta.Params[0].AsString :=  qprocesso;
  q_pasta.open;

  if q_pasta.RecordCount > 0 then begin
        if trim(q_pastaUsuario.asstring) <> trim(v_usuario) then begin
          if messagedlg('A pasta deste processo atualmente localizada no usuário '+q_pastaUsuario.asstring +', encontra-se em seu poder?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
            ///atualizar movimentação de pastas
            T_movpastas_insert.Params[0].AsString   := t_parametrosempresa.asstring;
            T_movpastas_insert.Params[1].AsString   := t_parametrosfilial.asstring;
            T_movpastas_insert.Params[2].AsString   := qprocesso;
            T_movpastas_insert.Params[3].AsString   := q_pastaUsuario.asstring;
            T_movpastas_insert.Params[4].AsString   := v_usuario;
            T_movpastas_insert.Params[5].Asdatetime := date();
            T_movpastas_insert.Params[6].Asdatetime := time();
            q_pasta.close;
            T_movpastas_insert.ExecSQL;
            //atualizar localizacao
            q_atualizaPasta.Params[0].AsString := v_usuario;
            q_atualizaPasta.Params[1].AsString := qprocesso;
            q_atualizaPasta.ExecSQL;

          end;
        end;
  end else begin
        q_pasta.close;
        q_pasta_insert.Params[0].AsString   := t_parametrosempresa.asstring;
        q_pasta_insert.Params[1].AsString   := t_parametrosfilial.asstring;
        q_pasta_insert.Params[2].AsString   := qprocesso;
        q_pasta_insert.Params[3].AsString   := v_usuario;
        q_pasta_insert.ExecSQL;

        showmessage(v_usuario+', a pasta deste processo está atualmente localizada sem usuário/ARQUIVO!, foi registrado em seu poder.'+#13#10+' Para efetuar a movimentação correta da pasta. Favor entrar na opção de Controle de Pastas.');
  end;
 }//Fim Ticket 1499
{

if t_pastas.state     = dsinactive then t_pastas.open;
if t_movpastas.state  = dsinactive then t_movpastas.open;

if t_pastas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,qprocesso])then begin
   if trim(t_pastasusuario.asstring) <> trim(v_usuario) then begin
      if messagedlg('A pasta deste processo atualmente localizada no usuário '+t_pastasusuario.asstring +', encontra-se em seu poder?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
         ///atualizar movimentação de pastas
         t_movpastas.append;
         t_movpastasempresa.asstring  := t_parametrosempresa.asstring;
         t_movpastasfilial.asstring   := t_parametrosfilial.asstring;
         t_movpastasprocesso.asstring := qprocesso;
         t_movpastasde_usuario.asstring := t_pastasusuario.asstring;
         t_movpastaspara_usuario.asstring := v_usuario;
         t_movpastasdata.asdatetime := date();
         t_movpastashora.asdatetime := time();
         t_movpastas.post;
//         atualizar localizacao
         t_pastas.edit;
         t_pastasusuario.asstring := v_usuario;
         t_pastas.post;
      end
   end;
end
else begin

         t_pastas.append;
         t_pastasempresa.asstring    := t_parametrosempresa.asstring;
         t_pastasfilial.asstring     := t_parametrosfilial.asstring;
         t_pastasprocesso.asstring   := qprocesso;
         t_pastasusuario.asstring    := v_usuario;
         t_pastas.post;

      showmessage(v_usuario+', a pasta deste processo está atualmente localizada sem usuário/ARQUIVO!, foi registrado em seu poder.'+#13#10+' Para efetuar a movimentação correta da pasta. Favor entrar na opção de Controle de Pastas.');
end;
}

end;


procedure TF_MSCOMEX.Sobre1Click(Sender: TObject);
begin
    if not assigned (F_sobre) then Application.CreateForm(TF_sobre, F_sobre);
    F_sobre.show;
end;


procedure TF_MSCOMEX.FormCreate(Sender: TObject);
var
iInd      : Integer;
//sParametro: string;
begin

  v_user:='';
  v_pass:='';
  ////pegando paramentros externos do sistema
  for iInd := 1 to ParamCount do begin
    if iIND = 1 then v_user := ParamStr ( iInd );
    if iIND = 2 then v_pass := ParamStr ( iInd );
//    sParametro := upperCase ( ParamStr ( iInd ) );
//    if sParametro = 'SAIR' then begin
//      ShowMessage ( 'O Aplicativo sera FLAfinalizado.' );
//      Application.Terminate;
//    end;
//    ShowMessage ( sParametro );
  end;

    apaga_rpt();

    v_sistema  := 'MS2000Plus - Sistema Gerencial Aduaneiro';
    v_versao   := 'Versão Plus 2011 - SQL Server';
    v_versao_s := '22/08/2013-b';
    deuerro    := false;
    v_frasesok := false;

    Try
    DB_MSCOMEX.Params.Values['USER NAME'] := BDUser;
    DB_MSCOMEX.Params.Values['PASSWORD']  := BDSenha;
    DB_MSCOMEX.Connected := true;

    DB_LOGMSCOMEX.Params.Values['USER NAME'] := BDUser;
    DB_LOGMSCOMEX.Params.Values['PASSWORD']  := BDSenha;
    DB_LOGMSCOMEX.Connected := true;


   t_parametros.open;
   // eduardo.souza 09/11/2011
   //t_frases.open;
   //---
   v_path_server := t_parametrospath_server.asstring;

///    t_movusu.open;
///    showmessage('data do executável:'+datetostr(FileDateToDateTime(fileage('MS2000.EXE'))));
//    timer_versaoTimer(f_mscomex);
   TQRPDFFilter.Create(QRPDFFilter1);
    Except
    On E:Exception do begin
       SHOWMESSAGE('Erro de Conexão com o Banco de Dados. Verifique sua conexão de rede');
       f_mscomex.free;
       deuerro := true;
       f_mscomex.close;
       end;
    end;
//    showmessage(username);
//    wb1.navigate := 'http://www.logistic-ms.com.br/msscript/logms2000plus.asp';

//    gravaweb_log('','iniciou o sistema');

    Cont := 1;
end;

procedure TF_MSCOMEX.FormActivate(Sender: TObject);
begin
//     Left := 0;
//     Top  := 0;

{     h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w;  }

    f_mscomex.caption := v_sistema +' - '+  v_versao +' - Atualização: '+ v_versao_s;


end;

procedure TF_MSCOMEX.Usuarios1Click(Sender: TObject);
begin
    if inttostr(Usuarios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_usuarios) then Application.CreateForm(TF_usuarios, F_usuarios);
        Usuarios1.enabled := false;
        logusu('A','Acessou ao Cadastro de Usuários.');
        f_usuarios.show;
    end

end;

procedure TF_MSCOMEX.Transportadores1Click(Sender: TObject);
begin
    if inttostr(Transportadores1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_transportadores) then Application.CreateForm(TF_transportadores, F_transportadores);
        Transportadores1.enabled := false;
        logusu('A','Acessou ao Cadastro de Transportadores.');
        f_transportadores.show;
    end
end;

procedure TF_MSCOMEX.FormPaint(Sender: TObject);
begin
    if not deuerro then begin
    if f_mscomex.tag = 0 then begin
       {if not assigned (F_senha) then begin
          Application.CreateForm(TF_senha, F_senha);
          f_senha.showmodal;
       end;}
       f_mscomex.tag := 1;
    end;
    end;
end;

procedure TF_MSCOMEX.Exportadores1Click(Sender: TObject);
begin
    if inttostr(Exportadores1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_exportadores) then Application.CreateForm(TF_exportadores, F_exportadores);
        Exportadores1.enabled := false;
        logusu('A','Acessou ao Cadastro de Exportadores.');
        F_exportadores.show;
    end

end;

procedure TF_MSCOMEX.FabricantesProdutores1Click(Sender: TObject);
begin
    if inttostr(FabricantesProdutores1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_Fabricantes) then Application.CreateForm(TF_fabricantes, F_fabricantes);
        FabricantesProdutores1.enabled := false;
        logusu('A','Acessou ao Cadastro de Fabricantes.');
        F_fabricantes.show;
    end

end;

procedure TF_MSCOMEX.Importadores1Click(Sender: TObject);
begin
    if inttostr(Importadores1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_Importadores) then Application.CreateForm(TF_Importadores, F_Importadores);
        Importadores1.enabled := false;
        logusu('A','Acessou ao Cadastro de Importadores.');
        F_Importadores.show;
    end

end;

procedure TF_MSCOMEX.Sair1Click(Sender: TObject);
begin
f_mscomex.close;
end;

procedure TF_MSCOMEX.Produtos1Click(Sender: TObject);
begin
    {Leandro Serra - 27/12/2011 Ticket 1336}
    if inttostr(Produtos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        If Assigned(F_profaturas) Then
        begin
            ShowMessage('Não será possível cadastrar um produto enquanto estiver aberto o formulário da fatura.'+chr(13)+
                        'Por favor, para cadastrar um produto feche o formulário da fatura.');
            exit;
        end;

        If Assigned(F_proitens) Then
        begin
            ShowMessage('Não será possível cadastrar um produto enquanto estiver cadastrando itens da fatura.'+chr(13)+
                        'Por favor, para cadastrar um produto feche o formulário de itens da fatura.');
            exit;
        end
        else
        begin
          if not assigned (F_produtos) then Application.CreateForm(TF_produtos, F_produtos);
          Produtos1.enabled := false;
          logusu('A','Acessou ao Cadastro de Produtos.');
          F_produtos.show;
        end;
    end
end;

procedure TF_MSCOMEX.Procuradores1Click(Sender: TObject);
begin
    if inttostr(Procuradores1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_procuradores) then Application.CreateForm(TF_procuradores, F_procuradores);
        Procuradores1.enabled := false;
        logusu('A','Acessou ao Cadastro de Procuradores.');
        F_procuradores.show;
    end


end;

procedure TF_MSCOMEX.TiposLocaisdeInventrio1Click(Sender: TObject);
begin
    if inttostr(TiposLocaisdeInventrio1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_locaisinv) then Application.CreateForm(TF_locaisinv, F_locaisinv);
        TiposLocaisdeInventrio1.enabled := false;
        logusu('A','Acessou o Cadastro de Locais de Inventário.');
        F_locaisinv.show;
    end

end;

procedure TF_MSCOMEX.Armazens1Click(Sender: TObject);
begin
    if inttostr(Armazens1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_armazens) then Application.CreateForm(TF_armazens, F_armazens);
        Armazens1.enabled := false;
        logusu('A','Acessou o Cadastro de Armazéns.');
        F_armazens.show;
    end

end;

procedure TF_MSCOMEX.Timer2Timer(Sender: TObject);
var
//v_di:string;
//    i:integer;
    v_processo,vcambiod:string;
    v_cambio:boolean;
    vcambiodqtd:integer;
begin
  Timer2.enabled := false;
  
  v_cambio := true;
  vcambiod := '';
  vcambiodqtd := 0;
  v_atusiscomex := false;
  
  atusiscomexClick(f_mscomex);
end;

procedure TF_MSCOMEX.FundamentaoRCR1Click(Sender: TObject);
begin
    if inttostr(FundamentaoRCR1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_fundarcr) then Application.CreateForm(TF_fundarcr, F_fundarcr);
        FundamentaoRCR1.enabled := false;
        logusu('A','Acessou o Cadastro de Fundamentação de RCR.');
        F_fundarcr.show;
    end

end;

procedure TF_MSCOMEX.AtosLegais1Click(Sender: TObject);
begin
    if inttostr(AtosLegais1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_atoslegais) then Application.CreateForm(TF_atoslegais, F_atoslegais);
        AtosLegais1.enabled := false;
        logusu('A','Acessou o Cadastro de Atos Legais.');
        F_atoslegais.show;
    end

end;

procedure TF_MSCOMEX.TiposdeCargas1Click(Sender: TObject);
begin
    if inttostr(TiposdeCargas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_tipocargas) then Application.CreateForm(TF_tipocargas, F_tipocargas);
        TiposdeCargas1.enabled := false;
        logusu('A','Acessou o Cadastro de Tipos de Cargas');
        F_tipocargas.show;
    end

end;

procedure TF_MSCOMEX.EventosObservaesFOLLOWUP1Click(Sender: TObject);
begin
//    if inttostr(EventosObservaesFOLLOWUP1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    if (v_editaevento = 0) then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_follow) then Application.CreateForm(TF_follow, F_follow);
        EventosObservaesFOLLOWUP1.enabled := false;
        logusu('A','Acessou o Cadastro de Eventos e Observações de FOLLOW UP.');
        F_follow.show;
    end

end;

procedure TF_MSCOMEX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {*** eduardo.souza 26/12/2011 ***}
  {qryUpdate_Alerta_Atualizacao.ExecSQL;} // eduardo.souza 28/02/2012
  {*** ***}
        ///if deuerro then begin
        logusu('A','Finalizou acesso ao Sistema');        ///end;

        apaga_rpt();
        application.Terminate;

end;

procedure TF_MSCOMEX.Contratos2Click(Sender: TObject);
begin
    if inttostr(Contratos2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_contratos) then Application.CreateForm(TF_contratos, F_contratos);
        Contratos2.enabled := false;
        logusu('A','Acessou o Cadastro de Contratos.');
        F_contratos.show;
    end


end;

procedure TF_MSCOMEX.Clientes1Click(Sender: TObject);
begin
    if inttostr(Clientes1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_clientes) then Application.CreateForm(TF_clientes, F_clientes);
        Clientes1.enabled := false;
        logusu('A','Acessou o Cadastro de Clientes - Financeiro.');
        F_clientes.show;
    end

end;

procedure TF_MSCOMEX.PlanodeContas1Click(Sender: TObject);
begin
    if inttostr(PlanodeContas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_plano) then Application.CreateForm(TF_plano, F_plano);
        PlanodeContas1.enabled := false;
        logusu('A','Acessou o Cadastro de Plano de Contas.');
        F_plano.show;
    end

end;

procedure TF_MSCOMEX.AtosConcessorios1Click(Sender: TObject);
begin
    if inttostr(AtosConcessorios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_atosconce) then Application.CreateForm(TF_atosconce, F_atosconce);
        AtosConcessorios1.enabled := false;
        logusu('A','Acessou o Cadastro de Atos Concessórios.');
        F_atosconce.show;
    end

end;

procedure TF_MSCOMEX.AtosConcessrios1Click(Sender: TObject);
begin
    {if inttostr(AtosConcessrios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_conato) then Application.CreateForm(TF_conato, F_conato);
        AtosConcessrios1.enabled := false;
        logusu('A','Acessou a Consulta de Atos Concessórios.');
        F_conato.show;
    end}

end;

procedure TF_MSCOMEX.FollowUp1Click(Sender: TObject);
begin
   { if inttostr(FollowUp1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_prelfollowup) then Application.CreateForm(TF_prelfollowup, F_prelfollowup);
        FollowUp1.enabled := false;
        logusu('A','Acessou a Consulta de Follow Up.');
        F_prelfollowup.show;
    end  }

end;

procedure TF_MSCOMEX.Parmetros1Click(Sender: TObject);
begin
    if (v_Acessa_PARAFAT = 0) then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_parafat) then Application.CreateForm(TF_parafat, F_parafat);
        Parmetros1.enabled := false;
        logusu('A','Acessou Parâmetros de Faturamento.');
        F_parafat.show;

end;
end;

procedure TF_MSCOMEX.Processos2Click(Sender: TObject);
begin
    if inttostr(Processos2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_fatura) then Application.CreateForm(TF_fatura, F_fatura);
        Processos2.enabled := false;
        logusu('A','Acessou Faturamento/Processos.');
        F_fatura.show;
        end;

end;

procedure TF_MSCOMEX.TiposdeCrditos1Click(Sender: TObject);
begin
    if inttostr(TiposdeCrditos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_tipocred) then Application.CreateForm(TF_tipocred, F_tipocred);
        TiposdeCrditos1.enabled := false;
        logusu('A','Acessou Cadastro de Tipos de Créditos.');
        F_tipocred.show;
        end;

end;

procedure TF_MSCOMEX.Custos1Click(Sender: TObject);
begin
    if inttostr(Custos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_custos) then Application.CreateForm(TF_custos, F_custos);
        Custos1.enabled := false;
        logusu('A','Acessou Custos por Processo.');
        F_custos.show;
        end;


end;

procedure TF_MSCOMEX.Pendncias1Click(Sender: TObject);
begin
if not assigned (F_pendencias) then Application.CreateForm(TF_pendencias, F_pendencias);
F_pendencias.show;

end;

procedure TF_MSCOMEX.Pendncias2Click(Sender: TObject);
begin
    if inttostr(Pendncias2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_conpendencias) then Application.CreateForm(TF_conpendencias, F_conpendencias);
        Pendncias2.enabled := false;
        logusu('A','Acessou Consulta de Pendências por Usuário.');
        F_conpendencias.show;
        end;


end;

procedure TF_MSCOMEX.TermosdeResponsabilidade1Click(Sender: TObject);
begin
    if inttostr(termosderesponsabilidade1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_termos) then Application.CreateForm(TF_termos, F_termos);
        termosderesponsabilidade1.enabled := false;
        logusu('A','Acessou Consulta de Termos de Responsabilidades.');
        F_termos.show;
        end;


end;

procedure TF_MSCOMEX.Timer_termosTimer(Sender: TObject);
begin

if (v_nivel<>null) then begin
   if v_nivel <= '8' then begin
   timer_termos.Interval := 1800000;

   if MessageDlg('Deseja verificar documentos vencidos e a vencer?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      if not assigned (F_concertific) then Application.CreateForm(TF_concertific, F_concertific);
        logusu('A','Acessou Consulta de Documentos vencidos e a vencer.');
        F_concertific.show;
    end;
   end;
   timer_termos.enabled := false;
end;

end;

procedure TF_MSCOMEX.NotasFiscaisdeServios1Click(Sender: TObject);
begin
    if inttostr(NotasFiscaisdeServios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_nfservicos) then Application.CreateForm(TF_nfservicos, F_nfservicos);
        NotasFiscaisdeServios1.enabled := false;
        logusu('A','Acessou Notas Fiscais de Serviços.');
        F_nfservicos.show;
        end;

end;

procedure TF_MSCOMEX.Certificados1Click(Sender: TObject);
begin
if inttostr(Certificados1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_concertific) then Application.CreateForm(TF_concertific, F_concertific);
        Certificados1.enabled := false;
        logusu('A','Acessou Consulta de Certificados.');
        F_concertific.show;
        end;

end;

procedure TF_MSCOMEX.Timer_followTimer(Sender: TObject);
var qlin:integer;
    qdia:integer;

begin
if timer_follow.tag < 2 then begin
if v_usuario<>'' then begin
if (v_nivel<>null) then begin
   timer_follow.Interval := 1800000;
   qdia:=0;
   if MessageDlg(v_usuario+', deseja verificar Follow Up?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   if MessageDlg(v_usuario+', deseja verificar Follow Up de Ontem?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then qdia := 1;
   if not assigned (F_psfollowup) then Application.CreateForm(TF_psfollowup, F_psfollowup);
   q_follow.close;
///   if v_nivel<='5' then  q_follow.Params[0].AsString := '3'
///   else q_follow.Params[0].AsString := '1';
   ///q_follow.Params[0].Asdatetime := date();
   if v_nivel < '8' then begin
      if MessageDlg(v_usuario+', deseja verificar SOMENTE seu Follow Up?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then q_follow.Params[1].AsString := '%'+v_usuario+'%'
      else begin q_follow.Params[1].AsString := '%';
           if qdia = 0 then
              F_psfollowup.panel3.caption := 'ATENÇÃO !! Processos em andamento sem Follow Up na Data de Hoje'
           else
              F_psfollowup.panel3.caption := 'ATENÇÃO !! Processos em andamento sem Follow Up na Data de Ontem';
      end;
   end
   else q_follow.Params[1].AsString := '%'+v_usuario+'%';
   q_follow.open;

   if (q_follow.recordcount > 0) then begin
      F_psfollowup.b_fecha.enabled := false;
      F_psfollowup.label1.caption := '';
      F_psfollowup.panel2.visible := true;
      F_psfollowup.panel2.refresh;
      F_psfollowup.panel3.visible := true;
      F_psfollowup.panel3.refresh;
      F_psfollowup.panel4.visible := true;
      F_psfollowup.panel4.refresh;
      F_psfollowup.g_processa.MaxValue := q_follow.recordcount;
      F_psfollowup.g_processa.progress := 0;

      q_follow.first;
      F_psfollowup.sg_follow.rowcount := q_follow.recordcount+1;
      F_psfollowup.sg_follow.Cells[1,0] := 'Processo';
      F_psfollowup.sg_follow.Cells[2,0] := 'Cliente';
      F_psfollowup.sg_follow.Cells[3,0] := 'Status do Processo';
      F_psfollowup.sg_follow.Cells[4,0] := 'Usuário Pasta';
      F_psfollowup.sg_follow.Cells[5,0] := 'Responsável';
      qlin := 0;
      while not q_follow.eof do begin
            F_psfollowup.g_processa.progress := F_psfollowup.g_processa.progress+1;
            q_data.close;
            q_data.Params[0].AsString := q_followcodigo.asstring;
            q_data.Params[1].Asdatetime := (date()-qdia);
            q_data.open;
            if q_data.recordcount <= 0 then begin
               qlin := qlin+1;
               F_psfollowup.sg_follow.Cells[1,qlin] := q_followcodigo.asstring;
               F_psfollowup.sg_follow.Cells[2,qlin] := q_followRazao_Social.asstring;
               F_psfollowup.sg_follow.Cells[3,qlin] := q_followDESCRICAO.asstring;
               F_psfollowup.sg_follow.Cells[4,qlin] := q_followUsuario.asstring;
               F_psfollowup.sg_follow.Cells[5,qlin] := q_followresponsavel_empresa.asstring;
            end;
            q_follow.next;
      end;
      F_psfollowup.panel4.visible := False;
      if qlin > 0 then begin
         F_psfollowup.sg_follow.Visible := true;
         F_psfollowup.b_fecha.enabled := true;
         F_psfollowup.sg_follow.rowcount := qlin+1;
         F_psfollowup.label1.caption := 'Foram encontrados '+inttostr(qlin)+' processo(s).';
      end
      else begin
           Showmessage('PARABÉNS!! '+ v_usuario + #10#13#10#13 +'Todos os processos em andamento'+#10#13+'estão com o Follow Up Atualizado'+#10#13+'na data de hoje.'+#10#13#10#13+datetostr(date())+#10#13);
           F_psfollowup.sg_follow.Visible := false;
           F_psfollowup.panel2.visible := false;
      end;
   end
   else begin
        Showmessage('PARABÉNS!! '+ v_usuario + #10#13#10#13 +'Todos os processos em andamento'+#10#13+'estão com o Follow Up Atualizado'+#10#13+'na data de hoje.'+#10#13#10#13+datetostr(date())+#10#13);
        F_psfollowup.sg_follow.Visible := false;
        F_psfollowup.panel2.visible := false;
      end;
   end
   else b_fechaclick(f_mscomex);
end;

///verificando processos urgentes
if (timer_follow.tag = 2) or (timer_follow.tag = 0) then begin
   qdia:=0;
   if v_nivel<='7' then begin
     if MessageDlg(v_usuario+', Deseja verificar Processos URGENTES?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        if not assigned (F_urgentes) then Application.CreateForm(TF_urgentes, F_urgentes);
        f_urgentes.show;
     end
   end
   else b_fechaclick(f_mscomex);

end;
end;

end;
end;

procedure TF_MSCOMEX.b_fechaClick(Sender: TObject);
var fol,urg:boolean;
begin

   fol := false;
   urg := false;
   if (timer_follow.tag = 0) or (timer_follow.tag =1) then begin
      if MessageDlg('Deseja repetir este Aviso de Follow Up daqui à 30 minutos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         fol := true;
      end;
   end;
   if (timer_follow.tag = 0) or (timer_follow.tag =2) then begin
      if MessageDlg('Deseja repetir este Aviso de Processos Urgentes daqui à 30 minutos?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
         urg := true;
      end
   end;
   if (fol) and (urg) then timer_follow.tag := 0;
   if (fol) and (not urg) then timer_follow.tag := 1;
   if (not fol) and (urg) then timer_follow.tag := 2;
   if (not fol) and (not urg) then f_mscomex.timer_follow.enabled := false;

end;

procedure TF_MSCOMEX.SeuFollowUp1Click(Sender: TObject);
begin
     timer_follow.Interval := 1000;
     f_mscomex.timer_follow.enabled := true;
end;

procedure TF_MSCOMEX.DistribuicaoClick(Sender: TObject);
begin
    ////if inttostr(Distribuicao.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    if (v_distribui = 0)
     then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
     else begin
       if not assigned (F_distribui)
        then Application.CreateForm(TF_distribui, F_distribui);

       Distribuicao.enabled := false;
       logusu('A','Acessou o Módulo de Distribuição de Processos.');
       F_distribui.show;
    end;

end;

procedure TF_MSCOMEX.SuaResponsabilidade1Click(Sender: TObject);
begin
    if not assigned (F_resp) then Application.CreateForm(TF_resp, F_resp);
        logusu('A','Acessou o Módulo de Responsabilidade.');
        F_resp.show;
end;

procedure logusu(qmov,qdesc:string);

begin
  f_mscomex.q_in_movusu.Params[0].value := v_empresa;
  f_mscomex.q_in_movusu.Params[1].value := v_filial;
  f_mscomex.q_in_movusu.Params[2].value := v_usuario;
  f_mscomex.q_in_movusu.Params[3].value := qmov;
  f_mscomex.q_in_movusu.Params[4].value := qdesc;
  f_mscomex.q_in_movusu.Params[5].value := Date();
  f_mscomex.q_in_movusu.Params[6].value := Now();
  f_mscomex.q_in_movusu.execsql;
end;



procedure processamento(qtitulo:string;quantosreg:integer;fim:boolean);
var i,qprocessa :integer;

begin
if fim then begin
            if (f_mscomex.g_processa.progress < f_mscomex.g_processa.MaxValue) then begin
               qprocessa:=f_mscomex.g_processa.progress;
               for i:= 1 to (f_mscomex.g_processa.MaxValue-qprocessa) do begin
                   f_mscomex.g_processa.progress := f_mscomex.g_processa.progress+1;
                   f_mscomex.g_processa.refresh;
               end;
            end;
            f_mscomex.p_processa.visible := false;
            f_mscomex.g_processa.progress := 0;
            screen.cursor := crdefault;
       end
else begin
    screen.cursor := crhourglass;
    f_mscomex.l_processa.caption := v_usuario+' - '+qtitulo;
    f_mscomex.l_processa.refresh;
    f_mscomex.g_processa.MaxValue := quantosreg;
    if f_mscomex.g_processa.MaxValue = 0 then f_mscomex.g_processa.MaxValue := 100;
    f_mscomex.g_processa.progress := f_mscomex.g_processa.progress+1;
    if f_mscomex.g_processa.progress = f_mscomex.g_processa.MaxValue then f_mscomex.g_processa.progress := 0;
    f_mscomex.g_processa.refresh;
    f_mscomex.p_processa.visible := true;
    f_mscomex.p_processa.refresh;

end;

end;

procedure TF_MSCOMEX.timer_versaoTimer(Sender: TObject);
  var
    achoufrase: boolean;
    vregfrase: string;

begin
        ///if FileDateToDateTime(fileage('MS2000.EXE')) < t_parametrosdata_versao.asdatetime then begin
        //t_parametros.refresh;
        t_parametros.close;
        t_parametros.open;
        v_frase1 := '';
        if v_versao_s <> t_parametrosversao.asstring then begin
                if timer_versao.tag = 0 then begin
                        ///timer_versao.interval := 50000;
                        if ( t_parametrosAlerta_Atualizacao.asinteger = 0 )then begin
                          timer_versao.tag := 1;
                          showMessage('É necessário atualizar MS2000 em sua estação. O sistema será finalizado.');
                          /// timer_versao.tag := 0;
                          ///f_mscomex.close;
                          application.Terminate;
                        end
                        else begin
                          //eduardo.souza 26/12/2011
                          timer_versao.Enabled := False;
                          Chamar_Alerta_Atualizacao();
                          Contador60 := TContador.Create(True);
                          Contador60.FreeOnTerminate := true;
                          Contador60.Resume;
                          Controle_Alerta_Atualizacao.Enabled := true;
                          {
                          while Not Contador60.Terminated do begin
                            Application.ProcessMessages;
                          end;
                          }
                          //timer_versao.Enabled := True;
                          //application.Terminate;
                          //---
                        end;
                end;
        end;
        {
        if FileDateToDateTime(fileage('MS2000.EXE')) > t_parametrosdata_versao.asdatetime then begin
                t_parametros.edit;
                t_parametrosdata_versao.asdatetime := FileDateToDateTime(fileage('MS2000.EXE'));
                t_parametros.post;

        end;
        }

        { eduardo.souza  09/12/2011
        if vpassa=1 then begin
                randomize;
                //t_frases.FindKey([50]);

                //t_frases.MoveBy(random(100));

               /// showMessage(t_fraseSfrase.asstring);
                //t_frases.First;

                achoufrase := false;
                IF t_frases.eof THEN
                t_frases.First;

                v_frase1  := t_fraseSfrase.asstring;
                vregfrase := t_fraseSreg.asstring;

                if (pos('|'+vregfrase+'|',v_frases)>0) then achoufrase := true;

                while (not t_frases.eof) and (achoufrase) do begin

                           v_frase1  := t_fraseSfrase.asstring;
                           vregfrase := t_fraseSreg.asstring;

                         //  showMessage('PERCORRENDO... ->  '+v_frase1);

                           if (pos('|'+vregfrase+'|',v_frases)=0) then achoufrase := false;

                           t_frases.next;
                 end;

                 if achoufrase then begin
                        t_frases.first;
                        v_frase1  := t_fraseSfrase.asstring;
                        vregfrase := t_fraseSreg.asstring;
                        v_frases := '';
                 end;

                        //   (t_frases.eof) and (v_frase1=t_fraseSfrase.asstring) then t_frases.first;

              //  end;

               // v_frase1 := t_fraseSfrase.asstring;
                // eduardo.souza  09/12/2011
                //v_frases := v_frases+'|'+vregfrase+'|';
                ///---
                //if v_frasesok then f_ms2000plus.L_frases.caption :=  t_fraseSfrase.asstring;
                //if v_frasesok then f_ms2000plus.L_versao.caption :=  t_fraseSfrase.asstring;
                if v_frasesok then begin
                        f_ms2000plus.m_frases.clear;
                        f_ms2000plus.m_frases.Lines.Add(t_fraseSfrase.asstring);
                end;
                vpassa := 0;
        end
        else begin
                vpassa := vpassa+1;
        end;
        }
        f_ms2000plus.label1.caption := v_sistema;
        f_ms2000plus.L_versao.caption := v_versao+' - '+v_versao_s;
        //showmessage('aqui...>'+inttostr(t_frases.reg));
        //showMessage('aqui...>'+v_frase1);
end;

procedure TF_MSCOMEX.MovimentaoCargaDescarga1Click(Sender: TObject);
begin
if inttostr(MovimentaoCargaDescarga1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_movcarga) then Application.CreateForm(TF_movcarga, F_movcarga);
        MovimentaoCargaDescarga1.enabled := false;
        logusu('A','Acessou Movimentação Carga/Descarga.');
        F_movcarga.show;
        end;

end;

procedure TF_MSCOMEX.AjudantesdeDespachante1Click(Sender: TObject);
begin
    if inttostr(AjudantesdeDespachante1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_ajudantes) then Application.CreateForm(TF_ajudantes, F_ajudantes);
        AjudantesdeDespachante1.enabled := false;
        logusu('A','Acessou ao Cadastro de Ajudantes de Despachantes.');
        F_ajudantes.show;
    end
end;

procedure TF_MSCOMEX.t_atualizanetPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
//showmessage('Erro gravação da atualização Internet... Avise ao suporte.');
action := daRetry;
end;

procedure TF_MSCOMEX.DespesasMensais1Click(Sender: TObject);
begin
    if inttostr(DespesasMensais1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_reldesp) then Application.CreateForm(TF_reldesp, F_reldesp);
        DespesasMensais1.enabled := false;
        logusu('A','Acessou ao Relatório de Despesas Mensais.');
        F_reldesp.show;
    end


end;

procedure TF_MSCOMEX.Tradues1Click(Sender: TObject);
begin
    if inttostr(Tradues1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_traduz) then Application.CreateForm(TF_traduz, F_traduz);
        Tradues1.enabled := false;
        logusu('A','Acessou ao Módulo de Traduções.');
        F_traduz.show;
    end

end;

procedure TF_MSCOMEX.Patrimnio1Click(Sender: TObject);
begin
///    if ((inttostr(Patrimnio1.tag) < v_nivel) and (v_usuario<>'DUDA')) then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
/// alterado em 02/08/2005 - MM - Thundercats!!! OU HE-MAN!!! o Diniz é quem sabe... ele diz que Homem... igual ao troca troca do Welington...
    if (v_Acessa_Patrimonio = 0) then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_patrimonio) then Application.CreateForm(TF_patrimonio, F_patrimonio);
        Patrimnio1.enabled := false;
        logusu('A','Acessou ao Módulo de Controle de Patrimônio.');
        F_patrimonio.show;
    end

end;

procedure TF_MSCOMEX.DbitosCrditosporProcesso1Click(Sender: TObject);
begin
    if inttostr(DbitosCrditosporProcesso1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_debcredproc) then Application.CreateForm(TF_debcredproc, F_debcredproc);
        DbitosCrditosporProcesso1.enabled := false;
        logusu('A','Acessou o Relatório de Débitos/Créditos por Processo.');
        F_debcredproc.show;
    end

end;

procedure TF_MSCOMEX.TaxasdeConversoSISCOMEX1Click(Sender: TObject);
begin
    if not assigned (F_taxas) then Application.CreateForm(TF_taxas, F_taxas);
        logusu('A','Acessou o consulta taxas de conversão - SISCOMEX.');
        F_taxas.show;

end;

procedure TF_MSCOMEX.ControledeSoftwares1Click(Sender: TObject);
begin
    if inttostr(ControledeSoftwares1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_contsoftware) then Application.CreateForm(TF_contsoftware, F_contsoftware);
        ControledeSoftwares1.enabled := false;
        logusu('A','Acessou ao Módulo de Controle de Softwares.');
        F_contsoftware.show;
    end

end;

procedure TF_MSCOMEX.ControledeDocumentos1Click(Sender: TObject);
begin
    if not assigned (F_condocs) then Application.CreateForm(TF_condocs, F_condocs);
        logusu('A','Acessou o módulo de controle de documentos.');
        F_condocs.show;


end;

procedure TF_MSCOMEX.ControleFollowUpComercial1Click(Sender: TObject);
begin
    if not assigned (f_followcomercial) then Application.CreateForm(Tf_followcomercial, f_followcomercial);
        logusu('A','Acessou o módulo de controle de follow up comercial.');
        f_followcomercial.show;


end;

procedure TF_MSCOMEX.FollowUpprocessosantigos1Click(Sender: TObject);
begin
    if not assigned (f_fantigo) then Application.CreateForm(Tf_fantigo, f_fantigo);
       logusu('A','Acessou o módulo de follow up antigo.');
        f_fantigo.show;


end;

procedure TF_MSCOMEX.MovimentaodePastas1Click(Sender: TObject);
begin
if inttostr(MovimentaodePastas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_movpastas) then Application.CreateForm(TF_movpastas, F_movpastas);
        MovimentaodePastas1.enabled := false;
        logusu('A','Acessou Consulta de Movimentação de Pastas.');
        F_movpastas.show;
        end;


end;

procedure TF_MSCOMEX.Abertura1Click(Sender: TObject);
begin
if inttostr(Abertura1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_abertura) then Application.CreateForm(TF_abertura, F_abertura);
        Abertura1.enabled := false;
        logusu('A','Acessou Módulo de Abertura de Processos.');
        F_abertura.show;
        end;
end;

procedure TF_MSCOMEX.Desembarao1Click(Sender: TObject);
begin
if inttostr(Desembarao1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_prodesembaraco) then Application.CreateForm(TF_prodesembaraco, F_prodesembaraco);
        Desembarao1.enabled := false;
        logusu('A','Acessou Módulo de Desembaraços de Processos.');
        F_prodesembaraco.show;
        end;
end;

procedure TF_MSCOMEX.ControledePastas2Click(Sender: TObject);
begin
    if not assigned (F_conpastas) then Application.CreateForm(TF_conpastas, F_conpastas);
        logusu('A','Acessou o módulo de controle de Pastas.');
        ControledePastas2.enabled := false;
        F_conpastas.show;
end;

procedure TF_MSCOMEX.ControledeDocumentos2Click(Sender: TObject);
begin
    if not assigned (F_condocs) then Application.CreateForm(TF_condocs, F_condocs);
        ControledeDocumentos2.enabled := false;
        logusu('A','Acessou o módulo de controle de documentos.');
        F_condocs.show;
end;

procedure TF_MSCOMEX.ControleFollowUpComercial2Click(Sender: TObject);
begin
   if not assigned (f_followcomercial) then Application.CreateForm(Tf_followcomercial, f_followcomercial);
        logusu('A','Acessou o módulo de controle de follow up comercial.');
        f_followcomercial.show;
end;

procedure TF_MSCOMEX.TaxasdeConversoSISCOMEX2Click(Sender: TObject);
begin
  if not assigned (F_taxas) then Application.CreateForm(TF_taxas, F_taxas);
        logusu('A','Acessou o consulta taxas de conversão - SISCOMEX.');
        F_taxas.show;
end;

procedure TF_MSCOMEX.FollowUp2Click(Sender: TObject);
begin
if inttostr(FollowUp2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_profollowup) then Application.CreateForm(TF_profollowup, F_profollowup);
        FollowUp2.enabled := false;
        logusu('A','Acessou Módulo de Follow Up de Processos.');
        F_profollowup.show;
        end;

end;

procedure TF_MSCOMEX.TR1Click(Sender: TObject);
begin
if inttostr(tr1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_proTR) then Application.CreateForm(TF_proTR, F_proTR);
        TR1.enabled := false;
        logusu('A','Acessou Módulo de TR - Termos de Responsabilidade.');
        F_proTR.show;
        end;


end;

procedure TF_MSCOMEX.DIDSI1Click(Sender: TObject);
begin
if inttostr(DIDSI1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_prodidsi) then Application.CreateForm(TF_prodidsi, F_prodidsi);
        DIDSI1.enabled := false;
        logusu('A','Acessou Módulo de DI / DSI.');
        F_prodidsi.show;
        end;

end;

procedure TF_MSCOMEX.RegistrodeChegada1Click(Sender: TObject);
begin
if inttostr(RegistrodeChegada1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_proregistro) then Application.CreateForm(TF_proregistro, F_proregistro);
        RegistrodeChegada1.enabled := false;
        logusu('A','Acessou Módulo de Registro de Chegada.');
        F_proregistro.show;
        end;

end;

procedure TF_MSCOMEX.Numerrios1Click(Sender: TObject);
begin
if inttostr(Numerrios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_pronumerarios) then Application.CreateForm(TF_pronumerarios, F_pronumerarios);
        Numerrios1.enabled := false;
        logusu('A','Acessou Módulo de Numerários.');
        F_pronumerarios.show;
        end;

end;

procedure TF_MSCOMEX.RCR1Click(Sender: TObject);
begin
if inttostr(RCR1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_proRCR) then Application.CreateForm(TF_proRCR, F_proRCR);
        RCR1.enabled := false;
        logusu('A','Acessou Módulo de RCR.');
        F_proRCR.show;
        end;

end;

procedure TF_MSCOMEX.Tributao1Click(Sender: TObject);
begin
if inttostr(tributao1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_protributacao) then Application.CreateForm(TF_protributacao, F_protributacao);
        tributao1.enabled := false;
        logusu('A','Acessou Módulo de Tributação.');
        F_protributacao.show;
        end;


end;

procedure TF_MSCOMEX.Conhecimentos1Click(Sender: TObject);
begin
if inttostr(Conhecimentos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_proconhecimentos) then Application.CreateForm(TF_proconhecimentos, F_proconhecimentos);
        Conhecimentos1.enabled := false;
        logusu('A','Acessou Módulo de Conhecimentos de Transporte.');
        F_proconhecimentos.show;
        end;

end;

procedure TF_MSCOMEX.Cargas1Click(Sender: TObject);
begin
if inttostr(Cargas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_procargas) then Application.CreateForm(TF_procargas, F_procargas);
        Cargas1.enabled := false;
        logusu('A','Acessou Módulo de informações de Cargas.');
        F_procargas.show;
        end;

end;

procedure TF_MSCOMEX.Faturas1Click(Sender: TObject);
begin
if inttostr(Faturas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_profaturas) then Application.CreateForm(TF_profaturas, F_profaturas);
        Faturas1.enabled := false;
        logusu('A','Acessou Módulo de Faturas.');
        F_profaturas.show;
        end;

end;


procedure TF_MSCOMEX.DARJICMS1Click(Sender: TObject);
begin
///showmessage(v_usuario+', muita calma nessa hora... estamos desemvolvendo o icms... quem sabe amanhã... ');

if inttostr(DARJICMS1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_prodarjicms) then Application.CreateForm(TF_prodarjicms, F_prodarjicms);
        DARJICMS1.enabled  := false;
        logusu('A','Acessou Módulo de DARJ - ICMS.');
        F_prodarjicms.show;
        end;

end;

procedure TF_MSCOMEX.NotasFiscaisdeServios2Click(Sender: TObject);
begin
if inttostr(NotasFiscaisdeServios2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_relnfservicos) then Application.CreateForm(TF_relnfservicos, F_relnfservicos);
        NotasFiscaisdeServios2.enabled  := false;
        logusu('A','Acessou Relatório de Notas Fiscais de Serviços.');
        F_relnfservicos.show;
        end;

end;



procedure TF_MSCOMEX.Fiadores1Click(Sender: TObject);
begin
if inttostr(Fiadores1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_Fiadores) then Application.CreateForm(TF_Fiadores, F_Fiadores);
        Fiadores1.enabled  := false;
        logusu('A','Acessou Cadastro de Fiadores.');
        F_Fiadores.show;
        end;

end;

procedure TF_MSCOMEX.ExtratodeProcessos1Click(Sender: TObject);
begin
if inttostr(ExtratodeProcessos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_extratopro) then Application.CreateForm(TF_extratopro, F_extratopro);
        ExtratodeProcessos1.enabled  := false;
        logusu('A','Acessou Consulta de Extrato de Processos.');
        F_extratopro.show;
        end;

end;

procedure TF_MSCOMEX.Perodo1Click(Sender: TObject);
begin
if inttostr(Perodo1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_RelCustoPer) then Application.CreateForm(TF_RelCustoPer, F_RelCustoPer);
        Perodo1.enabled  := false;
        logusu('A','Acessou Consulta de Custos por Período.');
        F_RelCustoPer.show;
        end;


end;

procedure TF_MSCOMEX.Processo1Click(Sender: TObject);
begin
if inttostr(Processo1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_RelCustoProc) then Application.CreateForm(tF_RelCustoProc, F_RelCustoProc);
        Processo1.enabled  := false;
        logusu('A','Acessou Consulta de Custos por Processo.');
        F_RelCustoProc.show;
        end;

end;

procedure TF_MSCOMEX.RPR1Click(Sender: TObject);
begin
if inttostr(RCR1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_proRPR) then Application.CreateForm(TF_proRPR, F_proRPR);
        RPR1.enabled := false;
        logusu('A','Acessou Módulo de RPR.');
        F_proRPR.show;
        end;

end;


procedure TF_MSCOMEX.UnidadesdeMedida1Click(Sender: TObject);
begin
    if inttostr(UnidadesdeMedida1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_UnidadeMedida) then Application.CreateForm(Tf_UnidadeMedida, f_UnidadeMedida);
        UnidadesdeMedida1.enabled := false;
        logusu('A','Acessou Cadastro de Unidades de Medida.');
        f_UnidadeMedida.show;
        end;


end;

procedure TF_MSCOMEX.GuiadeExoneraoICMS1Click(Sender: TObject);
begin
if inttostr(GuiadeExoneraoICMS1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_Exoneracao) then Application.CreateForm(Tf_Exoneracao, f_Exoneracao);
        GuiadeExoneraoICMS1.enabled  := false;
        logusu('A','Acessou Módulo Guia de Exoneração - ICMS.');
        f_Exoneracao.show;
        end;

end;

procedure TF_MSCOMEX.TiposdeAvisos1Click(Sender: TObject);
begin
if inttostr(TiposdeAvisos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_TiposAvisosAuto) then Application.CreateForm(Tf_TiposAvisosAuto, f_TiposAvisosAuto);
        TiposdeAvisos1.enabled  := false;
        logusu('A','Acessou Módulo Tipos de avisos automáticos.');
        f_TiposAvisosAuto.show;
        end;


end;

procedure TF_MSCOMEX.Avisos1Click(Sender: TObject);
begin
if inttostr(Avisos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_CadAvisoAuto) then Application.CreateForm(Tf_CadAvisoAuto, f_CadAvisoAuto);
        Avisos1.enabled  := false;
        logusu('A','Acessou Módulo Avisos automáticos.');
        f_CadAvisoAuto.show;
        end;

end;

procedure TF_MSCOMEX.TratamentoTributrioICMS1Click(Sender: TObject);
begin
if inttostr(TratamentoTributrioICMS1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_tratICMS) then Application.CreateForm(Tf_tratICMS, f_tratICMS);
        TratamentoTributrioICMS1.enabled  := false;
        logusu('A','Acessou Módulo Tratamento Tributário ICMS.');
        f_tratICMS.show;
        end;

end;

procedure TF_MSCOMEX.FundamentoLegalICMS1Click(Sender: TObject);
begin
if inttostr(FundamentoLegalICMS1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_fundICMS) then Application.CreateForm(Tf_fundICMS, f_fundICMS);
        FundamentoLegalICMS1.enabled  := false;
        logusu('A','Acessou Módulo Fundamento Legal ICMS.');
        f_fundICMS.show;
        end;

end;

procedure TF_MSCOMEX.CAE1Click(Sender: TObject);
begin
if inttostr(CAE1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_CAE) then Application.CreateForm(Tf_CAE, f_CAE);
        CAE1.enabled  := false;
        logusu('A','Acessou Cadastro CAE.');
        f_CAE.show;
        end;



end;

procedure TF_MSCOMEX.ParmetrosdeFaturamento1Click(Sender: TObject);
begin
if inttostr(ParmetrosdeFaturamento1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_RelParamFat) then Application.CreateForm(Tf_RelParamFat, f_RelParamFat);
        ParmetrosdeFaturamento1.enabled  := false;
        logusu('A','Acessou Relatório de Parametrs de faturamento.');
        f_RelParamFat.show;
        end;


end;

procedure TF_MSCOMEX.FeriadosGreves1Click(Sender: TObject);
begin
if inttostr(FeriadosGreves1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_FerGrev) then Application.CreateForm(Tf_FerGrev, f_FerGrev);
        FeriadosGreves1.enabled  := false;
        logusu('A','Acessou Cadastro de Feriados e Greves.');
        f_FerGrev.show;
        end;
end;

procedure TF_MSCOMEX.Movimentaes1Click(Sender: TObject);
begin
if inttostr(Movimentaes1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_contascorrentes) then Application.CreateForm(TF_contascorrentes, F_contascorrentes);
        Movimentaes1.enabled := false;
        logusu('A','Acessou Movimentações de Contas Correntes.');
        F_contascorrentes.show;
        end;

end;

procedure TF_MSCOMEX.Cadastro1Click(Sender: TObject);
begin
if inttostr(Cadastro1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_cadconcor) then Application.CreateForm(TF_cadconcor, F_cadconcor);
        Cadastro1.enabled := false;
        logusu('A','Acessou Cadastro de Contas Correntes.');
        F_cadconcor.show;
        end;

end;

procedure TF_MSCOMEX.ApuraodeCPMF1Click(Sender: TObject);
begin
if inttostr(ApuraodeCPMF1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_RELapucpmf) then Application.CreateForm(TF_relapucpmf, F_relapucpmf);
        ApuraodeCPMF1.enabled := false;
        logusu('A','Acessou Relatório de Apuração de CPMF.');
        F_RELAPUCPMF.show;
        end;

end;

procedure TF_MSCOMEX.PlanilhaExcelDbitosCrditosporProcesso1Click(
  Sender: TObject);
begin
if inttostr(PlanilhaExcelDbitosCrditosporProcesso1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_RELdebcred) then Application.CreateForm(TF_reldebcred, F_reldebcred);
        PlanilhaExcelDbitosCrditosporProcesso1.enabled := false;
        logusu('A','Acessou Planilha Excel Débitos/créditos por processos.');
        F_RELdebcred.show;
        end;

end;

procedure TF_MSCOMEX.ExtratoContaCorrenteClientes1Click(Sender: TObject);
begin
if inttostr(ExtratoContaCorrenteClientes1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_extratocc_clientes) then Application.CreateForm(Tf_extratocc_clientes, f_extratocc_clientes);
        ExtratoContaCorrenteClientes1.enabled := false;
        logusu('A','Acessou Extrato Conta Corrente Clientes.');
        f_extratocc_clientes.show;
        end;

end;

procedure TF_MSCOMEX.ProcessosporTipo1Click(Sender: TObject);
begin
if inttostr(ProcessosporTipo1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_procPorTipo) then Application.CreateForm(Tf_procPorTipo, f_procPorTipo);
        ProcessosporTipo1.enabled := false;
        logusu('A','Acessou Consulta de Processo por Tipo.');
        f_procPorTipo.show;
        end;
end;

procedure TF_MSCOMEX.ParmetrosContabilizao1Click(Sender: TObject);
begin
    if inttostr(Parmetros1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_paramcontab) then Application.CreateForm(TF_paramcontab, F_paramcontab);
        ParmetrosContabilizao1.enabled := false;
        logusu('A','Acessou Parâmetros de Faturamento de Contabilização.');
        F_paramcontab.show;

end;

end;

procedure TF_MSCOMEX.ControledeSolicitaesdeCheques1Click(Sender: TObject);
begin
    if inttostr(ControledeSolicitaesdeCheques1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_solCheques) then Application.CreateForm(Tf_solCheques, f_solCheques);
        ControledeSolicitaesdeCheques1.enabled := false;
        logusu('A','Acessou Controle de Solicitações de Cheques.');
        f_solCheques.show;
     end;
end;

procedure TF_MSCOMEX.ControledeTransmittal2Click(Sender: TObject);
begin
if inttostr(ControledeTransmittal2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_ctrlTransmittal) then Application.CreateForm(Tf_ctrlTransmittal, f_ctrlTransmittal);
        ControledeTransmittal2.enabled := false;
        logusu('A','Acessou Controle de Transmittal.');
        f_ctrlTransmittal.show;
        end;
end;

procedure TF_MSCOMEX.CadastrodeDestinatrios1Click(Sender: TObject);
begin
if inttostr(CadastrodeDestinatrios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_destinatario) then Application.CreateForm(Tf_destinatario, f_destinatario);
        CadastrodeDestinatrios1.enabled := false;
        logusu('A','Acessou Controle de Transmittal - Cadastro de Destinatários.');
        f_destinatario.show;
        end;
end;

procedure TF_MSCOMEX.ControledeSolicitaesdeAutorizaodeRegistros2Click(
  Sender: TObject);
begin
if inttostr(ControledeSolicitaesdeAutorizaodeRegistros2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_solRegistros) then Application.CreateForm(Tf_solRegistros, f_solRegistros);
        ControledeSolicitaesdeAutorizaodeRegistros2.enabled := false;
        logusu('A','Acessou Controle de Solicitações de Autorização de Registros.');
        f_solRegistros.show;
        end;
end;


procedure TF_MSCOMEX.CadastrodeContas1Click(Sender: TObject);
begin
if inttostr(CadastrodeContas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_AutorizacaoRegContas) then Application.CreateForm(Tf_AutorizacaoRegContas, f_AutorizacaoRegContas);
        CadastrodeContas1.enabled := false;
        logusu('A','Acessou Cadastro de Contas de Autorização de Registros.');
        f_AutorizacaoRegContas.show;
        end;

end;

procedure TF_MSCOMEX.ControledeTraduoeClassificao1Click(Sender: TObject);
begin
if inttostr(ControledeTraduoeClassificao1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_solTraCla) then Application.CreateForm(Tf_solTraCla, f_solTraCla);
        ControledeTraduoeClassificao1.enabled := false;
        logusu('A','Acessou Controle de Solicitações de Tradução e Classificação.');
        f_solTraCla.show;
        end;


end;

procedure TF_MSCOMEX.Valoressemdesmembramento1Click(Sender: TObject);
begin
if inttostr(Valoressemdesmembramento1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_consaldodesmem) then Application.CreateForm(Tf_consaldodesmem, f_consaldodesmem);
        Valoressemdesmembramento1.enabled := false;
        logusu('A','Acessou Financeiro/Consultas/Valores Sem Desmembramento.');
        f_consaldodesmem.show;
        end;

end;

procedure TF_MSCOMEX.Fechamento1Click(Sender: TObject);
begin
    if inttostr(Fechamento1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else
    begin
        If (v_Fecha_Processo = 1)  then
        begin
                if not assigned (f_fechamento) then Application.CreateForm(TF_fechamento, F_fechamento);
                Fechamento1.enabled := false;
                logusu('A','Acessou Módulo de Fechamento de Processos.');
                F_fechamento.show;
        end
        else
        begin
                Showmessage(v_usuario+', Somente usuários habilitados em fechar processos poderão ter acesso a esta opção.');
         end;
    end;
end;

procedure TF_MSCOMEX.SalriosMnimos1Click(Sender: TObject);
begin
  if inttostr(SalriosMnimos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
          if not assigned (F_salminimos) then Application.CreateForm(TF_salminimos, F_salminimos);
          SalriosMnimos1.enabled := false;
          logusu('A','Acessou o Cadastro de Salários Mínimos.');
          F_salminimos.show;
  end
end;

procedure gravaweb_log(qusums,qinfo : String);
var qip,qmaq,qusu,qinfo2:string;

begin
{If IsConnectedToInternet then begin
//if RemoteConnection() then begin
//if WinsockEnabled then begin
    qip    := localip;
    qmaq   := ComputerName;
    qusu   := username;

//    qusums := '';
    qinfo2  := qinfo+' - Empresa: '+v_empresanome+' - Filial: '+v_filialnome;
    qinfo2 := qinfo2+' - Sistema: '+v_sistema+' - Versão: '+v_versao+' - Atualização: '+v_versao_s; //'Conectado ao HOST: '+GetHostName(qip)+' ';
    f_senha.WB1.Navigate(WideString('www.logistic-ms.com.br/msscript/logms2000plus.asp?qip='+qip+'&qmaq='+qmaq+'&qusu='+qusu+'&qusums='+qusums+'&qinfo='+qinfo2));
//end;
end;}

end;


procedure TF_MSCOMEX.q_menuAfterOpen(DataSet: TDataSet);
var
  a, b, c, d : integer;
  ACESSA_A, ACESSA_B, ACESSA_C, ACESSA_D : boolean;
begin
  for a:= 0 to (MainMenu1.Items.Count-1) do
   begin
     if q_menu.Locate('Menu',MainMenu1.Items[a].Tag,[])
      then begin
        //showmessage('achou->'+MainMenu1.Items[a].Caption+'->'+inttostr(MainMenu1.Items[a].TAG));
        ACESSA_A := True;
        MainMenu1.Items[a].Tag := strtoint(q_menunivel.asstring);
      end
      else begin
        //showmessage('NÃO ACHOU--->'+MainMenu1.Items[a].Caption);
        ACESSA_A := False;
      end;

     MainMenu1.Items[a].Enabled := ACESSA_A;

     for b:= 0 to (MainMenu1.Items[a].Count-1) do
      begin
        //showmessage(MainMenu1.Items[a].Items[b].Caption);
        if ACESSA_A
         then begin
           if q_menu.Locate('MENU',MainMenu1.Items[a].Items[b].TAG,[])
            then begin
              ACESSA_B := True;
              MainMenu1.Items[a].Items[b].Tag := strtoint(q_menunivel.asstring);
            end
            else begin
              //showmessage(MainMenu1.Items[a].Items[b].Caption);
              ACESSA_B := False;
            end
         end
         else ACESSA_B := ACESSA_A;

        MainMenu1.Items[a].Items[b].Enabled := ACESSA_B;

        for c:= 0 to (MainMenu1.Items[a].Items[b].Count-1) do
         begin
           //showmessage(MainMenu1.Items[a].Items[b].Items[c].Caption);
           if ACESSA_B
            then begin
              if q_menu.Locate('MENU',MainMenu1.Items[a].Items[b].Items[c].TAG,[])
               then begin
                 ACESSA_C := True;
                 MainMenu1.Items[a].Items[b].Items[c].Tag := strtoint(q_menunivel.asstring);
               end
               else ACESSA_C := False;
            end
            else ACESSA_C := ACESSA_B;

           MainMenu1.Items[a].Items[b].Items[c].Enabled := ACESSA_C;

           for d:= 0 to (MainMenu1.Items[a].Items[b].Items[c].Count-1) do
            begin
              //showmessage(MainMenu1.Items[a].Items[b].Items[c].Caption);
              if ACESSA_B
               then begin
                 if q_menu.Locate('MENU',MainMenu1.Items[a].Items[b].Items[c].Items[d].TAG,[])
                  then begin
                    ACESSA_D := True;
                    MainMenu1.Items[a].Items[b].Items[c].Items[d].Tag := strtoint(q_menunivel.asstring);
                  end
                  else ACESSA_D := False;
               end
               else ACESSA_D := ACESSA_C;

              MainMenu1.Items[a].Items[b].Items[c].Items[d].Enabled := ACESSA_D;
            end;
         end;
      end; 
   end;
end;

procedure TF_MSCOMEX.atusiscomexClick(Sender: TObject);
var atutab,atumaq,processou_maq,reprocessatab:boolean;
    desctab,sql_text:string;
    Contador: integer;
begin

    t_atusiscomex_maq.open;
    t_atusiscomex_tab.open;
    t_atusiscomex_tab.first;
    atutab  := true;
    //atutab  := false;
    desctab := '';
    while (not t_atusiscomex_tab.eof) do begin
          if (t_atusiscomex_tabdata_atualizacao.asdatetime < date()) or (t_atusiscomex_tabdata_atualizacao.isnull) then begin
             atutab := false;
             desctab := desctab+' - '+t_atusiscomex_tabdescricao.asstring+'  (última atualização:'+t_atusiscomex_tabdata_atualizacao.asstring+')'+#13#10;
          end;
          t_atusiscomex_tab.next;
    end;
    
    if not atutab then begin
       if (v_atusiscomex) and (MessageDlg(v_usuario+','+#13#10#13#10+'ATENÇÃO!! é necessário atualizar as tabelas do Siscomex diariamente,'+#13#10+'as tabelas abaixo do Sistema MS2000Plus encontram-se desatualizadas:'+#13#10#13#10+desctab+#13#10+'se seu SISCOMEX estiver atualizado confirme a opção para atualizar as tabelas do Sistema MS2000PLUS?'+#13#10#13#10+'IMPORTANTE!!: SOMENTE CONFIRME esta pergunta caso seu SISCOMEX esteja atualizado!'+#13#10#13#10+'OBS: Este procedimento será necessário 1 vez ao dia, tendo o usuário efetuado atualização os demais usuários terão seus Siscomex atualizados quando entrarem no MS2000Plus.', mtConfirmation, [mbNo, mbYes], 0) = mrYes) then begin
          ///comfirmou
          logusu('A','Confirmou Atualização das tabelas do MS2000PLUS com base no Siscomex.');

          t_atusiscomex_tab.first;
          while (not t_atusiscomex_tab.eof) do begin
               processamento('Aguarde... Atualizando SISCOMEX... ',t_atusiscomex_tab.recordcount,false);
               t_atusiscomex_tab.edit;
               t_atusiscomex_tabusuario.asstring := v_usuario;
               t_atusiscomex_tabdata_atualizacao.asdatetime := date();
               t_atusiscomex_tab.post;

               // Apaga os registro no MS2000_SISCOMEX
               q_atusiscomextab.sql.clear;
               q_atusiscomextab.sql.text := 'delete from '+t_atusiscomex_tabtabela.asstring;
               q_atusiscomextab.execsql;

               // Apaga os registro no SQL Server
               q_atusql.sql.Clear;
               q_atusql.sql.text := 'delete from ' + t_atusiscomex_tabtabela.asstring;
               q_atusql.execsql;

               Try
                  // Inserir os registro no MS2000_SISCOMEX
                  q_atusiscomextab.sql.clear;
                  q_atusiscomextab.sql.text := 'INSERT into '+t_atusiscomex_tabtabela.asstring+' SELECT *  from '+t_atusiscomex_tabtabela.asstring+' IN "C:\SISCOPRD\import.prd\tabsisco.mdb" ';
                  q_atusiscomextab.execsql;
               Except
                  Showmessage('Erro na atualização da tabela de conversão do siscomex local. Favor enviar um e-mail para msinfohelp@mslogistica.com.br');
                  exit;
               End;

               // Inserir os registros no SQL Server
               q_atusiscomextab.close;
               q_atusiscomextab.sql.clear;
               q_atusiscomextab.sql.text := 'SELECT * FROM ' + t_atusiscomex_tabtabela.asstring;
               q_atusiscomextab.open;

               contador :=1;
               while not q_atusiscomextab.Eof do begin
                 q_atusql.sql.Clear;
                 q_atusql.sql.text := '';
                 if t_atusiscomex_tabtabela.asstring = 'TAB_ATRIB_VALORACAO_NVE' then begin
                   sql_text := 'INSERT into ' + t_atusiscomex_tabtabela.asstring;
                   sql_text := sql_text +' values( ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('CD_NOMENC_NCM').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('CD_ATRIBUTO_NCM').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('IN_MULTIPLA_ESPECIF').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('CD_NIVEL_NCM').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('NM_ATRIBUTO').asstring)+')';
                   q_atusql.sql.Add(sql_text);
                   
                   // para verificar o script sql que está sendo gerado utilizar o gravaarqlog
                   //gravaarqlog(sql_text,'LogAtuSiscomex_TAB_ATRIB_VALORACAO_NVE.txt',contador);
                   q_atusql.ExecSQL;
                 end;
                 if t_atusiscomex_tabtabela.asstring = 'TAB_CONVERSAO_CAMBIO' then begin
                   sql_text := 'INSERT into ' + t_atusiscomex_tabtabela.asstring;
                   sql_text := sql_text +' values( ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Codigo').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Descricao').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Taxa_Conversao').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Vigencia_Inicio_Taxa').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Vigencia_Fim_Taxa').asstring)+')';
                   q_atusql.sql.Add(sql_text);
                   gravaarqlog(sql_text,'LogAtuSiscomex_TAB_CONVERSAO_CAMBIO.txt',contador);
                   q_atusql.ExecSQL;
                 end;
                 if t_atusiscomex_tabtabela.asstring = 'TAB_MOEDA' then begin
                   sql_text := 'INSERT into ' + t_atusiscomex_tabtabela.asstring;
                   sql_text := sql_text +' values( ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('CODIGO').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DESCRICAO').asstring)+')';
                   q_atusql.sql.Add(sql_text);
                   // para verificar o script sql que está sendo gerado utilizar o gravaarqlog
                   //gravaarqlog(sql_text,'LogAtuSiscomex_TAB_MOEDA.txt',contador);
                   q_atusql.ExecSQL;
                 end;
                 if t_atusiscomex_tabtabela.asstring = 'TAB_NALADISH' then begin
                   sql_text := 'INSERT into ' + t_atusiscomex_tabtabela.asstring;
                   sql_text := sql_text +' values( ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Codigo').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Descricao').asstring)+')';
                   q_atusql.sql.Add(sql_text);
                   // para verificar o script sql que está sendo gerado utilizar o gravaarqlog
                   //gravaarqlog(sql_text,'LogAtuSiscomex_TAB_NALADISH.txt',contador);
                   q_atusql.ExecSQL;
                 end;
{                 if t_atusiscomex_tabtabela.asstring = 'TAB_PAIS' then begin
                   sql_text := 'INSERT into ' + t_atusiscomex_tabtabela.asstring;
                   sql_text := sql_text +' values( ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Codigo').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('Descricao').asstring)+')';
                   q_atusql.sql.Add(sql_text);
                   // para verificar o script sql que está sendo gerado utilizar o gravaarqlog
                   gravaarqlog(sql_text,'LogAtuSiscomex_TAB_NALADISH.txt',contador);
                   q_atusql.ExecSQL;
                 end;}
                 if t_atusiscomex_tabtabela.asstring = 'TAB_NCM' then begin
                   sql_text := 'INSERT into ' + t_atusiscomex_tabtabela.asstring;
                   sql_text := sql_text +' values( ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('CODIGO').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DESCRICAO').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('UNIDADE_MEDIDA').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('ALIQUOTA_II').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_INICIO_VIG_II').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_FIM_VIG_II').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('ALIQUOTA_II_MERCOSUL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_INICIO_VIG_II_MSUL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_FIM_VIG_II_MSUL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('ALIQUOTA_IPI').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_INICIO_VIG_IPI').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_FIM_VIG_IPI').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('ALIQUOTA_PIS_ADVAL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_INI_VIG_PIS_ADVAL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_FIM_VIG_PIS_ADVAL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('ALIQUOTA_COFINS_ADVAL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_INI_VIG_COFINS_ADVAL').asstring) + ', ';
                   sql_text := sql_text +quotedstr(q_atusiscomextab.FieldByName('DATA_FIM_VIG_COFINS_ADVAL').asstring)+')';
                   q_atusql.sql.Add(sql_text);
                   // para verificar o script sql que está sendo gerado utilizar o gravaarqlog
                   //gravaarqlog(sql_text,'LogAtuSiscomex_TAB_NCM.txt',contador);
                   q_atusql.ExecSQL;
                 end;
                 q_atusiscomextab.Next;
                 contador := contador + 1;
               end;
               q_atusiscomextab.close;


               atumaq := true;
               if (not t_atusiscomex_maq.findkey([computerName,t_atusiscomex_tabtabela.asstring])) then atumaq := false
               else begin
                  if (t_atusiscomex_maqdata_atualizacao.asdatetime < date()) or (t_atusiscomex_maqdata_atualizacao.isnull) then begin
                      atutab := false;
                      t_atusiscomex_maq.delete;
                  end;
               end;
               if not atumaq then begin
                  t_atusiscomex_maq.append;
                  t_atusiscomex_maq.edit;
                  t_atusiscomex_maqmaquina.asstring := computerName;
                  t_atusiscomex_maqtabela.asstring  := t_atusiscomex_tabtabela.asstring;
                  t_atusiscomex_maqdata_atualizacao.asdatetime := date();
                  t_atusiscomex_maq.post;
               end;

               t_atusiscomex_tab.next;

          end;
          processamento('Aguarde... Atualizando SISCOMEX... ',t_atusiscomex_tab.recordcount,true);
          Showmessage(v_usuario+','+#13#10+'as tabelas do MS2000Plus foram atualizadas com sucesso com base no seu SISCOMEX!');


       end
       else begin
          logusu('A','NÃO Confirmou Atualização das tabelas do MS2000PLUS com base no Siscomex.');
 {         IF V_USUARIO<>'MM' THEN BEGIN
          /// não confirmou, desabilitando opções do menu
          desctab := '';
          //desctab := desctab+'- Faturas;'+#13#10;
          //Faturas1.enabled := false;
          desctab := desctab+'- Tributação;'+#13#10;
          tributao1.enabled := false;
          desctab := desctab+'- DI / DSI;'+#13#10;
          DIDSI1.enabled := false;
          END;}
          Showmessage(v_usuario+','+#13#10#13#10+'as tabelas do sistema NÃO estão atualizadas, as opções do menu:'+#13#10#13#10+desctab+#13#10#13#10+'foram desabilitadas!');
       end;
    end
    else begin ///está atualizado no MS2000PLUS incluirá no siscomex local

         reprocessatab := false;
         if v_nivel='0' then begin
            if messagedlg(v_usuario+', ATENCÃO! deseja atualizar novamente as tabelas do SISCOMEX LOCAL com base nas tabelas atualizadas do MS2000?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
               reprocessatab := true;
            end;
         end;

         processou_maq := false;
         desctab := '';
         t_atusiscomex_maq.first;
         t_atusiscomex_tab.first;
         while (not t_atusiscomex_tab.eof) do begin
               atumaq := true;
               if (not t_atusiscomex_maq.findkey([computerName,t_atusiscomex_tabtabela.asstring])) then
                  atumaq := false
               else begin
                  if (t_atusiscomex_maqdata_atualizacao.asdatetime < date()) or (t_atusiscomex_maqdata_atualizacao.isnull) then begin
                      atumaq := false;
                      t_atusiscomex_maq.delete;
                  end
                  else begin
                      if reprocessatab = true then begin
                        t_atusiscomex_maq.delete;
                      end;
                  end;
               end;

               if (not atumaq) or (reprocessatab) then begin
                  desctab := desctab+' - '+t_atusiscomex_tabdescricao.asstring+#13#10;


                  q_atusiscomextab.sql.text := ' DELETE *  from '+t_atusiscomex_tabtabela.asstring+' IN "C:\SISCOPRD\import.prd\tabsisco.mdb" ';
                  q_atusiscomextab.execsql;

                  Try
                    q_atusiscomextab.sql.text := 'INSERT into '+t_atusiscomex_tabtabela.asstring+' IN "C:\SISCOPRD\import.prd\tabsisco.mdb" '+' SELECT *  from '+t_atusiscomex_tabtabela.asstring;
                    q_atusiscomextab.execsql;
                  Except
                    Showmessage('Erro na atualização da tabela de conversão do siscomex local. Favor enviar um e-mail para msinfohelp@mslogistica.com.br');
                    exit;
                  End;

                  t_atusiscomex_maq.append;
                  t_atusiscomex_maq.edit;
                  t_atusiscomex_maqmaquina.asstring := computerName;
                  t_atusiscomex_maqtabela.asstring  := t_atusiscomex_tabtabela.asstring;
                  t_atusiscomex_maqdata_atualizacao.asdatetime := date();
                  t_atusiscomex_maq.post;

                  processou_maq := true;
               end;

               t_atusiscomex_tab.next;
          end;

          if processou_maq then begin
             Showmessage(v_usuario+','+#13#10#13#10+'foram atualizadas as tabelas do seu SISCOMEX abaixo:'+#13#10+desctab+#13#10+'conforme as tabelas já atualizadas no MS2000Plus!');
          end;


    end;

end;

procedure TF_MSCOMEX.AtualizaoSiscomex1Click(Sender: TObject);
begin

v_atusiscomex := true;
atusiscomexClick(f_mscomex);

end;

procedure ProcessarRelatorio(Sender: TObject);
begin
     If Not Assigned(f_RelEmail) Then Application.CreateForm(Tf_RelEmail, f_RelEmail);
     With f_RelEmail Do Begin
         QRPDFRel := Sender;
         RemetenteNome := v_nomecompleto;
         RemetenteEmail := v_email;
         ShowModal;
     End;
end;

procedure TF_MSCOMEX.ControledeTraduoeClassificao2Click(Sender: TObject);
begin
{if inttostr(ControledeTraduoeClassificao2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_controletracla) then Application.CreateForm(Tf_controletracla, f_controletracla);
        ControledeTraduoeClassificao2.enabled := false;
        logusu('A','Acessou Controle de Tradução e Classificação.');
        f_controletracla.show;
        end;
   }
end;

procedure TF_MSCOMEX.TraduoeClassificao2Click(Sender: TObject);
begin
if inttostr(TraduoeClassificao2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_consultatracla) then Application.CreateForm(Tf_consultatracla, f_consultatracla);
        TraduoeClassificao2.enabled := false;
        logusu('A','Acessou Consulta de Tradução e Classificação.');
        f_consultatracla.show;
        end;

end;

procedure TF_MSCOMEX.PlanilhaPrestaodeContas1Click(Sender: TObject);
begin
if inttostr(PlanilhaPrestaodeContas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_extratopro_geral) then Application.CreateForm(TF_extratopro_geral, F_extratopro_geral);
        if not assigned (F_relprestcontas) then Application.CreateForm(TF_relprestcontas, F_relprestcontas);
        PlanilhaPrestaodeContas1.enabled := false;
        logusu('A','Acessou Planilha Excel - Prestação de Contas.');
        f_extratopro_geral.Visible := false;
        F_relprestcontas.show;
        end;
end;

procedure TF_MSCOMEX.DocumentosdeInstruo1Click(Sender: TObject);
begin
if inttostr(DocumentosdeInstruo1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_prodocinstru) then Application.CreateForm(TF_prodocinstru, F_prodocinstru);
        DocumentosdeInstruo1.enabled := false;
        logusu('A','Acessou Módulo de Documentos de Instrução.');
        F_prodocinstru.show;
        end;

end;


procedure TF_MSCOMEX.ParmetrosdeSolicitaodeNumerrios1Click(
  Sender: TObject);
begin
 if inttostr(ParmetrosdeSolicitaodeNumerrios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
 else begin
        if not assigned (F_paramsolnum) then Application.CreateForm(TF_paramsolnum, F_paramsolnum);
        ParmetrosdeSolicitaodeNumerrios1.enabled := false;
        logusu('A','Acessou Parâmetros de Solicitação de Numerários.');
        F_paramsolnum.show;
 end;
end;

procedure TF_MSCOMEX.DistribuioComercial1Click(Sender: TObject);
begin
 ////if inttostr(Distribuicao.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    if v_distribuic = 0 then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_distribuic) then Application.CreateForm(TF_distribuic, F_distribuic);
        Distribuiocomercial1.enabled := false;
        logusu('A','Acessou o Módulo de Distribuição Comercial de Processos.');
        F_distribuic.show;
    end
end;

procedure TF_MSCOMEX.HabilitarUsurios1Click(Sender: TObject);
begin
 if not assigned (F_usuresp) then Application.CreateForm(TF_usuresp, F_usuresp);
        logusu('A','Acessou o Módulo de Habilitação de Usuários por Responsáveis de Processo.');
        F_usuresp.show;
end;


procedure TF_MSCOMEX.ControledePapisImpresses1Click(Sender: TObject);
begin

   { if inttostr(ControledePapisImpresses1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_papeis) then Application.CreateForm(Tf_papeis, f_papeis);
        ControledePapisImpresses1.enabled := false;
        logusu('A','Acessou Controle de Papéis / Impressões.');
        f_papeis.show;
        end;
     }
end;

procedure TF_MSCOMEX.ValoresporItem1Click(Sender: TObject);
begin
    if inttostr(ValoresporItem1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_plaitens) then Application.CreateForm(Tf_plaitens, f_plaitens);
        ValoresporItem1.enabled := false;
        logusu('A','Acessou Consulta Planilha - Valores por itens.');
        f_plaitens.show;
        end;

end;

procedure TF_MSCOMEX.ControledeIPS1Click(Sender: TObject);
begin
    if inttostr(ControledeIPS1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_IPS) then Application.CreateForm(Tf_IPS, f_IPS);
        ControledeIPS1.enabled := false;
        logusu('A','Acessou Controle de IPs ');
        f_IPS.show;
        end;

end;

procedure TF_MSCOMEX.ControledePontosdeTelefonia1Click(Sender: TObject);
begin
    if inttostr(ControledePontosdeTelefonia1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_telefonia) then Application.CreateForm(Tf_TELEFONIA, f_TELEFONIA);
        ControledePontosdeTelefonia1.enabled := false;                                                          
        logusu('A','Acessou Controle de Telefonia ');
        f_telefonia.show;
        end;

end;

procedure TF_MSCOMEX.ControledeSenhasdeUsurios1Click(Sender: TObject);
begin
   //if (inttostr(ControledeSenhasdeUsurios1.tag) < v_nivel) OR (V_USUARIO<>'MM')
   if (V_USUARIO = 'LSOUZA')    or
      (V_USUARIO = 'ESANTANNA') or
      (V_USUARIO = 'RARAUJO')   or
      (V_USUARIO = 'PFONTELLA') or
      (V_USUARIO = 'WMEDEIROS') then
   begin
        if not assigned (f_ctrlsenhas) then Application.CreateForm(Tf_ctrlsenhas, f_ctrlsenhas);
        ControledeSenhasdeUsurios1.enabled := false;
        logusu('A','Acessou Controle de Senhas de Usuários');
        f_ctrlsenhas.show;
   end
   else
       MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0);
end;

procedure TF_MSCOMEX.ControledePontosdeLgica1Click(Sender: TObject);
begin
  if inttostr(ControledePontosdeLgica1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_logica) then Application.CreateForm(Tf_logica, f_logica);
        ControledePontosdeLgica1.enabled := false;
        logusu('A','Acessou Controle de Lógica ');
        f_logica.show;
        end;
end;

procedure TF_MSCOMEX.gravaarqlog(reg: String;NomeArquivo: String;cont:integer);
var
  Path: String;
  Arquivo: TextFile;
  Retorno_FileCreate : integer;
begin
  Path := ExtractFilePath(Application.ExeName);
  Path := Path + 'log\';
  AssignFile(Arquivo, Path + NomeArquivo);
  if not FileExists(Path + NomeArquivo) then
    ReWrite(Arquivo)
  else begin
    if cont = 1 then
      ReWrite(Arquivo)
    else
      Append(Arquivo);
  end;
  Writeln(Arquivo,reg);
  Flush(Arquivo);
  CloseFile(Arquivo);
end;

procedure TF_MSCOMEX.ControledePlanilhasTransocean1Click(Sender: TObject);
begin
 if inttostr(ControledePlanilhasTransocean1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_ctrlTransocean) then Application.CreateForm(Tf_ctrlTransocean, f_ctrlTransocean);
        ControledePlanilhasTransocean1.enabled := false;
        logusu('A','Acessou Controle de Planilhas de Adiantamento - TRANSOCEAN ');
        f_ctrlTransocean.show;
        end;
end;

procedure TF_MSCOMEX.Delay(MSec: Cardinal);
var
  Start: Cardinal;
begin
  Start := GetTickCount;
  repeat
    Application.ProcessMessages;
  until (GetTickCount - Start) >= MSec;
end;


procedure TF_MSCOMEX.MSPGP(oprocesso:STRING);
begin
   q_processa.SQL.Clear;
   q_processa.SQL.Add('update Processos_Visao_Geral set Atualizado=0 where Processo="'+oprocesso+'"');
   q_processa.ExecSQL;

   q_processa.SQL.Clear;
   q_processa.SQL.Add('update Processos_Impostos set Atualizado=0 where Processo="'+oprocesso+'"');
   q_processa.ExecSQL;


end;

procedure TF_MSCOMEX.ControledePlanilhasBRASDRIL1Click(Sender: TObject);
begin
 if inttostr(ControledePlanilhasBRASDRIL1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_ctrlBRASDRIL) then Application.CreateForm(Tf_ctrlBRASDRIL, f_ctrlBRASDRIL);
        ControledePlanilhasBRASDRIL1.enabled := false;
        logusu('A','Acessou Controle de Planilhas de Adiantamento - BRASDRIL ');
        f_ctrlBRASDRIL.show;
        end;
end;

procedure TF_MSCOMEX.apaga_rpt();
var
        SearchRec : TSearchRec;
        diretorio : string;
begin
        diretorio := ExtractFilePath(Application.ExeName);
        try
                FindFirst(diretorio + '*.rpt', faAnyFile, SearchRec);
                repeat
                        DeleteFile(diretorio + SearchRec.name);
                until FindNext(SearchRec) <> 0;
        finally
                FindClose(SearchRec);
        end;
end;

procedure TF_MSCOMEX.DTR1Click(Sender: TObject);
begin
if inttostr(DTR1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_proDTR) then Application.CreateForm(TF_proDTR, F_proDTR);
        DTR1.enabled := false;
        logusu('A','Acessou Módulo de DTR.');
        F_proDTR.show;
        end;


end;

procedure TF_MSCOMEX.ControleListasEMAILSAVISOS1Click(Sender: TObject);
begin
 if inttostr(ControleListasEMAILSAVISOS1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_importadores_grupos) then Application.CreateForm(Tf_importadores_grupos, f_importadores_grupos);
        ControleListasEMAILSAVISOS1.enabled := false;
        logusu('A','Acessou Controle LISTA DE EMAILS AVISOS ');
        f_importadores_grupos.show;
        end;
end;

procedure TF_MSCOMEX.ControleADEAndamento1Click(Sender: TObject);
begin
  if inttostr(ControleADEAndamento1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
    if not assigned ( frmControle_ADE_Andamento ) then
      Application.CreateForm(TfrmControle_ADE_Andamento , frmControle_ADE_Andamento );
    ControleADEAndamento1.Enabled := false;
    logusu('A','Acessou Controle - ADE Andamento');
    frmControle_ADE_Andamento.show;
  end;
end;

procedure TF_MSCOMEX.ControleADEDeferido1Click(Sender: TObject);
begin
  if inttostr(ControleADEDeferido1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
    if not assigned ( frmControle_ADE_Deferido ) then
      Application.CreateForm(TfrmControle_ADE_Deferido , frmControle_ADE_Deferido );
    ControleADEDeferido1.Enabled := false;
    logusu('A','Acessou Controle - ADE Deferido');
    frmControle_ADE_Deferido.show;
  end;
end;

procedure TF_MSCOMEX.ControledeChegadadeNavios1Click(Sender: TObject);
begin
  if inttostr(ControledeChegadadeNavios1.tag) < v_nivel
    then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
      if not assigned(f_connavs)
       then Application.CreateForm(Tf_connavs, f_connavs);
      ControledeChegadadeNavios1.enabled := false;
      logusu('A','Acessou Controle de Chegada de Navios.');
      f_connavs.Show;
    end;
end;

procedure TF_MSCOMEX.ControleTVs1Click(Sender: TObject);
begin
  if inttostr(ControleTVs1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    frmControle_TVs_Main := TfrmControle_TVs_Main.Create( Self );
    logusu('A','Acessou Controle de TVs');
    frmControle_TVs_Main.Show;
  end;
end;

procedure TF_MSCOMEX.Ramais1Click(Sender: TObject);
begin
  if inttostr(Ramais1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    frmConsultas_Ramais := TfrmConsultas_Ramais.Create( Self );
    logusu('A','Acessou Consultas Ramais');
    frmConsultas_Ramais.Show;
  end;
end;

procedure TF_MSCOMEX.ControleBL1Click(Sender: TObject);
begin
  if inttostr(ControleBL1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    frmControle_BL := TfrmControle_BL.Create( Self );
    //ControleBL1.enabled := false;
    logusu('A','Acessou Controle BL');
    frmControle_BL.ShowModal;
    frmControle_BL.Free;
  end;
end;

procedure TF_MSCOMEX.ControleTR1Click(Sender: TObject);
begin
  if inttostr(ControleTR1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    frmControleTR := TfrmControleTR.Create( Self );
    logusu('A','Acessou Controle TR');
    frmControleTR.ShowModal;
    frmControleTR.Free;
  end;
end;

procedure TF_MSCOMEX.mnObservaesEspecficas1Click(Sender: TObject);
begin
  if inttostr(mnObservaesEspecficas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
      if not assigned (F_RCR_OBS_ESP ) then
        Application.CreateForm(TF_RCR_OBS_ESP , F_RCR_OBS_ESP );
      mnObservaesEspecficas1.Enabled := false;  
      logusu('A','Acessou Tabela TB_RCR_OBS_especifica.');
      F_RCR_OBS_ESP.show;
  end;
end;

procedure TF_MSCOMEX.Plataformas1Click(Sender: TObject);
begin
  if inttostr(Plataformas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
    if not assigned (frmPlataformas ) then
      Application.CreateForm(TfrmPlataformas , frmPlataformas );
    Plataformas1.Enabled := false;
    logusu('A','Acessou Cadastro de Planaformas');
    frmPlataformas.show;
  end;
end;

procedure TF_MSCOMEX.Prestaodecontasconsolidada1Click(Sender: TObject);
begin
  if inttostr(Prestaodecontasconsolidada1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
    if not assigned (frmPCConsolidada ) then
      Application.CreateForm(TfrmPCConsolidada , frmPCConsolidada );
    Prestaodecontasconsolidada1.Enabled := false;
    logusu('A','Acessou Consultas/Planilhas/Prestação de contas consolidada');
    frmPCConsolidada.show;
  end;
end;

procedure TF_MSCOMEX.PlanilhaExcelBrasdril1Click(Sender: TObject);
begin
  if inttostr(PlanilhaExcelRelatriodePrestaodeContas1.tag) < v_nivel
    then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
      if not assigned(f_pnlPrestContasFinanc)
       then Application.CreateForm(Tf_pnlPrestContasFinanc, f_pnlPrestContasFinanc);
      PlanilhaExcelRelatriodePrestaodeContas1.enabled := false;
      logusu('A','Acessou Planilha Excel - Relatório de Prestação de Contas - Financeiro.');
      f_pnlPrestContasFinanc.Show;
    end;
end;

function TF_MSCOMEX.IncluiFollow;
begin
  Try
    qryFollowAutomatico.ParamByName('Processo').Value := Processo;
    qryFollowAutomatico.ParamByName('CodEvento').Value := Trim( CodEvento );
    qryFollowAutomatico.ParamByName('CodObs').Value := Trim( CodObs );
    qryFollowAutomatico.ParamByName('Obs_especifica').Value := Trim( ObsEspecifica );
    qryFollowAutomatico.ParamByName('Usuario').Value := Usuario;
    qryFollowAutomatico.ParamByName('Data').Value := Data;
    qryFollowAutomatico.ParamByName('Hora').Value := FormatDateTime('hh:mm', Hora);
    qryFollowAutomatico.ExecSQL;
    Result := True;
  Except
    Result := False;
  End;
end;

function TF_MSCOMEX.LRTrim(Texto: String): String;
begin
  Result := StringReplace( Trim( Texto ),' ','', [rfReplaceAll] );
end;

procedure TF_MSCOMEX.ControleHierarquico1Click(Sender: TObject);
begin
  if inttostr(ControleHierarquico1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
      if not assigned ( frmControleHierarquico ) then
        Application.CreateForm(TfrmControleHierarquico , frmControleHierarquico );
      ControleHierarquico1.Enabled := false;
      logusu('A','Acessou Controle Hierárquico');
      frmControleHierarquico.show;
  end;
end;

procedure TF_MSCOMEX.Solicitao1Click(Sender: TObject);
begin
  if inttostr(Solicitao1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
      if not assigned ( frmSolicitacaoNumerario ) then
        Application.CreateForm(TfrmSolicitacaoNumerario , frmSolicitacaoNumerario );
      Solicitao1.Enabled := false;
      logusu('A','Acessou Controle Solicitação de Numerários');
      frmSolicitacaoNumerario.show;
  end;
end;

procedure TF_MSCOMEX.Autorizao1Click(Sender: TObject);
begin
  if inttostr(Autorizao1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
      if not assigned ( frmAutorizarNumerario ) then
        Application.CreateForm(TfrmAutorizarNumerario , frmAutorizarNumerario );
      Autorizao1.Enabled := false;
      logusu('A','Acessou Controle Autoriza~ção de Numerários');
      frmAutorizarNumerario.show;
  end;
end;

procedure TF_MSCOMEX.AgrupamentodeClientes1Click(Sender: TObject);
begin
  if inttostr(AgrupamentodeClientes1.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (f_agrupaclientes)
      then Application.CreateForm(Tf_agrupaclientes , f_agrupaclientes );

     AgrupamentodeClientes1.Enabled := false;
     logusu('A','Acessou o Cadastro de Agrupamentos de Clientes');
     f_agrupaclientes.show;
   end;  
end;

procedure TF_MSCOMEX.Consulta1Click(Sender: TObject);
begin
  if inttostr(Consulta1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else
  begin
      if not assigned ( frmConsultaNumerario ) then
        Application.CreateForm(TfrmConsultaNumerario , frmConsultaNumerario );
      Consulta1.Enabled := false;
      logusu('A','Acessou Controle de Numerários Consulta');
      frmConsultaNumerario.show;
  end;
end;

function Verifica_Data_Taxa_Siscomex(): Boolean;
var
  hoje : TDateTime;
  resultado : boolean;
begin
  {
   Sandro Rassy - 06/09/2011
   Verificação a data de atualização do siscomex, se a data corrente
   na variavel Hoje for maior que a data de vigencia final irá
   retorna false.
  }
  hoje := Date;
  if f_mscomex.t_cambio_s.state = dsInactive then
    f_mscomex.t_cambio_s.open;

  if hoje > f_mscomex.t_cambio_sVigencia_Fim_Taxa.AsDateTime then
    resultado := false
  else
    resultado := true;

  f_mscomex.t_cambio_s.close;
  
  Result := resultado;
end;

function StrIsTime(S: string): boolean;
begin
  try
    StrToTime(S);
    Result := true;
  except
    Result := false;
  end;
end;


procedure TF_MSCOMEX.VoucherTransocean1Click(Sender: TObject);
begin
 if inttostr(VoucherTransocean1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
 else begin
   if not assigned(F_vouchertransocean)
    then Application.CreateForm(TF_vouchertransocean, F_vouchertransocean);

   VoucherTransocean1.enabled := false;
   logusu('A','Acessou Voucher Transocean.');
   F_vouchertransocean.show;
 end;
end;

procedure TF_MSCOMEX.AnlisedeDesempenhoIndividual1Click(Sender: TObject);
begin
  if inttostr(AnlisedeDesempenhoIndividual1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
   if not assigned(F_avldesanalisedesempenho)
    then Application.CreateForm(TF_avldesanalisedesempenho, F_avldesanalisedesempenho);

   AnlisedeDesempenhoIndividual1.enabled := false;
   logusu('A','Acessou Análise de Desempenho Individual.');
   F_avldesanalisedesempenho.show;
  end;
end;

procedure TF_MSCOMEX.AnlisedeColaboradoresSupervisionados1Click(
  Sender: TObject);
begin
  if inttostr(AnlisedeColaboradoresSupervisionados1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
   if not assigned(f_avldesavaliacaocolaboradores)
    then Application.CreateForm(Tf_avldesavaliacaocolaboradores, f_avldesavaliacaocolaboradores);

   AnlisedeColaboradoresSupervisionados1.enabled := false;
   logusu('A','Acessou Análise de Colaboradores Supervisionados.');
   f_avldesavaliacaocolaboradores.show;
  end;
end;

procedure TF_MSCOMEX.ControledeHierarquia1Click(Sender: TObject);
begin
  if inttostr(ControledeHierarquia1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
   if not assigned(f_avldescontrolehierarquia)
    then Application.CreateForm(Tf_avldescontrolehierarquia, f_avldescontrolehierarquia);

   ControledeHierarquia1.enabled := false;
   logusu('A','Acessou Controle de Hierarquia.');
   f_avldescontrolehierarquia.show;
  end;
end;

procedure TF_MSCOMEX.CadastrodeAnlises1Click(Sender: TObject);
begin
  if inttostr(CadastrodeAnlises1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
   if not assigned(f_avldescadastroanalises)
    then Application.CreateForm(Tf_avldescadastroanalises, f_avldescadastroanalises);

   CadastrodeAnlises1.enabled := false;
   logusu('A','Acessou Cadastro de Análises.');
   f_avldescadastroanalises.show;
  end;
end;

procedure TF_MSCOMEX.CadastrodeCompetncias1Click(Sender: TObject);
begin
  if inttostr(CadastrodeCompetncias1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
   if not assigned(f_avldescadastrocompetencia)
    then Application.CreateForm(Tf_avldescadastrocompetencia, f_avldescadastrocompetencia);

   CadastrodeCompetncias1.enabled := false;
   logusu('A','Acessou Cadastro de Competências.');
   f_avldescadastrocompetencia.show;
  end;
end;

procedure TF_MSCOMEX.CadastrodePerguntas1Click(Sender: TObject);
begin
  if inttostr(CadastrodePerguntas1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
   if not assigned(f_avldescadastroperguntas)
    then Application.CreateForm(Tf_avldescadastroperguntas, f_avldescadastroperguntas);

   CadastrodePerguntas1.enabled := false;
   logusu('A','Acessou Cadastro de Perguntas.');
   f_avldescadastroperguntas.show;
  end;
end;

function TF_MSCOMEX.PesquisaConcluida: Boolean;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT COUNT(*) FROM Anl_Des_Resultados WHERE Resp_Usuario IS NULL AND Colaborador = :Usuario ');
    QryAux.SQL.Add(' UNION ');
    QryAux.SQL.Add('SELECT COUNT(*) FROM Anl_Des_Opinioes_Sugestoes WHERE Colaborador_Impacto_Profissional IS NULL AND Colaborador = :Usuario ');
    QryAux.Params[0].Value := v_usuario;
    QryAux.Open;

    if QryAux.Fields[0].AsInteger = 0
     then Result := True
     else begin
       Result := False;
       Exit;
     end;

    QryAux.Next;

    if QryAux.Fields[0].AsInteger = 0
     then Result := True
     else Result := False;
  finally
    QryAux.Free;
  end;
end;

procedure TF_MSCOMEX.ResultadoIndividualdasAnlises1Click(Sender: TObject);
begin
  if not assigned(f_avlrelresultadoindividualanalises)
   then Application.CreateForm(Tf_avlrelresultadoindividualanalises, f_avlrelresultadoindividualanalises);

  logusu('A','Acessou Resultado Individual das Análises.');
  try
    f_avlrelresultadoindividualanalises.QuickRep1.Preview;
  finally
    f_avlrelresultadoindividualanalises.QuickRep1.Free;
    FreeAndNil(f_avlrelresultadoindividualanalises);
  end;
end;

procedure TF_MSCOMEX.ResultadoSupervisionados1Click(Sender: TObject);
begin
  if not assigned(f_avlresultadoanalises)
   then Application.CreateForm(Tf_avlresultadoanalises, f_avlresultadoanalises);

  logusu('A','Acessou Resultado Supervisionados.');
  f_avlresultadoanalises.show;
end;

procedure TF_MSCOMEX.ContasaReceber1Click(Sender: TObject);
begin
  if inttostr(ContasaReceber1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned(f_contasr)
     then Application.CreateForm(TF_contasr, F_contasr);   
    ContasaReceber1.enabled := false;
    logusu('A','Acessou Contas a Receber.');
    f_contasr.show;
  end;  
end;

procedure TF_MSCOMEX.AtualizaProcessoVisaoGeral(Processo : String);
begin
  with qAtuProcessoVisaoGeral do
   begin
     Close;
     ParamByName('pProcesso').value := Processo;
     ExecSQL;
   end;
end;

procedure TF_MSCOMEX.Chamar_Alerta_Atualizacao;
var
  I: Integer;
  BarraIniciar: HWND; {Barra Iniciar}
  tmAltura: Integer;
  tmRect: TRect;
  xTop : Integer;
  xIniTop : Integer;
begin
  //localiza o Handle da janela iniciar
  BarraIniciar := FindWindow('Shell_TrayWnd', nil);
  //Pega o "retângulo" que envolve a barra e sua altura
  GetWindowRect(BarraIniciar, tmRect);
  tmAltura := tmRect.Bottom - tmRect.Top;
  frmAlerta := TfrmAlerta.Create(Self);
  with frmAlerta do
  begin
    Left := Screen.Width - ClientWidth;
    if tmRect.Top = -2 then
      tmAltura := 30;
    //Pega o top final
    xTop := Screen.Height - ClientHeight - tmAltura;
    //Pega o top inicial
    xIniTop := Screen.Height + ClientHeight + tmAltura;
    Top := xIniTop;
    for I := xIniTop downto xTop do
    begin
      Top := Top - 1;
      Show;
      Update;
      Application.ProcessMessages;
      Sleep(3);
    end;
    //Sleep(5000);
    //Close;
    //FreeAndNil(fAlerta);
  end;
end;

{ TContador }
procedure TContador.Execute;
begin
 Priority := tpLower;
 Sleep(60000);
 Self.Destroy;
 inherited;
end;



procedure TF_MSCOMEX.Controle_Alerta_AtualizacaoTimer(Sender: TObject);
begin
  if ( Contador60.Terminated ) then
    application.Terminate;
end;

procedure TF_MSCOMEX.gerencianormasClick(Sender: TObject);
begin
  if inttostr(gerencianormas.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_gernormas) then Application.CreateForm(Tf_gernormas, f_gernormas);
        gerencianormas.enabled := false;
        logusu('A','Acessou Módulo de Gerenciamento de normas.');
        f_gernormas.show;
  end;
end;

procedure TF_MSCOMEX.PlanilhaExcelRelatrioQuinzenalBrasdril1Click(
  Sender: TObject);
begin
  if inttostr(PlanilhaExcelRelatrioQuinzenalBrasdril1.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (f_relquinzebrasdril)
      then Application.CreateForm(Tf_relquinzebrasdril, f_relquinzebrasdril);

     PlanilhaExcelRelatrioQuinzenalBrasdril1.enabled := false;
     logusu('A','Acessou Planilha Excel - Relatório Quinzenal Brasdril.');
     f_relquinzebrasdril.show;
   end;  
end;

procedure TF_MSCOMEX.visualizanormasoperacionalClick(Sender: TObject);
begin
    if inttostr(visualizanormas.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_visuNorma) then Application.CreateForm(TF_visuNorma, F_visuNorma);
        visualizanormas.enabled := false;
        logusu('A','Acessou Módulo de Visualizar normas do Operacional.');
        F_visuNorma.show;
    end;
end;

procedure TF_MSCOMEX.visualizanormasfinanceiroClick(Sender: TObject);
begin
    if inttostr(visualizanormasfinanceiro.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_visuNormaFinanceiro) then Application.CreateForm(TF_visuNormaFinanceiro, F_visuNormaFinanceiro);
        visualizanormasfinanceiro.enabled := false;
        logusu('A','Acessou Módulo de Visualizar normas do Financeiro.');
        F_visuNormaFinanceiro.show;
    end;
end;

procedure TF_MSCOMEX.visualizanormasRHClick(Sender: TObject);
begin
    if inttostr(visualizanormasRH.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_visuNormaRH) then Application.CreateForm(TF_visuNormaRH, F_visuNormaRH);
        visualizanormasRH.enabled := false;
        logusu('A','Acessou Módulo de Visualizar normas do RH.');
        F_visuNormaRH.show;
    end;
end;

procedure TF_MSCOMEX.visualizanormasTIClick(Sender: TObject);
begin
    if inttostr(visualizanormasTI.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_visuNormaTI) then Application.CreateForm(TF_visuNormaTI, F_visuNormaTI);
        visualizanormasTI.enabled := false;
        logusu('A','Acessou Módulo de Visualizar normas do TI.');
        F_visuNormaTI.show;
    end;
end;

procedure TF_MSCOMEX.visualizanormasSGIClick(Sender: TObject);
begin
    if inttostr(visualizanormasSGI.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_visuNormaSGI) then Application.CreateForm(TF_visuNormaSGI, F_visuNormaSGI);
        visualizanormasSGI.enabled := false;
        logusu('A','Acessou Módulo de Visualizar normas do SGI.');
        F_visuNormaSGI.show;
    end;
end;
                                
procedure TF_MSCOMEX.CadastrodeContasClientes1Click(Sender: TObject);
begin
    if inttostr(CadastrodeContasClientes1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_AutorizacaoRegContasClientes) then Application.CreateForm(TF_AutorizacaoRegContasClientes, f_AutorizacaoRegContasClientes);
        CadastrodeContasClientes1.enabled := false;
        logusu('A','Acessou Cadastro de Contas - Clientes.');
        f_AutorizacaoRegContasClientes.show;
    end;  
end;

function IsClosedProcess(Process: string; Frm: TForm): Boolean;
  var
    GoOn : Boolean;
begin
  GoOn := True;
  with F_MSCOMEX do begin
    try
      qryProcessoFechado.ParamByName('CodigoProcesso').Value := Process;
      qryProcessoFechado.Open;
      GoOn := Not( qryProcessoFechado.IsEmpty );
    finally
      qryProcessoFechado.Close;
      if ( GoOn ) then begin
        //frm.Close;
        MessageDlg('Este processo está fechado.', mtWarning,[mbOk], 0);
      end;
      Result := GoOn;
    end;
  end;
end;

procedure TF_MSCOMEX.ControledeNumerrios1Click(Sender: TObject);
begin
  if inttostr(ControledeNumerrios1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_controlenumerarios) then Application.CreateForm(Tf_controlenumerarios, f_controlenumerarios);
    ControledeNumerrios1.enabled := false;
    logusu('A','Acessou Financeiro - Controle de Numerários.');
    f_controlenumerarios.show;
  end;
end;

procedure TF_MSCOMEX.Recibos1Click(Sender: TObject);
begin
  if inttostr(Recibos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_recibos) then Application.CreateForm(Tf_recibos, f_recibos);
    Recibos1.enabled := false;
    logusu('A','Acessou Financeiro - Faturamento - Recibos.');
    f_recibos.show;
  end;   
end;

procedure TF_MSCOMEX.NotasdeDbito1Click(Sender: TObject);
begin
  if inttostr(NotasdeDbito1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_notasdebito) then Application.CreateForm(Tf_notasdebito, f_notasdebito);
    NotasdeDbito1.enabled := false;
    logusu('A','Acessou Financeiro - Faturamento - Notas de Débito.');
    f_notasdebito.show;
  end;
end;

procedure TF_MSCOMEX.NotasdeCrdito1Click(Sender: TObject);
begin
  if inttostr(NotasdeCrdito1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_notascredito) then Application.CreateForm(Tf_notascredito, f_notascredito);
    NotasdeCrdito1.enabled := false;
    logusu('A','Acessou Financeiro - Faturamento - Notas de Crédito.');
    f_notascredito.show;
  end;
end;

procedure TF_MSCOMEX.DeclaraesdeOrigem1Click(Sender: TObject);
begin
  if inttostr(DeclaraesdeOrigem1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_declorigem) then Application.CreateForm(Tf_declorigem, f_declorigem);
    DeclaraesdeOrigem1.enabled := false;
    logusu('A','Acessou Financeiro - Faturamento - Declaração de Origem.');
    f_declorigem.show;
  end;
end;

procedure TF_MSCOMEX.Fornecedores1Click(Sender: TObject);
begin
///    if ((inttostr(Patrimnio1.tag) < v_nivel) and (v_usuario<>'DUDA')) then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    if ((inttostr(Fornecedores1.tag) < v_nivel) and (v_usuario<>'DUDA'))  then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (F_Fornecedores) then Application.CreateForm(TF_Fornecedores, F_Fornecedores);
        Fornecedores1.enabled := false;
        logusu('A','Acessou o Cadastro de Fornecedores.');
        F_Fornecedores.show;
    end
end;

procedure TF_MSCOMEX.NFe1Click(Sender: TObject);
begin
   if inttostr(NFe1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned ( frmNotaFiscalEE ) then
      Application.CreateForm(TfrmNotaFiscalEE, frmNotaFiscalEE);
      NFe1.enabled := false;
      logusu('A','Acessou Consultas - Exportação - NF-e');
      frmNotaFiscalEE.show;
   end;
end;

procedure TF_MSCOMEX.visualizanormasSMSClick(Sender: TObject);
begin
    if inttostr(visualizanormasSMS.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (f_visuNormaSMS) then Application.CreateForm(TF_visuNormaSMS, F_visuNormaSMS);
        visualizanormasSMS.enabled := false;
        logusu('A','Acessou Módulo de Visualizar normas do SMS.');
        F_visuNormaSMS.show;
    end;
end;

procedure TF_MSCOMEX.UploaddeArquivosPDF1Click(Sender: TObject);
begin
    if inttostr(UploaddeArquivosPDF1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (frmUpload_PDF) then Application.CreateForm(TfrmUpload_PDF, frmUpload_PDF);
        UploaddeArquivosPDF1.enabled := false;
        logusu('A','Acessou Módulo de Upload de Arquivos(.PDF)');
        frmUpload_PDF.show;
    end;
end;

procedure TF_MSCOMEX.PorProcesso1Click(Sender: TObject);
begin
   if inttostr(PorProcesso1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (frmHistoricoCheckFollow ) then
      Application.CreateForm(TfrmHistoricoCheckFollow, frmHistoricoCheckFollow);
      PorProcesso1.enabled := false;
      logusu('A','Acessou Consultas - Histórico de Check de Follow-Up - Por Processo');
      frmHistoricoCheckFollow.show;
   end;
end;

procedure TF_MSCOMEX.PorUsurio1Click(Sender: TObject);
begin
   if inttostr(PorUsurio1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (frmHistoricoCheckPorUsuario ) then
      Application.CreateForm(TfrmHistoricoCheckPorUsuario, frmHistoricoCheckPorUsuario);
      PorUsurio1.enabled := false;
      logusu('A','Acessou Consultas - Histórico de Check de Follow-Up - Por Usuário');
      frmHistoricoCheckPorUsuario.show;
   end;
end;

procedure TF_MSCOMEX.GernciadeNumerriosObrigatrios1Click(Sender: TObject);
begin
   if inttostr(GernciadeNumerriosObrigatrios1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (frmNumerarioObrigatorio) then
      Application.CreateForm(TfrmNumerarioObrigatorio, frmNumerarioObrigatorio);
      GernciadeNumerriosObrigatrios1.enabled := false;
      logusu('A','Acessou Consultas - Controle de Numerários Obrigatórios');
      frmNumerarioObrigatorio.show;
   end;
end;

procedure TF_MSCOMEX.CheckListDocumentao1Click(Sender: TObject);
begin
  if inttostr(CheckListDocumentao1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_checklist) then Application.CreateForm(Tf_checklist, f_checklist);
    CheckListDocumentao1.enabled := false;
    logusu('A','Acessou Financeiro - Faturamento - Check List Documentação.');
    f_checklist.show;
  end;
end;

procedure TF_MSCOMEX.Formularios1Click(Sender: TObject);
begin
    if not assigned (F_formulario) then Application.CreateForm(TF_formulario, F_formulario);
    F_formulario.show;
    logusu('A','Acessou ISO - Formulários');
    Formularios1.enabled := false;
end;

procedure TF_MSCOMEX.Contratos3Click(Sender: TObject);
begin
    if inttostr(Contratos3.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
      if not assigned (frmCadastroPropostas)
       then Application.CreateForm(TfrmCadastroPropostas, frmCadastroPropostas);
       
      Contratos3.enabled := false;
      logusu('A','Acessou Financeiro - Cadastro - Propostas.');
      frmCadastroPropostas.show;
    end;
end;

procedure TF_MSCOMEX.LanamentodeHoraExtra1Click(Sender: TObject);
begin
   if inttostr(LanamentodeHoraExtra1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (frmHoraExtra) then
      Application.CreateForm(TfrmHoraExtra, frmHoraExtra);
      LanamentodeHoraExtra1.enabled := false;
      logusu('A','Acessou Consultas - Lancamento Hora Extra');
      frmHoraExtra.show;
   end;
end;

procedure TF_MSCOMEX.Turnover1Click(Sender: TObject);
begin
   if inttostr(Turnover1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (frmRotatividade) then
      Application.CreateForm(TfrmRotatividade, frmRotatividade);
      Turnover1.enabled := false;
      logusu('A','Acessou Consultas - Turnover');
      frmRotatividade.show;
   end;
end;

procedure TF_MSCOMEX.ControleNaoConformidadeClick(Sender: TObject);
begin
  if inttostr(ControleNaoConformidade.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
   if not assigned (frmAcoesCoPre) then
      Application.CreateForm(TfrmAcoesCoPre, frmAcoesCoPre);
      ControleNaoConformidade.enabled := false;
      logusu('A','Acessou ISO - Controle de Não Conformidade');
      frmAcoesCoPre.show;
end;
end;
procedure TF_MSCOMEX.AberturaNaoConformidadeClick(Sender: TObject);
begin
   if inttostr(AberturaNaoConformidade.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
   if not assigned (frmNaoConformidade) then
      Application.CreateForm(TfrmNaoConformidade, frmNaoConformidade);
      AberturaNaoConformidade.enabled := false;
      logusu('A','Acessou ISO - Abertura de Não Conformidade');
      frmNaoConformidade.show;
   end;
end;

procedure TF_MSCOMEX.ConsumodeEnergia1Click(Sender: TObject);
begin
   if inttostr(ConsumodeEnergia1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (frmConsumoDeEnergia) then
      Application.CreateForm(TfrmConsumoDeEnergia, frmConsumoDeEnergia);
      ConsumodeEnergia1.enabled := false;
      logusu('A','Acessou RH - Consumo de Energia');
      frmConsumoDeEnergia.show;
   end;
end;

procedure TF_MSCOMEX.AdesaoLaboralClick(Sender: TObject);
begin
   if inttostr(AdesaoLaboral.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (frmAdesaoLaboral) then
      Application.CreateForm(TfrmAdesaoLaboral, frmAdesaoLaboral);
      AdesaoLaboral.enabled := false;
      logusu('A','Acessou RH - Adesao Laboral');
      frmAdesaoLaboral.show;
   end;
end;

procedure TF_MSCOMEX.Button2Click(Sender: TObject);
begin
  //ShellExecute(handle, 'open',Pchar('iexplore.exe'),Pchar('http://msserver01/mslogistica/web/monitoramento/aspx/tv_indicadores/frmIndicadorConsumoEnergia.aspx'), Nil, SW_SHOWNORMAL);
 // webbrowser1.Navigate('http://msserver01/mslogistica/web/monitoramento/aspx/tv_indicadores/frmIndicadorConsumoEnergia.aspx');
end;

procedure TF_MSCOMEX.RequerimentodeAgricultura1Click(Sender: TObject);
begin
   if inttostr(requerimentodeAgricultura1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
   if not assigned (frmReqAgriculNovo) then
   Application.CreateForm(TfrmReqAgriculNovo, frmReqAgriculNovo);
   RequerimentodeAgricultura1.enabled := false;
   frmReqAgriculNovo.show;
   logusu('A','Acessou Processos- Formulários - Requerimento de Agricultura');
   end;
end;

procedure TF_MSCOMEX.RequerimentodeAgriculturaapartirde181220061Click(
  Sender: TObject);
begin
   if inttostr(RequerimentodeAgriculturaapartirde181220061.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
   if not assigned (frmReqAgriculNovo18122006) then
   Application.CreateForm(TfrmReqAgriculNovo18122006, frmReqAgriculNovo18122006);
   frmReqAgriculNovo18122006.show;
   RequerimentodeAgriculturaapartirde181220061.enabled := false;
   logusu('A','Acessou Processos- Formularios - Requerimento de Agricultura (a partir de 18/12/2006)');
   end;
end;

procedure TF_MSCOMEX.RequerimentodeAgriculturaAntigo1Click(
  Sender: TObject);
begin
 if inttostr(RequerimentodeAgriculturaAntigo1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
 else begin
 if not assigned (frmReqAgricul) then
   Application.CreateForm(TfrmReqAgricul, frmReqAgricul);
   frmReqAgricul.show;
   RequerimentodeAgriculturaAntigo1.enabled := false;
   logusu('A','Acessou Processos- Formularios - Requerimento de Agricultura (Antigo)');
 end;
end;

procedure TF_MSCOMEX.CapaDINiteri1Click(Sender: TObject);
begin
   if inttostr(CapaDINiteri1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
   if not assigned (frmCapaDINit) then
   Application.CreateForm(TfrmCapaDINit, frmCapaDINit);
   frmCapaDINit.show;
   CapaDINiteri1.enabled := false;
   logusu('A','Acessou Processos- Formularios - Capa DI Niterói');
   End;
end;

procedure TF_MSCOMEX.CapaDISepetiba1Click(Sender: TObject);
begin
   if inttostr(CapaDISepetiba1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
   if not assigned (frmCapaDISep) then
   Application.CreateForm(TfrmCapaDISep, frmCapaDISep);
   frmCapaDISep.show;
   CapaDISepetiba1.enabled := false;
   logusu('A','Acessou Processos- Formularios - Capa DI Sepetiba');
   end;
end;

procedure TF_MSCOMEX.TermoSunamannDrawback1Click(Sender: TObject);
begin
   if inttostr(TermoSunamannDrawback1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (frmTermoSunDrawH) then
   Application.CreateForm(TfrmTermoSunDrawH, frmTermoSunDrawH);
   frmTermoSunDrawH.show;
   TermoSunamannDrawback1.enabled := false;
   logusu('A','Acessou Processos- Formularios - Termo Sunamann Drawback');
   End;
end;

procedure TF_MSCOMEX.ExtratordeDocumentos1Click(Sender: TObject);
begin
   if inttostr(ExtratordeDocumentos1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
    if not assigned (F_extratopro_geral) then
   Application.CreateForm(Tf_extratopro_geral, F_extratopro_geral);
   F_extratopro_geral.show;
   ExtratordeDocumentos1.enabled := false;
   logusu('A','Acessou Sistemas - Extrator de Documentos');
   End;
end;

function TF_MSCOMEX.LRDataTrim(Texto: String): String;
begin
  Result := StringReplace( Trim( Texto ),'/','', [rfReplaceAll] );
end;

procedure TF_MSCOMEX.ContratodehabilitaoaoRepetro1Click(Sender: TObject);
begin
    if inttostr(ContratodehabilitaoaoRepetro1.tag) < v_nivel then
      MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
    if not assigned (f_contratos_juridico) then
     Application.CreateForm(Tf_contratos_juridico, f_contratos_juridico);
     f_contratos_juridico.show;
     ContratodehabilitaoaoRepetro1.enabled := false;
     logusu('A','Acessou Cadastro - Contratos de Admissão Temporária - Contrato de habilitação ao Repetro ');
    End;
end;

procedure TF_MSCOMEX.TiposdeNumerrios2Click(Sender: TObject);
begin
  if inttostr(TiposdeNumerrios2.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (F_tiposnumer)
      then Application.CreateForm(TF_tiposnumer, F_tiposnumer);
      
     TiposdeNumerrios2.enabled := false;
     logusu('A','Acessou a Financeiro - Cadastro - Tipos de Numerários.');
     F_tiposnumer.show;
   end;
end;

procedure TF_MSCOMEX.TiposdeCustos2Click(Sender: TObject);
begin
  if inttostr(TiposdeCustos2.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (F_tiposcustos)
      then Application.CreateForm(TF_tiposcustos, F_tiposcustos);

     TiposdeCustos2.enabled := false;
     logusu('A','Acessou a Financeiro - Cadastro - Tipos de Custos.');
     F_tiposcustos.show;
   end;
end;

procedure TF_MSCOMEX.PlanilhaExcelRelatriodeDespesasPanMarineMarAlta1Click(
  Sender: TObject);
begin
  if inttostr(PlanilhaExcelRelatriodeDespesasPanMarineMarAlta1.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (f_pnlPrestContasDespFinanc)
      then Application.CreateForm(Tf_pnlPrestContasDespFinanc, f_pnlPrestContasDespFinanc);

     PlanilhaExcelRelatriodeDespesasPanMarineMarAlta1.enabled := false;
     logusu('A','Acessou a Financeiro - Planilha Excel - Relatório de Despesas e Prestação de Contas - Pan Marine / Maré Alta.');
     f_pnlPrestContasDespFinanc.show;
   end;
end;

procedure TF_MSCOMEX.LanamentodeAcidentes1Click(Sender: TObject);
begin
   if inttostr(LanamentodeAcidentes1.tag) < v_nivel then
    MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (frmFreqAcidente) then
      Application.CreateForm(TfrmFreqAcidente , frmFreqAcidente);
      LanamentodeAcidentes1.enabled := false;
      logusu('A','Acessou RH - Lançamento Acidentes');
      frmFreqAcidente.show;
   end;
end;

procedure TF_MSCOMEX.ContasaPagar1Click(Sender: TObject);
begin
  if inttostr(CheckListDocumentao1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_contasapagar) then Application.CreateForm(Tf_contasapagar, f_contasapagar);
    ContasaPagar1.enabled := false;
    logusu('A','Acessou Financeiro - Contas a Pagar.');
    f_contasapagar.show;
  end;  
end;

procedure TF_MSCOMEX.AssociaoNumerriosDocumentos1Click(Sender: TObject);
begin
  if inttostr(AssociaoNumerriosDocumentos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_associacao_numerarios_documentos) then Application.CreateForm(Tf_associacao_numerarios_documentos, f_associacao_numerarios_documentos);
    AssociaoNumerriosDocumentos1.enabled := false;
    logusu('A','Acessou Financeiro - Cadastros - Associação Numerários = Documentos.');
    f_associacao_numerarios_documentos.show;
  end;
end;

procedure TF_MSCOMEX.UploaddeDocumentos1Click(Sender: TObject);
begin
  if inttostr(UploaddeDocumentos1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned (f_uploaddocumentos) then Application.CreateForm(Tf_uploaddocumentos, f_uploaddocumentos);
    UploaddeDocumentos1.enabled := false;
    logusu('A','Acessou Financeiro - Contas Correntes - Upload de Documentos.');
    f_uploaddocumentos.show;
  end;
end;

procedure TF_MSCOMEX.VisualizarIndicadores1Click(Sender: TObject);
begin
   ShellExecute(handle, 'open',Pchar('iexplore.exe'),Pchar('http://msserver01/mslogistica/web/monitoramento/aspx/tv_indicadores/frmIndicadorAbertura.aspx'), Nil, SW_SHOWNORMAL);
end;


function TF_MSCOMEX.Func_DataDeCriacaoArquivo(Arq: string): TDateTime;
var
  ffd: TWin32FindData;
  dft: DWORD;
  lft: TFileTime;
  h: THandle;
begin
  h := Windows.FindFirstFile(PChar(Arq), ffd);
  try
    if (INVALID_HANDLE_VALUE <> h) then
    begin
      FileTimeToLocalFileTime(ffd.ftCreationTime, lft);
      FileTimeToDosDateTime(lft, LongRec(dft).Hi, LongRec(dft).Lo);
      result := FileDateToDateTime(dft);
    end;
  finally
    Windows.FindClose(h);
  end;
end;

procedure TF_MSCOMEX.EnviaEmail;
var
  corpo_email : string;
  vDe, vPara, vImp: String;
  vAssunto : String;
  vTitulo  : String;
  vBody    : String;
  vAnexo   : String;
begin
  qEmailAvisos.Close;
  qEmailAvisos.Open;

  vTitulo  := 'MS2000 - Aviso Processos com LI';
  vAssunto := 'Por favor, verifiquem os Processos abaixo, NCM com LI';
  vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';

  corpo_email := 'Os seguintes processos abaixo contém NCM com LI. É importante a verificação do respectivo importador para evitar multa.';

  qProcLI.Close;
  qProcLI.Open;
  qProcLI.First;

  vBody := '<BR>'
         + 'Prezado,<BR>'
         + '<BR>'
         +  corpo_email + '<BR><BR>'
         + 'Este e-mail é automático e não necessita de resposta. <BR>'
         + '<BR><BR>'
         + 'Atenciosamente,'
         + '<BR><BR>'
         + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';
  vImp := qProcLIImportador.AsString;
  vBody := vBody  + '<FONT FACE="Arial"><TR bgcolor="#002255"><TD ALIGN="LEFT"><B>('+ vImp + ')'+ qProcLIRazao_Social.asstring +' - '+ qProcLICNPJ_CPF_COMPLETO.asString +'</B></TD></TR>'
                           + '<TR><TD><TABLE cellspacing="0" ALIGN="CENTER" BORDER="1" WIDTH="100%" style="font-size:13px;">'
                            + '<TR><TD WIDTH="50%" ALIGN="CENTER"><B>PROCESSO</B></TD>'
                            +      '<TD WIDTH="50%" ALIGN="CENTER"><B>NCM</B></TD></TR>';
   while not qProcLI.Eof do
   begin
        If qProcLIImportador.AsString <> vImp Then
        Begin
            vImp := qProcLIImportador.AsString;
            vBody:= vBody +'<TR bgcolor="#002255"><TD COLSPAN="2" ALIGN="LEFT"><B>('+ vImp + ')'+ qProcLIRazao_Social.asstring +' - '+ qProcLICNPJ_CPF_COMPLETO.asString +'</B></TD></TR>'
                                + '<TR><TD WIDTH="50%" ALIGN="CENTER"><B>PROCESSO</B></TD>'
                                +      '<TD WIDTH="50%" ALIGN="CENTER"><B>NCM</B></TD></TR>';
        End;
        vBody  := vBody
                   + '<TR><TD WIDTH="50%" ALIGN="CENTER">'+ qProcLIProcesso.asstring +'</TD>'
                   + '<TD WIDTH="50%" ALIGN="CENTER">'+ qProcLINCM.AsString +'</TD></TR>';
        qProcLI.Next;
   end;
   qProcLI.Close;
   vBody  := vBody   + '</TABLE></TD></TR></FONT>';
   {Na email_avisos existe o RELTEC é o aviso quando não houver extração até às 11:00 horas}
   {Na email_avisos o NCM_LI está relacinado aos avisos relacionado a extração às 10:00 horas}

//  vPara := 'leandro.serra@mslogistica.com.br';
//   vPara := qEmailAvisosEmail.value;
   qUsuOperac.Close;
   qUsuOperac.Open;
   vPara := '';
   vAnexo := '';
  vPara :='';


   try
      tbEmailAuto.Open;
      tbEmailAuto.Append;
      tbEmailAutoPrograma.AsString := 'NCMLI'; // qEmailAvisosTipo.value;
      tbEmailAutoTitulo.AsString   := vTitulo;
      tbEmailAutoAssunto.AsString  := vAssunto;
      tbEmailAutoAnexo.AsString    := vAnexo;
      tbEmailAutoHTML.Asinteger    := 1; //qEmailAvisosHTML.value;
      tbEmailAutoDe.AsString       := vDe;
      tbEmailAutoPara.AsString     := 'operacional@mslogistica.com.br';
//      tbEmailAutoPara.AsString     := 'leandro.serra@mslogistica.com.br';
      tbEmailAutoCC.AsString       := 'leandro.serra@mslogistica.com.br';
      tbEmailAutoBody.AsString     := vBody;
      tbEmailAutoData.AsDateTime   := Date();
      tbEmailAutoHora.AsDateTime   := Now;
      tbEmailAuto.Post;
      tbEmailAuto.Close;
   except
      on E:Exception do
       begin
         showmessage(v_usuario+' Erro ao gravar registro na tabela EmailAuto.');
       end;
   end;

   qUsuOperac.Close;
   qEmailAvisos.Close;
end;


procedure TF_MSCOMEX.ExtraoNCMcomLI1Click(Sender: TObject);
var
   f:TextFile;
   linha, tratadm, caminho_do_arquivo:String;
   i, codncm :Integer;
begin
   qVerificaLogNCM.Close;
   qVerificaLogNCM.Open;


   if qVerificaLogNCM.RecordCount = 1 then
   begin
       if qVerificaLogNCMusuario.value = vUsuario then
            ShowMessage('Você já realizou esta operação hoje.')
       else
            ShowMessage('Esta operação já foi realizada hoje pelo usuário '+ qVerificaLogNCMusuario.value);
       Exit;
   end;
   caminho_do_arquivo := 'C:\Convertec\TEC.txt';

   try
     AssignFile(f, caminho_do_arquivo);
     Reset(f); //abre o arquivo para leitura;
     {Verifica a data de criação do arquivo}
 {    if  dateToStr(Func_DataDeCriacaoArquivo(caminho_do_arquivo)) <>  dateTostr(date) then
     begin
          ShowMessage('Arquivo de extração com data de criação diferente de hoje.');
          Exit;
     end;}   
   except
       if not FileExists(caminho_do_arquivo) then
       begin
            ShowMessage('O arquivo de extração TEC.txt não foi encontrado.');
            Exit;
       end;
   end;
   i:=0;
   {Esvazia a tabela NCM_COM_LI}
   qDeleteNCM_LI.Close;
   qDeleteNCM_LI.ExecSQL;
   While not eof(f) do begin
     Readln(f,linha); //le do arquivo e desce uma linha. O conteúdo lido é transferido para a variável linha
     if i <> 0 then
     begin
       tratadm := copy(linha, 10, 11);
       if tratadm = 'LI' then
       begin
         qNCM_COM_LI.close;
         try
             codncm:=strToInt(copy(linha, 1, 8));
             qNCM_COM_LI.ParamByName('pCODNCM').value:=intToStr(codncm);
         except
             qNCM_COM_LI.ParamByName('pCODNCM').value:=copy(linha, 1, 8);
         end;
         qNCM_COM_LI.ParamByName('pTRATADM').value:=tratadm;
         qNCM_COM_LI.ParamByName('pDATA_CARGA').value:=date;
         qNCM_COM_LI.ExecSQL;
       end;
     end;
     i:= i + 1;
   End;
   Closefile(f);
   {Monta e Envia o Email}
   EnviaEmail;
   {Insere o Log na tabela NCM_COM_LI_LOG
   Obs: Utilizo a data de criação do arquivo}
   qIns_Log_NCM_LI.Close;
   qIns_Log_NCM_LI.ParamByName('pUsuario').asString := v_usuario;
   qIns_Log_NCM_LI.ParamByName('pData_Execucao').asDate :=Func_DataDeCriacaoArquivo(caminho_do_arquivo);
   qIns_Log_NCM_LI.ExecSQL;

   DeleteFile(caminho_do_arquivo);
   ShowMessage('Operação realizada com sucesso.');
end;

procedure TF_MSCOMEX.Controle_LetreiroTimer(Sender: TObject);
begin

   If  lblLetreiro.Caption <> '' then begin
       If lblLetreiro.left  <= pnlLetreiro.Width -1 then begin

          if lblLetreiro.left>= -(lblLetreiro.Width) then
             lblLetreiro.left:=lblLetreiro.left-1
          else
             lblLetreiro.left := pnlLetreiro.width;
       End
       Else begin
         Cont := Cont + 1;
         if( qrISO_Letreiro.RecordCount <= Cont )then begin
          Cont := 0;
          Controle_Letreiro.Enabled := false;
          pnlLetreiro.Visible:= false;
          Executa_Letreiro.Enabled:= True;
         End;
         lblLetreiro.Left := pnlLetreiro.Width -2;

       If Controle_Letreiro.Enabled = True then
         ExecutaLetreiro();
        // ShowMessage (lblLetreiro.Caption +'- 1')
       End;
   End
   Else begin
      ExecutaLetreiro();
     // ShowMessage (lblLetreiro.Caption +'- 2')
   End;



end;

procedure TF_MSCOMEX.ExecutaLetreiro;
var  
  i       : Integer;
begin
  if (cont = 0) then begin
    //frases := TStringList.Create;
    frases.Clear;
    with qrISO_Letreiro do begin
     close;
     Open;
    end;
     If qrISO_Letreiro.RecordCount > 0 then begin
       pnlLetreiro.Visible := True;
       for i := 0 to qrISO_Letreiro.RecordCount-1 do begin
         frases.Add(qrISO_LetreiroNorma.AsString);
         qrISO_Letreiro.Next;
         Application.ProcessMessages();
       end;
       lblLetreiro.Caption := 'Procedimento Atualizado:  '+  frases[Cont];
     End
     Else begin
      pnlLetreiro.Visible := False;
      Controle_Letreiro.Enabled := False;
      Executa_Letreiro.Enabled := True;
     End;
  end;

end;

procedure TF_MSCOMEX.FormShow(Sender: TObject);
begin
  Cont := 0;
  frases := TStringList.Create;
  lblLetreiro.left := pnlLetreiro.Width -1;
end;

procedure TF_MSCOMEX.Executa_LetreiroTimer(Sender: TObject);
begin
  pnlLetreiro.Visible := True;
  Controle_Letreiro.Enabled := True;
  Executa_Letreiro.Enabled := False;
end;

procedure TF_MSCOMEX.ControledeMedies1Click(Sender: TObject);
begin
  if inttostr(ControledeMedies1.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned (f_controle_medicoes)
      then Application.CreateForm(Tf_controle_medicoes, f_controle_medicoes);

     ControledeMedies1.enabled := false;
     logusu('A','Acessou a Financeiro - Faturamento - Controle de Medições.');
     f_controle_medicoes.show;
   end;
end;

function TF_MSCOMEX.AcessaPasta(Processo, Tipo : String; FormFoco : TForm): Boolean;
var
  QryAux : TQuery;
  Supervisor, Responsavel, Coordenador : String;
begin
  Result := False;

  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT USUARIO FROM USUARIOS WHERE Ativo = 1 AND ((Hierarquia = 1) OR (Nivel =''0'')) ');
    QryAux.Open;

    QryAux.First;

    while not QryAux.Eof do
     begin
       if v_usuario = QryAux.FieldByName('Usuario').AsString
        then begin
          Result := True;
          Exit;
        end;

       QryAux.Next;
     end;

    if (FormFoco = f_distribui) and (v_distribui = 1)
     then begin
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add('SELECT PROCESSO, USUARIO FROM CONTROLE_PASTAS WHERE ACEITE = 1 AND USUARIO =:Usuario AND PROCESSO =:Processo ');
       QryAux.Params[0].Value := v_usuario;
       QryAux.Params[1].Value := Processo;
       QryAux.Open;

       if (QryAux.RecordCount = 1)
        then begin
          Result := True;
          Exit;
        end;
     end;

    {Excluída verificação para os Tipos de Processos (Movimentação de Repetro, Consultoria, Utilização do Sistema)}
    if (FormFoco <> f_distribui) and (Tipo <> 'MR') and (Tipo <> 'CO') and (Tipo <> 'US')
     then begin
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.SQL.Add('SELECT Responsavel_Empresa, Supervisor_Resp, Coordenador_Resp FROM Processos WHERE Codigo = :Processo ');
       QryAux.ParamByName('Processo').Value := Processo;
       QryAux.Open;

       if (QryAux.RecordCount > 0)
        then begin
          Responsavel := QryAux.FieldByName('Responsavel_Empresa').AsString;
          Supervisor  := QryAux.FieldByName('Supervisor_Resp').AsString;
          Coordenador := QryAux.FieldByName('Coordenador_Resp').AsString;
        end;

       if((v_abreproc <> 1) And (FormFoco <> F_proFollowup))
         then begin
         if ((Responsavel = '') or (Coordenador = ''))
          then begin
            Application.MessageBox('Processo pendente de informação na distribuição, Responsável por MS e/ou Coordenador não informado, a tela será fechada.','Aviso',MB_ICONWARNING);
            FormFoco.close;
            Abort;
          end;
        end;

       if ((v_usuario = Supervisor) or (v_usuario = Coordenador))
        then begin
          Result := True;
          Exit;
        end;
     end;

    QryAux.Close;
    QryAux.SQL.Clear;

    if ((v_arquivista) or (v_digitalizador = 1) or (vUsuScanner = 1) or (v_abreproc = 1)) and ((FormFoco = F_proFollowup) or (FormFoco = F_proConhecimentos))
      then begin
        QryAux.SQL.Add('SELECT PROCESSO, USUARIO FROM CONTROLE_PASTAS WHERE ACEITE = 1 AND PROCESSO =:Processo and ((Usuario = ''ARQUIVO'') OR (Usuario = :Usuario))');
        QryAux.Params[0].Value := Processo;
        QryAux.Params[1].Value := v_usuario;
        QryAux.Open;
      end
      else begin
        if v_hierarquia <> 3
         then begin
           if (v_usuario <> Responsavel)
            then begin
              Application.MessageBox('O seu Usuário não é Responsável pelo Processo, a tela será fechada.','Aviso',MB_ICONWARNING);
              FormFoco.close;
              Abort;
           end;
         end;

        QryAux.SQL.Add('SELECT PROCESSO, USUARIO FROM CONTROLE_PASTAS WHERE ACEITE = 1 AND USUARIO =:Usuario AND PROCESSO =:Processo ');
        QryAux.Params[0].Value := v_usuario;
        QryAux.Params[1].Value := Processo;
        QryAux.Open;
      end;

    if ((QryAux.RecordCount = 1) or (v_documentador))
     then begin
       Result := True;
       Exit;
     end;

    Application.MessageBox('O processo não se encontra no seu controle, a tela será fechada.','Aviso',MB_ICONWARNING);
    FormFoco.close;
    Abort;
  finally
    QryAux.Free;
  end;
end;

procedure TF_MSCOMEX.TaxadeConversoparaAmanhaClick(Sender: TObject);
begin
    if inttostr(TaxadeConversoparaAmanha.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (frmTaxasConversaoCambioAmanha) then Application.CreateForm(TfrmTaxasConversaoCambioAmanha, frmTaxasConversaoCambioAmanha);
        Tradues1.enabled := false;
        logusu('A','Acessou ao Módulo de Taxas de Conversão Câmbio Amanhã.');
        frmTaxasConversaoCambioAmanha.show;
    end
end;

procedure TF_MSCOMEX.MODECNFe1Click(Sender: TObject);
begin
if inttostr(MODECNFe1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
  else begin
    if not assigned(f_ExpModecNfe) then Application.CreateForm(Tf_ExpModecNfe, f_ExpModecNfe);
    MODECNFe1.enabled := false;
    logusu('A','Acessou Consultas - Exportações - Modec - Nfe.');
    f_ExpModecNfe.show;
end;
End;

procedure TF_MSCOMEX.CalculoLubrisol1Click(Sender: TObject);
begin
    ////if inttostr(ValoresporItem1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    //else begin
        If Not assigned (FrmCalculoLubrizol) Then
          Application.CreateForm(TFrmCalculoLubrizol, FrmCalculoLubrizol);
//        logusu('A','Acessou Consulta Planilha - Valores por itens.');
        FrmCalculoLubrizol.show;
        //end;

end;

procedure TF_MSCOMEX.ODFJELLDI1Click(Sender: TObject);
begin
  if inttostr(ODFJELLDi1.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned(f_ExpOdfjellDI)
      then Application.CreateForm(Tf_ExpOdfjellDI, f_ExpOdfjellDI);

     ODFJELLDi1.enabled := false;
     logusu('A','Acessou Consultas - Exportações - Odfjell - DI.');
     f_ExpOdfjellDI.show;
   end;
end;

procedure TF_MSCOMEX.PlanilhaExcel1Click(Sender: TObject);
begin
  if inttostr(PlanilhaExcelPlanilhadeMediodeHonorrios1.tag) < v_nivel
   then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
   else begin
     if not assigned(f_pnlMedicaoHonorarios)
      then Application.CreateForm(Tf_pnlMedicaoHonorarios, f_pnlMedicaoHonorarios);

     PlanilhaExcelPlanilhadeMediodeHonorrios1.enabled := false;
     logusu('A','Acessou a Financeiro - Planilha Excel - Planilha de Medição de Honorários.');
     f_pnlMedicaoHonorarios.show;
   end;
end;

procedure TF_MSCOMEX.TermosdeResponsabilidade2Click(Sender: TObject);
begin
    if inttostr(TermosdeResponsabilidade2.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else begin
        if not assigned (frmTermosDeResponsabilidade) then Application.CreateForm(TfrmTermosDeResponsabilidade, frmTermosDeResponsabilidade);
        TermosdeResponsabilidade2.enabled := false;
        logusu('A','Acessou ao Cadastro de Termos de Responsabilidade.');
        frmTermosDeResponsabilidade.show;
    end
end;

procedure TF_MSCOMEX.AcrscimoICMSATAreo1Click(Sender: TObject);
begin
    if inttostr(AcrscimoICMSATAreo1.tag) < v_nivel then MessageDlg('Acesso nao Permitido!', mtInformation,[mbOk], 0)
    else
    begin
        if not assigned (frmATAereo) then Application.CreateForm(TfrmATAereo, frmATAereo);
        AcrscimoICMSATAreo1.enabled := false;
        frmATAereo.show;
    end;    
end;

procedure TF_MSCOMEX.IncluiEmailAuto(Titulo, Assunto, Anexo, De, Para, Cc,
  Cco, Body: String);
begin
  try
    qryEmail_Auto.ParamByName('Programa').Value := 'MS2000';
    qryEmail_Auto.ParamByName('Assunto').Value  := Assunto;
    qryEmail_Auto.ParamByName('Titulo').Value   := Titulo;
    qryEmail_Auto.ParamByName('De').Value       := De;
    qryEmail_Auto.ParamByName('Para').Value     := Para;
    qryEmail_Auto.ParamByName('Cc').Value       := Cc;
    qryEmail_Auto.ParamByName('Cco').Value      := Cco;
    qryEmail_Auto.ParamByName('Body').Value     := Body;
    qryEmail_Auto.ParamByName('Anexo').Value    := Anexo;
    qryEmail_Auto.ParamByName('HTML').Value     := 1;
    qryEmail_Auto.ParamByName('Data').Value     := Date();
    qryEmail_Auto.ParamByName('Hora').Value     := Now();
    qryEmail_Auto.ExecSQL;
  except
  end;
end;

function TF_MSCOMEX.DIAutorizada(Processo: String): Boolean;
var
  QryAux : TQuery;
  Data_Analise, Auditor1, Data_Auditor1, Auditor2, Data_Auditor2 : String;
  ValorFatura : Extended;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT Processo, Data_Analise, Auditor1, Data_Auditor1, Auditor2, Data_Auditor2 FROM Audita_Registro_DI WHERE Rejeitada = 0 AND Processo = :Processo ');
    QryAux.ParamByName('Processo').Value := Processo;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       Data_Analise  := QryAux.FieldByName('Data_Analise').AsString;
       Auditor1      := QryAux.FieldByName('Auditor1').AsString;
       Data_Auditor1 := QryAux.FieldByName('Data_Auditor1').AsString;
       Auditor2      := QryAux.FieldByName('Auditor2').AsString;
       Data_Auditor2 := QryAux.FieldByName('Data_Auditor2').AsString;

       QryAux.Close;

       ValorFatura := TotalFatura(Processo);

       if (ValorFatura >= v_ValorMinimoRegistroDI) and
          (ValorFatura <= v_ValorMaximoRegistroDI)
        then if (Trim(Auditor1) <> '') and
                (Data_Auditor1  <> '')
              then Result := True
              else Result := False;

       if (ValorFatura > v_ValorMaximoRegistroDI)
        then if (Trim(Auditor2) <> '') and
                (Data_Auditor2  <> '')
              then Result := True
              else Result := False;
     end
     else Result := False;
  finally
    QryAux.Free;
  end;
end;

function TF_MSCOMEX.DINaoSolicitada(Processo: String; FormFoco : TForm): Boolean;
var
  QryAux : TQuery;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT Processo, Data_Analise, Auditor1, Data_Auditor1, Auditor2, Data_Auditor2 FROM Audita_Registro_DI WHERE Rejeitada = 0 AND Processo = :Processo ');
    QryAux.ParamByName('Processo').Value := Processo;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       Result := False;

       if ((FormFoco <> F_prodidsi))
        then begin
          ShowMessage(v_usuario+', registro de DI já solicitado, a tela está bloqueada.');
          Abort;
        end;
     end
     else Result := True;
  finally
    QryAux.Free;
  end;
end;

function TF_MSCOMEX.TotalFatura(Processo : String) : Double;
var
  QryAux2 : TQuery;
begin
  try
    QryAux2 := TQuery.Create(nil);
    QryAux2.DatabaseName := 'DBNMSCOMEX';

    QryAux2.SQL.Clear;
    QryAux2.SQL.Add(' SELECT SUM(Valor_Total) AS Valor_Total FROM Faturas WHERE Processo = :Processo ');
    QryAux2.ParamByName('Processo').AsString := Processo;
    QryAux2.Open;

    if QryAux2.RecordCount > 0
     then Result := QryAux2.FieldByName('Valor_Total').AsFloat
     else Result := 0;
  finally
    QryAux2.Free;
  end;
end;

function TF_MSCOMEX.TrazNumeroRAT(Processo : String): String;
var
  QryAux : TQuery;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT TOP 1 Numero_Rat FROM RAT WHERE Fk_Processo = :pProcesso ORDER BY ID DESC ');
    QryAux.ParamByName('pProcesso').AsString := Processo;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Result := QryAux.FieldByName('Numero_Rat').AsString
     else Result := '';
  finally
    QryAux.Free;
  end;
end;

function TF_MSCOMEX.UsuarioAtivo(Email: String): Boolean;
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

procedure TF_MSCOMEX.BitBtn1Click(Sender: TObject);
var msg_texto:string;
begin
     msg_texto := Format('Você confirma a alíquota de %s para o ICMS?',['1,5']);
  if(MyMessageDlg('Confirmação',msg_texto, mtConfirmation,[mbYes, mbNo], 0) = mrNo)then begin
    exit;
  end;

end;
         {
function TF_MSCOMEX.MyMessageDlg(const aCaption: String; const Msg: string;
DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;
begin
  with CreateMessageDialog(Msg, DlgType, Buttons) do
  try

   Canvas.Font := Font;
   BorderStyle := bsDialog;
   Caption := ACaption;

    Font.Color := clRed;
    Color := clYellow;
    Font.Size := 10;
    Font.Style := [fsBold];
    Caption := aCaption;
    Position := poScreenCenter;
    HelpContext := HelpCtx;
    Width := 400;

    Result := ShowModal;
  finally
    Free;
  end;
end;
          }

function TF_MSCOMEX.MyMessageDlg(const aCaption: String; const Msg: string;
DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;
var
  I, Ajuste, BotaoMax, BotaoMin, LarguraMax: integer;
  Mensagem: TForm;
begin
  Mensagem := CreateMessageDialog(Msg, DlgType, Buttons);
  Mensagem.Width := 380;
  Mensagem.Font.Color := clRed;
  Mensagem.Color := clYellow;
  //Mensagem.Font.Size := 10;
  Mensagem.Font.Style := [fsBold];
  Mensagem.Caption := aCaption;
  with Mensagem do begin
    for i := 0 to ComponentCount - 1 do begin
      {Procura o label e altera o tamanho}
      if ((Components[i] is TLabel)) and (10 > 0 {Default}) then begin
        TLabel(Components[i]).Font.Size := 10;
        TLabel(Components[i]).AutoSize := true;
        TLabel(Components[i]).WordWrap := False;
      end;
      if true then begin
        if DlgType = mtConfirmation then
        Caption := 'Confirmação'
        else if DlgType = mtWarning then
        Caption := 'Aviso'
        else if DlgType = mtError then
        Caption := 'Erro'
        else if DlgType = mtInformation then
        Caption := 'Informação';
      end;
    end;
    if true then begin
      TButton(Mensagem.FindComponent('YES')).Caption := '&Sim';
      TButton(Mensagem.FindComponent('NO')).Caption := '&Não';
      TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
      TButton(Mensagem.FindComponent('ABORT')).Caption := '&Abortar';
      TButton(Mensagem.FindComponent('RETRY')).Caption := '&Repetir';
      TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
      TButton(Mensagem.FindComponent('ALL')).Caption := '&Todos';
      TButton(Mensagem.FindComponent('HELP')).Caption := 'A&juda';
    end;

    BotaoMax := -1;
    BotaoMin := Mensagem.Width + (-50);
    LarguraMax := -1;

    for i := 0 to Mensagem.ComponentCount-1 do
    Ajuste := ((Mensagem.Width - ((BotaoMax + LarguraMax) - BotaoMin)) div 2) - BotaoMin;

    for i := 0 to Mensagem.ComponentCount-1 do
    if Mensagem.Components[i] is TButton then
    TButton(Mensagem.Components[i]).Left := TButton(Mensagem.Components[i]).Left + Ajuste;

    Result := Mensagem.ShowModal;
    Mensagem.Free;
  end;
end;

end.

