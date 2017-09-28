unit imp_sisco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids;

type
  Tf_impsisco = class(TForm)
    MS2000: TDatabase;
    IMPORT: TDatabase;
    TABSISCO: TDatabase;
    CONS_IMP: TDatabase;
    T_di: TTable;
    ds_di: TDataSource;
    T_diNR_IDENT_USUARIO: TStringField;
    T_diNR_DECLARACAO_IMP: TStringField;
    T_diIN_DI_OK: TBooleanField;
    T_diIN_FASE_RECUP: TBooleanField;
    T_diDADOS_RETIFICACAO: TStringField;
    T_diIN_DI_CANCELADA: TStringField;
    T_diNR_SEQ_RETIFICACAO: TStringField;
    T_diDT_REGISTRO_DI: TStringField;
    T_diHO_REGISTRO_DI: TStringField;
    T_diNR_CPF_RESPONS_REG: TStringField;
    T_diQT_ADICAO_DI: TStringField;
    T_diCD_TIPO_DECLARACAO: TStringField;
    T_diNM_TIPO_DECLARACAO: TStringField;
    T_diCD_TIPO_IMPORTADOR: TStringField;
    T_diNR_IMPORTADOR: TStringField;
    T_diCD_PAIS_IMPORTADOR: TStringField;
    T_diNM_IMPORTADOR: TStringField;
    T_diNR_TEL_IMPORTADOR: TStringField;
    T_diED_LOGR_IMPORTADOR: TStringField;
    T_diED_NR_IMPORTADOR: TStringField;
    T_diED_COMPL_IMPO: TStringField;
    T_diED_BA_IMPORTADOR: TStringField;
    T_diED_MUN_IMPORTADOR: TStringField;
    T_diED_UF_IMPORTADOR: TStringField;
    T_diED_CEP_IMPORTADOR: TStringField;
    T_diCD_ATIV_ECON_IMPO: TStringField;
    T_diNM_ATIV_ECON_IMPO: TStringField;
    T_diCD_NAT_JURID_IMPO: TStringField;
    T_diNM_NAT_JURID_IMPO: TStringField;
    T_diNR_CPF_REPR_LEGAL: TStringField;
    T_diCD_MODALIDADE_DESP: TStringField;
    T_diIN_OPERACAO_FUNDAP: TBooleanField;
    T_diCD_URF_ENTR_CARGA: TStringField;
    T_diNM_URF_ENTR_CARGA: TStringField;
    T_diCD_URF_DESPACHO: TStringField;
    T_diNM_URF_DESPACHO: TStringField;
    T_diCD_TIPO_CONSIG: TStringField;
    T_diNR_CONSIGNATARIO: TStringField;
    T_diNM_CONSIGNATARIO: TStringField;
    T_diCD_PAIS_PROC_CARGA: TStringField;
    T_diCD_VIA_TRANSP_CARG: TStringField;
    T_diIN_MULTIMODAL: TBooleanField;
    T_diNR_VEICULO_TRANSP: TStringField;
    T_diNM_VEICULO_TRANSP: TStringField;
    T_diNM_TRANSPORTADOR: TStringField;
    T_diCD_BANDEIRA_TRANSP: TStringField;
    T_diCD_TIPO_AG_CARGA: TStringField;
    T_diNR_AGENTE_CARGA: TStringField;
    T_diCD_TIPO_DCTO_CARGA: TStringField;
    T_diNR_DCTO_CARGA: TStringField;
    T_diNR_DCTO_CARGA_MAST: TStringField;
    T_diNM_LOCAL_EMBARQUE: TStringField;
    T_diDT_EMBARQUE: TStringField;
    T_diCD_UTIL_DCTO_CARGA: TStringField;
    T_diPB_CARGA: TCurrencyField;
    T_diPL_CARGA: TCurrencyField;
    T_diDT_CHEGADA_CARGA: TStringField;
    T_diCD_TIPO_MANIFESTO: TStringField;
    T_diNR_MANIFESTO: TStringField;
    T_diCD_RECINTO_ALFAND: TStringField;
    T_diNM_RECINTO_ALFAND: TStringField;
    T_diMENSAGEM: TStringField;
    T_diCD_SETOR_ARMAZENAM: TStringField;
    T_diCD_TIPO_PGTO_TRIB: TStringField;
    T_diNR_CONTA_PGTO_TRIB: TStringField;
    T_adicao: TTable;
    ds_adicao: TDataSource;
    T_adicaoNR_IDENT_USUARIO: TStringField;
    T_adicaoNR_DECLARACAO_IMP: TStringField;
    T_adicaoNR_SEQ_RETIFICACAO: TStringField;
    T_adicaoNR_OP_IMP: TStringField;
    T_adicaoNR_OPER_TRAT_PREV: TStringField;
    T_adicaoCD_URF_ENTR_MERC: TStringField;
    T_adicaoNM_URF_ENTR_MERC: TStringField;
    T_adicaoCD_VIA_TRANSPORTE: TStringField;
    T_adicaoIN_MULTIMODAL: TStringField;
    T_adicaoNM_FORN_ESTR: TStringField;
    T_adicaoED_LOGR_FORN_ESTR: TStringField;
    T_adicaoED_NR_FORN_ESTR: TStringField;
    T_adicaoED_COMPL_FORN_ESTR: TStringField;
    T_adicaoED_ESTAD_FORN_ESTR: TStringField;
    T_adicaoED_CIDAD_FORN_ESTR: TStringField;
    T_adicaoCD_PAIS_AQUIS_MERC: TStringField;
    T_adicaoCD_MERCADORIA_NCM: TStringField;
    T_adicaoNM_MERCADORIA_NCM: TStringField;
    T_adicaoCD_PAIS_PROC_MERC: TStringField;
    T_adicaoCD_AUSENCIA_FABRIC: TStringField;
    T_adicaoNM_FABRICANTE_MERC: TStringField;
    T_adicaoED_LOGR_FABRIC: TStringField;
    T_adicaoED_NR_FABRIC: TStringField;
    T_adicaoED_COMPL_FABRIC: TStringField;
    T_adicaoED_ESTADO_FABRIC: TStringField;
    T_adicaoED_CIDAD_FABRIC: TStringField;
    T_adicaoCD_PAIS_ORIG_MERC: TStringField;
    T_adicaoCD_MERC_NBM_SH: TStringField;
    T_adicaoNM_MERC_NBM_SH: TStringField;
    T_adicaoCD_MERC_NALADI_NCC: TStringField;
    T_adicaoNM_MERC_NALADI_NCC: TStringField;
    T_adicaoCD_MERC_NALADI_SH: TStringField;
    T_adicaoNM_MERC_NALADI_SH: TStringField;
    T_adicaoPL_MERCADORIA: TFloatField;
    T_adicaoQT_UN_ESTATISTICA: TFloatField;
    T_adicaoNM_UN_ESTATISTICA: TStringField;
    T_adicaoCD_APLICACAO_MERC: TStringField;
    T_adicaoNM_APLICACAO_MERC: TStringField;
    T_adicaoVL_MERC_EMB_MN: TCurrencyField;
    T_adicaoCD_MOEDA_NEGOCIADA: TStringField;
    T_adicaoVL_MERC_EMB_DOLAR: TCurrencyField;
    T_adicaoVL_MERC_DESC_MN: TCurrencyField;
    T_adicaoVL_MERC_DESC_DOLAR: TCurrencyField;
    T_adicaoCD_INCOTERMS_VENDA: TStringField;
    T_adicaoNM_LOC_COND_VENDA: TStringField;
    T_adicaoVL_MERC_COND_VENDA: TCurrencyField;
    T_adicaoVL_MERC_VENDA_MN: TCurrencyField;
    T_adicaoVL_MERC_DOLAR: TCurrencyField;
    T_adicaoVL_FRETE_MERC_MNEG: TCurrencyField;
    T_adicaoCD_MD_FRETE_MERC: TStringField;
    T_adicaoVL_FRETE_MERC_MN: TCurrencyField;
    T_adicaoVL_FRT_MERC_DOLAR: TCurrencyField;
    T_adicaoVL_SEG_MERC_MNEG: TCurrencyField;
    T_adicaoCD_MOEDA_SEG_MERC: TStringField;
    T_adicaoVL_SEG_MERC_DOLAR: TCurrencyField;
    T_adicaoVL_SEG_MERC_MN: TCurrencyField;
    T_adicaoVL_DESPESAS_MNEG: TCurrencyField;
    T_adicaoCD_MOEDA_DESPESAS: TStringField;
    T_adicaoVL_DESPESAS_MN: TCurrencyField;
    T_adicaoVL_DESPESAS_DOLAR: TCurrencyField;
    T_adicaoCD_METOD_VALORACAO: TStringField;
    T_adicaoNM_METOD_VALORACAO: TStringField;
    T_adicaoCD_VINC_IMPO_EXPO: TStringField;
    T_adicaoCD_TIPO_ACORDO_TAR: TStringField;
    T_adicaoNM_TIPO_ACORDO_TAR: TStringField;
    T_adicaoCD_ACORDO_ALADI: TStringField;
    T_adicaoNM_ACORDO_ALADI: TStringField;
    T_adicaoCD_REGIME_TRIBUTAR: TStringField;
    T_adicaoNM_REGIME_TRIBUTAR: TStringField;
    T_adicaoCD_FUND_LEG_REGIME: TStringField;
    T_adicaoNM_FUND_LEG_REGIME: TStringField;
    T_adicaoCD_MOTIVO_ADM_TEMP: TStringField;
    T_adicaoNR_DCTO_REDUCAO: TStringField;
    T_adicaoPC_COEF_REDUC_II: TCurrencyField;
    T_adicaoVL_CALC_DCR_DOLAR: TCurrencyField;
    T_adicaoVL_II_CALC_DCR_MN: TCurrencyField;
    T_adicaoVL_II_DEVIDO_ZFM: TCurrencyField;
    T_adicaoVL_II_A_REC_ZFM: TCurrencyField;
    T_adicaoCD_COBERT_CAMBIAL: TStringField;
    T_adicaoNM_COBERT_CAMBIAL: TStringField;
    T_adicaoCD_MODALIDADE_PGTO: TStringField;
    T_adicaoNM_MODALIDADE_PGTO: TStringField;
    T_adicaoCD_ORGAO_FIN_INTER: TStringField;
    T_adicaoNM_ORGAO_FIN_INTER: TStringField;
    T_adicaoCD_MOTIVO_SEM_COB: TStringField;
    T_adicaoNM_MOTIVO_SEM_COB: TStringField;
    T_adicaoQT_PARC_FINANC_360: TStringField;
    T_adicaoCD_PERIOD_PGTO_360: TStringField;
    T_adicaoQT_PERIOD_PGTO_360: TStringField;
    T_adicaoVL_TOT_FINANC_360: TCurrencyField;
    T_adicaoPC_TAXA_JUROS: TCurrencyField;
    T_adicaoCD_TAXA_JUROS: TStringField;
    T_adicaoNM_TAXA_JUROS: TStringField;
    T_adicaoVL_FINANC_SUP_360: TCurrencyField;
    T_adicaoIN_JUROS_ATE_360: TStringField;
    T_adicaoIN_PGTO_VARIAV_360: TStringField;
    T_adicaoNR_ROF: TStringField;
    T_adicaoPC_COMISSAO_AG_IMP: TCurrencyField;
    T_adicaoVL_COMISSAO_AG_IMP: TCurrencyField;
    T_adicaoCD_TIPO_AGENTE_IMP: TStringField;
    T_adicaoNR_AGENTE_IMP: TStringField;
    T_adicaoCD_BANC_AGENTE_IMP: TStringField;
    T_adicaoCD_AGENC_AGENT_IMP: TStringField;
    T_adicaoIN_BEM_ENCOMENDA: TStringField;
    T_adicaoIN_MATERIAL_USADO: TStringField;
    T_adicaoVL_TOT_DEDUCAO_MN: TCurrencyField;
    T_adicaoVL_TOT_ACRESC_MN: TCurrencyField;
    T_adicaoTX_COMPL_VL_ADUAN: TStringField;
    T_detalhe: TTable;
    ds_detalhe: TDataSource;
    T_detalheNR_DECLARACAO_IMP: TStringField;
    T_detalheNR_OP_IMP: TStringField;
    T_detalheNR_SEQ_DETALHE: TSmallintField;
    T_detalheNR_SEQ_PRODUTO: TStringField;
    T_detalheQT_MERC_UN_COMERC: TFloatField;
    T_detalheNM_UN_MEDID_COMERC: TStringField;
    T_detalheVL_UNID_COND_VENDA: TFloatField;
    T_detalheVL_UNID_LOC_EMB: TCurrencyField;
    T_detalheTX_DESC_DET_MERC: TMemoField;
    T_despacho: TTable;
    ds_despacho: TDataSource;
    T_despachoNR_DECLARACAO_IMP: TStringField;
    T_despachoDT_RECEPCAO: TStringField;
    T_despachoDT_DESEMBARACO: TStringField;
    T_processos: TTable;
    ds_processos: TDataSource;
    T_processosEmpresa: TStringField;
    T_processosFilial: TStringField;
    T_processosCdigo: TStringField;
    T_processosData: TDateTimeField;
    T_processosImportador: TStringField;
    T_processosCdigo_Cliente: TStringField;
    T_processosTipo_Declarao: TStringField;
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
    T_processosCanal: TStringField;
    T_processosFiscal: TStringField;
    T_processosStatus: TStringField;
    T_processosCOD_SIT: TStringField;
    T_processosCD_MOTIVO_TRANS: TStringField;
    T_processosIN_MOEDA_UNICA: TBooleanField;
    T_processosTX_INFO_COMPL: TMemoField;
    T_processosCD_TIPO_PGTO_TRIB: TStringField;
    T_processosNumero_RCR: TStringField;
    T_processosData_Entrada_RCR: TDateTimeField;
    T_processosData_Aprovacao_RCR: TDateTimeField;
    T_processosFundamentacao_RCR: TStringField;
    T_processosProcurador: TStringField;
    T_processosNumero_TR: TStringField;
    T_processosData_Entrada_TR: TDateTimeField;
    T_processosData_Aprovacao_TR: TDateTimeField;
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
    T_conhecimento: TTable;
    ds_conhecimento: TDataSource;
    T_conhecimentoEmpresa: TStringField;
    T_conhecimentoFilial: TStringField;
    T_conhecimentoProcesso: TStringField;
    T_conhecimentoVia: TStringField;
    T_conhecimentoMultimodal: TBooleanField;
    T_conhecimentoPLaca: TStringField;
    T_conhecimentoLacre: TStringField;
    T_conhecimentoEmbarcacao: TStringField;
    T_conhecimentoTransportador: TStringField;
    T_conhecimentoTipodoccarga: TStringField;
    T_conhecimentoNumerodoccarga: TStringField;
    T_conhecimentoNumeromaster: TStringField;
    T_conhecimentoLocal: TStringField;
    T_conhecimentoData: TDateTimeField;
    T_conhecimentoUtilizacao: TStringField;
    T_conhecimentoTipomanifesto: TStringField;
    T_conhecimentoNumeromanifesto: TStringField;
    T_conhecimentoCodigo_Presenca_Carga: TStringField;
    T_conhecimentoPeso_Bruto: TFloatField;
    T_conhecimentoPeso_Liquido: TFloatField;
    T_conhecimentoAgente: TStringField;
    T_conhecimentoPais_Procedencia: TStringField;
    T_conhecimentoURF_chegada: TStringField;
    T_conhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    T_conhecimentoURF_Despacho: TStringField;
    T_conhecimentoData_Chegada_URF_Desp: TDateTimeField;
    T_conhecimentoRecinto_Alfandegario: TStringField;
    T_conhecimentoSetor_Alfandegario: TStringField;
    T_conhecimentoArmazem: TStringField;
    T_conhecimentoOperacao_FUNDAP: TBooleanField;
    T_conhecimentoContratante_OPCAMBIAL: TStringField;
    T_conhecimentoMoeda_Frete: TStringField;
    T_conhecimentoFrete_Prepaid: TFloatField;
    T_conhecimentoFrete_Collect: TFloatField;
    T_conhecimentoFrete_Ter_Nac: TFloatField;
    T_conhecimentoMoeda_Seguro: TStringField;
    T_conhecimentoValor_Seguro: TFloatField;
    T_conhecimentoMoeda_Despesas_ate_FOB: TStringField;
    T_conhecimentoValor_Despesas_ate_FOB: TFloatField;
    T_parametros: TTable;
    ds_parametros: TDataSource;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    T_parametrosNumerador_Processos: TStringField;
    T_faturas: TTable;
    ds_faturas: TDataSource;
    T_faturasEmpresa: TStringField;
    T_faturasFilial: TStringField;
    T_faturasProcesso: TStringField;
    T_faturasCdigo: TStringField;
    T_faturasExportador: TStringField;
    T_faturasIncoterm: TStringField;
    T_faturasVinculacao: TStringField;
    T_faturasCondio: TStringField;
    T_faturasValorTotal: TFloatField;
    T_faturasPesoTotal: TFloatField;
    T_faturasPesoTotal_Acertado: TFloatField;
    T_faturasAcrescimos_Reducoes: TBooleanField;
    T_faturasMoeda: TStringField;
    T_faturasCoberturaCambial: TStringField;
    T_faturasMotivoSemCobertura: TStringField;
    T_faturasModalidadedePagamento: TStringField;
    T_faturasInstituicaoFinanciadora: TStringField;
    T_faturasTipoParcela: TStringField;
    T_faturasNumerodeparcelas: TStringField;
    T_faturasPeriodicidade: TStringField;
    T_faturasValordasParcelas: TFloatField;
    T_faturasIndicadorPeriodicidade: TStringField;
    T_faturasTaxadeJuros: TBooleanField;
    T_faturasCodigoTaxadeJuros: TStringField;
    T_faturasValorTaxadeJuros: TFloatField;
    T_faturasROFBACEN: TStringField;
    T_faturasPercentualROF: TFloatField;
    T_itensfaturas: TTable;
    ds_itensfaturas: TDataSource;
    T_tributacao: TTable;
    ds_tributacao: TDataSource;
    T_tributacaoEmpresa: TStringField;
    T_tributacaoFilial: TStringField;
    T_tributacaoProcesso: TStringField;
    T_tributacaoFatura: TStringField;
    T_tributacaoSequencial_Item: TStringField;
    T_tributacaoSequencial: TStringField;
    T_tributacaoCertificado_Origem: TStringField;
    T_tributacaoAto_Concessorio: TStringField;
    T_tributacaoMotivo_Adm_Temp: TStringField;
    T_tributacaoCD_METOD_VALORACAO: TStringField;
    T_tributacaoCD_APLICACAO_MERC: TStringField;
    T_tributacaoIN_BEM_ENCOMENDA: TBooleanField;
    T_tributacaoIN_MATERIAL_USADO: TBooleanField;
    T_tributacaoCD_TIPO_ACORDO_TAR: TStringField;
    T_tributacaoACORDO_ALADI: TStringField;
    T_tributacaoNumero_Ato_Legal_ALADI: TStringField;
    T_tributacaoALIQUOTA_ALADI: TFloatField;
    T_tributacaoRegime_Tributacao_II: TStringField;
    T_tributacaoAliq_NCM_II: TFloatField;
    T_tributacaoValor_II_Devido: TFloatField;
    T_tributacaoValor_II_a_recolher: TFloatField;
    T_tributacaoFundamento_Legal_II: TStringField;
    T_tributacaoNumero_Ato_Legal_II: TStringField;
    T_tributacaoRegime_Tributacao_IPI: TStringField;
    T_tributacaoBase_Calc_IPI: TFloatField;
    T_tributacaoAliq_NCM_IPI: TFloatField;
    T_tributacaoValor_IPI_Devido: TFloatField;
    T_tributacaoValor_IPI_a_recolher: TFloatField;
    T_tributacaoNumero_Ato_Legal_IPI: TStringField;
    T_tributacaoPercentual_Reducao_II: TFloatField;
    T_tributacaoPercentual_EX: TFloatField;
    T_tributacaoPercentual_Reduca_IPI: TFloatField;
    T_tributacaoQuantidade: TFloatField;
    T_tributacaoAdicao: TStringField;
    T_tributacaoSeq_Adicao: TSmallintField;
    T_tributacaoDDE: TStringField;
    T_tributacaoRE: TStringField;
    T_itensfaturasEmpresa: TStringField;
    T_itensfaturasFilial: TStringField;
    T_itensfaturasProcesso: TStringField;
    T_itensfaturasFatura: TStringField;
    T_itensfaturasSequencial: TStringField;
    T_itensfaturasPagina: TStringField;
    T_itensfaturasProduto: TStringField;
    T_itensfaturasDescricao_Produto: TStringField;
    T_itensfaturasFabricante: TStringField;
    T_itensfaturasNCM: TStringField;
    T_itensfaturasUnidade: TStringField;
    T_itensfaturasUnidade_Medida_Estat: TStringField;
    T_itensfaturasDestaque_NCM: TStringField;
    T_itensfaturasNALADI: TStringField;
    T_itensfaturasReferencia: TStringField;
    T_itensfaturasNumero_serie: TStringField;
    T_itensfaturasPO: TStringField;
    T_itensfaturasQuantidade: TFloatField;
    T_itensfaturasValorUnitrio: TFloatField;
    T_itensfaturasValorTotal: TFloatField;
    T_itensfaturasPesoUnitrio: TFloatField;
    T_itensfaturasPeso_Unitario_Acertado: TFloatField;
    T_itensfaturasPesoTotal: TFloatField;
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
    T_numerador: TTable;
    ds_numerador: TDataSource;
    T_numeradorEmpresa: TStringField;
    T_numeradorFilial: TStringField;
    T_numeradorNumerador_Processos: TSmallintField;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    B_atualizams2000: TButton;
    T_importadores: TTable;
    ds_importadores: TDataSource;
    T_importadoresEmpresa: TStringField;
    T_importadoresFilial: TStringField;
    T_importadoresCodigo: TStringField;
    T_importadoresRazoSocial: TStringField;
    T_importadoresPas: TStringField;
    T_importadoresCGCCPF: TStringField;
    T_importadoresTipoImportador: TStringField;
    T_importadoresEndereo: TStringField;
    T_importadoresNmero: TStringField;
    T_importadoresComplemento: TStringField;
    T_importadoresBairro: TStringField;
    T_importadoresCidade: TStringField;
    T_importadoresCEP: TStringField;
    T_importadoresUF: TStringField;
    T_importadoresEstado: TStringField;
    T_importadoresInscrioEstadual: TStringField;
    T_importadoresBanco: TStringField;
    T_importadoresAgencia: TStringField;
    T_importadoresConta_Corrente: TStringField;
    T_exportadores: TTable;
    ds_exportadores: TDataSource;
    T_fabricantes: TTable;
    ds_fabricantes: TDataSource;
    T_exportadoresEmpresa: TStringField;
    T_exportadoresFilial: TStringField;
    T_exportadoresCodigo: TStringField;
    T_exportadoresRazoSocial: TStringField;
    T_exportadoresPas: TStringField;
    T_exportadoresCGCCPF: TStringField;
    T_exportadoresEndereo: TStringField;
    T_exportadoresNmero: TStringField;
    T_exportadoresComplemento: TStringField;
    T_exportadoresBairro: TStringField;
    T_exportadoresCidade: TStringField;
    T_exportadoresCEP: TStringField;
    T_exportadoresUF: TStringField;
    T_exportadoresEstado: TStringField;
    T_exportadoresInscrioEstadual: TStringField;
    T_fabricantesEmpresa: TStringField;
    T_fabricantesFilial: TStringField;
    T_fabricantesCodigo: TStringField;
    T_fabricantesRazoSocial: TStringField;
    T_fabricantesPas: TStringField;
    T_fabricantesCGCCPF: TStringField;
    T_fabricantesEndereo: TStringField;
    T_fabricantesNmero: TStringField;
    T_fabricantesComplemento: TStringField;
    T_fabricantesBairro: TStringField;
    T_fabricantesCidade: TStringField;
    T_fabricantesCEP: TStringField;
    T_fabricantesUF: TStringField;
    T_fabricantesEstado: TStringField;
    T_fabricantesInscrioEstadual: TStringField;
    T_transportadores: TTable;
    ds_transportadores: TDataSource;
    T_transportadoresEmpresa: TStringField;
    T_transportadoresFilial: TStringField;
    T_transportadoresCodigo: TStringField;
    T_transportadoresRazoSocial: TStringField;
    T_transportadoresPas: TStringField;
    T_transportadoresCGCCPF: TStringField;
    T_transportadoresEndereo: TStringField;
    T_transportadoresNmero: TStringField;
    T_transportadoresComplemento: TStringField;
    T_transportadoresBairro: TStringField;
    T_transportadoresCidade: TStringField;
    T_transportadoresCEP: TStringField;
    T_transportadoresUF: TStringField;
    T_transportadoresEstado: TStringField;
    T_transportadoresInscrioEstadual: TStringField;
    T_valores: TTable;
    ds_valores: TDataSource;
    T_valoresNR_DECLARACAO_IMP: TStringField;
    T_valoresVL_TOT_FRT_PREPAID: TCurrencyField;
    T_valoresVL_TOT_FRT_COLLECT: TCurrencyField;
    T_valoresVL_FRETE_TNAC_MNEG: TCurrencyField;
    T_valoresCD_MOEDA_FRETE: TStringField;
    T_valoresVL_TOT_FRETE_DOLAR: TCurrencyField;
    T_valoresVL_TOTAL_FRETE_MN: TCurrencyField;
    T_valoresVL_TOT_SEGURO_MNEG: TCurrencyField;
    T_valoresCD_MOEDA_SEGURO: TStringField;
    T_valoresVL_TOTAL_SEG_DOLAR: TCurrencyField;
    T_valoresVL_TOTAL_SEG_MN: TCurrencyField;
    T_valoresVL_TOT_DESPS_MNEG: TCurrencyField;
    T_valoresCD_MOEDA_DESPESAS: TStringField;
    T_valoresVL_TOT_DESPS_MN: TCurrencyField;
    T_valoresVL_TOT_DESPS_DOLAR: TCurrencyField;
    T_valoresVL_TOTAL_TRIB_SUSP: TCurrencyField;
    T_valoresVL_TOTAL_MLE_DOLAR: TCurrencyField;
    T_valoresVL_TOTAL_MLE_MN: TCurrencyField;
    T_valoresVL_TOTAL_MLD_DOLAR: TCurrencyField;
    T_valoresVL_TOTAL_MLD_MN: TCurrencyField;
    T_valoresVL_TOTAL_II_SUSP: TCurrencyField;
    T_valoresVL_TOTAL_IPI_SUSP: TCurrencyField;
    T_valoresVL_TOTAL_DIR_SUSP: TCurrencyField;
    T_valoresVL_TOTAL_II_A_REC: TCurrencyField;
    T_valoresVL_TOTAL_IPI_A_REC: TCurrencyField;
    T_valoresVL_TOTAL_DIR_A_REC: TCurrencyField;
    T_valoresVL_TOT_TRIB_A_REC: TCurrencyField;
    procedure B_atualizams2000Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_impsisco: Tf_impsisco;

implementation

{$R *.DFM}

procedure Tf_impsisco.B_atualizams2000Click(Sender: TObject);
var q_imp:string;
    tem_imp:boolean;
    q_exp:string;
    tem_exp:boolean;
    q_fab:string;
    tem_fab:boolean;
    q_processo:string;
    tem_trans:boolean;
    q_trans:string;
    q_seq:integer;
begin
if messagedlg('Confirma atualização destas Declarações para o MS2000?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
   t_di.first;
   while not t_di.eof do begin
         if not t_processos.findkey([T_diNR_DECLARACAO_IMP.asstring]) then begin
            {verificando se existe importador}
            tem_imp := false;
            q_imp   := '1';
            t_importadores.first;
            while not t_importadores.eof do begin
                  if trim(T_importadoresCGCCPF.asstring) = trim(T_diNR_IMPORTADOR.asstring) then begin
                     tem_imp := true;
                     q_imp   := t_importadorescodigo.asstring;
                  end
                  else begin
                     if (tem_imp = false) and (strtoint(q_imp) <= strtoint(t_importadorescodigo.asstring)) then q_imp := inttostr(strtoint(t_importadorescodigo.asstring)+1);
                  end;
                  t_importadores.next;
            end;
            if tem_imp = false then begin
               t_importadores.append;
               T_importadoresEmpresa.asstring         := t_parametrosempresa.asstring;
               T_importadoresFilial.asstring          := t_parametrosfilial.asstring;
               T_importadoresCodigo.asstring          := q_imp;
               T_importadoresRazoSocial.asstring      := T_diNM_IMPORTADOR.asstring;
               T_importadoresPas.asstring             := T_diCD_PAIS_IMPORTADOR.asstring;
               T_importadoresCGCCPF.asstring          := T_diNR_IMPORTADOR.asstring;
               T_importadoresTipoImportador.asstring  := T_diCD_TIPO_IMPORTADOR.asstring;
               T_importadoresEndereo.asstring         := T_diED_LOGR_IMPORTADOR.asstring;
               T_importadoresNmero.asstring           := T_diED_NR_IMPORTADOR.asstring;
               T_importadoresComplemento.asstring     := T_diED_COMPL_IMPO.asstring;
               T_importadoresBairro.asstring          := T_diED_BA_IMPORTADOR.asstring;
               T_importadoresCidade.asstring          := T_diED_MUN_IMPORTADOR.asstring;
               T_importadoresCEP.asstring             := T_diED_CEP_IMPORTADOR.asstring;
               T_importadoresUF.asstring              := T_diED_UF_IMPORTADOR.asstring;
               {T_importadoresEstado.asstring         :=
               T_importadoresInscrioEstadual.asstring :=
               T_importadoresBanco.asstring           :=
               T_importadoresAgencia.asstring         :=
               T_importadoresConta_Corrente.asstring  := }
               t_importadores.post;
            end;

            {verificando se existe transportador}
            tem_trans := false;
            q_trans   := '1';
            t_transportadores.first;
            while not t_transportadores.eof do begin
                  if trim(T_transportadoresRazoSocial.asstring) = trim(T_diNM_TRANSPORTADOR.asstring) then begin
                     tem_trans := true;
                     q_trans   := t_transportadorescodigo.asstring;
                  end
                  else begin
                     if (tem_trans = false) and (strtoint(q_trans) <= strtoint(t_transportadorescodigo.asstring)) then q_trans := inttostr(strtoint(t_transportadorescodigo.asstring)+1);
                  end;
                  t_transportadores.next;
            end;
            if tem_trans = false then begin
               t_transportadores.append;
               t_transportadoresEmpresa.asstring         := t_parametrosempresa.asstring;
               t_transportadoresFilial.asstring          := t_parametrosfilial.asstring;
               t_transportadoresCodigo.asstring          := q_trans;
               t_transportadoresRazoSocial.asstring      := T_diNM_TRANSPORTADOR.asstring;
               t_transportadoresPas.asstring             := T_diCD_BANDEIRA_TRANSP.asstring;
               {t_transportadoresCGCCPF.asstring          := T_diNR_IMPORTADOR.asstring;
               t_transportadoresTipoImportador.asstring  := T_diCD_TIPO_IMPORTADOR.asstring;
               t_transportadoresEndereo.asstring         := T_diED_LOGR_IMPORTADOR.asstring;
               t_transportadoresNmero.asstring           := T_diED_NR_IMPORTADOR.asstring;
               t_transportadoresComplemento.asstring     := T_diED_COMPL_IMPO.asstring;
               t_transportadoresBairro.asstring          := T_diED_BA_IMPORTADOR.asstring;
               t_transportadoresCidade.asstring          := T_diED_MUN_IMPORTADOR.asstring;
               t_transportadoresCEP.asstring             := T_diED_CEP_IMPORTADOR.asstring;
               t_transportadoresUF.asstring              := T_diED_UF_IMPORTADOR.asstring;
               t_transportadoresEstado.asstring         :=
               t_transportadoresInscrioEstadual.asstring :=
               t_transportadoresBanco.asstring           :=
               t_transportadoresAgencia.asstring         :=
               t_transportadoresConta_Corrente.asstring  := }
               t_transportadores.post;
            end;
            
            {Gravando novo processo de importação "S-"}
            q_processo := 'S-'+inttostr(t_numeradornumerador_processos.asinteger);
            t_numerador.edit;
            t_numeradornumerador_processos.asinteger := t_numeradornumerador_processos.asinteger+1;
            t_numerador.post;
            t_processos.append;
            T_processosEmpresa.asstring          := t_parametrosempresa.asstring;
            T_processosFilial.asstring           := t_parametrosfilial.asstring;
            T_processosCdigo.asstring            := q_processo;
            T_processosData.asdatetime           := strtodate(copy(T_diDT_REGISTRO_DI.asstring,7,2)+'/'+copy(T_diDT_REGISTRO_DI.asstring,5,2)+'/'+copy(T_diDT_REGISTRO_DI.asstring,1,4));
            T_processosImportador.asstring       := q_imp;
            T_processosCdigo_Cliente.asstring    := T_diNR_DECLARACAO_IMP.asstring;
            T_processosTipo_Declarao.asstring    := T_diCD_TIPO_DECLARACAO.asstring;
            T_processosTipo.asstring             := '1';{importação}
            {T_processosContrato.asstring        :=
            T_processosLocal_Inventario.asstring :=}
            T_processosNR_DECL_IMP_MICRO.asstring := T_diNR_DECLARACAO_IMP.asstring;
            T_processosNR_DECL_IMP_PROT.asstring :=  T_diNR_DECLARACAO_IMP.asstring;
            T_processosNR_DECLARACAO_IMP.asstring := T_diNR_DECLARACAO_IMP.asstring;
            T_processosDT_PROCESSAMENTO.asstring :=  copy(T_diDT_REGISTRO_DI.asstring,7,2)+copy(T_diDT_REGISTRO_DI.asstring,5,2)+copy(T_diDT_REGISTRO_DI.asstring,1,4);
            T_processosDT_TRANSMISSAO.asstring :=    copy(T_diDT_REGISTRO_DI.asstring,7,2)+copy(T_diDT_REGISTRO_DI.asstring,5,2)+copy(T_diDT_REGISTRO_DI.asstring,1,4);
            T_processosDT_REGISTRO_DI.asstring :=    copy(T_diDT_REGISTRO_DI.asstring,7,2)+copy(T_diDT_REGISTRO_DI.asstring,5,2)+copy(T_diDT_REGISTRO_DI.asstring,1,4);
            T_processosCOD_SIT.asstring :='1';
            if t_despacho.findkey([T_diNR_DECLARACAO_IMP.asstring]) then begin
               if T_despachodt_desembaraco.asstring <> '00000000' then begin
               T_processosDT_DESEMBARACO.asdatetime := strtodate(copy(T_despachodt_desembaraco.asstring,7,2)+'/'+copy(T_despachodt_desembaraco.asstring,5,2)+'/'+copy(T_despachodt_desembaraco.asstring,1,4));
               T_processosCOD_SIT.asstring :='2';
               end;
            end;
            T_processosStatus.asstring :='1';
            {T_processosCanal.asstring :=
            T_processosFiscal.asstring :=
            T_processosCD_MOTIVO_TRANS.asstring :=
            T_processosIN_MOEDA_UNICA: TBooleanField;
            T_processosTX_INFO_COMPL: TMemoField;
            T_processosCD_TIPO_PGTO_TRIB.asstring :=
            T_processosNumero_RCR.asstring :=
            T_processosData_Entrada_RCR: TDateTimeField;
            T_processosData_Aprovacao_RCR: TDateTimeField;
            T_processosFundamentacao_RCR.asstring :=
            T_processosProcurador.asstring :=
            T_processosNumero_TR.asstring :=
            T_processosData_Entrada_TR: TDateTimeField;
            T_processosData_Aprovacao_TR: TDateTimeField;
            T_processosTipo_Garantia.asstring :=
            T_processosNome_banco_GAR.asstring :=
            T_processosAgencia_GAR.asstring :=
            T_processosData_deposito_GAR: TDateTimeField;
            T_processosNome_titulo_GAR.asstring :=}
            t_processos.post;

            {gravando conhecimento dos processos}
            t_conhecimento.append;
            T_conhecimentoEmpresa.asstring     := t_parametrosempresa.asstring;
            T_conhecimentoFilial.asstring      := t_parametrosfilial.asstring;
            T_conhecimentoProcesso.asstring    := q_processo;
            T_conhecimentoVia.asstring         := T_diCD_VIA_TRANSP_CARG.asstring;
            T_conhecimentoMultimodal.asboolean := T_diIN_MULTIMODAL.asboolean;
            T_conhecimentoPLaca.asstring       := T_diNR_VEICULO_TRANSP.asstring;
            {T_conhecimentoLacre.asstring :=}
            T_conhecimentoEmbarcacao.asstring  := T_diNM_VEICULO_TRANSP.asstring;
            T_conhecimentoTransportador.asstring  := q_trans;
            T_conhecimentoTipodoccarga.asstring   := T_diCD_TIPO_DCTO_CARGA.asstring;
            T_conhecimentoNumerodoccarga.asstring := T_diNR_DCTO_CARGA.asstring;
            T_conhecimentoNumeromaster.asstring   := T_diNR_DCTO_CARGA_MAST.asstring;
            T_conhecimentoLocal.asstring          := T_diNM_LOCAL_EMBARQUE.asstring;
            T_conhecimentoData.asdatetime           := strtodate(copy(T_diDT_EMBARQUE.asstring,7,2)+'/'+copy(T_diDT_EMBARQUE.asstring,5,2)+'/'+copy(T_diDT_EMBARQUE.asstring,1,4));
            T_conhecimentoUtilizacao.asstring       := T_diCD_UTIL_DCTO_CARGA.asstring;
            T_conhecimentoTipomanifesto.asstring    := T_diCD_TIPO_MANIFESTO.asstring;
            T_conhecimentoNumeromanifesto.asstring  := T_diNR_MANIFESTO.asstring;
            {T_conhecimentoCodigo_Presenca_Carga.asstring  :=}
            T_conhecimentoPeso_Bruto.asfloat              := T_diPB_CARGA.asfloat;
            T_conhecimentoPeso_Liquido.asfloat            := T_diPL_CARGA.asfloat;
            T_conhecimentoAgente.asstring                 := T_diNR_AGENTE_CARGA.asstring;
            T_conhecimentoPais_Procedencia.asstring       := T_diCD_PAIS_PROC_CARGA.asstring;
            T_conhecimentoURF_chegada.asstring            := T_diCD_URF_ENTR_CARGA.asstring;
            T_conhecimentoData_Chegada_URF_Cheg.asdatetime := strtodate(copy(T_diDT_CHEGADA_CARGA.asstring,7,2)+'/'+copy(T_diDT_CHEGADA_CARGA.asstring,5,2)+'/'+copy(T_diDT_CHEGADA_CARGA.asstring,1,4));
            T_conhecimentoURF_Despacho.asstring           := T_diCD_URF_DESPACHO.ASSTRING;
            T_conhecimentoData_Chegada_URF_Desp.asdatetime := strtodate(copy(T_diDT_CHEGADA_CARGA.asstring,7,2)+'/'+copy(T_diDT_CHEGADA_CARGA.asstring,5,2)+'/'+copy(T_diDT_CHEGADA_CARGA.asstring,1,4));
            T_conhecimentoRecinto_Alfandegario.asstring   := T_diCD_RECINTO_ALFAND.asstring;
            T_conhecimentoSetor_Alfandegario.asstring     := T_diCD_SETOR_ARMAZENAM.asstring;
            {T_conhecimentoArmazem.asstring                :=
            T_conhecimentoOperacao_FUNDAP: TBooleanField;
            T_conhecimentoContratante_OPCAMBIAL.asstring  :=
            T_conhecimentoMoeda_Frete.asstring            :=
            T_conhecimentoFrete_Prepaid: TFloatField;
            T_conhecimentoFrete_Collect: TFloatField;
            T_conhecimentoFrete_Ter_Nac: TFloatField;
            T_conhecimentoMoeda_Seguro.asstring           :=
            T_conhecimentoValor_Seguro: TFloatField;
            T_conhecimentoMoeda_Despesas_ate_FOB.asstring :=
            T_conhecimentoValor_Despesas_ate_FOB: TFloatField;}
            t_conhecimento.post;

            {gravando faturas conforme as adicoes}
            t_adicao.first;
            t_adicao.findkey([T_diNR_DECLARACAO_IMP.asstring]);
            while ((not t_adicao.eof) and (T_diNR_DECLARACAO_IMP.asstring=t_adicaoNR_DECLARACAO_IMP.asstring)) do begin

                {verificando se existe exportador}
                tem_exp := false;
                q_exp   := '1';
                t_exportadores.first;
                while not t_exportadores.eof do begin
                     if trim(T_exportadoresRazoSocial.asstring) = trim(T_adicaoNM_FORN_ESTR.asstring) then begin
                        tem_exp := true;
                        q_exp   := t_exportadorescodigo.asstring;
                     end
                     else begin
                         if (tem_exp = false) and (strtoint(q_exp) <= strtoint(t_exportadorescodigo.asstring)) then q_exp := inttostr(strtoint(t_exportadorescodigo.asstring)+1);
                     end;
                     t_exportadores.next;
                end;
                if tem_exp = false then begin
                   t_exportadores.append;
                   t_exportadoresEmpresa.asstring         := t_parametrosempresa.asstring;
                   t_exportadoresFilial.asstring          := t_parametrosfilial.asstring;
                   t_exportadoresCodigo.asstring          := q_exp;
                   t_exportadoresRazoSocial.asstring      := T_adicaoNM_FORN_ESTR.asstring;
                   t_exportadoresPas.asstring             := T_adicaoCD_PAIS_AQUIS_MERC.asstring;
                   t_exportadoresEndereo.asstring         := T_adicaoED_LOGR_FORN_ESTR.asstring;
                   t_exportadoresNmero.asstring           := T_adicaoED_NR_FORN_ESTR.asstring;
                   t_exportadoresComplemento.asstring     := T_adicaoED_COMPL_FORN_ESTR.asstring;
                   {t_exportadoresBairro.asstring          := T_diED_BA_IMPORTADOR.asstring;}
                   t_exportadoresCidade.asstring          := T_adicaoED_CIDAD_FORN_ESTR.asstring;
                   {t_exportadoresCEP.asstring             := T_diED_CEP_IMPORTADOR.asstring;
                   t_exportadoresUF.asstring              := T_diED_UF_IMPORTADOR.asstring;}
                   t_exportadoresEstado.asstring         :=  T_adicaoED_ESTAD_FORN_ESTR.asstring;
                   {t_exportadoresInscrioEstadual.asstring :=
                   t_exportadoresBanco.asstring           :=
                   t_exportadoresAgencia.asstring         :=
                   t_exportadoresConta_Corrente.asstring  := }
                   t_exportadores.post;
                end;

                t_faturas.append;
                T_faturasEmpresa.asstring := t_parametrosempresa.asstring;
                T_faturasFilial.asstring := t_parametrosfilial.asstring;
                T_faturasProcesso.asstring := q_processo;
                T_faturasCdigo.asstring := t_adicaoNR_OP_IMP.asstring;
                T_faturasExportador.asstring := q_exp;
                T_faturasIncoterm.asstring := T_adicaoCD_INCOTERMS_VENDA.asstring;
                T_faturasVinculacao.asstring := T_adicaoCD_VINC_IMPO_EXPO.asstring;
                T_faturasCondio.asstring := T_adicaoNM_LOC_COND_VENDA.asstring;
                T_faturasValorTotal.asfloat := T_adicaoVL_MERC_COND_VENDA.asfloat;
                T_faturasPesoTotal.asfloat := T_adicaoPL_MERCADORIA.asfloat;
                T_faturasPesoTotal_Acertado.asfloat := T_adicaoPL_MERCADORIA.asfloat;
                {T_faturasAcrescimos_Reducoes: TBooleanField;}
                T_faturasMoeda.asstring := T_adicaoCD_MOEDA_NEGOCIADA.asstring;
                T_faturasCoberturaCambial.asstring := T_adicaoCD_COBERT_CAMBIAL.asstring;
                T_faturasMotivoSemCobertura.asstring := T_adicaoCD_MOTIVO_SEM_COB.asstring;
                T_faturasModalidadedePagamento.asstring := T_adicaoCD_MODALIDADE_PGTO.asstring;
                T_faturasInstituicaoFinanciadora.asstring := T_adicaoCD_ORGAO_FIN_INTER.asstring;
                T_faturasTipoParcela.asstring :=  T_adicaoCD_PERIOD_PGTO_360.asstring;
                T_faturasNumerodeparcelas.asstring := T_adicaoQT_PARC_FINANC_360.asstring;
                T_faturasPeriodicidade.asstring := T_adicaoCD_PERIOD_PGTO_360.asstring;
                T_faturasValordasParcelas.asfloat := T_adicaoVL_TOT_FINANC_360.asfloat;
                T_faturasIndicadorPeriodicidade.asstring := T_adicaoQT_PERIOD_PGTO_360.asstring;
                {T_faturasTaxadeJuros: TBooleanField;
                T_faturasCodigoTaxadeJuros.asstring :=
                T_faturasValorTaxadeJuros: TFloatField;}
                T_faturasROFBACEN.asstring := T_adicaoNR_ROF.asstring;
                {T_faturasPercentualROF: TFloatField;}
                t_faturas.post;

               {gravando itens faturas conforme as adicoes/detalhe mercadoria}
               q_seq := 0;
               t_detalhe.first;
               t_detalhe.findkey([T_diNR_DECLARACAO_IMP.asstring,t_adicaoNR_OP_IMP.asstring]);
               while ((not t_detalhe.eof)and(T_diNR_DECLARACAO_IMP.asstring=T_detalheNR_DECLARACAO_IMP.asstring)and(t_adicaoNR_OP_IMP.asstring=t_detalheNR_OP_IMP.asstring)) do begin
                     q_seq := q_seq+1;
                     t_itensfaturas.append;
                     T_itensfaturasEmpresa.asstring    := t_parametrosempresa.AsString;
                     T_itensfaturasFilial.asstring     := t_parametrosfilial.asstring;
                     T_itensfaturasProcesso.asstring   := q_processo;
                     T_itensfaturasFatura.asstring     := t_adicaoNR_OP_IMP.asstring;
                     T_itensfaturasSequencial.asstring := T_detalheNR_SEQ_DETALHE.asstring;
                     T_itensfaturasPagina.asstring     := '1';
                     T_itensfaturasProduto.asstring    := T_diNR_DECLARACAO_IMP.asstring+t_adicaoNR_OP_IMP.asstring+T_detalheNR_SEQ_DETALHE.asstring;
                     T_itensfaturasDescricao_Produto.asstring := copy(T_detalheTX_DESC_DET_MERC.asstring,1,120);
                     T_itensfaturasFabricante.asstring := q_exp;
                     T_itensfaturasNCM.asstring := T_adicaoCD_MERCADORIA_NCM.asstring;
                     {T_itensfaturasUnidade.asstring :=
                     T_itensfaturasUnidade_Medida_Estat.asstring :=
                     T_itensfaturasDestaque_NCM.asstring :=}
                     T_itensfaturasNALADI.asstring := T_adicaoCD_MERC_NALADI_SH.asstring;
                     {T_itensfaturasReferencia.asstring :=}
                     {T_itensfaturasNumero_serie.asstring :=
                     T_itensfaturasPO.asstring :=           }
                     T_itensfaturasQuantidade.asfloat := T_detalheQT_MERC_UN_COMERC.asfloat;
                     T_itensfaturasValorUnitrio.asfloat := T_detalheVL_UNID_COND_VENDA.asfloat;
                     T_itensfaturasValorTotal.asfloat := (T_detalheQT_MERC_UN_COMERC.asfloat*T_detalheVL_UNID_COND_VENDA.asfloat);
                     {T_itensfaturasPesoUnitrio: TFloatField;
                     T_itensfaturasPeso_Unitario_Acertado: TFloatField;
                     T_itensfaturasPesoTotal: TFloatField;
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
                     T_itensfaturasAcresc_reduc_Valaduan: TFloatField;}
                     T_itensfaturasCOD_SIT.asstring := t_processoscod_sit.asstring;
                     {T_itensfaturasCNPJ.asstring :=
                     T_itensfaturasFiel_nome.asstring :=
                     T_itensfaturasFiel_cpf.asstring :=}
                     t_itensfaturas.post;

                     t_tributacao.append;
                     T_tributacaoEmpresa.asstring := t_parametrosempresa.asstring;
                     T_tributacaoFilial.asstring := t_parametrosfilial.asstring;
                     T_tributacaoProcesso.asstring := q_processo;
                     T_tributacaoFatura.asstring := t_adicaoNR_OP_IMP.asstring;
                     T_tributacaoSequencial_Item.asstring := T_detalheNR_SEQ_DETALHE.asstring;
                     T_tributacaoSequencial.asstring := inttostr(q_seq);
                     {T_tributacaoCertificado_Origem.asstring :=
                     T_tributacaoAto_Concessorio.asstring :=}
                     T_tributacaoMotivo_Adm_Temp.asstring := T_adicaoCD_MOTIVO_ADM_TEMP.asstring;
                     T_tributacaoCD_METOD_VALORACAO.asstring := T_adicaoCD_METOD_VALORACAO.asstring;
                     T_tributacaoCD_APLICACAO_MERC.asstring := T_adicaoCD_APLICACAO_MERC.asstring;
                     if T_adicaoIN_BEM_ENCOMENDA.asstring='N' then
                        T_tributacaoIN_BEM_ENCOMENDA.asboolean := false
                     else T_tributacaoIN_BEM_ENCOMENDA.asboolean := true;
                     if T_adicaoIN_MATERIAL_USADO.asstring='N' then
                        T_tributacaoIN_MATERIAL_USADO.asboolean := false
                     else T_tributacaoIN_MATERIAL_USADO.asboolean := true;
                     T_tributacaoCD_TIPO_ACORDO_TAR.asstring := T_adicaoCD_TIPO_ACORDO_TAR.asstring;
                     T_tributacaoACORDO_ALADI.asstring := T_adicaoCD_ACORDO_ALADI.asstring;
                     {T_tributacaoNumero_Ato_Legal_ALADI.asstring :=
                     T_tributacaoALIQUOTA_ALADI: TFloatField;}
                     T_tributacaoRegime_Tributacao_II.asstring := T_adicaoCD_REGIME_TRIBUTAR.asstring;
                     {T_tributacaoAliq_NCM_II: TFloatField;
                     T_tributacaoValor_II_Devido: TFloatField;
                     T_tributacaoValor_II_a_recolher: TFloatField;
                     T_tributacaoFundamento_Legal_II.asstring :=
                     T_tributacaoNumero_Ato_Legal_II.asstring :=
                     T_tributacaoRegime_Tributacao_IPI.asstring :=
                     T_tributacaoBase_Calc_IPI: TFloatField;
                     T_tributacaoAliq_NCM_IPI: TFloatField;
                     T_tributacaoValor_IPI_Devido: TFloatField;
                     T_tributacaoValor_IPI_a_recolher: TFloatField;
                     T_tributacaoNumero_Ato_Legal_IPI.asstring :=
                     T_tributacaoPercentual_Reducao_II: TFloatField;
                     T_tributacaoPercentual_EX: TFloatField;
                     T_tributacaoPercentual_Reduca_IPI: TFloatField;}
                     T_tributacaoQuantidade.asfloat := T_detalheQT_MERC_UN_COMERC.asfloat;
                     T_tributacaoAdicao.asstring := t_adicaoNR_OP_IMP.asstring;
                     T_tributacaoSeq_Adicao.asinteger := T_detalheNR_SEQ_DETALHE.asinteger;
                     {T_tributacaoDDE.asstring :=
                     T_tributacaoRE.asstring :=}
                     t_tributacao.post;

                     t_detalhe.next;
               end;

                t_adicao.next;
            end;

         end;
         t_di.Next;
   end;
end;
end;

end.
