unit u_prodidsi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Buttons, ComCtrls, Grids, DBGrids,
  DBCtrls;

type
  TF_prodidsi = class(TForm)
    p_processo1: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    q_processos: TQuery;
    ds_qprocessos: TDataSource;
    l_cliente: TLabel;
    q_processosEmpresa: TStringField;
    q_processosFilial: TStringField;
    q_processosProcesso: TStringField;
    q_processosData: TDateTimeField;
    q_processosrefcli: TStringField;
    q_processosCliente: TStringField;
    q_processostipodecla: TStringField;
    q_processostipopro: TStringField;
    q_processosqcontrato: TStringField;
    q_processosqlocal: TStringField;
    ds_qadicoes: TDataSource;
    Q_adicoes: TQuery;
    ds_qdetalhe_adicao: TDataSource;
    q_detalhe_adicao: TQuery;
    q_detalhe_adicaoNR_DECL_IMP_MICRO: TStringField;
    q_detalhe_adicaoProduto: TStringField;
    q_detalhe_adicaoQuantidade: TFloatField;
    q_detalhe_adicaoDescricao_Produto: TStringField;
    q_detalhe_adicaoFatura: TStringField;
    q_detalhe_adicaoPagina: TStringField;
    q_detalhe_adicaoSequencial: TStringField;
    q_detalhe_adicaoseq: TStringField;
    p_processo2: TPanel;
    DBG_adicoes: TDBGrid;
    PageControl8: TPageControl;
    TS_detalhe: TTabSheet;
    dbg_detahes: TDBGrid;
    b_atualizasiscomex: TBitBtn;
    b_atualizasiscomexa: TBitBtn;
    T_processos: TTable;
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
    T_processosDT_DISTRIBUICAO: TDateTimeField;
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
    T_processosUrgente: TBooleanField;
    T_processosconsolidado: TBooleanField;
    T_produtos: TTable;
    T_produtosEmpresa: TStringField;
    T_produtosFilial: TStringField;
    T_produtosCdigo: TStringField;
    T_produtosNCM: TStringField;
    T_produtosImportador: TStringField;
    T_produtosFabricante: TStringField;
    T_produtosUnidade: TStringField;
    T_produtosPesoUnitrio: TFloatField;
    T_produtosValorUnitrio: TFloatField;
    T_produtosMoeda: TStringField;
    T_produtosUnidade_Medida_Estat: TStringField;
    T_produtosDestaque_NCM: TStringField;
    T_produtosNALADI: TStringField;
    T_produtosDescrio: TMemoField;
    T_procdi: TTable;
    T_procdiNR_DECL_IMP_MICRO: TStringField;
    T_procdiNR_SEQ_PROCESSO: TSmallintField;
    T_procdiCD_TIPO_PROCESSO: TStringField;
    T_procdiNR_PROCESSO_INSTR: TStringField;
    T_di: TTable;
    T_diNR_DECL_IMP_MICRO: TStringField;
    T_diNR_IDENT_USUARIO: TStringField;
    T_diNR_DECL_IMP_PROT: TStringField;
    T_diNR_DECLARACAO_IMP: TStringField;
    T_diDT_PROCESSAMENTO: TStringField;
    T_diDT_TRANSMISSAO: TStringField;
    T_diDT_REGISTRO_DI: TStringField;
    T_diCD_TIPO_DECLARACAO: TStringField;
    T_diCD_MOTIVO_TRANS: TStringField;
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
    T_diNR_CPF_REPR_LEGAL: TStringField;
    T_diCD_MODALIDADE_DESP: TStringField;
    T_diIN_OPERACAO_FUNDAP: TBooleanField;
    T_diCD_URF_ENTR_CARGA: TStringField;
    T_diCD_URF_DESPACHO: TStringField;
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
    T_diPB_CARGA: TStringField;
    T_diPL_CARGA: TStringField;
    T_diDT_CHEGADA_CARGA: TStringField;
    T_diCD_TIPO_MANIFESTO: TStringField;
    T_diNR_MANIFESTO: TStringField;
    T_diCD_RECINTO_ALFAND: TStringField;
    T_diCD_SETOR_ARMAZENAM: TStringField;
    T_diCD_MOEDA_FRETE: TStringField;
    T_diVL_TOT_FRT_PREPAID: TFloatField;
    T_diVL_TOT_FRT_COLLECT: TFloatField;
    T_diVL_FRETE_TNAC_MNEG: TFloatField;
    T_diVL_TOTAL_FRETE_MN: TFloatField;
    T_diCD_MOEDA_SEGURO: TStringField;
    T_diVL_TOT_SEGURO_MNEG: TFloatField;
    T_diVL_TOTAL_SEG_MN: TFloatField;
    T_diCD_MOEDA_DESPESAS: TStringField;
    T_diVL_TOT_DESPS_MNEG: TFloatField;
    T_diVL_TOT_DESPS_MN: TFloatField;
    T_diCD_MOEDA_MLE: TStringField;
    T_diVL_TOT_MLE_MNEG: TFloatField;
    T_diVL_TOTAL_MLE_MN: TFloatField;
    T_diIN_MOEDA_UNICA: TBooleanField;
    T_diTX_INFO_COMPL: TMemoField;
    T_diCD_TIPO_PGTO_TRIB: TStringField;
    T_diNR_CONTA_PGTO_TRIB: TStringField;
    T_adicoes: TTable;
    T_adicoesNR_DECL_IMP_MICRO: TStringField;
    T_adicoesNR_OP_IMP_MICRO: TStringField;
    T_adicoesCD_URF_ENTR_MERC: TStringField;
    T_adicoesCD_VIA_TRANSPORTE: TStringField;
    T_adicoesIN_MULTIMODAL: TBooleanField;
    T_adicoesNM_FORN_ESTR: TStringField;
    T_adicoesED_LOGR_FORN_ESTR: TStringField;
    T_adicoesED_NR_FORN_ESTR: TStringField;
    T_adicoesED_COMPL_FORN_ESTR: TStringField;
    T_adicoesED_CIDAD_FORN_ESTR: TStringField;
    T_adicoesED_ESTAD_FORN_ESTR: TStringField;
    T_adicoesCD_PAIS_AQUIS_MERC: TStringField;
    T_adicoesCD_MERCADORIA_NCM: TStringField;
    T_adicoesCD_PAIS_PROC_MERC: TStringField;
    T_adicoesCD_AUSENCIA_FABRIC: TStringField;
    T_adicoesNM_FABRICANTE_MERC: TStringField;
    T_adicoesED_LOGR_FABRIC: TStringField;
    T_adicoesED_NR_FABRIC: TStringField;
    T_adicoesED_COMPL_FABRIC: TStringField;
    T_adicoesED_CIDAD_FABRIC: TStringField;
    T_adicoesED_ESTADO_FABRIC: TStringField;
    T_adicoesCD_PAIS_ORIG_MERC: TStringField;
    T_adicoesCD_MERC_NBM_SH: TStringField;
    T_adicoesCD_MERC_NALADI_NCC: TStringField;
    T_adicoesCD_MERC_NALADI_SH: TStringField;
    T_adicoesPL_MERCADORIA: TStringField;
    T_adicoesQT_UN_ESTATISTICA: TStringField;
    T_adicoesCD_APLICACAO_MERC: TStringField;
    T_adicoesVL_MERC_EMB_MN: TFloatField;
    T_adicoesCD_MOEDA_NEGOCIADA: TStringField;
    T_adicoesCD_INCOTERMS_VENDA: TStringField;
    T_adicoesNM_LOC_COND_VENDA: TStringField;
    T_adicoesVL_MERC_COND_VENDA: TFloatField;
    T_adicoesVL_MERC_VENDA_MN: TFloatField;
    T_adicoesVL_FRETE_MERC_MNEG: TFloatField;
    T_adicoesCD_MD_FRETE_MERC: TStringField;
    T_adicoesVL_FRETE_MERC_MN: TFloatField;
    T_adicoesVL_SEG_MERC_MNEG: TFloatField;
    T_adicoesCD_MOEDA_SEG_MERC: TStringField;
    T_adicoesVL_SEG_MERC_MN: TFloatField;
    T_adicoesVL_UNID_LOC_EMP: TFloatField;
    T_adicoesCD_METOD_VALORACAO: TStringField;
    T_adicoesCD_VINC_IMPO_EXPO: TStringField;
    T_adicoesCD_TIPO_ACORDO_TAR: TStringField;
    T_adicoesCD_ACORDO_ALADI: TStringField;
    T_adicoesCD_REGIME_TRIBUTAR: TStringField;
    T_adicoesCD_FUND_LEG_REGIME: TStringField;
    T_adicoesCD_MOTIVO_ADM_TEMP: TStringField;
    T_adicoesNR_DCTO_REDUCAO: TStringField;
    T_adicoesVL_DESPESAS_MNEG: TFloatField;
    T_adicoesCD_MOEDAS_DESPESAS: TStringField;
    T_adicoesVL_DESPESAS_MN: TFloatField;
    T_adicoesPC_COEF_REDUC_II: TFloatField;
    T_adicoesVL_CALC_DCR_DOLAR: TFloatField;
    T_adicoesVL_II_CALC_DCR_MN: TFloatField;
    T_adicoesVL_II_DEVIDO_ZFM: TFloatField;
    T_adicoesVL_II_A_REC_ZFM: TFloatField;
    T_adicoesCD_COBERT_CAMBIAL: TStringField;
    T_adicoesCD_MODALIDADE_PGTO: TStringField;
    T_adicoesCD_ORGAO_FIN_INTER: TStringField;
    T_adicoesCD_MOTIVO_SEM_COB: TStringField;
    T_adicoesQT_PARC_FINANC_360: TStringField;
    T_adicoesCD_PERIOD_PGTO_360: TStringField;
    T_adicoesQT_PERIOD_PGTO_360: TStringField;
    T_adicoesVL_TOT_FINANC_360: TFloatField;
    T_adicoesPC_TAXA_JUROS: TFloatField;
    T_adicoesCD_TAXA_JUROS: TStringField;
    T_adicoesVL_FINANC_SUP_360: TFloatField;
    T_adicoesNR_ROF: TStringField;
    T_adicoesIN_PGTO_VARIAV_360: TBooleanField;
    T_adicoesIN_JUROS_ATE_360: TBooleanField;
    T_adicoesPC_COMISSAO_AG_IMP: TFloatField;
    T_adicoesVL_COMISSAO_AG_IMP: TFloatField;
    T_adicoesCD_TIPO_AGENTE_IMP: TStringField;
    T_adicoesNR_AGENTE_IMP: TStringField;
    T_adicoesCD_BANC_AGENTE_IMP: TStringField;
    T_adicoesCD_AGENC_AGENT_IMP: TStringField;
    T_adicoesIN_BEM_ENCOMENDA: TBooleanField;
    T_adicoesIN_MATERIAL_USADO: TBooleanField;
    T_adicoesTX_COMPL_VL_ADUAN: TStringField;
    T_adicoesIN_IPI_NAO_TRIBUT: TBooleanField;
    T_adicoesvl_merc_loc_emb_mn: TFloatField;
    T_adicoesvl_base_calculo_mn: TFloatField;
    T_adicoesNR_OPER_TRAT_PREV: TStringField;
    q_detalhe: TQuery;
    q_detalheNR_DECL_IMP_MICRO: TStringField;
    q_detalheAdicao: TStringField;
    q_detalheQuantidade: TFloatField;
    q_detalheseq: TStringField;
    q_detalheProduto: TStringField;
    q_detalheDescricao_Produto: TStringField;
    q_detalheFatura: TStringField;
    q_detalhePagina: TStringField;
    q_detalheSequencial: TStringField;
    q_detalheReferencia: TStringField;
    q_detalheCertificado_Origem: TStringField;
    q_detalheReferencia_projeto: TStringField;
    q_detalhePO: TStringField;
    q_detalheseqPO: TStringField;
    T_detalhes: TTable;
    T_detalhesNR_DECL_IMP_MICRO: TStringField;
    T_detalhesNR_OP_IMP_MICRO: TStringField;
    T_detalhesNU_SEQ_DETALHE: TSmallintField;
    T_detalhesTX_DESC_DET_MERC: TMemoField;
    T_detalhesQT_MERC_UN_COMERC: TStringField;
    T_detalhesNM_UN_MEDID_COMERC: TStringField;
    T_detalhesVL_UNID_LOC_EMB: TFloatField;
    T_detalhesVL_UNID_COND_VENDA: TStringField;
    T_detalhesCD_PRODUTO: TStringField;
    T_itensfaturas: TTable;
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
    T_itensfaturasReferencia_projeto: TStringField;
    T_itensfaturasPO: TStringField;
    T_itensfaturasSeqpo: TStringField;
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
    T_itensfaturasContrato: TStringField;
    T_itensfaturasLocal_Inventario: TStringField;
    T_tributositem: TTable;
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
    T_tributositemIN_BEM_ENCOMENDA: TBooleanField;
    T_tributositemIN_MATERIAL_USADO: TBooleanField;
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
    Q_acresdedu: TQuery;
    Q_acresdeduNR_DECL_IMP_MICRO: TStringField;
    Q_acresdeduAdicao: TStringField;
    Q_acresdeduSomaDeAcresc_reduc_Valaduan: TFloatField;
    Q_acresdeduIncoterm: TStringField;
    Q_acresdeduMoeda: TStringField;
    T_acresval: TTable;
    T_acresvalNR_DECL_IMP_MICRO: TStringField;
    T_acresvalNR_OP_IMP_MICRO: TStringField;
    T_acresvalCD_MET_ACRES_VALOR: TStringField;
    T_acresvalVL_ACRESCIMO_MOEDA: TFloatField;
    T_acresvalCD_MD_NEGOC_ACRES: TStringField;
    T_acresvalVL_ACRESCIMO_MN: TFloatField;
    T_deduval: TTable;
    T_deduvalNR_DECL_IMP_MICRO: TStringField;
    T_deduvalNR_OP_IMP_MICRO: TStringField;
    T_deduvalCD_MET_DEDUC_VALOR: TStringField;
    T_deduvalVL_DEDUCAO_MNEG: TFloatField;
    T_deduvalCD_MD_NEGOC_DEDUC: TStringField;
    T_deduvalVL_DEDUCAO_MN: TFloatField;
    T_taxaconv: TTable;
    T_taxaconvEmpresa: TStringField;
    T_taxaconvFilial: TStringField;
    T_taxaconvProcesso: TStringField;
    T_taxaconvMoeda: TStringField;
    T_taxaconvTaxa_conversao: TFloatField;
    T_taxaconvTaxa_conversaoc: TFloatField;
    Q_atovinc: TQuery;
    Q_atovincNR_DECL_IMP_MICRO: TStringField;
    Q_atovincAdicao: TStringField;
    Q_atovincNumero_Ato_Legal_II: TStringField;
    Q_atovincAtos_LegaisTipo_Ato: TStringField;
    Q_atovincAtos_LegaisTipo_Ato_Legal: TStringField;
    Q_atovincAtos_LegaisOrgao_Emissor: TStringField;
    Q_atovincAtos_LegaisAno_Ato_Legal: TStringField;
    Q_atovincAtos_LegaisEX: TStringField;
    Q_atovincAtos_Legais_1Tipo_Ato: TStringField;
    Q_atovincAtos_Legais_1Numero: TStringField;
    Q_atovincAtos_Legais_1EX: TStringField;
    Q_atovincAtos_Legais_1Tipo_Ato_Legal: TStringField;
    Q_atovincAtos_Legais_1Orgao_Emissor: TStringField;
    Q_atovincAtos_Legais_1Ano_Ato_Legal: TStringField;
    Q_atovincAtos_Legais_2Tipo_Ato: TStringField;
    Q_atovincAtos_Legais_2Numero: TStringField;
    Q_atovincAtos_Legais_2EX: TStringField;
    Q_atovincAtos_Legais_2Tipo_Ato_Legal: TStringField;
    Q_atovincAtos_Legais_2Orgao_Emissor: TStringField;
    Q_atovincAtos_Legais_2Ano_Ato_Legal: TStringField;
    T_acrescimos: TTable;
    T_acrescimosEmpresa: TStringField;
    T_acrescimosFilial: TStringField;
    T_acrescimosProcesso: TStringField;
    T_acrescimosFatura: TStringField;
    T_acrescimosCD_MET_ACRES_VALOR: TStringField;
    T_acrescimosDescricao: TStringField;
    T_acrescimosVL_ACRESCIMO_MOEDA: TFloatField;
    T_acrescimosCD_MD_NEGOC_ACRES: TStringField;
    T_acrescimosVL_ACRESCIMO_MN: TFloatField;
    T_pagprevisto: TTable;
    T_pagprevistoNR_DECL_IMP_MICRO: TStringField;
    T_pagprevistoNR_OP_IMP_MICRO: TStringField;
    T_pagprevistoNU_SEQ_PAG_PREV: TSmallintField;
    T_pagprevistoDT_PREV_PGTO_360: TStringField;
    T_pagprevistoVL_PREV_PGTO_360: TFloatField;
    T_atosvinc: TTable;
    T_atosvincNR_DECL_IMP_MICRO: TStringField;
    T_atosvincNR_OP_IMP_MICRO: TStringField;
    T_atosvincCD_ASSUNTO_VINCUL: TStringField;
    T_atosvincSG_TIPO_ATO_VINCUL: TStringField;
    T_atosvincSG_ORG_ATO_VINCUL: TStringField;
    T_atosvincDT_ANO_ATO_VINCUL: TStringField;
    T_atosvincNR_ATO_VINCULADO: TStringField;
    T_atosvincNR_EX_ATO_VINCUL: TStringField;
    q_embcarga: TQuery;
    q_embcargaNR_DECL_IMP_MICRO: TStringField;
    q_embcargaTipoEmbalagem: TStringField;
    q_embcargaQuantidade: TStringField;
    T_embcarga: TTable;
    T_embcargaNR_DECL_IMP_MICRO: TStringField;
    T_embcargaNR_SEQ_EMBALAGEM: TSmallintField;
    T_embcargaCD_TIPO_EMBALAGEM: TStringField;
    T_embcargaQT_VOLUME_CARGA: TStringField;
    Q_cargaarm: TQuery;
    Q_cargaarmNR_DECL_IMP_MICRO: TStringField;
    Q_cargaarmNome_Armazem: TStringField;
    T_cargaarm: TTable;
    T_cargaarmNR_DECL_IMP_MICRO: TStringField;
    T_cargaarmNR_SEQ_ARMAZEM: TSmallintField;
    T_cargaarmNM_ARMAZEM_CARGA: TStringField;
    q_destaquencm: TQuery;
    q_destaquencmNR_DECL_IMP_MICRO: TStringField;
    q_destaquencmAdicao: TStringField;
    q_destaquencmDestaque_NCM: TStringField;
    t_destaquencm: TTable;
    t_destaquencmNR_DECL_IMP_MICRO: TStringField;
    t_destaquencmNR_OP_IMP_MICRO: TStringField;
    t_destaquencmNU_SEQ_DESTAQUE: TSmallintField;
    t_destaquencmNR_DESTAQUE_NCM: TStringField;
    q_docsinstru: TQuery;
    q_docsinstruNR_DECL_IMP_MICRO: TStringField;
    q_docsinstrucod_fat: TStringField;
    q_docsinstrutipo_doc01: TStringField;
    q_docsinstruFatura: TStringField;
    q_docsinstrucod_co: TStringField;
    q_docsinstrutipo_doc02: TStringField;
    q_docsinstruCertificado_Origem: TStringField;
    T_docsintru: TTable;
    T_docsintruNR_DECL_IMP_MICRO: TStringField;
    T_docsintruNR_SEQ_DCTO_INSTR: TSmallintField;
    T_docsintruCD_TIPO_DCTO_INSTR: TStringField;
    T_docsintruNR_DCTO_INSTRUCAO: TStringField;
    T_docsintruNM_DCTO_INSTRUCAO: TStringField;
    Q_tributos: TQuery;
    Q_tributosNR_DECL_IMP_MICRO: TStringField;
    Q_tributosAdicao: TStringField;
    Q_tributoscod_II: TStringField;
    Q_tributostipo_aliq: TStringField;
    Q_tributosBase_Calc_II: TFloatField;
    Q_tributosAliq_NCM_II: TFloatField;
    Q_tributosSomaDeValor_II_Devido: TFloatField;
    Q_tributosPercentual_Reducao_II: TFloatField;
    Q_tributosSomaDeValor_II_a_recolher: TFloatField;
    Q_tributoscod_IPI: TStringField;
    Q_tributosRegime_Tributacao_IPI: TStringField;
    Q_tributosSomaDeValor_IPI_a_recolher: TFloatField;
    Q_tributosSomaDeValor_IPI_Devido: TFloatField;
    Q_tributosPercentual_Reduca_IPI: TFloatField;
    Q_tributosMoeda: TStringField;
    Q_tributosALIQUOTA_ALADI: TFloatField;
    Q_tributosAliq_NCM_IPI: TFloatField;
    Q_tributosSomaDeBase_Calc_IPI: TFloatField;
    T_tributo: TTable;
    T_tributoNR_DECL_IMP_MICRO: TStringField;
    T_tributoNR_OP_IMP_MICRO: TStringField;
    T_tributoCD_RECEITA_IMPOSTO: TStringField;
    T_tributoCD_TIPO_ALIQ_IPT: TStringField;
    T_tributoVL_BASE_CALC_ADVAL: TFloatField;
    T_tributoPC_ALIQ_NORM_ADVAL: TFloatField;
    T_tributoVL_CALC_IPT_ADVAL: TFloatField;
    T_tributoNM_UN_ALIQ_ESP_IPT: TStringField;
    T_tributoCD_TIPO_RECIPIENTE: TStringField;
    T_tributoQT_ML_RECIPIENTE: TFloatField;
    T_tributoQT_MERC_UN_ALIQ_ES: TFloatField;
    T_tributoVL_ALIQ_ESPEC_IPT: TFloatField;
    T_tributoVL_CALC_IPT_ESPEC: TFloatField;
    T_tributoCD_TIPO_BENEF_IPI: TStringField;
    T_tributoPC_ALIQ_REDUZIDA: TFloatField;
    T_tributoPC_REDUCAO_IPT_BLI: TFloatField;
    T_tributoPC_ALIQ_ACOR_TARIF: TFloatField;
    T_tributoVL_CALC_II_AC_TARI: TFloatField;
    T_tributoVL_IMPOSTO_DEVIDO: TFloatField;
    T_tributoVL_IPT_A_RECOLHER: TFloatField;
    T_tributoCD_TIPO_DIREITO: TStringField;
    T_tributoNR_NOTA_COMPL_TIPI: TStringField;
    q_pagprev: TQuery;
    q_pagprevNR_DECL_IMP_MICRO: TStringField;
    q_pagprevAdicao: TStringField;
    q_pagprevDatadePagamento: TStringField;
    q_pagprevPercentual: TFloatField;
    q_pagprevValor_Aduaneiro: TFloatField;
    T_pagtributos: TTable;
    T_pagtributosNR_DECL_IMP_MICRO: TStringField;
    T_pagtributosNR_SEQ_PGTO_TRIB: TSmallintField;
    T_pagtributosCD_RECEITA_PGTO: TStringField;
    T_pagtributosCD_BANCO_PGTO_TRIB: TStringField;
    T_pagtributosNR_AGENC_PGTO_TRIB: TStringField;
    T_pagtributosVL_TRIBUTO_PAGO: TFloatField;
    T_pagtributosDT_PGTO_TRIBUTO: TStringField;
    T_pagtributosVL_MULTA_PGTO_TRIB: TFloatField;
    T_pagtributosVL_JUROS_PGTO_TRIB: TFloatField;
    q_pagtributos: TQuery;
    q_pagtributosNR_DECL_IMP_MICRO: TStringField;
    q_pagtributosnadicoes: TStringField;
    q_pagtributoscod_ii: TStringField;
    q_pagtributoscod_ipi: TStringField;
    q_pagtributoscod_sis: TStringField;
    q_pagtributosBanco: TStringField;
    q_pagtributosAgencia: TStringField;
    q_pagtributosSomaDeValor_II_a_recolher: TFloatField;
    q_pagtributosSomaDeValor_IPI_a_recolher: TFloatField;
    T_pagvinculado: TTable;
    T_pagvinculadoNR_DECL_IMP_MICRO: TStringField;
    T_pagvinculadoNR_OP_IMP_MICRO: TStringField;
    T_pagvinculadoNR_SEQ_PAGAMENTO: TSmallintField;
    T_pagvinculadoCD_FORMA_PAGAMENTO: TStringField;
    T_pagvinculadoIN_PAGAMENTO_MN: TBooleanField;
    T_pagvinculadoCD_BANCO_PAGAMENTO: TStringField;
    T_pagvinculadoCD_PRACA_PAGAMENTO: TStringField;
    T_pagvinculadoNR_OP_CAMBIO: TStringField;
    T_pagvinculadoVL_VINC_MD_CAMBIO: TFloatField;
    T_pagvinculadoNR_COMPR_CAMBIO: TStringField;
    T_pagvinculadoCD_TP_COMPR_CAMBIO: TStringField;
    q_pagvinculados: TQuery;
    q_pagvinculadosNR_DECL_IMP_MICRO: TStringField;
    q_pagvinculadosAdicao: TStringField;
    q_pagvinculadosFormadePagamento: TStringField;
    q_pagvinculadosMoedaNacional: TBooleanField;
    q_pagvinculadosBanco: TStringField;
    q_pagvinculadosPraca: TStringField;
    q_pagvinculadosContrato: TStringField;
    q_pagvinculadosValorPercentual: TFloatField;
    q_pagvinculadosCNPJComprador: TStringField;
    q_pagvinculadosTipoCNPJ: TStringField;
    q_pagvinculadosValor_Aduaneiro: TFloatField;
    q_apagadis: TQuery;
    q_geradi: TQuery;
    q_geraadicoes: TQuery;
    q_geradet: TQuery;
    q_acresval: TQuery;
    q_atos: TQuery;
    q_emb: TQuery;
    q_car: TQuery;
    q_desncm: TQuery;
    t_arrumaadicoes: TTable;
    t_arrumaadicoesNR_DECL_IMP_MICRO: TStringField;
    t_arrumaadicoesNR_OP_IMP_MICRO: TStringField;
    t_arrumaadicoesCD_URF_ENTR_MERC: TStringField;
    t_arrumaadicoesCD_VIA_TRANSPORTE: TStringField;
    t_arrumaadicoesIN_MULTIMODAL: TBooleanField;
    t_arrumaadicoesNM_FORN_ESTR: TStringField;
    t_arrumaadicoesED_LOGR_FORN_ESTR: TStringField;
    t_arrumaadicoesED_NR_FORN_ESTR: TStringField;
    t_arrumaadicoesED_COMPL_FORN_ESTR: TStringField;
    t_arrumaadicoesED_CIDAD_FORN_ESTR: TStringField;
    t_arrumaadicoesED_ESTAD_FORN_ESTR: TStringField;
    t_arrumaadicoesCD_PAIS_AQUIS_MERC: TStringField;
    t_arrumaadicoesCD_MERCADORIA_NCM: TStringField;
    t_arrumaadicoesCD_PAIS_PROC_MERC: TStringField;
    t_arrumaadicoesCD_AUSENCIA_FABRIC: TStringField;
    t_arrumaadicoesNM_FABRICANTE_MERC: TStringField;
    t_arrumaadicoesED_LOGR_FABRIC: TStringField;
    t_arrumaadicoesED_NR_FABRIC: TStringField;
    t_arrumaadicoesED_COMPL_FABRIC: TStringField;
    t_arrumaadicoesED_CIDAD_FABRIC: TStringField;
    t_arrumaadicoesED_ESTADO_FABRIC: TStringField;
    t_arrumaadicoesCD_PAIS_ORIG_MERC: TStringField;
    t_arrumaadicoesCD_MERC_NBM_SH: TStringField;
    t_arrumaadicoesCD_MERC_NALADI_NCC: TStringField;
    t_arrumaadicoesCD_MERC_NALADI_SH: TStringField;
    t_arrumaadicoesPL_MERCADORIA: TStringField;
    t_arrumaadicoesQT_UN_ESTATISTICA: TStringField;
    t_arrumaadicoesCD_APLICACAO_MERC: TStringField;
    t_arrumaadicoesVL_MERC_EMB_MN: TFloatField;
    t_arrumaadicoesCD_MOEDA_NEGOCIADA: TStringField;
    t_arrumaadicoesCD_INCOTERMS_VENDA: TStringField;
    t_arrumaadicoesNM_LOC_COND_VENDA: TStringField;
    t_arrumaadicoesVL_MERC_COND_VENDA: TFloatField;
    t_arrumaadicoesVL_MERC_VENDA_MN: TFloatField;
    t_arrumaadicoesVL_FRETE_MERC_MNEG: TFloatField;
    t_arrumaadicoesCD_MD_FRETE_MERC: TStringField;
    t_arrumaadicoesVL_FRETE_MERC_MN: TFloatField;
    t_arrumaadicoesVL_SEG_MERC_MNEG: TFloatField;
    t_arrumaadicoesCD_MOEDA_SEG_MERC: TStringField;
    t_arrumaadicoesVL_SEG_MERC_MN: TFloatField;
    t_arrumaadicoesVL_UNID_LOC_EMP: TFloatField;
    t_arrumaadicoesCD_METOD_VALORACAO: TStringField;
    t_arrumaadicoesCD_VINC_IMPO_EXPO: TStringField;
    t_arrumaadicoesCD_TIPO_ACORDO_TAR: TStringField;
    t_arrumaadicoesCD_ACORDO_ALADI: TStringField;
    t_arrumaadicoesCD_REGIME_TRIBUTAR: TStringField;
    t_arrumaadicoesCD_FUND_LEG_REGIME: TStringField;
    t_arrumaadicoesCD_MOTIVO_ADM_TEMP: TStringField;
    t_arrumaadicoesNR_DCTO_REDUCAO: TStringField;
    t_arrumaadicoesVL_DESPESAS_MNEG: TFloatField;
    t_arrumaadicoesCD_MOEDAS_DESPESAS: TStringField;
    t_arrumaadicoesVL_DESPESAS_MN: TFloatField;
    t_arrumaadicoesPC_COEF_REDUC_II: TFloatField;
    t_arrumaadicoesVL_CALC_DCR_DOLAR: TFloatField;
    t_arrumaadicoesVL_II_CALC_DCR_MN: TFloatField;
    t_arrumaadicoesVL_II_DEVIDO_ZFM: TFloatField;
    t_arrumaadicoesVL_II_A_REC_ZFM: TFloatField;
    t_arrumaadicoesCD_COBERT_CAMBIAL: TStringField;
    t_arrumaadicoesCD_MODALIDADE_PGTO: TStringField;
    t_arrumaadicoesCD_ORGAO_FIN_INTER: TStringField;
    t_arrumaadicoesCD_MOTIVO_SEM_COB: TStringField;
    t_arrumaadicoesQT_PARC_FINANC_360: TStringField;
    t_arrumaadicoesCD_PERIOD_PGTO_360: TStringField;
    t_arrumaadicoesQT_PERIOD_PGTO_360: TStringField;
    t_arrumaadicoesVL_TOT_FINANC_360: TFloatField;
    t_arrumaadicoesPC_TAXA_JUROS: TFloatField;
    t_arrumaadicoesCD_TAXA_JUROS: TStringField;
    t_arrumaadicoesVL_FINANC_SUP_360: TFloatField;
    t_arrumaadicoesNR_ROF: TStringField;
    t_arrumaadicoesIN_PGTO_VARIAV_360: TBooleanField;
    t_arrumaadicoesIN_JUROS_ATE_360: TBooleanField;
    t_arrumaadicoesPC_COMISSAO_AG_IMP: TFloatField;
    t_arrumaadicoesVL_COMISSAO_AG_IMP: TFloatField;
    t_arrumaadicoesCD_TIPO_AGENTE_IMP: TStringField;
    t_arrumaadicoesNR_AGENTE_IMP: TStringField;
    t_arrumaadicoesCD_BANC_AGENTE_IMP: TStringField;
    t_arrumaadicoesCD_AGENC_AGENT_IMP: TStringField;
    t_arrumaadicoesIN_BEM_ENCOMENDA: TBooleanField;
    t_arrumaadicoesIN_MATERIAL_USADO: TBooleanField;
    t_arrumaadicoesTX_COMPL_VL_ADUAN: TStringField;
    t_arrumaadicoesIN_IPI_NAO_TRIBUT: TBooleanField;
    t_arrumaadicoesvl_merc_loc_emb_mn: TFloatField;
    t_arrumaadicoesvl_base_calculo_mn: TFloatField;
    t_arrumaadicoesNR_OPER_TRAT_PREV: TStringField;
    q_doci: TQuery;
    q_trib: TQuery;
    q_pagpre: TQuery;
    q_pagvin: TQuery;
    q_procdi: TQuery;
    q_acertapesodi: TQuery;
    q_acertapesodiNR_DECL_IMP_MICRO: TStringField;
    q_acertapesodipeso_liquido: TFloatField;
    q_acertafretseg: TQuery;
    q_acertafretsegProcesso: TStringField;
    q_acertafretsegRegime_Tributacao_II: TStringField;
    q_acertafretsegprepaid: TFloatField;
    q_acertafretsegcollect: TFloatField;
    q_acertafretsegternac: TFloatField;
    q_acertafretsegseguro: TFloatField;
    q_acertapagtrib: TQuery;
    q_acertapagtribNR_DECL_IMP_MICRO: TStringField;
    q_acertapagtribnadicoes: TStringField;
    q_acertapagtribcod_ii: TStringField;
    q_acertapagtribcod_ipi: TStringField;
    q_acertapagtribcod_sis: TStringField;
    q_acertapagtribBanco: TStringField;
    q_acertapagtribAgencia: TStringField;
    q_acertapagtribsomadeValor_II_a_recolher: TFloatField;
    q_acertapagtribsomadeValor_IPI_a_recolher: TFloatField;
    q_acertapagtribRegime_Tributacao_II: TStringField;
    T_faturas: TTable;
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
    T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    T_faturasDT_PAG_CAMBIO: TDateTimeField;
    T_faturasSTATUS_CAMBIO: TStringField;
    T_faturasCONTRATO_CAMBIO: TStringField;
    T_transpprocesso: TTable;
    T_transpprocessoEmpresa: TStringField;
    T_transpprocessoFilial: TStringField;
    T_transpprocessoProcesso: TStringField;
    T_transpprocessoVia: TStringField;
    T_transpprocessoMultimodal: TBooleanField;
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
    T_transpprocessoOperacao_FUNDAP: TBooleanField;
    T_transpprocessoContratante_OPCAMBIAL: TStringField;
    T_transpprocessoMoeda_Frete: TStringField;
    T_transpprocessoFrete_Prepaid: TFloatField;
    T_transpprocessoFrete_Collect: TFloatField;
    T_transpprocessoFrete_Ter_Nac: TFloatField;
    T_transpprocessoMoeda_Seguro: TStringField;
    T_transpprocessoValor_Seguro: TFloatField;
    T_transpprocessoMoeda_Despesas_ate_FOB: TStringField;
    T_transpprocessoValor_Despesas_ate_FOB: TFloatField;
    T_transpprocessoCodigo_Presenca_Carga: TStringField;
    T_importadores: TTable;
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
    T_importadoresCNPJ_CPF_COMPLETO: TStringField;
    T_importadoresBanco: TStringField;
    T_importadoresAgencia: TStringField;
    T_importadoresConta_Corrente: TStringField;
    T_importadoresConta_Corrente_Registro: TIntegerField;
    T_importadoresConta_Corrente_Deposito: TIntegerField;
    T_numerador: TTable;
    T_numeradorNR_PROV_DECLARACAO: TIntegerField;
    T_numeradorNR_ANO_DECLARACAO: TSmallintField;
    q_infcomp: TQuery;
    q_infcompRazao_Social: TStringField;
    q_infcompDescricao: TStringField;
    q_infcompPLaca: TStringField;
    q_infcompEmbarcacao: TStringField;
    q_infcompTipodoccarga: TStringField;
    q_infcompNumerodoccarga: TStringField;
    q_infcompNumeromaster: TStringField;
    q_infcompTipomanifesto: TStringField;
    q_infcompNumeromanifesto: TStringField;
    q_infcompCodigo_Presenca_Carga: TStringField;
    q_infcompURF_chegada: TStringField;
    q_infcompData_Chegada_URF_Cheg: TDateTimeField;
    q_infcompURF_Despacho: TStringField;
    q_infcompData_Chegada_URF_Desp: TDateTimeField;
    q_infcompRecinto_Alfandegario: TStringField;
    q_infcompSetor_Alfandegario: TStringField;
    q_infcompCodigo: TStringField;
    q_infcompDescricao_tipo: TStringField;
    q_infcompLacre: TStringField;
    q_infcompCdigo: TStringField;
    q_infcompROFBACEN: TStringField;
    q_infcompContrato: TStringField;
    q_infcompAdicao: TStringField;
    q_infcompCertificado_Origem: TStringField;
    q_infcompAto_Concessorio: TStringField;
    q_infcompMotivo_Adm_Temp: TStringField;
    q_infcompNumero_Ato_Legal_ALADI: TStringField;
    q_infcompRegime_Tributacao_II: TStringField;
    q_infcompFundamento_Legal_II: TStringField;
    q_infcompNumero_Ato_Legal_II: TStringField;
    q_infcompRegime_Tributacao_IPI: TStringField;
    q_infcompNumero_Ato_Legal_IPI: TStringField;
    q_infcompPercentual_Reducao_II: TFloatField;
    q_infcompPercentual_Reduca_IPI: TFloatField;
    q_infcompALIQUOTA_ALADI: TFloatField;
    Q_infocomp2: TQuery;
    Q_infocomp2Processo: TStringField;
    Q_infocomp2Codigo: TStringField;
    Q_infocomp2Descricao: TStringField;
    q_infocomp3: TQuery;
    q_infocomp3Processo: TStringField;
    q_infocomp3Cdigo: TStringField;
    q_infocomp3RazoSocial: TStringField;
    q_infocomp3ModalidadedePagamento: TStringField;
    q_infocomp3InstituicaoFinanciadora: TStringField;
    q_infocomp3TipoParcela: TStringField;
    q_infocomp3Numerodeparcelas: TStringField;
    q_infocomp3Periodicidade: TStringField;
    q_infocomp3ValordasParcelas: TFloatField;
    q_infocomp3IndicadorPeriodicidade: TStringField;
    q_infocomp3TaxadeJuros: TBooleanField;
    q_infocomp3CodigoTaxadeJuros: TStringField;
    q_infocomp3ValorTaxadeJuros: TFloatField;
    q_infocomp3ROFBACEN: TStringField;
    q_infocomp3PercentualROF: TFloatField;
    q_infocomp4: TQuery;
    q_infocomp4Processo: TStringField;
    q_infocomp4TipoEmbalagem: TStringField;
    q_infocomp4DescricaoEmbalagem: TStringField;
    q_infocomp4Quantidade: TStringField;
    q_infocomp5: TQuery;
    q_infocomp5Processo: TStringField;
    q_infocomp5DESCRICAO: TStringField;
    q_infocomp5Taxa_conversao: TFloatField;
    q_infocomp5Taxa_conversaoc: TFloatField;
    q_infocomp6: TQuery;
    q_infocomp6Processo: TStringField;
    q_infocomp6Certificado_Origem: TStringField;
    T_unidades: TTable;
    T_unidadesCODIGO: TStringField;
    T_unidadesDESCRICAO: TStringField;
    t_contacorrente_reg: TTable;
    t_contacorrente_regEmpresa: TStringField;
    t_contacorrente_regFilial: TStringField;
    t_contacorrente_regCodigo: TAutoIncField;
    t_contacorrente_regBanco_Caixa: TStringField;
    t_contacorrente_regDescricao: TStringField;
    t_contacorrente_regBanco: TStringField;
    t_contacorrente_regAgencia: TStringField;
    t_contacorrente_regConta_Corrente: TStringField;
    t_contacorrente_regSaldo: TFloatField;
    t_contacorrente_dep: TTable;
    t_contacorrente_depEmpresa: TStringField;
    t_contacorrente_depFilial: TStringField;
    t_contacorrente_depCodigo: TAutoIncField;
    t_contacorrente_depBanco_Caixa: TStringField;
    t_contacorrente_depDescricao: TStringField;
    t_contacorrente_depBanco: TStringField;
    t_contacorrente_depAgencia: TStringField;
    t_contacorrente_depConta_Corrente: TStringField;
    t_contacorrente_depSaldo: TFloatField;
    q_infocomp1: TQuery;
    q_infocomp1Processo: TStringField;
    q_infocomp1Embarcacao: TStringField;
    q_infocomp1qtipodoccarga: TStringField;
    q_infocomp1Numerodoccarga: TStringField;
    q_infocomp1Numeromaster: TStringField;
    q_infocomp1qtipomanifesto: TStringField;
    q_infocomp1Numeromanifesto: TStringField;
    q_infocomp1qurf: TStringField;
    q_infocomp1qrecalfa: TStringField;
    q_infocomp1Data_Chegada_URF_Desp: TDateTimeField;
    q_infocomp1Peso_Bruto: TFloatField;
    q_infocomp1Peso_Liquido: TFloatField;
    T_transportadores: TTable;
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
    T_ncm: TTable;
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
    T_cambio: TTable;
    T_cambioCodigo: TStringField;
    T_cambioDescricao: TStringField;
    T_cambioTaxa_Conversao: TStringField;
    T_cambioVigencia_Inicio_Taxa: TStringField;
    T_cambioVigencia_Fim_Taxa: TStringField;
    Q_update1: TQuery;
    q_update2: TQuery;
    q_upacrescimos: TQuery;
    q_sub: TQuery;
    q_subEmpresa: TStringField;
    q_subFilial: TStringField;
    q_subNumero: TStringField;
    q_subImportador: TStringField;
    q_subCNPJ_CPF_COMPLETO: TStringField;
    q_subRazao_Social: TStringField;
    q_fobcif12c: TQuery;
    q_fobcif12cEmpresa: TStringField;
    q_fobcif12cFilial: TStringField;
    q_fobcif12cProcesso: TStringField;
    q_fobcif12cTipo_Declarao: TStringField;
    q_fobcif12cMoeda: TStringField;
    q_fobcif12cDESCRICAO: TStringField;
    q_fobcif12cTaxa_conversao: TFloatField;
    q_fobcif12cFOB: TFloatField;
    q_fobcif12cFOBREAL: TFloatField;
    q_fobcif12cCIF: TFloatField;
    q_fobcif12cCIFREAL: TFloatField;
    q_fobcif12cRegime_Tributacao_II: TStringField;
    q_fobcif12cRegime_Tributacao_IPI: TStringField;
    q_fobcif12a: TQuery;
    q_fobcif12aEmpresa: TStringField;
    q_fobcif12aFilial: TStringField;
    q_fobcif12aProcesso: TStringField;
    q_fobcif12aTipo_Declarao: TStringField;
    q_fobcif12aMoeda: TStringField;
    q_fobcif12aDESCRICAO: TStringField;
    q_fobcif12aTaxa_conversao: TFloatField;
    q_fobcif12aFOB: TFloatField;
    q_fobcif12aFOBREAL: TFloatField;
    q_fobcif12aCIF: TFloatField;
    q_fobcif12aCIFREAL: TFloatField;
    q_fobcif12aRegime_Tributacao_II: TStringField;
    q_fobcif12aRegime_Tributacao_IPI: TStringField;
    q_fobcif: TQuery;
    q_fobcifEmpresa: TStringField;
    q_fobcifFilial: TStringField;
    q_fobcifProcesso: TStringField;
    q_fobcifTipo_Declarao: TStringField;
    q_fobcifMoeda: TStringField;
    q_fobcifDESCRICAO: TStringField;
    q_fobcifTaxa_conversao: TFloatField;
    q_fobcifFOB: TFloatField;
    q_fobcifFOBREAL: TFloatField;
    q_fobcifCIF: TFloatField;
    q_fobcifCIFREAL: TFloatField;
    q_up_itens: TQuery;
    t_pro: TTable;
    t_proEmpresa: TStringField;
    t_proFilial: TStringField;
    t_proCodigo: TStringField;
    t_proRazoSocial: TStringField;
    t_proPas: TStringField;
    t_proCGCCPF: TStringField;
    t_proEndereo: TStringField;
    t_proNmero: TStringField;
    t_proComplemento: TStringField;
    t_proBairro: TStringField;
    t_proCidade: TStringField;
    t_proCEP: TStringField;
    t_proUF: TStringField;
    t_proEstado: TStringField;
    t_proInscrioEstadual: TStringField;
    t_proRegistro: TStringField;
    t_aju: TTable;
    t_ajuEmpresa: TStringField;
    t_ajuFilial: TStringField;
    t_ajuCodigo: TStringField;
    t_ajuRazoSocial: TStringField;
    t_ajuPas: TStringField;
    t_ajuCGCCPF: TStringField;
    t_ajuEndereo: TStringField;
    t_ajuNmero: TStringField;
    t_ajuComplemento: TStringField;
    t_ajuBairro: TStringField;
    t_ajuCidade: TStringField;
    t_ajuCEP: TStringField;
    t_ajuUF: TStringField;
    t_ajuEstado: TStringField;
    t_ajuInscrioEstadual: TStringField;
    t_ajuRegistro: TStringField;
    q_acertapagtribTaxa_conversao: TFloatField;
    q_acertapagtribTaxa_conversaoc: TFloatField;
    q_acertafretsegTaxa_conversao: TFloatField;
    q_acertafretsegTaxa_conversaoc: TFloatField;
    q_acertafretsegFaturasMoeda: TStringField;
    q_acertafretsegfreMoeda: TStringField;
    q_acertafretsegTaxa_conversaofre: TFloatField;
    q_acertafretsegTaxa_conversaocfre: TFloatField;
    q_acertafretsegsegMoeda: TStringField;
    q_acertafretsegTaxa_conversaoseg: TFloatField;
    q_acertafretsegTaxa_conversaocseg: TFloatField;
    q_processosqcnpj: TStringField;
    pinf: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    b_processa: TBitBtn;
    b_grava: TBitBtn;
    b_fecha: TBitBtn;
    DBMemo1: TDBMemo;
    dsprocessos: TDataSource;
    binf: TBitBtn;
    q_infocomp1Data_Chegada_URF_Cheg: TDateTimeField;
    q_infocomp3DESCRICAO: TStringField;
    q_infocomp4Descricao: TStringField;
    q_processosTaxa_SISCOMEX: TFloatField;
    q_processosTaxa_SISCOMEXc: TFloatField;
    q_processosqfilial: TStringField;
    q_infocomp1Codigo_Presenca_Carga: TStringField;
    q_infocomp7: TQuery;
    q_infocomp7Processo: TStringField;
    q_infocomp7qdaicao: TFloatField;
    q_infocomp7Adicao: TStringField;
    q_infocomp7Regime_Tributacao_II: TStringField;
    q_infocomp7Fundamento_Legal_II: TStringField;
    q_infocomp7QFUN: TStringField;
    q_infocomp7Motivo_Adm_Temp: TStringField;
    q_infocomp7QMOT: TStringField;
    q_infocomp7Numero_Ato_Legal_II: TStringField;
    q_infocomp7Tipo_Ato_ii: TStringField;
    q_infocomp7Ano_Ato_Legal_ii: TStringField;
    q_infocomp7obs_alii: TStringField;
    q_infocomp7Percentual_Reducao_II: TFloatField;
    q_infocomp7Ato_Concessorio: TStringField;
    q_infocomp7QATO: TStringField;
    q_infocomp7Vigencia_inicial: TDateTimeField;
    q_infocomp7Vigencia_final: TDateTimeField;
    q_infocomp7Regime_Tributacao_IPI: TStringField;
    q_infocomp7Numero_Ato_Legal_IPI: TStringField;
    q_infocomp7Percentual_Reduca_IPI: TFloatField;
    q_infocomp7Tipo_Ato_ipi: TStringField;
    q_infocomp7Ano_Ato_Legal_ipi: TStringField;
    q_infocomp7obs_alipi: TStringField;
    B_DSI: TBitBtn;
    T_DSI_DG: TTable;
    T_DSI_DGCD_DSI_MICRO: TStringField;
    T_DSI_DGDT_CRIACAO: TDateTimeField;
    T_DSI_DGCD_ORIGEM_DSI: TSmallintField;
    T_DSI_DGNR_DECL_IMP_PROT: TStringField;
    T_DSI_DGCD_MOTIVO_TRANS: TSmallintField;
    T_DSI_DGDT_TRANSMISSAO: TDateTimeField;
    T_DSI_DGNR_DECL_SIMPL_IMP: TStringField;
    T_DSI_DGDT_REGISTRO_DSI: TDateTimeField;
    T_DSI_DGHO_REGISTRO_DSI: TDateTimeField;
    T_DSI_DGNR_SEQ_RETIFICACAO: TSmallintField;
    T_DSI_DGDT_SEQ_RETIFICACAO: TDateTimeField;
    T_DSI_DGHO_SEQ_RETIFICACAO: TDateTimeField;
    T_DSI_DGIN_BLOQUEIO_RETIF: TBooleanField;
    T_DSI_DGCD_TIPO_NATUREZA: TSmallintField;
    T_DSI_DGQT_ADICAO_DSI: TSmallintField;
    T_DSI_DGCD_TIPO_IMPORTADOR: TStringField;
    T_DSI_DGNR_IMPORTADOR: TStringField;
    T_DSI_DGNM_IMPORTADOR: TStringField;
    T_DSI_DGNR_TEL_IMPORTADOR: TStringField;
    T_DSI_DGED_LOGR_IMPORTADOR: TStringField;
    T_DSI_DGED_NR_IMPORTADOR: TStringField;
    T_DSI_DGED_COMPL_IMPO: TStringField;
    T_DSI_DGED_BA_IMPORTADOR: TStringField;
    T_DSI_DGED_MUN_IMPORTADOR: TStringField;
    T_DSI_DGED_UF_IMPORTADOR: TStringField;
    T_DSI_DGED_CEP_IMPORTADOR: TStringField;
    T_DSI_DGCD_PAIS_IMPORTADOR: TStringField;
    T_DSI_DGIN_REPR_LEGAL: TBooleanField;
    T_DSI_DGNR_REPR_LEGAL: TStringField;
    T_DSI_DGNR_CPF_USUARIO: TStringField;
    T_DSI_DGCD_URF_DESPACHO: TStringField;
    T_DSI_DGCD_PAIS_PROC_CARGA: TStringField;
    T_DSI_DGCD_VIA_TRANSP_CARGA: TStringField;
    T_DSI_DGNR_TERMO_ENTRADA: TStringField;
    T_DSI_DGCD_TIPO_DCTO_CARGA: TStringField;
    T_DSI_DGNR_DCTO_CARGA_HOUSE: TStringField;
    T_DSI_DGNR_DCTO_CARGA_MAST: TStringField;
    T_DSI_DGNR_IDENT_CARGA: TStringField;
    T_DSI_DGDT_EMBARQUE: TDateTimeField;
    T_DSI_DGDT_EMISSAO_CONHEC: TDateTimeField;
    T_DSI_DGPB_CARGA: TFloatField;
    T_DSI_DGPL_CARGA: TFloatField;
    T_DSI_DGCD_RECINTO_ALFAND: TStringField;
    T_DSI_DGCD_SETOR_ARMAZENAM: TStringField;
    T_DSI_DGCD_MOEDA_FRETE: TStringField;
    T_DSI_DGVL_TOT_FRETE_MNEG: TFloatField;
    T_DSI_DGVL_TOTAL_FRETE_MN: TFloatField;
    T_DSI_DGCD_MOEDA_SEGURO: TStringField;
    T_DSI_DGVL_TOT_SEGURO_MNEG: TFloatField;
    T_DSI_DGVL_TOTAL_SEG_MN: TFloatField;
    T_DSI_DGVL_TOTAL_SEG_DOLAR: TFloatField;
    T_DSI_DGVL_TOTAL_MLE_MN: TFloatField;
    T_DSI_DGVL_TOTAL_MLE_DOLAR: TFloatField;
    T_DSI_DGVL_TOTAL_MLD_MN: TFloatField;
    T_DSI_DGDT_DSE_MANUAL: TDateTimeField;
    T_DSI_DGCD_UL_DSE_MANUAL: TStringField;
    T_DSI_DGNR_DSE: TStringField;
    T_DSI_DGNR_DDE: TStringField;
    T_DSI_DGNR_PROCESSO_EXPO: TStringField;
    T_DSI_DGVL_TOTAL_II_CALC: TFloatField;
    T_DSI_DGVL_TOTAL_IPI_CALC: TFloatField;
    T_DSI_DGVL_TOTAL_II_A_REC: TFloatField;
    T_DSI_DGVL_TOTAL_IPI_A_REC: TFloatField;
    T_DSI_DGVL_TOT_TRIB_A_REC: TFloatField;
    T_DSI_DGCD_TIPO_PGTO_TRIB: TSmallintField;
    T_DSI_DGNR_CONTA_PGTO_TRIB: TStringField;
    T_DSI_DGIN_SERVIDOR_UL: TBooleanField;
    T_DSI_DGTX_INFO_COMPL: TMemoField;
    T_DSI_BENS: TTable;
    T_DSI_TRIB: TTable;
    T_DSI_VOLUMES: TTable;
    T_DSI_BENSCD_DSI_MICRO: TStringField;
    T_DSI_BENSNR_BEM: TSmallintField;
    T_DSI_BENSNR_OPER_TRAT_PREV: TStringField;
    T_DSI_BENSCD_REGIME_TRIBUTAR: TStringField;
    T_DSI_BENSCD_FUND_LEG_REGIME: TStringField;
    T_DSI_BENSCD_MOTIVO_FUND_LEG: TStringField;
    T_DSI_BENSIN_CLASSIFICACAO: TSmallintField;
    T_DSI_BENSCD_MERCADORIA: TStringField;
    T_DSI_BENSCD_DESTAQUE_NCM: TStringField;
    T_DSI_BENSNM_DESCRICAO_MERC: TStringField;
    T_DSI_BENSCD_PAIS_ORIG_MERC: TStringField;
    T_DSI_BENSIN_MERCOSUL: TBooleanField;
    T_DSI_BENSIN_MATERIAL_USADO: TBooleanField;
    T_DSI_BENSNM_UN_MEDID_ESTAT: TStringField;
    T_DSI_BENSQT_UN_ESTATISTICA: TFloatField;
    T_DSI_BENSNM_UN_MEDID_COMERC: TStringField;
    T_DSI_BENSQT_MERC_UN_COMERC: TFloatField;
    T_DSI_BENSPB_BEM: TFloatField;
    T_DSI_BENSPL_BEM: TFloatField;
    T_DSI_BENSVL_UNID_LOC_EMB: TFloatField;
    T_DSI_BENSVL_MERC_LOC_EMB: TFloatField;
    T_DSI_BENSCD_MOEDA_NEGOCIADA: TStringField;
    T_DSI_BENSVL_ADUANEIRO: TFloatField;
    T_DSI_BENSVL_FRETE_MERC_MNEG: TFloatField;
    T_DSI_BENSCD_MD_FRETE_MERC: TStringField;
    T_DSI_BENSVL_FRETE_MERC_MN: TFloatField;
    T_DSI_BENSVL_SEG_MERC_DOLAR: TFloatField;
    T_DSI_BENSVL_SEG_MERC_MN: TFloatField;
    T_DSI_BENSVL_MERC_EMB_DOLAR: TFloatField;
    T_DSI_BENSVL_MERC_EMB_MN: TFloatField;
    T_DSI_BENSTX_DESC_DET_MERC: TMemoField;
    T_DSI_TRIBCD_DSI_MICRO: TStringField;
    T_DSI_TRIBNR_BEM: TSmallintField;
    T_DSI_TRIBPC_ALIQ_NORM_ADVAL_II: TFloatField;
    T_DSI_TRIBVL_IMPOSTO_DEVIDO_II: TFloatField;
    T_DSI_TRIBVL_IPT_A_RECOLHER_II: TFloatField;
    T_DSI_TRIBVL_BASE_CALC_ADVAL_II: TFloatField;
    T_DSI_TRIBPC_ALIQ_NORM_ADVAL_IPI: TFloatField;
    T_DSI_TRIBVL_IMPOSTO_DEVIDO_IPI: TFloatField;
    T_DSI_TRIBVL_IPT_A_RECOLHER_IPI: TFloatField;
    T_DSI_TRIBVL_BASE_CALC_ADVAL_IPI: TFloatField;
    T_DSI_VOLUMESCD_DSI_MICRO: TStringField;
    T_DSI_VOLUMESNR_SEQUENCIAL: TSmallintField;
    T_DSI_VOLUMESCD_TIPO_EMBALAGEM: TStringField;
    T_DSI_VOLUMESQT_VOLUME_CARGA: TIntegerField;
    q_bens: TQuery;
    q_bensEmpresa: TStringField;
    q_bensFilial: TStringField;
    q_bensProcesso: TStringField;
    q_bensfatura: TStringField;
    q_bensqpag: TFloatField;
    q_bensqseq: TFloatField;
    q_bensRegime_Tributacao_II: TStringField;
    q_bensFundamento_Legal_II: TStringField;
    q_bensMotivo_Adm_Temp: TStringField;
    q_bensNCM: TStringField;
    q_bensDestaque_NCM: TStringField;
    q_bensdescr_ncm: TStringField;
    q_bensPas: TStringField;
    q_bensIN_MATERIAL_USADO: TBooleanField;
    q_bensIN_BEM_ENCOMENDA: TBooleanField;
    q_bensUnidade_Medida_Estat: TStringField;
    q_bensdescr_ume: TStringField;
    q_bensUnidade: TStringField;
    q_bensdescr_um: TStringField;
    q_bensQuantidade: TFloatField;
    q_bensPeso_Unitario_Acertado: TFloatField;
    q_bensPeso_Total_Acertado: TFloatField;
    q_bensValorUnitrio: TFloatField;
    q_bensValorTotal: TFloatField;
    q_bensMoeda: TStringField;
    q_bensValor_Aduaneiro: TFloatField;
    q_bensValor_mercadoria: TFloatField;
    q_bensRateio_Frete_prepaid: TFloatField;
    q_bensRateio_Frete_collect: TFloatField;
    q_bensRateio_Frete_ternac: TFloatField;
    q_bensRateio_Seguro: TFloatField;
    q_bensDescricao_Produto: TStringField;
    q_bensProduto: TStringField;
    q_bensCertificado_Origem: TStringField;
    q_bensReferencia: TStringField;
    q_bensReferencia_projeto: TStringField;
    q_bensPO: TStringField;
    q_bensSeqpo: TStringField;
    q_bensPagina: TStringField;
    q_bensAliq_NCM_II: TFloatField;
    q_bensBase_Calc_II: TFloatField;
    q_bensValor_II_Devido: TFloatField;
    q_bensValor_II_a_recolher: TFloatField;
    q_bensAliq_NCM_IPI: TFloatField;
    q_bensBase_Calc_IPI: TFloatField;
    q_bensValor_IPI_Devido: TFloatField;
    q_bensValor_IPI_a_recolher: TFloatField;
    q_detalheNumero_Serie: TStringField;
    q_bensNumero_serie: TStringField;
    q_infocomp3CoberturaCambial: TStringField;
    q_infocomp3desc_motscamb: TStringField;
    q_excpiscofins: TQuery;
    b_calpiscofins: TBitBtn;
    q_incpiscofins: TQuery;
    t_propis: TTable;
    ds_propis: TDataSource;
    t_propisEmpresa: TStringField;
    t_propisFilial: TStringField;
    t_propisProcesso: TStringField;
    t_propisAdicao: TStringField;
    t_propisNCM: TStringField;
    t_propisVA: TFloatField;
    t_propisOT: TFloatField;
    t_propisDA: TFloatField;
    t_propisAliq_NCM_II: TFloatField;
    t_propisAliq_NCM_IPI: TFloatField;
    t_propisAliq_PIS_PASEP: TFloatField;
    t_propisAliq_COFINS: TFloatField;
    t_propisAliq_ICMS: TFloatField;
    t_propisAliq_ICMS_EXTRA: TFloatField;
    t_propisBASEC_PISCOFINS: TFloatField;
    t_propisBASEC_ICMS: TFloatField;
    t_propisVALOR_II: TFloatField;
    t_propisVALOR_IPI: TFloatField;
    t_propisVALOR_ICMS: TFloatField;
    t_propisVALOR_ICMS_EXTRA: TFloatField;
    t_propisVALOR_PIS_PASEP: TFloatField;
    t_propisVALOR_COFINS: TFloatField;
    p_piscofins: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    b_propis: TBitBtn;
    BitBtn3: TBitBtn;
    b_recalc: TBitBtn;
    dbg_piscofins: TDBGrid;
    Q_adicoesNR_DECL_IMP_MICRO: TStringField;
    Q_adicoesAdicao: TStringField;
    Q_adicoesURF_chegada: TStringField;
    Q_adicoesVia: TStringField;
    Q_adicoesMultimodal: TBooleanField;
    Q_adicoesRazoSocial: TStringField;
    Q_adicoesEndereo: TStringField;
    Q_adicoesNmero: TStringField;
    Q_adicoesComplemento: TStringField;
    Q_adicoesCidade: TStringField;
    Q_adicoesEstado: TStringField;
    Q_adicoesPas: TStringField;
    Q_adicoesNCM: TStringField;
    Q_adicoesPais_Procedencia: TStringField;
    Q_adicoesFABNOME: TStringField;
    Q_adicoesFABEND: TStringField;
    Q_adicoesFABNUM: TStringField;
    Q_adicoesFABCOMP: TStringField;
    Q_adicoesFABCID: TStringField;
    Q_adicoesFABEST: TStringField;
    Q_adicoesFABPAI: TStringField;
    Q_adicoesNBM: TStringField;
    Q_adicoesNALADI: TStringField;
    Q_adicoesPeso_Total_Acertado: TFloatField;
    Q_adicoesSomaDeQuantidade: TFloatField;
    Q_adicoesFrete: TFloatField;
    Q_adicoesSeguro: TFloatField;
    Q_adicoesvinculacao: TStringField;
    Q_adicoesCD_APLICACAO_MERC: TStringField;
    Q_adicoesmoeda: TStringField;
    Q_adicoesincoterm: TStringField;
    Q_adicoesCondio: TStringField;
    Q_adicoesValor_aduaneiro: TFloatField;
    Q_adicoesCD_METOD_VALORACAO: TStringField;
    Q_adicoesCD_TIPO_ACORDO_TAR: TStringField;
    Q_adicoesACORDO_ALADI: TStringField;
    Q_adicoesRegime_Tributacao_II: TStringField;
    Q_adicoesFundamento_Legal_II: TStringField;
    Q_adicoesMotivo_Adm_Temp: TStringField;
    Q_adicoesNumero_Ato_Legal_II: TStringField;
    Q_adicoesPercentual_Reducao_II: TFloatField;
    Q_adicoesCoberturaCambial: TStringField;
    Q_adicoesModalidadedePagamento: TStringField;
    Q_adicoesInstituicaoFinanciadora: TStringField;
    Q_adicoesMotivoSemCobertura: TStringField;
    Q_adicoesNumerodeparcelas: TStringField;
    Q_adicoesPeriodicidade: TStringField;
    Q_adicoesPrimeiroDeValordasParcelas: TFloatField;
    Q_adicoesIndicadorPeriodicidade: TStringField;
    Q_adicoesTaxadeJuros: TSmallintField;
    Q_adicoesROFBACEN: TStringField;
    Q_adicoesPercentualROF: TFloatField;
    Q_adicoesCodigoTaxadeJuros: TStringField;
    Q_adicoesIN_BEM_ENCOMENDA: TBooleanField;
    Q_adicoesIN_MATERIAL_USADO: TBooleanField;
    Q_adicoesVMLE: TFloatField;
    Q_adicoesBase_Calc_ii: TFloatField;
    Q_adicoesALIQUOTA_ALADI: TFloatField;
    Q_adicoesRegime_Tributacao_IPI: TStringField;
    Q_adicoesNumero_Ato_Legal_IPI: TStringField;
    Q_adicoesPercentual_Reduca_IPI: TFloatField;
    Q_adicoesValorTaxadeJuros: TFloatField;
    Q_adicoesUnidade_Medida_Estat: TStringField;
    Q_adicoesMoeda_Frete: TStringField;
    Q_adicoesMoeda_Seguro: TStringField;
    q_infocomp1Via: TStringField;
    q_isen_sus: TQuery;
    q_isen_susEmpresa: TStringField;
    q_isen_susFilial: TStringField;
    q_isen_susProcesso: TStringField;
    q_isen_susRegime_Tributacao_II: TStringField;
    q_isen_susFundamento_Legal_II: TStringField;
    q_isen_susAdicao: TStringField;
    q_processosImportador: TStringField;
    q_processosURF_chegada: TStringField;
    q_processosData_Chegada_URF_Cheg: TDateTimeField;
    q_processosDT_DESEMBARACO: TDateTimeField;
    q_processosURF_Despacho: TStringField;
    t_propisPrazo_permanencia: TIntegerField;
    t_ncm_vutil: TTable;
    t_ncm_vutilncm: TStringField;
    t_ncm_vutilvida_util: TStringField;
    t_propisVA_proporcional: TFloatField;
    t_propisAliq_NCM_II_proporcional: TFloatField;
    t_propisAliq_NCM_IPI_proporcional: TFloatField;
    q_piscofinstrib: TQuery;
    q_piscofinstribProcesso: TStringField;
    q_piscofinstribAdicao: TStringField;
    q_piscofinstribRegime_Tributacao_II: TStringField;
    q_piscofinstribRegime_Tributacao_IPI: TStringField;
    q_piscofinstribDESCRICAO: TStringField;
    tbproregimp: TTable;
    tbproregimpEmpresa: TStringField;
    tbproregimpFilial: TStringField;
    tbproregimpProcesso: TStringField;
    tbproregimpBanco: TStringField;
    tbproregimpAgencia: TStringField;
    tbproregimpConta_Corrente: TStringField;
    tbproregimpII: TFloatField;
    tbproregimpIPI: TFloatField;
    tbproregimpTaxa_SISCOMEX: TFloatField;
    tbproregimpBancoc: TStringField;
    tbproregimpAgenciac: TStringField;
    tbproregimpConta_Correntec: TStringField;
    tbproregimpIIc: TFloatField;
    tbproregimpIPIc: TFloatField;
    tbproregimpTaxa_SISCOMEXc: TFloatField;
    t_ajuexibe_complementares: TBooleanField;
    t_proTelefone: TStringField;
    t_proexibe_complementares: TBooleanField;
    t_propisFOB: TFloatField;
    q_gravaFOB: TQuery;
    q_gravaFOBProcesso: TStringField;
    q_gravaFOBAdicao: TStringField;
    q_gravaFOBFOB: TFloatField;
    q_gravaFOBFOBnovo: TFloatField;
    q_processosFechado: TBooleanField;
    q_processosATIVO: TBooleanField;
    re: TRichEdit;
    q_infocomp7ACORDO_ALADI: TStringField;
    q_infocomp7Numero_Ato_Legal_ALADI: TStringField;
    T_aladi: TTable;
    T_aladiCodigo: TStringField;
    T_aladiDescricao: TStringField;
    T_atos: TTable;
    T_atosEmpresa: TStringField;
    T_atosFilial: TStringField;
    T_atosTipo_Ato: TStringField;
    T_atosNumero: TStringField;
    T_atosEX: TStringField;
    T_atosTipo_Ato_Legal: TStringField;
    T_atosOrgao_Emissor: TStringField;
    T_atosAno_Ato_Legal: TStringField;
    t_tpato: TTable;
    t_tpatoCodigo: TStringField;
    t_tpatoDescricao: TStringField;
    T_adicoesVL_ALIQ_ICMS: TFloatField;
    T_adicoesIN_REDUC_BASE_CALC: TBooleanField;
    T_adicoesCD_FUND_LEG_REDUC: TStringField;
    T_adicoesCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    T_adicoesCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    Q_adicoesCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    Q_adicoesCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    q_infocomp3ValorTotal: TFloatField;
    q_infocomp3DtEmissao: TDateTimeField;
    Q_tributosCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    Q_tributosPC_ALIQ_REDUZIDA_PIS: TFloatField;
    Q_tributosPC_ALIQ_REDUZIDA_COFINS: TFloatField;
    Q_infocomp2Lacre: TStringField;
    P_OT: TPanel;
    E_OT: TEdit;
    Panel3: TPanel;
    btn_ot: TBitBtn;
    btn_fechaot: TBitBtn;
    Q_acresdeduCD_MET_ACRES_VALOR: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_adicoesAfterScroll(DataSet: TDataSet);
    procedure rateio2(Sender: TObject);
    procedure taxaconvn(Sender: TObject);
    procedure atualizadi(Sender: TObject);
    procedure b_atualizasiscomexClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b_fechaClick(Sender: TObject);
    procedure pinfExit(Sender: TObject);
    procedure binfClick(Sender: TObject);
    procedure b_gravaClick(Sender: TObject);
    procedure b_processaClick(Sender: TObject);
    procedure B_DSIClick(Sender: TObject);
    procedure b_calpiscofinsClick(Sender: TObject);
    procedure p_piscofinsExit(Sender: TObject);
    procedure b_propisClick(Sender: TObject);
    procedure b_recalcClick(Sender: TObject);
    procedure t_propisAfterPost(DataSet: TDataSet);
    procedure btn_fechaotClick(Sender: TObject);
    procedure btn_otClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  F_prodidsi: TF_prodidsi;
  v_analise:boolean;
  qii: real;
  q_taxa:string;
  q_tributa, alterou_PROPIS, processa_piscofins:boolean;

implementation

uses U_MSCOMEX, Alerta;

{$R *.DFM}

procedure taxaconv(var tempresa:TStringField; tfilial:TStringField; tprocesso:string; tmoeda:TStringField; ttaxa:string);
var qtaxadolar:string;
begin

try

f_prodidsi.t_processos.findkey([v_empresa,v_filial,tprocesso]);
if f_prodidsi.t_processosNR_DECLARACAO_IMP.asstring ='' then begin
   if tmoeda.asstring<>'' then begin
      if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then begin
         if f_prodidsi.t_taxaconvtaxa_conversao.asfloat <> strtofloat(ttaxa) then begin
            f_prodidsi.t_taxaconv.edit;
            f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(ttaxa);
            f_prodidsi.t_taxaconv.post;
         end;
      end
      else begin
           f_prodidsi.t_taxaconv.append;
           f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
           f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
           f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
           f_prodidsi.t_taxaconvmoeda.asstring         := tmoeda.asstring;
           f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(ttaxa);
           f_prodidsi.t_taxaconv.post;
     end;
  end;

  {sempre grava o dolar para todos os processos}
  if ((tmoeda.asstring<>'220') and (tmoeda.asstring<>'')) then begin

     f_prodidsi.t_cambio.first;
     f_prodidsi.t_cambio.findkey(['220']);
     qtaxadolar := f_prodidsi.t_cambiotaxa_conversao.asstring;

    if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,'220']) then begin
       if f_prodidsi.t_taxaconvtaxa_conversao.asfloat <> strtofloat(qtaxadolar) then begin
          f_prodidsi.t_taxaconv.edit;
          f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(qtaxadolar);
          f_prodidsi.t_taxaconv.post;
       end;
    end
    else begin
         f_prodidsi.t_taxaconv.append;
         f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
         f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
         f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
         f_prodidsi.t_taxaconvmoeda.asstring         := '220';
         f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(qtaxadolar);
         f_prodidsi.t_taxaconv.post;
   end;

end;

end;

{ver taxa conversao di de consumo}
if f_prodidsi.t_processosNR_DECLARACAO_IMPC.asstring ='' then begin
   if tmoeda.asstring<>'' then begin
      {MessageDlg('Empresa: '+v_empresa+' Filial: '+v_filial+' Processo: '+tprocesso+' Moeda: '+tmoeda.asstring, mtInformation,[mbOk], 0);}
      if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then begin
         if f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat <> strtofloat(ttaxa) then begin
            f_prodidsi.t_taxaconv.edit;
            f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(ttaxa);
            f_prodidsi.t_taxaconv.post;
         end;
      end
      else begin
           f_prodidsi.t_taxaconv.append;
           f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
           f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
           f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
           f_prodidsi.t_taxaconvmoeda.asstring         := tmoeda.asstring;
           f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(ttaxa);
           f_prodidsi.t_taxaconv.post;
     end;
  end;

  {sempre grava o dolar para todos os processos}
  if ((tmoeda.asstring<>'220') and (tmoeda.asstring<>'')) then begin

     f_prodidsi.t_cambio.first;
     f_prodidsi.t_cambio.findkey(['220']);
     qtaxadolar := f_prodidsi.t_cambiotaxa_conversao.asstring;

    {MessageDlg('Empresa: '+v_empresa+' Filial: '+v_filial+' Processo: '+tprocesso+' Moeda: '+tmoeda.asstring, mtInformation,[mbOk], 0);}
    if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,'220']) then begin
       if f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat <> strtofloat(qtaxadolar) then begin
          f_prodidsi.t_taxaconv.edit;
          f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(qtaxadolar);
          f_prodidsi.t_taxaconv.post;
       end;
    end
    else begin
         f_prodidsi.t_taxaconv.append;
         f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
         f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
         f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
         f_prodidsi.t_taxaconvmoeda.asstring         := '220';
         f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(qtaxadolar);
         f_prodidsi.t_taxaconv.post;
   end;

end;

end;

except
   On E:Exception do begin
      showmessage(v_usuario + ' ocorreu um erro na atualização da taxa de conversão! Atualize Novamente.');
      end;
   end;

end;


procedure TF_prodidsi.FormActivate(Sender: TObject);
begin
f_prodidsi.left := 0;
f_prodidsi.top  := 0;

end;

procedure TF_prodidsi.ME_nossarefChange(Sender: TObject);
var cnpj: String;
begin
if length(me_nossaref.text)= 8 then begin
   if q_processos.Locate('Processo',me_nossaref.text,[loCaseInsensitive]) then begin

      {gera totalizacao das adicoes}
      q_adicoes.Close;
      q_adicoes.Params[0].AsString := q_processosempresa.asstring;
      q_adicoes.Params[1].AsString := q_processosfilial.asstring;
      q_adicoes.Params[2].AsString := me_nossaref.text;
      q_adicoes.open;

      b_atualizasiscomex.enabled := false;
      b_dsi.enabled := false;
      binf.enabled := false;
      if (not q_adicoes.Eof) then begin
         p_processo2.visible := true;
         b_atualizasiscomex.enabled := true;
         b_atualizasiscomexa.enabled := true;
         b_dsi.enabled := true;
         binf.enabled := true;

      end
      else begin
           MessageDlg('Não foi possível gerar DI! Verifique as Informações.', mtInformation,[mbOk], 0);
           p_processo2.visible := false;
      end;

      t_processos.open;
      t_processos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);

      t_propis.close;

      t_propis.Filter := 'processo = '+chr(39)+me_nossaref.text+chr(39);
      t_propis.open;
      t_ncm.open;

      q_piscofinstrib.close;
      q_piscofinstrib.Params[0].asstring := me_nossaref.text;
      q_piscofinstrib.open;

      alterou_PROPIS := false;
      processa_piscofins := false;

      ////////////////////////////
      ///alterei em 27/07/2005 - mm - chupisco!!!
        v_AlteraPRO := True;
        If (not q_processosAtivo.asboolean) then begin
           If (not v_Edita_cliente_inativo)  then begin
              Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
              v_AlteraPRO := False;
           end;
        end;
        If (q_processosFechado.asboolean) then begin
           If (not v_Edita_Processo_Fechado)  then begin
                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                v_AlteraPRO := False;
           end
           else v_AlteraPRO := True;
        end;

        //mm 24/07/2006 - usuariosclientes
        if f_mscomex.q_usucli.recordcount>0 then begin
           if f_mscomex.q_usucli.locate('Importador',q_Processosimportador.asstring,[]) then begin
              v_autorizadocli := true;
           end
           else begin
              v_autorizadocli := false;
           end;
        end
        else begin
              v_autorizadocli := true;
        end;
        If v_autorizadocli Then Begin

           F_MSCOMEX.atualizacpastas(ME_nossaref.text);
           cnpj := q_processosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           l_cliente.Caption := q_ProcessosCliente.AsString+' - CNPJ: '+cnpj;
           p_processo2.Visible := True;

        End
        Else Begin
           l_cliente.Caption := '';
           p_processo2.Visible := false;
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
end;

procedure TF_prodidsi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_prodidsi := nil;
f_mscomex.DIDSI1.enabled := true;
end;

procedure TF_prodidsi.Q_adicoesAfterScroll(DataSet: TDataSet);
begin
{gera os detalhes por adicao}
q_detalhe_adicao.Close;
q_detalhe_adicao.Params[0].AsString := q_Processosempresa.asstring;
q_detalhe_adicao.Params[1].AsString := q_processosfilial.asstring;
q_detalhe_adicao.Params[2].AsString := me_nossaref.text;
q_detalhe_adicao.Params[3].AsString := q_adicoesadicao.asstring;
q_detalhe_adicao.open;

end;

procedure TF_prodidsi.b_atualizasiscomexClick(Sender: TObject);

var v_pesol:string;
    v_quant:string;
    v_num_seq:integer;
    v_qadicao:string;
    v_seq_pag:integer;
    v_qsequencial:integer;
    v_valor:string;
    v_proces:integer;
    i:integer;
    q_valacrededu:real;
    v_menor:integer;
    q_descricao:string;
    achou:boolean;
    apri:integer;
    v_pesob:string;
    v_moedaigual:boolean;
    v_moeda:string;
    v_totfat:real;
    v_totfatm:real;
    perc_pb:real;
    v_pb:real;
    va,a,b,ii,ipi:real;
    verprodutos,tem2dis:boolean;
    qii,qipi,qtx,qiic,qipic,qtxc:real;


///    v_reg:integer;
///    v_regp:integer;
///    v_tempo: ttime;
///    v_tempomsg:string;


begin

    qii   := 0;
    qipi  := 0;
    qtx   := 0;
    qiic  := 0;
    qipic := 0;
    qtxc  := 0;

if not assigned (f_alerta) then Application.CreateForm(TF_alerta, F_alerta);
f_alerta.showmodal;
if t_processosTX_INFO_COMPL.asstring='' then b_processaclick(f_prodidsi)
else begin
   if MessageDlg('Atualiza Informações Complementares? (clique em não para manter as informações complementares digitadas)', mtConfirmation,[mbYes, mbNo], 0) = mrYes then b_processaclick(f_prodidsi);
end;

verprodutos := true;
if MessageDlg(v_usuario+', ATENÇÃO!!! Atualiza descrição da mercadoria conforme a FATURA?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then verprodutos := false;

if t_processos.state = dsInactive then t_processos.open;
if t_faturas.state = dsInactive then t_faturas.open;
if t_transpprocesso.state = dsInactive then t_transpprocesso.open;
if t_transportadores.state = dsInactive then t_transportadores.open;
if t_produtos.state = dsInactive then t_produtos.open;
if t_itensfaturas.state = dsInactive then t_itensfaturas.open;
if t_tributositem.state = dsInactive then t_tributositem.open;
if t_taxaconv.state = dsInactive then t_taxaconv.open;
if t_acrescimos.state = dsInactive then t_acrescimos.open;
if t_importadores.state = dsInactive then t_importadores.open;
if t_numerador.state = dsInactive then t_numerador.open;
if T_ncm_vutil.state = dsInactive then T_ncm_vutil.open;
if T_ncm.state = dsInactive then T_ncm.open;

if tbProregimp.state = dsInactive then tbProregimp.Open;

if t_unidades.state = dsInactive then t_unidades.open;

v_analise := true;
{if MessageDlg('Atualiza DI - SISCOMEX para Registro?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then v_analise := false;}
if sender = b_atualizasiscomex then begin
   {MessageDlg('Atualização SISCOMEX para Registro!', mtInformation,[mbOk], 0);}
   v_analise := false;
end;

if T_produtos.state = dsInactive then T_produtos.open;

{atualiza capa da di}
atualizadi(f_prodidsi);

tem2dis := false;
t_di.close;
t_di.open;
t_adicoes.close;
t_adicoes.open;

q_adicoes.Close;
q_adicoes.Params[0].AsString := q_processosempresa.asstring;
q_adicoes.Params[1].AsString := q_processosfilial.asstring;
q_adicoes.Params[2].AsString := me_nossaref.text;
q_adicoes.open;

if t_processosnumero_rcr.asstring <>'' then begin
   t_procdi.close;
   t_procdi.open;
   {if MessageDlg('Achou RCR!! '+t_processosnumero_rcr.asstring , mtConfirmation,[mbYes, mbNo], 0) = mrYes then v_analise := false;}
   if t_procdi.findkey([t_processosNR_DECL_IMP_MICRO.asstring,0]) then begin
      t_procdi.delete;
   end;
   while t_procdi.state = dsinsert do begin
   end;
   t_procdi.append;
   t_procdiNR_DECL_IMP_MICRO.asstring := t_processosNR_DECL_IMP_MICRO.asstring;
   t_procdiNR_SEQ_PROCESSO.AsInteger  := 0;
   t_procdiCD_TIPO_PROCESSO.asstring  :='1';
   t_procdiNR_PROCESSO_INSTR.asstring := '';
   for i := 1 to length(trim(t_processosnumero_rcr.asstring)) do begin
      if ((copy(t_processosnumero_rcr.asstring,i,1) <> '.') and
          (copy(t_processosnumero_rcr.asstring,i,1) <> '/') and
          (copy(t_processosnumero_rcr.asstring,i,1) <> '-')) then begin
          t_procdiNR_PROCESSO_INSTR.asstring :=  t_procdiNR_PROCESSO_INSTR.asstring +copy(t_processosnumero_rcr.asstring,i,1);
      end;
   end;
   t_procdi.post;
   t_procdi.close;
end;

q_adicoes.first;
if t_adicoes.findkey([Q_adicoesNR_DECL_IMP_MICRO.asstring]) then begin
    while (not t_adicoes.eof) and (t_adicoesNR_DECL_IMP_MICRO.asstring =Q_adicoesNR_DECL_IMP_MICRO.asstring ) do begin
          t_adicoes.delete;
    end;
end;


v_qadicao := '';
while not q_adicoes.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Adições',q_adicoes.recordcount,false);
      while t_adicoes.state = dsinsert do begin
      end;
      if (v_qadicao <> Q_adicoesAdicao.asstring) then begin
         v_qadicao := Q_adicoesAdicao.asstring;
         t_adicoes.append;
         T_adicoesNR_DECL_IMP_MICRO.asstring      :=    Q_adicoesNR_DECL_IMP_MICRO.asstring;
         T_adicoesNR_OP_IMP_MICRO.asstring        :=    Q_adicoesAdicao.asstring;
         {T_adicoesCD_URF_ENTR_MERC.asstring       :=    Q_adicoesURF_chegada.asstring;}
         {T_adicoesCD_VIA_TRANSPORTE.asstring      :=    Q_adicoesVia.asstring;}
         {T_adicoesIN_MULTIMODAL.asboolean         :=    Q_adicoesMultimodal.asboolean;}
         if Q_adicoesRazoSocial.asstring<>''  then T_adicoesNM_FORN_ESTR.asstring           :=    Q_adicoesRazoSocial.asstring
         else begin
              logusu('M','AVISO - Razão Social do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', Razão Social do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesEndereo.asstring<>''     then T_adicoesED_LOGR_FORN_ESTR.asstring      :=    Q_adicoesEndereo.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazoSocial.asstring+' - Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazoSocial.asstring+' - O Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesNmero.asstring<>''       then T_adicoesED_NR_FORN_ESTR.asstring        :=    Q_adicoesNmero.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazoSocial.asstring+' - O número do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazoSocial.asstring+' - O número do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesComplemento.asstring<>'' then T_adicoesED_COMPL_FORN_ESTR.asstring     :=    Q_adicoesComplemento.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazoSocial.asstring+' - O complemento do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazoSocial.asstring+' - O complemento do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesCidade.asstring<>''      then T_adicoesED_CIDAD_FORN_ESTR.asstring     :=    Q_adicoesCidade.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazoSocial.asstring+' - A cidade do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazoSocial.asstring+' - A cidade do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesEstado.asstring<>''      then T_adicoesED_ESTAD_FORN_ESTR.asstring     :=    Q_adicoesEstado.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazoSocial.asstring+' - O estado do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazoSocial.asstring+' - O estado do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;

         if Q_adicoesPas.asstring<>''         then T_adicoesCD_PAIS_AQUIS_MERC.asstring     :=    Q_adicoesPas.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazoSocial.asstring+' - O País do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazoSocial.asstring+' - O País do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;

         T_adicoesCD_MERCADORIA_NCM.asstring      :=    Q_adicoesNCM.asstring;
         {T_adicoesCD_PAIS_PROC_MERC.asstring      :=    Q_adicoesPais_Procedencia.asstring;}

         {verifica exportador = fabricante}
         if (Q_adicoesRazoSocial.asstring = Q_adicoesFABNOME.asstring) then begin
            T_adicoesCD_AUSENCIA_FABRIC.asstring     := '1';
            {T_adicoesNM_FABRICANTE_MERC.asstring     := ' ';
            T_adicoesED_LOGR_FABRIC.asstring         := ' ';
            T_adicoesED_NR_FABRIC.asstring           := ' ';
            T_adicoesED_COMPL_FABRIC.asstring        := ' ';
            T_adicoesED_CIDAD_FABRIC.asstring        := ' ';
            T_adicoesED_ESTADO_FABRIC.asstring       := ' ';
            {T_adicoesCD_PAIS_ORIG_MERC.asstring      := ' ';}
            end
         else begin
              T_adicoesCD_AUSENCIA_FABRIC.asstring     := '2';
              if Q_adicoesFABNOME.asstring<>'' then T_adicoesNM_FABRICANTE_MERC.asstring := Q_adicoesFABNOME.asstring
              else T_adicoesCD_AUSENCIA_FABRIC.asstring     := '3';

              if Q_adicoesFABEND.asstring<>'' then T_adicoesED_LOGR_FABRIC.asstring         := Q_adicoesFABEND.asstring
              else begin
                 logusu('M','AVISO - '+Q_adicoesFABNOME.asstring+' - O Endereço do Fabricante está em branco! Favor verificar! Processo: '+me_nossaref.text);
                 showmessage(v_usuario+', '+Q_adicoesFABNOME.asstring+' - O Endereço do Fabricante está em branco! Favor verificar! o envio continuará.');
              end;
              if Q_adicoesFABNUM.asstring<>'' then T_adicoesED_NR_FABRIC.asstring           := Q_adicoesFABNUM.asstring
              else begin
                 logusu('M','AVISO - '+Q_adicoesFABNOME.asstring+' - O número do Endereço do Fabricante está em branco! Favor verificar! Processo: '+me_nossaref.text);
                 showmessage(v_usuario+', '+Q_adicoesFABNOME.asstring+' - O número do Endereço do Fabricante está em branco! Favor verificar! o envio continuará.');
              end;
              if Q_adicoesFABCOMP.asstring<>'' then T_adicoesED_COMPL_FABRIC.asstring        := Q_adicoesFABCOMP.asstring
              else begin
                 logusu('M','AVISO - '+Q_adicoesFABNOME.asstring+' - O complemento do Endereço do Fabricante está em branco! Favor verificar! Processo: '+me_nossaref.text);
                 showmessage(v_usuario+', '+Q_adicoesFABNOME.asstring+' - O complemento do Endereço do Fabricante está em branco! Favor verificar! o envio continuará.');
              end;
              if Q_adicoesFABCID.asstring<>'' then T_adicoesED_CIDAD_FABRIC.asstring        := Q_adicoesFABCID.asstring
              else begin
                 logusu('M','AVISO - '+Q_adicoesFABNOME.asstring+' - A cidade do Endereço do Fabricante está em branco! Favor verificar! Processo: '+me_nossaref.text);
                 showmessage(v_usuario+', '+Q_adicoesFABNOME.asstring+' - A cidade do Endereço do Fabricante está em branco! Favor verificar! o envio continuará.');
              end;
              if Q_adicoesFABEST.asstring<>'' then T_adicoesED_ESTADO_FABRIC.asstring       := Q_adicoesFABEST.asstring
              else begin
                 logusu('M','AVISO - '+Q_adicoesFABNOME.asstring+' - O estado do Endereço do Fabricante está em branco! Favor verificar! Processo: '+me_nossaref.text);
                 showmessage(v_usuario+', '+Q_adicoesFABNOME.asstring+' - O estado do Endereço do Fabricante está em branco! Favor verificar! o envio continuará.');
              end;
              {T_adicoesCD_PAIS_ORIG_MERC.asstring      := Q_adicoesFABPAI.asstring+' ';}
         end;
         if Q_adicoesFABPAI.asstring<>'' then T_adicoesCD_PAIS_ORIG_MERC.asstring := Q_adicoesFABPAI.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesFABNOME.asstring+' - O código do País de Origem do Fabricante está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesFABNOME.asstring+' - O código do País de Origem do Fabricante está em branco! Favor verificar! o envio continuará.');
         end;


         if Q_adicoesNBM.asstring<>'' then T_adicoesCD_MERC_NBM_SH.asstring     := Q_adicoesNBM.asstring;
         {T_adicoesCD_MERC_NALADI_NCC.asstring          := Q_adicoesNALADI.asstring+' ';}

         {verifica paises do naladi}
         if ((Q_adicoesNALADI.asstring<>'') and
             (Q_adicoesPais_Procedencia.asstring = '158'){chile} or
             (Q_adicoesPais_Procedencia.asstring = '063'){argentina} or
             (Q_adicoesPais_Procedencia.asstring = '845'){uruguai} or
             (Q_adicoesPais_Procedencia.asstring = '586'){paraguai} or
             (Q_adicoesPais_Procedencia.asstring = '097'){bolivia} or
             (Q_adicoesPais_Procedencia.asstring = '493'){mexico} or
             (Q_adicoesPais_Procedencia.asstring = '169')){colombia} then
             T_adicoesCD_MERC_NALADI_SH.asstring   := Q_adicoesNALADI.asstring;

         {transformar peso em string}
         v_pesol := '0000000000'+floattostrf(Q_adicoesPeso_Total_Acertado.asfloat,fffixed,10,5);
         v_pesol := copy(v_pesol,(length(v_pesol)-15),10)+copy(v_pesol,(length(v_pesol)-4),5);
         T_adicoesPL_MERCADORIA.asstring               := v_pesol;

         {verificar quantidade estatística é quilograma liquido}
         if Q_adicoesUnidade_Medida_Estat.asstring = '10' then
            v_pesol := '000000000'+floattostrf(Q_adicoesPeso_Total_Acertado.asfloat,fffixed,9,5);
            v_pesol := copy(v_pesol,(length(v_pesol)-14),9)+copy(v_pesol,(length(v_pesol)-4),5);
            T_adicoesQT_UN_ESTATISTICA.asstring    := v_pesol;

         {verificar quantidade estatística é unidade}
         if Q_adicoesUnidade_Medida_Estat.asstring = '11' then begin
            v_quant := '000000000'+floattostrf(Q_adicoesSomaDeQuantidade.asfloat,fffixed,9,5);
            v_quant := copy(v_quant,(length(v_quant)-14),9)+copy(v_quant,(length(v_quant)-4),5);
            T_adicoesQT_UN_ESTATISTICA.asstring    := v_quant;
         end;

         if Q_adicoesCD_APLICACAO_MERC.asstring<>'' then T_adicoesCD_APLICACAO_MERC.asstring := Q_adicoesCD_APLICACAO_MERC.asstring;
         {T_adicoesVL_MERC_EMB_MN.asfloat               := 0;}
         T_adicoesCD_MOEDA_NEGOCIADA.asstring          := Q_adicoesMoeda.asstring;
         T_adicoesCD_INCOTERMS_VENDA.asstring          := Q_adicoesIncoterm.asstring;
         if Q_adicoesCondio.asstring<>'' then T_adicoesNM_LOC_COND_VENDA.asstring           := Q_adicoesCondio.asstring;

         {calcular}
         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);
         //mm 24082006 teste
         //if q_adicoesINCOTERM.asstring='EXW' then begin
            T_adicoesVL_MERC_COND_VENDA.asfloat      := Q_adicoesVMLE.asfloat;
            T_adicoesVL_MERC_VENDA_MN.asfloat        := (Q_adicoesVMLE.asfloat*t_taxaconvtaxa_conversao.asfloat);
         //end
         //else begin
         //   T_adicoesVL_MERC_COND_VENDA.asfloat      := Q_adicoesValor_Aduaneiro.asfloat;
         //   T_adicoesVL_MERC_VENDA_MN.asfloat        := (Q_adicoesValor_Aduaneiro.asfloat*t_taxaconvtaxa_conversao.asfloat);
         //end;

         {T_adicoesVL_FRETE_MERC_MNEG.asfloat      := Q_adicoesFrete.asfloat;}
         {T_adicoesCD_MD_FRETE_MERC.asstring      := Q_adicoesMoeda.asstring+' ';}
         T_adicoesVL_FRETE_MERC_MN.asfloat        := (Q_adicoesFrete.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {if q_adicoesmoeda_frete.asstring <> Q_adicoesMoeda.asstring then begin
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,q_adicoesmoeda_frete.asstring]);
            T_adicoesVL_FRETE_MERC_MN.asfloat        := (T_adicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat);
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);
         end;}
         ///T_adicoesVL_SEG_MERC_MNEG.asfloat       := Q_adicoesSeguro.asfloat;
         ///T_adicoesCD_MOEDA_SEG_MERC.asstring     := Q_adicoesMoeda.asstring;
         T_adicoesVL_SEG_MERC_MN.asfloat          := (Q_adicoesSeguro.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {if q_adicoesmoeda_seguro.asstring <> Q_adicoesMoeda.asstring then begin
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,q_adicoesmoeda_seguro.asstring]);
            T_adicoesVL_SEG_MERC_MN.asfloat          := (Q_adicoesSeguro.asfloat*t_taxaconvtaxa_conversao.asfloat);
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);
         end;}

         {T_adicoesVL_UNID_LOC_EMP.asfloat        := 0;}
         T_adicoesCD_METOD_VALORACAO.asstring     := Q_adicoesCD_METOD_VALORACAO.asstring;
         T_adicoesCD_VINC_IMPO_EXPO.asstring      := Q_adicoesvinculacao.asstring;
         if Q_adicoesCD_TIPO_ACORDO_TAR.asstring <>'' then T_adicoesCD_TIPO_ACORDO_TAR.asstring := Q_adicoesCD_TIPO_ACORDO_TAR.asstring;
         if Q_adicoesACORDO_ALADI.asstring       <>'' then T_adicoesCD_ACORDO_ALADI.asstring    := Q_adicoesACORDO_ALADI.asstring;
         T_adicoesCD_REGIME_TRIBUTAR.asstring     := Q_adicoesRegime_Tributacao_II.asstring;
         if Q_adicoesFundamento_Legal_II.asstring<>'' then T_adicoesCD_FUND_LEG_REGIME.asstring := Q_adicoesFundamento_Legal_II.asstring;
         if Q_adicoesMotivoSemCobertura.asstring<>'' then T_adicoesCD_MOTIVO_SEM_COB.asstring        := Q_adicoesMotivoSemCobertura.asstring;
         if Q_adicoesMotivo_Adm_Temp.asstring    <>'' then begin
            T_adicoesCD_MOTIVO_ADM_TEMP.asstring := Q_adicoesMotivo_Adm_Temp.asstring;
            T_adicoesCD_MOTIVO_SEM_COB.asstring  := '52';
         end;
         {T_adicoesNR_DCTO_REDUCAO.asstring       := '';
         T_adicoesVL_DESPESAS_MNEG.asfloat        := 0;
         T_adicoesCD_MOEDAS_DESPESAS.asstring     := '';
         T_adicoesVL_DESPESAS_MN.asfloat          := 0;}
         {if Q_adicoesPercentual_Reduca_IPI.asfloat<>0 then T_adicoesPC_COEF_REDUC_II.asfloat    := Q_adicoesPercentual_Reduca_IPI.asfloat;}
         {T_adicoesVL_CALC_DCR_DOLAR.asfloat      := 0;
         T_adicoesVL_II_CALC_DCR_MN.asfloat       := 0;
         T_adicoesVL_II_DEVIDO_ZFM.asfloat        := 0;
         T_adicoesVL_II_A_REC_ZFM.asfloat         := 0;}
         if Q_adicoesCoberturaCambial.asstring <>'' then T_adicoesCD_COBERT_CAMBIAL.asstring         := Q_adicoesCoberturaCambial.asstring;
         if Q_adicoesModalidadedePagamento.asstring<>'' then T_adicoesCD_MODALIDADE_PGTO.asstring    := Q_adicoesModalidadedePagamento.asstring;
         if Q_adicoesInstituicaoFinanciadora.asstring <>''then T_adicoesCD_ORGAO_FIN_INTER.asstring  := Q_adicoesInstituicaoFinanciadora.asstring;
         if Q_adicoesNumerodeparcelas.asstring  <>'' then T_adicoesQT_PARC_FINANC_360.asstring       := Q_adicoesNumerodeparcelas.asstring;
         if Q_adicoesIndicadorPeriodicidade.asstring <>''then T_adicoesCD_PERIOD_PGTO_360.asstring   := inttostr(strtoint(Q_adicoesIndicadorPeriodicidade.asstring)+1);
         if Q_adicoesPeriodicidade.asstring<>''          then begin
            T_adicoesQT_PERIOD_PGTO_360.asstring   := Q_adicoesPeriodicidade.asstring;
            ////if Q_adicoesValor_Aduaneiro.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat     := Q_adicoesValor_Aduaneiro.asfloat;
            ////alterei em 18/05/2004
            if Q_adicoesValor_Aduaneiro.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat := (Q_adicoesValor_Aduaneiro.asfloat*Q_adicoesprimeirodeValordasParcelas.asfloat)/100;
         end;
         {verificar as parcelas digitadas}
         if Q_adicoesvalortaxadejuros.asfloat     <>0 then T_adicoesPC_TAXA_JUROS.asfloat            := Q_adicoesvalortaxadejuros.asfloat;
         if Q_adicoesCodigoTaxadeJuros.asstring   <>''then T_adicoesCD_TAXA_JUROS.asstring           := Q_adicoesCodigoTaxadeJuros.asstring;
         if Q_adicoesROFBACEN.asstring           <>'' then begin
            T_adicoesNR_ROF.asstring                 := Q_adicoesROFBACEN.asstring;
            T_adicoesVL_FINANC_SUP_360.asfloat       := (Q_adicoesValor_Aduaneiro.asfloat*(Q_adicoesPercentualROF.asfloat/100));
         end;
         {T_adicoesIN_PGTO_VARIAV_360.asboolean    := false;
         T_adicoesIN_JUROS_ATE_360.asboolean      := false;
         T_adicoesPC_COMISSAO_AG_IMP.asfloat      := 0;
         T_adicoesVL_COMISSAO_AG_IMP.asfloat      := 0;
         T_adicoesCD_TIPO_AGENTE_IMP.asstring     := '';
         T_adicoesNR_AGENTE_IMP.asstring          := '';
         T_adicoesCD_BANC_AGENTE_IMP.asstring     := '';
         T_adicoesCD_AGENC_AGENT_IMP.asstring     := '';}
         T_adicoesIN_BEM_ENCOMENDA.asboolean      := Q_adicoesIN_BEM_ENCOMENDA.asboolean;
         T_adicoesIN_MATERIAL_USADO.asboolean     := Q_adicoesIN_MATERIAL_USADO.asboolean;
         {T_adicoesTX_COMPL_VL_ADUAN.asstring      := ' ';}
         {T_adicoesIN_IPI_NAO_TRIBUT.asboolean     := false;}
         T_adicoesvl_merc_loc_emb_mn.asfloat      := (Q_adicoesvalor_aduaneiro.asfloat*t_taxaconvtaxa_conversao.asfloat);
         T_adicoesvl_base_calculo_mn.asfloat      := (T_adicoesvl_merc_loc_emb_mn.asfloat+T_adicoesVL_FRETE_MERC_MN.asfloat);
         /// (Q_adicoesBase_Calc_II.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {T_adicoesNR_OPER_TRAT_PREV.asstring      := ' ';}

         // 10052006 mm
         if t_propis.FindKey([v_empresa,v_filial,me_nossaref.text,Q_adicoesAdicao.asstring]) then begin
            t_adicoesvl_aliq_icms.asfloat := (t_propisaliq_icms.asfloat+t_propisaliq_icms_extra.asfloat);
         end;

         if Q_adicoesCD_REGIME_TRIBUTAR_piscofins.asstring<>'' then
            T_adicoesCD_REGIME_TRIBUTAR_piscofins.asstring     := Q_adicoesCD_REGIME_TRIBUTAR_piscofins.asstring;
         if Q_adicoesCD_FUND_LEG_REGIME_PISCOFINS.asstring<>'' then
            T_adicoesCD_FUND_LEG_REGIME_PISCOFINS.asstring     := Q_adicoesCD_FUND_LEG_REGIME_PISCOFINS.asstring;

      t_adicoes.post;
      end;
      q_adicoes.next
end;

processamento('Aguarde... Atualizando SISCOMEX... Adições',q_adicoes.recordcount,true);


{gera todos os detalhes por adicao}
q_detalhe.Close;
q_detalhe.Params[0].AsString := q_processosempresa.asstring;
q_detalhe.Params[1].AsString := q_processosfilial.asstring;
q_detalhe.Params[2].AsString := me_nossaref.text;
q_detalhe.open;

t_detalhes.close;
t_detalhes.open;

q_detalhe.first;

{zera detalhes por adicao}
t_detalhes.first;
if t_detalhes.findkey([q_detalheNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_detalhes.eof) and (T_detalhesNR_DECL_IMP_MICRO.asstring = q_detalheNR_DECL_IMP_MICRO.asstring)) do begin
          t_detalhes.delete;
    end;
end;

q_detalhe.first;
v_num_seq := -1;
v_qadicao := Q_detalheAdicao.asstring;
while not q_detalhe.eof do begin

      processamento('Aguarde... Atualizando SISCOMEX... Detalhes das Mercadorias',q_detalhe.recordcount,false);

      {t_detalhes.edit;}
      while t_detalhes.state = dsinsert do begin
      end;
      t_detalhes.append;
      if v_qadicao = Q_detalheAdicao.asstring then begin
         v_num_seq := v_num_seq +1;
         end
      else begin
         v_num_seq := 0;
         v_qadicao := Q_detalheAdicao.asstring;
      end;
      T_detalhesNR_DECL_IMP_MICRO.asstring  := q_detalheNR_DECL_IMP_MICRO.asstring;
      T_detalhesNR_OP_IMP_MICRO.asstring    := q_detalheAdicao.asstring;
      T_detalhesNU_SEQ_DETALHE.asinteger    := v_num_seq;
      {verificar sequencia por pagina}
      t_itensfaturas.first;
      t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,q_detalheFatura.asstring,'1']);
      v_seq_pag := q_detalhesequencial.asinteger;
      v_menor   := q_detalhesequencial.asinteger;
      while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = q_detalheFatura.asstring)) do begin
            if (q_detalhePagina.asinteger = T_itensfaturaspagina.asinteger) then begin
               if (v_seq_pag < t_itensfaturassequencial.asinteger) then v_seq_pag := t_itensfaturassequencial.asinteger;
               if (v_menor > t_itensfaturassequencial.asinteger) then v_menor := t_itensfaturassequencial.asinteger;
            end;
            t_itensfaturas.next;
      end;
      if q_detalhepagina.asinteger = 1 then v_qsequencial := q_detalhesequencial.asinteger
      else begin
           v_qsequencial := (q_detalhesequencial.asinteger-v_menor)+1;
           {if (v_seq_pag=q_detalhesequencial.asinteger)  then v_qsequencial := (v_seq_pag-v_menor);
           if (v_seq_pag<>q_detalhesequencial.asinteger) then v_qsequencial := (v_seq_pag-(q_detalhesequencial.asinteger+1));}
      end;
      if verprodutos then begin
         t_produtos.first;
         t_produtos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,q_detalheproduto.asstring]);
         q_descricao := trim(t_produtosdescrio.asstring)+' Referencia: '+q_detalheProduto.asstring;
         if ((q_detalhenumero_serie.asstring<>'') and (q_detalhenumero_serie.asstring<>'.') ) then q_descricao := q_descricao+' Nº. Serie: '+q_detalhenumero_serie.asstring;
         if q_detalhecertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_detalhecertificado_origem.asstring;
         if q_detalhereferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_detalhereferencia.asstring;
         if ((q_detalhereferencia_projeto.asstring<>'') and (q_detalhereferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_detalhereferencia_projeto.asstring;
         if q_processosfilial.asstring = 'CWB' then begin
            if ((q_detalhePO.asstring<>'') and (q_detalhePO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_detalhePO.asstring;
            if ((q_detalheseqPO.asstring<>'') and (q_detalheseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_detalheseqPO.asstring;
         end;
         q_descricao := q_descricao+' Fatura: '+q_detalheFatura.asstring+' Pagina: '+q_detalhePagina.asstring+' Linha: '+inttostr(v_qsequencial);
      end
      else begin
         q_descricao := trim(q_detalhedescricao_produto.asstring)+' Referencia: '+q_detalheProduto.asstring;
         if ((q_detalhenumero_serie.asstring<>'') and (q_detalhenumero_serie.asstring<>'.') ) then q_descricao := q_descricao+' Nº. Serie: '+q_detalhenumero_serie.asstring;
         if q_detalhecertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_detalhecertificado_origem.asstring;
         if q_detalhereferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_detalhereferencia.asstring;
         if ((q_detalhereferencia_projeto.asstring<>'') and (q_detalhereferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_detalhereferencia_projeto.asstring;
         if q_processosfilial.asstring = 'CWB' then begin
            if ((q_detalhePO.asstring<>'') and (q_detalhePO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_detalhePO.asstring;
            if ((q_detalheseqPO.asstring<>'') and (q_detalheseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_detalheseqPO.asstring;
         end;
         q_descricao := q_descricao+' Fatura: '+q_detalheFatura.asstring+' Pagina: '+q_detalhePagina.asstring+' Linha: '+inttostr(v_qsequencial);

      end;
      T_detalhesTX_DESC_DET_MERC.asstring := q_descricao;
      {verificar quantidade }
      v_quant := '00000000000'+floattostrf(q_detalheQuantidade.asfloat,fffixed,9,5);
      v_quant := copy(v_quant,(length(v_quant)-14),9)+copy(v_quant,(length(v_quant)-4),5);
      T_detalhesQT_MERC_UN_COMERC.asstring  := v_quant;
      t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,q_detalheFatura.asstring,q_detalheSequencial.asstring]);
      {localiza o nome da unidades}
      t_unidades.findkey([t_itensfaturasunidade.asstring]);
      if t_unidadesdescricao.asstring<>'' then T_detalhesNM_UN_MEDID_COMERC.asstring := t_unidadesdescricao.asstring;
      T_detalhesVL_UNID_LOC_EMB.asfloat     := (t_itensfaturasvmle.asfloat/t_itensfaturasquantidade.asfloat);


      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);

      //mm 24082006 teste
      //if t_faturasINCOTERM.asstring='EXW' then begin
      //   v_valor := '00000000000000'+floattostrf((t_itensfaturasVMLE.asfloat/t_itensfaturasquantidade.asfloat),fffixed,13,7);
      //   v_valor := copy(v_valor,(length(v_valor)-20),13)+copy(v_valor,(length(v_valor)-6),7);
      //end
      //else begin
         v_valor := '00000000000000'+floattostrf((t_itensfaturasvalor_aduaneiro.asfloat/t_itensfaturasquantidade.asfloat),fffixed,13,7);
         v_valor := copy(v_valor,(length(v_valor)-20),13)+copy(v_valor,(length(v_valor)-6),7);
      //end;

      T_detalhesVL_UNID_COND_VENDA.asstring := v_valor;
      T_detalhesCD_PRODUTO.asstring         := q_detalheProduto.asstring;
      t_detalhes.post;
      {grava sequencia da adicao nos itens tributaveis}
      if T_tributositem.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,q_detalhefatura.asstring,q_detalhesequencial.asstring,q_detalheseq.asstring]) then begin
         ///while t_tributositem.state = dsedit do begin
         ///end;
         T_tributositem.edit;
         T_tributositemseq_adicao.asinteger := v_num_seq;
         T_tributositem.post;
      end;

      q_detalhe.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Detalhes das Mercadorias',q_detalhe.recordcount,true);


{Atualiza acrescimo valoracao e deducao valoracao}
q_acresdedu.Close;
q_acresdedu.Params[0].AsString := q_processosempresa.asstring;
q_acresdedu.Params[1].AsString := q_processosfilial.asstring;
q_acresdedu.Params[2].AsString := me_nossaref.text;
q_acresdedu.open;

T_acresval.close;
T_acresval.open;
T_deduval.close;
T_deduval.open;

q_acresdedu.first;


while not q_acresdedu.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Acréscimos e Deduções',q_acresdedu.recordcount,false);

      q_valacrededu := strtofloat(floattostrf(Q_acresdeduSomaDeAcresc_reduc_Valaduan.asfloat,fffixed,10,2));

      {é acrescimo}
      if q_valacrededu > 0 then begin
         while t_acresval.state = dsinsert do begin
         end;
         T_acresval.append;
         T_acresvalNR_DECL_IMP_MICRO.asstring           := q_acresdeduNR_DECL_IMP_MICRO.asstring;
         T_acresvalNR_OP_IMP_MICRO.asstring             := q_acresdeduAdicao.asstring;
         ///alterei em 15/08/2006 = mm TESTE
                  T_acresvalCD_MET_ACRES_VALOR.asstring          := '9';
         //T_acresvalCD_MET_ACRES_VALOR.asstring          := q_acresdeduCD_MET_ACRES_VALOR.asstring ;
         T_acresvalVL_ACRESCIMO_MOEDA.asfloat           := q_valacrededu;
         T_acresvalCD_MD_NEGOC_ACRES.asstring           := Q_acresdeduMoeda.asstring;

         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,Q_acresdeduMoeda.asstring]);
         T_acresvalVL_ACRESCIMO_MN.asfloat              := (q_valacrededu*t_taxaconvtaxa_conversao.asfloat);
         T_acresval.post;
      end
      else begin
           {é deducao}
           if q_valacrededu < 0 then begin
              while t_deduval.state = dsinsert do begin
              end;
              T_deduval.append;
              T_deduvalNR_DECL_IMP_MICRO.asstring             := q_acresdeduNR_DECL_IMP_MICRO.asstring;
              T_deduvalNR_OP_IMP_MICRO.asstring               := q_acresdeduAdicao.asstring;
              if ((q_acresdeduincoterm.asstring = 'CIP') or
                  (q_acresdeduincoterm.asstring = 'CPT') or
                  (q_acresdeduincoterm.asstring = 'DDU')) then T_deduvalCD_MET_DEDUC_VALOR.asstring := '3'
              else T_deduvalCD_MET_DEDUC_VALOR.asstring := '2';
              T_deduvalVL_DEDUCAO_MNEG.asfloat                := (q_valacrededu*-1);
              T_deduvalCD_MD_NEGOC_DEDUC.asstring             := Q_acresdeduMoeda.asstring;
              t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,Q_acresdeduMoeda.asstring]);
              T_deduvalVL_DEDUCAO_MN.asfloat                  := ((q_valacrededu*t_taxaconvtaxa_conversao.asfloat)*-1);
              T_deduval.post;
           end
      end;

      q_acresdedu.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Acréscimos e Deduções',q_acresdedu.recordcount,true);
T_acresval.close;
T_deduval.close;
q_acresdedu.Close;


{Atualiza atos vinculados}
q_atovinc.Close;
q_atovinc.Params[0].AsString := q_processosempresa.asstring;
q_atovinc.Params[1].AsString := q_processosfilial.asstring;
q_atovinc.Params[2].AsString := me_nossaref.text;
q_atovinc.open;

T_atosvinc.close;
T_atosvinc.open;

q_atovinc.first;

while not q_atovinc.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Atos Vinculados',q_atovinc.recordcount,false);

      {possue reg de ii}
      if Q_atovincNumero_Ato_Legal_II.asstring <> '' then begin
         if not T_atosvinc.findkey([Q_atovincNR_DECL_IMP_MICRO.asstring,Q_atovincAdicao.asstring,'1']) then begin
         T_atosvinc.append;
         T_atosvincNR_DECL_IMP_MICRO.asstring   := Q_atovincNR_DECL_IMP_MICRO.asstring;
         T_atosvincNR_OP_IMP_MICRO.asstring     := Q_atovincAdicao.asstring;
         T_atosvincCD_ASSUNTO_VINCUL.asstring   := '1';
         T_atosvincSG_TIPO_ATO_VINCUL.asstring  := Q_atovincAtos_LegaisTipo_Ato_Legal.asstring;
         T_atosvincSG_ORG_ATO_VINCUL.asstring   := Q_atovincAtos_LegaisOrgao_Emissor.asstring;
         T_atosvincDT_ANO_ATO_VINCUL.asstring   := Q_atovincAtos_LegaisAno_Ato_Legal.asstring;
         T_atosvincNR_ATO_VINCULADO.asstring    := Q_atovincNumero_Ato_Legal_II.asstring;
         if Q_atovincAtos_LegaisEX.asstring<>''then T_atosvincNR_EX_ATO_VINCUL.asstring := Q_atovincAtos_LegaisEX.asstring;
         T_atosvinc.post;
         end;
      end;
      {possue reg de acordo aladi}
      if Q_atovincAtos_Legais_2Numero.asstring <> '' then begin
         if not T_atosvinc.findkey([Q_atovincNR_DECL_IMP_MICRO.asstring,Q_atovincAdicao.asstring,'3']) then begin
         T_atosvinc.append;
         T_atosvincNR_DECL_IMP_MICRO.asstring   := Q_atovincNR_DECL_IMP_MICRO.asstring;
         T_atosvincNR_OP_IMP_MICRO.asstring     := Q_atovincAdicao.asstring;
         T_atosvincCD_ASSUNTO_VINCUL.asstring   := '3';
         T_atosvincSG_TIPO_ATO_VINCUL.asstring  := Q_atovincAtos_Legais_2Tipo_Ato_Legal.asstring;
         T_atosvincSG_ORG_ATO_VINCUL.asstring   := Q_atovincAtos_Legais_2Orgao_Emissor.asstring;
         T_atosvincDT_ANO_ATO_VINCUL.asstring   := Q_atovincAtos_Legais_2Ano_Ato_Legal.asstring;
         T_atosvincNR_ATO_VINCULADO.asstring    := Q_atovincAtos_Legais_2Numero.asstring;
         if Q_atovincAtos_Legais_2EX.asstring<>''then T_atosvincNR_EX_ATO_VINCUL.asstring := Q_atovincAtos_Legais_2EX.asstring;
         T_atosvinc.post;
         end;
      end;
      {possue reg de ipi}
      if Q_atovincAtos_Legais_1Numero.asstring <> '' then begin
         if not T_atosvinc.findkey([Q_atovincNR_DECL_IMP_MICRO.asstring,Q_atovincAdicao.asstring,'4']) then begin
         T_atosvinc.append;
         T_atosvincNR_DECL_IMP_MICRO.asstring   := Q_atovincNR_DECL_IMP_MICRO.asstring;
         T_atosvincNR_OP_IMP_MICRO.asstring     := Q_atovincAdicao.asstring;
         T_atosvincCD_ASSUNTO_VINCUL.asstring   := '4';
         T_atosvincSG_TIPO_ATO_VINCUL.asstring  := Q_atovincAtos_Legais_1Tipo_Ato_Legal.asstring;
         T_atosvincSG_ORG_ATO_VINCUL.asstring   := Q_atovincAtos_Legais_1Orgao_Emissor.asstring;
         T_atosvincDT_ANO_ATO_VINCUL.asstring   := Q_atovincAtos_Legais_1Ano_Ato_Legal.asstring;
         T_atosvincNR_ATO_VINCULADO.asstring    := Q_atovincAtos_Legais_1Numero.asstring;
         if Q_atovincAtos_Legais_1EX.asstring<>'' then T_atosvincNR_EX_ATO_VINCUL.asstring    := Q_atovincAtos_Legais_1EX.asstring;
         T_atosvinc.post;
         end;

      end;

      q_atovinc.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Atos Vinculados',q_atovinc.recordcount,true);
T_atosvinc.close;
q_atovinc.Close;


{verifica embalagens por di}
q_embcarga.Close;
q_embcarga.Params[0].AsString := q_processosempresa.asstring;
q_embcarga.Params[1].AsString := q_processosfilial.asstring;
q_embcarga.Params[2].AsString := me_nossaref.text;
q_embcarga.open;

t_embcarga.close;
t_embcarga.open;

q_embcarga.first;

{zera embalagens por adicao}
t_embcarga.first;
if t_embcarga.findkey([q_embcargaNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_embcarga.eof) and (t_embcargaNR_DECL_IMP_MICRO.asstring = q_embcargaNR_DECL_IMP_MICRO.asstring)) do begin
          t_embcarga.delete;
    end;
end;

q_embcarga.first;

v_num_seq := 0;
while not q_embcarga.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Embalagens de Cargas',q_embcarga.recordcount,false);

      while t_embcarga.state = dsinsert do begin
      end;
      t_embcarga.append;
      t_embcargaNR_DECL_IMP_MICRO.asstring  := q_embcargaNR_DECL_IMP_MICRO.asstring;
      T_embcargaNR_SEQ_EMBALAGEM.asinteger  := v_num_seq;
      T_embcargaCD_TIPO_EMBALAGEM.asstring  := q_embcargaTipoEmbalagem.asstring;
      T_embcargaQT_VOLUME_CARGA.asstring    := q_embcargaQuantidade.asstring;
      t_embcarga.post;
      v_num_seq := v_num_seq +1;
      q_embcarga.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Embalagens de Cargas',q_embcarga.recordcount,true);

{verifica armazems por di}
q_cargaarm.Close;
q_cargaarm.Params[0].AsString := q_processosempresa.asstring;
q_cargaarm.Params[1].AsString := q_processosfilial.asstring;
q_cargaarm.Params[2].AsString := me_nossaref.text;
q_cargaarm.open;

t_cargaarm.close;
t_cargaarm.open;

q_cargaarm.first;
{zera embalagens por adicao}
t_cargaarm.first;
if t_cargaarm.findkey([q_cargaarmNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_cargaarm.eof) and (t_cargaarmNR_DECL_IMP_MICRO.asstring = q_cargaarmNR_DECL_IMP_MICRO.asstring)) do begin
          t_cargaarm.delete;
    end;
end;

q_cargaarm.first;

v_num_seq := 0;
while not q_cargaarm.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Armazens',q_cargaarm.recordcount,false);

      while t_cargaarm.state = dsinsert do begin
      end;
      t_cargaarm.append;
      T_cargaarmNR_DECL_IMP_MICRO.asstring  := q_cargaarmNR_DECL_IMP_MICRO.asstring;
      T_cargaarmNR_SEQ_ARMAZEM.asinteger    := v_num_seq;
      T_cargaarmNM_ARMAZEM_CARGA.asstring   := Q_cargaarmNome_Armazem.asstring;
      t_cargaarm.post;
      v_num_seq := v_num_seq +1;
      q_cargaarm.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Armazens',q_cargaarm.recordcount,true);

{verifica destaques ncm  por di}
q_destaquencm.Close;
q_destaquencm.Params[0].AsString := q_processosempresa.asstring;
q_destaquencm.Params[1].AsString := q_processosfilial.asstring;
q_destaquencm.Params[2].AsString := me_nossaref.text;
q_destaquencm.open;

t_destaquencm.close;
t_destaquencm.open;

q_destaquencm.first;

{zera destaques por di}
t_destaquencm.first;
if t_destaquencm.findkey([q_destaquencmNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_destaquencm.eof) and (t_destaquencmNR_DECL_IMP_MICRO.asstring = q_destaquencmNR_DECL_IMP_MICRO.asstring)) do begin
          t_destaquencm.delete;
    end;
end;

q_destaquencm.first;

while not q_destaquencm.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Destaques NCM',q_destaquencm.recordcount,false);

      if q_destaquencmDestaque_NCM.asstring<>'' then begin
      while t_destaquencm.state = dsinsert do begin
      end;
      t_destaquencm.append;
      t_destaquencmNR_DECL_IMP_MICRO.asstring := q_destaquencmNR_DECL_IMP_MICRO.asstring;
      t_destaquencmNR_OP_IMP_MICRO.asstring   := q_destaquencmAdicao.asstring;
      t_destaquencmNU_SEQ_DESTAQUE.asinteger  := 0;
      t_destaquencmNR_DESTAQUE_NCM.asstring   := q_destaquencmDestaque_NCM.asstring;
      t_destaquencm.post;
      end;
      q_destaquencm.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Destaques NCM',q_destaquencm.recordcount,true);

{verifica documentos de instrucao}
q_docsinstru.Close;
q_docsinstru.Params[0].AsString := q_processosempresa.asstring;
q_docsinstru.Params[1].AsString := q_processosfilial.asstring;
q_docsinstru.Params[2].AsString := me_nossaref.text;
q_docsinstru.open;

t_docsintru.close;
t_docsintru.open;

q_docsinstru.first;
{zera documentos por di}
t_docsintru.first;
if t_docsintru.findkey([q_docsinstruNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_docsintru.eof) and (t_docsintruNR_DECL_IMP_MICRO.asstring = q_docsinstruNR_DECL_IMP_MICRO.asstring)) do begin
          t_docsintru.delete;
    end;
end;

q_docsinstru.first;

v_num_seq := 0;
while not q_docsinstru.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Documentos de Instruções',q_docsinstru.recordcount,false);

      while t_docsintru.state = dsinsert do begin
      end;
      t_docsintru.append;
      T_docsintruNR_DECL_IMP_MICRO.asstring  := q_docsinstruNR_DECL_IMP_MICRO.asstring;
      T_docsintruNR_SEQ_DCTO_INSTR.asinteger := v_num_seq;
      T_docsintruCD_TIPO_DCTO_INSTR.asstring := q_docsinstrucod_fat.asstring;
      T_docsintruNR_DCTO_INSTRUCAO.asstring  := q_docsinstruFatura.asstring;
      T_docsintruNM_DCTO_INSTRUCAO.asstring  := q_docsinstrutipo_doc01.asstring;
      t_docsintru.post;
      v_num_seq := v_num_seq +1;
      if q_docsinstruCertificado_Origem.asstring <> '' then begin
         while t_docsintru.state = dsinsert do begin
         end;
         t_docsintru.append;
         T_docsintruNR_DECL_IMP_MICRO.asstring  := q_docsinstruNR_DECL_IMP_MICRO.asstring;
         T_docsintruNR_SEQ_DCTO_INSTR.asinteger := v_num_seq;
         T_docsintruCD_TIPO_DCTO_INSTR.asstring := q_docsinstrucod_co.asstring;
         T_docsintruNR_DCTO_INSTRUCAO.asstring  := q_docsinstruCertificado_Origem.asstring;
         T_docsintruNM_DCTO_INSTRUCAO.asstring  := q_docsinstrutipo_doc02.asstring;
         t_docsintru.post;
         v_num_seq := v_num_seq +1;
      end;

      q_docsinstru.next;
end;

/// Marcelo - 19/07/2004 - colocar Packing List para todos os processos
if v_filial = 'CWB' then begin

      t_docsintru.append;
      T_docsintruNR_DECL_IMP_MICRO.asstring  := q_docsinstruNR_DECL_IMP_MICRO.asstring;
      T_docsintruNR_SEQ_DCTO_INSTR.asinteger := v_num_seq;
      T_docsintruCD_TIPO_DCTO_INSTR.asstring := '26';
      T_docsintruNR_DCTO_INSTRUCAO.asstring  := 'PACKING LIST';
      T_docsintruNM_DCTO_INSTRUCAO.asstring  := 'PACKING LIST';
      t_docsintru.post;

end;
processamento('Aguarde... Atualizando SISCOMEX... Documentos de Instruções',q_docsinstru.recordcount,true);

{verifica tributos por adicao}
q_tributos.Close;
q_tributos.Params[0].AsString := q_processosempresa.asstring;
q_tributos.Params[1].AsString := q_processosfilial.asstring;
q_tributos.Params[2].AsString := me_nossaref.text;
q_tributos.open;

t_tributo.close;
t_tributo.open;

q_tributos.first;
{zera tributos por di}
t_tributo.first;
if t_tributo.findkey([q_tributosNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_tributo.eof) and (t_tributoNR_DECL_IMP_MICRO.asstring = q_tributosNR_DECL_IMP_MICRO.asstring)) do begin
          t_tributo.delete;
    end;
end;

q_tributos.first;
v_proces := 0;

while not q_tributos.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Tributos',q_tributos.recordcount,false);

      {grava ii}
      while t_tributo.state = dsinsert do begin
      end;
      t_tributo.append;
      T_tributoNR_DECL_IMP_MICRO.asstring  := Q_tributosNR_DECL_IMP_MICRO.asstring;
      T_tributoNR_OP_IMP_MICRO.asstring    := Q_tributosAdicao.asstring;
      T_tributoCD_RECEITA_IMPOSTO.asstring := Q_tributoscod_II.asstring;
      T_tributoCD_TIPO_ALIQ_IPT.asstring   := Q_tributostipo_aliq.asstring;
      t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,Q_tributosMoeda.asstring]);
      T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributosBase_Calc_II.asfloat*t_taxaconvtaxa_conversao.asfloat);
      T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_II.asfloat;
      T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributosBase_Calc_II.asfloat*(Q_tributosAliq_NCM_II.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
      {T_tributoNM_UN_ALIQ_ESP_IPT.asfloat  := 0;
      T_tributoCD_TIPO_RECIPIENTE.asfloat  := 0;
      T_tributoQT_ML_RECIPIENTE.asfloat    := 0;
      T_tributoQT_MERC_UN_ALIQ_ES.asfloat  := 0;
      T_tributoVL_ALIQ_ESPEC_IPT.asfloat   := 0;
      T_tributoVL_CALC_IPT_ESPEC.asfloat   := 0;
      T_tributoCD_TIPO_BENEF_IPI.asstring  := ' ';}
      if Q_tributosPercentual_Reducao_II.asfloat<>0 then T_tributoPC_REDUCAO_IPT_BLI.asfloat := Q_tributosPercentual_Reducao_II.asfloat;
      if Q_tributosaliquota_aladi.asfloat<>0 then begin
        {T_tributoPC_ALIQ_REDUZIDA.asfloat  := (Q_tributosAliq_NCM_II.asfloat-(Q_tributosAliq_NCM_II.asfloat*(Q_tributosaliquota_aladi.asfloat/100)));}
        T_tributoPC_ALIQ_ACOR_TARIF.asfloat := (Q_tributosAliq_NCM_II.asfloat-(Q_tributosAliq_NCM_II.asfloat*(Q_tributosaliquota_aladi.asfloat/100)));
        T_tributoVL_CALC_II_AC_TARI.asfloat := (Q_tributosSomaDeValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
      end
      {calculo da aliquota reduzida para nao aladi}
      else begin

      end;

      T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (Q_tributosSomaDeValor_II_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
      T_tributoVL_IPT_A_RECOLHER.asfloat   := (Q_tributosSomaDeValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
      {T_tributoCD_TIPO_DIREITO.asstring    := ' ';
      T_tributoNR_NOTA_COMPL_TIPI.asstring := ' ';}
      t_tributo.post;



      {grava ipi}
      while t_tributo.state = dsinsert do begin
      end;

      va  := T_tributoVL_BASE_CALC_ADVAL.asfloat;
      a   := (Q_tributosAliq_NCM_II.asfloat/100);
      b   := (Q_tributosAliq_NCM_IPI.asfloat/100);

      ii := va*a;
      ipi := (va+ii)*b;

      t_tributo.append;
      T_tributoNR_DECL_IMP_MICRO.asstring  := Q_tributosNR_DECL_IMP_MICRO.asstring;
      T_tributoNR_OP_IMP_MICRO.asstring    := Q_tributosAdicao.asstring;
      T_tributoCD_RECEITA_IMPOSTO.asstring := Q_tributoscod_IPI.asstring;
      T_tributoCD_TIPO_ALIQ_IPT.asstring   := Q_tributostipo_aliq.asstring;
      T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_IPI.asfloat;

///      T_tributoVL_BASE_CALC_ADVAL.asfloat  := va+ii;
///      T_tributoVL_CALC_IPT_ADVAL.asfloat   := ipi;

///      24/09/2004
      T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributossomadeBase_Calc_IpI.asfloat*t_taxaconvtaxa_conversao.asfloat);
      T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributossomadeBase_Calc_IpI.asfloat*(Q_tributosAliq_NCM_IpI.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);

      {T_tributoNM_UN_ALIQ_ESP_IPT.asfloat  := 0;
      T_tributoCD_TIPO_RECIPIENTE.asfloat  := 0;
      T_tributoQT_ML_RECIPIENTE.asfloat    := 0;
      T_tributoQT_MERC_UN_ALIQ_ES.asfloat  := 0;
      T_tributoVL_ALIQ_ESPEC_IPT.asfloat   := 0;
      T_tributoVL_CALC_IPT_ESPEC.asfloat   := 0;}
      if Q_tributosRegime_Tributacao_IPI.asstring<>'' then T_tributoCD_TIPO_BENEF_IPI.asstring  := Q_tributosRegime_Tributacao_IPI.asstring;
      if Q_tributosPercentual_Reduca_IPI.asfloat<>0 then T_tributoPC_ALIQ_REDUZIDA.asfloat    := (Q_tributosAliq_NCM_IPI.asfloat*(Q_tributosPercentual_Reduca_IPI.asfloat/100));
      {T_tributoPC_REDUCAO_IPT_BLI.asfloat  := Q_tributosPercentual_Reduca_IPI.asfloat;}
      {T_tributoPC_ALIQ_ACOR_TARIF.asfloat  := 0;
      {T_tributoVL_CALC_II_AC_TARI.asfloat  := 0;}
      T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (Q_tributosSomaDeValor_IPI_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
      T_tributoVL_IPT_A_RECOLHER.asfloat   := (Q_tributosSomaDeValor_IPI_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
      {T_tributoCD_TIPO_DIREITO.asstring    := ' ';
      T_tributoNR_NOTA_COMPL_TIPI.asstring := ' ';}
      t_tributo.post;

      // 10052006 mm
      if t_propis.FindKey([v_empresa,v_filial,me_nossaref.text,q_tributosAdicao.asstring]) then begin
             if q_piscofinstrib.Locate('Adicao',Q_tributosAdicao.asstring,[loCaseInsensitive]) then begin
//                if q_piscofinstribRegime_Tributacao_II.asstring<>'5' then begin
   //aqui
         /// GRAVANDO PIS
         t_tributo.append;
         T_tributoNR_DECL_IMP_MICRO.asstring  := Q_tributosNR_DECL_IMP_MICRO.asstring;
         T_tributoNR_OP_IMP_MICRO.asstring    := Q_tributosAdicao.asstring;
         T_tributoCD_RECEITA_IMPOSTO.asstring := '0005';
         T_tributoCD_TIPO_ALIQ_IPT.asstring   := '1';
         T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := t_propisALIQ_PIS_PASEP.asfloat;
         T_tributoVL_BASE_CALC_ADVAL.asfloat  := t_propisbasec_piscofins.asfloat;
         T_tributoVL_CALC_IPT_ADVAL.asfloat   := t_propisvalor_pis_pasep.asfloat;
        //      if Q_tributosRegime_Tributacao_IPI.asstring<>'' then T_tributoCD_TIPO_BENEF_IPI.asstring  := Q_tributosRegime_Tributacao_IPI.asstring;
        //      if Q_tributosPercentual_Reduca_IPI.asfloat<>0 then T_tributoPC_ALIQ_REDUZIDA.asfloat    := (Q_tributosAliq_NCM_IPI.asfloat*(Q_tributosPercentual_Reduca_IPI.asfloat/100));
         T_tributoVL_IMPOSTO_DEVIDO.asfloat   := t_propisvalor_pis_pasep.asfloat;
         T_tributoVL_IPT_A_RECOLHER.asfloat   := t_propisvalor_pis_pasep.asfloat;
         if ((q_tributosCD_REGIME_TRIBUTAR_PISCOFINS.asstring='4') and (q_tributosPC_ALIQ_REDUZIDA_PIS.asfloat>-1)) then begin
            T_tributoPC_ALIQ_REDUZIDA.asfloat := q_tributosPC_ALIQ_REDUZIDA_PIS.asfloat;
         end;
         {T_tributoCD_TIPO_DIREITO.asstring    := ' ';
         T_tributoNR_NOTA_COMPL_TIPI.asstring := ' ';}
         t_tributo.post;

         /// GRAVANDO COFINS
         t_tributo.append;
         T_tributoNR_DECL_IMP_MICRO.asstring  := Q_tributosNR_DECL_IMP_MICRO.asstring;
         T_tributoNR_OP_IMP_MICRO.asstring    := Q_tributosAdicao.asstring;
         T_tributoCD_RECEITA_IMPOSTO.asstring := '0006';
         T_tributoCD_TIPO_ALIQ_IPT.asstring   := '1';
         T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := t_propisALIQ_COFINS.asfloat;
         T_tributoVL_BASE_CALC_ADVAL.asfloat  := t_propisbasec_piscofins.asfloat;
         T_tributoVL_CALC_IPT_ADVAL.asfloat   := t_propisvalor_COFINS.asfloat;
        //      if Q_tributosRegime_Tributacao_IPI.asstring<>'' then T_tributoCD_TIPO_BENEF_IPI.asstring  := Q_tributosRegime_Tributacao_IPI.asstring;
        //      if Q_tributosPercentual_Reduca_IPI.asfloat<>0 then T_tributoPC_ALIQ_REDUZIDA.asfloat    := (Q_tributosAliq_NCM_IPI.asfloat*(Q_tributosPercentual_Reduca_IPI.asfloat/100));
         T_tributoVL_IMPOSTO_DEVIDO.asfloat   := t_propisvalor_COFINS.asfloat;
         T_tributoVL_IPT_A_RECOLHER.asfloat   := t_propisvalor_COFINS.asfloat;
         if ((q_tributosCD_REGIME_TRIBUTAR_PISCOFINS.asstring='4') and (q_tributosPC_ALIQ_REDUZIDA_COFINS.asfloat>-1)) then begin
            T_tributoPC_ALIQ_REDUZIDA.asfloat := q_tributosPC_ALIQ_REDUZIDA_COFINS.asfloat;
         end;

         {T_tributoCD_TIPO_DIREITO.asstring    := ' ';
         T_tributoNR_NOTA_COMPL_TIPI.asstring := ' ';}
         t_tributo.post;
//         end;
       end;
      end;

      q_tributos.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Tributos',q_tributos.recordcount,true);

{verifica pagamentos previstos por adicao}
q_pagprev.Close;
q_pagprev.Params[0].AsString := q_processosempresa.asstring;
q_pagprev.Params[1].AsString := q_processosfilial.asstring;
q_pagprev.Params[2].AsString := me_nossaref.text;
q_pagprev.open;

t_pagprevisto.close;
t_pagprevisto.open;

q_pagprev.first;
{zera tributos por di}
if t_pagprevisto.findkey([q_pagprevNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_pagprevisto.eof) and (t_pagprevistoNR_DECL_IMP_MICRO.asstring = q_pagprevNR_DECL_IMP_MICRO.asstring)) do begin
          t_pagprevisto.delete;
    end;
end;

q_pagprev.first;

v_num_seq := -1;
v_qadicao := q_pagprevAdicao.asstring;
while not q_pagprev.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Pagamentos Previstos',q_pagprev.recordcount,false);

      if v_qadicao = q_pagprevAdicao.asstring then begin
         v_num_seq := v_num_seq +1;
         end
      else begin
         v_num_seq := 0;
         v_qadicao := q_pagprevAdicao.asstring;
      end;

      while t_pagprevisto.state = dsinsert do begin
      end;
      T_pagprevisto.append;
      T_pagprevistoNR_DECL_IMP_MICRO.asstring := q_pagprevNR_DECL_IMP_MICRO.asstring;
      T_pagprevistoNR_OP_IMP_MICRO.asstring   := q_pagprevAdicao.asstring;
      T_pagprevistoNU_SEQ_PAG_PREV.asinteger  := v_num_seq;
      T_pagprevistoDT_PREV_PGTO_360.asstring  := copy(q_pagprevDatadePagamento.asstring,3,4)+copy(q_pagprevDatadePagamento.asstring,1,2);
      T_pagprevistoVL_PREV_PGTO_360.asfloat   := (q_pagprevValor_Aduaneiro.asfloat*(q_pagprevPercentual.asfloat/100));
      T_pagprevisto.post;
      q_pagprev.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Pagamentos Previstos',q_pagprev.recordcount,true);

{verifica pagamentos tributos por adicao}

q_pagtributos.Close;
q_pagtributos.Params[0].AsString := q_processosempresa.asstring;
q_pagtributos.Params[1].AsString := q_processosfilial.asstring;
q_pagtributos.Params[2].AsString := me_nossaref.text;
q_pagtributos.open;

t_pagtributos.close;
t_pagtributos.open;

q_pagtributos.first;
{zera tributos por di}
if t_pagtributos.findkey([q_pagtributosNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_pagtributos.eof) and (t_pagtributosNR_DECL_IMP_MICRO.asstring = q_pagtributosNR_DECL_IMP_MICRO.asstring)) do begin
          t_pagtributos.delete;
    end;
end;

q_pagtributos.first;
v_proces := 0;

while not q_pagtributos.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Pagamentos de Tributos por Adição',q_pagtributos.recordcount,false);

    {grava ii}
    while t_pagtributos.state = dsinsert do begin
    end;
    t_pagtributos.append;
    T_pagtributosNR_DECL_IMP_MICRO.asstring   := q_pagtributosNR_DECL_IMP_MICRO.asstring;
    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
    T_pagtributosCD_RECEITA_PGTO.asstring     := q_pagtributoscod_ii.asstring;
    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;////q_pagtributosBanco.asstring;
    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;////q_pagtributosAgencia.asstring;
//    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_pagtributosSomaDeValor_II_a_recolher.asfloat*t_cambiotaxa_conversao.asfloat);
    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_pagtributosSomaDeValor_II_a_recolher.asfloat);

    {T_pagtributosDT_PGTO_TRIBUTO.asstring    := ' ';
    T_pagtributosVL_MULTA_PGTO_TRIB.asfloat   := 0;
    T_pagtributosVL_JUROS_PGTO_TRIB.asfloat   := 0;}

    t_pagtributos.post;
    qii :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

    {grava ipi}
    while t_pagtributos.state = dsinsert do begin
    end;
    t_pagtributos.append;
    T_pagtributosNR_DECL_IMP_MICRO.asstring   := q_pagtributosNR_DECL_IMP_MICRO.asstring;
    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
    T_pagtributosCD_RECEITA_PGTO.asstring     := q_pagtributoscod_ipi.asstring;
    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;////q_pagtributosBanco.asstring;
    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;////q_pagtributosAgencia.asstring;
//    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_pagtributosSomaDeValor_IPI_a_recolher.asfloat*t_cambiotaxa_conversao.asfloat);

    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_pagtributosSomaDeValor_IPI_a_recolher.asfloat);

    {T_pagtributosDT_PGTO_TRIBUTO.asstring     := ' ';
    T_pagtributosVL_MULTA_PGTO_TRIB.asfloat   := 0;
    T_pagtributosVL_JUROS_PGTO_TRIB.asfloat   := 0;}
    t_pagtributos.post;
    qipi :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

    {grava sis}
    while t_pagtributos.state = dsinsert do begin
    end;
    t_pagtributos.append;
    T_pagtributosNR_DECL_IMP_MICRO.asstring   := q_pagtributosNR_DECL_IMP_MICRO.asstring;
    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
    T_pagtributosCD_RECEITA_PGTO.asstring     := q_pagtributoscod_sis.asstring;
    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;////q_pagtributosBanco.asstring;
    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;////q_pagtributosAgencia.asstring;
    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 30;
    for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
        if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
        if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
        if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
        if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
        if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
        if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
    end;
    {ratear nos itens das faturas}
    {T_pagtributosDT_PGTO_TRIBUTO.asstring     := ' ';
    T_pagtributosVL_MULTA_PGTO_TRIB.asfloat   := 0;
    T_pagtributosVL_JUROS_PGTO_TRIB.asfloat   := 0;}
    t_pagtributos.post;
    qtx :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

    q_pagtributos.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Pagamentos de Tributos por Adição',q_pagtributos.recordcount,true);

{verifica pagamentos vinculados por adicao}
q_pagvinculados.Close;
q_pagvinculados.Params[0].AsString := q_processosempresa.asstring;
q_pagvinculados.Params[1].AsString := q_processosfilial.asstring;
q_pagvinculados.Params[2].AsString := me_nossaref.text;
q_pagvinculados.open;

t_pagvinculado.close;
t_pagvinculado.open;

q_pagvinculados.first;
{zera tributos por di}
if t_pagvinculado.findkey([q_pagvinculadosNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_pagvinculado.eof) and (t_pagvinculadoNR_DECL_IMP_MICRO.asstring = q_pagvinculadosNR_DECL_IMP_MICRO.asstring)) do begin
          t_pagvinculado.delete;
    end;
end;

q_pagvinculados.first;

v_num_seq := -1;
v_qadicao := q_pagvinculadosAdicao.asstring;
while not q_pagvinculados.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Pagamentos Vinculados',q_pagvinculados.recordcount,false);

      if v_qadicao = q_pagvinculadosAdicao.asstring then begin
         v_num_seq := v_num_seq +1;
         end
      else begin
         v_num_seq := 0;
         v_qadicao := q_pagvinculadosAdicao.asstring;
      end;
      while t_pagvinculado.state = dsinsert do begin
      end;
      t_pagvinculado.append;
      T_pagvinculadoNR_DECL_IMP_MICRO.asstring   := q_pagvinculadosNR_DECL_IMP_MICRO.asstring;
      T_pagvinculadoNR_OP_IMP_MICRO.asstring     := q_pagvinculadosAdicao.asstring;
      T_pagvinculadoNR_SEQ_PAGAMENTO.asinteger   := v_num_seq;
      T_pagvinculadoCD_FORMA_PAGAMENTO.asstring  := q_pagvinculadosFormadePagamento.asstring;
      T_pagvinculadoIN_PAGAMENTO_MN.asboolean    := q_pagvinculadosMoedaNacional.asboolean;
      T_pagvinculadoCD_BANCO_PAGAMENTO.asstring  := q_pagvinculadosBanco.asstring;
      T_pagvinculadoCD_PRACA_PAGAMENTO.asstring  := q_pagvinculadosPraca.asstring;
      T_pagvinculadoNR_OP_CAMBIO.asstring        := q_pagvinculadosContrato.asstring;
      T_pagvinculadoVL_VINC_MD_CAMBIO.asfloat    := (q_pagvinculadosValor_Aduaneiro.asfloat*(q_pagvinculadosValorPercentual.asfloat/100));
      {T_pagvinculadoNR_COMPR_CAMBIO.asstring     := q_pagvinculadosCNPJComprador.asstring;
      T_pagvinculadoCD_TP_COMPR_CAMBIO.asstring  := q_pagvinculadosTipoCNPJ.asstring;}
      t_pagvinculado.post;
      q_pagvinculados.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Pagamentos Vinculados',q_pagvinculados.recordcount,true);

{ AQUI ENTRA AS SQLS PARA GERAR DUAS DIS NO CASO "12"}
if t_processostipo_declarao.asstring = '12' then begin
  if MessageDlg('Gera DI de Admissão Temporária e Consumo Separadamente?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
    processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
     ///de admissao
     achou := false;
     if t_di.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM']) then achou := true;
     if ((achou) and (t_diNR_DECLARACAO_IMP.asstring='')) or
         (not achou) then begin
        ///apagando di de admissão
        q_apagadis.params[0].asstring := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
        q_apagadis.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando di de admissao
        q_geradi.params[0].asstring := 'ADM';
        q_geradi.params[1].asstring := 'ADM';
        q_geradi.params[2].asstring := '5';
        q_geradi.params[3].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geradi.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Adições',100,false);
        ///gerando adicoes de admissao
        q_geraadicoes.params[0].asstring := 'ADM';
        q_geraadicoes.params[1].asstring := '5';
        q_geraadicoes.params[2].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geraadicoes.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Detalhes Merc.',100,false);
        ///gerando detalhes das mercadorias das adicoes de admissao
        q_geradet.params[0].asstring := 'ADM';
        q_geradet.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geradet.params[2].asstring := '5';
        q_geradet.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Valores',100,false);
        ///gerando acrescimos valoracao das adicoes de admissao
        q_acresval.params[0].asstring := 'ADM';
        q_acresval.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_acresval.params[2].asstring := '5';
        q_acresval.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Atos',100,false);
        ///gerando atos vinculados das adicoes de admissao
        q_atos.params[0].asstring := 'ADM';
        q_atos.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_atos.params[2].asstring := '5';
        q_atos.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Embalagens',100,false);
        ///gerando embalagens de carga das adicoes de admissao
        q_emb.params[0].asstring := 'ADM';
        q_emb.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_emb.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Cargas',100,false);
        ///gerando armazens das adicoes de admissao
        q_car.params[0].asstring := 'ADM';
        q_car.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_car.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Ncms',100,false);
        ///gerando destaques ncm das adicoes de admissao
        q_desncm.params[0].asstring := 'ADM';
        q_desncm.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_desncm.params[2].asstring := '5';
        q_desncm.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Docs',100,false);
        ///gerando documentos de instrução das adicoes de admissao
        q_doci.params[0].asstring := 'ADM';
        q_doci.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_doci.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Tributação',100,false);
        ///gerando tributos das adicoes de admissao
        q_trib.params[0].asstring := 'ADM';
        q_trib.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_trib.params[2].asstring := '5';
        q_trib.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Pagtos Pre',100,false);
        ///gerando pagamentos previstos das adicoes de admissao
        q_pagpre.params[0].asstring := 'ADM';
        q_pagpre.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagpre.params[2].asstring := '5';
        q_pagpre.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Pagtos Vin',100,false);
        ///gerando pagamentos vinculados das adicoes de admissao
        q_pagvin.params[0].asstring := 'ADM';
        q_pagvin.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagvin.params[2].asstring := '5';
        q_pagvin.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando Processos',100,false);
        ///gerando processos di de admissao
        q_procdi.params[0].asstring := 'ADM';
        q_procdi.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_procdi.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Recalculando Adições',100,false);
        ///arruma adicoes de admissao
        t_arrumaadicoes.close;
        t_arrumaadicoes.open;
        t_arrumaadicoes.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM']);
        apri := 0;
        while ((not t_arrumaadicoes.eof) and
               ( t_arrumaadicoesNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM')) do begin
                      processamento('Aguarde... Atualizando SISCOMEX... Recalculando Adições '+inttostr(apri),100,false);
              apri := apri+1;
              t_arrumaadicoes.edit;
              t_arrumaadicoesNR_OP_IMP_MICRO.asstring := copy('000'+inttostr(apri),length('000'+inttostr(apri))-2,3);
              t_arrumaadicoes.post;
              t_arrumaadicoes.next;
        end;

        ///acerta peso da di de admissao
        processamento('Aguarde... Atualizando SISCOMEX... Acertando Peso Admissão',100,false);
        if t_di.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM']) then begin
           q_acertapesodi.close;
           q_acertapesodi.params[0].asstring := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
           q_acertapesodi.open;
           perc_pb := ((q_acertapesodipeso_liquido.asfloat*100)/t_transpprocessopeso_liquido.asfloat);
           v_pb    := (t_transpprocessopeso_bruto.asfloat*(perc_pb/100));
           v_pesob := '0000000000'+floattostrf(v_pb,fffixed,10,5);
           v_pesol := '0000000000'+floattostrf(q_acertapesodipeso_liquido.asfloat,fffixed,10,5);
           v_pesob := copy(v_pesob,(length(v_pesob)-15),10)+copy(v_pesob,(length(v_pesob)-4),5);
           v_pesol := copy(v_pesol,(length(v_pesol)-15),10)+copy(v_pesol,(length(v_pesol)-4),5);
           t_di.edit;
           T_diPB_CARGA.asstring              := v_pesob;
           T_diPL_CARGA.asstring              := v_pesol;
           t_di.post;

           ///acerta valor da di de admissao
           {testar moedas das faturas}
           t_faturas.first;
           t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
           v_moedaigual := true;
           v_moeda      := t_faturasmoeda.asstring;
           v_totfat     := 0;
           v_totfatm    := 0;
           while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
                if v_moeda <> t_faturasmoeda.asstring then begin
                    v_moeda      := '790'; {moeda real}
                    v_moedaigual := false;
                end;
                t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                     if t_tributositem.findkey([q_processosempresa.asstring,q_processosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='5' then begin
                                 ///mm 23082006 teste
                                 //   v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 //   v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversao.asfloat);
                                 v_totfatm := v_totfatm+((t_itensfaturasvalor_aduaneiro.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 v_totfat  := v_totfat+(((t_itensfaturasvalor_aduaneiro.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversao.asfloat);

                              end;
                              t_tributositem.next;
                        end;
                     end;
                     t_itensfaturas.next;
               end;
               t_faturas.next;
           end;

           t_di.edit;
           T_diCD_MOEDA_MLE.asstring     := v_moeda;
           T_diIN_MOEDA_UNICA.asboolean  := v_moedaigual;
           if v_moedaigual = true then begin
              T_diVL_TOT_MLE_MNEG.asfloat   := v_totfatm;
              T_diVL_TOTAL_MLE_MN.asfloat   := v_totfat;
              end
           else begin
              T_diVL_TOT_MLE_MNEG.asfloat   := 0;
              T_diVL_TOTAL_MLE_MN.asfloat   := v_totfat;
           end;
           t_di.post;

           ///acerta fretes e seguro da di de admissao
           processamento('Aguarde... Atualizando SISCOMEX... Acertando Frete/seguro Admissão',100,false);
           q_acertafretseg.close;
           q_acertafretseg.params[0].asstring := me_nossaref.text;
           q_acertafretseg.params[1].asstring := '5';
           q_acertafretseg.open;

           t_di.Edit;
           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then begin
              T_diVL_TOT_FRT_PREPAID.asfloat     := ((q_acertafretsegprepaid.asfloat*q_acertafretsegtaxa_conversao.asfloat)/q_acertafretsegtaxa_conversaofre.asfloat);
              T_diVL_TOT_FRT_COLLECT.asfloat     := ((q_acertafretsegcollect.asfloat*q_acertafretsegtaxa_conversao.asfloat)/q_acertafretsegtaxa_conversaofre.asfloat);
              T_diVL_FRETE_TNAC_MNEG.asfloat     := ((q_acertafretsegternac.asfloat*q_acertafretsegtaxa_conversao.asfloat)/q_acertafretsegtaxa_conversaofre.asfloat);
              ////T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat)*q_acertafretsegtaxa_conversao.asfloat;
              T_diVL_TOTAL_FRETE_MN.asfloat      :=  (T_diVL_TOT_FRT_PREPAID.asfloat+T_diVL_TOT_FRT_COLLECT.asfloat-T_diVL_FRETE_TNAC_MNEG.asfloat)*q_acertafretsegtaxa_conversaofre.asfloat;
           end;

           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
              T_diVL_TOT_SEGURO_MNEG.asfloat     := ((q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversao.asfloat)/q_acertafretsegtaxa_conversaoseg.asfloat);
              ////T_diVL_TOTAL_SEG_MN.asfloat        := (q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversao.asfloat);
              T_diVL_TOTAL_SEG_MN.asfloat        := (T_diVL_TOT_SEGURO_MNEG.asfloat*q_acertafretsegtaxa_conversaoseg.asfloat);
           end;
           t_di.post;

           t_processos.edit;
           t_processosvalor_fob.asfloat  := t_divl_total_mle_mn.asfloat;
           t_processosvalor_cif.asfloat  := (t_processosvalor_fob.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
           t_processos.Post;

        end;

           ///acerta pagamento de tributos di de admissao
           {zera tributos por di}
           if t_pagtributos.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM']) then begin
              while ((not t_pagtributos.eof) and (t_pagtributosNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM')) do begin
                    t_pagtributos.delete;
              end;
           end;
           q_acertapagtrib.close;
           q_acertapagtrib.params[0].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
           q_acertapagtrib.params[1].asstring := '5';
           q_acertapagtrib.open;

           ///mm 25/04/2006
           if q_acertapagtrib.RecordCount>0 then begin
          {grava ii}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ii.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_II_a_recolher.asfloat*q_acertapagtribtaxa_conversao.asfloat);
          t_pagtributos.post;
          qii :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
          {grava ipi}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ipi.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_IPI_a_recolher.asfloat*q_acertapagtribtaxa_conversao.asfloat);
          t_pagtributos.post;
          qipi :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
          {grava sis}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_sis.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 30;
          for i := 1 to (apri) do begin
              if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
              if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
              if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
              if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
              if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
              if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
          end;
          t_pagtributos.post;
          qtx :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
          end;
     end;

     ///de consumo
     achou := false;
     if t_di.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']) then achou := true;
     if ((achou) and (t_diNR_DECLARACAO_IMP.asstring='')) or
         (not achou) then begin
        ///apagando di de consumo
        q_apagadis.params[0].asstring := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
        q_apagadis.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando di de consumo
        q_geradi.params[0].asstring := 'CON';
        q_geradi.params[1].asstring := 'CON';
        q_geradi.params[2].asstring := '1';
        q_geradi.params[3].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geradi.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando adicoes de consumo
        q_geraadicoes.params[0].asstring := 'CON';
        q_geraadicoes.params[1].asstring := '1';
        q_geraadicoes.params[2].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geraadicoes.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando detalhes das mercadorias das adicoes de consumo
        q_geradet.params[0].asstring := 'CON';
        q_geradet.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geradet.params[2].asstring := '1';
        q_geradet.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando acrescimos valoracao das adicoes de consumo
        q_acresval.params[0].asstring := 'CON';
        q_acresval.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_acresval.params[2].asstring := '1';
        q_acresval.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando atos vinculados das adicoes de consumo
        q_atos.params[0].asstring := 'CON';
        q_atos.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_atos.params[2].asstring := '1';
        q_atos.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando embalagens de carga das adicoes de consumo
        q_emb.params[0].asstring := 'CON';
        q_emb.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_emb.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando armazens das adicoes de consumo
        q_car.params[0].asstring := 'CON';
        q_car.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_car.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando destaques ncm das adicoes de consumo
        q_desncm.params[0].asstring := 'CON';
        q_desncm.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_desncm.params[2].asstring := '1';
        q_desncm.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando documentos de instrução das adicoes de consumo
        q_doci.params[0].asstring := 'CON';
        q_doci.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_doci.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando tributos das adicoes de consumo
        q_trib.params[0].asstring := 'CON';
        q_trib.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_trib.params[2].asstring := '1';
        q_trib.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando pagamentos previstos das adicoes de consumo
        q_pagpre.params[0].asstring := 'CON';
        q_pagpre.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagpre.params[2].asstring := '1';
        q_pagpre.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando pagamentos vinculados das adicoes de consumo
        q_pagvin.params[0].asstring := 'CON';
        q_pagvin.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagvin.params[2].asstring := '1';
        q_pagvin.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando processos di de consumo
        q_procdi.params[0].asstring := 'CON';
        q_procdi.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_procdi.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///arruma adicoes de consumo
        t_arrumaadicoes.close;
        t_arrumaadicoes.open;
        t_arrumaadicoes.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']);
        apri := 0;
        while ((not t_arrumaadicoes.eof) and
               ( t_arrumaadicoesNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do begin
              processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
              apri := apri+1;
              t_arrumaadicoes.edit;
              t_arrumaadicoesNR_OP_IMP_MICRO.asstring := copy('000'+inttostr(apri),length('000'+inttostr(apri))-2,3);
///aqui
         if t_processosnr_declaracao_impc.asstring='' then begin
         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
         T_arrumaadicoesVL_MERC_VENDA_MN.asfloat        := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

         T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
         T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
         end;

         if ((T_arrumaadicoesCD_INCOTERMS_VENDA.asstring = 'FOB') or
             (T_arrumaadicoesCD_INCOTERMS_VENDA.asstring = 'FCA') or
             (T_arrumaadicoesCD_INCOTERMS_VENDA.asstring = 'EXW')) then begin
///teste tirei daqui
//            T_arrumaadicoesvl_merc_loc_emb_mn.asfloat      := T_arrumaadicoesVL_MERC_VENDA_MN.asfloat;
//            T_arrumaadicoesvl_base_calculo_mn.asfloat      := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat+T_arrumaadicoesVL_FRETE_MERC_MN.asfloat+T_arrumaadicoesVL_SEG_MERC_MN.asfloat)

          end
         else begin
            T_arrumaadicoesvl_merc_loc_emb_mn.asfloat      := T_arrumaadicoesVL_MERC_VENDA_MN.asfloat-(T_arrumaadicoesVL_FRETE_MERC_MN.asfloat+T_arrumaadicoesVL_SEG_MERC_MN.asfloat);
            T_arrumaadicoesvl_base_calculo_mn.asfloat      := T_arrumaadicoesVL_MERC_VENDA_MN.asfloat;///// alterei dia 21/01/2003 - Oraldo +T_arrumaadicoesVL_FRETE_MERC_MN.asfloat+T_arrumaadicoesVL_SEG_MERC_MN.asfloat)
         end;
///         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_arrumaadicoesCD_MD_FRETE_MERC.asstring]);
///         T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

///         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_arrumaadicoesCD_MOEDA_SEG_MERC.asstring]);
///         T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;


///
              t_arrumaadicoes.post;
              t_arrumaadicoes.next;
        end;

       ////ARRUMA tributos di consumo
        t_tributo.close;
        t_tributo.open;
        t_tributo.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']);

        while ((not t_tributo.eof) and
               ( t_tributoNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do begin
               t_tributo.edit;
               T_tributoVL_BASE_CALC_ADVAL.asfloat  := (T_tributoVL_BASE_CALC_ADVAL.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
               T_tributoVL_CALC_IPT_ADVAL.asfloat   := (T_tributoVL_CALC_IPT_ADVAL.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
               T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (T_tributoVL_IMPOSTO_DEVIDO.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
               T_tributoVL_IPT_A_RECOLHER.asfloat   := (T_tributoVL_IPT_A_RECOLHER.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
               t_tributo.post;
               t_tributo.next;

        end;


        ///acerta peso da di de consumo
        if t_di.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']) then begin
           q_acertapesodi.close;
           q_acertapesodi.params[0].asstring := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
           q_acertapesodi.open;
           perc_pb := ((q_acertapesodipeso_liquido.asfloat*100)/t_transpprocessopeso_liquido.asfloat);
           v_pb    := (t_transpprocessopeso_bruto.asfloat*(perc_pb/100));
           v_pesob := '0000000000'+floattostrf(v_pb,fffixed,10,5);
           v_pesol := '0000000000'+floattostrf(q_acertapesodipeso_liquido.asfloat,fffixed,10,5);
           v_pesob := copy(v_pesob,(length(v_pesob)-15),10)+copy(v_pesob,(length(v_pesob)-4),5);
           v_pesol := copy(v_pesol,(length(v_pesol)-15),10)+copy(v_pesol,(length(v_pesol)-4),5);
           t_di.edit;
           T_diPB_CARGA.asstring              := v_pesob;
           T_diPL_CARGA.asstring              := v_pesol;

           {muda informações complementares consumo}
           T_diTX_INFO_COMPL.asstring         := T_processosTX_INFO_COMPL.asstring;
{
    Q_infocomp1.Close;
    Q_infocomp1.Params[0].AsString := me_nossaref.text;
    Q_infocomp1.open;

    if Q_infocomp1.recordcount > 0 then begin

    T_diTX_INFO_COMPL.asstring    := '|'+chr(13)+chr(10)+'|TRANSBORDO DO '+q_infocomp1qurf.asstring+' PARA '+q_infocomp1qrecalfa.asstring+chr(13)+chr(10)+'|';

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';

    if Q_infocomp1qtipomanifesto.asstring <>'' then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+Q_infocomp1qtipomanifesto.asstring+' Nº: '+Q_infocomp1numeromanifesto.asstring+chr(13)+chr(10)+'|';
    end;

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';

    if Q_infocomp1qtipodoccarga.asstring <>'' then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+Q_infocomp1qtipodoccarga.asstring+' Nº: '+Q_infocomp1numerodoccarga.asstring;
       if Q_infocomp1numeromaster.asstring <>'' then T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+' MASTER: '+Q_infocomp1numeromaster.asstring+chr(13)+chr(10)+'|'
       else T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';

    if Q_infocomp1embarcacao.asstring <>'' then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+' NAVIO: '+Q_infocomp1embarcacao.asstring+' Nº: '+Q_infocomp1numerodoccarga.asstring+chr(13)+chr(10)+'|';
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    if q_infocomp1data_chegada_urf_desp.asstring <>'  /  /    ' then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'DATA DE CHEGADA NA URF DE DESPACHO: '+datetostr(Q_infocomp1data_chegada_urf_desp.asdatetime)+chr(13)+chr(10)+'|';
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    end;

    Q_infocomp2.Close;
    Q_infocomp2.Params[0].AsString := me_nossaref.text;
    Q_infocomp2.open;

    if Q_infocomp2.recordcount > 0 then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'RELAÇÃO DE CONTAINERS:'+CHR(13)+CHR(10)+'|'+CHR(13)+CHR(10)+'|';
       Q_infocomp2.first;
       while not Q_infocomp2.Eof do begin
             T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'Nº: '+q_infocomp2codigo.asstring+' - '+q_infocomp2descricao.asstring+CHR(13)+CHR(10)+'|';
             Q_infocomp2.next;
       end;
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    Q_infocomp3.Close;
    Q_infocomp3.Params[0].AsString := me_nossaref.text;
    Q_infocomp3.open;

    if Q_infocomp3.recordcount > 0 then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'RELAÇÃO DE FATURAS:'+CHR(13)+CHR(10)+'|'+CHR(13)+CHR(10)+'|';
       Q_infocomp3.first;
       while not Q_infocomp3.Eof do begin
             T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'Nº: '+q_infocomp3cdigo.asstring+' - FORNECEDOR: '+q_infocomp3razosocial.asstring+CHR(13)+CHR(10)+'|';
             Q_infocomp3.next;
       end;
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    Q_infocomp6.Close;
    Q_infocomp6.Params[0].AsString := me_nossaref.text;
    Q_infocomp6.open;

    if Q_infocomp6.recordcount > 0 then begin
       ///T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'CERTIFICADOS DE ORIGEM:'+CHR(13)+CHR(10)+'|'+CHR(13)+CHR(10)+'|';
       Q_infocomp6.first;
       while not Q_infocomp6.Eof do begin
             T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'Nº: '+q_infocomp6certificado_origem.asstring+CHR(13)+CHR(10)+'|';
             Q_infocomp6.next;
       end;
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'PESO LIQUIDO: '+floattostrf(q_infocomp1peso_liquido.asfloat,fffixed,15,2)+'KGS'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'PESO BRUTO: '+floattostrf(q_infocomp1peso_bruto.asfloat,fffixed,15,2)+'KGS'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';

    Q_infocomp4.Close;
    Q_infocomp4.Params[0].AsString := me_nossaref.text;
    Q_infocomp4.open;

    if Q_infocomp4.recordcount > 0 then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'RELAÇÃO DE VOLUMES:'+CHR(13)+CHR(10)+'|'+CHR(13)+CHR(10)+'|';
       Q_infocomp4.first;
       while not Q_infocomp4.Eof do begin
             T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+inttostr(strtoint(q_infocomp4quantidade.asstring))+' - '+q_infocomp4descricaoembalagem.asstring+CHR(13)+CHR(10)+'|';
             Q_infocomp4.next;
       end;
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    Q_infocomp5.Close;
    Q_infocomp5.Params[0].AsString := me_nossaref.text;
    Q_infocomp5.open;

    if Q_infocomp5.recordcount > 0 then begin
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'TAXAS DE CONVERSÃO:'+CHR(13)+CHR(10)+'|'+CHR(13)+CHR(10)+'|';
       Q_infocomp5.first;
       while not Q_infocomp5.Eof do begin
             T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+q_infocomp5descricao.asstring+':'+floattostrf(q_infocomp5taxa_conversaoc.asfloat,fffixed,15,5)+CHR(13)+CHR(10)+'|';
             Q_infocomp5.next;
       end;
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'COMISSARIA: MS LOGISTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.'+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';

    t_pro.open;
    while not t_pro.eof do begin
          ////    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: DUILIO MAZUREK RODRIGUES.'+chr(13)+chr(10)+'|';
          ////    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: MANUEL C. DE ALMEIDA MARQUES DA SILVA.'+chr(13)+chr(10)+'|';
          ////    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: VANDERLEI DE JESUS DA MAIA.'+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';
          T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: '+t_proRazoSocial.asstring+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';
          t_pro.next;
    end;
    t_pro.close;

    t_aju.open;
    while not t_aju.eof do begin
          T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'AJUDANTE DE DESPACHANTE: '+t_ajuRazoSocial.asstring+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';
          t_aju.next;
    end;
    t_aju.close;

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. MS:'+me_nossaref.text+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. CLIENTE:'+T_processosCdigo_Cliente.asstring+chr(13)+chr(10)+'|';
}

           t_di.post;

           ///acerta valor da di de consumo
           {testar moedas das faturas}
           t_faturas.first;
           t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
           v_moedaigual := true;
           v_moeda      := t_faturasmoeda.asstring;
           v_totfat     := 0;
           v_totfatm    := 0;
           while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
                if v_moeda <> t_faturasmoeda.asstring then begin
                    v_moeda      := '790'; {moeda real}
                    v_moedaigual := false;
                end;
                t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                     if t_tributositem.findkey([q_processosempresa.asstring,q_processosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='1' then begin
                                 //mm 23082006 teste
                                 //v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 //v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversaoc.asfloat);
                                 v_totfatm := v_totfatm+((t_itensfaturasvalor_aduaneiro.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 v_totfat  := v_totfat+(((t_itensfaturasvalor_aduaneiro.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversaoc.asfloat);
                              end;
                              t_tributositem.next;
                        end;
                     end;
                     t_itensfaturas.next;
               end;
               t_faturas.next;
           end;

           t_di.edit;
           T_diCD_MOEDA_MLE.asstring     := v_moeda;
           T_diIN_MOEDA_UNICA.asboolean  := v_moedaigual;
           if v_moedaigual = true then begin
              T_diVL_TOT_MLE_MNEG.asfloat   := v_totfatm;
              T_diVL_TOTAL_MLE_MN.asfloat   := v_totfat;
              end
           else begin
              T_diVL_TOT_MLE_MNEG.asfloat   := 0;
              T_diVL_TOTAL_MLE_MN.asfloat   := v_totfat;
           end;
           t_di.post;

           ///acerta fretes e seguro da di de consumo
           q_acertafretseg.close;
           q_acertafretseg.params[0].asstring := me_nossaref.text;
           q_acertafretseg.params[1].asstring := '1';
           q_acertafretseg.open;

           t_di.Edit;
           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then begin
///aqui
              if t_processosnr_declaracao_imp.asstring='' then begin
                 T_diVL_TOT_FRT_PREPAID.asfloat     := ((q_acertafretsegprepaid.asfloat*q_acertafretsegtaxa_conversaoc.asfloat)/q_acertafretsegtaxa_conversaocfre.asfloat);
                 T_diVL_TOT_FRT_COLLECT.asfloat     := ((q_acertafretsegcollect.asfloat*q_acertafretsegtaxa_conversaoc.asfloat)/q_acertafretsegtaxa_conversaocfre.asfloat);
                 T_diVL_FRETE_TNAC_MNEG.asfloat     := ((q_acertafretsegternac.asfloat*q_acertafretsegtaxa_conversaoc.asfloat)/q_acertafretsegtaxa_conversaocfre.asfloat);
                 ////T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat)*q_acertafretsegtaxa_conversao.asfloat;
                 T_diVL_TOTAL_FRETE_MN.asfloat      :=  (T_diVL_TOT_FRT_PREPAID.asfloat+T_diVL_TOT_FRT_COLLECT.asfloat-T_diVL_FRETE_TNAC_MNEG.asfloat)*q_acertafretsegtaxa_conversaocfre.asfloat;
                 end
              else begin
                 T_diVL_TOT_FRT_PREPAID.asfloat     := ((q_acertafretsegprepaid.asfloat*q_acertafretsegtaxa_conversao.asfloat)/q_acertafretsegtaxa_conversaofre.asfloat);
                 T_diVL_TOT_FRT_COLLECT.asfloat     := ((q_acertafretsegcollect.asfloat*q_acertafretsegtaxa_conversao.asfloat)/q_acertafretsegtaxa_conversaofre.asfloat);
                 T_diVL_FRETE_TNAC_MNEG.asfloat     := ((q_acertafretsegternac.asfloat*q_acertafretsegtaxa_conversao.asfloat)/q_acertafretsegtaxa_conversaofre.asfloat);
                 ////T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat)*q_acertafretsegtaxa_conversao.asfloat;
                 T_diVL_TOTAL_FRETE_MN.asfloat      :=  (T_diVL_TOT_FRT_PREPAID.asfloat+T_diVL_TOT_FRT_COLLECT.asfloat-T_diVL_FRETE_TNAC_MNEG.asfloat)*q_acertafretsegtaxa_conversaocfre.asfloat;

              end;
           end;

           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
              T_diVL_TOT_SEGURO_MNEG.asfloat     := ((q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversaoc.asfloat)/q_acertafretsegtaxa_conversaocseg.asfloat);
              ////T_diVL_TOTAL_SEG_MN.asfloat        := (q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversao.asfloat);
              T_diVL_TOTAL_SEG_MN.asfloat        := (T_diVL_TOT_SEGURO_MNEG.asfloat*q_acertafretsegtaxa_conversaocseg.asfloat);
           end;


           {
           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then begin
              T_diVL_TOT_FRT_PREPAID.asfloat     := (q_acertafretsegprepaid.asfloat);
              T_diVL_TOT_FRT_COLLECT.asfloat     := (q_acertafretsegcollect.asfloat);
              T_diVL_FRETE_TNAC_MNEG.asfloat     := (q_acertafretsegternac.asfloat);
              T_diVL_TOTAL_FRETE_MN.asfloat      := ((q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat)*q_acertafretsegtaxa_conversaoc.asfloat);
           end;

           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
              T_diVL_TOT_SEGURO_MNEG.asfloat     := (q_acertafretsegseguro.asfloat);
              T_diVL_TOTAL_SEG_MN.asfloat        := (q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversaoc.asfloat);
           end;}


           t_di.post;

           t_processos.edit;
           t_processosvalor_fobc.asfloat  := t_divl_total_mle_mn.asfloat;
           t_processosvalor_cifc.asfloat  := (t_processosvalor_fobc.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
           t_processos.Post;

        end;

           {////acerta tributos di de consumo
           t_tributo.first;
           if t_tributo.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']) then begin
              qii:=0;
              while ((not t_tributo.eof) and (t_tributoNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do begin
                     t_arrumaadicoes.findkey([t_tributoNR_DECL_IMP_MICRO.asstring,t_tributoNR_OP_IMP_MICRO.asstring]);
                     t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
                     t_tributo.edit;
                     if t_tributoCD_RECEITA_IMPOSTO.asstring = '0001' then begin
                     T_tributoVL_BASE_CALC_ADVAL.asfloat := T_arrumaadicoesvl_base_calculo_mn.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat := ((T_tributoVL_BASE_CALC_ADVAL.asfloat*(T_tributoPC_ALIQ_NORM_ADVAL.asfloat/100)));
                     qii := T_tributoVL_CALC_IPT_ADVAL.asfloat;
                     end;

                     if t_tributoCD_RECEITA_IMPOSTO.asstring = '0002' then begin

                     T_tributoVL_BASE_CALC_ADVAL.asfloat := qii+T_arrumaadicoesvl_base_calculo_mn.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat := ((T_tributoVL_BASE_CALC_ADVAL.asfloat*(T_tributoPC_ALIQ_NORM_ADVAL.asfloat/100)));
                     end;

                     t_tributo.post;
                     t_tributo.next;
              end;
           end;}

           ///acerta pagamento de tributos di de consumo
           {zera tributos por di}
           if t_pagtributos.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']) then begin
              while ((not t_pagtributos.eof) and (t_pagtributosNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do begin
                    t_pagtributos.delete;
              end;
           end;
           q_acertapagtrib.close;
           q_acertapagtrib.params[0].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
           q_acertapagtrib.params[1].asstring := '1';
           q_acertapagtrib.open;

           ///mm 25/04/2006
           if q_acertapagtrib.RecordCount>0 then begin

          {grava ii}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ii.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_II_a_recolher.asfloat*q_acertapagtribtaxa_conversaoc.asfloat);
          t_pagtributos.post;
          qiic :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

          {grava ipi}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ipi.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_IPI_a_recolher.asfloat*q_acertapagtribtaxa_conversaoc.asfloat);
          t_pagtributos.post;
          qipic :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

          {grava sis}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_sis.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 30;
          for i := 1 to (apri) do begin
              if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
              if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
              if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
              if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
              if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
              if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
          end;
          t_pagtributos.post;
          qtxc :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
          end;

     end;
   processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,TRUE);

   showmessage(v_usuario+', foram geradas as DIs:'+#13#10#13#10+
              'Ref: '+me_nossaref.text+' = Admissão Temporária e Consumo (12)'+#13#10+
              'Ref: '+me_nossaref.text+'-ADM'+' = Somente Admissão Temporária (05)'+#13#10+
              'Ref: '+me_nossaref.text+'-CON'+' = Somente Consumo (01)'+#13#10);

   tem2dis := true;
   end
   else begin  ////não é codigo 12 em 20/04/2006 - mm
               ///então grava integral no fob cif
               ///somente 1 DI
               tem2dis := false;

           if t_di.findkey([t_processosNR_DECL_IMP_MICRO.asstring]) then begin

              t_processos.edit;
              t_processosvalor_fob.asfloat  := t_divl_total_mle_mn.asfloat;
              t_processosvalor_cif.asfloat  := (t_processosvalor_fob.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
              t_processos.Post;

           end;

   end;

end;

if not v_analise then begin
   AtuNet('ItensFaturas',          [q_processosEmpresa.asstring,q_processosFilial.asstring,q_processosprocesso.asstring],'U');
   AtuNet('Tributacao_Item_Fatura',[q_processosEmpresa.asstring,q_processosFilial.asstring,q_processosprocesso.asstring],'U');
end;

tbProregimp.edit;
///    tbproregimpBanco: TStringField;
///    tbproregimpAgencia: TStringField;
///    tbproregimpConta_Corrente: TStringField;
    tbproregimpII.asfloat := qii;
    tbproregimpIPI.asfloat := qipi;
    tbproregimpTaxa_SISCOMEX.asfloat := qtx;
///    tbproregimpBancoc: TStringField;
///    tbproregimpAgenciac: TStringField;
///    tbproregimpConta_Correntec: TStringField;
    tbproregimpIIc.asfloat := qiic;
    tbproregimpIPIc.asfloat := qipic;
    tbproregimpTaxa_SISCOMEXc.asfloat := qtxc;
tbProregimp.post;


if (t_processostipo_declarao.asstring='12') and (tem2dis) then begin
   showmessage(v_usuario+', foram calculados os valores:'+#13#10+
'Admissão'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cif.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fob.asfloat)+#13#10+
'II  R$ '+floattostr(qii)+#13#10+
'IPI R$ '+floattostr(qipi)+#13#10+
'TAXA SISCOMEX R$ '+floattostr(qtx)+#13#10+#13#10+
'Consumo'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cifc.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fobc.asfloat)+#13#10+
'II  R$ '+floattostr(qii)+#13#10+
'IPI R$ '+floattostr(qipi)+#13#10+
'TAXA SISCOMEX R$ '+floattostr(qtx)+#13#10+#13#10+
'verificar da pasta "desembaraço"')
end
else begin
showmessage(v_usuario+', foram calculados os valores:'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cif.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fob.asfloat)+#13#10+
'II  R$ '+floattostr(qii)+#13#10+
'IPI R$ '+floattostr(qipi)+#13#10+
'TAXA SISCOMEX R$ '+floattostr(qtx)+#13#10+#13#10+
'verificar da pasta "desembaraço"')

end;

MessageDlg(v_usuario+' seu SISCOMEX foi Atualizado!', mtInformation,[mbOk], 0);

end;

procedure Tf_prodidsi.atualizadi(Sender: TObject);
var v_pesob:string;
    v_pesol:string;
    v_moedaigual:boolean;
    v_moeda:string;
    v_totfat:real;
    v_totfatm:real;
    v_opri:boolean;
    v_fat:string;
    v_co:string;
    v_con:string;
    v_textoinf: textfile;
    v_fatant:string;
    v_coant:string;
    v_di:string;
    v_base_calc_ii:real;
begin
    taxaconvn(f_prodidsi);
    t_di.last;
    if t_di.recordcount>0 then begin
       t_numerador.edit;
       t_numeradorNR_PROV_DECLARACAO.asinteger := strtoint(copy(T_diNR_DECL_IMP_MICRO.asstring,1,5))+1;
       t_numerador.post;
    end
    else begin
       t_numerador.edit;
       t_numeradorNR_PROV_DECLARACAO.asinteger := 1;
       t_numerador.post;
    end;

    t_processos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
    t_di.first;
    if ((not t_di.findkey([t_processosNR_DECL_IMP_MICRO.asstring])) or (t_processosNR_DECL_IMP_MICRO.asstring='')) then begin
       t_numerador.first;
       v_di := '00000'+inttostr(t_numeradorNR_PROV_DECLARACAO.asinteger)+'/'+copy(inttostr(t_numeradorNR_ANO_DECLARACAO.asinteger),3,2);
       v_di := copy(v_di,(length(v_di)-7),8);
       while t_di.state = dsinsert do begin
       end;
       t_di.append;
       T_diNR_DECL_IMP_MICRO.asstring     := v_di;
       T_diNR_IDENT_USUARIO.asstring      := t_processoscdigo.asstring;
       T_diCD_TIPO_DECLARACAO.asstring     := inttostr(strtoint(t_processosTipo_Declarao.asstring));
       t_importadores.first;
       t_importadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,t_processosImportador.asstring]);
       if t_importadorestipoimportador.asstring<>'' then T_diCD_TIPO_IMPORTADOR.asstring    := t_importadorestipoimportador.asstring;
       if T_importadoresCNPJ_CPF_COMPLETO.asstring<>'' then T_diNR_IMPORTADOR.asstring         := T_importadoresCNPJ_CPF_COMPLETO.asstring;
       if v_analise = false then T_diCD_TIPO_PGTO_TRIB.asstring     := '1';
       t_diNR_CONTA_PGTO_TRIB.asstring := t_contacorrente_regconta_corrente.asstring;

       t_di.post;

       //while t_numerador.state = dsedit do begin
       //end;
       t_numerador.edit;
       t_numeradorNR_PROV_DECLARACAO.asinteger :=(t_numeradorNR_PROV_DECLARACAO.asinteger+1);
       t_numerador.post;

       //while t_processos.state = dsedit do begin
       //end;
       t_processos.edit;
       t_processosNR_DECL_IMP_MICRO.asstring     := v_di;
       t_processos.post;
       t_processos.edit;       

    end{alterei para apagar a di e atualizar com novos dados}
    else begin
       ///while t_di.state = dsinsert do begin
       ///end;
       v_di := t_processosNR_DECL_IMP_MICRO.asstring;
       t_di.delete;
       t_di.append;
       T_diNR_DECL_IMP_MICRO.asstring     := v_di;
       T_diNR_IDENT_USUARIO.asstring      := t_processoscdigo.asstring;
       T_diCD_TIPO_DECLARACAO.asstring    := inttostr(strtoint(t_processosTipo_Declarao.asstring));
       t_importadores.first;
       t_importadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,t_processosImportador.asstring]);
       if t_importadorestipoimportador.asstring<>'' then T_diCD_TIPO_IMPORTADOR.asstring    := t_importadorestipoimportador.asstring;
       if T_importadoresCNPJ_CPF_COMPLETO.asstring<>'' then T_diNR_IMPORTADOR.asstring         := T_importadoresCNPJ_CPF_COMPLETO.asstring;
       if v_analise = false then T_diCD_TIPO_PGTO_TRIB.asstring     := '1';
       t_di.post;

    end;
    t_transpprocesso.first;
    if t_transpprocesso.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]) then begin
    ///while t_di.state = dsedit do begin
    ///end;
    t_di.edit;
    T_diCD_MODALIDADE_DESP.asstring    := '1'; {antecipado}
    T_diIN_OPERACAO_FUNDAP.asboolean   := T_transpprocessoOperacao_FUNDAP.asboolean;
    if T_transpprocessoURF_chegada.asstring<>'' then T_diCD_URF_ENTR_CARGA.asstring     := T_transpprocessoURF_chegada.asstring;
    if T_transpprocessoURF_Despacho.asstring<>''then T_diCD_URF_DESPACHO.asstring       := T_transpprocessoURF_Despacho.asstring;
    {T_diCD_TIPO_CONSIG.asstring        := '1'; {1=cgc
    T_diNR_CONSIGNATARIO.asstring      := ' ';
    T_diNM_CONSIGNATARIO.asstring      := ' ';}
    if T_transpprocessoPais_Procedencia.asstring<>'' then T_diCD_PAIS_PROC_CARGA.asstring    := T_transpprocessoPais_Procedencia.asstring;
    if T_transpprocessoVia.asstring<>'' then T_diCD_VIA_TRANSP_CARG.asstring    := T_transpprocessoVia.asstring;
    if T_diCD_VIA_TRANSP_CARG.asstring ='A' then T_diCD_VIA_TRANSP_CARG.asstring    := '10';
    T_diIN_MULTIMODAL.asboolean        := T_transpprocessoMultimodal.asboolean;
    if T_transpprocessoPLaca.asstring<>'' then T_diNR_VEICULO_TRANSP.asstring     := T_transpprocessoPLaca.asstring;
    if T_transpprocessoEmbarcacao.asstring<>'' then T_diNM_VEICULO_TRANSP.asstring     := T_transpprocessoEmbarcacao.asstring;
    t_transportadores.first;
    t_transportadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,T_transpprocessoTransportador.asstring]);
    if T_transportadoresRazoSocial.asstring<>'' then T_diNM_TRANSPORTADOR.asstring      := T_transportadoresRazoSocial.asstring;
    if T_transportadoresPas.asstring <>'' then T_diCD_BANDEIRA_TRANSP.asstring    := T_transportadoresPas.asstring;
    {T_diCD_TIPO_AG_CARGA.asstring      := '0';
    T_diNR_AGENTE_CARGA.asstring       := T_transpprocessoAgente.asstring+' ';}
    if T_transpprocessoTipodoccarga.asstring<>''then T_diCD_TIPO_DCTO_CARGA.asstring    := T_transpprocessoTipodoccarga.asstring;
    if T_transpprocessoNumerodoccarga.asstring<>'' then T_diNR_DCTO_CARGA.asstring      := T_transpprocessoNumerodoccarga.asstring;
    if T_transpprocessoNumeromaster.asstring<>'' then T_diNR_DCTO_CARGA_MAST.asstring    := T_transpprocessoNumeromaster.asstring;
    if T_transpprocessoLocal.asstring<>'' then T_diNM_LOCAL_EMBARQUE.asstring     := T_transpprocessoLocal.asstring;
    if T_transpprocessoData.asstring<>'' then T_diDT_EMBARQUE.asstring           := (copy(T_transpprocessoData.asstring,1,2)+copy(T_transpprocessoData.asstring,4,2)+copy(T_transpprocessoData.asstring,7,4));
    if T_transpprocessoUtilizacao.asstring<>'' then T_diCD_UTIL_DCTO_CARGA.asstring    := T_transpprocessoUtilizacao.asstring;
    v_pesob := '0000000000'+floattostrf(T_transpprocessoPeso_Bruto.asfloat,fffixed,10,5);
    v_pesol := '0000000000'+floattostrf(T_transpprocessoPeso_Liquido.asfloat,fffixed,10,5);
    v_pesob := copy(v_pesob,(length(v_pesob)-15),10)+copy(v_pesob,(length(v_pesob)-4),5);
    v_pesol := copy(v_pesol,(length(v_pesol)-15),10)+copy(v_pesol,(length(v_pesol)-4),5);
    T_diPB_CARGA.asstring              := v_pesob;
    T_diPL_CARGA.asstring              := v_pesol;
    {if T_transpprocessoData_Chegada_urf_desp.asstring<>'' then T_diDT_CHEGADA_CARGA.asstring      := (copy(T_transpprocessoData_Chegada_urf_desp.asstring,1,2)+copy(T_transpprocessoData_Chegada_urf_desp.asstring,4,2)+copy(T_transpprocessoData_Chegada_urf_desp.asstring,7,4));}
    if T_transpprocessoData_Chegada_urf_cheg.asstring<>'' then T_diDT_CHEGADA_CARGA.asstring      := (copy(T_transpprocessoData_Chegada_urf_cheg.asstring,1,2)+copy(T_transpprocessoData_Chegada_urf_cheg.asstring,4,2)+copy(T_transpprocessoData_Chegada_urf_cheg.asstring,7,4));
    if T_transpprocessoTipomanifesto.asstring<>'' then T_diCD_TIPO_MANIFESTO.asstring     := T_transpprocessoTipomanifesto.asstring;
    if T_transpprocessoNumeromanifesto.asstring<>'' then T_diNR_MANIFESTO.asstring          := T_transpprocessoNumeromanifesto.asstring;
    if T_transpprocessoRecinto_Alfandegario.asstring<>'' then T_diCD_RECINTO_ALFAND.asstring     := T_transpprocessoRecinto_Alfandegario.asstring;
    if T_transpprocessoSetor_Alfandegario.asstring<>'' then T_diCD_SETOR_ARMAZENAM.asstring    := T_transpprocessoSetor_Alfandegario.asstring;
    if T_transpprocessoMoeda_Frete.asstring<>'' then T_diCD_MOEDA_FRETE.asstring        := T_transpprocessoMoeda_Frete.asstring;
    T_diVL_TOT_FRT_PREPAID.asfloat     := T_transpprocessoFrete_Prepaid.asfloat;
    T_diVL_TOT_FRT_COLLECT.asfloat     := T_transpprocessoFrete_Collect.asfloat;
    T_diVL_FRETE_TNAC_MNEG.asfloat     := T_transpprocessoFrete_Ter_Nac.asfloat;
    if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then
       T_diVL_TOTAL_FRETE_MN.asfloat      := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*t_taxaconvtaxa_conversao.asfloat);

    if T_transpprocessoMoeda_Seguro.asstring<>'' then T_diCD_MOEDA_SEGURO.asstring       := T_transpprocessoMoeda_Seguro.asstring;
    T_diVL_TOT_SEGURO_MNEG.asfloat     := T_transpprocessoValor_Seguro.asfloat;
    if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then
       T_diVL_TOTAL_SEG_MN.asfloat        := (T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat);

    T_diCD_MOEDA_DESPESAS.asstring     := ' ';{seria as despesas ate fob}
    T_diVL_TOT_DESPS_MNEG.asfloat      := 0;  {seria as despesas ate fob}
    T_diVL_TOT_DESPS_MN.asfloat        := 0;  {seria as despesas ate fob}
    T_diCD_TIPO_PGTO_TRIB.asstring     := '1';

    {testar moedas das faturas}
    t_faturas.first;
    t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
    v_moedaigual := true;
    v_moeda      := t_faturasmoeda.asstring;
    v_totfat     := 0;
    v_totfatm    := 0;
    while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
          if v_moeda <> t_faturasmoeda.asstring then begin
             v_moeda      := '790'; {moeda real}
             v_moedaigual := false;
          end;
          t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

          {somar vmle}
          t_itensfaturas.first;
          t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
          while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin

                ///mm 23082006 teste
                //v_totfatm := v_totfatm+t_itensfaturasvmle.AsFloat;
                //v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*t_taxaconvtaxa_conversao.asfloat);
                v_totfatm := v_totfatm+t_itensfaturasvalor_aduaneiro.AsFloat;
                v_totfat  := v_totfat+(t_itensfaturasvalor_aduaneiro.AsFloat*t_taxaconvtaxa_conversao.asfloat);

                t_itensfaturas.next;
          end;
          t_faturas.next;
    end;

    T_diCD_MOEDA_MLE.asstring     := v_moeda;
    T_diIN_MOEDA_UNICA.asboolean  := v_moedaigual;
    if v_moedaigual = true then begin
       T_diVL_TOT_MLE_MNEG.asfloat   := v_totfatm;
       T_diVL_TOTAL_MLE_MN.asfloat   := v_totfat;
    end
    else begin
       T_diVL_TOT_MLE_MNEG.asfloat   := 0;
       T_diVL_TOTAL_MLE_MN.asfloat   := v_totfat;
    end;

    T_diTX_INFO_COMPL.asstring         := T_processosTX_INFO_COMPL.asstring;

    t_di.post;

    if t_processostipo_declarao.asstring<>'12' then begin
       t_processos.edit;
       t_processosvalor_fob.asfloat  := t_divl_total_mle_mn.asfloat;
       t_processosvalor_cif.asfloat  := (t_processosvalor_fob.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
       t_processos.Post;
    end;   

    t_di.close;
    t_di.open;

    {gerar informacoes complementares


    ////
|
|TRANSBORDO DO (URF de chegada) PARA (recinto alfandegado).
|
|DTA. NR.:10001056. ( tipo manifento carga - nr manifesto carga - tabela conhecimento processo)
|
|BL NR.:AAE6037M. (tipo doc carga - nr doc carga- tabela conhecimento conhecimento processo)
|
|NAVIO:ALIANCA BAHIA. (embarcação)
|
|DATA DE CHEGADA NO EADI:23/02/2001 (dt chegada urf despacho)
|
|CONTAINER:         ( relação de containers)
|NR:CMCU4901635 / 1 X 40.
|NR:CLHU8082630 / 1 X 40.
|
|FATURA COMERCIAL NR:38170798. (Para cada fatura, mencionar o nr, fornecedor e forma de pg câmbio)
|
|FORNECEDOR:RENAULT FRANCA.
|
|FORMA DE PAGAMENTO:ROF TA104293.
|
|PESO LIQUIDO:17.148,00KGS (peso liq do processo)
|
|PESO BRUTO:20.180,00KGS (peso bruto processo)
|
|QUANTIDADE DE VOLUMES:78. (Quantidade  e tipos de volumes concargas)
|
|TAXAS DE CONVERSÃO: (Taxas de conversão)
|DOLAR:2,0240.
|
|TAXA DE UTILIZACAO: R$158,00. (tx siscomex - tá certo no sistema?)
|
|TRIBUTACAO: (quando a parte de cima estiver pronta fazemos a tributação onde o buraco é mais embaixo)
|
|IMPORTACAO COM REDUCAO DE 40% PARA II, CONFORME LEI Nº .
|10182 DE 12 DE FEVEREIRO DE 2001, ARTIGO 5º.
|
|IMPORTACAO COM SUSPENSAO DE IPI, CONFORME LEI 9826
|DE 1999.
|
|COMISSARIA: MS LOGISTICA ADUANEIRA E TRANSPORTES 
|INTEGRADOS LTDA.
|
|REPRESENTANTE LEGAL: DUILIO MAZUREK RODRIGUES.
|REPRESENTANTE LEGAL: MANUEL C. DE ALMEIDA MARQUES DA SILVA.
|REPRESENTANTE LEGAL: VANDERLEI DE JESUS DA MAIA.
|
|REF. MS:2296/01.
|REF. RENAULT:CKDFM-7750/01R.
|
|Para Paranaguá ACRESCENTAR
|PRESENÇA DE CARGA:
|
|Tributação da Argentina c/ Certificado de Origem
|
|IMPORTACAO COM COMPLEMENTACAO ECONOMICA ACE-18,
|DECRETO 550 DE 1992.

    Q_infocomp.Close;
    Q_infocomp.Params[0].AsString := me_nossaref.text;
    Q_infocomp.open;



    ////

    Q_infcomp.Close;
    Q_infcomp.Params[0].AsString := q_processosempresa.asstring;
    Q_infcomp.Params[1].AsString := q_processosfilial.asstring;
    Q_infcomp.Params[2].AsString := me_nossaref.text;
    Q_infcomp.open;

    T_diTX_INFO_COMPL.asstring         := '';
    q_infcomp.first;
    v_fat :='';
    v_fatant := '';
    v_coant  := q_infcompCertificado_Origem.asstring;
    v_co  :='';
    v_con :='';
    v_opri :=true;
    while not q_infcomp.eof do begin
          if v_opri = true then v_fat := 'Faturas: ';
          if v_fatant <> q_infcompCdigo.asstring then v_fat := v_fat+q_infcompCdigo.asstring+','
          else v_fatant := q_infcompCdigo.asstring;

          if (q_infcompCertificado_Origem.asstring<>'') then begin
             if v_opri = true then v_co := 'Certificados de Origem: ';
             if (v_coant <> q_infcompCertificado_Origem.asstring) then v_co := v_co+q_infcompCertificado_Origem.asstring+','
                else v_coant  := q_infcompCertificado_Origem.asstring;
          end;

          if v_opri = true then begin
               v_con   :=       'Containers: '+q_infcompCodigo.asstring+'/'+q_infcompDescricao_tipo.asstring+'/'+q_infcompLacre.asstring+chr(13);
             end
          else v_con   := v_con+'            '+q_infcompCodigo.asstring+'/'+q_infcompDescricao_tipo.asstring+'/'+q_infcompLacre.asstring+chr(13);

          q_infcomp.next;
          v_opri := false;
    end;

    q_infcomp.first;
    assignfile(v_textoinf,'infcomp.txt');
    rewrite(v_textoinf);
    writeln(v_textoinf,q_infcompRazao_Social.asstring);
    writeln(v_textoinf,'Filial: '+q_infcompDescricao.asstring);
    writeln(v_textoinf,'Embarcação: '+q_infcompembarcacao.asstring);
    writeln(v_textoinf,'Nº Conhecimento House: '+q_infcompNumerodoccarga.asstring);
    writeln(v_textoinf,'Nº Conhecimento Master: '+q_infcompNumeromaster.asstring);
    writeln(v_textoinf,'Placa: '+q_infcompplaca.asstring);
    writeln(v_textoinf,v_con);
    t_urf.FindKey([q_infcompURF_chegada.asstring]);
    writeln(v_textoinf,'URF Chegada: '+q_infcompURF_chegada.asstring+t_urfdescricao.asstring+' Data Chegada: '+q_infcompData_Chegada_URF_Cheg.asstring);
    writeln(v_textoinf,'Presença de Carga: '+q_infcompCodigo_Presenca_Carga.asstring);
    if q_infcompTipomanifesto.AsString = '1' then    writeln(v_textoinf,'Tipo: Manifesto de Carga  Nº'+q_infcompNumeromanifesto.asstring);
    if q_infcompTipomanifesto.AsString = '2' then    writeln(v_textoinf,'Tipo: Termo de Entrada  Nº'+q_infcompNumeromanifesto.asstring);
    if q_infcompTipomanifesto.AsString = '3' then    writeln(v_textoinf,'Tipo: DTA  Nº'+q_infcompNumeromanifesto.asstring);
    if q_infcompTipomanifesto.AsString = '4' then    writeln(v_textoinf,'Tipo: MIC/DTA  Nº'+q_infcompNumeromanifesto.asstring);
    t_urf.FindKey([q_infcompURF_Despacho.asstring]);
    writeln(v_textoinf,'URF Desapcho '+q_infcompURF_Despacho.asstring+t_urfdescricao.asstring+' Data Chegada: '+q_infcompData_Chegada_URF_Desp.asstring);
    t_recintos.findkey([q_infcompRecinto_Alfandegario.asstring]);
    writeln(v_textoinf,'Local de Despacho: '+q_infcompRecinto_Alfandegario.asstring+' '+t_recintosdescricao.asstring);
    writeln(v_textoinf,v_fat);
    writeln(v_textoinf,'Nº ROF: '+q_infcompROFBACEN.asstring);
    writeln(v_textoinf,'Nº Contrato de Câmbio: '+q_infcompContrato.asstring);
    writeln(v_textoinf,v_co);
    writeln(v_textoinf,'Ato Concessório: '+q_infcompAto_Concessorio.asstring);
    closefile(v_textoinf);

    T_diTX_INFO_COMPL.loadfromfile('infcomp.txt');

    t_di.post;

    Q_infcomp.Close;}

    {faz rateio por item de fatura}
    ///if messagedlg('Atualiza Rateio dos Itens da Faturas?',mtconfirmation,[mbno,mbyes],0)= mryes then
    rateio2(f_prodidsi);
    {atualizar tributacao}
    t_tributositem.first;
    t_tributositem.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
    while ((not T_tributositem.eof) and (t_tributositemempresa.asstring = q_processosempresa.asstring)and(t_tributositemfilial.asstring = q_processosfilial.asstring)and(t_tributositemprocesso.asstring = me_nossaref.text)) do begin

          t_faturas.first;
          t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_tributositemfatura.asstring]);

          t_itensfaturas.first;
          t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial,me_nossaref.text,t_tributositemfatura.asstring,T_tributositemSequencial_Item.asstring]);
          t_ncm.first;
          t_ncm.findkey([t_itensfaturasncm.asstring]);

          v_base_calc_ii := ((T_itensfaturasBase_Calc_II.asfloat/T_itensfaturasQuantidade.asfloat)*T_tributositemQuantidade.asfloat);

          //while t_tributositem.state = dsedit do begin
          //end;
          T_tributositem.edit;

       {verifica se tem percentual EX se tiver iguala a aliquota do ii ao ex}
///       if (T_tributositemPercentual_EX.asstring='') then begin
///          if (T_ncmALIQUOTA_II.asstring='') or (T_ncmALIQUOTA_II.asstring='NT') then T_tributositemAliq_NCM_II.asfloat   := 0
///          else  T_tributositemAliq_NCM_II.asfloat   := T_ncmALIQUOTA_II.asfloat;
///          end
///       else T_tributositemAliq_NCM_II.asfloat   := T_tributositemPercentual_EX.asfloat;

       {se regime trib = imunidade
       1 RECOLHIMENTO INTEGRAL
       2 IMUNIDADE
       3 ISENCAO
       4 REDUCAO
       5 SUSPENSAO
       6 NAO INCIDENCIA
       7 TRIBUTACAO SIMPLIFICADA
       8 TRIBUTACAO SIMPLIFICADA DE BAGAGEM
       }
       if ((T_tributositemRegime_Tributacao_II.asstring = '2') or
            (T_tributositemRegime_Tributacao_II.asstring = '6')) then
          T_tributositemAliq_NCM_II.asfloat          := 0;

       if T_tributositemACORDO_ALADI.asstring <> '' then begin
          T_tributositemValor_II_Devido.asfloat      := (v_base_calc_ii*((T_tributositemAliq_NCM_II.asfloat-(T_tributositemAliq_NCM_II.asfloat*(T_tributositemALIQUOTA_ALADI.asfloat/100)))/100));
          T_tributositemValor_II_a_recolher.asfloat  := T_tributositemValor_II_Devido.asfloat;
          end
       else begin
          T_tributositemValor_II_Devido.asfloat      :=(v_base_calc_ii*(T_tributositemAliq_NCM_II.asfloat/100));
          T_tributositemValor_II_a_recolher.asfloat  := ((T_tributositemValor_II_Devido.asfloat-(T_tributositemValor_II_Devido.asfloat*(T_tributositemPercentual_Reducao_II.asfloat/100))));
       end;

       {se isencao ou suspensao zera o arecolher}
       if ((T_tributositemRegime_Tributacao_II.asstring = '3') or
        (T_tributositemRegime_Tributacao_II.asstring = '5')) then
          T_tributositemValor_II_a_recolher.asfloat  := 0;

///       if (T_ncmALIQUOTA_IPI.asstring='') or (T_ncmALIQUOTA_IPI.asstring='NT') then T_tributositemAliq_NCM_IPI.asfloat  := 0
       ////T_tributositemAliq_NCM_IPI.asfloat         := T_ncmALIQUOTA_IPI.asfloat;
       {
       4 RECOLHIMENTO INTEGRAL
       2 REDUCAO
       5 SUSPENSAO
       1 ISENCAO
       3 NÃO TRIBUTÁVEL

       }
       if (T_tributositemRegime_Tributacao_IPI.asstring = '3') then T_tributositemAliq_NCM_IPI.asfloat := 0;

       if (T_tributositemRegime_Tributacao_II.asstring = '5') then
          T_tributositemBase_Calc_IPI.asfloat        := (v_base_calc_ii+T_tributositemValor_II_Devido.asfloat)
       else T_tributositemBase_Calc_IPI.asfloat      := (v_base_calc_ii+T_tributositemValor_II_a_recolher.asfloat);

       T_tributositemValor_IPI_Devido.asfloat     := (T_tributositemBase_Calc_IPI.asfloat*(T_tributositemAliq_NCM_IPI.asfloat/100));
       T_tributositemValor_IPI_Devido.asfloat     := ((T_tributositemValor_IPI_Devido.asfloat-(T_tributositemValor_IPI_Devido.asfloat*(T_tributositemPercentual_Reduca_IPI.asfloat/100))));
       T_tributositemValor_IPI_a_recolher.asfloat := ((T_tributositemValor_IPI_Devido.asfloat-(T_tributositemValor_IPI_Devido.asfloat*(T_tributositemPercentual_Reduca_IPI.asfloat/100))));

       {se isencao ou suspensao zera o arecolher}
       if ((T_tributositemRegime_Tributacao_IPI.asstring = '1') or
          (T_tributositemRegime_Tributacao_IPI.asstring = '5')) then T_tributositemValor_IPI_a_recolher.asfloat  := 0;
       if (T_tributositemRegime_Tributacao_IPI.asstring = '3') then begin
          T_tributositemValor_IPI_Devido.asfloat      := 0;
          T_tributositemValor_IPI_a_recolher.asfloat  := 0;
       end;
       //T_tributositem.post;
       T_tributositem.next;
   end;

    end;
end;

procedure Tf_prodidsi.taxaconvn(Sender: TObject);

var qmoeda:string;
    qtaxa:string;

begin
try
if (t_processosNR_DECLARACAO_IMP.asstring ='') or (t_processosNR_DECLARACAO_IMPC.asstring ='') then begin
   t_transpprocesso.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);

   /// frete conhecimento
   qmoeda := t_transpprocessoMoeda_frete.asstring;
   if t_cambio.findkey([qmoeda]) then begin
      qtaxa := t_cambiotaxa_conversao.asstring;
      taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,t_transpprocessoMoeda_frete,qtaxa);
   end;

   /// seguro conhecimento
   qmoeda := t_transpprocessoMoeda_seguro.asstring;
   if t_cambio.findkey([qmoeda]) then begin
      qtaxa := t_cambiotaxa_conversao.asstring;
      taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,t_transpprocessoMoeda_seguro,qtaxa);
   end;

   /// despesas ate fob do conhecimento
   qmoeda := t_transpprocessoMoeda_despesas_ate_fob.asstring;
   if t_cambio.findkey([qmoeda]) then begin
      qtaxa := t_cambiotaxa_conversao.asstring;
      taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,t_transpprocessoMoeda_despesas_ate_fob,qtaxa);
   end;

   /// faturas do processo
   t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
   while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
         qmoeda := t_faturasmoeda.asstring;
         if t_cambio.findkey([qmoeda]) then begin
            qtaxa := t_cambiotaxa_conversao.asstring;
            taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,t_faturasmoeda,qtaxa);
         end;
         t_faturas.next;
   end;

end;
except
   On E:Exception do begin
      showmessage(v_usuario + ' ocorreu um erro na atualização da taxa de conversão! Atualize Novamente.');
      end;
   end;

end;


procedure TF_prodidsi.FormCreate(Sender: TObject);
begin
q_processos.close;
q_processos.open;
end;

procedure Tf_prodidsi.rateio2(Sender: TObject);
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

T_transpprocesso.first;
t_transpprocesso.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);

{rateio de frete,seguro e despesas ate fob}
taxa_frete_pre :=(T_transpprocessoFrete_Prepaid.asfloat/T_transpprocessopeso_liquido.asfloat);
taxa_frete_col :=(T_transpprocessoFrete_Collect.asfloat/T_transpprocessopeso_liquido.asfloat);
taxa_frete_ter :=(T_transpprocessoFrete_Ter_Nac.asfloat/T_transpprocessopeso_liquido.asfloat);

peso_exw := 0;
v_valtot := 0;
t_faturas.first;
t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando Faturas EXW...',0,false);
while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
       processamento('Aguarde verificando Faturas EXW...',0,false);
       if t_faturasincoterm.asstring = 'EXW' then peso_exw := (peso_exw+T_faturasPesoTotal_Acertado.asfloat);
       {v_valtot := (v_valtot+t_faturasvalortotal.asfloat);}
       if T_faturasCoberturaCambial.asstring<>'4' then begin

          {///cambio diferente de antecipado
          ///if T_faturasstatus_cambio.asstring <> '3' then begin
          t_faturas.edit;
          if T_faturasPeriodicidade.asstring = '' then
             t_faturasdt_prev_pag_cambio.asdatetime   := t_transpprocessodata.asdatetime
          else
             t_faturasdt_prev_pag_cambio.asdatetime   := (t_transpprocessodata.asdatetime+strtoint(T_faturasPeriodicidade.asstring));

          if ((T_faturasModalidadedePagamento.asstring = '10') or
              (T_faturasModalidadedePagamento.asstring = '20') or
              (T_faturasModalidadedePagamento.asstring = '21')) then begin
              ////t_faturasdt_pag_cambio.asdatetime   := t_faturasdt_prev_pag_cambio.asdatetime;
              t_faturasdt_pag_cambio.asdatetime   := t_transpprocessodata.asdatetime;
              t_faturasstatus_cambio.asstring := '2';
          end;

          t_faturas.post;
          ///end;}
       end;
       t_faturas.next;
end;
processamento('Aguarde verificando Faturas EXW...',0,true);

v_totfrete_pre :=0;
v_totfrete_col :=0;
v_totfrete_ter :=0;

if T_transpprocessoValor_Despesas_ate_fob.asfloat = 0 then taxa_desp_fob := 0
else taxa_desp_fob  :=(T_transpprocessoValor_Despesas_ate_fob.asfloat/peso_exw);

t_itensfaturas.first;
t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
      processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
      ///t_itensfaturas.edit;
      t_faturas.first;
      if t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]) then begin
         if t_faturasincoterm.asstring = 'EXW' then v_t_itensfaturasRateio_despesas_ate_fob := (t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_desp_fob)
         else v_t_itensfaturasRateio_despesas_ate_fob := 0;
      end;

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

      {Calcula valor aduaneiro conforme incoterms da fatura}
      t_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
      if T_faturasacrescimos_reducoes.asboolean = false then
         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalortotal.asfloat+
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
      (t_itensfaturasRateio_carga_imp.asfloat        *t_itensfaturasquantidade.asfloat))///+
      else begin
         v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalortotal.asfloat;
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

////mm 03/08/2006 base de cálculo do ii para capatazia de salvador
/// entra valor carga_imp no valor da mercadoria
/// *************************************************************************
     if (q_processosurf_chegada.asstring='0517700') or (q_processosurf_chegada.asstring='0517600') then begin
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
      (t_itensfaturasRateio_seguro_fatura.asfloat    *t_itensfaturasquantidade.asfloat));
//      showmessage('passou aqui 1');
     end;

      v_t_itensfaturasVMLE             := (v_t_itensfaturasvalor_mercadoria+
      (t_itensfaturasRateio_Embalagem.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
      (v_t_itensfaturasRateio_Despesas_ate_FOB*t_itensfaturasquantidade.asfloat));

      ///MM 24082006 TESTE
      ///v_t_itensfaturasVMLE             := v_t_itensfaturasvalor_mercadoria;

      v_t_itensfaturasBase_Calc_II     := (v_t_itensfaturasVMLE+
      (v_t_itensfaturasRateio_Frete_prepaid*t_itensfaturasquantidade.asfloat)+
      (v_t_itensfaturasRateio_Frete_collect*t_itensfaturasquantidade.asfloat)-
      (v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Seguro.asfloat       *t_itensfaturasquantidade.asfloat));

      //mm 23082006 teste
      //if (t_faturasincoterm.asstring = 'EXW') then begin
      //    v_t_itensfaturasBase_Calc_II     := v_t_itensfaturasBase_Calc_II+(t_itensfaturasRateio_Acrescimos.asfloat*t_itensfaturasquantidade.asfloat);
      //end;

////mm 03/08/2006 base de cálculo do ii para capatazia de salvador
/// *************************************************************************
///     if (q_processosurf_chegada.asstring='0517700') or (q_processosurf_chegada.asstring='0517600') then begin
///         v_t_itensfaturasBase_Calc_II     := (v_t_itensfaturasVMLE+
//        (v_t_itensfaturasRateio_Frete_prepaid*t_itensfaturasquantidade.asfloat)+
//        (v_t_itensfaturasRateio_Frete_collect*t_itensfaturasquantidade.asfloat)-
//        (v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat)+
//        (t_itensfaturasRateio_Seguro.asfloat       *t_itensfaturasquantidade.asfloat)+
//        (t_itensfaturasRateio_carga_imp.asfloat       *t_itensfaturasquantidade.asfloat));
//     end;
/// *************************************************************************

      if ((t_faturasincoterm.asstring = 'EXW') or
          (t_faturasincoterm.asstring = 'FOB') or
          (t_faturasincoterm.asstring = 'FCA') or
          (t_faturasincoterm.asstring = 'FAS'))then

///         v_t_itensfaturasAcresc_reduc_Valaduan :=
///         ((v_t_itensfaturasBase_Calc_II)-
///         (t_itensfaturasRateio_Seguro.asfloat*t_itensfaturasquantidade.asfloat)-
///         ((v_t_itensfaturasRateio_Frete_prepaid*t_itensfaturasquantidade.asfloat)+
///         (v_t_itensfaturasRateio_Frete_collect*t_itensfaturasquantidade.asfloat)-
///         (v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat))-
///         (v_t_itensfaturasValor_Aduaneiro));

//mm 25082006 teste
         v_t_itensfaturasAcresc_reduc_Valaduan := (v_t_itensfaturasvalor_aduaneiro-v_t_itensfaturasVMLE);


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

      {calcula valor totaldo vmle em real para calculo do seguro}
      t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
      v_valtot := (v_valtot+(v_t_itensfaturasVMLE*t_taxaconvtaxa_conversao.asfloat));

      try
      {substituir por sql}

      q_up_itens.params[ 0].asfloat  := v_t_itensfaturasRateio_Frete_Prepaid;
      q_up_itens.params[ 1].asfloat  := v_t_itensfaturasRateio_Frete_Collect;
      q_up_itens.params[ 2].asfloat  := v_t_itensfaturasRateio_Frete_ternac;
      q_up_itens.params[ 3].asfloat  := v_t_itensfaturasRateio_despesas_ate_fob;
      q_up_itens.params[ 4].asfloat  := v_t_itensfaturasvalor_aduaneiro;
      q_up_itens.params[ 5].asfloat  := v_t_itensfaturasvalor_mercadoria;
      q_up_itens.params[ 6].asfloat  := v_t_itensfaturasVMLE;
      q_up_itens.params[ 7].asfloat  := v_t_itensfaturasBase_Calc_II;
      q_up_itens.params[ 8].asfloat  := v_t_itensfaturasAcresc_reduc_Valaduan;
      q_up_itens.params[ 9].asstring := t_itensfaturasempresa.asstring;
      q_up_itens.params[10].asstring := t_itensfaturasfilial.asstring;
      q_up_itens.params[11].asstring := t_itensfaturasprocesso.asstring;
      q_up_itens.params[12].asstring := t_itensfaturasfatura.asstring;
      q_up_itens.params[13].asstring := t_itensfaturassequencial.asstring;
      q_up_itens.execsql;

      {
      t_itensfaturas.edit;
      t_itensfaturasRateio_Frete_Prepaid.asfloat    := v_t_itensfaturasRateio_Frete_Prepaid;
      t_itensfaturasRateio_Frete_Collect.asfloat    := v_t_itensfaturasRateio_Frete_Collect;
      t_itensfaturasRateio_Frete_ternac.asfloat     := v_t_itensfaturasRateio_Frete_ternac;
      t_itensfaturasRateio_despesas_ate_fob.asfloat := v_t_itensfaturasRateio_despesas_ate_fob;
      t_itensfaturasvalor_aduaneiro.asfloat         := v_t_itensfaturasvalor_aduaneiro;
      t_itensfaturasvalor_mercadoria.asfloat        := v_t_itensfaturasvalor_mercadoria;
      t_itensfaturasVMLE.asfloat                    := v_t_itensfaturasVMLE;
      t_itensfaturasBase_Calc_II.asfloat            := v_t_itensfaturasBase_Calc_II;
      t_itensfaturasAcresc_reduc_Valaduan.asfloat   := v_t_itensfaturasAcresc_reduc_Valaduan;
      t_itensfaturas.post;
      }

      t_itensfaturas.next;
      except
          On E:Exception do begin
              ///showmessage(v_usuario+' Ocorreu algum erro de processamento. Atualize novamente!');
          end;
      end;

end;
processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,true);


{gravando arredondamento de frete para o 1 item de fatura}
t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);
ofretepre := (T_transpprocessoFrete_Prepaid.asfloat*t_taxaconvtaxa_conversao.asfloat);
ofretecol := (T_transpprocessoFrete_Collect.asfloat*t_taxaconvtaxa_conversao.asfloat);
ofreteter := (T_transpprocessoFrete_Ter_Nac.asfloat*t_taxaconvtaxa_conversao.asfloat);

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

   t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
   q_taxa := floattostr(t_taxaconvtaxa_conversao.asfloat);

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
      t_itensfaturas.edit;
      t_itensfaturasRateio_Frete_Prepaid.asfloat    := v_t_itensfaturasRateio_Frete_Prepaid;
      t_itensfaturasRateio_Frete_Collect.asfloat    := v_t_itensfaturasRateio_Frete_Collect;
      t_itensfaturasRateio_Frete_ternac.asfloat     := v_t_itensfaturasRateio_Frete_ternac;
      t_itensfaturas.post;
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
         if t_acrescimosCD_MET_ACRES_VALOR.asstring = '7' then  v_totfrete_fat   := (v_totfrete_fat+t_acrescimosvl_acrescimo_moeda.asfloat);
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

      ////alterei em 04/01/2005
      ////UPDATE ItensFaturas SET ItensFaturas.Rateio_frete_fatura = (([itensfaturas].[rateio_frete_prepaid]+[itensfaturas].[rateio_frete_collect])-[itensfaturas].[rateio_frete_ternac])
      ///WHERE (((ItensFaturas.Processo)=:qprocesso)); 
      q_update2.close;
      q_update2.params[0].asstring  := me_nossaref.text;
      q_update2.execsql;
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
      if t_acrescimosCD_MET_ACRES_VALOR.asstring = '8  ' then  begin
         ////calculando total seguro fatura em reais
         t_faturas.first;
         t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_acrescimosfatura.asstring]);
         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
         v_totseguro_fat  := (v_totseguro_fat+(t_acrescimosvl_acrescimo_moeda.asfloat*t_taxaconvtaxa_conversao.asfloat));
      end;
      t_acrescimos.next;
end;
///passando o total seguro fatura para a moeda do seguro do conhecimento
if v_totseguro_fat > 0 then begin
   t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
   v_totseguro_fat  := (v_totseguro_fat/t_taxaconvtaxa_conversao.asfloat);
end;

processamento('Aguarde verificando rateio seguro fatura...',0,true);

{gravando rateio seguro por vmle}
t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
taxa_seguro    :=((T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat)/v_valtot);

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
      t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

      {unitario em real}
      v_t_itensfaturasRateio_Seguro          := ((t_itensfaturasVMLE.asfloat/t_itensfaturasquantidade.asfloat)*t_taxaconvtaxa_conversao.asfloat);

      {unitario em real x a taxa de rateio}
      v_t_itensfaturasRateio_Seguro          := (v_t_itensfaturasRateio_Seguro*taxa_seguro);

      ///{valor convertido para real}
      ///t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
      ///v_t_itensfaturasRateio_Seguro         := (v_t_itensfaturasRateio_Seguro*t_taxaconvtaxa_conversao.asfloat);

      {valor convertido para moeda da fatura}
      t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
      v_t_itensfaturasRateio_Seguro          := (v_t_itensfaturasRateio_Seguro/t_taxaconvtaxa_conversao.asfloat);

      {valor truncado para 5 decimais}
      v_t_itensfaturasRateio_Seguro          := strtofloat(floattostrf(v_t_itensfaturasRateio_Seguro ,fffixed,10,5));

      if  (v_totseguro_fat = T_transpprocessoValor_Seguro.asfloat) then begin
          v_t_itensfaturasrateio_seguro_fatura  := v_t_itensfaturasrateio_seguro;
      end;
///      else v_t_itensfaturasrateio_seguro_fatura := t_itensfaturasrateio_seguro_fatura.AsFloat;

      {Calcula valor aduaneiro conforme incoterms da fatura}
      t_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
      if T_faturasacrescimos_reducoes.asboolean = false then
         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalortotal.asfloat+
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
      (t_itensfaturasRateio_carga_imp.asfloat        *t_itensfaturasquantidade.asfloat))///+
      else begin
         v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalortotal.asfloat;
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

////mm 03/08/2006 base de cálculo do ii para capatazia de salvador
/// entra valor carga_imp no valor da mercadoria
/// *************************************************************************
     if (q_processosurf_chegada.asstring='0517700') or (q_processosurf_chegada.asstring='0517600') then begin
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
      (t_itensfaturasRateio_seguro_fatura.asfloat    *t_itensfaturasquantidade.asfloat));
     end;

      v_t_itensfaturasVMLE             := (v_t_itensfaturasvalor_mercadoria+
      (t_itensfaturasRateio_Embalagem.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
      (v_t_itensfaturasRateio_Despesas_ate_FOB*t_itensfaturasquantidade.asfloat));

//mm 25082006 teste
///      v_t_itensfaturasVMLE             := (v_t_itensfaturasvalor_mercadoria+
///      (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
///      (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
///      (t_itensfaturasRateio_Embalagem.asfloat        *t_itensfaturasquantidade.asfloat)+
///      (t_itensfaturasRateio_jurosfin.asfloat         *t_itensfaturasquantidade.asfloat)+
///      (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
///      (t_itensfaturasRateio_Despesas_ate_FOB.asfloat *t_itensfaturasquantidade.asfloat));

      ///MM 24082006 TESTE
      ///v_t_itensfaturasVMLE             := v_t_itensfaturasvalor_mercadoria;

      v_t_itensfaturasBase_Calc_II     := (v_t_itensfaturasVMLE+
      (v_t_itensfaturasRateio_Frete_prepaid*t_itensfaturasquantidade.asfloat)+
      (v_t_itensfaturasRateio_Frete_collect*t_itensfaturasquantidade.asfloat)-
      (v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Seguro.asfloat       *t_itensfaturasquantidade.asfloat));


       //mm 23082006 teste
      //if (t_faturasincoterm.asstring = 'EXW') then begin
      //    v_t_itensfaturasBase_Calc_II     := v_t_itensfaturasBase_Calc_II+(t_itensfaturasRateio_Acrescimos.asfloat*t_itensfaturasquantidade.asfloat);
      //end;

      if ((t_faturasincoterm.asstring = 'EXW') or
          (t_faturasincoterm.asstring = 'FOB') or
          (t_faturasincoterm.asstring = 'FCA') or
          (t_faturasincoterm.asstring = 'FAS'))then

///         v_t_itensfaturasAcresc_reduc_Valaduan :=
//         ((v_t_itensfaturasBase_Calc_II)-
//         (v_t_itensfaturasRateio_Seguro*t_itensfaturasquantidade.asfloat)-
//         ((t_itensfaturasRateio_Frete_prepaid.asfloat*t_itensfaturasquantidade.asfloat)+
//         (t_itensfaturasRateio_Frete_collect.asfloat*t_itensfaturasquantidade.asfloat)-
//         (t_itensfaturasRateio_Frete_ternac.asfloat*t_itensfaturasquantidade.asfloat))-
//         (v_t_itensfaturasValor_Aduaneiro));

//mm 25082006 teste
         v_t_itensfaturasAcresc_reduc_Valaduan := (v_t_itensfaturasvalor_aduaneiro-v_t_itensfaturasVMLE);

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

      try
      t_itensfaturas.edit;
      t_itensfaturasvalor_aduaneiro.asfloat         := v_t_itensfaturasvalor_aduaneiro;
      t_itensfaturasvalor_mercadoria.asfloat        := v_t_itensfaturasvalor_mercadoria;
      t_itensfaturasVMLE.asfloat                    := v_t_itensfaturasVMLE;
      t_itensfaturasBase_Calc_II.asfloat            := v_t_itensfaturasBase_Calc_II;
      t_itensfaturasAcresc_reduc_Valaduan.asfloat   := v_t_itensfaturasAcresc_reduc_Valaduan;
      t_itensfaturasrateio_seguro.asfloat           := v_t_itensfaturasrateio_seguro;
      t_itensfaturasrateio_seguro_fatura.asfloat    := v_t_itensfaturasrateio_seguro_fatura;
      t_itensfaturas.post;
      t_itensfaturas.next;
      except
           On E:Exception do begin
              ///showmessage(v_usuario+' Ocorreu algum erro de processamento. Atualize novamente!');
          end;
      end;

end;
processamento('Aguarde rateio do seguro por vmle...',0,true);

///showmessage('Rateio efetuado com successo.');

end;

procedure TF_prodidsi.b_fechaClick(Sender: TObject);
begin
pinf.visible := false;
end;

procedure TF_prodidsi.pinfExit(Sender: TObject);
begin
pinf.visible := false;
if alterou_PROPIS then begin
   alterou_PROPIS := false;
   AtuNet('Processos_ADICOES_ICMS_PIS_COFINS',[q_processosEmpresa.asstring,q_processosFilial.asstring,q_processosprocesso.asstring],'U');
end;
end;

procedure TF_prodidsi.binfClick(Sender: TObject);
begin
if t_processosTX_INFO_COMPL.asstring='' then b_processaclick(f_prodidsi);
pinf.visible := true;
b_processa.setfocus;
end;

procedure TF_prodidsi.b_gravaClick(Sender: TObject);

begin
if (v_AlteraPRO) then begin
t_processos.edit;
t_processos.post;
end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;
end;

procedure TF_prodidsi.b_processaClick(Sender: TObject);
var qtxt:string;
    qRegime_Tributacao_II: String;
    qFundamento_Legal_II: String;
    qMotivo_Adm_Temp: String;
    qNumero_Ato_Legal_II: String;
    qPercentual_Reducao_II: REAL;
    qAto_Concessorio: String;
    qRegime_Tributacao_IPI: String;
    qNumero_Ato_Legal_IPI: String;
    qPercentual_Reduca_IPI,qtaxasis,qtdfor: REAL;
    qadi,qregii,qregipi:string;
    opri,i,qtfat,qteste:integer;
    temato,imprimiu:boolean;
    total_pis,total_cofins,total_icms:real;
    total_pis_s,total_cofins_s,total_icms_s:real;
    qfor,qmod,qper,qind,qcor,qmot,asfat,ver_adicoes,q_suspe,q_suspe_II,q_suspe_IPI:string;
    qACORDO_ALADI: String;
    qNumero_Ato_Legal_ALADI: String;

   qembarque, qchegada, qmaster:string;
   qhouse,qcontainer,qlacre,qlacredta:string;
   qmanifesto,qrecinto,qpresenca,qdtchegada:string;
   qvolumes,qpesoliquido,qpesobruto:string;
   qfrete,qfornecedor:string;



begin

if (v_AlteraPRO) then begin

    ////04/05/2004 - pis cofins
    if t_processosTX_INFO_COMPL.asstring='' then begin
       processa_piscofins := true;
       b_propisClick(f_prodidsi);
       b_recalcClick(f_prodidsi);
       processa_piscofins := false;
    end
    else begin
      processa_piscofins := false;
      q_tributa := true;
      if t_processostipo_declarao.asstring='12' then begin
         if MessageDlg('Preenche Inf. Compl. somente com as adições de CONSUMO - RECOLHIMENTO INTEGRAL?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
            q_tributa := false;
      end;
    end;


    t_processos.edit;
    t_processosTX_INFO_COMPL.Clear;

    qtxt := '';

///alterei em 27062006 mm
if pos('lamaFAURECIA',q_processoscliente.asstring)>0 then begin

   ///////complementares da faurecia 27/06/2006

    Q_infocomp1.Close;
    Q_infocomp1.Params[0].AsString := me_nossaref.text;
    Q_infocomp1.open;

   qembarque := '';
   qembarque := copy(qembarque+'                            ',1,30);
   qchegada  := '';

   qmaster   := '';
   qmaster   := copy(qmaster+'               ',1,15);
   qhouse    := '';
   qcontainer := '';
   qcontainer := copy(qcontainer+'                      ',1,20);
   qlacre    := '';
   qlacre    := copy(qlacre+'             ',1,15);
   qlacredta  := '';
   qmanifesto := '';
   qrecinto   :='';
   qpresenca  := '';
   qdtchegada    :='';
   qvolumes :='';
   qpesoliquido := '0';
   qpesobruto := '0';
   qfrete := '0';

   if Q_infocomp1.recordcount > 0 then begin

       qembarque := Q_infocomp1embarcacao.asstring;
       qembarque := copy(qembarque+'                            ',1,30);

       qmanifesto := Q_infocomp1qtipomanifesto.asstring+' Nº: '+Q_infocomp1numeromanifesto.asstring;

       qchegada  := q_infocomp1data_chegada_urf_cheg.asstring;

       qmaster   := Q_infocomp1numeromaster.asstring;
       qmaster   := copy(qmaster+'               ',1,15);
       qhouse    := Q_infocomp1numerodoccarga.asstring;

       qrecinto  := q_infocomp1qrecalfa.asstring;
       qpresenca := q_infocomp1codigo_presenca_carga.asstring;

       qdtchegada := q_infocomp1data_chegada_urf_desp.asstring;

       qpesoliquido := q_infocomp1peso_liquido.asstring;
       qpesobruto   := q_infocomp1peso_bruto.asstring;

    end;

    Q_infocomp2.Close;
    Q_infocomp2.Params[0].AsString := me_nossaref.text;
    Q_infocomp2.open;

    if Q_infocomp2.recordcount > 0 then begin
       while not Q_infocomp2.Eof do begin
            qcontainer := qcontainer+chr(13)+chr(10)+'|'   +'Container: '+copy(q_infocomp2codigo.asstring+' - '+q_infocomp2descricao.asstring+'                        ',1,40) +' Lacre origem: '+copy(q_infocomp2lacre.asstring+'               ',1,20) +' Lacre DTA: '+qlacredta;
            Q_infocomp2.next;
       end;
    end;

    Q_infocomp4.Close;
    Q_infocomp4.Params[0].AsString := me_nossaref.text;
    Q_infocomp4.open;

    if Q_infocomp4.recordcount > 0 then begin
//       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
//       qtxt := qtxt+chr(13)+chr(10)+'|'+'RELAÇÃO DE VOLUMES:';
//       qtxt := qtxt+chr(13)+chr(10)+'|';
       Q_infocomp4.first;
       while not Q_infocomp4.Eof do begin
            qvolumes := qvolumes+chr(13)+chr(10)+'|'+inttostr(strtoint(q_infocomp4quantidade.asstring))+' - '+q_infocomp4descricao.asstring;
            Q_infocomp4.next;
       end;
    end;




   qfornecedor :='';

   ///    qtxt := qtxt+chr(13)+chr(10)+'         1         2         3         4         5         6     ';
   ///    qtxt := qtxt+chr(13)+chr(10)+'123456789/123456789/123456789/123456879/123456879/123456879/12345';
   qtxt := qtxt+chr(13)+chr(10)+'|';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'               INFORMAÇÕES COMPLEMENTARES FAURECIA';
   ////                                                      123456789/123456789/123456789/
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Navio / Vôo: Saída: '+qembarque                   +' Chegada: '+qchegada;
   //                                                                     123456789/12345
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Conhecimento de Embarque: Master: '+qmaster      +'  House: '+qhouse;
   //                                               123456789/123456789/123456789/       123456789/12345 123456789/
   qtxt := qtxt+chr(13)+chr(10)+qcontainer;//'|'   +'Container: '+qcontainer        +' Lacre origem: '+qlacre       +' Lacre DTA: '+qlacredta;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Manifesto de Carga N°: '+qmanifesto;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Recinto Alfandegado: '+qrecinto;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Presença de Carga: '+qpresenca;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Data de chegada: URF de Entrada: '+qchegada+' URF de Despacho: '+qdtchegada;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Relação e espécie de Volumes: '+qvolumes;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Peso Líquido: '+qpesoliquido+' Peso Bruto: '+qpesobruto;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Termo desistência vistoria oficial:';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'----------------------------------------------------------------';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'                     Termo de Desistência                       ';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Desistimos da Vistoria Aduaneira nos termos do Artigo 586 do    ';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Regulamento Aduaneiro, aprovado pelo Decreto 4543 de 27/12/2002,';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'responsabilizamo-nos por todos e quaisquer ônus decorrente de   ';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'nossa desistência.                                              ';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'----------------------------------------------------------------';
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Frete: '+qfrete;
   qtxt := qtxt+chr(13)+chr(10)+'|'   +'-----------------------------------------------------------------------------------------------------------------------------------------------';



   Q_infocomp3.Close;
   Q_infocomp3.Params[0].AsString := me_nossaref.text;
   Q_infocomp3.open;

   if Q_infocomp3.recordcount > 0 then begin
      Q_infocomp3.first;
      qfor:= q_infocomp3razosocial.asstring;
      qmod:= q_infocomp3descricao.asstring;
      qper:= q_infocomp3periodicidade.asstring;
      qind:= q_infocomp3indicadorperiodicidade.asstring;
      qcor:= q_infocomp3coberturacambial.asstring;
      qmot:= q_infocomp3desc_motscamb.asstring;
      asfat:='';
      qtfat:=0;
      qtdfor:= 1;
       while not Q_infocomp3.Eof do begin
             if ((qfor=q_infocomp3razosocial.asstring) and
                 (qmod=q_infocomp3descricao.asstring) and
                 (qper=q_infocomp3periodicidade.asstring) and
                 (qmot=q_infocomp3desc_motscamb.asstring)) then begin
                  if ((asfat<>'') and (qtfat>0)) then asfat := asfat+','+q_infocomp3cdigo.asstring
                                                 else asfat := asfat+q_infocomp3cdigo.asstring;
                  qtfat:=qtfat+1;
                  if qtfat=3 then begin
                     qtfat:=0;
                     asfat:=asfat+chr(13)+chr(10)+'|'+'               ';
                  end;
                  imprimiu := false;

             end
             else begin
                  qtdfor := qtdfor+1;
                  qtxt := qtxt+chr(13)+chr(10)+'|';
                  qtxt := qtxt+chr(13)+chr(10)+'|'+'Fornecedor   : '+qfor;
                  qtxt := qtxt+chr(13)+chr(10)+'|'+'Fatura: '+asfat+' Data: '+q_infocomp3dtemissao.asstring;
                  if qmod <>'' then
                     qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade de pagamento: '+qmod;
                  if qper<>'' then begin
                     qtxt := qtxt+' Periodicidade: '+qper;
                     if qind='0' then qtxt := qtxt+' dia(s).'
                     else qtxt := qtxt+' mes(es).'
                  end;
                  if qcor='4' then begin
                     qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade de pagamento: Sem cobertura Cambial';
                     qtxt := qtxt+' Motivo Sem Cobertura: '+qmot;
                  end;

                  imprimiu := true;

                  qfor:= q_infocomp3razosocial.asstring;
                  qmod:= q_infocomp3descricao.asstring;
                  qper:= q_infocomp3periodicidade.asstring;
                  qind:= q_infocomp3indicadorperiodicidade.asstring;
                  qcor:= q_infocomp3coberturacambial.asstring;
                  qmot:= q_infocomp3desc_motscamb.asstring;
                  asfat:= q_infocomp3cdigo.asstring;
                  qtfat:=1;

     ////             imprimiu := false ;

             end;

             Q_infocomp3.next;
       end;
       if ((not imprimiu) or (qtdfor>1)) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'Fornecedor   : '+q_infocomp3razosocial.asstring;
          qtxt := qtxt+chr(13)+chr(10)+'|'+'Fatura(s)    : '+asfat;
          if qmod <>'' then
             qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade de pagamento: '+qmod;
          if qper<>'' then begin
             qtxt := qtxt+' Periodicidade: '+qper;
          if qind='0' then qtxt := qtxt+' dia(s).'
                      else qtxt := qtxt+' mes(es).'
          end;
          if qcor='4' then begin
             qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade de pagamento: Sem cobertura Cambial';
             qtxt := qtxt+' Motivo Sem Cobertura: '+qmot;
          end;

       end;
//       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
//       qtxt := qtxt+chr(13)+chr(10)+'|';

    end;

//   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Fornecedor:'qfornecedor;
//   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Fatura: Nº:				Data:			Valor ME:
//   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Modalidade de pagamento:			Periodicidade:

     qtxt := qtxt+chr(13)+chr(10)+'|'   +'Packing List: Nº:							Data:';
     qtxt := qtxt+chr(13)+chr(10)+'|'   +'Certificado de Origem Nº:						Data:';
     qtxt := qtxt+chr(13)+chr(10)+'|'   +'-----------------------------------------------------------------------------------------------------------------------------------------------';

//   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Taxas de Conversão: US$:                                                 		EUR:
//   qtxt := qtxt+chr(13)+chr(10)+'|'   +'Taxa do Siscomex:

    Q_infocomp5.Close;
    Q_infocomp5.Params[0].AsString := me_nossaref.text;
    Q_infocomp5.open;

    if Q_infocomp5.recordcount > 0 then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXAS DE CONVERSÃO:';
           qtxt := qtxt+chr(13)+chr(10)+'|';
       Q_infocomp5.first;
       while not Q_infocomp5.Eof do begin
             qtxt := qtxt+chr(13)+chr(10)+'|'+q_infocomp5descricao.asstring+':'+floattostrf(q_infocomp5taxa_conversao.asfloat,fffixed,15,5);
             Q_infocomp5.next;
       end;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;
    qtaxasis := 30;
    if q_processostaxa_siscomex.asfloat >0 then
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(q_processostaxa_siscomex.asfloat,ffFixed,15,2))
    else begin

        q_pagtributos.Close;
        q_pagtributos.Params[0].AsString := q_processosempresa.asstring;
        q_pagtributos.Params[1].AsString := q_processosfilial.asstring;
        q_pagtributos.Params[2].AsString := me_nossaref.text;
        q_pagtributos.open;

        while not q_pagtributos.eof do begin

            for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
                if ((i >= 1 )  and (i <= 2 ))  then  qtaxasis := qtaxasis+10;
                if ((i >= 3 )  and (i <= 5 ))  then  qtaxasis := qtaxasis+8;
                if ((i >= 6 )  and (i <= 10 )) then  qtaxasis := qtaxasis+6;
                if ((i >= 11)  and (i <= 20))  then  qtaxasis := qtaxasis+4;
                if ((i >= 21)  and (i <= 50))  then  qtaxasis := qtaxasis+2;
                if (i >= 51) then  qtaxasis := qtaxasis+1;
            end;

            q_pagtributos.next;

        end;

        qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(qtaxasis,ffFixed,15,2));

    end;
///    else showmessage('Taxa Siscomex não informada no desembaraço!');

    if q_processostaxa_siscomexc.asfloat >0 then
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX Consumo: '+q_processostaxa_siscomexc.asstring;

     qtxt := qtxt+chr(13)+chr(10)+'|'   +'-----------------------------------------------------------------------------------------------------------------------------------------------';

    temato := false;

    Q_infocomp7.Close;
    Q_infocomp7.Params[0].AsString := me_nossaref.text;
    Q_infocomp7.open;
    if Q_infocomp5.recordcount > 0 then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTAÇÃO:';

       while not q_infocomp7.eof do begin

           qRegime_Tributacao_II  := q_infocomp7Regime_Tributacao_II.asstring;
           qFundamento_Legal_II   := q_infocomp7Fundamento_Legal_II.asstring;
           qMotivo_Adm_Temp       := q_infocomp7Motivo_Adm_Temp.asstring;
           qNumero_Ato_Legal_II   := q_infocomp7Numero_Ato_Legal_II.asstring;
           qPercentual_Reducao_II := q_infocomp7Percentual_Reducao_II.asfloat;
           qAto_Concessorio       := q_infocomp7Ato_Concessorio.asstring;
           qRegime_Tributacao_IPI := q_infocomp7Regime_Tributacao_IPI.asstring;
           qNumero_Ato_Legal_IPI  := q_infocomp7Numero_Ato_Legal_IPI.asstring;
           qPercentual_Reduca_IPI := q_infocomp7Percentual_Reduca_IPI.asfloat;
           qACORDO_ALADI          := q_infocomp7ACORDO_ALADI.asstring;
           qNumero_Ato_Legal_ALADI:= q_infocomp7Numero_Ato_Legal_ALADI.asstring;

           qadi:= '|ADIÇÕES: ';
           qregii:='|REGIME TRIBUTAÇÃO II: ';
           if q_infocomp7Regime_Tributacao_II.asstring = '1' then qregii := qregii+'RECOLHIMENTO INTEGRAL';
           if q_infocomp7Regime_Tributacao_II.asstring = '9' then qregii := qregii+'RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)';
           if q_infocomp7Regime_Tributacao_II.asstring = '2' then qregii := qregii+'IMUNIDADE';
           if q_infocomp7Regime_Tributacao_II.asstring = '3' then qregii := qregii+'ISENÇÃO';
           if q_infocomp7Regime_Tributacao_II.asstring = '4' then qregii := qregii+'REDUÇÃO';
           if q_infocomp7Regime_Tributacao_II.asstring = '5' then qregii := qregii+'SUSPENSÃO';
           if q_infocomp7Regime_Tributacao_II.asstring = '6' then qregii := qregii+'NÃO INCIDÊNCIA';
           if q_infocomp7Regime_Tributacao_II.asstring = '7' then qregii := qregii+'TRIBUTAÇÃO SIMPLIFICADA';
           if q_infocomp7Regime_Tributacao_II.asstring = '8' then qregii := qregii+'TRIBUTAÇÃO SIMPLIFICADA DE BAGAGEM';
           if q_infocomp7QFUN.asstring<>'' then
              qregii := qregii+chr(13)+chr(10)+'|Fundamento Legal: '+q_infocomp7QFUN.asstring;
           if q_infocomp7QMOT.asstring<>'' then
              qregii := qregii+chr(13)+chr(10)+'|Motivo Adm.Temp: '+q_infocomp7Qmot.asstring;
           if q_infocomp7Numero_Ato_Legal_II.asstring<>'' then begin
              qregii := qregii+chr(13)+chr(10)+'|Ato Legal: ';
              if q_infocomp7Tipo_Ato_II.asstring<>'' then qregii := qregii+q_infocomp7Tipo_Ato_II.asstring;
              qregii := qregii+' Nº '+q_infocomp7Numero_Ato_Legal_II.asstring;
              if q_infocomp7Ano_Ato_Legal_II.asstring<>'' then qregii := qregii+' / '+q_infocomp7Ano_Ato_Legal_II.asstring;
              if q_infocomp7obs_alii.asstring<>'' then qregii := qregii+' -  '+q_infocomp7obs_alii.asstring;
           end;

           if q_infocomp7Percentual_Reducao_II.asfloat>0 then
              qregii := qregii+chr(13)+chr(10)+'|Percentual de Redução: '+q_infocomp7Percentual_Reducao_II.asstring+'%';
           if q_infocomp7Ato_Concessorio.asstring<>'' then begin
              temato := true;
              qregii := qregii+chr(13)+chr(10)+'|Ato Concessório: '+ q_infocomp7Ato_Concessorio.asstring;
              qregii := qregii+chr(13)+chr(10)+'|                 '+ q_infocomp7QATO.asstring;
              qregii := qregii+chr(13)+chr(10)+'|                 '+'Vigência: de '+ q_infocomp7Vigencia_inicial.asstring;
              qregii := qregii+' até '+ q_infocomp7Vigencia_final.asstring;
           end;

           //////acordo ALADI - 27/03/2006 - MM
           if q_infocomp7ACORDO_ALADI.asstring<>'' then begin
              if t_aladi.state = dsInactive then t_aladi.open;
              if t_atos.state = dsInactive then t_atos.open;
              if t_tpato.state = dsInactive then t_tpato.open;
              if t_aladi.FindKey([q_infocomp7ACORDO_ALADI.asstring])then begin
                 if t_atos.FindKey([v_empresa,v_filial,'3',q_infocomp7Numero_Ato_Legal_ALADI.asstring]) then begin
                    if not t_tpato.FindKey([t_atosTipo_Ato_Legal.asstring]) then begin
                       qregii := qregii+chr(13)+chr(10)+'|'+ t_aladidescricao.asstring+' - '+t_atosTipo_Ato_Legal.asstring+':'+T_atosNumero.asstring+' DE '+ T_atosAno_Ato_Legal.asstring;
                    end
                    else begin
                       qregii := qregii+chr(13)+chr(10)+'|'+ t_aladidescricao.asstring+' - '+t_tpatodescricao.asstring+':'+T_atosNumero.asstring+' DE '+ T_atosAno_Ato_Legal.asstring;
                    end;
                 end;
              end;
           end;

           qregipi:='|REGIME TRIBUTAÇÃO IPI: ';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '4' then qregipi:=qregipi+'RECOLHIMENTO INTEGRAL';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '9' then qregipi:=qregipi+'RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '2' then qregipi:=qregipi+'REDUÇÃO';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '5' then qregipi:=qregipi+'SUSPENSÃO';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '1' then qregipi:=qregipi+'ISENÇÃO';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '3' then qregipi:=qregipi+'NÃO TRIBUTÁVEL';
           if q_infocomp7Numero_Ato_Legal_IpI.asstring<>'' then begin
              qregipi := qregipi+chr(13)+chr(10)+'|Ato Legal: ';
              if q_infocomp7Tipo_Ato_IpI.asstring<>'' then qregipi := qregipi+q_infocomp7Tipo_Ato_IpI.asstring;
              qregipi := qregipi+' Nº '+q_infocomp7Numero_Ato_Legal_IpI.asstring;
              if q_infocomp7Ano_Ato_Legal_IpI.asstring<>'' then qregipi := qregipi+' / '+q_infocomp7Ano_Ato_Legal_IpI.asstring;
              if q_infocomp7obs_alipi.asstring<>'' then qregipi := qregipi+' -  '+q_infocomp7obs_alipi.asstring;
           end;
           if q_infocomp7Percentual_Reduca_IPI.asfloat>0 then
              qregipi:=qregipi+chr(13)+chr(10)+'|Percentual de Redução: '+q_infocomp7Percentual_Reduca_IPI.asstring+'%';

           opri := 0;

           while ((not q_infocomp7.eof) and
                      (qRegime_Tributacao_II  = q_infocomp7Regime_Tributacao_II.asstring) and
                      (qFundamento_Legal_II   = q_infocomp7Fundamento_Legal_II.asstring) and
                      (qMotivo_Adm_Temp       = q_infocomp7Motivo_Adm_Temp.asstring) and
                      (qNumero_Ato_Legal_II   = q_infocomp7Numero_Ato_Legal_II.asstring) and
                      (qPercentual_Reducao_II = q_infocomp7Percentual_Reducao_II.asfloat) and
                      (qAto_Concessorio       = q_infocomp7Ato_Concessorio.asstring) and
                      (qRegime_Tributacao_IPI = q_infocomp7Regime_Tributacao_IPI.asstring) and
                      (qNumero_Ato_Legal_IPI  = q_infocomp7Numero_Ato_Legal_IPI.asstring) and
                      (qPercentual_Reduca_IPI = q_infocomp7Percentual_Reduca_IPI.asfloat) and
                      (qACORDO_ALADI          = q_infocomp7ACORDO_ALADI.asstring)         and
                      (qNumero_Ato_Legal_ALADI = q_infocomp7Numero_Ato_Legal_ALADI.asstring)) do begin

                 if opri = 0 then
                    qadi := qadi+q_infocomp7Adicao.asstring
                 else qadi := qadi+','+q_infocomp7Adicao.asstring;

                 opri := opri+1;
                 if opri = 14 then begin
                    opri := 0;             ////  '|ADIÇÕES: '
                    qadi := qadi+chr(13)+chr(10)+'|         ';
                 end;

                 q_infocomp7.next;
           end;

           qtxt := qtxt+chr(13)+chr(10)+'|';
           qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
           qtxt := qtxt+chr(13)+chr(10)+qadi;
           qtxt := qtxt+chr(13)+chr(10)+qregii;
           qtxt := qtxt+chr(13)+chr(10)+qregipi;
           qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       end;
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
    end;

    if v_filial = 'CWB' then begin

       /// verificanco 3 = isencao e 16 =drawback
       q_isen_sus.close;
       q_isen_sus.Params[0].asstring := me_nossaref.text;
       q_isen_sus.Params[1].asstring := '3';
       q_isen_sus.Params[2].asstring := '16';
       q_isen_sus.open;
       ver_adicoes := '';
       opri := 0;
       while not q_isen_sus.Eof do begin
             if opri = 0 then begin
                ver_adicoes := q_isen_susadicao.asstring;
                opri := 1;
             end
             else begin
                  ver_adicoes := ver_adicoes+','+q_isen_susadicao.asstring;
             end;
             q_isen_sus.Next;
       end;
       if ver_adicoes<>'' then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'ISENÇÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DA COFINS, PARA AS ADIÇÕES:';
          qtxt := qtxt+chr(13)+chr(10)+'|'+ ver_adicoes+';';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DE ACORDO COM O ARTIGO 9, item II , letra F, ';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'da LEI 10.865 DE 30/04/2004.';
       end;

       /// verificanco 5 = suspencao e 16 =drawback
       q_isen_sus.close;
       q_isen_sus.Params[0].asstring := me_nossaref.text;
       q_isen_sus.Params[1].asstring := '5';
       q_isen_sus.Params[2].asstring := '16';
       q_isen_sus.open;
       ver_adicoes := '';
       opri := 0;
       while not q_isen_sus.Eof do begin
             if opri = 0 then begin
                ver_adicoes := q_isen_susadicao.asstring;
                opri := 1;
             end
             else begin
                  ver_adicoes := ver_adicoes+','+q_isen_susadicao.asstring;
             end;
             q_isen_sus.Next;
       end;
       if ver_adicoes<>'' then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'SUSPENSÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DA COFINS, PARA AS ADIÇÕES:';
          qtxt := qtxt+chr(13)+chr(10)+'|'+ ver_adicoes+';';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DE ACORDO COM O ARTIGO 14 LEI 10.865 DE 30/04/2004.';
       end;

       qtxt := qtxt+chr(13)+chr(10)+'|';


    end;


       ///////////alterado 04/05/2004 pis cofins
    if t_propis.recordcount>0 then begin
       total_pis    := 0;
       total_cofins := 0;
       total_icms   := 0;
       total_pis_s    := 0;
       total_cofins_s := 0;
       total_icms_s   := 0;


       t_propis.first;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'PIS/PASEP E COFINS RECOLHIDOS CONFORME MP164/04:';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'As contribuições de PIS-PASEP E COFINS recolhidas de acordo com';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'o Art. 8º da Lei 10.865 de 30/04/2004.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qteste := 0;
       while not t_propis.eof do begin
             qteste := qteste+1;
             qtxt := qtxt+chr(13)+chr(10)+'|';
             q_suspe := '';
             q_suspe_II := '';
             q_suspe_IPI := '';
             if q_tributa then begin
             if q_piscofinstrib.Locate('Adicao',t_propisadicao.asstring,[loCaseInsensitive]) then begin
                if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe_II := 'II';
                if q_piscofinstribRegime_Tributacao_IPI.asstring='5' then q_suspe_IPI := 'IPI';
             end;
             end;
             if (q_suspe_II<>'') or (q_suspe_IPI<>'') then begin
                q_suspe :=' -> ( SUSPENSÃO ';
                if q_suspe_II<>'' then begin
                   q_suspe := q_suspe+'II';
                   if q_suspe_IPI<>'' then begin
                      q_suspe := q_suspe+' e IPI';
                   end;
                end
                else begin
                   if q_suspe_IPI<>'' then begin
                      q_suspe := q_suspe+'IPI';
                   end;
                end;
                q_suspe := q_suspe+' )';
             end;

             /// proporcional 24/09/2004
             if (t_propisprazo_permanencia.asinteger>0) then begin
                qtxt := qtxt+chr(13)+chr(10)+'| ADIÇÃO..............: '+t_propisadicao.asstring+ ' -> (PROPORCIONAL)'+q_suspe;
                qtxt := qtxt+chr(13)+chr(10)+'| NCM.................: '+t_propisNCM.asstring;
                qtxt := qtxt+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(t_propisva.asfloat,fffixed,10,2)+' -> ( '+floattostrf(t_propisva_proporcional.asfloat,fffixed,10,2) +' )';
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(t_propisaliq_ncm_II.asfloat,fffixed,10,2)+' -> ( '+floattostrf(t_propisaliq_ncm_II_proporcional.asfloat,fffixed,10,2) +' )';
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(t_propisaliq_ncm_ipi.asfloat,fffixed,10,2)+' -> ( '+floattostrf(t_propisaliq_ncm_IPI_proporcional.asfloat,fffixed,10,2) +' )';
             end
             else begin
                qtxt := qtxt+chr(13)+chr(10)+'| ADIÇÃO..............: '+t_propisadicao.asstring+q_suspe;
                qtxt := qtxt+chr(13)+chr(10)+'| NCM.................: '+t_propisNCM.asstring;
                qtxt := qtxt+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(t_propisva.asfloat,fffixed,10,2);
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(t_propisaliq_ncm_II.asfloat,fffixed,10,2);
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(t_propisaliq_ncm_ipi.asfloat,fffixed,10,2);
             end;
             qtxt := qtxt+chr(13)+chr(10)+'| Alíquota ICMS.......: '+floattostrf((t_propisaliq_icms.asfloat+t_propisaliq_icms_extra.asfloat),fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Alíquota PIS/PASEP..: '+floattostrf(t_propisaliq_pis_pasep.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Alíquota COFINS.....: '+floattostrf(t_propisaliq_cofins.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Valor ICMS .........: '+floattostrf(t_propisvalor_icms.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Valor PIS/PASEP.....: '+floattostrf(t_propisvalor_pis_pasep.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Valor COFINS........: '+floattostrf(t_propisvalor_cofins.asfloat,fffixed,10,2);

             if (q_suspe_II='') then begin
                total_pis := total_pis+t_propisvalor_pis_pasep.asfloat;
                total_cofins := total_cofins+t_propisvalor_cofins.asfloat;
                total_icms := total_icms+t_propisvalor_icms.asfloat;
             end
             else begin
                total_pis_s := total_pis_s+t_propisvalor_pis_pasep.asfloat;
                total_cofins_s := total_cofins_s+t_propisvalor_cofins.asfloat;
                total_icms_s := total_icms_s+t_propisvalor_icms.asfloat;
             end;
             t_propis.next;
       end;

       qtxt := qtxt+chr(13)+chr(10)+'|';
       if (total_icms>0) or (total_pis>0) or (total_cofins>0) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total ICMS devido...: '+floattostrf(total_icms,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total PIS/PASEP.....: '+floattostrf(total_pis,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total COFINS........: '+floattostrf(total_cofins,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'|';
       end;
       if (total_icms_s>0) or (total_pis_s>0) or (total_cofins_s>0) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total ICMS (SUSPENSO)........: '+floattostrf(total_icms_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total PIS/PASEP (SUSPENSO)...: '+floattostrf(total_pis_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total COFINS (SUSPENSO)......: '+floattostrf(total_cofins_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'|';
       end;

       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';

    end;


    if ((q_processosfilial.asstring = 'CWB') and (temato))then begin
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'SOLICITAMOS O DESEMBARACO ADUANEIRO DAS MERCADORIAS';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONSTANTES NESTA DI COM SUSPENSAO DO PAGAMENTO DOS';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTOS DE ACORDO COM O DECRETO 4543 de 27/12/2002, ARTIGO 335,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'AMPARADO PELO REGIME ESPECIAL DE DRAWBACK,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'COM BASE NA PORTARIA M.F. 594 DE 25/08/92.';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'ASSUMO INTEIRA RESPONSABILIDADE PELO INTEGRAL CUMPRIMENTO';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DAS OBRIGACOES CONSTANTES DO ATO CONCESSORIO SUPRACITADO,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'NOS COMPROMETENDO, AINDA, A RECOLHER AOS COFRES PUBLICOS,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'NO PRAZO REGULAMENTAR, O VALOR DOS TRIBUTOS SUSPENSOS';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONSTANTES NOS ANEXOS CITADOS DESTA D.I. E INCLUSIVE JUROS,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CORRECAO MONETARIA E DEMAIS ENCARGOS CASO NAO SEJAM';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CUMPRIDAS TODAS AS EXIGENCIAS LEGAIS.';
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
     end;

     qtxt := qtxt+chr(13)+chr(10)+'|';

//Tributação:
//Adição: (resumo por legislação das adições que se enquadram nesta Lei)
//Regime Tributação II: Recolhimento Integral / Redução
//Lei Nº:
//Regime Tributação IPI: Suspensão
//Lei Nº:

//Demonstrativo de cálculo:
//Adição:
//NCM:
//Valor Aduaneiro:
//Alíquota II: 	Valor II:
//Alíquota IPI:	Valor IPI:
//Alíquota ICMS:	Valor ICMS:
//Alíquota PIS/PASEP:	Valor PIS/PASEP:
//Alíquota COFINS:	Valor COFINS:



     qtxt := qtxt+chr(13)+chr(10)+'|'+'-----------------------------------------------------------------------------------------------------------------------------------------------';
     qtxt := qtxt+chr(13)+chr(10)+'|'+'Transportadora';
     qtxt := qtxt+chr(13)+chr(10)+'|'+'-----------------------------------------------------------------------------------------------------------------------------------------------';
     qtxt := qtxt+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
     qtxt := qtxt+chr(13)+chr(10)+'|'+'Representantes Legais autorizados a intervir na DI:';

     t_pro.open;
     while not t_pro.eof do begin
          if t_proexibe_complementares.asboolean then begin
             qtxt := qtxt+chr(13)+chr(10)+'|'+copy('Nome: '+t_proRazoSocial.asstring+'                                   ',1,50);
             qtxt := qtxt+copy(' CPF: '+t_proCGCCPF.asstring+'                           ',1,25)+' - Reg.Desp: '+t_proregistro.asstring;
          end;
          t_pro.next;
     end;
     t_pro.close;

     t_aju.open;
     while not t_aju.eof do begin
          if t_ajuexibe_complementares.asboolean then begin
          qtxt := qtxt+chr(13)+chr(10)+'|'+copy('Nome: '+t_ajuRazoSocial.asstring+'                                              ',1,50);
          qtxt := qtxt+copy(' CPF: '+t_ajuCGCCPF.asstring+'                        ',1,25)+' - Reg.Desp: '+t_ajuregistro.asstring;
          end;
          t_aju.next;
     end;
    t_aju.close;

    qtxt := qtxt+chr(13)+chr(10)+'|'+'-----------------------------------------------------------------------------------------------------------------------------------------------';
    qtxt := qtxt+chr(13)+chr(10)+'|'+copy('Referência Faurecia: '+T_processosCdigo_Cliente.asstring+'                                    ',1,35);
    qtxt := qtxt+' Responsável: '+T_processosResponsavel_Importador.asstring;
    qtxt := qtxt+chr(13)+chr(10)+'|'+copy('Referência Despachante: '+me_nossaref.text+'                                     ',1,35);
    qtxt := qtxt+' Responsável: '+T_processosResponsavel_Empresa.asstring;

    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'Observações gerais: ';

    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+q_processosqfilial.asstring+', '+FormatDateTime('dd " de " mmmm " de " yyyy', date());
    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+q_processoscliente.asstring;






///////final complementares da faurecia 27/06/2006
end
else begin

    Q_infocomp1.Close;
    Q_infocomp1.Params[0].AsString := me_nossaref.text;
    Q_infocomp1.open;

    if Q_infocomp1.recordcount > 0 then begin

///    qtxt := qtxt+chr(13)+chr(10)+'         1         2         3         4         5         6     ';
///    qtxt := qtxt+chr(13)+chr(10)+'123456789/123456789/123456789/123456879/123456879/123456879/12345';
    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'CARGA TRANSFERIDA DO '+q_infocomp1qurf.asstring+' PARA '+q_infocomp1qrecalfa.asstring;

    if Q_infocomp1qtipomanifesto.asstring <> '' then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+Q_infocomp1qtipomanifesto.asstring+' Nº: '+Q_infocomp1numeromanifesto.asstring;
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;

    ////MM - ALTEREI EM 01/07/2004 - CRT
    if Q_infocomp1qtipodoccarga.asstring <>'' then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+Q_infocomp1qtipodoccarga.asstring+' Nº: '+Q_infocomp1numerodoccarga.asstring;
       if Q_infocomp1numeromaster.asstring <>'' then  qtxt := qtxt+chr(13)+chr(10)+'|'+' MASTER: '+Q_infocomp1numeromaster.asstring;
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end
    else begin
         if Q_infocomp1via.asstring = '7' then
            qtxt := qtxt+chr(13)+chr(10)+'|CRT Nº: '+Q_infocomp1numerodoccarga.asstring
         else qtxt := qtxt+chr(13)+chr(10)+'|DOC CARGA Nº: '+Q_infocomp1numerodoccarga.asstring;

         if Q_infocomp1numeromaster.asstring <>'' then  qtxt := qtxt+chr(13)+chr(10)+'|'+' MASTER: '+Q_infocomp1numeromaster.asstring;
         qtxt := qtxt+chr(13)+chr(10)+'|';

    end;

    if Q_infocomp1embarcacao.asstring <>'' then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'EMBARCAÇÃO / Nº DO VÔO: '+Q_infocomp1embarcacao.asstring;
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;

    if q_infocomp1data_chegada_urf_cheg.asstring <>'  /  /    ' then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DATA DE CHEGADA NA URF DE ENTRADA: '+datetostr(Q_infocomp1data_chegada_urf_cheg.asdatetime);
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;

    if q_infocomp1data_chegada_urf_desp.asstring <>'  /  /    ' then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DATA DE CHEGADA NA URF DE DESPACHO: '+datetostr(Q_infocomp1data_chegada_urf_desp.asdatetime);
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;

    if q_infocomp1codigo_presenca_carga.asstring <>'' then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'PRESENÇA DE CARGA: '+q_infocomp1codigo_presenca_carga.asstring;
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;


    end;

    Q_infocomp2.Close;
    Q_infocomp2.Params[0].AsString := me_nossaref.text;
    Q_infocomp2.open;

    if Q_infocomp2.recordcount > 0 then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'IDENTIFICAÇÃO DA CARGA:';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       Q_infocomp2.first;
       while not Q_infocomp2.Eof do begin
            qtxt := qtxt+chr(13)+chr(10)+'|'+'Nº: '+q_infocomp2codigo.asstring+' - '+q_infocomp2descricao.asstring;
            Q_infocomp2.next;
       end;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;

    Q_infocomp3.Close;
    Q_infocomp3.Params[0].AsString := me_nossaref.text;
    Q_infocomp3.open;

    if Q_infocomp3.recordcount > 0 then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'RELAÇÃO DE FATURAS:';
       Q_infocomp3.first;
       qfor:= q_infocomp3razosocial.asstring;
       qmod:= q_infocomp3descricao.asstring;
       qper:= q_infocomp3periodicidade.asstring;
       qind:= q_infocomp3indicadorperiodicidade.asstring;
       qcor:= q_infocomp3coberturacambial.asstring;
       qmot:= q_infocomp3desc_motscamb.asstring;
       asfat:='';
       qtfat:=0;
       qtdfor:= 1;
       while not Q_infocomp3.Eof do begin
             if ((qfor=q_infocomp3razosocial.asstring) and
                 (qmod=q_infocomp3descricao.asstring) and
                 (qper=q_infocomp3periodicidade.asstring) and
                 (qmot=q_infocomp3desc_motscamb.asstring)) then begin
                  if ((asfat<>'') and (qtfat>0)) then asfat := asfat+','+q_infocomp3cdigo.asstring
                                                 else asfat := asfat+q_infocomp3cdigo.asstring;
                  qtfat:=qtfat+1;
                  if qtfat=3 then begin
                     qtfat:=0;
                     asfat:=asfat+chr(13)+chr(10)+'|'+'               ';
                  end;
                  imprimiu := false;

             end
             else begin
                  qtdfor := qtdfor+1;
                  qtxt := qtxt+chr(13)+chr(10)+'|';
                  qtxt := qtxt+chr(13)+chr(10)+'|'+'Fatura(s)    : '+asfat;
                  qtxt := qtxt+chr(13)+chr(10)+'|'+'Fornecedor   : '+qfor;
                  if qmod <>'' then
                     qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: '+qmod;
                  if qper<>'' then begin
                     qtxt := qtxt+chr(13)+chr(10)+'|'+'Periodicidade: '+qper;
                     if qind='0' then qtxt := qtxt+' dia(s).'
                     else qtxt := qtxt+' mes(es).'
                  end;
                  if qcor='4' then begin
                     qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: Sem cobertura Cambial';
                     qtxt := qtxt+chr(13)+chr(10)+'|'+'Motivo Sem Cobertura: '+qmot;
                  end;

                  imprimiu := true;

                  qfor:= q_infocomp3razosocial.asstring;
                  qmod:= q_infocomp3descricao.asstring;
                  qper:= q_infocomp3periodicidade.asstring;
                  qind:= q_infocomp3indicadorperiodicidade.asstring;
                  qcor:= q_infocomp3coberturacambial.asstring;
                  qmot:= q_infocomp3desc_motscamb.asstring;
                  asfat:= q_infocomp3cdigo.asstring;
                  qtfat:=1;

     ////             imprimiu := false ;

             end;

             Q_infocomp3.next;
       end;
       if ((not imprimiu) or (qtdfor>1)) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'Fatura(s)    : '+asfat;
          qtxt := qtxt+chr(13)+chr(10)+'|'+'Fornecedor   : '+q_infocomp3razosocial.asstring;
          if qmod <>'' then
             qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: '+qmod;
          if qper<>'' then begin
             qtxt := qtxt+chr(13)+chr(10)+'|'+'Periodicidade: '+qper;
          if qind='0' then qtxt := qtxt+' dia(s).'
                      else qtxt := qtxt+' mes(es).'
          end;
          if qcor='4' then begin
             qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: Sem cobertura Cambial';
             qtxt := qtxt+chr(13)+chr(10)+'|'+'Motivo Sem Cobertura: '+qmot;
          end;

       end;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|';

    end;

    Q_infocomp6.Close;
    Q_infocomp6.Params[0].AsString := me_nossaref.text;
    Q_infocomp6.open;

    if Q_infocomp6certificado_origem.asstring <>'' then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CERTIFICADOS DE ORIGEM:';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       Q_infocomp6.first;
       while not Q_infocomp6.Eof do begin
            qtxt := qtxt+chr(13)+chr(10)+'|'+'Nº: '+q_infocomp6certificado_origem.asstring;
            Q_infocomp6.next;
       end;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|';

    end;

    qtxt := qtxt+chr(13)+chr(10)+'|'+'PESO LIQUIDO: '+floattostrf(q_infocomp1peso_liquido.asfloat,fffixed,15,2)+'KGS';
    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'PESO BRUTO: '+floattostrf(q_infocomp1peso_bruto.asfloat,fffixed,15,2)+'KGS';
    qtxt := qtxt+chr(13)+chr(10)+'|';

    Q_infocomp4.Close;
    Q_infocomp4.Params[0].AsString := me_nossaref.text;
    Q_infocomp4.open;

    if Q_infocomp4.recordcount > 0 then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'RELAÇÃO DE VOLUMES:';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       Q_infocomp4.first;
       while not Q_infocomp4.Eof do begin
            qtxt := qtxt+chr(13)+chr(10)+'|'+inttostr(strtoint(q_infocomp4quantidade.asstring))+' - '+q_infocomp4descricao.asstring;
            Q_infocomp4.next;
       end;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;

    Q_infocomp5.Close;
    Q_infocomp5.Params[0].AsString := me_nossaref.text;
    Q_infocomp5.open;

    if Q_infocomp5.recordcount > 0 then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXAS DE CONVERSÃO:';
           qtxt := qtxt+chr(13)+chr(10)+'|';
       Q_infocomp5.first;
       while not Q_infocomp5.Eof do begin
             qtxt := qtxt+chr(13)+chr(10)+'|'+q_infocomp5descricao.asstring+':'+floattostrf(q_infocomp5taxa_conversao.asfloat,fffixed,15,5);
             Q_infocomp5.next;
       end;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|';
    end;
    qtaxasis := 30;
    if q_processostaxa_siscomex.asfloat >0 then
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(q_processostaxa_siscomex.asfloat,ffFixed,15,2))
    else begin

        q_pagtributos.Close;
        q_pagtributos.Params[0].AsString := q_processosempresa.asstring;
        q_pagtributos.Params[1].AsString := q_processosfilial.asstring;
        q_pagtributos.Params[2].AsString := me_nossaref.text;
        q_pagtributos.open;

        while not q_pagtributos.eof do begin

            for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
                if ((i >= 1 )  and (i <= 2 ))  then  qtaxasis := qtaxasis+10;
                if ((i >= 3 )  and (i <= 5 ))  then  qtaxasis := qtaxasis+8;
                if ((i >= 6 )  and (i <= 10 )) then  qtaxasis := qtaxasis+6;
                if ((i >= 11)  and (i <= 20))  then  qtaxasis := qtaxasis+4;
                if ((i >= 21)  and (i <= 50))  then  qtaxasis := qtaxasis+2;
                if (i >= 51) then  qtaxasis := qtaxasis+1;
            end;

            q_pagtributos.next;

        end;

        qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(qtaxasis,ffFixed,15,2));

    end;
///    else showmessage('Taxa Siscomex não informada no desembaraço!');

    if q_processostaxa_siscomexc.asfloat >0 then
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX Consumo: '+q_processostaxa_siscomexc.asstring;

    temato := false;

    Q_infocomp7.Close;
    Q_infocomp7.Params[0].AsString := me_nossaref.text;
    Q_infocomp7.open;
    if Q_infocomp5.recordcount > 0 then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTAÇÃO:';

       while not q_infocomp7.eof do begin

           qRegime_Tributacao_II  := q_infocomp7Regime_Tributacao_II.asstring;
           qFundamento_Legal_II   := q_infocomp7Fundamento_Legal_II.asstring;
           qMotivo_Adm_Temp       := q_infocomp7Motivo_Adm_Temp.asstring;
           qNumero_Ato_Legal_II   := q_infocomp7Numero_Ato_Legal_II.asstring;
           qPercentual_Reducao_II := q_infocomp7Percentual_Reducao_II.asfloat;
           qAto_Concessorio       := q_infocomp7Ato_Concessorio.asstring;
           qRegime_Tributacao_IPI := q_infocomp7Regime_Tributacao_IPI.asstring;
           qNumero_Ato_Legal_IPI  := q_infocomp7Numero_Ato_Legal_IPI.asstring;
           qPercentual_Reduca_IPI := q_infocomp7Percentual_Reduca_IPI.asfloat;
           ////coloquei em 27/03/2006 - mm
           qACORDO_ALADI          := q_infocomp7ACORDO_ALADI.asstring;
           qNumero_Ato_Legal_ALADI:= q_infocomp7Numero_Ato_Legal_ALADI.asstring;

//    q_infocomp7ACORDO_ALADI: TStringField;
//    q_infocomp7Numero_Ato_Legal_ALADI: TStringField;


           qadi:= '|ADIÇÕES: ';
           qregii:='|REGIME TRIBUTAÇÃO II: ';
           if q_infocomp7Regime_Tributacao_II.asstring = '1' then qregii := qregii+'RECOLHIMENTO INTEGRAL';
           if q_infocomp7Regime_Tributacao_II.asstring = '9' then qregii := qregii+'RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)';
           if q_infocomp7Regime_Tributacao_II.asstring = '2' then qregii := qregii+'IMUNIDADE';
           if q_infocomp7Regime_Tributacao_II.asstring = '3' then qregii := qregii+'ISENÇÃO';
           if q_infocomp7Regime_Tributacao_II.asstring = '4' then qregii := qregii+'REDUÇÃO';
           if q_infocomp7Regime_Tributacao_II.asstring = '5' then qregii := qregii+'SUSPENSÃO';
           if q_infocomp7Regime_Tributacao_II.asstring = '6' then qregii := qregii+'NÃO INCIDÊNCIA';
           if q_infocomp7Regime_Tributacao_II.asstring = '7' then qregii := qregii+'TRIBUTAÇÃO SIMPLIFICADA';
           if q_infocomp7Regime_Tributacao_II.asstring = '8' then qregii := qregii+'TRIBUTAÇÃO SIMPLIFICADA DE BAGAGEM';
           if q_infocomp7QFUN.asstring<>'' then
              qregii := qregii+chr(13)+chr(10)+'|Fundamento Legal: '+q_infocomp7QFUN.asstring;
           if q_infocomp7QMOT.asstring<>'' then
              qregii := qregii+chr(13)+chr(10)+'|Motivo Adm.Temp: '+q_infocomp7Qmot.asstring;
           if q_infocomp7Numero_Ato_Legal_II.asstring<>'' then begin
              qregii := qregii+chr(13)+chr(10)+'|Ato Legal: ';
              if q_infocomp7Tipo_Ato_II.asstring<>'' then qregii := qregii+q_infocomp7Tipo_Ato_II.asstring;
              qregii := qregii+' Nº '+q_infocomp7Numero_Ato_Legal_II.asstring;
              if q_infocomp7Ano_Ato_Legal_II.asstring<>'' then qregii := qregii+' / '+q_infocomp7Ano_Ato_Legal_II.asstring;
              if q_infocomp7obs_alii.asstring<>'' then qregii := qregii+' -  '+q_infocomp7obs_alii.asstring;
           end;

           if q_infocomp7Percentual_Reducao_II.asfloat>0 then
              qregii := qregii+chr(13)+chr(10)+'|Percentual de Redução: '+q_infocomp7Percentual_Reducao_II.asstring+'%';
           if q_infocomp7Ato_Concessorio.asstring<>'' then begin
              temato := true;
              qregii := qregii+chr(13)+chr(10)+'|Ato Concessório: '+ q_infocomp7Ato_Concessorio.asstring;
              qregii := qregii+chr(13)+chr(10)+'|                 '+ q_infocomp7QATO.asstring;
              qregii := qregii+chr(13)+chr(10)+'|                 '+'Vigência: de '+ q_infocomp7Vigencia_inicial.asstring;
              qregii := qregii+' até '+ q_infocomp7Vigencia_final.asstring;
           end;

           //////acordo ALADI - 27/03/2006 - MM
           if q_infocomp7ACORDO_ALADI.asstring<>'' then begin
              if t_aladi.state = dsInactive then t_aladi.open;
              if t_atos.state = dsInactive then t_atos.open;
              if t_tpato.state = dsInactive then t_tpato.open;
              if t_aladi.FindKey([q_infocomp7ACORDO_ALADI.asstring])then begin
                 if t_atos.FindKey([v_empresa,v_filial,'3',q_infocomp7Numero_Ato_Legal_ALADI.asstring]) then begin
                    if not t_tpato.FindKey([t_atosTipo_Ato_Legal.asstring]) then begin
                       qregii := qregii+chr(13)+chr(10)+'|'+ t_aladidescricao.asstring+' - '+t_atosTipo_Ato_Legal.asstring+':'+T_atosNumero.asstring+' DE '+ T_atosAno_Ato_Legal.asstring;
                    end
                    else begin
                       qregii := qregii+chr(13)+chr(10)+'|'+ t_aladidescricao.asstring+' - '+t_tpatodescricao.asstring+':'+T_atosNumero.asstring+' DE '+ T_atosAno_Ato_Legal.asstring;
                    end;
                 end;
              end;
           end;

           qregipi:='|REGIME TRIBUTAÇÃO IPI: ';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '4' then qregipi:=qregipi+'RECOLHIMENTO INTEGRAL';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '9' then qregipi:=qregipi+'RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '2' then qregipi:=qregipi+'REDUÇÃO';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '5' then qregipi:=qregipi+'SUSPENSÃO';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '1' then qregipi:=qregipi+'ISENÇÃO';
           if q_infocomp7Regime_Tributacao_IPI.asstring = '3' then qregipi:=qregipi+'NÃO TRIBUTÁVEL';
           if q_infocomp7Numero_Ato_Legal_IpI.asstring<>'' then begin
              qregipi := qregipi+chr(13)+chr(10)+'|Ato Legal: ';
              if q_infocomp7Tipo_Ato_IpI.asstring<>'' then qregipi := qregipi+q_infocomp7Tipo_Ato_IpI.asstring;
              qregipi := qregipi+' Nº '+q_infocomp7Numero_Ato_Legal_IpI.asstring;
              if q_infocomp7Ano_Ato_Legal_IpI.asstring<>'' then qregipi := qregipi+' / '+q_infocomp7Ano_Ato_Legal_IpI.asstring;
              if q_infocomp7obs_alipi.asstring<>'' then qregipi := qregipi+' -  '+q_infocomp7obs_alipi.asstring;
           end;
           if q_infocomp7Percentual_Reduca_IPI.asfloat>0 then
              qregipi:=qregipi+chr(13)+chr(10)+'|Percentual de Redução: '+q_infocomp7Percentual_Reduca_IPI.asstring+'%';

           opri := 0;

           {antiga e alterada em 25/06/2004
           SELECT T.Processo, Val([Adicao]) AS qdaicao, T.Adicao, T.Regime_Tributacao_II, T.Fundamento_Legal_II, FUN.Descricao AS QFUN, T.Motivo_Adm_Temp, MOT.Descricao AS QMOT, T.Numero_Ato_Legal_II, alii.Tipo_Ato_Legal AS Tipo_Ato_ii, alii.Ano_Ato_Legal AS Ano_Ato_Legal_ii, alii.obs AS obs_alii, T.Percentual_Reducao_II, T.Ato_Concessorio, Ato.Descricao AS QATO, Ato.Vigencia_inicial, Ato.Vigencia_final, T.Regime_Tributacao_IPI, T.Numero_Ato_Legal_IPI, T.Percentual_Reduca_IPI, alipi.Tipo_Ato_Legal AS Tipo_Ato_ipi, alipi.Ano_Ato_Legal AS Ano_Ato_Legal_ipi, alipi.obs AS obs_alipi
FROM ((((Tributacao_Item_Fatura AS T LEFT JOIN Atos_concessorios AS Ato ON T.Ato_Concessorio = Ato.Numero) LEFT JOIN TAB_REGIME_FUNDAMENTO AS FUN ON (T.Regime_Tributacao_II = FUN.Regime) AND (T.Fundamento_Legal_II = FUN.Codigo)) LEFT JOIN TAB_MOT_ADMISSAO_TEMP AS MOT ON T.Motivo_Adm_Temp = MOT.Codigo) LEFT JOIN Atos_Legais AS alii ON (T.Numero_Ato_Legal_II = alii.Numero) AND (T.Filial = alii.Filial) AND (T.Empresa = alii.Empresa)) LEFT JOIN Atos_Legais AS alipi ON (T.Numero_Ato_Legal_IPI = alipi.Numero) AND (T.Filial = alipi.Filial) AND (T.Empresa = alipi.Empresa)
GROUP BY T.Processo, Val([Adicao]), T.Adicao, T.Regime_Tributacao_II, T.Fundamento_Legal_II, FUN.Descricao, T.Motivo_Adm_Temp, MOT.Descricao, T.Numero_Ato_Legal_II, alii.Tipo_Ato_Legal, alii.Ano_Ato_Legal, alii.obs, T.Percentual_Reducao_II, T.Ato_Concessorio, Ato.Descricao, Ato.Vigencia_inicial, Ato.Vigencia_final, T.Regime_Tributacao_IPI, T.Numero_Ato_Legal_IPI, T.Percentual_Reduca_IPI, alipi.Tipo_Ato_Legal, alipi.Ano_Ato_Legal, alipi.obs
HAVING (((T.Processo)=:qprocesso))
ORDER BY T.Processo, Val([Adicao]);
           }

           while ((not q_infocomp7.eof) and
                      (qRegime_Tributacao_II  = q_infocomp7Regime_Tributacao_II.asstring) and
                      (qFundamento_Legal_II   = q_infocomp7Fundamento_Legal_II.asstring) and
                      (qMotivo_Adm_Temp       = q_infocomp7Motivo_Adm_Temp.asstring) and
                      (qNumero_Ato_Legal_II   = q_infocomp7Numero_Ato_Legal_II.asstring) and
                      (qPercentual_Reducao_II = q_infocomp7Percentual_Reducao_II.asfloat) and
                      (qAto_Concessorio       = q_infocomp7Ato_Concessorio.asstring) and
                      (qRegime_Tributacao_IPI = q_infocomp7Regime_Tributacao_IPI.asstring) and
                      (qNumero_Ato_Legal_IPI  = q_infocomp7Numero_Ato_Legal_IPI.asstring) and
                      (qPercentual_Reduca_IPI = q_infocomp7Percentual_Reduca_IPI.asfloat) and
                      (qACORDO_ALADI          = q_infocomp7ACORDO_ALADI.asstring)         and
                      (qNumero_Ato_Legal_ALADI = q_infocomp7Numero_Ato_Legal_ALADI.asstring)) do begin

                 if opri = 0 then
                    qadi := qadi+q_infocomp7Adicao.asstring
                 else qadi := qadi+','+q_infocomp7Adicao.asstring;

                 opri := opri+1;
                 if opri = 14 then begin
                    opri := 0;             ////  '|ADIÇÕES: '
                    qadi := qadi+chr(13)+chr(10)+'|         ';
                 end;

                 q_infocomp7.next;
           end;

           qtxt := qtxt+chr(13)+chr(10)+'|';
           qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
           qtxt := qtxt+chr(13)+chr(10)+qadi;
           qtxt := qtxt+chr(13)+chr(10)+qregii;
///           qtxt := qtxt+chr(13)+chr(10)+'|';
           qtxt := qtxt+chr(13)+chr(10)+qregipi;
           qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
       end;
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
    end;
       {

           q_infocomp7Processo: TStringField;
    q_infocomp7qdaicao: TFloatField;
    q_infocomp7Adicao: TStringField;
    q_infocomp7Regime_Tributacao_II: TStringField;
    q_infocomp7Fundamento_Legal_II: TStringField;
    q_infocomp7QFUN: TStringField;
    q_infocomp7Motivo_Adm_Temp: TStringField;
    q_infocomp7QMOT: TStringField;
    q_infocomp7Numero_Ato_Legal_II: TStringField;
    q_infocomp7Percentual_Reducao_II: TFloatField;
    q_infocomp7Ato_Concessorio: TStringField;
    q_infocomp7QATO: TStringField;
    q_infocomp7Vigencia_inicial: TDateTimeField;
    q_infocomp7Vigencia_final: TDateTimeField;
    q_infocomp7Regime_Tributacao_IPI: TStringField;
    q_infocomp7Numero_Ato_Legal_IPI: TStringField;
    q_infocomp7Percentual_Reduca_IPI: TFloatField;


       ////II
       1 RECOLHIMENTO INTEGRAL
        9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)
        2 IMUNIDADE
        3 ISENÇÃO
        4 REDUÇÃO
        5 SUSPENSÃO
        6 NÃO INCIDÊNCIA
        7 TRIBUTAÇÃO SIMPLIFICADA
        8 TRIBUTAÇÃO SIMPLIFICADA DE BAGAGEM

        ////IPI
        4 RECOLHIMENTO INTEGRAL
        9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)
        2 REDUÇÃO
        5 SUSPENSÃO
        1 ISENÇÃO
        3 NÃO TRIBUTÁVEL

       }

    //// alterado para colocar textos de isenção e suspenção de pis e cofins 20/07/2004 - Marcelo
    if v_filial = 'CWB' then begin

       /// verificanco 3 = isencao e 16 =drawback
       q_isen_sus.close;
       q_isen_sus.Params[0].asstring := me_nossaref.text;
       q_isen_sus.Params[1].asstring := '3';
       q_isen_sus.Params[2].asstring := '16';
       q_isen_sus.open;
       ver_adicoes := '';
       opri := 0;
       while not q_isen_sus.Eof do begin
             if opri = 0 then begin
                ver_adicoes := q_isen_susadicao.asstring;
                opri := 1;
             end
             else begin
                  ver_adicoes := ver_adicoes+','+q_isen_susadicao.asstring;
             end;
             q_isen_sus.Next;
       end;
       if ver_adicoes<>'' then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'ISENÇÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DA COFINS, PARA AS ADIÇÕES:';
          qtxt := qtxt+chr(13)+chr(10)+'|'+ ver_adicoes+';';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DE ACORDO COM O ARTIGO 9, item II , letra F, ';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'da LEI 10.865 DE 30/04/2004.';
       end;

       /// verificanco 5 = suspencao e 16 =drawback
       q_isen_sus.close;
       q_isen_sus.Params[0].asstring := me_nossaref.text;
       q_isen_sus.Params[1].asstring := '5';
       q_isen_sus.Params[2].asstring := '16';
       q_isen_sus.open;
       ver_adicoes := '';
       opri := 0;
       while not q_isen_sus.Eof do begin
             if opri = 0 then begin
                ver_adicoes := q_isen_susadicao.asstring;
                opri := 1;
             end
             else begin
                  ver_adicoes := ver_adicoes+','+q_isen_susadicao.asstring;
             end;
             q_isen_sus.Next;
       end;
       if ver_adicoes<>'' then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'SUSPENSÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DA COFINS, PARA AS ADIÇÕES:';
          qtxt := qtxt+chr(13)+chr(10)+'|'+ ver_adicoes+';';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DE ACORDO COM O ARTIGO 14 LEI 10.865 DE 30/04/2004.';
       end;

       qtxt := qtxt+chr(13)+chr(10)+'|';


    end;

    {
    **********TRIBUTACAO II
    1 RECOLHIMENTO INTEGRAL
    9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)
    2 IMUNIDADE
    3 ISENÇÃO
    4 REDUÇÃO
    5 SUSPENSÃO
    6 NÃO INCIDÊNCIA
    7 TRIBUTAÇÃO SIMPLIFICADA
    8 TRIBUTAÇÃO SIMPLIFICADA DE BAGAGEM


    **********TRIBUTACAO IPI
    4 RECOLHIMENTO INTEGRAL
    9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 285/03 art 6º)
    2 REDUÇÃO
    5 SUSPENSÃO
    1 ISENÇÃO
    3 NÃO TRIBUTÁVEL


    }


       ///////////alterado 04/05/2004 pis cofins
    if t_propis.recordcount>0 then begin
       total_pis    := 0;
       total_cofins := 0;
       total_icms   := 0;
       total_pis_s    := 0;
       total_cofins_s := 0;
       total_icms_s   := 0;


       t_propis.first;
       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'PIS/PASEP E COFINS RECOLHIDOS CONFORME MP164/04:';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'As contribuições de PIS-PASEP E COFINS recolhidas de acordo com';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'o Art. 8º da Lei 10.865 de 30/04/2004.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qteste := 0;
       while not t_propis.eof do begin
             qteste := qteste+1;
             qtxt := qtxt+chr(13)+chr(10)+'|';
             q_suspe := '';
             q_suspe_II := '';
             q_suspe_IPI := '';
             if q_tributa then begin
             if q_piscofinstrib.Locate('Adicao',t_propisadicao.asstring,[loCaseInsensitive]) then begin
                if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe_II := 'II';
                if q_piscofinstribRegime_Tributacao_IPI.asstring='5' then q_suspe_IPI := 'IPI';
             end;
             end;
             if (q_suspe_II<>'') or (q_suspe_IPI<>'') then begin
                q_suspe :=' -> ( SUSPENSÃO ';
                if q_suspe_II<>'' then begin
                   q_suspe := q_suspe+'II';
                   if q_suspe_IPI<>'' then begin
                      q_suspe := q_suspe+' e IPI';
                   end;
                end
                else begin
                   if q_suspe_IPI<>'' then begin
                      q_suspe := q_suspe+'IPI';
                   end;
                end;
                q_suspe := q_suspe+' )';
             end;

             /// proporcional 24/09/2004
             if (t_propisprazo_permanencia.asinteger>0) then begin
                qtxt := qtxt+chr(13)+chr(10)+'| ADIÇÃO..............: '+t_propisadicao.asstring+ ' -> (PROPORCIONAL)'+q_suspe;
                qtxt := qtxt+chr(13)+chr(10)+'| NCM.................: '+t_propisNCM.asstring;
                qtxt := qtxt+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(t_propisva.asfloat,fffixed,10,2)+' -> ( '+floattostrf(t_propisva_proporcional.asfloat,fffixed,10,2) +' )';
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(t_propisaliq_ncm_II.asfloat,fffixed,10,2)+' -> ( '+floattostrf(t_propisaliq_ncm_II_proporcional.asfloat,fffixed,10,2) +' )';
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(t_propisaliq_ncm_ipi.asfloat,fffixed,10,2)+' -> ( '+floattostrf(t_propisaliq_ncm_IPI_proporcional.asfloat,fffixed,10,2) +' )';
             end
             else begin
                qtxt := qtxt+chr(13)+chr(10)+'| ADIÇÃO..............: '+t_propisadicao.asstring+q_suspe;
                qtxt := qtxt+chr(13)+chr(10)+'| NCM.................: '+t_propisNCM.asstring;
                qtxt := qtxt+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(t_propisva.asfloat,fffixed,10,2);
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(t_propisaliq_ncm_II.asfloat,fffixed,10,2);
                qtxt := qtxt+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(t_propisaliq_ncm_ipi.asfloat,fffixed,10,2);
             end;
             qtxt := qtxt+chr(13)+chr(10)+'| Alíquota ICMS.......: '+floattostrf((t_propisaliq_icms.asfloat+t_propisaliq_icms_extra.asfloat),fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Alíquota PIS/PASEP..: '+floattostrf(t_propisaliq_pis_pasep.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Alíquota COFINS.....: '+floattostrf(t_propisaliq_cofins.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Valor ICMS .........: '+floattostrf(t_propisvalor_icms.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Valor PIS/PASEP.....: '+floattostrf(t_propisvalor_pis_pasep.asfloat,fffixed,10,2);
             qtxt := qtxt+chr(13)+chr(10)+'| Valor COFINS........: '+floattostrf(t_propisvalor_cofins.asfloat,fffixed,10,2);
             ////AQUI 30/03/2006
             if (q_suspe_II='') then begin
                total_pis := total_pis+t_propisvalor_pis_pasep.asfloat;
                total_cofins := total_cofins+t_propisvalor_cofins.asfloat;
                total_icms := total_icms+t_propisvalor_icms.asfloat;
             end
             else begin
                total_pis_s := total_pis_s+t_propisvalor_pis_pasep.asfloat;
                total_cofins_s := total_cofins_s+t_propisvalor_cofins.asfloat;
                total_icms_s := total_icms_s+t_propisvalor_icms.asfloat;
             end;
             t_propis.next;
       end;

       qtxt := qtxt+chr(13)+chr(10)+'|';
       if (total_icms>0) or (total_pis>0) or (total_cofins>0) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total ICMS devido...: '+floattostrf(total_icms,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total PIS/PASEP.....: '+floattostrf(total_pis,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total COFINS........: '+floattostrf(total_cofins,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'|';
       end;
       if (total_icms_s>0) or (total_pis_s>0) or (total_cofins_s>0) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total ICMS (SUSPENSO)........: '+floattostrf(total_icms_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total PIS/PASEP (SUSPENSO)...: '+floattostrf(total_pis_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total COFINS (SUSPENSO)......: '+floattostrf(total_cofins_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'|';
       end;

       qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';

    end;


    if ((q_processosfilial.asstring = 'CWB') and (temato))then begin
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'SOLICITAMOS O DESEMBARACO ADUANEIRO DAS MERCADORIAS';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONSTANTES NESTA DI COM SUSPENSAO DO PAGAMENTO DOS';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTOS DE ACORDO COM O DECRETO 4543 de 27/12/2002, ARTIGO 335,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'AMPARADO PELO REGIME ESPECIAL DE DRAWBACK,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'COM BASE NA PORTARIA M.F. 594 DE 25/08/92.';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'ASSUMO INTEIRA RESPONSABILIDADE PELO INTEGRAL CUMPRIMENTO';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DAS OBRIGACOES CONSTANTES DO ATO CONCESSORIO SUPRACITADO,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'NOS COMPROMETENDO, AINDA, A RECOLHER AOS COFRES PUBLICOS,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'NO PRAZO REGULAMENTAR, O VALOR DOS TRIBUTOS SUSPENSOS';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONSTANTES NOS ANEXOS CITADOS DESTA D.I. E INCLUSIVE JUROS,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CORRECAO MONETARIA E DEMAIS ENCARGOS CASO NAO SEJAM';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CUMPRIDAS TODAS AS EXIGENCIAS LEGAIS.';
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
     end;
                                                               ///halliburton produtos
    if ((q_processosfilial.asstring = 'RJO') and (temato) and (q_processosimportador.asstring='31'))then begin
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'SOLICITAMOS A SUSPENSAO TOTAL DOS IMPOSTOS PELO REGIME ESPECIAL';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DE DRAWBACK-GENERICO (ATO DECLARATORIO NR. 1778-00/000195-0)';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DAS MERCADORIAS CONSTANTES DA PRESENTE DECLARACAO DE IMPORTACAO,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONFORME PRECEITUA O PARAGRAFO 3o DO ARTIGO 338 DO R.A. 4543/02.';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DECLARO ASSUMIR INTEIRA RESPONSABILIDADE PELO INTEGRAL';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CUMPRIMENTO DAS OBRIGACOES CONSTANTES DA PRESENTE DECLARACAO';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DE IMPORTACAO, COMPROMETENDO-ME A RECOLHER AOS COFRES PUBLICOS,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'NO PRAZO REGULAMENTAR, O VALOR DOS TRIBUTOS SUSPENSOS,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CASO VENHA A SER EXIGIDO PELA SECRETARIA DA RECEITA FEDERAL.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONFORME PRECEITUA O ART. 14 DA LEI 10.865/2004, AS CONTRIBUICOES';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'DE PIS-PASEP E COFINS, ESTÃO SUSPENSAS DE ACORDO COM AS NORMAS';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'RELATIVAS AO DRAWBACK - SUSPENSÃO.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'MERCADORIA ENCONTRA-SE  ACONDICIONADA EM EMBALAGEM DE MADEIRA,';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONFORME COMUNICADO DE SERVIÇO NR.003 DE 25/01/02.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'MERCADORIA NÃO ENCONTRA-SE ACONDICIONADA EM EMBALAGEM OU SUPORTE QUE';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'CONTENHAM MADEIRA, CONFORME COMUNICADO DE SERVIÇO NR.003 DE 25/01/02.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'MERCADORIA VISTORIADA NO PORTO/RJ PELO VIGIAGRO/M.A CONFORME PORTARIA';
       qtxt := qtxt+chr(13)+chr(10)+'|'+'INTERMINISTERIAL NR.499/99 POR ESTAR ACONDICIONADA EM CAIXA DE MADEIRA.';
       qtxt := qtxt+chr(13)+chr(10)+'|';
     end;

     qtxt := qtxt+chr(13)+chr(10)+'|';

    if (q_processosfilial.asstring = 'CWB') then begin
       qtxt := qtxt+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
    end;

    t_pro.open;
    while not t_pro.eof do begin
          if t_proexibe_complementares.asboolean then begin
          qtxt := qtxt+chr(13)+chr(10)+'|'+'REPRESENTANTE LEGAL: '+t_proRazoSocial.asstring;
          qtxt := qtxt+chr(13)+chr(10)+'|'+'CPF: '+t_proCGCCPF.asstring+' - Reg.: '+t_proregistro.asstring;
          end;
          t_pro.next;
    end;
    t_pro.close;

    t_aju.open;
    while not t_aju.eof do begin
          if t_ajuexibe_complementares.asboolean then begin
          qtxt := qtxt+chr(13)+chr(10)+'|'+'AJUDANTE DE DESPACHANTE: '+t_ajuRazoSocial.asstring;
          qtxt := qtxt+chr(13)+chr(10)+'|'+'CPF: '+t_ajuCGCCPF.asstring+' - Reg.: '+t_ajuregistro.asstring;
          end;
          t_aju.next;
    end;
    t_aju.close;

    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'REF. MS:'+me_nossaref.text;
    qtxt := qtxt+chr(13)+chr(10)+'|'+'REF. CLIENTE:'+T_processosCdigo_Cliente.asstring;

    if q_processosfilial.asstring = 'CWB' then begin
    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'                     Termo de Desistência                       ';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'Desistimos da Vistoria Aduaneira nos termos do Artigo 586 do    ';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'Regulamento Aduaneiro, aprovado pelo Decreto 4543 de 27/12/2002,';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'responsabilizamo-nos por todos e quaisquer ônus decorrente de   ';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'nossa desistência.                                              ';
    qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
    end;
    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+q_processosqfilial.asstring+', '+FormatDateTime('dd " de " mmmm " de " yyyy', date());
    qtxt := qtxt+chr(13)+chr(10)+'|';
    qtxt := qtxt+chr(13)+chr(10)+'|'+q_processoscliente.asstring;

    t_processos.edit;
    t_processosTX_INFO_COMPL.asstring    := qtxt;
    t_processos.post;

    if v_nivel='x' then begin
       re.Visible := true;
       re.Clear;
       re.Lines.Add(qtxt);
    end
    else begin
       re.Visible := false;
    end;

end;    

end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

end;

procedure TF_prodidsi.B_DSIClick(Sender: TObject);
var seqbem,v_num_seq:integer;
    v_moeda,q_descricao:string;
    v_moedaigual,verprodutos:boolean;
    v_totfat,v_totfatm:real;

begin
   if MessageDlg(v_usuario+', Confima a atualização do Siscomex DSI?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin

      verprodutos := true;
      if MessageDlg(v_usuario+', ATENÇÃO!!! Atualiza descrição da mercadoria conforme a FATURA?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then verprodutos := false;

      if t_processos.state = dsInactive then t_processos.open;
      if t_faturas.state = dsInactive then t_faturas.open;
      if t_transpprocesso.state = dsInactive then t_transpprocesso.open;
      if t_transportadores.state = dsInactive then t_transportadores.open;
      if t_produtos.state = dsInactive then t_produtos.open;
      if t_itensfaturas.state = dsInactive then t_itensfaturas.open;
      if t_tributositem.state = dsInactive then t_tributositem.open;
      if t_taxaconv.state = dsInactive then t_taxaconv.open;
///      if t_acrescimos.state = dsInactive then t_acrescimos.open;
      if t_importadores.state = dsInactive then t_importadores.open;
///      if t_numerador.state = dsInactive then t_numerador.open;
      if T_ncm_vutil.state = dsInactive then T_ncm_vutil.open;
      if T_ncm.state = dsInactive then T_ncm.open;

      t_processos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
      if t_processosTX_INFO_COMPL.asstring='' then b_processaclick(f_prodidsi)
      else begin
          if MessageDlg('Atualiza Informações Complementares? (clique em não para manter as informações complementares digitadas)', mtConfirmation,[mbYes, mbNo], 0) = mrYes then b_processaclick(f_prodidsi);
      end;

      processamento('Aguarde... Atualizando SISCOMEX DSI... Dados Gerais',100,false);
      T_DSI_DG.open;

      taxaconvn(f_prodidsi);

      if T_DSI_DG.findkey([me_nossaref.text]) then T_DSI_DG.delete;

      T_DSI_DG.append;
      T_DSI_DGCD_DSI_MICRO.asstring := me_nossaref.text;
      T_DSI_DGDT_CRIACAO.asstring := datetostr(date());
      T_DSI_DGCD_ORIGEM_DSI.asinteger := 0;
      //T_DSI_DGNR_DECL_IMP_PROT.asstring :=
      ///T_DSI_DGCD_MOTIVO_TRANS: TSmallintField;
      //T_DSI_DGDT_TRANSMISSAO: TDateTimeField;
      ///T_DSI_DGNR_DECL_SIMPL_IMP.asstring :=
      //T_DSI_DGDT_REGISTRO_DSI: TDateTimeField;
      //T_DSI_DGHO_REGISTRO_DSI: TDateTimeField;
      //T_DSI_DGNR_SEQ_RETIFICACAO: TSmallintField;
      //T_DSI_DGDT_SEQ_RETIFICACAO: TDateTimeField;
      //T_DSI_DGHO_SEQ_RETIFICACAO: TDateTimeField;
      //T_DSI_DGIN_BLOQUEIO_RETIF: TBooleanField;

      if T_processosTipo_Declarao.asstring='05' then T_DSI_DGCD_TIPO_NATUREZA.asinteger := 9
      else begin
           if MessageDlg(v_usuario+', Este processo é com Cobertura Cambial?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
              T_DSI_DGCD_TIPO_NATUREZA.asinteger := 3
           else T_DSI_DGCD_TIPO_NATUREZA.asinteger := 4;
      end;    

      T_DSI_DGQT_ADICAO_DSI.asinteger := 0;
      T_DSI_DGCD_TIPO_IMPORTADOR.asstring :='1';
      t_importadores.first;
      t_importadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,t_processosImportador.asstring]);
      if t_importadorestipoimportador.asstring<>'' then T_DSI_DGCD_TIPO_IMPORTADOR.asstring    := t_importadorestipoimportador.asstring;
      if T_importadoresCNPJ_CPF_COMPLETO.asstring<>'' then T_DSI_DGNR_IMPORTADOR.asstring      := T_importadoresCNPJ_CPF_COMPLETO.asstring;

      //T_DSI_DGNM_IMPORTADOR: TStringField;
      //T_DSI_DGNR_TEL_IMPORTADOR: TStringField;
      //T_DSI_DGED_LOGR_IMPORTADOR: TStringField;
      //T_DSI_DGED_NR_IMPORTADOR: TStringField;
      //T_DSI_DGED_COMPL_IMPO: TStringField;
      //T_DSI_DGED_BA_IMPORTADOR: TStringField;
      //T_DSI_DGED_MUN_IMPORTADOR: TStringField;
      //T_DSI_DGED_UF_IMPORTADOR: TStringField;
      //T_DSI_DGED_CEP_IMPORTADOR: TStringField;
      //T_DSI_DGCD_PAIS_IMPORTADOR: TStringField;
      //T_DSI_DGIN_REPR_LEGAL: TBooleanField;
      //T_DSI_DGNR_REPR_LEGAL: TStringField;
      //T_DSI_DGNR_CPF_USUARIO: TStringField;

      t_transpprocesso.first;
      if t_transpprocesso.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]) then begin
        if T_transpprocessoURF_Despacho.asstring<>''then T_DSI_DGCD_URF_DESPACHO.asstring := T_transpprocessoURF_Despacho.asstring;
        if T_transpprocessoPais_Procedencia.asstring<>'' then T_DSI_DGCD_PAIS_PROC_CARGA.asstring := T_transpprocessoPais_Procedencia.asstring;
        if T_transpprocessoVia.asstring<>'' then T_DSI_DGCD_VIA_TRANSP_CARGA.asstring := '0'+T_transpprocessoVia.asstring;
        if T_DSI_DGCD_VIA_TRANSP_CARGA.asstring ='0A' then T_DSI_DGCD_VIA_TRANSP_CARGA.asstring := '10';
        T_DSI_DGNR_TERMO_ENTRADA.asstring := T_transpprocessonumeromanifesto.asstring;
        if T_transpprocessoTipodoccarga.asstring<>''then T_DSI_DGCD_TIPO_DCTO_CARGA.asstring := T_transpprocessoTipodoccarga.asstring;
        if T_transpprocessoNumerodoccarga.asstring<>'' then T_DSI_DGNR_DCTO_CARGA_HOUSE.asstring := T_transpprocessoNumerodoccarga.asstring;
        if T_transpprocessoNumeromaster.asstring<>'' then T_DSI_DGNR_DCTO_CARGA_MAST.asstring := T_transpprocessoNumeromaster.asstring;
        ///if T_transpprocessocodigo_presenca_carga.asstring<>'' then T_DSI_DGNR_IDENT_CARGA.asstring := T_transpprocessocodigo_presenca_carga.asstring;
        if T_transpprocessoData.asstring<>'' then T_DSI_DGDT_EMBARQUE.asstring := T_transpprocessoData.asstring;
        ///T_DSI_DGDT_EMISSAO_CONHEC: TDateTimeField;
        T_DSI_DGPB_CARGA.asfloat := T_transpprocessoPeso_Bruto.asfloat;
        T_DSI_DGPL_CARGA.asfloat := T_transpprocessoPeso_Liquido.asfloat;
        if T_transpprocessoRecinto_Alfandegario.asstring<>'' then T_DSI_DGCD_RECINTO_ALFAND.asstring := T_transpprocessoRecinto_Alfandegario.asstring;
        if T_transpprocessoSetor_Alfandegario.asstring<>'' then T_DSI_DGCD_SETOR_ARMAZENAM.asstring := T_transpprocessoSetor_Alfandegario.asstring;
        if T_transpprocessoMoeda_Frete.asstring<>'' then T_DSI_DGCD_MOEDA_FRETE.asstring := T_transpprocessoMoeda_Frete.asstring;
        T_DSI_DGVL_TOT_FRETE_MNEG.asfloat  := (T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat-T_transpprocessoFrete_Ter_Nac.asfloat);
        if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]) then
           T_DSI_DGVL_TOTAL_FRETE_MN.asfloat      := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*t_taxaconvtaxa_conversao.asfloat);
        if T_transpprocessoMoeda_Seguro.asstring<>'' then T_DSI_DGCD_MOEDA_SEGURO.asstring       := T_transpprocessoMoeda_Seguro.asstring;
        T_DSI_DGVL_TOT_SEGURO_MNEG.asfloat     := T_transpprocessoValor_Seguro.asfloat;
        if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
           T_DSI_DGVL_TOTAL_SEG_MN.asfloat        := (T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat);
        ///        if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
        ///   T_DSI_DGVL_TOTAL_SEG_DOLAR.asfloat     := (T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat);


        {testar moedas das faturas}
        t_faturas.first;
        t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
        v_moedaigual := true;
        v_moeda      := t_faturasmoeda.asstring;
        v_totfat     := 0;
        v_totfatm    := 0;
        while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
              if v_moeda <> t_faturasmoeda.asstring then begin
                 v_moeda      := '790'; {moeda real}
                 v_moedaigual := false;
              end;
              t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

          {somar vmle}
          t_itensfaturas.first;
          t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
          while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                v_totfatm := v_totfatm+t_itensfaturasvmle.AsFloat;
                v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*t_taxaconvtaxa_conversao.asfloat);
                t_itensfaturas.next;
          end;
          t_faturas.next;
        end;

        ///if v_moedaigual = true then begin
        T_DSI_DGVL_TOTAL_MLE_MN.asfloat   := v_totfat;
        ///end
        ///else begin
        ///T_diVL_TOT_MLE_MNEG.asfloat   := 0;
        ///T_diVL_TOTAL_MLE_MN.asfloat   := v_totfat;
        ///end;

        ///T_DSI_DGVL_TOTAL_MLE_DOLAR: TFloatField;
        ///T_DSI_DGVL_TOTAL_MLD_MN: TFloatField;

      ///T_DSI_DGDT_DSE_MANUAL: TDateTimeField;
      ///T_DSI_DGCD_UL_DSE_MANUAL: TStringField;
      ///T_DSI_DGNR_DSE: TStringField;
      ///T_DSI_DGNR_DDE: TStringField;
      ///T_DSI_DGNR_PROCESSO_EXPO: TStringField;

      ///T_DSI_DGVL_TOTAL_II_CALC: TFloatField;
      ///T_DSI_DGVL_TOTAL_IPI_CALC: TFloatField;
      ///T_DSI_DGVL_TOTAL_II_A_REC: TFloatField;
      ///T_DSI_DGVL_TOTAL_IPI_A_REC: TFloatField;
      ///T_DSI_DGVL_TOT_TRIB_A_REC: TFloatField;
      ///T_DSI_DGCD_TIPO_PGTO_TRIB: TSmallintField;
      ///T_DSI_DGNR_CONTA_PGTO_TRIB: TStringField;

      ///T_DSI_DGIN_SERVIDOR_UL: TBooleanField;
      T_DSI_DGTX_INFO_COMPL.asstring         := T_processosTX_INFO_COMPL.asstring;


      end;
      processamento('Aguarde... Atualizando SISCOMEX DSI... Dados Gerais',100,true);
      T_DSI_DG.post;
      T_DSI_DG.close;

      T_DSI_BENS.Open;

      {zera bens}
      T_DSI_BENS.first;
      if T_DSI_BENS.findkey([me_nossaref.text]) then begin
         while ((not T_DSI_BENS.eof) and (T_DSI_BENSCD_DSI_MICRO.asstring = me_nossaref.text)) do begin
                T_DSI_BENS.delete;
         end;
      end;

      T_DSI_TRIB.Open;
      T_DSI_TRIB.first;
      if T_DSI_TRIB.findkey([me_nossaref.text]) then begin
         while ((not T_DSI_TRIB.eof) and (T_DSI_TRIBCD_DSI_MICRO.asstring = me_nossaref.text)) do begin
                T_DSI_TRIB.delete;
         end;
      end;


      q_bens.close;
      q_bens.params[0].asstring := me_nossaref.text;
      q_bens.open;
      seqbem := 0;
      while not q_bens.eof do begin
            processamento('Aguarde... Atualizando SISCOMEX DSI... Bens e tributação',q_bens.recordcount,false);
            seqbem := seqbem+1;
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,q_bensmoeda.asstring]);
            T_DSI_BENS.append;
            T_DSI_BENSCD_DSI_MICRO.asstring       := me_nossaref.text;
            T_DSI_BENSNR_BEM.asinteger            := seqbem;
            ///T_DSI_BENSNR_OPER_TRAT_PREV.asstring  :=
            T_DSI_BENSCD_REGIME_TRIBUTAR.asstring := q_bensregime_tributacao_ii.asstring;

            ///alterei em 21/07/2004
            if q_bensfundamento_legal_ii.asstring<>'' then T_DSI_BENSCD_FUND_LEG_REGIME.asstring := q_bensfundamento_legal_ii.asstring;
            if q_bensmotivo_adm_temp.asstring<>''     then T_DSI_BENSCD_MOTIVO_FUND_LEG.asstring := q_bensmotivo_adm_temp.asstring;

            T_DSI_BENSIN_CLASSIFICACAO.asinteger  := 0;
            T_DSI_BENSCD_MERCADORIA.asstring      := q_bensncm.asstring;
            if q_bensdestaque_ncm.asstring<>'' then T_DSI_BENSCD_DESTAQUE_NCM.asstring    := q_bensdestaque_ncm.asstring;
            T_DSI_BENSNM_DESCRICAO_MERC.asstring  := q_bensdescr_ncm.asstring;
            T_DSI_BENSCD_PAIS_ORIG_MERC.asstring  := q_benspas.asstring;

            ////T_DSI_BENSIN_MERCOSUL: TBooleanField;
            T_DSI_BENSIN_MATERIAL_USADO.asboolean := q_bensin_material_usado.asboolean;
            T_DSI_BENSNM_UN_MEDID_ESTAT.asstring  := q_bensdescr_ume.asstring;
            if q_bensunidade_medida_estat.asstring='10' then
               T_DSI_BENSQT_UN_ESTATISTICA.asfloat   := q_benspeso_total_acertado.asfloat
            else T_DSI_BENSQT_UN_ESTATISTICA.asfloat   := q_bensquantidade.asfloat;
            T_DSI_BENSNM_UN_MEDID_COMERC.asstring := q_bensdescr_um.asstring;
            T_DSI_BENSQT_MERC_UN_COMERC.asfloat   := q_bensquantidade.asfloat;
            T_DSI_BENSPB_BEM.asfloat              := 0;
            T_DSI_BENSPL_BEM.asfloat              := q_benspeso_total_acertado.asfloat;
            T_DSI_BENSVL_UNID_LOC_EMB.asfloat     := q_bensvalorunitrio.asfloat;
            T_DSI_BENSVL_MERC_LOC_EMB.asfloat     := q_bensvalortotal.asfloat;
            T_DSI_BENSCD_MOEDA_NEGOCIADA.asstring := q_bensmoeda.asstring;
            T_DSI_BENSVL_ADUANEIRO.asfloat        := (q_bensvalortotal.asfloat*t_taxaconvtaxa_conversao.asfloat);
            ///T_DSI_BENSVL_FRETE_MERC_MNEG.asfloat  :=
            ///T_DSI_BENSCD_MD_FRETE_MERC.asstring   :=
            ///if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]) then
               T_DSI_BENSVL_FRETE_MERC_MN.asfloat    := (((q_bensrateio_Frete_Prepaid.asfloat+q_bensrateio_Frete_Collect.asfloat)-q_bensrateio_Frete_TerNac.asfloat)*t_taxaconvtaxa_conversao.asfloat)*q_bensquantidade.asfloat;

            ///T_DSI_BENSVL_SEG_MERC_DOLAR.asfloat   :=
            ///if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_seguro.asstring]) then
               T_DSI_BENSVL_SEG_MERC_MN.asfloat      := (q_bensrateio_seguro.asfloat*t_taxaconvtaxa_conversao.asfloat)*q_bensquantidade.asfloat;

            ///T_DSI_BENSVL_MERC_EMB_DOLAR.asfloat   :=
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,q_bensmoeda.asstring]);
            T_DSI_BENSVL_MERC_EMB_MN.asfloat      := q_bensvalortotal.asfloat*t_taxaconvtaxa_conversao.asfloat;

            ///michele alterou
            T_DSI_BENSVL_ADUANEIRO.asfloat        := (T_DSI_BENSVL_ADUANEIRO.asfloat+T_DSI_BENSVL_FRETE_MERC_MN.asfloat+T_DSI_BENSVL_SEG_MERC_MN.asfloat);

            if verprodutos then begin
               t_produtos.first;
               t_produtos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,q_bensproduto.asstring]);
               q_descricao := trim(t_produtosdescrio.asstring)+' Referencia: '+q_bensProduto.asstring;
               if ((q_bensnumero_serie.asstring<>'') and (q_bensnumero_serie.asstring<>'.') ) then q_descricao := q_descricao+' Nº. Serie: '+q_bensnumero_serie.asstring;
               if q_benscertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_benscertificado_origem.asstring;
               if q_bensreferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_bensreferencia.asstring;
               if ((q_bensreferencia_projeto.asstring<>'') and (q_bensreferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_bensreferencia_projeto.asstring;
               if q_processosfilial.asstring = 'CWB' then begin
                  if ((q_bensPO.asstring<>'') and (q_bensPO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_bensPO.asstring;
                  if ((q_bensseqPO.asstring<>'') and (q_bensseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_bensseqPO.asstring;
               end;
               q_descricao := q_descricao+' Fatura: '+q_bensFatura.asstring+' Pagina: '+q_bensPagina.asstring+' Linha: '+inttostr(q_bensqseq.asinteger);
            end
            else begin
               q_descricao := trim(q_bensdescricao_produto.asstring)+' Referencia: '+q_bensProduto.asstring;
               if ((q_bensnumero_serie.asstring<>'') and (q_bensnumero_serie.asstring<>'.') ) then q_descricao := q_descricao+' Nº. Serie: '+q_bensnumero_serie.asstring;
               if q_benscertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_benscertificado_origem.asstring;
               if q_bensreferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_bensreferencia.asstring;
               if ((q_bensreferencia_projeto.asstring<>'') and (q_bensreferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_bensreferencia_projeto.asstring;
               if q_processosfilial.asstring = 'CWB' then begin
                  if ((q_bensPO.asstring<>'') and (q_bensPO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_bensPO.asstring;
                  if ((q_bensseqPO.asstring<>'') and (q_bensseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_bensseqPO.asstring;
               end;
               q_descricao := q_descricao+' Fatura: '+q_bensFatura.asstring+' Pagina: '+q_bensPagina.asstring+' Linha: '+inttostr(q_bensqseq.asinteger);

            end;
            T_DSI_BENSTX_DESC_DET_MERC.asstring := q_descricao;
            T_DSI_BENS.post;


            T_DSI_TRIB.append;
            T_DSI_TRIBCD_DSI_MICRO.asstring          := me_nossaref.text;
            T_DSI_TRIBNR_BEM.asinteger               := seqbem;
            T_DSI_TRIBPC_ALIQ_NORM_ADVAL_II.asfloat  := q_bensAliq_ncm_II.asfloat;
            T_DSI_TRIBVL_IMPOSTO_DEVIDO_II.asfloat   := (q_bensValor_II_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
            T_DSI_TRIBVL_IPT_A_RECOLHER_II.asfloat   := (q_bensValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
            T_DSI_TRIBVL_BASE_CALC_ADVAL_II.asfloat  := ((q_bensBase_Calc_II.asfloat*(q_bensAliq_NCM_II.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
            T_DSI_TRIBPC_ALIQ_NORM_ADVAL_IPI.asfloat := q_bensAliq_ncm_IPI.asfloat;
            T_DSI_TRIBVL_IMPOSTO_DEVIDO_IPI.asfloat  := (q_bensValor_IPI_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
            T_DSI_TRIBVL_IPT_A_RECOLHER_IPI.asfloat  := (q_bensValor_IPI_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
            T_DSI_TRIBVL_BASE_CALC_ADVAL_IPI.asfloat := ((q_bensBase_Calc_IPI.asfloat*(q_bensAliq_NCM_IPI.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
            T_DSI_TRIB.post;

         q_bens.next;
      end;
      processamento('Aguarde... Atualizando SISCOMEX DSI... Bens e tributação',q_bens.recordcount,true);
      T_DSI_BENS.close;
      q_bens.close;


      {verifica embalagens por dsi}
      q_embcarga.Close;
      q_embcarga.Params[0].AsString := q_processosempresa.asstring;
      q_embcarga.Params[1].AsString := q_processosfilial.asstring;
      q_embcarga.Params[2].AsString := me_nossaref.text;
      q_embcarga.open;


      T_DSI_VOLUMES.open;
      {zera volumes}
      T_DSI_VOLUMES.first;
      if T_DSI_VOLUMES.findkey([me_nossaref.text]) then begin
         while ((not T_DSI_VOLUMES.eof) and (T_DSI_VOLUMESCD_DSI_MICRO.asstring = me_nossaref.text)) do begin
                T_DSI_VOLUMES.delete;
         end;
      end;
      q_embcarga.first;

      v_num_seq := 0;
      while not q_embcarga.eof do begin
            processamento('Aguarde... Atualizando SISCOMEX DSI... Embalagens de Cargas',q_embcarga.recordcount,false);
            T_DSI_VOLUMES.append;
            T_DSI_VOLUMESCD_DSI_MICRO.asstring      := me_nossaref.text;
            T_DSI_VOLUMESNR_SEQUENCIAL.asinteger    := v_num_seq;
            T_DSI_VOLUMESCD_TIPO_EMBALAGEM.asstring := q_embcargaTipoEmbalagem.asstring;
            T_DSI_VOLUMESQT_VOLUME_CARGA.asstring   := q_embcargaQuantidade.asstring;
            v_num_seq := v_num_seq +1;
            T_DSI_VOLUMES.post;
            q_embcarga.next;
      end;
      processamento('Aguarde... Atualizando SISCOMEX DSI... Embalagens de Cargas',q_embcarga.recordcount,true);
      T_DSI_VOLUMES.close;
      q_embcarga.close;


      logusu('A','Gerou DSI no Siscomex.');
      showmessage(v_usuario+', seu Siscomex foi atualizado.');
   end;
end;

procedure TF_prodidsi.b_calpiscofinsClick(Sender: TObject);
begin
p_piscofins.visible := true;
b_propis.setfocus;
end;

procedure TF_prodidsi.p_piscofinsExit(Sender: TObject);
begin
p_piscofins.visible := false;
if alterou_PROPIS then begin
   alterou_PROPIS := false;
   AtuNet('Processos_ADICOES_ICMS_PIS_COFINS',[q_processosEmpresa.asstring,q_processosFilial.asstring,q_processosprocesso.asstring],'U');
end;
end;

procedure TF_prodidsi.b_propisClick(Sender: TObject);
var qtaxaOT,qtaxasis,va_total,aliq_icms,aliq_icms_extra,v_fator,qva:real;
    i,apri,b:integer;
    renumera,achou_vida:boolean;
    q_suspe_II,q_suspe_IPI:string;

begin


if (v_AlteraPRO) then begin

///mm 02/08/2006
        if ((q_processosurf_chegada.asstring='0517700') or (q_processosurf_chegada.asstring='0517600')) and (e_ot.text='0,00') then begin
        showmessage(v_usuario+', para processos com esta urf de chegada será necessário informar o valor total das Despesas Aduaneiras Diversas = OT.');
        P_OT.Visible := TRUE;
       // E_OT.SetFocus;
        exit;
        end;


if t_processos.state = dsInactive then t_processos.open;
if t_faturas.state = dsInactive then t_faturas.open;
if t_transpprocesso.state = dsInactive then t_transpprocesso.open;
if t_transportadores.state = dsInactive then t_transportadores.open;
if t_produtos.state = dsInactive then t_produtos.open;
if t_itensfaturas.state = dsInactive then t_itensfaturas.open;
if t_tributositem.state = dsInactive then t_tributositem.open;
if t_taxaconv.state = dsInactive then t_taxaconv.open;
if t_acrescimos.state = dsInactive then t_acrescimos.open;
if t_importadores.state = dsInactive then t_importadores.open;
if t_numerador.state = dsInactive then t_numerador.open;
if T_ncm_vutil.state = dsInactive then T_ncm_vutil.open;
if T_ncm.state = dsInactive then T_ncm.open;

{atualiza capa da di}
atualizadi(f_prodidsi);

renumera := false;
q_tributa := true;
if t_processostipo_declarao.asstring='12' then begin
   if MessageDlg('Calcula somente CONSUMO - RECOLHIMENTO INTEGRAL?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
      q_incpiscofins.Params[1].asstring := 'x';
      q_tributa := false;
   end   
   else  q_incpiscofins.Params[1].asstring := '5';
   if MessageDlg('Renumera adições para gerar Complementares de Consumo?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then renumera := true;
end;

processamento('Aguarde... Inserindo Tabela do Pis/Cofins...',0,false);
q_excpiscofins.Params[0].asstring := me_nossaref.text;
q_excpiscofins.ExecSQL;
q_incpiscofins.Params[0].asstring := v_empresa;
q_incpiscofins.Params[1].asstring := v_filial;
q_incpiscofins.Params[2].asstring := me_nossaref.text;
q_incpiscofins.ExecSQL;


/// alterado em 31/08/2004 para nova lei do icms para 0717700 - AEROPORTO INTERNACIONAL DO RIO DE JANEIRO
/// alterado em 19/10/2004 para colocar a urf de entrada
        if (q_processosurf_chegada.asstring='0717700') then begin
            if (q_processosDT_DESEMBARACO.isnull) then aliq_icms := 13
            else begin
                 if (q_processosDT_DESEMBARACO.asdatetime >=strtodate('31/08/2004')) then aliq_icms := 13
                    else aliq_icms := 18
                 end;
            end
        else begin
            if (q_processosDT_DESEMBARACO.isnull) then aliq_icms := f_mscomex.t_parametrosAliq_ICMS.asfloat
            else begin
                 if v_filial='RJO' then begin
                    if (q_processosDT_DESEMBARACO.asdatetime >=strtodate('31/08/2004')) then aliq_icms := f_mscomex.t_parametrosAliq_ICMS.asfloat
                       else aliq_icms := 18
                 end
                 else aliq_icms := f_mscomex.t_parametrosAliq_ICMS.asfloat
                 end;
        end;
///

aliq_icms_extra := f_mscomex.t_parametrosAliq_ICMS_Extra.asfloat;

/// alterado em 02/08/2006 para colocar 17% Urf de chegada = Salvador(0517700) e Porto de Salvador(0517600)
        if (q_processosurf_chegada.asstring='0517700') or (q_processosurf_chegada.asstring='0517600') then begin
            aliq_icms := 17;
            aliq_icms_extra := 0;
        end;
///


t_propis.close;
t_propis.open;

processamento('Aguarde... Inserindo Tabela do Pis/Cofins...',0,true);

    qtaxasis := 30;
    if q_processostaxa_siscomex.asfloat>0 then
       qtaxasis := q_processostaxa_siscomex.asfloat
    else begin

        q_pagtributos.Close;
        q_pagtributos.Params[0].AsString := q_processosempresa.asstring;
        q_pagtributos.Params[1].AsString := q_processosfilial.asstring;
        q_pagtributos.Params[2].AsString := me_nossaref.text;
        q_pagtributos.open;

        while not q_pagtributos.eof do begin
            processamento('Aguarde... Calculando Taxa Siscomex...',q_pagtributos.recordcount,false);

            for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
                if ((i >= 1 )  and (i <= 2 ))  then  qtaxasis := qtaxasis+10;
                if ((i >= 3 )  and (i <= 5 ))  then  qtaxasis := qtaxasis+8;
                if ((i >= 6 )  and (i <= 10 )) then  qtaxasis := qtaxasis+6;
                if ((i >= 11)  and (i <= 20))  then  qtaxasis := qtaxasis+4;
                if ((i >= 21)  and (i <= 50))  then  qtaxasis := qtaxasis+2;
                if (i >= 51) then  qtaxasis := qtaxasis+1;
            end;

            q_pagtributos.next;

        end;
        processamento('Aguarde... Calculando Taxa Siscomex...',q_pagtributos.recordcount,true);
    end;


    /// soma o va
    t_propis.first;
    va_total := 0;
    while not t_propis.eof do begin
         processamento('Aguarde... Calculando Pis / Cofins...',t_propis.recordcount,false);
          ////alterei 24/09/2004 - para cáculos do "proporcional" ex:02512/04
          qva := t_propisva.asfloat;
          if (t_propisprazo_permanencia.asinteger>0) then begin
             ///v_aliq_ii_pag_propor  := qT_tributositemAliq_NCM_II;
             ///v_aliq_ipi_pag_propor := qT_tributositemAliq_NCM_IPI;
             ////achar a vida útil
             achou_vida := false;
             b:=8;
             while (not achou_vida) and (b>0) do begin
                   if t_ncm_vutil.findkey([copy(t_propisncm.asstring,1,b)]) then achou_vida := true;
                   b:=b-1;
             end;
             if achou_vida then begin
                ///v_fator := (1-(((12*t_ncm_vutilvida_util.asfloat)-strtofloat(me_prazo.text))/(12*12*t_ncm_vutilvida_util.asfloat)));
                v_fator := (strtofloat(t_propisprazo_permanencia.asstring)/(12*t_ncm_vutilvida_util.asfloat));
                t_propis.edit;
                t_propisva_proporcional.asfloat := (t_propisva.asfloat*v_fator);
                t_propisaliq_ncm_ii_proporcional.asfloat := t_propisaliq_ncm_ii.asfloat;
                t_propisaliq_ncm_ipi_proporcional.asfloat := t_propisaliq_ncm_ipi.asfloat;

                t_propisaliq_ncm_ii.asfloat   :=  (t_propisaliq_ncm_ii.asfloat/v_fator);
                if t_ncm.findkey([t_propisncm.asstring]) then
                   t_propisaliq_ncm_ipi.asfloat  := strtofloat(t_ncmaliquota_ipi.asstring);

                t_propis.post;
                qva := t_propisva_proporcional.asfloat
             end
             else showmessage(v_usuario+', não foi encontrado nenhum parâmetro de vida útil'+#13#10+
                          'para a NCM:'+t_itensfaturasncm.asstring+'. O Valor Aduaneiro não será'+#13#10+
                          'proporcional.');

         end;

         va_total := va_total+qva;
         t_propis.next;
    end;
    processamento('Aguarde... Calculando Pis / Cofins...',t_propis.recordcount,true);

///    qtaxasis := (qtaxasis/t_propis.recordcount);
/// apri ... alterei em 09/06/2004 para renumerar as adicoes
    apri := 0;
    t_propis.first;
    while not t_propis.eof do begin
         processamento('Aguarde... Calculando Pis/Cofins... Proporcional/suspensos...',t_propis.recordcount,false);
         t_propis.edit;
         t_propisAliq_ICMS.asfloat := aliq_icms;
         t_propisAliq_ICMS_Extra.asfloat := aliq_icms_extra;
         apri := apri+1;
         if renumera then t_propisADICAO.asstring := copy('000'+inttostr(apri),length('000'+inttostr(apri))-2,3);

////antigo          t_propisda.asfloat := qtaxasis;


         q_suspe_II := '';
         q_suspe_IPI := '';
         if q_tributa then begin
         if q_piscofinstrib.Locate('Adicao',t_propisadicao.asstring,[loCaseInsensitive]) then begin
            if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe_II := ' -> (SUSPENSÃO)';
            if q_piscofinstribRegime_Tributacao_IPI.asstring='5' then q_suspe_IPI := ' -> (SUSPENSÃO)';
         end;
         end;

         //MM 02/08/2006
         qtaxaOT := STRTOFLOAT(E_OT.TEXT);
         
          ///reducao e isencao
          if (t_propisprazo_permanencia.asinteger<=0) then begin
             t_propisOT.asfloat := t_propisva.asfloat*(qtaxaOT/va_total);
             t_propisda.asfloat := t_propisva.asfloat*(qtaxasis/va_total);
             if q_suspe_II='' then begin
                if ((t_propisvalor_ii.asfloat/t_propisva.asfloat)*100)<>t_propisaliq_ncm_ii.asfloat then begin
                   if (abs(((t_propisvalor_ii.asfloat/t_propisva.asfloat)*100)-t_propisaliq_ncm_ii.asfloat) > 0.1) then
                       t_propisaliq_ncm_ii.asfloat := (t_propisvalor_ii.asfloat/t_propisva.asfloat)*100;
                end;
             end
             else begin //// é suspenção
              //  t_propisaliq_ncm_ii.asfloat := 0;
             end;
             if q_suspe_IPI='' then begin
                if ((t_propisvalor_ipi.asfloat/(t_propisva.asfloat+t_propisvalor_ii.asfloat))+100)<>t_propisaliq_ncm_ipi.asfloat then begin
                   if (abs(((t_propisvalor_ipi.asfloat/(t_propisva.asfloat+t_propisvalor_ii.asfloat))*100)-t_propisaliq_ncm_ipi.asfloat) > 0.1) then
                      t_propisaliq_ncm_ipi.asfloat := (t_propisvalor_ipi.asfloat/(t_propisva.asfloat+t_propisvalor_ii.asfloat))*100;
                end;
             end
             else begin //// é suspenção
               // t_propisaliq_ncm_ipi.asfloat := 0;
             end;
          end
          else begin ////proporcional
               t_propisOT.asfloat :=  t_propisva_proporcional.asfloat*(qtaxaOT/va_total);
               t_propisda.asfloat := t_propisva_proporcional.asfloat*(qtaxasis/va_total);
          end;

// 16052006 mm
//          if q_suspe_II<>'' then  t_propisaliq_ncm_ii.asfloat := 0;
//          if q_suspe_IPI<>'' then  t_propisaliq_ncm_ipi.asfloat := 0;

          t_propis.post;

          t_propis.next;
    end;
    processamento('Aguarde... Calculando Pis/Cofins... Proporcional/suspensos...',t_propis.recordcount,true);

    if not processa_piscofins then showmessage(v_usuario+', foi o reprocessado os cálculos do Pis/Cofins!');

end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;


end;


procedure TF_prodidsi.b_recalcClick(Sender: TObject);
var va,d1,a,b,c,d2,e,e2,egravar,base,base_pisco,x,x_pisco,y,ii,ipi,icms,icms2,icms_base:real;
v_fator:real;
v:integer;
achou_vida:boolean;

begin

if (v_AlteraPRO) then begin
      ///alterei em 07/07/2005 para gravar o FOB para utiliza na nf da web
      ///q_gravaFOB.close;
      ///q_gravaFOB.Params[0].asstring := t_propisprocesso.asstring;
      ///q_gravaFOB.Open;
      ///ALTEREI EM 31/03/2006 coloquei no q_incpiscofins - mm

t_propis.first;
while not t_propis.eof do begin
     processamento('Aguarde... ReCalculando Pis/Cofins... Proporcional/suspensos...',t_propis.recordcount,false);
      /// não é proporcional
     if (t_propisprazo_permanencia.asinteger<=0) then begin
        va := t_propisVA.asfloat;
        d1 := (t_propisOT.asfloat+t_propisDA.asfloat);
        a  := (t_propisAliq_NCM_II.asfloat/100);
        b  := (t_propisAliq_NCM_IPI.asfloat/100);
        c  := (t_propisAliq_PIS_PASEP.asfloat/100);
        d2 := (t_propisAliq_COFINS.asfloat/100);
        e  := ((t_propisAliq_ICMS.asfloat+t_propisAliq_ICMS_EXTRA.asfloat)/100);
        e2 := ((t_propisAliq_ICMS_EXTRA.asfloat)/100);
        egravar := (t_propisAliq_ICMS.asfloat/100);
     end
     else begin /// proporcional
//        va := t_propisVA_proporcional.asfloat;
        va := t_propisVA.asfloat;

        achou_vida := false;
        v:=8;
        while (not achou_vida) and (v>0) do begin
              if t_ncm_vutil.findkey([copy(t_propisncm.asstring,1,v)]) then begin
                 achou_vida := true;
              end;
              v:=v-1;
        end;
        v_fator := 1;
        if achou_vida then begin
           ///v_fator := (1-(((12*t_ncm_vutilvida_util.asfloat)-strtofloat(me_prazo.text))/(12*12*t_ncm_vutilvida_util.asfloat)));
           v_fator := (strtofloat(t_propisprazo_permanencia.asstring)/(12*t_ncm_vutilvida_util.asfloat));
        end;

        d1 := (t_propisOT.asfloat+t_propisDA.asfloat);

        a  := (t_propisAliq_NCM_II.asfloat)*v_fator;
        a  :=  strtofloat(FormatFloat('0.00',a));
        a  := (a/100);

        b  := (t_propisAliq_NCM_IPI.asfloat)*v_fator;
        b  :=  strtofloat(FormatFloat('0.00',b));
        b  := (b/100);

        c  := (t_propisAliq_PIS_PASEP.asfloat)*v_fator;
        c  :=  strtofloat(FormatFloat('0.00',c));
        c  := (c/100);

        d2 := (t_propisAliq_COFINS.asfloat)*v_fator;
        d2 :=  strtofloat(FormatFloat('0.00',d2));
        d2 := (d2/100);

        e  := ((t_propisAliq_ICMS.asfloat+t_propisAliq_ICMS_EXTRA.asfloat))*v_fator;
        e  :=  strtofloat(FormatFloat('0.00',e));
        e  := (e/100);

        e2 := ((t_propisAliq_ICMS_EXTRA.asfloat))*v_fator;
        e2 :=  strtofloat(FormatFloat('0.00',e2));
        e2 := (e2/100);

        egravar := (t_propisAliq_ICMS.asfloat)*v_fator;
        egravar :=  strtofloat(FormatFloat('0.00',egravar));
        egravar := (egravar/100);

     end;

     x := (1+e*(a+b*(1+a)))/(1-c-d2-e);
     x_pisco := (1+(e*(a+(b*(1+a)))))/((1-c-d2)*(1-e));
     y := e/(1-c-d2-e);

     base := (va*x+d1*y);

///     base_pisco := (va*x); //d1=0
///     base_pisco := (va*x_pisco); //alterado em 30/06/2005 -mm
///   base_pisco := base; ///alterado em 26/10/2005 indtrucao normativa RFB 571

     base_pisco := (va*x_pisco); ///alterado em 23/11/2005 indtrucao normativa RFB 572

      ii := va*a;
      ipi := (va+ii)*b;

      //// MARCELO ALTEROU EM 12/05
      ///if (q_processosfilial.asstring = 'CWB') then
      ///   icms_base := ((va+ii+ipi+base*(c+d2))/(1-e))
      ///else

      icms_base := ((va+ii+ipi+d1+(base_pisco*(c+d2)))/(1-e));

      icms := (icms_base)*e;
      icms2 := (icms_base)*e2;

      t_propis.edit;
      t_propisBASEC_PISCOFINS.asfloat   := base_pisco;
      t_propisBASEC_ICMS.asfloat        := icms_base;
      t_propisVALOR_II.asfloat          := ii;
      t_propisVALOR_IPI.asfloat         := ipi;
      t_propisVALOR_ICMS.asfloat        := icms;
      t_propisVALOR_ICMS_EXTRA.asfloat  := icms2;
      t_propisVALOR_PIS_PASEP.asfloat   := (c*base_pisco);
      t_propisVALOR_COFINS.asfloat      := (d2*base_pisco);

      ///gravei em 18052006 - mm
      if v_fator <> 1 then begin
        t_propisAliq_PIS_PASEP.asfloat  := c*100;
        t_propisAliq_COFINS.asfloat     := d2*100;
        t_propisAliq_ICMS.asfloat       := egravar*100;
        t_propisAliq_ICMS_EXTRA.asfloat := e2*100;
      end;

      t_propis.post;
      t_propis.next;

end;
         processamento('Aguarde... Calculando Pis/Cofins... Proporcional/suspensos...',t_propis.recordcount,true);
    if not processa_piscofins then showmessage(v_usuario+', foi recalculado o Pis/Cofins!');
end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;

end;

procedure TF_prodidsi.t_propisAfterPost(DataSet: TDataSet);
begin
alterou_PROPIS := True;
end;

procedure TF_prodidsi.btn_fechaotClick(Sender: TObject);
begin
p_ot.Visible := false;
end;

procedure TF_prodidsi.btn_otClick(Sender: TObject);
begin

b_propisClick(f_prodidsi);
e_ot.Text := '0,00';
p_ot.Visible := false;

end;

end.
