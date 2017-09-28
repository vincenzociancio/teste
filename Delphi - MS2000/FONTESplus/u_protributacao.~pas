unit u_protributacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, DBCtrls;

type
  TF_proTributacao = class(TForm)
    p_processo1: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    q_processos: TQuery;
    ds_qprocessos: TDataSource;
    l_cliente: TLabel;
    Q_itenstributaveis: TQuery;
    q_tributoitem: TQuery;
    ds_qtributoitem: TDataSource;
    ds_qitenstributaveis: TDataSource;
    T_faturas: TTable;
    T_acrescimos: TTable;
    p_processo2: TPanel;
    Label164: TLabel;
    Label165: TLabel;
    b_incluitrib: TBitBtn;
    DBG_tributositem: TDBGrid;
    b_excluitrib: TBitBtn;
    DBG_itenstributaveis: TDBGrid;
    P_tributacao: TPanel;
    Label184: TLabel;
    GroupBox4: TGroupBox;
    Label175: TLabel;
    Label176: TLabel;
    Label180: TLabel;
    Label158: TLabel;
    Label166: TLabel;
    Label168: TLabel;
    Label182: TLabel;
    Label75: TLabel;
    Label235: TLabel;
    Label283: TLabel;
    Label284: TLabel;
    cb_regtrib1: TComboBox;
    cb_fundale: TComboBox;
    cb_atolegalii: TComboBox;
    me_atoconce: TMaskEdit;
    cb_atoii: TComboBox;
    me_perccorII: TMaskEdit;
    cb_motadmtemp: TComboBox;
    me_percex: TMaskEdit;
    cb_atoconce: TComboBox;
    cb_sub: TComboBox;
    me_sub: TMaskEdit;
    me_prazo: TMaskEdit;
    GroupBox5: TGroupBox;
    Label177: TLabel;
    Label183: TLabel;
    Label169: TLabel;
    cb_regtrib2: TComboBox;
    cb_atoipi: TComboBox;
    me_perccoripi: TMaskEdit;
    B_aplica: TBitBtn;
    GroupBox3: TGroupBox;
    Label157: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label167: TLabel;
    me_certificado: TMaskEdit;
    cb_tipoacordo: TComboBox;
    cb_acordoaladi: TComboBox;
    cb_atoaladi: TComboBox;
    me_aliquotaacordo: TMaskEdit;
    b_cancelaapli: TBitBtn;
    cb_bemencomenda: TCheckBox;
    cb_materialusado: TCheckBox;
    cb_valoracao: TComboBox;
    rg_aplicacao: TRadioGroup;
    T_atos: TTable;
    T_motadmtemp: TTable;
    q_atosconce: TQuery;
    T_valoracao: TTable;
    T_aladi: TTable;
    T_itensfaturas: TTable;
    T_tributositem: TTable;
    T_ncm: TTable;
    Q_itensadicoes: TQuery;
    t_ncm_vutil: TTable;
    q_upitens: TQuery;
    q_uptrib: TQuery;
    q_intrib: TQuery;
    T_fundamentolegal: TTable;
    T_transpprocesso: TTable;
    T_taxaconv: TTable;
    q_up_itens: TQuery;
    q_update2: TQuery;
    q_upacrescimos: TQuery;
    GroupBox1: TGroupBox;
    ds_trat: TDataSource;
    cb_confirma: TCheckBox;
    dbg_trat: TDBGrid;
    qtrat: TQuery;
    q_sub: TQuery;
    t_motfund39: TTable;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cb_regtribPC: TComboBox;
    Panel1: TPanel;
    cb_fundPC: TComboBox;
    Label2: TLabel;
    qregtribPC: TQuery;
    qfundpc: TQuery;
    p_reduz: TPanel;
    me_aliq_reduzida_pis: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    me_aliq_reduzida_cofins: TMaskEdit;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    me_fecp: TMaskEdit;
    me_icms: TMaskEdit;
    b_todos: TBitBtn;
    b_todose: TBitBtn;
    q_subEmpresa: TStringField;
    q_subFilial: TStringField;
    q_subNumero: TStringField;
    q_subImportador: TStringField;
    q_subCNPJ_CPF_COMPLETO: TStringField;
    q_subRazao_Social: TStringField;
    T_transpprocessoEmpresa: TStringField;
    T_transpprocessoFilial: TStringField;
    T_transpprocessoProcesso: TStringField;
    T_transpprocessoVia: TStringField;
    T_transpprocessoMultimodal: TSmallintField;
    T_transpprocessoPLaca: TStringField;
    T_transpprocessoLacre: TStringField;
    T_transpprocessoEmbarcacao: TStringField;
    T_transpprocessoTransportador: TStringField;
    T_transpprocessoTipodoccarga: TStringField;
    T_transpprocessoNumerodoccarga: TStringField;
    T_transpprocessoNumeromaster: TStringField;
    T_transpprocessoLocal: TStringField;
    T_transpprocessoData: TDateTimeField;
    T_transpprocessoUtilizacao: TStringField;
    T_transpprocessoTipomanifesto: TStringField;
    T_transpprocessoNumeromanifesto: TStringField;
    T_transpprocessoCodigo_Presenca_Carga: TStringField;
    T_transpprocessoPeso_Bruto: TFloatField;
    T_transpprocessoPeso_Liquido: TFloatField;
    T_transpprocessoAgente: TStringField;
    T_transpprocessoPais_Procedencia: TStringField;
    T_transpprocessoURF_chegada: TStringField;
    T_transpprocessoData_Chegada_URF_Cheg: TDateTimeField;
    T_transpprocessoURF_Despacho: TStringField;
    T_transpprocessoData_Chegada_URF_Desp: TDateTimeField;
    T_transpprocessoRecinto_Alfandegario: TStringField;
    T_transpprocessoSetor_Alfandegario: TStringField;
    T_transpprocessoArmazem: TStringField;
    T_transpprocessoOperacao_FUNDAP: TSmallintField;
    T_transpprocessoContratante_OPCAMBIAL: TStringField;
    T_transpprocessoMoeda_Frete: TStringField;
    T_transpprocessoFrete_Prepaid: TFloatField;
    T_transpprocessoFrete_Collect: TFloatField;
    T_transpprocessoFrete_Ter_Nac: TFloatField;
    T_transpprocessoMoeda_Seguro: TStringField;
    T_transpprocessoValor_Seguro: TFloatField;
    T_transpprocessoMoeda_Despesas_ate_FOB: TStringField;
    T_transpprocessoValor_Despesas_ate_FOB: TFloatField;
    T_transpprocessoUnidade: TStringField;
    T_transpprocessoQuantidade: TFloatField;
    t_ncm_vutilncm: TStringField;
    t_ncm_vutilvida_util: TStringField;
    T_atosEmpresa: TStringField;
    T_atosFilial: TStringField;
    T_atosTipo_Ato: TStringField;
    T_atosNumero: TStringField;
    T_atosEX: TStringField;
    T_atosTipo_Ato_Legal: TStringField;
    T_atosOrgao_Emissor: TStringField;
    T_atosAno_Ato_Legal: TStringField;
    T_atosobs: TStringField;
    q_atosconceNumero: TStringField;
    q_atosconceDescricao: TStringField;
    q_atosconceImportador: TStringField;
    T_valoracaoCODIGO: TStringField;
    T_valoracaoDESCRICAO: TStringField;
    T_aladiCodigo: TStringField;
    T_aladiDescricao: TStringField;
    T_ncmCODIGO: TStringField;
    T_ncmDESCRICAO: TStringField;
    T_ncmUNIDADE_MEDIDA: TStringField;
    T_ncmALIQUOTA_II: TStringField;
    T_ncmDATA_INICIO_VIG_II: TStringField;
    T_ncmDATA_FIM_VIG_II: TStringField;
    T_ncmALIQUOTA_II_MERCOSUL: TStringField;
    T_ncmDATA_INICIO_VIG_II_MSUL: TStringField;
    T_ncmDATA_FIM_VIG_II_MSUL: TStringField;
    T_ncmALIQUOTA_IPI: TStringField;
    T_ncmDATA_INICIO_VIG_IPI: TStringField;
    T_ncmDATA_FIM_VIG_IPI: TStringField;
    T_ncmALIQUOTA_PIS_ADVAL: TStringField;
    T_ncmDATA_INI_VIG_PIS_ADVAL: TStringField;
    T_ncmDATA_FIM_VIG_PIS_ADVAL: TStringField;
    T_ncmALIQUOTA_COFINS_ADVAL: TStringField;
    T_ncmDATA_INI_VIG_COFINS_ADVAL: TStringField;
    T_ncmDATA_FIM_VIG_COFINS_ADVAL: TStringField;
    T_fundamentolegalRegime: TStringField;
    T_fundamentolegalCodigo: TStringField;
    T_fundamentolegalDescricao: TStringField;
    qtratqtrat: TStringField;
    qtratqtratd: TStringField;
    qtratqfun: TStringField;
    qtratqfund: TStringField;
    qfundpcCODIGO: TStringField;
    qfundpcDESCRICAO: TStringField;
    qfundpcREG_TRIBUT_1: TStringField;
    qfundpcREG_TRIBUT_2: TStringField;
    qfundpcREG_TRIBUT_3: TStringField;
    qfundpcREG_TRIBUT_4: TStringField;
    qregtribPCCD_REGIME_TRIBUTAR_II: TStringField;
    qregtribPCCODIGO: TStringField;
    qregtribPCDESCRICAO: TStringField;
    q_processosEmpresa: TStringField;
    q_processosFilial: TStringField;
    q_processosProcesso: TStringField;
    q_processosImportador: TStringField;
    q_processosData: TDateTimeField;
    q_processosrefcli: TStringField;
    q_processosCliente: TStringField;
    q_processostipodecla: TStringField;
    q_processostipopro: TStringField;
    q_processosqcontrato: TStringField;
    q_processosqlocal: TStringField;
    q_processosqcnpj: TStringField;
    q_processosTaxa_SISCOMEX: TFloatField;
    q_processosTaxa_SISCOMEXc: TFloatField;
    q_processosqfilial: TStringField;
    q_processosURF_chegada: TStringField;
    q_processosData_Chegada_URF_Cheg: TDateTimeField;
    q_processosDT_DESEMBARACO: TDateTimeField;
    q_processosURF_Despacho: TStringField;
    q_processosFechado: TSmallintField;
    q_processosATIVO: TSmallintField;
    q_processosUF: TStringField;
    q_processosqtipo: TStringField;
    q_processosResponsavel_empresa: TStringField;
    q_processosResponsavel_empresac: TStringField;
    T_tributositemEmpresa: TStringField;
    T_tributositemFilial: TStringField;
    T_tributositemProcesso: TStringField;
    T_tributositemFatura: TStringField;
    T_tributositemSequencial_Item: TStringField;
    T_tributositemSequencial: TStringField;
    T_tributositemCertificado_Origem: TStringField;
    T_tributositemAto_Concessorio: TStringField;
    T_tributositemCNPJ_CPF_COMPLETO: TStringField;
    T_tributositemMotivo_Adm_Temp: TStringField;
    T_tributositemCD_METOD_VALORACAO: TStringField;
    T_tributositemCD_APLICACAO_MERC: TStringField;
    T_tributositemIN_BEM_ENCOMENDA: TIntegerField;
    T_tributositemIN_MATERIAL_USADO: TIntegerField;
    T_tributositemCD_TIPO_ACORDO_TAR: TStringField;
    T_tributositemACORDO_ALADI: TStringField;
    T_tributositemNumero_Ato_Legal_ALADI: TStringField;
    T_tributositemALIQUOTA_ALADI: TFloatField;
    T_tributositemRegime_Tributacao_II: TStringField;
    T_tributositemAliq_NCM_II: TFloatField;
    T_tributositemValor_II_Devido: TFloatField;
    T_tributositemValor_II_a_recolher: TFloatField;
    T_tributositemFundamento_Legal_II: TStringField;
    T_tributositemNumero_Ato_Legal_II: TStringField;
    T_tributositemRegime_Tributacao_IPI: TStringField;
    T_tributositemBase_Calc_IPI: TFloatField;
    T_tributositemAliq_NCM_IPI: TFloatField;
    T_tributositemValor_IPI_Devido: TFloatField;
    T_tributositemValor_IPI_a_recolher: TFloatField;
    T_tributositemNumero_Ato_Legal_IPI: TStringField;
    T_tributositemPercentual_Reducao_II: TFloatField;
    T_tributositemPercentual_EX: TFloatField;
    T_tributositemPercentual_Reduca_IPI: TFloatField;
    T_tributositemQuantidade: TFloatField;
    T_tributositemAdicao: TStringField;
    T_tributositemSeq_Adicao: TSmallintField;
    T_tributositemDDE: TStringField;
    T_tributositemRE: TStringField;
    T_tributositemPrazo_permanencia: TIntegerField;
    T_tributositemTratamento_Tributario: TStringField;
    T_tributositemFundamento_Legal: TStringField;
    T_tributositemCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    T_tributositemCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    T_tributositemPC_ALIQ_REDUZIDA_PIS: TFloatField;
    T_tributositemPC_ALIQ_REDUZIDA_COFINS: TFloatField;
    T_tributositemAliq_ICMS: TFloatField;
    T_tributositemAliq_ICMS_EXTRA: TFloatField;
    T_faturasEmpresa: TStringField;
    T_faturasFilial: TStringField;
    T_faturasProcesso: TStringField;
    T_faturasCodigo: TStringField;
    T_faturasExportador: TStringField;
    T_faturasIncoterm: TStringField;
    T_faturasVinculacao: TStringField;
    T_faturasCondicao: TStringField;
    T_faturasValor_Total: TFloatField;
    T_faturasPeso_Total: TFloatField;
    T_faturasPeso_Total_Acertado: TFloatField;
    T_faturasAcrescimos_Reducoes: TIntegerField;
    T_faturasMoeda: TStringField;
    T_faturasCobertura_Cambial: TStringField;
    T_faturasMotivo_Sem_Cobertura: TStringField;
    T_faturasModalidade_de_Pagamento: TStringField;
    T_faturasInstituicao_Financiadora: TStringField;
    T_faturasTipo_Parcela: TStringField;
    T_faturasNumero_de_parcelas: TStringField;
    T_faturasPeriodicidade: TStringField;
    T_faturasValor_das_Parcelas: TFloatField;
    T_faturasIndicador_Periodicidade: TStringField;
    T_faturasTaxa_de_Juros: TIntegerField;
    T_faturasCodigo_Taxa_de_Juros: TStringField;
    T_faturasValor_Taxa_de_Juros: TFloatField;
    T_faturasROF_BACEN: TStringField;
    T_faturasPercentual_ROF: TFloatField;
    T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    T_faturasDT_PAG_CAMBIO: TDateTimeField;
    T_faturasSTATUS_CAMBIO: TStringField;
    T_faturasCONTRATO_CAMBIO: TStringField;
    T_faturasSALDO_CAMBIO: TFloatField;
    T_faturasDtEmissao: TDateTimeField;
    T_faturasPeso_Libra: TIntegerField;
    T_acrescimosEmpresa: TStringField;
    T_acrescimosFilial: TStringField;
    T_acrescimosProcesso: TStringField;
    T_acrescimosFatura: TStringField;
    T_acrescimosCD_MET_ACRES_VALOR: TStringField;
    T_acrescimosDescricao: TStringField;
    T_acrescimosVL_ACRESCIMO_MOEDA: TFloatField;
    T_acrescimosCD_MD_NEGOC_ACRES: TStringField;
    T_acrescimosVL_ACRESCIMO_MN: TFloatField;
    T_motadmtempCodigo: TStringField;
    T_motadmtempDescricao: TStringField;
    t_motfund39Codigo: TStringField;
    t_motfund39Descricao: TStringField;
    q_tributoitemEmpresa: TStringField;
    q_tributoitemFilial: TStringField;
    q_tributoitemProcesso: TStringField;
    q_tributoitemFatura: TStringField;
    q_tributoitemSequencial_Item: TStringField;
    q_tributoitemSequencial: TStringField;
    q_tributoitemCertificado_Origem: TStringField;
    q_tributoitemAto_Concessorio: TStringField;
    q_tributoitemCNPJ_CPF_COMPLETO: TStringField;
    q_tributoitemMotivo_Adm_Temp: TStringField;
    q_tributoitemCD_METOD_VALORACAO: TStringField;
    q_tributoitemCD_APLICACAO_MERC: TStringField;
    q_tributoitemIN_BEM_ENCOMENDA: TIntegerField;
    q_tributoitemIN_MATERIAL_USADO: TIntegerField;
    q_tributoitemCD_TIPO_ACORDO_TAR: TStringField;
    q_tributoitemACORDO_ALADI: TStringField;
    q_tributoitemNumero_Ato_Legal_ALADI: TStringField;
    q_tributoitemALIQUOTA_ALADI: TFloatField;
    q_tributoitemRegime_Tributacao_II: TStringField;
    q_tributoitemAliq_NCM_II: TFloatField;
    q_tributoitemValor_II_Devido: TFloatField;
    q_tributoitemValor_II_a_recolher: TFloatField;
    q_tributoitemFundamento_Legal_II: TStringField;
    q_tributoitemNumero_Ato_Legal_II: TStringField;
    q_tributoitemRegime_Tributacao_IPI: TStringField;
    q_tributoitemBase_Calc_IPI: TFloatField;
    q_tributoitemAliq_NCM_IPI: TFloatField;
    q_tributoitemValor_IPI_Devido: TFloatField;
    q_tributoitemValor_IPI_a_recolher: TFloatField;
    q_tributoitemNumero_Ato_Legal_IPI: TStringField;
    q_tributoitemPercentual_Reducao_II: TFloatField;
    q_tributoitemPercentual_EX: TFloatField;
    q_tributoitemPercentual_Reduca_IPI: TFloatField;
    q_tributoitemQuantidade: TFloatField;
    q_tributoitemAdicao: TStringField;
    q_tributoitemSeq_Adicao: TSmallintField;
    q_tributoitemDDE: TStringField;
    q_tributoitemRE: TStringField;
    q_tributoitemPrazo_permanencia: TIntegerField;
    q_tributoitemTratamento_Tributario: TStringField;
    q_tributoitemFundamento_Legal: TStringField;
    q_tributoitemCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    q_tributoitemCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    q_tributoitemPC_ALIQ_REDUZIDA_PIS: TFloatField;
    q_tributoitemPC_ALIQ_REDUZIDA_COFINS: TFloatField;
    q_tributoitemAliq_ICMS: TFloatField;
    q_tributoitemAliq_ICMS_EXTRA: TFloatField;
    Q_itensadicoessequencial: TStringField;
    Q_itensadicoesseq: TStringField;
    Q_itensadicoesNR_DECL_IMP_MICRO: TStringField;
    Q_itensadicoesCodigo: TStringField;
    Q_itensadicoesVinculacao: TStringField;
    Q_itensadicoesURF_chegada: TStringField;
    Q_itensadicoesVia: TStringField;
    Q_itensadicoesMultimodal: TIntegerField;
    Q_itensadicoesRazao_Social: TStringField;
    Q_itensadicoesEndereco: TStringField;
    Q_itensadicoesNumero: TStringField;
    Q_itensadicoesComplemento: TStringField;
    Q_itensadicoesCidade: TStringField;
    Q_itensadicoesEstado: TStringField;
    Q_itensadicoesPais: TStringField;
    Q_itensadicoesNCM: TStringField;
    Q_itensadicoesPais_Procedencia: TStringField;
    Q_itensadicoesFABNOME: TStringField;
    Q_itensadicoesFABEND: TStringField;
    Q_itensadicoesFABNUM: TStringField;
    Q_itensadicoesFABCOMP: TStringField;
    Q_itensadicoesFABCID: TStringField;
    Q_itensadicoesFABEST: TStringField;
    Q_itensadicoesFABPAI: TStringField;
    Q_itensadicoesNBM: TStringField;
    Q_itensadicoesNALADI: TStringField;
    Q_itensadicoesSomaDePeso_Total_Acertado: TFloatField;
    Q_itensadicoesSomaDeQuantidade: TFloatField;
    Q_itensadicoesCD_APLICACAO_MERC: TStringField;
    Q_itensadicoesMoeda: TStringField;
    Q_itensadicoesIncoterm: TStringField;
    Q_itensadicoesCondicao: TStringField;
    Q_itensadicoesSomaDeValor_Aduaneiro: TFloatField;
    Q_itensadicoesFrete: TFloatField;
    Q_itensadicoesSomaDeRateio_Seguro: TFloatField;
    Q_itensadicoesCD_METOD_VALORACAO: TStringField;
    Q_itensadicoesCD_TIPO_ACORDO_TAR: TStringField;
    Q_itensadicoesACORDO_ALADI: TStringField;
    Q_itensadicoesRegime_Tributacao_II: TStringField;
    Q_itensadicoesFundamento_Legal_II: TStringField;
    Q_itensadicoesMotivo_Adm_Temp: TStringField;
    Q_itensadicoesNumero_Ato_Legal_II: TStringField;
    Q_itensadicoesPercentual_Reducao_II: TFloatField;
    Q_itensadicoesCobertura_Cambial: TStringField;
    Q_itensadicoesModalidade_de_Pagamento: TStringField;
    Q_itensadicoesInstituicao_Financiadora: TStringField;
    Q_itensadicoesMotivo_Sem_Cobertura: TStringField;
    Q_itensadicoesNumero_de_parcelas: TStringField;
    Q_itensadicoesPeriodicidade: TStringField;
    Q_itensadicoesIndicador_Periodicidade: TStringField;
    Q_itensadicoesTaxa_de_Juros: TIntegerField;
    Q_itensadicoesROF_BACEN: TStringField;
    Q_itensadicoesCodigo_Taxa_de_Juros: TStringField;
    Q_itensadicoesIN_BEM_ENCOMENDA: TIntegerField;
    Q_itensadicoesIN_MATERIAL_USADO: TIntegerField;
    Q_itensadicoesSomaDeVMLE: TFloatField;
    Q_itensadicoesSomaDeBase_Calc_II: TFloatField;
    Q_itensadicoesCertificado_Origem: TStringField;
    Q_itensadicoesAto_Concessorio: TStringField;
    Q_itensadicoesALIQUOTA_ALADI: TFloatField;
    Q_itensadicoesRegime_Tributacao_IPI: TStringField;
    Q_itensadicoesNumero_Ato_Legal_IPI: TStringField;
    Q_itensadicoesPercentual_Reduca_IPI: TFloatField;
    Q_itensadicoesFatura: TStringField;
    Q_itensadicoesUnidade_Medida_Estat: TStringField;
    Q_itensadicoesDestaque_NCM: TStringField;
    Q_itensadicoesRegime_Tributacao_II_1: TStringField;
    Q_itensadicoesPrazo_permanencia: TIntegerField;
    Q_itensadicoespagina: TStringField;
    T_taxaconvEmpresa: TStringField;
    T_taxaconvFilial: TStringField;
    T_taxaconvProcesso: TStringField;
    T_taxaconvMoeda: TStringField;
    T_taxaconvTaxa_conversao: TFloatField;
    T_taxaconvTaxa_conversaoc: TFloatField;
    Q_itenstributaveisEmpresa: TStringField;
    Q_itenstributaveisFilial: TStringField;
    Q_itenstributaveisProcesso: TStringField;
    Q_itenstributaveisFatura: TStringField;
    Q_itenstributaveisSequencial: TStringField;
    Q_itenstributaveisPagina: TStringField;
    Q_itenstributaveisProduto: TStringField;
    Q_itenstributaveisqdesc: TStringField;
    Q_itenstributaveisFabricante: TStringField;
    Q_itenstributaveisNCM: TStringField;
    Q_itenstributaveisUnidade: TStringField;
    Q_itenstributaveisUnidade_Medida_Estat: TStringField;
    Q_itenstributaveisDestaque_NCM: TStringField;
    Q_itenstributaveisNALADI: TStringField;
    Q_itenstributaveisReferencia: TStringField;
    Q_itenstributaveisNumero_serie: TStringField;
    Q_itenstributaveisReferencia_projeto: TStringField;
    Q_itenstributaveisPO: TStringField;
    Q_itenstributaveisSeqpo: TStringField;
    Q_itenstributaveisQuantidade: TFloatField;
    Q_itenstributaveisValor_Unitario: TFloatField;
    Q_itenstributaveisValor_Total: TFloatField;
    Q_itenstributaveisPeso_Unitario: TFloatField;
    Q_itenstributaveisPeso_Unitario_Acertado: TFloatField;
    Q_itenstributaveisPeso_Total: TFloatField;
    Q_itenstributaveisPeso_Total_Acertado: TFloatField;
    Q_itenstributaveisRateio_Acrescimos: TFloatField;
    Q_itenstributaveisRateio_Deducoes: TFloatField;
    Q_itenstributaveisRateio_Embalagem: TFloatField;
    Q_itenstributaveisRateio_Frete_Interno_imp: TFloatField;
    Q_itenstributaveisRateio_Seguro_Interno: TFloatField;
    Q_itenstributaveisRateio_outras_import: TFloatField;
    Q_itenstributaveisRateio_startup: TFloatField;
    Q_itenstributaveisRateio_jurosfin: TFloatField;
    Q_itenstributaveisRateio_montagem: TFloatField;
    Q_itenstributaveisRateio_Frete_Interno_exp: TFloatField;
    Q_itenstributaveisRateio_carga_exp: TFloatField;
    Q_itenstributaveisRateio_outras_export: TFloatField;
    Q_itenstributaveisRateio_frete_fatura: TFloatField;
    Q_itenstributaveisRateio_seguro_fatura: TFloatField;
    Q_itenstributaveisRateio_carga_imp: TFloatField;
    Q_itenstributaveisRateio_Despesas_ate_FOB: TFloatField;
    Q_itenstributaveisRateio_Frete_prepaid: TFloatField;
    Q_itenstributaveisRateio_Frete_collect: TFloatField;
    Q_itenstributaveisRateio_Frete_ternac: TFloatField;
    Q_itenstributaveisRateio_Seguro: TFloatField;
    Q_itenstributaveisValor_Aduaneiro: TFloatField;
    Q_itenstributaveisValor_mercadoria: TFloatField;
    Q_itenstributaveisVMLE: TFloatField;
    Q_itenstributaveisBase_Calc_II: TFloatField;
    Q_itenstributaveisAcresc_reduc_Valaduan: TFloatField;
    Q_itenstributaveisCOD_SIT: TStringField;
    Q_itenstributaveisCNPJ: TStringField;
    Q_itenstributaveisFiel_nome: TStringField;
    Q_itenstributaveisFiel_cpf: TStringField;
    Q_itenstributaveisContrato: TStringField;
    Q_itenstributaveisLocal_Inventario: TStringField;
    Q_itenstributaveisRateio_Taxa_Siscomex: TFloatField;
    Q_itenstributaveisqdesci: TMemoField;
    Q_itenstributaveisCodigo_Produto: TStringField;
    Q_itenstributaveisSequencial_Produto: TIntegerField;
    Q_itenstributaveisSaldo_Tributavel: TFloatField;
    T_itensfaturasEmpresa: TStringField;
    T_itensfaturasFilial: TStringField;
    T_itensfaturasProcesso: TStringField;
    T_itensfaturasFatura: TStringField;
    T_itensfaturasSequencial: TStringField;
    T_itensfaturasPagina: TStringField;
    T_itensfaturasProduto: TStringField;
    T_itensfaturasDescricao_Produto: TMemoField;
    T_itensfaturasFabricante: TStringField;
    T_itensfaturasNCM: TStringField;
    T_itensfaturasUnidade: TStringField;
    T_itensfaturasUnidade_Medida_Estat: TStringField;
    T_itensfaturasDestaque_NCM: TStringField;
    T_itensfaturasNALADI: TStringField;
    T_itensfaturasReferencia: TStringField;
    T_itensfaturasNumero_serie: TStringField;
    T_itensfaturasReferencia_projeto: TStringField;
    T_itensfaturasPO: TStringField;
    T_itensfaturasSeqpo: TStringField;
    T_itensfaturasQuantidade: TFloatField;
    T_itensfaturasValor_Unitario: TFloatField;
    T_itensfaturasValor_Total: TFloatField;
    T_itensfaturasPeso_Unitario: TFloatField;
    T_itensfaturasPeso_Unitario_Acertado: TFloatField;
    T_itensfaturasPeso_Total: TFloatField;
    T_itensfaturasPeso_Total_Acertado: TFloatField;
    T_itensfaturasSaldo_Tributavel: TFloatField;
    T_itensfaturasRateio_Acrescimos: TFloatField;
    T_itensfaturasRateio_Deducoes: TFloatField;
    T_itensfaturasRateio_Embalagem: TFloatField;
    T_itensfaturasRateio_Frete_Interno_imp: TFloatField;
    T_itensfaturasRateio_Seguro_Interno: TFloatField;
    T_itensfaturasRateio_outras_import: TFloatField;
    T_itensfaturasRateio_startup: TFloatField;
    T_itensfaturasRateio_jurosfin: TFloatField;
    T_itensfaturasRateio_montagem: TFloatField;
    T_itensfaturasRateio_Frete_Interno_exp: TFloatField;
    T_itensfaturasRateio_carga_exp: TFloatField;
    T_itensfaturasRateio_outras_export: TFloatField;
    T_itensfaturasRateio_frete_fatura: TFloatField;
    T_itensfaturasRateio_seguro_fatura: TFloatField;
    T_itensfaturasRateio_carga_imp: TFloatField;
    T_itensfaturasRateio_Despesas_ate_FOB: TFloatField;
    T_itensfaturasRateio_Frete_prepaid: TFloatField;
    T_itensfaturasRateio_Frete_collect: TFloatField;
    T_itensfaturasRateio_Frete_ternac: TFloatField;
    T_itensfaturasRateio_Seguro: TFloatField;
    T_itensfaturasValor_Aduaneiro: TFloatField;
    T_itensfaturasValor_mercadoria: TFloatField;
    T_itensfaturasVMLE: TFloatField;
    T_itensfaturasBase_Calc_II: TFloatField;
    T_itensfaturasAcresc_reduc_Valaduan: TFloatField;
    T_itensfaturasCOD_SIT: TStringField;
    T_itensfaturasCNPJ: TStringField;
    T_itensfaturasFiel_nome: TStringField;
    T_itensfaturasFiel_cpf: TStringField;
    T_itensfaturasContrato: TStringField;
    T_itensfaturasLocal_Inventario: TStringField;
    T_itensfaturasRateio_Taxa_Siscomex: TFloatField;
    T_itensfaturasDescricao_Produto_ing: TMemoField;
    T_itensfaturasCodigo_Produto: TStringField;
    T_itensfaturasSequencial_Produto: TIntegerField;
    gb_senha: TGroupBox;
    L_SUPER: TLabel;
    Label12: TLabel;
    e_senha: TEdit;
    b_ok: TBitBtn;
    b_cancela: TBitBtn;
    q_processosNR_DECLARACAO_IMP: TStringField;
    Label5: TLabel;
    GroupBox7: TGroupBox;
    chkICMS_BASE: TCheckBox;
    qr_AtualizaProcessaBaseICMS: TQuery;
    q_update_baseICMS: TQuery;
    q_base_icms: TQuery;
    q_base_icmsbase_icms: TIntegerField;
    qryVerificaPesoLiq: TQuery;
    qryVerificaPesoLiqPeso_Liquido: TFloatField;
    lblMaterialUsado: TLabel;
    q_processosMaterial_Usado: TSmallintField;
    GroupBox8: TGroupBox;
    txtNumeroDaLI: TEdit;
    GroupBox9: TGroupBox;
    lblRepetro: TLabel;
    lblIns: TLabel;
    lblDescricao: TLabel;
    lblRepetroResp: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    q_processosContrato: TStringField;
    qRateioFreteFatura: TQuery;
    qRateioFreteFaturafatura: TStringField;
    qRateioFreteFaturaSequencial: TStringField;
    qRateioFreteFaturaRateio_frete_fatura: TFloatField;
    qVerificaSaldoTributacao0: TQuery;
    qAtualizaSaldoTributacao: TQuery;
    qVerificaSaldoTributacao0Saldo_Tributavel: TFloatField;
    qVerificaSaldoTributacao0Quantidade: TFloatField;
    T_faturasFrete_Incluso: TIntegerField;
    chkTxConversaodeAmanha: TCheckBox;
    q_processostxConversaoDeAmanha: TSmallintField;
    qUpdtProcessosFlag: TQuery;
    T_taxaconvDeAmanha: TTable;
    T_taxaconvDeAmanhaEmpresa: TStringField;
    T_taxaconvDeAmanhaFilial: TStringField;
    T_taxaconvDeAmanhaProcesso: TStringField;
    T_taxaconvDeAmanhaMoeda: TStringField;
    T_taxaconvDeAmanhaTaxa_conversao: TFloatField;
    T_taxaconvDeAmanhaTaxa_conversaoc: TFloatField;
    PanelRepetroICMS: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure b_incluitribClick(Sender: TObject);
    procedure b_cancelaapliClick(Sender: TObject);
    procedure B_aplicaClick(Sender: TObject);
    procedure b_excluitribClick(Sender: TObject);
    procedure DBG_tributositemEnter(Sender: TObject);
    procedure T_tributositemBeforeDelete(DataSet: TDataSet);
    procedure cb_regtrib1Change(Sender: TObject);
    procedure rateio2(Sender: TObject);
    procedure cb_confirmaClick(Sender: TObject);
    procedure cb_atoconceChange(Sender: TObject);
    procedure cb_fundaleChange(Sender: TObject);
    procedure cb_regtribPCChange(Sender: TObject);
    procedure b_todosClick(Sender: TObject);
    procedure b_todoseClick(Sender: TObject);
    procedure T_itensfaturasAfterPost(DataSet: TDataSet);
    procedure b_cancelaClick(Sender: TObject);
    procedure b_okClick(Sender: TObject);

    procedure VerificaAutorizacaoParaExcluirDiRegistrada(Sender: TObject);
    procedure chkTxConversaodeAmanhaClick(Sender: TObject);
    procedure cb_motadmtempChange(Sender: TObject);
    procedure cb_regtrib2Change(Sender: TObject);
    procedure cb_fundPCChange(Sender: TObject);
  private
    Supervisor, Senha : String;

    function VerificaLI_Sem_PontoEVirgula(sTexto : String): String;
    procedure TrazSupervisorESenha;
    procedure ZerarVariaveis;
    procedure ApagaInfoLabelsContrato;
    function FiltrarRepetro: Boolean;
    procedure PreencheInfoLabelsContrato;
    procedure VerificarICMSRepetro;
    { Private declarations }
    function MyMessageDlg(const aCaption: String; const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;
  public
    { Public declarations }
  end;

var
  F_proTributacao: TF_proTributacao;
  selecao:integer;
  v_quant:string;
  v_seq :string;
  q_taxa:string;
  valor_icms_repetro: string;
  
implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_proTributacao.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  ShowMessage(v_usuario+', ATENÇÃO! para as alíquotas do ICMS!, ANTES DE TRIBUTAR INFORME AS URFs DE CHEGADA E DESEMBARAÇO!');
end;

procedure TF_proTributacao.ME_nossarefChange(Sender: TObject);
var qincoterms:string;
    atualiza, achou,mostramsg:boolean;
    cnpj: String;
begin
   {Inicio eduardo.souza 08/03/2013}
If Length( F_MSCOMEX.LRTrim( me_nossaref.Text ) ) = 8 Then Begin
    //  Exit;

   // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
   If (IsClosedProcess( me_nossaref.Text, F_proTributacao )) Then
     Abort;
   //--

   q_processos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
   q_processos.Close;
   q_processos.Open;

   //if q_processos.Locate('Processo',me_nossaref.text,[loCaseInsensitive]) then begin
   If ( Not q_processos.IsEmpty ) Then Begin
     {Fim eduardo.souza 08/03/2013}
      if F_MSCOMEX.AcessaPasta(me_nossaref.Text, q_processosTipoPro.AsString, F_proTributacao) and
         F_MSCOMEX.DINaoSolicitada(me_nossaref.Text, F_proTributacao)
       then p_processo2.Enabled := True;

       {Ticket 4301 - Leandro Serra Tx Conversão de Amanhã para Lubrizol}
       if (q_processosImportador.asString = '424') or (q_processosImportador.asString = '425') or
       (q_processosImportador.asString = '426') or (q_processosImportador.asString = '427') then
       begin
            {Se for a primeira vez atualiza o valor = 0}
            if q_processostxConversaoDeAmanha.value = -1 then
            begin
                qUpdtProcessosFlag.Close;
                qUpdtProcessosFlag.ParamByName('ptxConversaoDeAmanha').asInteger := 0;
                qUpdtProcessosFlag.ParamByName('pCodigo').asString := ME_nossaref.text;
                qUpdtProcessosFlag.Open;
            end;
            chkTxConversaodeAmanha.visible := True;
            if q_processostxConversaoDeAmanha.value = 1 then  chkTxConversaodeAmanha.Checked := True else chkTxConversaodeAmanha.Checked := False;
       end
       else
            chkTxConversaodeAmanha.visible := false;
      /////////////////////////////////////
      if T_faturas.state = dsInactive then T_faturas.open;
      if T_acrescimos.state = dsInactive then T_acrescimos.open;
      if qtrat.state = dsInactive then qtrat.open;

      {verifica se o saldo tributável está = 0 sendo assim atualiza para ser igual a quantidade
      Leandro Serra - 24/08/2012 Ticket 3482}
   {   atualiza := false;

      qVerificaSaldoTributacao0.close;
      qVerificaSaldoTributacao0.ParamByName('pProc').asString:= ME_nossaref.text;
      qVerificaSaldoTributacao0.Open;

      while not qVerificaSaldoTributacao0.Eof do
      begin
         if qVerificaSaldoTributacao0Saldo_Tributavel.Value <> qVerificaSaldoTributacao0Quantidade.Value then atualiza := true;
         qVerificaSaldoTributacao0.Next;
      end;
      if atualiza then
      begin
          qAtualizaSaldoTributacao.Close;
          qAtualizaSaldoTributacao.ParamByName('pProc').asString := ME_nossaref.text;
          qAtualizaSaldoTributacao.ExecSQL;
      end;   }
      {Fim Ticket 3482}
{verifica itens de notas fiscais}
Q_itenstributaveis.Close;
Q_itenstributaveis.Params[0].AsString := q_processosempresa.asstring;
Q_itenstributaveis.Params[1].AsString := q_processosfilial.asstring;
Q_itenstributaveis.Params[2].AsString := me_nossaref.text;
Q_itenstributaveis.open;

{verifica tributacao dos itens de notas fiscais}
Q_tributoitem.Close;
Q_tributoitem.Params[0].AsString := q_processosempresa.asstring;
Q_tributoitem.Params[1].AsString := q_processosfilial.asstring;
Q_tributoitem.Params[2].AsString := me_nossaref.text;
Q_tributoitem.open;

///verificar incoterms das faturas
{
marcelo em 07/03/2002
Marcos vê se implementa isto com urgência para mim. Se der, ainda hoje.
Qaundo as faturas de determinado processo são
CPT /CFR - Deve brigatoriamente haver um acréscimo na fatura de frete internecional.
CIP - Deve brigatoriamente haver um acréscimo na fatura de seguro  internecional
CIF - Deve brigatoriamente haver um acréscimo na fatura de seguro  internecional e frete internacional

Quando o funcionário for tributar o processo, o sistema deve verificar se existe alguma fatura com os Incoterms acima e alertar que os acréscimos devem ser inseridos nas respectivas faturas, e não deixa tributar.

No caso de
DDP/DDU - Deve brigatoriamente haver um acréscimo na fatura de seguro  internecional , frete internacional  , etc....
O sistema deve apenas alertar e deixar tributar pois a variação de tipos acrescimos que podem ocorrem é muito ampla e fica impossível verificar.


}
qincoterms:= v_usuario+','+#13#10#13#10;
achou := true;
mostramsg := false;

PreencheInfoLabelsContrato;

T_faturas.first;
t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
while ((not t_faturas.eof)and(t_faturasempresa.asstring=q_processosempresa.asstring)and(t_faturasfilial.asstring=q_processosfilial.asstring)
     and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
///     showmessage(t_faturasprocesso.asstring+' - '+t_faturascdigo.asstring);
     /// 13= frete internacional
     if ((t_faturasincoterm.asstring='CPT') or  {Incluído o DAP conforme o Ticket 3371}
         (t_faturasincoterm.asstring='CFR') or (t_faturasincoterm.asstring='DAP'))  then begin
         if not t_acrescimos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring,'13']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possui frete internacional informado. Tributação cancelada.'+#13#10;
            achou := false;
         end
         else qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com frete internacional informado. OK!'+#13#10;
         mostramsg := true;
     end;
     /// 14= seguro internacional
     if ((t_faturasincoterm.asstring='CIP') or
        (t_faturasincoterm.asstring='CIF'))  then begin
        if not t_acrescimos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring,'14']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possui seguro internacional informado. Tributação cancelada.'+#13#10;
            achou := false;
         end
         else qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com seguro internacional informado. OK!'+#13#10;
         mostramsg := true;
     end;
     /// 7 e 8
     if ((t_faturasincoterm.asstring='DDP') or
        (t_faturasincoterm.asstring='DDU'))  then begin
        if not t_acrescimos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring,'13']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possui frete internacional informado. Verifique.'+#13#10;
        end
        else qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com frete internacional informado. OK!'+#13#10;
        if not t_acrescimos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring,'14']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possui seguro internacional informado. Verifique.'+#13#10;
        end
        else qincoterms := qincoterms+'Fatura:'+t_faturascodigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com seguro internacional informado. OK!'+#13#10;
         mostramsg := true;
     end;
     t_faturas.next;
end;

if mostramsg then showmessage(qincoterms);
////if (not achou) then ts_tributacao.enabled := false
////else ts_tributacao.enabled := true;

///end;


      ///////////////////////////////////////








        ///alterei em 27/07/2005 - mm - chupisco!!!
        v_AlteraPRO := 1;
        If (q_processosAtivo.asinteger = 0) then begin
         //If (not v_Edita_cliente_inativo)  then begin
           If (v_Edita_cliente_inativo = 0)  then begin
              Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
              v_AlteraPRO := 0;
           end;
        end;
        If (q_processosFechado.asinteger = 1) then begin
           //If (not v_Edita_Processo_Fechado)  then begin
             If (v_Edita_Processo_Fechado = 0)  then begin
                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

        //SHOWMESSAGE(V_USUARIOS);
        If (q_ProcessosResponsavel_Empresac.AsString = v_usuario) or
           (q_ProcessosResponsavel_Empresa.AsString = v_usuario) or
           ((q_ProcessosResponsavel_Empresa.AsString='') and (pos(q_ProcessosResponsavel_Empresac.AsString,v_usuarios)>0)) or
           (pos(q_ProcessosResponsavel_Empresa.AsString,v_usuarios)>0) Then begin
            v_AlteraPRO := 1;
           if q_processosMaterial_Usado.Value = 1 then
           begin
                lblMaterialUsado.Visible:=True;
                showmessage(v_usuario+ ' Atenção: Este processo contém material usado, informe-o para transmisão no SISCOMEX.');
           end
           else
                lblMaterialUsado.Visible:=False;            
        end
        Else BEGIN
           v_AlteraPRO := 0;
           showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade de Oper.'+q_ProcessosResponsavel_Empresa.AsString);///+' - Comer.'+q_ProcessosResponsavel_Empresac.AsString);
        END;

        //mm 24/07/2006 - usuariosclientes
        if f_mscomex.q_usucli.recordcount>0 then begin
           if f_mscomex.q_usucli.locate('Importador',q_Processosimportador.asstring,[]) then begin
              v_autorizadocli := 1;
           end
           else begin
              v_autorizadocli := 0;
           end;
        end
        else begin
              v_autorizadocli := 1;
        end;
        F_MSCOMEX.atualizacpastas(ME_nossaref.text);
        If (v_autorizadocli = 1) Then Begin


           cnpj := q_processosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           l_cliente.Caption := q_ProcessosCliente.AsString+' - CNPJ: '+cnpj;

           p_processo2.visible := true;



        End
        Else Begin
           l_cliente.Caption := '';
           p_processo2.visible := false;
           Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
        End;



   end
   else begin
      showmessage('Processo não encontrado!');
      l_cliente.caption := '';
      me_nossaref.text := '';
      p_processo2.visible := false;
   end;
end;
  if (q_processosNR_DECLARACAO_IMP.AsString <> '') then b_excluitrib.Enabled := false;
end;

procedure TF_proTributacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_protributacao := nil;
f_mscomex.Tributao1.enabled := true;
end;

procedure TF_proTributacao.FormCreate(Sender: TObject);
begin
//q_processos.close;
//q_processos.open;
{**** Leandro Serra -10/08/2011
     Inserido para atribuir valor no checkbox
****}
{
q_base_icms.close;
q_base_icms.ParamByName('pcodigo').asstring:=ME_nossaref.text;
q_base_icms.open;
}
end;

procedure TF_proTributacao.b_incluitribClick(Sender: TObject);
begin
  cb_regtrib1.Text := '';
  cb_regtrib2.Text := '';
  cb_regtribPC.Text := '';
  cb_confirma.Checked := false;

  if (v_AlteraPRO = 1) then begin
    {possiciona no processo}
    ///t_processos.first;
    ///t_processos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);

    if T_atos.state = dsInactive then T_atos.open;
    if t_motadmtemp.state = dsInactive then t_motadmtemp.open;
    if t_motfund39.state = dsInactive then t_motfund39.open;
    if t_valoracao.state = dsInactive then t_valoracao.open;
    if t_aladi.state = dsInactive then t_aladi.open;
    if t_fundamentolegal.state = dsInactive then t_fundamentolegal.open;

    {zera variaveis de tributacao}
    cb_fundale.text       := '';
    cb_motadmtemp.text    := '';
    cb_atoii.text         := '';
    me_perccorii.text     := '0';
    me_atoconce.text      := '';
    me_sub.text           := '';
    cb_regtrib2.text      := '';
    cb_atoipi.text        := '';
    me_perccoripi.text    := '0';
    cb_tipoacordo.text    := '';
    cb_acordoaladi.text   := '';
    cb_atoaladi.text      := '';
    me_aliquotaacordo.text := '0';
    me_certificado.text   := '';

    ///alterado em 10/03/2004 - Odilma
    rg_aplicacao.itemindex := 2;
    if (q_processostipodecla.asstring = '05') then begin
      rg_aplicacao.enabled   := false;
    end
    else begin
      showmessage(v_usuario+', Atenção! ao informar aplicação da Mercadoria.');
      if (q_processostipodecla.asstring = '12') then begin
        if MessageDlg('Se tributação for para admissão temporária. Confirme para não usar "aplicação mercadoria" ', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
          rg_aplicacao.itemindex := 2;
        end;
      end;
      rg_aplicacao.enabled   := true;
    end;

    {verifica atos legais}
    t_atos.first;
    cb_atoii.clear;
    cb_atoipi.clear;
    cb_atoaladi.clear;
    while not t_atos.Eof do begin
      if t_atostipo_ato.asstring = '1' then
        cb_atoii.items.add(t_atosnumero.asstring);
      if t_atostipo_ato.asstring = '2' then
        cb_atoipi.items.add(t_atosnumero.asstring);
      if t_atostipo_ato.asstring = '3' then
        cb_atoaladi.items.add(t_atosnumero.asstring);
      t_atos.next;
    end;

    {verifica motivos de admissão temporaria}
    t_motadmtemp.first;
    cb_motadmtemp.clear;
    while not t_motadmtemp.Eof do begin
      cb_motadmtemp.items.add(t_motadmtempcodigo.asstring+' '+t_motadmtempdescricao.asstring);
      t_motadmtemp.next;
    end;

    {verifica atos concessorios por importador}
    q_atosconce.close;
    q_atosconce.params[0].asstring := q_processosimportador.asstring;
    q_atosconce.open;
    cb_atoconce.clear;
    while not q_atosconce.Eof do begin
      cb_atoconce.items.add(copy(q_atosconcenumero.asstring+'                                      ',1,20)+' '+q_atosconcedescricao.asstring);
      q_atosconce.next;
    end;

    cb_sub.clear;

    {verifica metodos de valoração}
    t_valoracao.first;
    cb_valoracao.clear;
    cb_valoracao.text := t_valoracaocodigo.asstring+' '+t_valoracaodescricao.asstring;
    while not t_valoracao.Eof do begin
      cb_valoracao.items.add(t_valoracaocodigo.asstring+' '+t_valoracaodescricao.asstring);
      t_valoracao.next;
    end;

    {verifica acordos aladi}
    t_aladi.first;
    cb_acordoaladi.clear;
    while not t_aladi.Eof do begin
      cb_acordoaladi.items.add(t_aladicodigo.asstring+' '+t_aladidescricao.asstring);
      t_aladi.next;
    end;

    selecao := 0;
    v_quant := '';
    {verifica seleção de mais de um item}
    if (dbg_itenstributaveis.SelectedRows.Count>0) then begin
      {    with dbg_itenstributaveis.DataSource.DataSet do
      for i:=0 to dbg_itenstributaveis.SelectedRows.Count-1 do
      begin}
      selecao := dbg_itenstributaveis.SelectedRows.Count;
      v_quant := dbg_itenstributaveis.fields[4].asstring;
    end;

    ///tratamento icms da tributação

    /// alterado em 31/08/2004 para nova lei do icms para 0717700 - AEROPORTO INTERNACIONAL DO RIO DE JANEIRO
    /// alterado em 19/10/2004 para colocar a urf de entrada
    if (q_processosurf_chegada.asstring='0717700') then begin
      if (q_processosDT_DESEMBARACO.isnull) then
        me_icms.text := '13'
      else begin
        if (q_processosDT_DESEMBARACO.asdatetime >=strtodate('31/08/2004')) then me_icms.text := '13'
          else me_icms.text := '18'
        end;
      end
    else begin
      if (q_processosDT_DESEMBARACO.isnull) then
        me_icms.text := f_mscomex.t_parametrosAliq_ICMS.asstring
      else begin
        if v_filial='RJO' then begin
          if (q_processosDT_DESEMBARACO.asdatetime >=strtodate('31/08/2004')) then
            me_icms.text := f_mscomex.t_parametrosAliq_ICMS.asstring
          else
            me_icms.text := '18'
        end
        else me_icms.text := f_mscomex.t_parametrosAliq_ICMS.asstring
      end;
    end;
    me_fecp.text := f_mscomex.t_parametrosAliq_ICMS_Extra.asstring;

    /// alterado em 02/08/2006 para colocar 17% Urf de chegada = Salvador(0517700) e Porto de Salvador(0517600)
    ///        if (q_processosurf_chegada.asstring='0517700') or (q_processosurf_chegada.asstring='0517600') then begin
    ///            aliq_icms := 17;
    ///            aliq_icms_extra := 0;
    ///        end;
    ///

    /// alterado em 26/12/2006 para colocar 17% Urf do Importador = BA
    if (q_processosUF.asstring='BA') then begin
      me_icms.text := '17';
      me_fecp.text  := '0';
    end;

    /// alterado em 08/10/2007 para colocar 18% Urf do Importador = SP
    if (q_processosUF.asstring='SP') then begin
      me_icms.text := '18';
      me_fecp.text  := '0';
    end;

    /// alterado em 26/10/2007 para colocar 18% Urf do Importador = AM
    /// alterado pelo jorge 10042008 = 17
    if (q_processosUF.asstring='AM') then begin
      me_icms.text := '17';
      me_fecp.text  := '0';
    end;

    /// alterado em 06062007 para colocar 17% Urf - jorge
    /// retirado em 04042008 - jorge
    {        if (q_processosurf_chegada.asstring='0727600') then begin
                me_icms.text := '17';
                me_fecp.text  := '0';
            end;}

    /// alterado em 05122007 para colocar 9% Urf - Duilio
    if (q_processosurf_chegada.asstring='0917800') or (q_processosurf_chegada.asstring='0915200') then begin
      if MessageDlg('Material com urf de chegada 0917800(Paranaguá) ou 0915200(Curitiba). Sendo Revenda o ICMS = 9%. Confirma?)', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
        me_icms.text := '9';
        me_fecp.text  := '0';
      end;
    end;

    /// alterado em 11/01/2008 para colocar 17% Urf do Importador = ES
    if (q_processosUF.asstring='ES') then begin
      me_icms.text := '17';
      me_fecp.text  := '0';
    end;

    p_tributacao.visible := true;


    if q_atosconce.recordcount >0 then
      showmessage('Este importador possui Atos Concessórios. Por favor verifique a necessidade de aplicação dos mesmos.');

  end
  else begin
    Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
  end;

end;

procedure TF_proTributacao.b_cancelaapliClick(Sender: TObject);
begin
  p_tributacao.visible := false;
end;

procedure TF_proTributacao.B_aplicaClick(Sender: TObject);
var i,b,qq:integer;
    v_base_calc_ii:real;

   {variaveis de adicoes}
    v_num_adic:integer;
    v_exportador:string;
    v_ncm:string;
    v_fabricante:string;
    v_fabend:string;
    v_aplic:string;
    v_moeda:string;
    v_incoterm:string;
    v_valora:string;
    v_tacordo:string;
    v_acordo:string;
    v_rtii:string;
    v_flii:string;
    v_mdt:string;
    v_nalii:string;
    v_cc:string;
    v_mp:string;
    v_if:string;
    v_msc:string;
    v_rof:string;
    v_ibe:integer;
    v_imu:integer;
    v_co:string;
    v_ac:string;
    v_rtipi:string;
    v_nalipi:string;
    v_itens:integer;
    v_naladi:string;
    v_cond:string;
    v_destaque:string;
    v_unidmed:string;
    v_fator,v_fator_ipi:real;
    v_prazo:string;
    achou_vida:boolean;

       qT_tributositemEmpresa,
       qT_tributositemFilial,
       qT_tributositemProcesso,
       qT_tributositemFatura,
       qT_tributositemSequencial_Item,
       qT_tributositemSequencial,
       qT_tributositemCertificado_Origem,
       qT_tributositemAto_Concessorio,
       qT_tributositemcnpj_cpf_completo,
       qT_tributositemmotivo_adm_temp,
       qT_tributositemCD_METOD_VALORACAO,
       qT_tributositemCD_APLICACAO_MERC:string;
       qT_tributositemIN_BEM_ENCOMENDA,
       qT_tributositemIN_MATERIAL_USADO:integer;
       qT_tributositemCD_TIPO_ACORDO_TAR,
       qT_tributositemACORDO_ALADI,
       qT_tributositemNumero_Ato_Legal_ALADI,
       qT_tributositemALIQUOTA_ALADI:string;
       qT_tributositemprazo_permanencia:real;
       qT_tributositemRegime_Tributacao_II,
       qT_tributositemFundamento_Legal_II,
       qT_tributositemNumero_Ato_Legal_II,
       qT_tributositemRegime_Tributacao_IPI,
       qT_tributositemNumero_Ato_Legal_IPI:string;
       qT_tributositemPercentual_Reducao_II,
       qT_tributositemPercentual_EX,
       qT_tributositemPercentual_Reduca_IPI,
       qT_tributositemQuantidade:real;
       qT_tributositemAliq_NCM_II:real;
       qT_tributositemValor_II_Devido,
       qT_tributositemValor_II_a_recolher,
       qT_tributositemAliq_NCM_IPI,
       qT_tributositemBase_Calc_IPI,
       qT_tributositemValor_IPI_Devido,
       qT_tributositemValor_IPI_a_recolher:real;
       v_aliq_ii_pag_propor,v_aliq_ipi_pag_propor:real;
       qT_tributositemaliq_icms:real;
       qT_tributositemaliq_icms_extra:real;
       qT_NR_OPER_TRAT_PREV: String;
       msg_texto : string;
begin
  If  ((copy(cb_fundale.text,1,2) = '69') and (copy(cb_motadmtemp.text,1,2) = '60')) then begin
      if lblRepetroResp.Caption = 'Não' then begin
         MessageDlg('Não foi possível realizar a tributação deste processo, pois o contrato não é Repetro ', mtWarning,[mbOK], 0 );
         Exit;
      End;
  End;


  {Eduardo Souza - 12/01/2012 - Verifica se o peso liquido é diferente de zero na tabela de Conhecimento_Processo }
  qryVerificaPesoLiq.ParamByName('Processo').Value := ME_nossaref.Text;
  qryVerificaPesoLiq.Open;
  if ( qryVerificaPesoLiq.IsEmpty ) then Begin
    MessageDlg('Não foi possível realizar a tributação deste processo, pois o campo "PESO ACERTADO" na tela de fatura está zerado.'+#13+'Por favor, preencha o campo "PESO ACERTADO" e tente novamente.', mtWarning,[mbOK], 0 );
    qryVerificaPesoLiq.Close;
    Close;
    Abort;
  End;

  msg_texto := Format('Você confirma a alíquota de %s para o ICMS?',[me_icms.Text]);
  if(MyMessageDlg('Atenção!!!',msg_texto, mtConfirmation,[mbYes, mbNo], 0) = mrNo)then begin
    exit;
  end;

  {fim 12/01/2012}
f_mscomex.MSPGP(me_nossaref.text);

if ((copy(cb_regtrib1.text,1,1)='9') and (me_prazo.text='')) then
   showmessage(v_usuario+', para este tipo de tributação é necessário preencher o prazo de permanência.')
else begin

processamento('Aguarde...Aplicando Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);

      if T_itensfaturas.state = dsInactive then T_itensfaturas.open;
      if T_tributositem.state = dsInactive then T_tributositem.open;
      if T_ncm.state = dsInactive then T_ncm.open;
      if T_ncm_vutil.state = dsInactive then T_ncm_vutil.open;

{verifica seleção de itens}
if dbg_itenstributaveis.SelectedRows.Count>0 then
    with dbg_itenstributaveis.DataSource.DataSet do
      for i:=0 to dbg_itenstributaveis.SelectedRows.Count-1 do
      begin
       GotoBookmark(pointer(dbg_itenstributaveis.SelectedRows.Items[i]));
       processamento('Aguarde...Aplicando Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);
       if selecao > 1 then
                v_quant := dbg_itenstributaveis.fields[4].asstring;

///       v_seq := '1';
///       t_tributositem.first;
///       t_tributositem.FindKey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring]);
///       while ((not T_tributositem.eof)and(T_tributositemEmpresa.asstring = q_processosempresa.asstring)and(T_tributositemFilial.asstring = q_processosfilial.asstring)
///               and(T_tributositemProcesso.asstring = me_nossaref.text)and(T_tributositemFatura.asstring = dbg_itenstributaveis.fields[0].asstring)) do begin
///             if strtoint(v_seq) <= strtoint(T_tributositemsequencial.asstring) then v_seq := inttostr(strtoint(T_tributositemsequencial.asstring)+1);
///             T_tributositem.next;
///       end;

      T_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring]);
      v_fator :=0;
      v_fator_ipi :=0;
      t_itensfaturas.first;
       if t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring,dbg_itenstributaveis.fields[2].asstring]) then begin
          t_ncm.first;
          if t_ncm.findkey([t_itensfaturasncm.asstring]) then begin

       v_seq := '1';///dbg_itenstributaveis.fields[2].asstring;

       while t_tributositem.FindKey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring,dbg_itenstributaveis.fields[2].asstring,v_seq]) do begin
              v_seq := inttostr(strtoint(v_seq)+1);
       end;

   //    showmessage(' Proc: '+T_itensfaturasProcesso.asstring+' item: '+T_itensfaturassequencial.asstring);

       //// variaveis sql
       qT_tributositemEmpresa           := q_processosempresa.asstring ;
       qT_tributositemFilial            :=  q_processosfilial.asstring ;
       qT_tributositemProcesso          := me_nossaref.text;
       qT_tributositemFatura            := dbg_itenstributaveis.fields[0].asstring;
       qT_tributositemSequencial_Item   := dbg_itenstributaveis.fields[2].asstring;
       qT_tributositemSequencial        := v_seq;
       qT_tributositemCertificado_Origem:= me_certificado.text;
       qT_tributositemAto_Concessorio   := copy(cb_atoconce.text,1,20);
       qT_tributositemcnpj_cpf_completo := copy(cb_sub.text,1,14);
       qT_tributositemmotivo_adm_temp   := copy(cb_motadmtemp.text,1,2);
       qT_tributositemCD_METOD_VALORACAO:= copy(cb_valoracao.text,1,2);
       if rg_aplicacao.itemindex = 0 then qT_tributositemCD_APLICACAO_MERC := '1';
       if rg_aplicacao.itemindex = 1 then qT_tributositemCD_APLICACAO_MERC := '2';
       if rg_aplicacao.itemindex = 2 then qT_tributositemCD_APLICACAO_MERC := '';
       qT_tributositemIN_BEM_ENCOMENDA  := 0;
       if cb_bemencomenda.checked then  qT_tributositemIN_BEM_ENCOMENDA  := 1;
       qT_tributositemIN_MATERIAL_USADO := 0;
       if cb_materialusado.checked then qT_tributositemIN_MATERIAL_USADO := 1;

       qT_tributositemCD_TIPO_ACORDO_TAR:= copy(cb_tipoacordo.text,1,1);
       qT_tributositemACORDO_ALADI      :=  copy(cb_acordoaladi.text,1,3);
       qT_tributositemNumero_Ato_Legal_ALADI := copy(cb_atoaladi.text,1,5);
       qT_tributositemALIQUOTA_ALADI := me_aliquotaacordo.text;
       if me_prazo.text<>'' then
          qT_tributositemprazo_permanencia := strtofloat(me_prazo.text);
       if copy(cb_regtrib1.text,1,1)='9' then
          qT_tributositemRegime_Tributacao_II := '1'
       else
          qT_tributositemRegime_Tributacao_II := copy(cb_regtrib1.text,1,1);

       qT_tributositemFundamento_Legal_II := copy(cb_fundale.text,1,2);
       qT_tributositemNumero_Ato_Legal_II := copy(cb_atoii.text,1,5);
       if copy(cb_regtrib2.text,1,1)='9' then
          qT_tributositemRegime_Tributacao_IPI := '4'
       else
          qT_tributositemRegime_Tributacao_IPI := copy(cb_regtrib2.text,1,1);
       qT_tributositemNumero_Ato_Legal_IPI := copy(cb_atoipi.text,1,5);
       qT_tributositemPercentual_Reducao_II := strtofloat(me_perccorii.text);
       qT_tributositemPercentual_EX := strtofloat(me_percex.text);
       qT_tributositemPercentual_Reduca_IPI := strtofloat(me_perccoripi.text);
       qT_tributositemQuantidade := (strtofloat(v_quant));

       v_base_calc_ii := ((T_itensfaturasBase_Calc_II.asfloat/T_itensfaturasQuantidade.asfloat)*qT_tributositemQuantidade);

       ///verifica se tem percentual EX se tiver iguala a aliquota do ii ao ex
       if (floattostr(qT_tributositemPercentual_EX)='0') then begin
          if (T_ncmALIQUOTA_II.asstring='') or (T_ncmALIQUOTA_II.asstring='NT') then qT_tributositemAliq_NCM_II := 0
          else  qT_tributositemAliq_NCM_II := T_ncmALIQUOTA_II.asfloat;
          end
       else qT_tributositemAliq_NCM_II := qT_tributositemPercentual_EX;

       ///é recolhimento integral com redução de aliquota
       ///1-[(12xU-P)/(12xU)]
       ///onde U é o prazo de vida útil - 3a coluna da tabela abaixo que para a classificação em questão é 4       ///P é o prazo de permanência do bem , em meses, que para este caso é 24 (2 anos x 12 meses)

       if copy(cb_regtrib1.text,1,1)='9' then begin
          v_aliq_ii_pag_propor  := qT_tributositemAliq_NCM_II;
          v_aliq_ipi_pag_propor := qT_tributositemAliq_NCM_IPI;

          ////achar a vida útil
          achou_vida := false;
          b:=8;
          while (not achou_vida) and (b>0) do begin
                if t_ncm_vutil.findkey([copy(t_itensfaturasncm.asstring,1,b)]) then achou_vida := true;
                b:=b-1;
          end;
          if achou_vida then begin
             ///v_fator := (1-(((12*t_ncm_vutilvida_util.asfloat)-strtofloat(me_prazo.text))/(12*12*t_ncm_vutilvida_util.asfloat)));
             v_fator := (strtofloat(me_prazo.text)/(12*t_ncm_vutilvida_util.asfloat));
             if (floattostr(qT_tributositemPercentual_EX)='0') then
                qT_tributositemAliq_NCM_II   := (qT_tributositemAliq_NCM_II*v_fator);
             end
          else showmessage(v_usuario+', não foi encontrado nenhum parâmetro de vida útil'+#13#10+
                          'para a NCM:'+t_itensfaturasncm.asstring+'. A tributação continuará'+#13#10+
                          'mas não será aplicada a redução das aliquotas de II e IPI em referência à'+#13#10+
                          'IN 285/03 ART 6º.');

       end;


       ////se regime trib = imunidade
       ////1 RECOLHIMENTO INTEGRAL
       ////2 IMUNIDADE
       ////3 ISENCAO
       ////4 REDUCAO
       ////5 SUSPENSAO
       ////6 NAO INCIDENCIA
       ////7 TRIBUTACAO SIMPLIFICADA
       ////8 TRIBUTACAO SIMPLIFICADA DE BAGAGEM

       if ((qT_tributositemRegime_Tributacao_II = '2') or
            (qT_tributositemRegime_Tributacao_II = '6')) then
          qT_tributositemAliq_NCM_II := 0;

       if qT_tributositemACORDO_ALADI <> '' then begin
          qT_tributositemValor_II_Devido      := (v_base_calc_ii*((qT_tributositemAliq_NCM_II-(qT_tributositemAliq_NCM_II*(strtofloat(qT_tributositemALIQUOTA_ALADI)/100)))/100));
          qT_tributositemValor_II_a_recolher  := qT_tributositemValor_II_Devido;
          end
       else begin
          qT_tributositemValor_II_Devido      :=(v_base_calc_ii*(qT_tributositemAliq_NCM_II/100));
          qT_tributositemValor_II_a_recolher  := ((qT_tributositemValor_II_Devido-(qT_tributositemValor_II_Devido*(qT_tributositemPercentual_Reducao_II/100))));
       end;

       ////se isencao ou suspensao zera o arecolher
       if ((qT_tributositemRegime_Tributacao_II = '3') or
        (qT_tributositemRegime_Tributacao_II = '5')) then
          qT_tributositemValor_II_a_recolher  := 0;

       if (T_ncmALIQUOTA_IPI.asstring='') or (T_ncmALIQUOTA_IPI.asstring='NT') then qT_tributositemAliq_NCM_IPI := 0
       else qT_tributositemAliq_NCM_IPI := T_ncmALIQUOTA_IPI.asfloat;

       ////aplicar fator de redução
       if copy(cb_regtrib2.text,1,1)='9' then begin
///tirado em 02042009 - Rodolfo
//          qT_tributositemAliq_NCM_IPI  := (((qT_tributositemAliq_NCM_IPI)*strtofloat(me_prazo.text))*(1+(T_ncmALIQUOTA_II.asfloat/100)))/((12*t_ncm_vutilvida_util.asfloat)+((T_ncmALIQUOTA_II.asfloat/100)*strtofloat(me_prazo.text)));
//          qT_tributositemAliq_NCM_IPI  := strtofloat(floattostrf(qT_tributositemAliq_NCM_IPI ,fffixed,10,2));

//        qT_tributositemAliq_NCM_IPI   := (qT_tributositemAliq_NCM_IPI*v_fator);

{          showmessage('Aliq ipi : '+floattostr(T_ncmALIQUOTA_IPI.asfloat)+#13#10+
                      'Prazo: '+me_prazo.text+#13#10+
                      'Vida Util: '+floattostr(t_ncm_vutilvida_util.asfloat)+#13#10+
                      'Vida Util: '+floattostr(t_ncm_vutilvida_util.asfloat)+#13#10+
                      'T_ncmALIQUOTA_II.asfloat/100 ->'+floattostr(T_ncmALIQUOTA_II.asfloat/100)+#13#10+
                      'Aliq ipi calc: '+floattostr(qT_tributositemAliq_NCM_IPI));
}
       end;



       ////4 RECOLHIMENTO INTEGRAL
       ////2 REDUCAO
       ////5 SUSPENSAO
       ////1 ISENCAO
       ////3 NÃO TRIBUTÁVEL


       if (qT_tributositemRegime_Tributacao_IPI = '3') then qT_tributositemAliq_NCM_IPI := 0;

       if (qT_tributositemRegime_Tributacao_II = '5') then
          qT_tributositemBase_Calc_IPI        := (v_base_calc_ii+qT_tributositemValor_II_Devido)
       else qT_tributositemBase_Calc_IPI      := (v_base_calc_ii+qT_tributositemValor_II_a_recolher);

       qT_tributositemValor_IPI_Devido     := (qT_tributositemBase_Calc_IPI*(qT_tributositemAliq_NCM_IPI/100));
       qT_tributositemValor_IPI_Devido     := ((qT_tributositemValor_IPI_Devido-(qT_tributositemValor_IPI_Devido*(qT_tributositemPercentual_Reduca_IPI/100))));
       qT_tributositemValor_IPI_a_recolher := ((qT_tributositemValor_IPI_Devido-(qT_tributositemValor_IPI_Devido*(qT_tributositemPercentual_Reduca_IPI/100))));

       ////se isencao ou suspensao zera o arecolher
       if ((qT_tributositemRegime_Tributacao_IPI = '1') or
          (qT_tributositemRegime_Tributacao_IPI = '5')) then qT_tributositemValor_IPI_a_recolher  := 0;
       if (qT_tributositemRegime_Tributacao_IPI = '3')then begin 
          qT_tributositemValor_IPI_Devido      := 0;
          qT_tributositemValor_IPI_a_recolher  := 0;
       end;

       qT_tributositemaliq_icms       := strtofloat(me_icms.text);
       qT_tributositemaliq_icms_extra := strtofloat(me_fecp.text);
//       qT_NR_OPER_TRAT_PREV := txtNumeroDaLI.text;
       qT_NR_OPER_TRAT_PREV := VerificaLI_Sem_PontoEVirgula(txtNumeroDaLI.text);

       q_intrib.params[ 0].asstring := qT_tributositemEmpresa;
       q_intrib.params[ 1].asstring := qT_tributositemFilial;
       q_intrib.params[ 2].asstring := qT_tributositemProcesso;
       q_intrib.params[ 3].asstring := qT_tributositemFatura;
       q_intrib.params[ 4].asstring := qT_tributositemSequencial_Item;
       q_intrib.params[ 5].asstring := qT_tributositemSequencial;
       q_intrib.params[ 6].asstring := qT_tributositemCertificado_Origem;
       q_intrib.params[ 7].asstring := qT_tributositemAto_Concessorio;
       q_intrib.params[ 8].asstring := qT_tributositemCNPJ_CPF_COMPLETO;
       q_intrib.params[ 9].asstring := qT_tributositemMotivo_Adm_Temp;
       q_intrib.params[10].asstring := qT_tributositemCD_METOD_VALORACAO;
       q_intrib.params[11].asstring := qT_tributositemcD_APLICACAO_MERC;
       q_intrib.params[12].asinteger := qT_tributositemIN_BEM_ENCOMENDA;
       q_intrib.params[13].asinteger := qT_tributositemIN_MATERIAL_USADO;
       q_intrib.params[14].asstring := qT_tributositemCD_TIPO_ACORDO_TAR;
       q_intrib.params[15].asstring := qT_tributositemACORDO_ALADI;
       q_intrib.params[16].asstring := qT_tributositemNumero_Ato_Legal_ALADI;
       q_intrib.params[17].asstring := qT_tributositemALIQUOTA_ALADI;
       q_intrib.params[18].asstring := qT_tributositemRegime_Tributacao_II;
       q_intrib.params[19].asstring := stringreplace(floattostr(qT_tributositemAliq_NCM_II),',','.',[rfReplaceAll]);
       q_intrib.params[20].asstring := stringreplace(floattostr(qT_tributositemValor_II_Devido),',','.',[rfReplaceAll]);
       q_intrib.params[21].asstring := stringreplace(floattostr(qT_tributositemValor_II_a_recolher),',','.',[rfReplaceAll]);
       q_intrib.params[22].asstring := qT_tributositemFundamento_Legal_II;
       q_intrib.params[23].asstring := qT_tributositemNumero_Ato_Legal_II;
       q_intrib.params[24].asstring := qT_tributositemRegime_Tributacao_IPI;
       q_intrib.params[25].asstring := stringreplace(floattostr(qT_tributositemBase_Calc_IPI),',','.',[rfReplaceAll]);
       q_intrib.params[26].asstring := stringreplace(floattostr(qT_tributositemAliq_NCM_IPI),',','.',[rfReplaceAll]);
       q_intrib.params[27].asstring := stringreplace(floattostr(qT_tributositemValor_IPI_Devido),',','.',[rfReplaceAll]);
       q_intrib.params[28].asstring := stringreplace(floattostr(qT_tributositemValor_IPI_a_recolher),',','.',[rfReplaceAll]);
       q_intrib.params[29].asstring := qT_tributositemNumero_Ato_Legal_IPI;
       q_intrib.params[30].asstring := stringreplace(floattostr(qT_tributositemPercentual_Reducao_II),',','.',[rfReplaceAll]);
       q_intrib.params[31].asstring := stringreplace(floattostr(qT_tributositemPercentual_EX),',','.',[rfReplaceAll]);
       q_intrib.params[32].asstring := stringreplace(floattostr(qT_tributositemPercentual_Reduca_IPI),',','.',[rfReplaceAll]);
       q_intrib.params[33].asstring := stringreplace(floattostr(qT_tributositemQuantidade),',','.',[rfReplaceAll]);
       q_intrib.params[34].asstring := stringreplace(floattostr(qT_tributositemPrazo_permanencia),',','.',[rfReplaceAll]);
       if cb_confirma.checked then begin
          q_intrib.params[35].asstring := qtratqtrat.asstring;
          q_intrib.params[36].asstring := qtratqfun.asstring;
          end
       else begin
          q_intrib.params[35].asstring := '';
          q_intrib.params[36].asstring := '';
       end;

       q_intrib.params[37].asstring := copy(cb_regtribPC.text,1,1);
       q_intrib.params[38].asstring := copy(cb_fundPC.text,1,2);

       q_intrib.params[39].asstring := stringreplace(me_aliq_reduzida_pis.text,',','.',[rfReplaceAll]);;
       q_intrib.params[40].asstring := stringreplace(me_aliq_reduzida_cofins.text,',','.',[rfReplaceAll]);;

       q_intrib.params[41].asstring := stringreplace(me_icms.text,',','.',[rfReplaceAll]);;
       q_intrib.params[42].asstring := stringreplace(me_fecp.text,',','.',[rfReplaceAll]);;
       q_intrib.params[43].asstring := txtNumeroDaLI.Text;

       for qq := 0 to 43 do
          // stringreplace(q_intrib.params[qq].asstring,',','.',[rfReplaceAll]);
  //         showmessage(inttostr(qq)+' -> '+q_intrib.params[qq].AsString);
       next;

       q_intrib.execsql;

       q_upitens.params[0].asfloat  := t_itensfaturassaldo_tributavel.asfloat-qT_tributositemQuantidade;
       q_upitens.params[1].asstring := qT_tributositemEmpresa;
       q_upitens.params[2].asstring := qT_tributositemFilial;
       q_upitens.params[3].asstring := qT_tributositemProcesso;
       q_upitens.params[4].asstring := qT_tributositemFatura;
       q_upitens.params[5].asstring := qT_tributositemSequencial_Item;
       q_upitens.execsql;

//       atunet('ItensFaturas',[qT_tributositemEmpresa,qT_tributositemFilial,qT_tributositemProcesso,
//       qT_tributositemFatura,qT_tributositemSequencial_Item],'P');


       end
       else begin {se não achou NCM pula o item}
            MessageDlg('NCM '+t_itensfaturasncm.asstring +' não foi encontrada! Verifique SISCOMEX.', mtInformation,[mbOk], 0);
       end;
       end;
   end;

processamento('Aguarde...Aplicando Tributações...',dbg_itenstributaveis.SelectedRows.Count,true);

t_itensfaturas.refresh;
p_tributacao.visible := false;
Q_itenstributaveis.Close;
Q_itenstributaveis.open;

if q_itenstributaveis.recordcount = 0 then begin
   F_MSCOMEX.atualizataxaconversao(me_nossaref.text);
   rateio2(f_protributacao);
end;
Q_tributoitem.Close;
Q_tributoitem.open;

{se tributou todos os itens grava as adicoes}
if q_itenstributaveis.isempty = true then begin
q_itensadicoes.Close;
if (q_processosqtipo.asstring<>'17') then begin
   ////NAO É DSI
   q_itensadicoes.sql.Strings[4] := 'ORDER BY Conhecimento_Processo.Via, Exportadores.Razao_Social,Exportadores.Endereco,Exportadores.Numero,Exportadores.Complemento,Exportadores.Cidade,Exportadores.Estado,Exportadores.Pais,Conhecimento_Processo.Pais_Procedencia, ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + ' Fabricantes_Produtores.Razao_Social,Fabricantes_Produtores.Endereco,Fabricantes_Produtores.Numero,Fabricantes_Produtores.Complemento,Fabricantes_Produtores.Cidade,Fabricantes_Produtores.Estado, ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + ' Fabricantes_Produtores.Pais,Faturas.Incoterm,Tributacao_Item_Fatura.Ato_Concessorio,ItensFaturas.NCM, ItensFaturas.Destaque_NCM, Faturas.Moeda, ItensFaturas.NALADI, Faturas.Cobertura_Cambial, Faturas.Modalidade_de_Pagamento, ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + ' Faturas.Instituicao_Financiadora, Faturas.Motivo_Sem_Cobertura, Faturas.ROF_BACEN, Tributacao_Item_Fatura.IN_BEM_ENCOMENDA, Tributacao_Item_Fatura.Certificado_Origem, Tributacao_Item_Fatura.Regime_Tributacao_II, ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + ' Tributacao_Item_Fatura.Regime_Tributacao_IPI, Tributacao_Item_Fatura.Prazo_permanencia ';

{   q_itensadicoes.sql.Strings[4] := 'ORDER BY Conhecimento_Processo.Via, Exportadores.[Razao_Social], Exportadores.Endereco, Exportadores.Numero, Exportadores.Complemento, Exportadores.Cidade, Exportadores.Estado, Exportadores.Pais, ItensFaturas.NCM, ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + ' Conhecimento_Processo.Pais_Procedencia, [Fabricantes_Produtores].[razao_social], [Fabricantes_Produtores].Endereco, [Fabricantes_Produtores].Numero, [Fabricantes_Produtores].Complemento, [Fabricantes_Produtores].Cidade, ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + ' [Fabricantes_Produtores].Estado, [Fabricantes_Produtores].Pais, Faturas.Incoterm, Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.NCM, ItensFaturas.NALADI, Faturas.[Cobertura_Cambial], Faturas.[Modalidade_de_Pagamento], ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + '  Faturas.[Instituicao_Financiadora], Faturas.[Motivo_Sem_Cobertura], Faturas.[ROF_BACEN], Tributacao_Item_Fatura.IN_BEM_ENCOMENDA, Tributacao_Item_Fatura.Certificado_Origem, Tributacao_Item_Fatura.Regime_Tributacao_II, ';
   q_itensadicoes.sql.Strings[4] := q_itensadicoes.sql.Strings[4] + ' Tributacao_Item_Fatura.Regime_Tributacao_IPI,  Tributacao_Item_Fatura.Prazo_permanencia ';}

end
else begin
   q_itensadicoes.sql.Strings[4] := 'ORDER BY Faturas.Codigo, cast(itensFaturas.[PAGINA] as integer), cast([Tributacao_Item_Fatura].[Sequencial_Item] as integer), cast([Tributacao_Item_Fatura].[Sequencial] as integer) ';
end;
q_itensadicoes.Params[0].AsString := q_processosempresa.asstring;
q_itensadicoes.Params[1].AsString := q_processosfilial.asstring;
q_itensadicoes.Params[2].AsString := me_nossaref.text;
q_itensadicoes.open;

{aqui começa a geração das adicoes}

q_itensadicoes.first;
{variaveis para checar}
v_exportador := Q_itensadicoesRazao_Social.asstring;
v_ncm        := Q_itensadicoesNCM.asstring;
v_fabricante := Q_itensadicoesFABNOME.asstring;
v_fabend     := Q_itensadicoesFABEND.asstring;
v_aplic      := Q_itensadicoesCD_APLICACAO_MERC.asstring;
v_moeda      := Q_itensadicoesMoeda.asstring;
v_incoterm   := Q_itensadicoesIncoterm.asstring;
v_valora     := Q_itensadicoesCD_METOD_VALORACAO.asstring;
v_tacordo    := Q_itensadicoesCD_TIPO_ACORDO_TAR.asstring;
v_acordo     := Q_itensadicoesACORDO_ALADI.asstring;
v_rtii       := Q_itensadicoesRegime_Tributacao_II.asstring;
v_flii       := Q_itensadicoesFundamento_Legal_II.asstring;
v_mdt        := Q_itensadicoesMotivo_Adm_Temp.asstring;
v_nalii      := Q_itensadicoesNumero_Ato_Legal_II.asstring;
v_cc         := Q_itensadicoesCobertura_Cambial.asstring;
v_mp         := Q_itensadicoesModalidade_de_Pagamento.asstring;
v_if         := Q_itensadicoesInstituicao_Financiadora.asstring;
v_msc        := Q_itensadicoesMotivo_Sem_Cobertura.asstring;
v_rof        := Q_itensadicoesROF_BACEN.asstring;
v_ibe        := Q_itensadicoesIN_BEM_ENCOMENDA.asinteger;
v_imu        := Q_itensadicoesIN_MATERIAL_USADO.asinteger;
v_co         := Q_itensadicoesCertificado_Origem.asstring;
v_ac         := Q_itensadicoesAto_Concessorio.asstring;
v_rtipi      := Q_itensadicoesRegime_Tributacao_IPI.asstring;
v_nalipi     := Q_itensadicoesNumero_Ato_Legal_IPI.asstring;
v_naladi     := Q_itensadicoesNALADI.asstring;
v_cond       := Q_itensadicoescondicao.asstring;
v_destaque   := q_itensadicoesdestaque_ncm.asstring;
v_unidmed    := q_itensadicoesunidade_medida_estat.asstring;
v_prazo      := q_itensadicoesprazo_permanencia.asstring;
v_num_adic   := 0;
v_itens      := 0;

///mudei "sql"
{
ORDER BY Conhecimento_Processo.URF_chegada, Conhecimento_Processo.Via, Conhecimento_Processo.Multimodal, Exportadores.[razao_social], Exportadores.Endereco, Exportadores.Numero, Exportadores.Complemento, Exportadores.Cidade, Exportadores.Estado, Exportadores.País, ItensFaturas.NCM, Conhecimento_Processo.Pais_Procedencia, [Fabricantes_Produtores].[razao_social], [Fabricantes_Produtores].Endereco, [Fabricantes_Produtores].Numero, [Fabricantes_Produtores].Complemento, [Fabricantes_Produtores].Cidade, [Fabricantes_Produtores].Estado, [Fabricantes_Produtores].País, Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.NCM, ItensFaturas.NALADI, Faturas.[Cobertura Cambial], Faturas.[Modalidade de Pagamento], Faturas.[Instituicao Financiadora], Faturas.[Motivo Sem Cobertura], Faturas.[ROF_BACEN], Tributacao_Item_Fatura.IN_BEM_ENCOMENDA, Tributacao_Item_Fatura.IN_MATERIAL_USADO, Tributacao_Item_Fatura.Certificado_Origem, Tributacao_Item_Fatura.Regime_Tributacao_IPI;

}


while not q_itensadicoes.eof do begin
      processamento('Aguarde...Separando Adições...',q_itensadicoes.recordcount,false);
      if ((v_exportador = Q_itensadicoesRazao_Social.asstring) and
          (v_ncm        = Q_itensadicoesNCM.asstring) and
          (v_fabricante = Q_itensadicoesFABNOME.asstring) and
          (v_fabend     = Q_itensadicoesFABEND.asstring) and
          (v_aplic      = Q_itensadicoesCD_APLICACAO_MERC.asstring) and
          (v_moeda      = Q_itensadicoesMoeda.asstring) and
          (v_incoterm   = Q_itensadicoesIncoterm.asstring) and
          (v_valora     = Q_itensadicoesCD_METOD_VALORACAO.asstring) and
          (v_tacordo    = Q_itensadicoesCD_TIPO_ACORDO_TAR.asstring) and
          (v_acordo     = Q_itensadicoesACORDO_ALADI.asstring) and
          (v_rtii       = Q_itensadicoesRegime_Tributacao_II.asstring) and
          (v_flii       = Q_itensadicoesFundamento_Legal_II.asstring) and
          (v_mdt        = Q_itensadicoesMotivo_Adm_Temp.asstring) and
          (v_nalii      = Q_itensadicoesNumero_Ato_Legal_II.asstring) and
          (v_cc         = Q_itensadicoesCobertura_Cambial.asstring) and
          (v_mp         = Q_itensadicoesModalidade_de_Pagamento.asstring) and
          (v_if         = Q_itensadicoesInstituicao_Financiadora.asstring) and
          (v_msc        = Q_itensadicoesMotivo_Sem_Cobertura.asstring) and
          (v_rof        = Q_itensadicoesROF_BACEN.asstring) and
          (v_ibe        = Q_itensadicoesIN_BEM_ENCOMENDA.asinteger) and
          (v_imu        = Q_itensadicoesIN_MATERIAL_USADO.asinteger) and
          {(v_co         = Q_itensadicoesCertificado_Origem.asstring) and}
          (v_ac         = Q_itensadicoesAto_Concessorio.asstring) and
          (v_rtipi      = Q_itensadicoesRegime_Tributacao_IPI.asstring) and
          (v_nalipi     = Q_itensadicoesNumero_Ato_Legal_IPI.asstring) and
          (v_naladi     = Q_itensadicoesNALADI.asstring) and
          (v_cond       = Q_itensadicoescondicao.asstring) and
          (v_destaque   = Q_itensadicoesdestaque_ncm.asstring) and
          (v_unidmed    = Q_itensadicoesunidade_medida_estat.asstring) and
          (v_prazo      = q_itensadicoesprazo_permanencia.asstring) and
          (v_itens      < 80) and (q_processosqtipo.asstring<>'17') ) then begin
                                   ////alterei para DSI
          {conta itens por adicao}
          v_itens := (v_itens+1);

          if v_num_adic=0 then v_num_adic := 1;

          {faz parte de uma adicao entao grava para a quantidade tributada}
          q_uptrib.params[0].asstring := copy('000'+inttostr(v_num_adic),(length('000'+inttostr(v_num_adic))-2),3);
          q_uptrib.params[1].asstring := q_processosempresa.asstring;
          q_uptrib.params[2].asstring := q_processosfilial.asstring;
          q_uptrib.params[3].asstring := me_nossaref.text;
          q_uptrib.params[4].asstring := q_itensadicoesfatura.asstring;
          q_uptrib.params[5].asstring := q_itensadicoessequencial.asstring;
          q_uptrib.params[6].asstring := q_itensadicoesseq.asstring;
          q_uptrib.execsql;

//          atunet('Tributacao_Item_Fatura',[qT_tributositemEmpresa,qT_tributositemFilial,qT_tributositemProcesso,
//          qT_tributositemFatura,qT_tributositemSequencial_Item,qT_tributositemSequencial],'P');


          {totaliza adicao}

      end
      else begin
          v_num_adic := (v_num_adic+1);
          {faz parte de uma adicao entao grava para a quantidade tributada}
          q_uptrib.params[0].asstring := copy('000'+inttostr(v_num_adic),(length('000'+inttostr(v_num_adic))-2),3);
          q_uptrib.params[1].asstring := q_processosempresa.asstring;
          q_uptrib.params[2].asstring := q_processosfilial.asstring;
          q_uptrib.params[3].asstring := me_nossaref.text;
          q_uptrib.params[4].asstring := q_itensadicoesfatura.asstring;
          q_uptrib.params[5].asstring := q_itensadicoessequencial.asstring;
          q_uptrib.params[6].asstring := q_itensadicoesseq.asstring;
          q_uptrib.execsql;

//          atunet('Tributacao_Item_Fatura',[qT_tributositemEmpresa,qT_tributositemFilial,qT_tributositemProcesso,
//          qT_tributositemFatura,qT_tributositemSequencial_Item,qT_tributositemSequencial],'P');

          v_itens      := 1;
          v_exportador := Q_itensadicoesRazao_Social.asstring;
          v_ncm        := Q_itensadicoesNCM.asstring;
          v_fabricante := Q_itensadicoesFABNOME.asstring;
          v_fabend     := Q_itensadicoesFABEND.asstring;
          v_aplic      := Q_itensadicoesCD_APLICACAO_MERC.asstring;
          v_moeda      := Q_itensadicoesMoeda.asstring;
          v_incoterm   := Q_itensadicoesIncoterm.asstring;
          v_valora     := Q_itensadicoesCD_METOD_VALORACAO.asstring;
          v_tacordo    := Q_itensadicoesCD_TIPO_ACORDO_TAR.asstring;
          v_acordo     := Q_itensadicoesACORDO_ALADI.asstring;
          v_rtii       := Q_itensadicoesRegime_Tributacao_II.asstring;
          v_flii       := Q_itensadicoesFundamento_Legal_II.asstring;
          v_mdt        := Q_itensadicoesMotivo_Adm_Temp.asstring;
          v_nalii      := Q_itensadicoesNumero_Ato_Legal_II.asstring;
          v_cc         := Q_itensadicoesCobertura_Cambial.asstring;
          v_mp         := Q_itensadicoesModalidade_de_Pagamento.asstring;
          v_if         := Q_itensadicoesInstituicao_Financiadora.asstring;
          v_msc        := Q_itensadicoesMotivo_Sem_Cobertura.asstring;
          v_rof        := Q_itensadicoesROF_BACEN.asstring;
          v_ibe        := Q_itensadicoesIN_BEM_ENCOMENDA.asinteger;
          v_imu        := Q_itensadicoesIN_MATERIAL_USADO.asinteger;
          v_co         := Q_itensadicoesCertificado_Origem.asstring;
          v_ac         := Q_itensadicoesAto_Concessorio.asstring;
          v_rtipi      := Q_itensadicoesRegime_Tributacao_IPI.asstring;
          v_nalipi     := Q_itensadicoesNumero_Ato_Legal_IPI.asstring;
          v_naladi     := Q_itensadicoesNALADI.asstring;
          v_cond       := Q_itensadicoescondicao.asstring;
          v_destaque   := q_itensadicoesdestaque_ncm.asstring;
          v_unidmed    := q_itensadicoesunidade_medida_estat.asstring;
          v_prazo      := q_itensadicoesprazo_permanencia.asstring;

      end;

      q_itensadicoes.next;
end;
processamento('Aguarde...Separando Adições...',q_itensadicoes.recordcount,true);
end;
end;
{**** Leandro Serra -10/08/2011
     Inserido para atribuir valor no checkbox  BASE_ICMS
****}
q_update_baseICMS.Close;
if chkICMS_BASE.Checked = true then
        q_update_baseICMS.ParamByName('pBase_icms').asinteger :=1
else
        q_update_baseICMS.ParamByName('pBase_icms').asinteger :=0;


q_update_baseICMS.ParamByName('pcodigo').asString:=ME_nossaref.text;
q_update_baseICMS.ExecSQL;

end;

procedure TF_proTributacao.b_excluitribClick(Sender: TObject);
var i:integer;
begin
  f_mscomex.MSPGP(me_nossaref.text);

  if (v_AlteraPRO = 1)
   then begin
     processamento('Aguarde...Excluindo Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);

     if T_itensfaturas.state = dsInactive then T_itensfaturas.open;
     if T_tributositem.state = dsInactive then T_tributositem.open;

     {verifica seleção de itens}
     if dbg_tributositem.SelectedRows.Count > 0
      then begin
        with dbg_tributositem.DataSource.DataSet do
         for i:=0 to dbg_tributositem.SelectedRows.Count-1 do
          begin
           GotoBookmark(pointer(dbg_tributositem.SelectedRows.Items[i]));
           processamento('Aguarde...Excluindo Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);
           t_tributositem.findkey([q_processosempresa.asstring,q_processosfilial,q_tributoitemprocesso.asstring,q_tributoitemfatura.asstring,q_tributoitemsequencial_item.asstring,q_tributoitemsequencial.asstring]);

           if t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial,t_tributositemprocesso.asstring,t_tributositemfatura.asstring,t_tributositemsequencial_item.asstring])
            then begin
              q_upitens.params[0].asfloat  := t_itensfaturassaldo_tributavel.asfloat+T_tributositemQuantidade.asfloat;//(T_tributositemQuantidade.asfloat*-1);
              q_upitens.params[1].asstring := T_tributositemEmpresa.asstring;
              q_upitens.params[2].asstring := T_tributositemFilial.asstring;
              q_upitens.params[3].asstring := T_tributositemProcesso.asstring;
              q_upitens.params[4].asstring := T_tributositemFatura.asstring;
              q_upitens.params[5].asstring := T_tributositemSequencial_Item.asstring;
              q_upitens.execsql;
            end;

            t_tributositem.delete;
          end;
      end;

     processamento('Aguarde...Excluindo Tributações...',dbg_itenstributaveis.SelectedRows.Count,true);
     logusu('E','Excluiu a Tributação do processo: '+me_nossaref.text);
     t_itensfaturas.refresh;
     p_tributacao.visible := false;
     Q_itenstributaveis.Close;
     Q_itenstributaveis.open;
     Q_tributoitem.Close;
     Q_tributoitem.open;
   end
   else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
   end;
end;


procedure TF_proTributacao.DBG_tributositemEnter(Sender: TObject);
begin
  {Leandro Serra 07/12/2011 - Ticket 1154}
  if (q_processosNR_DECLARACAO_IMP.AsString <> '') then b_excluitrib.Enabled := false
  else
     b_excluitrib.enabled := true;
end;

procedure TF_proTributacao.T_tributositemBeforeDelete(DataSet: TDataSet);
begin
//       atunet('Tributacao_Item_Fatura',[T_tributositemEmpresa.asstring,T_tributositemFilial.asstring,T_tributositemProcesso.asstring,
//       T_tributositemFatura.asstring,T_tributositemSequencial_Item.asstring,T_tributositemSequencial.asstring],'D');

end;

procedure TF_proTributacao.cb_regtrib1Change(Sender: TObject);
begin
me_prazo.text := '';
me_prazo.enabled      := false;
cb_fundale.enabled := false;
cb_fundale.clear;
t_fundamentolegal.first;
while not t_fundamentolegal.eof do begin
     if t_fundamentolegalregime.asstring = copy(cb_regtrib1.text,1,1) then cb_fundale.items.add(t_fundamentolegalcodigo.asstring+' '+t_fundamentolegaldescricao.asstring);
     t_fundamentolegal.next;
end;
cb_fundale.enabled := true;

{se integral}
if copy(cb_regtrib1.text,1,1) = '1' then begin
   cb_fundale.text       := '';
   cb_fundale.enabled    := false;
   cb_motadmtemp.text    := '';
   cb_motadmtemp.enabled := false;
   cb_atoii.text         := '';
   cb_atoii.enabled      := false;
   me_perccorii.text     := '0';
   me_perccorii.enabled  := false;
   me_atoconce.text      := '';
   me_sub.text           := '';
   me_atoconce.enabled   := false;
   cb_atoconce.enabled   := false;
   cb_sub.enabled   := false;
   cb_regtrib2.text      := '';
   cb_regtrib2.enabled   := true;
   cb_atoipi.text        := '';
   cb_atoipi.enabled     := true;
   me_perccoripi.text    := '0';
   me_perccoripi.enabled := true;
   groupbox3.enabled     := true;
   cb_tipoacordo.text    := '';
   cb_acordoaladi.text   := '';
   cb_atoaladi.text      := '';
   me_aliquotaacordo.text := '0';
   me_certificado.text   := '';
end;

{se imunidade ou suspensao}
if ((copy(cb_regtrib1.text,1,1) = '2') or
    (copy(cb_regtrib1.text,1,1) = '6')) then begin
   cb_fundale.text       := '';
   cb_fundale.enabled    := true;
   cb_motadmtemp.text    := '';
   cb_motadmtemp.enabled := false;
   cb_atoii.text         := '';
   cb_atoii.enabled      := false;
   me_perccorii.text     := '0';
   me_perccorii.enabled  := false;
   me_atoconce.text      := '';
   me_sub.text      := '';
   me_atoconce.enabled   := false;
   cb_atoconce.enabled   := false;
   cb_sub.enabled   := false;
   cb_regtrib2.text      := '3 NÃO TRIBUTÁVEL'; //eduardo.souza 29/12/2011 ticket: 534
   cb_regtrib2.enabled   := false;
   cb_atoipi.text        := '';
   cb_atoipi.enabled     := false;
   me_perccoripi.text    := '0';
   me_perccoripi.enabled := false;
   groupbox3.enabled     := true;
   cb_tipoacordo.text    := '';
   cb_acordoaladi.text   := '';
   cb_atoaladi.text      := '';
   me_aliquotaacordo.text := '0';
   me_certificado.text   := '';
   groupbox3.enabled     := false;
end;

{se isencao}
if copy(cb_regtrib1.text,1,1) = '3' then begin
   cb_fundale.text       := '';
   cb_fundale.enabled    := true;
   cb_motadmtemp.text    := '';
   cb_motadmtemp.enabled := false;
   cb_atoii.text         := '';
   cb_atoii.enabled      := true;
   me_perccorii.text     := '0';
   me_perccorii.enabled  := false;
   me_atoconce.text      := '';
   me_sub.text      := '';
   me_atoconce.enabled   := false;
   cb_atoconce.enabled   := false;
   if copy(cb_fundale.text,1,2) = '16' then begin
      me_atoconce.enabled   := true;
      cb_atoconce.enabled   := true;
   end;
   cb_sub.enabled   := false;
   cb_regtrib2.text      := '';
   cb_regtrib2.enabled   := true;
   cb_atoipi.text        := '';
   cb_atoipi.enabled     := true;
   me_perccoripi.text    := '0';
   me_perccoripi.enabled := true;
   groupbox3.enabled     := true;
   cb_tipoacordo.text    := '';
   cb_acordoaladi.text   := '';
   cb_atoaladi.text      := '';
   me_aliquotaacordo.text := '0';
   me_certificado.text   := '';
   groupbox3.enabled     := false;
end;

{se reducao}
if copy(cb_regtrib1.text,1,1) = '4' then begin
   cb_fundale.text       := '';
   cb_fundale.enabled    := true;
   cb_motadmtemp.text    := '';
   cb_motadmtemp.enabled := false;
   cb_atoii.text         := '';
   cb_atoii.enabled      := true;
   me_perccorii.text     := '0';
   me_perccorii.enabled  := true;
   me_atoconce.text      := '';
   me_sub.text      := '';
   me_atoconce.enabled   := false;
   cb_atoconce.enabled   := false;
   cb_sub.enabled   := false;
   cb_regtrib2.text      := '';
   cb_regtrib2.enabled   := true;
   cb_atoipi.text        := '';
   cb_atoipi.enabled     := true;
   me_perccoripi.text    := '0';
   me_perccoripi.enabled := true;
   groupbox3.enabled     := true;
   cb_tipoacordo.text    := '';
   cb_acordoaladi.text   := '';
   cb_atoaladi.text      := '';
   me_aliquotaacordo.text := '0';
   me_certificado.text   := '';
   groupbox3.enabled     := false;
end;

{se suspensao}
if copy(cb_regtrib1.text,1,1) = '5' then begin
   cb_fundale.text       := '';
   cb_fundale.enabled    := true;
   cb_motadmtemp.text    := '';
   cb_motadmtemp.enabled := true;
   cb_atoii.text         := '';
   cb_atoii.enabled      := false;
   me_perccorii.text     := '0';
   me_perccorii.enabled  := false;
   me_atoconce.text      := '';
   me_sub.text      := '';
   me_atoconce.enabled   := true;
   cb_atoconce.enabled   := true;
   cb_sub.enabled   := true;
   cb_regtrib2.text      := '5 SUSPENSÃO';
   cb_regtrib2.enabled   := true;
   cb_atoipi.text        := '';
   cb_atoipi.enabled     := false;
   me_perccoripi.text    := '0';
   me_perccoripi.enabled := false;
   groupbox3.enabled     := true;
   cb_tipoacordo.text    := '';
   cb_acordoaladi.text   := '';
   cb_atoaladi.text      := '';
   me_aliquotaacordo.text := '0';
   me_certificado.text   := '';
end;

{se suspensao}
if copy(cb_regtrib1.text,1,1) = '9' then begin
   me_prazo.enabled      := true;
   cb_fundale.text       := '';
   cb_fundale.enabled    := true;
   cb_motadmtemp.text    := '';
   cb_motadmtemp.enabled := true;
   cb_atoii.text         := '';
   cb_atoii.enabled      := false;
   me_perccorii.text     := '0';
   me_perccorii.enabled  := false;
   me_atoconce.text      := '';
   me_sub.text      := '';
   me_atoconce.enabled   := true;
   cb_atoconce.enabled   := true;
   cb_sub.enabled   := true;
   cb_regtrib2.text      := '9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)';
   cb_regtrib2.enabled   := true;
   cb_atoipi.text        := '';
   cb_atoipi.enabled     := false;
   me_perccoripi.text    := '0';
   me_perccoripi.enabled := false;
   groupbox3.enabled     := true;
   cb_tipoacordo.text    := '';
   cb_acordoaladi.text   := '';
   cb_atoaladi.text      := '';
   me_aliquotaacordo.text := '0';
   me_certificado.text   := '';
end;


////SELECIONANDO TRIBUTACAO PISCOFINS
//cb_regtribpc.enabled := false;
//cb_regtribpc.clear;
//qregtribpc.close;
//qregtribpc.params[0].asstring := copy(cb_regtrib1.text,1,1);
//qregtribpc.open;
//qregtribpc.first;
//while not qregtribpc.eof do begin
//     cb_regtribpc.items.add(qregtribpccodigo.asstring+' '+qregtribpcdescricao.asstring);
//     qregtribpc.next;
//end;
//cb_regtribpc.enabled := true;

//cb_fundpc.enabled := false;
//cb_fundpc.clear;
//cb_fundpc.enabled := true;

  // Eduardo Souza - 05/06/2013 - RESOLUÇÃO SEFAZ N.º 631 DE 14 DE MAIO DE 2013
  VerificarICMSRepetro();
  //--
end;

procedure Tf_protributacao.rateio2(Sender: TObject);
var taxa_frete_pre:real;
    taxa_frete_col:real;
    taxa_frete_ter:real;
    taxa_seguro:real;
    {v_qfrete:real;}
    taxa_desp_fob:real;
    peso_exw:real;
    v_valtot :real;
    v_totfrete_pre:real;
    v_totfrete_col:real;
    v_totfrete_ter:real;
    v_totfrete_fat:real;
    v_totseguro_fat:real;
    ofretepre:real;
    ofretecol:real;
    ofreteter:real;
    v_diferenca:real;

/// variaveis de campos

v_t_itensfaturasRateio_Frete_Prepaid:real;
v_t_itensfaturasRateio_Frete_Collect:real;
v_t_itensfaturasRateio_Frete_ternac:real;
v_t_itensfaturasRateio_despesas_ate_fob:real;
v_t_itensfaturasvalor_aduaneiro:real;
v_t_itensfaturasvalor_mercadoria:real;
v_t_itensfaturasVMLE:real;
v_t_itensfaturasBase_Calc_II:real;
v_t_itensfaturasAcresc_reduc_Valaduan:real;

v_t_itensfaturasRateio_Seguro:real;
v_t_itensfaturasrateio_seguro_fatura:real;

begin

T_transpprocesso.open;
T_transpprocesso.first;
t_transpprocesso.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);

{Ticket 867
        Leandro Serra - 27/10/2011
        Peso Líquido não informado Proporciona vários problemas levando bastante
        tempo para solucioná-lo }

{try}
    {rateio de frete,seguro e despesas ate fob}

        // Eduardo Souza - 26/03/2013 - Frente Internacional Incluso
  if (T_faturasFrete_Incluso.AsInteger <> 1) then begin
      taxa_frete_pre :=(T_transpprocessoFrete_Prepaid.asfloat/T_transpprocessopeso_liquido.asfloat);
      taxa_frete_col :=(T_transpprocessoFrete_Collect.asfloat/T_transpprocessopeso_liquido.asfloat);
      taxa_frete_ter :=(T_transpprocessoFrete_Ter_Nac.asfloat/T_transpprocessopeso_liquido.asfloat);
  end;



{finally
    Showmessage('Nesta tributação ocorreu um erro devido o Peso líquido ser igual a zero.'+chr(13)+
                'Isto torna impossível o rateio do frete, do seguro e de despesas FOB,'+chr(13)+
                'por favor informe o Peso Líquido do processo.');
{end;}
{O procedimento será abortado}
//if T_transpprocessopeso_liquido.asfloat = 0 then exit;

{Fim 867}

peso_exw := 0;
v_valtot := 0;
t_faturas.first;
t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando Faturas EXW...',0,false);
while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
       processamento('Aguarde verificando Faturas EXW...',0,false);
       if t_faturasincoterm.asstring = 'EXW' then peso_exw := (peso_exw+T_faturasPeso_Total_Acertado.asfloat);
       {v_valtot := (v_valtot+t_faturasvalortotal.asfloat);}
       if T_faturasCobertura_Cambial.asstring<>'4' then begin
          t_faturas.edit;
          if T_faturasPeriodicidade.asstring = '' then
             t_faturasdt_prev_pag_cambio.asdatetime   := t_transpprocessodata.asdatetime
          else
             t_faturasdt_prev_pag_cambio.asdatetime   := (t_transpprocessodata.asdatetime+strtoint(T_faturasPeriodicidade.asstring));

          if ((T_faturasModalidade_de_Pagamento.asstring = '10') or
              (T_faturasModalidade_de_Pagamento.asstring = '20') or
              (T_faturasModalidade_de_Pagamento.asstring = '21')) then begin
              t_faturasdt_pag_cambio.asdatetime   := t_faturasdt_prev_pag_cambio.asdatetime;
              t_faturasstatus_cambio.asstring := '2';
          end;

          t_faturas.post;
       end;
       t_faturas.next;
end;
processamento('Aguarde verificando Faturas EXW...',0,true);

v_totfrete_pre :=0;
v_totfrete_col :=0;
v_totfrete_ter :=0;

if peso_exw=0 then peso_exw:=1;

if T_transpprocessoValor_Despesas_ate_fob.asfloat = 0 then taxa_desp_fob := 0
else taxa_desp_fob  :=(T_transpprocessoValor_Despesas_ate_fob.asfloat/peso_exw);

if T_taxaconv.state = dsInactive then T_taxaconv.open;
if T_taxaconvDeAmanha.state = dsInactive then T_taxaconvDeAmanha.open;

t_itensfaturas.first;
t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
//showmessage('entrou1');
      processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
      ///t_itensfaturas.edit;
      t_faturas.first;
      if t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]) then begin
         if t_faturasincoterm.asstring = 'EXW' then v_t_itensfaturasRateio_despesas_ate_fob := (t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_desp_fob)
         else v_t_itensfaturasRateio_despesas_ate_fob := 0;
      end;

      if T_taxaconv.state = dsInactive then T_taxaconv.open;
      if T_taxaconvDeAmanha.state = dsInactive then T_taxaconvDeAmanha.open;
      {4301 - Leandro Serra 26/03/2013}
      if chkTxConversaodeAmanha.Checked = false then
      begin
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);

            v_t_itensfaturasRateio_Frete_Prepaid    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_pre)*t_taxaconvtaxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_Collect    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_col)*t_taxaconvtaxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_ternac     := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_ter)*t_taxaconvtaxa_conversao.asfloat);

            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_seguro.asstring]);

            {rateio despesas ate fob na moeda da fatura}
            if (t_faturasincoterm.asstring = 'EXW') and (T_transpprocessoMoeda_Despesas_ate_fob.asstring <> t_faturasmoeda.asstring) then begin
               t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Despesas_ate_fob.asstring]);
               v_t_itensfaturasRateio_Despesas_ate_FOB := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_desp_fob)*t_taxaconvtaxa_conversao.asfloat);
               t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
               v_t_itensfaturasRateio_Despesas_ate_FOB := (v_t_itensfaturasRateio_Despesas_ate_FOB/t_taxaconvtaxa_conversao.asfloat);
            end;

            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);

            v_totfrete_pre :=(v_totfrete_pre+(v_t_itensfaturasRateio_Frete_Prepaid*t_itensfaturasquantidade.asfloat));
            v_totfrete_col :=(v_totfrete_col+(v_t_itensfaturasRateio_Frete_Collect*t_itensfaturasquantidade.asfloat));
            v_totfrete_ter :=(v_totfrete_ter+(v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat));

            v_t_itensfaturasRateio_Frete_Prepaid    := ((v_t_itensfaturasRateio_Frete_Prepaid)/t_taxaconvtaxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_Collect    := ((v_t_itensfaturasRateio_Frete_Collect)/t_taxaconvtaxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_ternac     := ((v_t_itensfaturasRateio_Frete_ternac )/t_taxaconvtaxa_conversao.asfloat);
      end
      else
      begin
            T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);

            v_t_itensfaturasRateio_Frete_Prepaid    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_pre)*T_taxaconvDeAmanhataxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_Collect    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_col)*T_taxaconvDeAmanhataxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_ternac     := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_ter)*T_taxaconvDeAmanhataxa_conversao.asfloat);

            T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_seguro.asstring]);

            {rateio despesas ate fob na moeda da fatura}
            if (t_faturasincoterm.asstring = 'EXW') and (T_transpprocessoMoeda_Despesas_ate_fob.asstring <> t_faturasmoeda.asstring) then begin
               T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Despesas_ate_fob.asstring]);
               v_t_itensfaturasRateio_Despesas_ate_FOB := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_desp_fob)*T_taxaconvDeAmanhataxa_conversao.asfloat);
               T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
               v_t_itensfaturasRateio_Despesas_ate_FOB := (v_t_itensfaturasRateio_Despesas_ate_FOB/T_taxaconvDeAmanhataxa_conversao.asfloat);
            end;

            T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);

            v_totfrete_pre :=(v_totfrete_pre+(v_t_itensfaturasRateio_Frete_Prepaid*t_itensfaturasquantidade.asfloat));
            v_totfrete_col :=(v_totfrete_col+(v_t_itensfaturasRateio_Frete_Collect*t_itensfaturasquantidade.asfloat));
            v_totfrete_ter :=(v_totfrete_ter+(v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat));

            v_t_itensfaturasRateio_Frete_Prepaid    := ((v_t_itensfaturasRateio_Frete_Prepaid)/T_taxaconvDeAmanhataxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_Collect    := ((v_t_itensfaturasRateio_Frete_Collect)/T_taxaconvDeAmanhataxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_ternac     := ((v_t_itensfaturasRateio_Frete_ternac )/T_taxaconvDeAmanhataxa_conversao.asfloat);
      end;
      {Fim 4301 - Leandro Serra 26/03/2013}
      {Calcula valor aduaneiro conforme incoterms da fatura}
      t_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);

      if (T_faturasacrescimos_reducoes.asinteger = 0) then begin
        v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalor_total.asfloat+
        (t_itensfaturasRateio_Frete_Interno_imp.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_Embalagem.asfloat        *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_Seguro_Interno.asfloat   *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_outras_import.asfloat    *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_startup.asfloat          *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_frete_fatura.asfloat     *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_seguro_fatura.asfloat    *t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_carga_imp.asfloat        *t_itensfaturasquantidade.asfloat)-
        (t_itensfaturasRateio_deducoes.asfloat         *t_itensfaturasquantidade.asfloat));
        // Eduardo Souza - 22/03/20013 - Frente Incluso
        if(T_faturasFrete_Incluso.AsInteger = 1)then
          v_t_itensfaturasvalor_aduaneiro := (v_t_itensfaturasvalor_aduaneiro -
          (t_itensfaturasRateio_frete_fatura.asfloat * t_itensfaturasquantidade.asfloat));
        //---
      end
      else begin
        v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalor_total.asfloat;
      end;

      v_t_itensfaturasvalor_mercadoria := (v_t_itensfaturasvalor_aduaneiro-
      (t_itensfaturasRateio_Frete_Interno_imp.asfloat*t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_Embalagem.asfloat        *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_Seguro_Interno.asfloat   *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_outras_import.asfloat    *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_startup.asfloat          *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_frete_fatura.asfloat     *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_seguro_fatura.asfloat    *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_carga_imp.asfloat        *t_itensfaturasquantidade.asfloat));

      v_t_itensfaturasVMLE             := (v_t_itensfaturasvalor_mercadoria+
      (t_itensfaturasRateio_Embalagem.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
      (v_t_itensfaturasRateio_Despesas_ate_FOB*t_itensfaturasquantidade.asfloat));

      v_t_itensfaturasBase_Calc_II     := (v_t_itensfaturasVMLE+
      (v_t_itensfaturasRateio_Frete_prepaid*t_itensfaturasquantidade.asfloat)+
      (v_t_itensfaturasRateio_Frete_collect*t_itensfaturasquantidade.asfloat)-
      (v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Seguro.asfloat       *t_itensfaturasquantidade.asfloat));

      if ((t_faturasincoterm.asstring = 'EXW') or
          (t_faturasincoterm.asstring = 'FOB') or
          (t_faturasincoterm.asstring = 'FCA') or
          (t_faturasincoterm.asstring = 'FAS'))then
         v_t_itensfaturasAcresc_reduc_Valaduan :=
         ((v_t_itensfaturasBase_Calc_II)-
         (t_itensfaturasRateio_Seguro.asfloat*t_itensfaturasquantidade.asfloat)-
         ((v_t_itensfaturasRateio_Frete_prepaid*t_itensfaturasquantidade.asfloat)+
         (v_t_itensfaturasRateio_Frete_collect*t_itensfaturasquantidade.asfloat)-
         (v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat))-
         (v_t_itensfaturasValor_Aduaneiro));

      if ((t_faturasincoterm.asstring = 'DDU') or
          (t_faturasincoterm.asstring = 'DES') or
          (t_faturasincoterm.asstring = 'CIF') or
          (t_faturasincoterm.asstring = 'CIP') or
          (t_faturasincoterm.asstring = 'DAF')) then
          v_t_itensfaturasAcresc_reduc_Valaduan :=
          ((v_t_itensfaturasBase_Calc_II)-
           (v_t_itensfaturasvalor_aduaneiro));

      if ((t_faturasincoterm.asstring = 'CFR') or
          (t_faturasincoterm.asstring = 'CPT')) then
          v_t_itensfaturasAcresc_reduc_Valaduan :=
          ((v_t_itensfaturasBase_Calc_II)-
           (t_itensfaturasRateio_Seguro.asfloat*t_itensfaturasquantidade.asfloat)-
           (v_t_itensfaturasValor_Aduaneiro));
      {4103 - Leandro Serra 26/03/2013}
      if chkTxConversaodeAmanha.Checked = false then
      begin
          {calcula valor totaldo vmle em real para calculo do seguro}
          t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
          v_valtot := (v_valtot+(v_t_itensfaturasVMLE*t_taxaconvtaxa_conversao.asfloat));
      end
      else
      begin
          {calcula valor totaldo vmle em real para calculo do seguro}
          t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
          v_valtot := (v_valtot+(v_t_itensfaturasVMLE*t_taxaconvDeAmanhataxa_conversao.asfloat));
      end;
      {Fim 4103 - Leandro Serra 26/03/2013}
      q_up_itens.params[ 0].asfloat  := v_t_itensfaturasRateio_Frete_Prepaid;
      q_up_itens.params[ 1].asfloat  := v_t_itensfaturasRateio_Frete_Collect;
      q_up_itens.params[ 2].asfloat  := v_t_itensfaturasRateio_Frete_ternac;
      q_up_itens.params[ 3].asfloat  := v_t_itensfaturasRateio_despesas_ate_fob;
      q_up_itens.params[ 4].asfloat  := v_t_itensfaturasvalor_aduaneiro;
      q_up_itens.params[ 5].asfloat  := v_t_itensfaturasvalor_mercadoria;
      q_up_itens.params[ 6].asfloat  := v_t_itensfaturasVMLE;
      q_up_itens.params[ 7].asfloat  := v_t_itensfaturasBase_Calc_II;
      q_up_itens.params[ 8].asfloat  := v_t_itensfaturasAcresc_reduc_Valaduan;

      q_up_itens.params[ 9].asfloat  := t_itensfaturasrateio_seguro.asfloat;
      q_up_itens.params[10].asfloat  := t_itensfaturasrateio_seguro_fatura.asfloat;

      q_up_itens.params[11].asstring := t_itensfaturasempresa.asstring;
      q_up_itens.params[12].asstring := t_itensfaturasfilial.asstring;
      q_up_itens.params[13].asstring := t_itensfaturasprocesso.asstring;
      q_up_itens.params[14].asstring := t_itensfaturasfatura.asstring;
      q_up_itens.params[15].asstring := t_itensfaturassequencial.asstring;
      q_up_itens.execsql;

      t_itensfaturas.next;

end;
processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,true);
{4103 - Leandro Serra 26/03/2013}
if chkTxConversaodeAmanha.Checked = false then
begin
    {gravando arredondamento de frete para o 1 item de fatura}
    t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);
    ofretepre := (T_transpprocessoFrete_Prepaid.asfloat*t_taxaconvtaxa_conversao.asfloat);
    ofretecol := (T_transpprocessoFrete_Collect.asfloat*t_taxaconvtaxa_conversao.asfloat);
    ofreteter := (T_transpprocessoFrete_Ter_Nac.asfloat*t_taxaconvtaxa_conversao.asfloat);
end
else
begin
    {gravando arredondamento de frete para o 1 item de fatura}
    t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);
    ofretepre := (T_transpprocessoFrete_Prepaid.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
    ofretecol := (T_transpprocessoFrete_Collect.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
    ofreteter := (T_transpprocessoFrete_Ter_Nac.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
end;
{Fim 4103 - Leandro Serra 26/03/2013}
if (( floattostr(ofretepre) <> floattostr(v_totfrete_pre)) or
    ( floattostr(ofretecol) <> floattostr(v_totfrete_col)) or
    ( floattostr(ofreteter) <> floattostr(v_totfrete_ter)))  then begin

    ///voltar
{   showmessage('Frete Prepaid do conhecimento: '+floattostr(ofretepre)+#13#10+'Soma do Rateio do Frete Prepaid nos Itens da Fatura: '+floattostr(v_totfrete_pre)+#13#10#13#10+
               'Frete Collect do conhecimento: '+floattostr(ofretecol)+#13#10+'Soma do Rateio do Frete Collect nos Itens da Fatura: '+floattostr(v_totfrete_col)+#13#10#13#10+
               'Frete Ternac  do conhecimento: '+floattostr(ofreteter)+#13#10+'Soma do Rateio do Frete Ternac  nos Itens da Fatura: '+floattostr(v_totfrete_ter)+#13#10#13#10+
               'As diferenças serão ajustadas para o 1º item da 1ª fatura deste processo.'+#13#10 );
 }

t_itensfaturas.first;
if t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]) then begin

   processamento('Aguarde gravando arredondamento de frete para o 1 item de fatura...',0,false);
//   t_itensfaturas.edit;
   t_faturas.first;
   t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);

   {4103 - Leandro Serra 26/03/2013}
   if chkTxConversaodeAmanha.Checked = false then
   begin
       t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
       q_taxa := floattostr(t_taxaconvtaxa_conversao.asfloat);
   end
   else
   begin
       t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
       q_taxa := floattostr(t_taxaconvDeAmanhataxa_conversao.asfloat);
   end;
   {Fim 4103 - Leandro Serra 26/03/2013}
   if (floattostr(ofretepre) <> floattostr(v_totfrete_pre)) then begin
      v_diferenca := strtofloat(floattostr(ofretepre)) - abs(strtofloat(floattostr(v_totfrete_pre)));
      v_t_itensfaturasRateio_Frete_Prepaid  := (t_itensfaturasRateio_Frete_Prepaid.asfloat+((v_diferenca/t_itensfaturasquantidade.AsFloat)/strtofloat(q_taxa)));
///      showmessage('Prepaid - Diferenca em reais: '+floattostr(v_diferenca) );
   end
   else v_t_itensfaturasRateio_Frete_Prepaid  := t_itensfaturasRateio_Frete_Prepaid.asfloat;

   if (floattostr(ofretecol) <> floattostr(v_totfrete_col)) then begin
      v_diferenca := strtofloat(floattostr(ofretecol)) - abs(strtofloat(floattostr(v_totfrete_col)));
      v_t_itensfaturasRateio_Frete_collect := (t_itensfaturasRateio_Frete_collect.asfloat+((v_diferenca/t_itensfaturasquantidade.AsFloat)/strtofloat(q_taxa)));
///      showmessage('Collect - Diferenca em reais: '+floattostr(v_diferenca) );
   end
   else v_t_itensfaturasRateio_Frete_collect := t_itensfaturasRateio_Frete_collect.asfloat;

   if (floattostr(ofreteter) <> floattostr(v_totfrete_ter)) then begin
      v_diferenca := strtofloat(floattostr(ofreteter)) - abs(strtofloat(floattostr(v_totfrete_ter)));
      v_t_itensfaturasRateio_Frete_ternac := (t_itensfaturasRateio_Frete_ternac.asfloat+((v_diferenca/t_itensfaturasquantidade.AsFloat)/strtofloat(q_taxa)));
///      showmessage('Ternac - Diferenca em reais: '+floattostr(v_diferenca) );
   end
   else  v_t_itensfaturasRateio_Frete_ternac := t_itensfaturasRateio_Frete_ternac.asfloat;

      try
      // Eduardo Souza - 26/03/2013 - frente internacional incluso
      if(T_faturasFrete_Incluso.AsInteger <> 1)then begin
      t_itensfaturas.edit;
      t_itensfaturasRateio_Frete_Prepaid.asfloat    := v_t_itensfaturasRateio_Frete_Prepaid;
      t_itensfaturasRateio_Frete_Collect.asfloat    := v_t_itensfaturasRateio_Frete_Collect;
      t_itensfaturasRateio_Frete_ternac.asfloat     := v_t_itensfaturasRateio_Frete_ternac;
      t_itensfaturas.post;
      end;
      except
           On E:Exception do begin
              ///showmessage(v_usuario+' Ocorreu algum erro de processamento. Atualize novamente!');
          end;
      end;

      processamento('Aguarde gravando arredondamento de frete para o 1 item de fatura...',0,true);
end;
end;
{gravando rateio frete fatura se totalizacao = ao do conhecimento}
v_totfrete_fat  := 0;
t_acrescimos.first;
t_acrescimos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando acrescimos das faturas...',0,false);
while (not t_acrescimos.eof) and (T_acrescimosEmpresa.asstring = q_processosempresa.asstring) and (T_acrescimosFilial.asstring = q_processosfilial.asstring)and(T_acrescimosProcesso.asstring = me_nossaref.text) do begin
        processamento('Aguarde verificando acrescimos das faturas...',0,false);
         if t_acrescimosCD_MET_ACRES_VALOR.asstring = '13' then  v_totfrete_fat   := (v_totfrete_fat+t_acrescimosvl_acrescimo_moeda.asfloat);
         t_acrescimos.next;
end;
processamento('Aguarde verificando acrescimos das faturas...',0,true);
if (v_totfrete_fat  = (t_transpprocessofrete_prepaid.asfloat+t_transpprocessofrete_collect.asfloat-t_transpprocessofrete_ter_nac.asfloat)) then begin

/// substitui por sql em 26042001
///    t_itensfaturas.first;
///    t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
///    while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
///          //while t_itensfaturas.state = dsedit do begin
///          //end;
///          t_itensfaturas.edit;
///          t_itensfaturasrateio_frete_fatura.asfloat := ((t_itensfaturasrateio_frete_prepaid.asfloat+t_itensfaturasrateio_frete_collect.asfloat)-t_itensfaturasrateio_frete_ternac.asfloat);
///          t_itensfaturas.post;
///          t_itensfaturas.next;
///    end;
     qRateioFreteFatura.Close;
     qRateioFreteFatura.params[0].asstring  := me_nossaref.text;
     qRateioFreteFatura.Open;

     while not  qRateioFreteFatura.Eof do
     begin
        q_update2.close;
        q_update2.params[0].asstring  := me_nossaref.text;
        q_update2.params[1].asstring  := qRateioFreteFaturafatura.value;
        q_update2.params[2].asstring  := qRateioFreteFaturaSequencial.Value;
        q_update2.execsql;
        qRateioFreteFatura.Next;
     end;
      q_upacrescimos.close;
      q_upacrescimos.params[0].asstring  := me_nossaref.text;
      q_upacrescimos.execsql;

end;

{verificando se rateio seguro fatura se totalizacao = ao do conhecimento}
v_totseguro_fat := 0;
t_acrescimos.first;
t_acrescimos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando rateio seguro fatura...',0,false);
while (not t_acrescimos.eof) and (T_acrescimosEmpresa.asstring = q_processosempresa.asstring) and (T_acrescimosFilial.asstring = q_processosfilial.asstring)and(T_acrescimosProcesso.asstring = me_nossaref.text) do begin
      processamento('Aguarde verificando rateio seguro fatura...',0,false);
      if t_acrescimosCD_MET_ACRES_VALOR.asstring = '14' then  begin
         ////calculando total seguro fatura em reais
         t_faturas.first;
         t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_acrescimosfatura.asstring]);
         {4103 - Leandro Serra 26/03/2013}
         if chkTxConversaodeAmanha.Checked = false then
         begin
           t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
           v_totseguro_fat  := (v_totseguro_fat+(t_acrescimosvl_acrescimo_moeda.asfloat*t_taxaconvtaxa_conversao.asfloat));
         end
         else
         begin
           t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
           v_totseguro_fat  := (v_totseguro_fat+(t_acrescimosvl_acrescimo_moeda.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat));
         end;
         {Fim 4103 - Leandro Serra 26/03/2013}
      end;
      t_acrescimos.next;
end;

///passando o total seguro fatura para a moeda do seguro do conhecimento
if v_totseguro_fat > 0 then begin
    if chkTxConversaodeAmanha.Checked = false then
    begin
       t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
       v_totseguro_fat  := (v_totseguro_fat/t_taxaconvtaxa_conversao.asfloat);
    end
    else
    begin
       t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
       v_totseguro_fat  := (v_totseguro_fat/t_taxaconvDeAmanhataxa_conversao.asfloat);
    end;
end;

processamento('Aguarde verificando rateio seguro fatura...',0,true);

{gravando rateio seguro por vmle}
taxa_seguro := 1;
{4103 - Leandro Serra}
if chkTxConversaodeAmanha.Checked = false then
begin
    if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
    taxa_seguro    := ((T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat)/v_valtot);
end
else
begin
    if t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
    taxa_seguro    := ((T_transpprocessoValor_Seguro.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat)/v_valtot);
end;
{Fim 4103 - Leandro Serra}
///showmessage('taxa seguro='+floattostr(taxa_seguro)+'  vmletotal= '+floattostr(v_valtot));
t_itensfaturas.first;
t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde rateio do seguro por vmle...',0,false);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
      //while t_itensfaturas.state = dsedit do begin
      //end;
///      t_itensfaturas.edit;
      processamento('Aguarde rateio do seguro por vmle...',0,false);
      t_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
      {4103 - Leandro Serra}
      if chkTxConversaodeAmanha.Checked = false then
      begin
        t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
        q_taxa := t_taxaconvtaxa_conversao.asString;
      end
      else
      begin
        t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
        q_taxa := t_taxaconvDeAmanhataxa_conversao.asString;
      end;
      {unitario em real}
      v_t_itensfaturasRateio_Seguro          := ((t_itensfaturasVMLE.asfloat/t_itensfaturasquantidade.asfloat)*strToFloat(q_taxa));// t_taxaconvtaxa_conversao.asfloat);

      {unitario em real x a taxa de rateio}
      v_t_itensfaturasRateio_Seguro          := (v_t_itensfaturasRateio_Seguro*taxa_seguro);

      ///{valor convertido para real}
      ///t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
      ///v_t_itensfaturasRateio_Seguro         := (v_t_itensfaturasRateio_Seguro*t_taxaconvtaxa_conversao.asfloat);

      {valor convertido para moeda da fatura}
      t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
      v_t_itensfaturasRateio_Seguro          := (v_t_itensfaturasRateio_Seguro/strToFloat(q_taxa));//t_taxaconvtaxa_conversao.asfloat);

      {valor truncado para 5 decimais}
      v_t_itensfaturasRateio_Seguro          := strtofloat(floattostrf(v_t_itensfaturasRateio_Seguro ,fffixed,10,5));

      if  (v_totseguro_fat = T_transpprocessoValor_Seguro.asfloat) then begin
          v_t_itensfaturasrateio_seguro_fatura  := v_t_itensfaturasrateio_seguro;
      end;

      if v_totseguro_fat=0 then v_t_itensfaturasrateio_seguro_fatura := 0;
      if T_transpprocessoValor_Seguro.asfloat=0 then  v_t_itensfaturasrateio_seguro := 0;
///      else v_t_itensfaturasrateio_seguro_fatura := t_itensfaturasrateio_seguro_fatura.AsFloat;

      {Calcula valor aduaneiro conforme incoterms da fatura}
      t_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);

      if T_faturasacrescimos_reducoes.asinteger = 0 then
         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalor_total.asfloat+
      ///(t_itensfaturasRateio_Frete_Interno_imp.asfloat*t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_Seguro_Interno.asfloat   *t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_outras_import.asfloat    *t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_startup.asfloat          *t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_frete_fatura.asfloat     *t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_seguro_fatura.asfloat    *t_itensfaturasquantidade.asfloat)+
      ///(t_itensfaturasRateio_carga_imp.asfloat        *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_acrescimos.asfloat        *t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_deducoes.asfloat         *t_itensfaturasquantidade.asfloat))
      else
         v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalor_total.asfloat;

      v_t_itensfaturasvalor_mercadoria := (v_t_itensfaturasvalor_aduaneiro-
      (t_itensfaturasRateio_Acrescimos.asfloat        *t_itensfaturasquantidade.asfloat));
      ///(t_itensfaturasRateio_Frete_Interno_imp.asfloat*t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_Seguro_Interno.asfloat   *t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_outras_import.asfloat    *t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_startup.asfloat          *t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_frete_fatura.asfloat     *t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_seguro_fatura.asfloat    *t_itensfaturasquantidade.asfloat)-
      ///(t_itensfaturasRateio_carga_imp.asfloat        *t_itensfaturasquantidade.asfloat));

      v_t_itensfaturasVMLE             := (v_t_itensfaturasvalor_mercadoria+
      (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Embalagem.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_jurosfin.asfloat         *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Despesas_ate_FOB.asfloat *t_itensfaturasquantidade.asfloat));

      v_t_itensfaturasBase_Calc_II     := (v_t_itensfaturasVMLE+
      (t_itensfaturasRateio_Frete_prepaid.asfloat*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Frete_collect.asfloat*t_itensfaturasquantidade.asfloat)-
      (t_itensfaturasRateio_Frete_ternac.asfloat *t_itensfaturasquantidade.asfloat)+
      (v_t_itensfaturasRateio_Seguro       *t_itensfaturasquantidade.asfloat));

      if ((t_faturasincoterm.asstring = 'EXW') or
          (t_faturasincoterm.asstring = 'FOB') or
          (t_faturasincoterm.asstring = 'FCA') or
          (t_faturasincoterm.asstring = 'FAS'))then
         v_t_itensfaturasAcresc_reduc_Valaduan :=
         ((v_t_itensfaturasBase_Calc_II)-
         (v_t_itensfaturasRateio_Seguro*t_itensfaturasquantidade.asfloat)-
         ((t_itensfaturasRateio_Frete_prepaid.asfloat*t_itensfaturasquantidade.asfloat)+
         (t_itensfaturasRateio_Frete_collect.asfloat*t_itensfaturasquantidade.asfloat)-
         (t_itensfaturasRateio_Frete_ternac.asfloat*t_itensfaturasquantidade.asfloat))-
         (v_t_itensfaturasValor_Aduaneiro));

      if ((t_faturasincoterm.asstring = 'DDU') or
          (t_faturasincoterm.asstring = 'DES') or
          (t_faturasincoterm.asstring = 'CIF') or
          (t_faturasincoterm.asstring = 'CIP') or
          (t_faturasincoterm.asstring = 'DAF')) then
          v_t_itensfaturasAcresc_reduc_Valaduan :=
          ((v_t_itensfaturasBase_Calc_II)-
           (v_t_itensfaturasvalor_aduaneiro));

      if ((t_faturasincoterm.asstring = 'CFR') or
          (t_faturasincoterm.asstring = 'CPT')) then
          v_t_itensfaturasAcresc_reduc_Valaduan :=
          ((v_t_itensfaturasBase_Calc_II)-
           (v_t_itensfaturasRateio_Seguro*t_itensfaturasquantidade.asfloat)-
           (v_t_itensfaturasValor_Aduaneiro));



      q_up_itens.params[ 0].asfloat  := t_itensfaturasRateio_Frete_Prepaid.asfloat;
      q_up_itens.params[ 1].asfloat  := t_itensfaturasRateio_Frete_Collect.asfloat;
      q_up_itens.params[ 2].asfloat  := t_itensfaturasRateio_Frete_ternac.asfloat;
      q_up_itens.params[ 3].asfloat  := t_itensfaturasRateio_despesas_ate_fob.asfloat;
      q_up_itens.params[ 4].asfloat  := v_t_itensfaturasvalor_aduaneiro;
      q_up_itens.params[ 5].asfloat  := v_t_itensfaturasvalor_mercadoria;
      q_up_itens.params[ 6].asfloat  := v_t_itensfaturasVMLE;
      q_up_itens.params[ 7].asfloat  := v_t_itensfaturasBase_Calc_II;
      q_up_itens.params[ 8].asfloat  := v_t_itensfaturasAcresc_reduc_Valaduan;

      q_up_itens.params[ 9].asfloat  := v_t_itensfaturasrateio_seguro;
      q_up_itens.params[10].asfloat  := v_t_itensfaturasrateio_seguro_fatura;

      q_up_itens.params[11].asstring := t_itensfaturasempresa.asstring;
      q_up_itens.params[12].asstring := t_itensfaturasfilial.asstring;
      q_up_itens.params[13].asstring := t_itensfaturasprocesso.asstring;
      q_up_itens.params[14].asstring := t_itensfaturasfatura.asstring;
      q_up_itens.params[15].asstring := t_itensfaturassequencial.asstring;
      q_up_itens.execsql;

       t_itensfaturas.next;

end;
processamento('Aguarde rateio do seguro por vmle...',0,true);

end;


procedure TF_proTributacao.cb_confirmaClick(Sender: TObject);
begin
if cb_confirma.checked then dbg_trat.enabled := false
else dbg_trat.enabled := true;

end;

procedure TF_proTributacao.cb_atoconceChange(Sender: TObject);
begin
q_sub.close;
q_sub.params[0].asstring := q_processosempresa.asstring;
q_sub.params[1].asstring := q_processosfilial.asstring;
q_sub.params[2].asstring := copy(q_atosconcenumero.asstring+'                                      ',1,20);
q_sub.open;
cb_sub.clear;
while not q_sub.Eof do begin
      cb_sub.items.add(copy(q_subCNPJ_CPF_COMPLETO.asstring+'                                      ',1,14)+' '+q_subRazao_Social.asstring);
      q_sub.next;
end;

end;

procedure TF_proTributacao.cb_fundaleChange(Sender: TObject);
begin
if copy(cb_regtrib1.text,1,1) = '3' then begin
   if copy(cb_fundale.text,1,2) = '16' then begin
      me_atoconce.enabled   := true;
      cb_atoconce.enabled   := true;
   end
   else begin
      me_atoconce.enabled   := false;
      cb_atoconce.enabled   := false;
   end;
end;

{verifica motivos de admissão temporaria} /// alterado 27/06/2005-b
if copy(cb_fundale.text,1,2) = '39' then begin
   t_motfund39.first;
   cb_motadmtemp.clear;
   while not t_motfund39.Eof do begin
         cb_motadmtemp.items.add(t_motfund39codigo.asstring+' '+t_motfund39descricao.asstring);
         t_motfund39.next;
   end;
end
else begin
   t_motadmtemp.first;
   cb_motadmtemp.clear;
   while not t_motadmtemp.Eof do begin
         cb_motadmtemp.items.add(t_motadmtempcodigo.asstring+' '+t_motadmtempdescricao.asstring);
         t_motadmtemp.next;
   end;

end;

  // Eduardo Souza - 05/06/2013 - RESOLUÇÃO SEFAZ N.º 631 DE 14 DE MAIO DE 2013
  VerificarICMSRepetro();
  //--

end;

procedure TF_proTributacao.cb_regtribPCChange(Sender: TObject);
begin

{sql antiga
SELECT TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR_II, TAB_REG_TRIBUTARIO.CODIGO AS qcod, TAB_FUND_LEGAL_PIS_COFINS.CODIGO, TAB_FUND_LEGAL_PIS_COFINS.DESCRICAO
FROM (TAB_REGRAS_DSI_PIS_COFINS INNER JOIN TAB_REG_TRIBUTARIO ON TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR = TAB_REG_TRIBUTARIO.CODIGO) INNER JOIN TAB_FUND_LEGAL_PIS_COFINS ON TAB_REGRAS_DSI_PIS_COFINS.CD_FUND_LEG_REGIME = TAB_FUND_LEGAL_PIS_COFINS.CODIGO
GROUP BY TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR_II, TAB_REG_TRIBUTARIO.CODIGO, TAB_FUND_LEGAL_PIS_COFINS.CODIGO, TAB_FUND_LEGAL_PIS_COFINS.DESCRICAO
HAVING (((TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR_II)=:qii) AND ((TAB_REG_TRIBUTARIO.CODIGO)=:qpc));

}


////SELECIONANDO TRIBUTACAO PISCOFINS
cb_fundpc.enabled := false;
cb_fundpc.clear;
qfundpc.close;
//qfundpc.params[0].asstring := copy(cb_regtrib1.text,1,1);
qfundpc.params[0].asstring := copy(cb_regtribpc.text,1,1);
qfundpc.open;
qfundpc.first;
if qfundpc.RecordCount>0 then begin
   while not qfundpc.eof do begin
     cb_fundpc.items.add(qfundpccodigo.asstring+' '+qfundpcdescricao.asstring);
     qfundpc.next;
   end;
   cb_fundpc.enabled := true;
end;


if copy(cb_regtribpc.text,1,1)='4' then begin  //////é reducao de pis cofins
   p_reduz.Enabled := true;
   me_aliq_reduzida_pis.Text := '0';
   me_aliq_reduzida_cofins.Text := '0';
end
else begin
   p_reduz.Enabled := false;
   me_aliq_reduzida_pis.Text := '';
   me_aliq_reduzida_cofins.Text := '';
end;

  // Eduardo Souza - 05/06/2013 - RESOLUÇÃO SEFAZ N.º 631 DE 14 DE MAIO DE 2013
  VerificarICMSRepetro();
  //--

end;

procedure TF_proTributacao.b_todosClick(Sender: TObject);
var i:integer;
begin

q_itenstributaveis.DisableControls;
q_itenstributaveis.first;
while not q_itenstributaveis.Eof do begin
      dbg_itenstributaveis.SelectedRows.CurrentRowSelected := true;
      q_itenstributaveis.Next;
end;
q_itenstributaveis.first;
q_itenstributaveis.EnableControls;

end;

procedure TF_proTributacao.b_todoseClick(Sender: TObject);
begin
q_tributoitem.DisableControls;
q_tributoitem.first;
while not q_tributoitem.Eof do begin
      dbg_tributositem.SelectedRows.CurrentRowSelected := true;
      q_tributoitem.Next;
end;
q_tributoitem.first;
q_tributoitem.EnableControls;
b_excluitrib.enabled := true;

end;

procedure TF_proTributacao.T_itensfaturasAfterPost(DataSet: TDataSet);
begin
t_itensfaturas.refresh;
end;

procedure TF_proTributacao.b_cancelaClick(Sender: TObject);
begin
  gb_senha.visible := false;
end;

procedure TF_proTributacao.b_okClick(Sender: TObject);
begin
  if uppercase(e_senha.text) <> uppercase(Senha)
   then begin
     showmessage('Senha inválida!');
     e_senha.Clear;
     e_senha.SetFocus;
     Abort;
   end
   else begin
     e_senha.Clear;
     gb_senha.visible := false;
     b_excluitribClick(b_excluitrib);
   end;
end;

procedure TF_proTributacao.VerificaAutorizacaoParaExcluirDiRegistrada(Sender: TObject);
begin
  if (q_processosNR_DECLARACAO_IMP.AsString <> '')
   then begin
     ZerarVariaveis;

     TrazSupervisorESenha;

     gb_senha.visible := true;
     l_super.caption := Supervisor;
     e_senha.SetFocus;
   end
   else b_excluitribClick(b_excluitrib);
end;

procedure TF_proTributacao.TrazSupervisorESenha;
var
  qryAux : TQuery;
begin
  try
    qryAux := TQuery.Create(nil);
    qryAux.DatabaseName := 'DBNMSCOMEX';

    qryAux.Close;
    qryAux.SQL.Clear;
    qryAux.SQL.Add('SELECT UU.SUPERVISOR, US.SENHA                 ');
    qryAux.SQL.Add('  FROM USUARIOS UU LEFT OUTER JOIN USUARIOS US ');
    qryAux.SQL.Add('    ON US.USUARIO = UU.SUPERVISOR              ');
    qryAux.SQL.Add(' WHERE UU.USUARIO = :USUARIO                   ');

    qryAux.Params[0].AsString := v_usuario;
    qryAux.Open;

    Senha      := qryAux.FieldByName('SENHA').AsString;
    Supervisor := qryAux.FieldByName('SUPERVISOR').AsString;
  finally
    qryAux.Free;
  end;
end;

procedure TF_proTributacao.ZerarVariaveis;
begin
  Senha      := '';
  Supervisor := '';
end;

function TF_proTributacao.VerificaLI_Sem_PontoEVirgula(
  sTexto: String): String;
var
    Temp_01 : string;
    Temp_03, conta: Integer;
begin
    Conta := 0;
//    sTexto :=txtNumeroDaLI.Text;
    Temp_03 := length(sTexto);
    while conta < temp_03 do
    begin
      Conta := Conta + 1;
      Temp_01 := Copy(Stexto,conta,1);
      if Temp_01 = '.' then
      begin
        sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
      end;
      if Temp_01 = ',' then
      begin
        sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
      end;
      if Temp_01 = '/' then
      begin
        sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
      end;
      if Temp_01 = '-' then
      begin
        sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
      end;
    end;
    result := sTexto;
end;
procedure TF_proTributacao.PreencheInfoLabelsContrato;
var
  QrAux : TQuery;
begin
  try
    valor_icms_repetro := '';
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add('SELECT Descricao, INs, Repetro, Valor_Icms FROM Contratos WHERE Importador = :p0 AND Contrato = :p1 ');
    QrAux.Params[0].Value := q_processosImportador.AsString;
    QrAux.Params[1].Value := q_processosContrato.AsString;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
       lblDescricao.Caption   := QrAux.FieldByName('Descricao').AsString;
       lblIns.Caption         := QrAux.FieldByName('INs').AsString;

       if QrAux.FieldByName('Repetro').Value = 1
        then begin
          lblRepetroResp.Color   := clGreen;
          lblRepetroResp.Caption := 'Sim';
          if(Not QrAux.FieldByName('Valor_Icms').IsNull)then
            valor_icms_repetro := FormatFloat('###,##0.00', QrAux.FieldByName('Valor_Icms').AsFloat);
        end
        else begin
          lblRepetroResp.Color   := clRed;
          lblRepetroResp.Caption := 'Não';
        end;
     end
     else ApagaInfoLabelsContrato;
  finally
    QrAux.Free;
  end;
end;

procedure TF_proTributacao.ApagaInfoLabelsContrato;
begin
  lblDescricao.Caption   := '-';
  lblIns.Caption         := '-';
  lblRepetroResp.Caption := '-';
end;

Function TF_proTributacao.FiltrarRepetro : Boolean;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add('SELECT Descricao, INs, Repetro FROM Contratos WHERE Importador = :p0 AND Contrato = :p1 ');
    QrAux.Params[0].Value := q_processosImportador.AsString;
    QrAux.Params[1].Value := q_processosContrato.AsString;
    QrAux.Open;

     if QrAux.FieldByName('Repetro').Value = 1
        then  Result := True
        else Result := False;

     finally
    QrAux.Free;
  end;
end;
procedure TF_proTributacao.chkTxConversaodeAmanhaClick(Sender: TObject);
begin
  if chkTxConversaodeAmanha.Checked = true then begin
    {Desmarca a flag}
    qUpdtProcessosFlag.Close;
    qUpdtProcessosFlag.ParamByName('ptxConversaoDeAmanha').asInteger := 1;
    qUpdtProcessosFlag.ParamByName('pCodigo').asString := ME_nossaref.text;
    qUpdtProcessosFlag.ExecSQL;
    //chkTxConversaodeAmanha.Checked := false;
  end
  else begin                 {Marca a flag}
    qUpdtProcessosFlag.Close;
    qUpdtProcessosFlag.ParamByName('ptxConversaoDeAmanha').asInteger := 0;
    qUpdtProcessosFlag.ParamByName('pCodigo').asString := ME_nossaref.text;
    qUpdtProcessosFlag.ExecSQL;
    //chkTxConversaodeAmanha.Checked := true;
  end;
end;

procedure TF_proTributacao.VerificarICMSRepetro;
begin
  //Eduardo Souza - 04/06/2013 - ICMS 0,00%, 1,50% e 3,00% - Contratos de REPETRO
  if(lblRepetroResp.Caption = 'Sim') and
    (copy(cb_regtrib1.text,1,1) = '5') and
    (copy(cb_fundale.text,1,2) = '69') and
    (copy(cb_motadmtemp.text,1,2) = '60') and
    (copy(cb_regtrib2.text,1,1) = '5') and
    (copy(cb_regtribPC.text,1,1) = '5') and
    (copy(cb_fundPC.text,1,2) = '42') and
    // Eduardo Souza - 09/07/13 - Solicitado Sr. Manuel/Fabiano Ferreira
    // Digitação livre para o cliente Brasdrill. Alíquota diferente para plataformas.
    // Motivo: liminar na justiça
    (q_processosImportador.AsString <> '252')and
    (q_processosImportador.AsString <> '265') then begin
     Self.Height := Self.Height + 85;
    PanelRepetroICMS.Visible := true;
    me_icms.Enabled := False;
    me_fecp.Enabled := False;
    me_icms.text := valor_icms_repetro;
    me_fecp.text  := '0';
    if( valor_icms_repetro = '' ) then begin
      B_aplica.Enabled := False;
      MessageDlg('Não será possível prosseguir com a tributação, pois a alíquota do ICMS não está cadastrado no contrato deste processo.'+
      #13
      +'Por favor, entre em contato com seu supervisor.', mtWarning,[mbOK], 0 );
    end;
  end
  else begin
    B_aplica.Enabled := True;
    me_icms.Enabled := True;
    me_fecp.Enabled := True;
    me_icms.text := '';
    me_fecp.text  := '';
    PanelRepetroICMS.Visible := false;
    if(Self.Height > 594)then
      Self.Height := Self.Height - 85;

    //testando!!!!
    ///tratamento icms da tributação

    /// alterado em 31/08/2004 para nova lei do icms para 0717700 - AEROPORTO INTERNACIONAL DO RIO DE JANEIRO
    /// alterado em 19/10/2004 para colocar a urf de entrada
    if (q_processosurf_chegada.asstring='0717700') then begin
      if (q_processosDT_DESEMBARACO.isnull) then
        me_icms.text := '13'
      else begin
        if (q_processosDT_DESEMBARACO.asdatetime >=strtodate('31/08/2004')) then me_icms.text := '13'
          else me_icms.text := '18'
        end;
      end
    else begin
      if (q_processosDT_DESEMBARACO.isnull) then
        me_icms.text := f_mscomex.t_parametrosAliq_ICMS.asstring
      else begin
        if v_filial='RJO' then begin
          if (q_processosDT_DESEMBARACO.asdatetime >=strtodate('31/08/2004')) then
            me_icms.text := f_mscomex.t_parametrosAliq_ICMS.asstring
          else
            me_icms.text := '18'
        end
        else me_icms.text := f_mscomex.t_parametrosAliq_ICMS.asstring
      end;
    end;
    me_fecp.text := f_mscomex.t_parametrosAliq_ICMS_Extra.asstring;

    /// alterado em 02/08/2006 para colocar 17% Urf de chegada = Salvador(0517700) e Porto de Salvador(0517600)
    ///        if (q_processosurf_chegada.asstring='0517700') or (q_processosurf_chegada.asstring='0517600') then begin
    ///            aliq_icms := 17;
    ///            aliq_icms_extra := 0;
    ///        end;
    ///

    /// alterado em 26/12/2006 para colocar 17% Urf do Importador = BA
    if (q_processosUF.asstring='BA') then begin
      me_icms.text := '17';
      me_fecp.text  := '0';
    end;

    /// alterado em 08/10/2007 para colocar 18% Urf do Importador = SP
    if (q_processosUF.asstring='SP') then begin
      me_icms.text := '18';
      me_fecp.text  := '0';
    end;

    /// alterado em 26/10/2007 para colocar 18% Urf do Importador = AM
    /// alterado pelo jorge 10042008 = 17
    if (q_processosUF.asstring='AM') then begin
      me_icms.text := '17';
      me_fecp.text  := '0';
    end;

    /// alterado em 06062007 para colocar 17% Urf - jorge
    /// retirado em 04042008 - jorge
    {        if (q_processosurf_chegada.asstring='0727600') then begin
                me_icms.text := '17';
                me_fecp.text  := '0';
            end;}

    /// alterado em 05122007 para colocar 9% Urf - Duilio
    if (q_processosurf_chegada.asstring='0917800') or (q_processosurf_chegada.asstring='0915200') then begin
      if MessageDlg('Material com urf de chegada 0917800(Paranaguá) ou 0915200(Curitiba). Sendo Revenda o ICMS = 9%. Confirma?)', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
        me_icms.text := '9';
        me_fecp.text  := '0';
      end;
    end;

    /// alterado em 11/01/2008 para colocar 17% Urf do Importador = ES
    if (q_processosUF.asstring='ES') then begin
      me_icms.text := '17';
      me_fecp.text  := '0';
    end;

  end;
end;

procedure TF_proTributacao.cb_motadmtempChange(Sender: TObject);
begin
  // Eduardo Souza - 05/06/2013 - RESOLUÇÃO SEFAZ N.º 631 DE 14 DE MAIO DE 2013
  VerificarICMSRepetro();
  //--
end;

procedure TF_proTributacao.cb_regtrib2Change(Sender: TObject);
begin
  // Eduardo Souza - 05/06/2013 - RESOLUÇÃO SEFAZ N.º 631 DE 14 DE MAIO DE 2013
  VerificarICMSRepetro();
  //--
end;

procedure TF_proTributacao.cb_fundPCChange(Sender: TObject);
begin
  // Eduardo Souza - 05/06/2013 - RESOLUÇÃO SEFAZ N.º 631 DE 14 DE MAIO DE 2013
  VerificarICMSRepetro();
  //--
end;

function TF_proTributacao.MyMessageDlg(const aCaption: String; const Msg: string;
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
