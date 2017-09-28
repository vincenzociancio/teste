unit u_prodidsi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Buttons, ComCtrls, Grids, DBGrids,
  DBCtrls,Shellapi,FileCtrl;
type
  TF_prodidsi = class(TForm)
    p_processo1: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    q_processos: TQuery;
    ds_qprocessos: TDataSource;
    l_cliente: TLabel;
    ds_qadicoes: TDataSource;
    Q_adicoes: TQuery;
    ds_qdetalhe_adicao: TDataSource;
    q_detalhe_adicao: TQuery;
    p_processo2: TPanel;
    DBG_adicoes: TDBGrid;
    PageControl8: TPageControl;
    TS_detalhe: TTabSheet;
    dbg_detahes: TDBGrid;
    b_atualizasiscomex: TBitBtn;
    b_atualizasiscomexa: TBitBtn;
    T_procdi: TTable;
    T_di: TTable;
    T_adicoes: TTable;
    q_detalhe: TQuery;
    T_detalhes: TTable;
    T_itensfaturas: TTable;
    T_tributositem: TTable;
    Q_acresdedu: TQuery;
    T_acresval: TTable;
    T_deduval: TTable;
    T_taxaconv: TTable;
    Q_atovinc: TQuery;
    T_acrescimos: TTable;
    T_pagprevisto: TTable;
    T_atosvinc: TTable;
    q_embcarga: TQuery;
    T_embcarga: TTable;
    Q_cargaarm: TQuery;
    T_cargaarm: TTable;
    q_destaquencm: TQuery;
    t_destaquencm: TTable;
    q_docsinstru: TQuery;
    T_docsintru: TTable;
    Q_tributos: TQuery;
    T_tributo: TTable;
    q_pagprev: TQuery;
    T_pagtributos: TTable;
    q_pagtributos: TQuery;
    T_pagvinculado: TTable;
    q_pagvinculados: TQuery;
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
    q_acertafretseg: TQuery;
    q_acertapagtrib: TQuery;
    T_faturas: TTable;
    T_transpprocesso: TTable;
    T_importadores: TTable;
    T_numerador: TTable;
    q_infcomp: TQuery;
    Q_infocomp2: TQuery;
    q_infocomp3: TQuery;
    q_infocomp4: TQuery;
    q_infocomp5: TQuery;
    q_infocomp6: TQuery;
    T_unidades: TTable;
    t_contacorrente_reg: TTable;
    t_contacorrente_dep: TTable;
    q_infocomp1: TQuery;
    T_transportadores: TTable;
    T_ncm: TTable;
    T_cambio: TTable;
    Q_update1: TQuery;
    q_update2: TQuery;
    q_upacrescimos: TQuery;
    q_sub: TQuery;
    q_fobcif12c: TQuery;
    q_fobcif12a: TQuery;
    q_fobcif: TQuery;
    q_up_itens: TQuery;
    t_aju: TTable;
    pinf: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    b_processa: TBitBtn;
    b_grava: TBitBtn;
    b_fecha: TBitBtn;
    Memo_InfoComplementar: TDBMemo;
    binf: TBitBtn;
    q_infocomp7: TQuery;
    B_DSI: TBitBtn;
    T_DSI_DG: TTable;
    T_DSI_BENS: TTable;
    T_DSI_TRIB: TTable;
    T_DSI_VOLUMES: TTable;
    q_bens: TQuery;
    q_excpiscofins: TQuery;
    b_calpiscofins: TBitBtn;
    q_incpiscofins: TQuery;
    ds_propis: TDataSource;
    p_piscofins: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    b_propis: TBitBtn;
    BitBtn3: TBitBtn;
    b_recalc: TBitBtn;
    dbg_piscofins: TDBGrid;
    q_isen_sus: TQuery;
    t_ncm_vutil: TTable;
    q_piscofinstrib: TQuery;
    tbproregimp: TTable;
    q_gravaFOB: TQuery;
    re: TRichEdit;
    T_aladi: TTable;
    T_atos: TTable;
    t_tpato: TTable;
    P_OT: TPanel;
    E_OT: TEdit;
    Panel3: TPanel;
    btn_ot: TBitBtn;
    btn_fechaot: TBitBtn;
    q_prodocs: TQuery;
    q_tributacao: TQuery;
    q_uppropis: TQuery;
    q_propis: TQuery;
    dsq_propis: TDataSource;
    T_procdiNR_DECL_IMP_MICRO: TStringField;
    T_procdiNR_SEQ_PROCESSO: TSmallintField;
    T_procdiCD_TIPO_PROCESSO: TStringField;
    T_procdiNR_PROCESSO_INSTR: TStringField;
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
    T_transpprocessoEmpresa: TStringField;
    T_transpprocessoFilial: TStringField;
    T_transpprocessoProcesso: TStringField;
    T_transpprocessoVia: TStringField;
    T_transpprocessoMultimodal: TIntegerField;
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
    T_transpprocessoOperacao_FUNDAP: TIntegerField;
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
    T_transportadoresEmpresa: TStringField;
    T_transportadoresFilial: TStringField;
    T_transportadoresCodigo: TStringField;
    T_transportadoresRazao_Social: TStringField;
    T_transportadoresPais: TStringField;
    T_transportadoresCGC_CPF: TStringField;
    T_transportadoresEndereco: TStringField;
    T_transportadoresNumero: TStringField;
    T_transportadoresComplemento: TStringField;
    T_transportadoresBairro: TStringField;
    T_transportadoresCidade: TStringField;
    T_transportadoresCEP: TStringField;
    T_transportadoresUF: TStringField;
    T_transportadoresEstado: TStringField;
    T_transportadoresInscricao_Estadual: TStringField;
    T_importadoresEmpresa: TStringField;
    T_importadoresFilial: TStringField;
    T_importadoresCodigo: TStringField;
    T_importadoresRazao_Social: TStringField;
    T_importadoresPais: TStringField;
    T_importadoresCNPJ_CPF_COMPLETO: TStringField;
    T_importadoresCGC_CPF: TStringField;
    T_importadoresTipo_Importador: TStringField;
    T_importadoresEndereco: TStringField;
    T_importadoresNumero: TStringField;
    T_importadoresComplemento: TStringField;
    T_importadoresBairro: TStringField;
    T_importadoresCidade: TStringField;
    T_importadoresCEP: TStringField;
    T_importadoresUF: TStringField;
    T_importadoresEstado: TStringField;
    T_importadoresInscricao_Estadual: TStringField;
    T_importadoresBanco: TStringField;
    T_importadoresAgencia: TStringField;
    T_importadoresConta_Corrente: TStringField;
    T_importadoresConta_Corrente_Registro: TIntegerField;
    T_importadoresConta_Corrente_Deposito: TIntegerField;
    T_importadoreslink: TStringField;
    T_importadoresCAE: TStringField;
    T_importadoresTelefone: TStringField;
    T_importadoresAtivo: TIntegerField;
    T_importadoresAcesso_WEB_MS: TIntegerField;
    T_importadoresAcesso_WEB_CLI: TIntegerField;
    T_importadoresAcesso_WEB_REC: TIntegerField;
    T_importadoresBASE_ICMS: TIntegerField;
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
    T_DSI_DGTX_INFO_COMPL: TMemoField;
    T_DSI_DGIN_SERVIDOR_UL: TBooleanField;
    T_DSI_DGVL_TOTAL_PIS_CALC: TFloatField;
    T_DSI_DGVL_TOTAL_COFINS_CALC: TFloatField;
    T_DSI_DGVL_TOTAL_PIS_A_REC: TFloatField;
    T_DSI_DGVL_TOTAL_COFINS_A_REC: TFloatField;
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
    T_DSI_BENSVL_ALIQ_ICMS: TFloatField;
    T_DSI_BENSCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    T_DSI_BENSCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    T_numeradorNR_PROV_DECLARACAO: TIntegerField;
    T_numeradorNR_ANO_DECLARACAO: TSmallintField;
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
    T_DSI_TRIBVL_BASE_CALC_ADVAL_PISCOF: TFloatField;
    T_DSI_TRIBPC_ALIQ_NORM_ADVAL_PIS: TFloatField;
    T_DSI_TRIBVL_ALIQ_ESPEC_PIS: TFloatField;
    T_DSI_TRIBNM_UN_ALIQ_ESPEC_PIS: TStringField;
    T_DSI_TRIBQT_MERC_UN_ALIQ_ESPEC_PIS: TFloatField;
    T_DSI_TRIBVL_IMPOSTO_CALCULADO_PIS: TFloatField;
    T_DSI_TRIBVL_IMPOSTO_DEVIDO_PIS: TFloatField;
    T_DSI_TRIBVL_IPT_A_RECOLHER_PIS: TFloatField;
    T_DSI_TRIBPC_ALIQ_NORM_ADVAL_COF: TFloatField;
    T_DSI_TRIBVL_ALIQ_ESPEC_COF: TFloatField;
    T_DSI_TRIBNM_UN_ALIQ_ESPEC_COF: TStringField;
    T_DSI_TRIBQT_MERC_UN_ALIQ_ESPEC_COF: TFloatField;
    T_DSI_TRIBVL_IMPOSTO_CALCULADO_COF: TFloatField;
    T_DSI_TRIBVL_IMPOSTO_DEVIDO_COF: TFloatField;
    T_DSI_TRIBVL_IPT_A_RECOLHER_COF: TFloatField;
    T_DSI_VOLUMESCD_DSI_MICRO: TStringField;
    T_DSI_VOLUMESNR_SEQUENCIAL: TSmallintField;
    T_DSI_VOLUMESCD_TIPO_EMBALAGEM: TStringField;
    T_DSI_VOLUMESQT_VOLUME_CARGA: TIntegerField;
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
    q_infcompCodigo_1: TStringField;
    q_infcompROF_BACEN: TStringField;
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
    q_infocomp1Data_Chegada_URF_Cheg: TDateTimeField;
    q_infocomp1Codigo_Presenca_Carga: TStringField;
    q_infocomp1Via: TStringField;
    Q_infocomp2Processo: TStringField;
    Q_infocomp2Codigo: TStringField;
    Q_infocomp2Descricao: TStringField;
    Q_infocomp2Lacre: TStringField;
    q_infocomp3Processo: TStringField;
    q_infocomp3Codigo: TStringField;
    q_infocomp3razao_social: TStringField;
    q_infocomp3Modalidade_de_Pagamento: TStringField;
    q_infocomp3DESCRICAO: TStringField;
    q_infocomp3Instituicao_Financiadora: TStringField;
    q_infocomp3Tipo_Parcela: TStringField;
    q_infocomp3Numero_de_parcelas: TStringField;
    q_infocomp3Periodicidade: TStringField;
    q_infocomp3Valor_das_Parcelas: TFloatField;
    q_infocomp3Indicador_Periodicidade: TStringField;
    q_infocomp3Taxa_de_Juros: TIntegerField;
    q_infocomp3Codigo_Taxa_de_Juros: TStringField;
    q_infocomp3Valor_Taxa_de_Juros: TFloatField;
    q_infocomp3ROF_BACEN: TStringField;
    q_infocomp3Percentual_ROF: TFloatField;
    q_infocomp3Cobertura_Cambial: TStringField;
    q_infocomp3desc_motscamb: TStringField;
    q_infocomp3Valor_Total: TFloatField;
    q_infocomp3DtEmissao: TDateTimeField;
    q_infocomp4Processo: TStringField;
    q_infocomp4TipoEmbalagem: TStringField;
    q_infocomp4DescricaoEmbalagem: TStringField;
    q_infocomp4Quantidade: TStringField;
    q_infocomp4Descricao: TStringField;
    q_infocomp5Processo: TStringField;
    q_infocomp5DESCRICAO: TStringField;
    q_infocomp5Taxa_conversao: TFloatField;
    q_infocomp5Taxa_conversaoc: TFloatField;
    q_infocomp6Processo: TStringField;
    q_infocomp6Certificado_Origem: TStringField;
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
    q_processosFechado: TIntegerField;
    q_processosATIVO: TIntegerField;
    q_processosUF: TStringField;
    q_processosResponsavel_empresa: TStringField;
    q_processosResponsavel_empresac: TStringField;
    q_processosBASE_ICMS: TIntegerField;
    T_cambioCodigo: TStringField;
    T_cambioDescricao: TStringField;
    T_cambioTaxa_Conversao: TStringField;
    T_cambioVigencia_Inicio_Taxa: TStringField;
    T_cambioVigencia_Fim_Taxa: TStringField;
    T_aladiCodigo: TStringField;
    T_aladiDescricao: TStringField;
    T_atosEmpresa: TStringField;
    T_atosFilial: TStringField;
    T_atosTipo_Ato: TStringField;
    T_atosNumero: TStringField;
    T_atosEX: TStringField;
    T_atosTipo_Ato_Legal: TStringField;
    T_atosOrgao_Emissor: TStringField;
    T_atosAno_Ato_Legal: TStringField;
    T_atosobs: TStringField;
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
    T_adicoesVL_ALIQ_ICMS: TFloatField;
    T_adicoesIN_REDUC_BASE_CALC: TBooleanField;
    T_adicoesCD_FUND_LEG_REDUC: TStringField;
    T_adicoesCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    T_adicoesCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    T_adicoesIN_TIPO_CERTIFICADO: TStringField;
    T_atosvincNR_DECL_IMP_MICRO: TStringField;
    T_atosvincNR_OP_IMP_MICRO: TStringField;
    T_atosvincCD_ASSUNTO_VINCUL: TStringField;
    T_atosvincSG_TIPO_ATO_VINCUL: TStringField;
    T_atosvincSG_ORG_ATO_VINCUL: TStringField;
    T_atosvincDT_ANO_ATO_VINCUL: TStringField;
    T_atosvincNR_ATO_VINCULADO: TStringField;
    T_atosvincNR_EX_ATO_VINCUL: TStringField;
    q_embcargaNR_DECL_IMP_MICRO: TStringField;
    q_embcargaTipoEmbalagem: TStringField;
    q_embcargaQuantidade: TStringField;
    T_embcargaNR_DECL_IMP_MICRO: TStringField;
    T_embcargaNR_SEQ_EMBALAGEM: TSmallintField;
    T_embcargaCD_TIPO_EMBALAGEM: TStringField;
    T_embcargaQT_VOLUME_CARGA: TStringField;
    Q_cargaarmNR_DECL_IMP_MICRO: TStringField;
    Q_cargaarmNome_Armazem: TStringField;
    T_cargaarmNR_DECL_IMP_MICRO: TStringField;
    T_cargaarmNR_SEQ_ARMAZEM: TSmallintField;
    T_cargaarmNM_ARMAZEM_CARGA: TStringField;
    T_detalhesNR_DECL_IMP_MICRO: TStringField;
    T_detalhesNR_OP_IMP_MICRO: TStringField;
    T_detalhesNU_SEQ_DETALHE: TSmallintField;
    T_detalhesTX_DESC_DET_MERC: TMemoField;
    T_detalhesQT_MERC_UN_COMERC: TStringField;
    T_detalhesNM_UN_MEDID_COMERC: TStringField;
    T_detalhesVL_UNID_LOC_EMB: TFloatField;
    T_detalhesVL_UNID_COND_VENDA: TStringField;
    T_detalhesCD_PRODUTO: TStringField;
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
    Q_acresdeduNR_DECL_IMP_MICRO: TStringField;
    Q_acresdeduAdicao: TStringField;
    Q_acresdeduSomaDeAcresc_reduc_Valaduan: TFloatField;
    Q_acresdeduIncoterm: TStringField;
    Q_acresdeduMoeda: TStringField;
    Q_acresdeduCD_MET_ACRES_VALOR: TStringField;
    T_pagtributosNR_DECL_IMP_MICRO: TStringField;
    T_pagtributosNR_SEQ_PGTO_TRIB: TSmallintField;
    T_pagtributosCD_RECEITA_PGTO: TStringField;
    T_pagtributosCD_BANCO_PGTO_TRIB: TStringField;
    T_pagtributosNR_AGENC_PGTO_TRIB: TStringField;
    T_pagtributosVL_TRIBUTO_PAGO: TFloatField;
    T_pagtributosDT_PGTO_TRIBUTO: TStringField;
    T_pagtributosVL_MULTA_PGTO_TRIB: TFloatField;
    T_pagtributosVL_JUROS_PGTO_TRIB: TFloatField;
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
    q_destaquencmNR_DECL_IMP_MICRO: TStringField;
    q_destaquencmAdicao: TStringField;
    q_destaquencmDestaque_NCM: TStringField;
    t_destaquencmNR_DECL_IMP_MICRO: TStringField;
    t_destaquencmNR_OP_IMP_MICRO: TStringField;
    t_destaquencmNU_SEQ_DESTAQUE: TSmallintField;
    t_destaquencmNR_DESTAQUE_NCM: TStringField;
    q_prodocsEmpresa: TStringField;
    q_prodocsFilial: TStringField;
    q_prodocsProcesso: TStringField;
    q_prodocsREG: TAutoIncField;
    q_prodocsDESCRICAO: TStringField;
    q_prodocsCD_TIPO_DCTO_INSTR: TStringField;
    q_prodocsNR_DCTO_INSTRUCAO: TStringField;
    q_prodocsNM_DCTO_INSTRUCAO: TStringField;
    T_docsintruNR_DECL_IMP_MICRO: TStringField;
    T_docsintruNR_SEQ_DCTO_INSTR: TSmallintField;
    T_docsintruCD_TIPO_DCTO_INSTR: TStringField;
    T_docsintruNR_DCTO_INSTRUCAO: TStringField;
    T_docsintruNM_DCTO_INSTRUCAO: TStringField;
    t_tpatoCodigo: TStringField;
    t_tpatoDescricao: TStringField;
    q_acertafretsegProcesso: TStringField;
    q_acertafretsegRegime_Tributacao_II: TStringField;
    q_acertafretsegprepaid: TFloatField;
    q_acertafretsegcollect: TFloatField;
    q_acertafretsegternac: TFloatField;
    q_acertafretsegseguro: TFloatField;
    q_acertafretsegMoeda: TStringField;
    q_acertafretsegTaxa_conversao: TFloatField;
    q_acertafretsegTaxa_conversaoc: TFloatField;
    q_acertafretsegMoeda_1: TStringField;
    q_acertafretsegTaxa_conversaofre: TFloatField;
    q_acertafretsegTaxa_conversaocfre: TFloatField;
    q_acertafretsegMoeda_2: TStringField;
    q_acertafretsegTaxa_conversaoseg: TFloatField;
    q_acertafretsegTaxa_conversaocseg: TFloatField;
    T_unidadesCODIGO: TStringField;
    T_unidadesDESCRICAO: TStringField;
    T_unidadesABREV: TStringField;
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
    q_acertapesodiNR_DECL_IMP_MICRO: TStringField;
    q_acertapesodipeso_liquido: TFloatField;
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
    T_acresvalNR_DECL_IMP_MICRO: TStringField;
    T_acresvalNR_OP_IMP_MICRO: TStringField;
    T_acresvalCD_MET_ACRES_VALOR: TStringField;
    T_acresvalVL_ACRESCIMO_MOEDA: TFloatField;
    T_acresvalCD_MD_NEGOC_ACRES: TStringField;
    T_acresvalVL_ACRESCIMO_MN: TFloatField;
    t_ajuEmpresa: TStringField;
    t_ajuFilial: TStringField;
    t_ajuCodigo: TStringField;
    t_ajuRazao_Social: TStringField;
    t_ajuPais: TStringField;
    t_ajuCGC_CPF: TStringField;
    t_ajuEndereco: TStringField;
    t_ajuNumero: TStringField;
    t_ajuComplemento: TStringField;
    t_ajuBairro: TStringField;
    t_ajuCidade: TStringField;
    t_ajuCEP: TStringField;
    t_ajuUF: TStringField;
    t_ajuEstado: TStringField;
    t_ajuInscricao_Estadual: TStringField;
    t_ajuRegistro: TStringField;
    t_ajuexibe_complementares: TIntegerField;
    T_deduvalNR_DECL_IMP_MICRO: TStringField;
    T_deduvalNR_OP_IMP_MICRO: TStringField;
    T_deduvalCD_MET_DEDUC_VALOR: TStringField;
    T_deduvalVL_DEDUCAO_MNEG: TFloatField;
    T_deduvalCD_MD_NEGOC_DEDUC: TStringField;
    T_deduvalVL_DEDUCAO_MN: TFloatField;
    T_pagprevistoNR_DECL_IMP_MICRO: TStringField;
    T_pagprevistoNR_OP_IMP_MICRO: TStringField;
    T_pagprevistoNU_SEQ_PAG_PREV: TSmallintField;
    T_pagprevistoDT_PREV_PGTO_360: TStringField;
    T_pagprevistoVL_PREV_PGTO_360: TFloatField;
    q_propisEmpresa: TStringField;
    q_propisFilial: TStringField;
    q_propisProcesso: TStringField;
    q_propisAdicao: TStringField;
    q_propisNCM: TStringField;
    q_propisVA: TFloatField;
    q_propisOT: TFloatField;
    q_propisDA: TFloatField;
    q_propisAliq_NCM_II: TFloatField;
    q_propisAliq_NCM_IPI: TFloatField;
    q_propisAliq_PIS_PASEP: TFloatField;
    q_propisAliq_COFINS: TFloatField;
    q_propisAliq_ICMS: TFloatField;
    q_propisAliq_ICMS_EXTRA: TFloatField;
    q_propisBASEC_PISCOFINS: TFloatField;
    q_propisBASEC_ICMS: TFloatField;
    q_propisVALOR_II: TFloatField;
    q_propisVALOR_IPI: TFloatField;
    q_propisVALOR_ICMS: TFloatField;
    q_propisVALOR_ICMS_EXTRA: TFloatField;
    q_propisVALOR_PIS_PASEP: TFloatField;
    q_propisVALOR_COFINS: TFloatField;
    q_propisPrazo_permanencia: TIntegerField;
    q_propisVA_proporcional: TFloatField;
    q_propisAliq_NCM_II_proporcional: TFloatField;
    q_propisAliq_NCM_IPI_proporcional: TFloatField;
    q_propisFOB: TFloatField;
    t_contacorrente_regEmpresa: TStringField;
    t_contacorrente_regFilial: TStringField;
    t_contacorrente_regCodigo: TAutoIncField;
    t_contacorrente_regBanco_Caixa: TStringField;
    t_contacorrente_regDescricao: TStringField;
    t_contacorrente_regBanco: TStringField;
    t_contacorrente_regAgencia: TStringField;
    t_contacorrente_regConta_Corrente: TStringField;
    t_contacorrente_regSaldo: TFloatField;
    t_contacorrente_regNivel: TStringField;
    t_contacorrente_regData: TDateTimeField;
    t_contacorrente_regEmpresacc: TStringField;
    t_contacorrente_regFilialcc: TStringField;
    t_contacorrente_regASCAA: TIntegerField;
    t_contacorrente_depEmpresa: TStringField;
    t_contacorrente_depFilial: TStringField;
    t_contacorrente_depCodigo: TAutoIncField;
    t_contacorrente_depBanco_Caixa: TStringField;
    t_contacorrente_depDescricao: TStringField;
    t_contacorrente_depBanco: TStringField;
    t_contacorrente_depAgencia: TStringField;
    t_contacorrente_depConta_Corrente: TStringField;
    t_contacorrente_depSaldo: TFloatField;
    t_contacorrente_depNivel: TStringField;
    t_contacorrente_depData: TDateTimeField;
    t_contacorrente_depEmpresacc: TStringField;
    t_contacorrente_depFilialcc: TStringField;
    t_contacorrente_depASCAA: TIntegerField;
    t_ncm_vutilncm: TStringField;
    t_ncm_vutilvida_util: TStringField;
    q_gravaFOBProcesso: TStringField;
    q_gravaFOBAdicao: TStringField;
    q_gravaFOBFOB: TFloatField;
    q_gravaFOBFOBnovo: TFloatField;
    q_piscofinstribProcesso: TStringField;
    q_piscofinstribAdicao: TStringField;
    q_piscofinstribRegime_Tributacao_II: TStringField;
    q_piscofinstribRegime_Tributacao_IPI: TStringField;
    q_piscofinstribDESCRICAO: TStringField;
    q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    q_piscofinstribTratamento_Tributario: TStringField;
    q_isen_susEmpresa: TStringField;
    q_isen_susFilial: TStringField;
    q_isen_susProcesso: TStringField;
    q_isen_susRegime_Tributacao_II: TStringField;
    q_isen_susFundamento_Legal_II: TStringField;
    q_isen_susAdicao: TStringField;
    T_acrescimosEmpresa: TStringField;
    T_acrescimosFilial: TStringField;
    T_acrescimosProcesso: TStringField;
    T_acrescimosFatura: TStringField;
    T_acrescimosCD_MET_ACRES_VALOR: TStringField;
    T_acrescimosDescricao: TStringField;
    T_acrescimosVL_ACRESCIMO_MOEDA: TFloatField;
    T_acrescimosCD_MD_NEGOC_ACRES: TStringField;
    T_acrescimosVL_ACRESCIMO_MN: TFloatField;
    q_subEmpresa: TStringField;
    q_subFilial: TStringField;
    q_subNumero: TStringField;
    q_subImportador: TStringField;
    q_subCNPJ_CPF_COMPLETO: TStringField;
    q_subRazao_Social: TStringField;
    q_fobcifEmpresa: TStringField;
    q_fobcifFilial: TStringField;
    q_fobcifProcesso: TStringField;
    q_fobcifTipo_Declaracao: TStringField;
    q_fobcifMoeda: TStringField;
    q_fobcifDESCRICAO: TStringField;
    q_fobcifTaxa_conversao: TFloatField;
    q_fobcifFOB: TFloatField;
    q_fobcifFOBREAL: TFloatField;
    q_fobcifCIF: TFloatField;
    q_fobcifCIFREAL: TFloatField;
    q_fobcif12aEmpresa: TStringField;
    q_fobcif12aFilial: TStringField;
    q_fobcif12aProcesso: TStringField;
    q_fobcif12aTipo_Declaracao: TStringField;
    q_fobcif12aMoeda: TStringField;
    q_fobcif12aDESCRICAO: TStringField;
    q_fobcif12aTaxa_conversao: TFloatField;
    q_fobcif12aFOB: TFloatField;
    q_fobcif12aFOBREAL: TFloatField;
    q_fobcif12aCIF: TFloatField;
    q_fobcif12aCIFREAL: TFloatField;
    q_fobcif12aRegime_Tributacao_II: TStringField;
    q_fobcif12aRegime_Tributacao_IPI: TStringField;
    q_fobcif12cEmpresa: TStringField;
    q_fobcif12cFilial: TStringField;
    q_fobcif12cProcesso: TStringField;
    q_fobcif12cTipo_Declaracao: TStringField;
    q_fobcif12cMoeda: TStringField;
    q_fobcif12cDESCRICAO: TStringField;
    q_fobcif12cTaxa_conversao: TFloatField;
    q_fobcif12cFOB: TFloatField;
    q_fobcif12cFOBREAL: TFloatField;
    q_fobcif12cCIF: TFloatField;
    q_fobcif12cCIFREAL: TFloatField;
    q_fobcif12cRegime_Tributacao_II: TStringField;
    q_fobcif12cRegime_Tributacao_IPI: TStringField;
    Q_adicoesNR_DECL_IMP_MICRO: TStringField;
    Q_adicoesAdicao: TStringField;
    Q_adicoesURF_chegada: TStringField;
    Q_adicoesVia: TStringField;
    Q_adicoesMultimodal: TIntegerField;
    Q_adicoesRazao_social: TStringField;
    Q_adicoesEndereco: TStringField;
    Q_adicoesNumero: TStringField;
    Q_adicoesComplemento: TStringField;
    Q_adicoesCidade: TStringField;
    Q_adicoesEstado: TStringField;
    Q_adicoesPais: TStringField;
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
    Q_adicoesCondicao: TStringField;
    Q_adicoesValor_aduaneiro: TFloatField;
    Q_adicoesCD_METOD_VALORACAO: TStringField;
    Q_adicoesCD_TIPO_ACORDO_TAR: TStringField;
    Q_adicoesACORDO_ALADI: TStringField;
    Q_adicoesRegime_Tributacao_II: TStringField;
    Q_adicoesFundamento_Legal_II: TStringField;
    Q_adicoesMotivo_Adm_Temp: TStringField;
    Q_adicoesNumero_Ato_Legal_II: TStringField;
    Q_adicoesPercentual_Reducao_II: TFloatField;
    Q_adicoesCobertura_cambial: TStringField;
    Q_adicoesModalidade_de_Pagamento: TStringField;
    Q_adicoesInstituicao_Financiadora: TStringField;
    Q_adicoesMotivo_Sem_Cobertura: TStringField;
    Q_adicoesNumero_de_parcelas: TStringField;
    Q_adicoesPeriodicidade: TStringField;
    Q_adicoesPrimeiroDeValor_das_Parcelas: TFloatField;
    Q_adicoesIndicador_Periodicidade: TStringField;
    Q_adicoestaxa_de_juros: TIntegerField;
    Q_adicoesROF_BACEN: TStringField;
    Q_adicoesPercentual_ROF: TFloatField;
    Q_adicoesCodigo_taxa_de_juros: TStringField;
    Q_adicoesIN_BEM_ENCOMENDA: TIntegerField;
    Q_adicoesIN_MATERIAL_USADO: TIntegerField;
    Q_adicoesVMLE: TFloatField;
    Q_adicoesBase_Calc_ii: TFloatField;
    Q_adicoesALIQUOTA_ALADI: TFloatField;
    Q_adicoesRegime_Tributacao_IPI: TStringField;
    Q_adicoesNumero_Ato_Legal_IPI: TStringField;
    Q_adicoesPercentual_Reduca_IPI: TFloatField;
    Q_adicoesValor_taxa_de_juros: TFloatField;
    Q_adicoesUnidade_Medida_Estat: TStringField;
    Q_adicoesMoeda_Frete: TStringField;
    Q_adicoesMoeda_Seguro: TStringField;
    Q_adicoesCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    Q_adicoesCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    Q_adicoesPESO_LIBRA: TIntegerField;
    q_pagvinculadosNR_DECL_IMP_MICRO: TStringField;
    q_pagvinculadosAdicao: TStringField;
    q_pagvinculadosforma_de_pagamento: TStringField;
    q_pagvinculadosmoeda_nacional: TIntegerField;
    q_pagvinculadosBanco: TStringField;
    q_pagvinculadosPraca: TStringField;
    q_pagvinculadosContrato: TStringField;
    q_pagvinculadosvalor_percentual: TFloatField;
    q_pagvinculadoscnpj_comprador: TStringField;
    q_pagvinculadostipo_cnpj: TStringField;
    q_pagvinculadosIncoterm: TStringField;
    q_pagvinculadosVMLE: TFloatField;
    q_pagvinculadosValor_Aduaneiro: TFloatField;
    Q_atovincNR_DECL_IMP_MICRO: TStringField;
    Q_atovincAdicao: TStringField;
    Q_atovincNumero_Ato_Legal_II: TStringField;
    Q_atovincTipo_Ato: TStringField;
    Q_atovincTipo_Ato_Legal: TStringField;
    Q_atovincOrgao_Emissor: TStringField;
    Q_atovincAno_Ato_Legal: TStringField;
    Q_atovincEX: TStringField;
    Q_atovincTipo_Ato_1: TStringField;
    Q_atovincNumero: TStringField;
    Q_atovincEX_1: TStringField;
    Q_atovincTipo_Ato_Legal_1: TStringField;
    Q_atovincOrgao_Emissor_1: TStringField;
    Q_atovincAno_Ato_Legal_1: TStringField;
    Q_atovincTipo_Ato_2: TStringField;
    Q_atovincNumero_1: TStringField;
    Q_atovincEX_2: TStringField;
    Q_atovincTipo_Ato_Legal_2: TStringField;
    Q_atovincOrgao_Emissor_2: TStringField;
    Q_atovincAno_Ato_Legal_2: TStringField;
    q_docsinstruNR_DECL_IMP_MICRO: TStringField;
    q_docsinstrucod_fat: TStringField;
    q_docsinstrutipo_doc01: TStringField;
    q_docsinstruFatura: TStringField;
    q_docsinstrucod_co: TStringField;
    q_docsinstrutipo_doc02: TStringField;
    q_docsinstruCertificado_Origem: TStringField;
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
    Q_tributosSomaDeBase_Calc_IPI: TFloatField;
    Q_tributosALIQUOTA_ALADI: TFloatField;
    Q_tributosAliq_NCM_IPI: TFloatField;
    Q_tributosCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    Q_tributosPC_ALIQ_REDUZIDA_PIS: TFloatField;
    Q_tributosPC_ALIQ_REDUZIDA_COFINS: TFloatField;
    q_pagprevNR_DECL_IMP_MICRO: TStringField;
    q_pagprevAdicao: TStringField;
    q_pagprevData_de_Pagamento: TStringField;
    q_pagprevPercentual: TFloatField;
    q_pagprevValor_Aduaneiro: TFloatField;
    q_pagtributosNR_DECL_IMP_MICRO: TStringField;
    q_pagtributosnadicoes: TStringField;
    q_pagtributoscod_ii: TStringField;
    q_pagtributoscod_ipi: TStringField;
    q_pagtributoscod_sis: TStringField;
    q_pagtributosBanco: TStringField;
    q_pagtributosAgencia: TStringField;
    q_pagtributossomadeValor_II_a_recolher: TFloatField;
    q_pagtributossomadeValor_IPI_a_recolher: TFloatField;
    q_acertapagtribNR_DECL_IMP_MICRO: TStringField;
    q_acertapagtribnadicoes: TStringField;
    q_acertapagtribcod_ii: TStringField;
    q_acertapagtribcod_ipi: TStringField;
    q_acertapagtribcod_sis: TStringField;
    q_acertapagtribBanco: TStringField;
    q_acertapagtribAgencia: TStringField;
    q_acertapagtribSomaDeValor_II_a_recolher: TFloatField;
    q_acertapagtribSomaDeValor_IPI_a_recolher: TFloatField;
    q_acertapagtribRegime_Tributacao_II: TStringField;
    q_acertapagtribTaxa_conversao: TFloatField;
    q_acertapagtribTaxa_conversaoc: TFloatField;
    q_infocomp7Processo: TStringField;
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
    q_infocomp7qdaicao: TIntegerField;
    q_infocomp7Adicao: TStringField;
    q_infocomp7ACORDO_ALADI: TStringField;
    q_infocomp7Numero_Ato_Legal_ALADI: TStringField;
    q_tributacaoEmpresa: TStringField;
    q_tributacaoFilial: TStringField;
    q_tributacaoProcesso: TStringField;
    q_tributacaoFatura: TStringField;
    q_tributacaoseq: TIntegerField;
    q_tributacaoSequencial_Item: TStringField;
    q_tributacaoSequencial: TStringField;
    t_processos: TTable;
    t_processosEmpresa: TStringField;
    t_processosFilial: TStringField;
    t_processosCodigo: TStringField;
    t_processosData: TDateTimeField;
    t_processosImportador: TStringField;
    t_processosCodigo_Cliente: TStringField;
    t_processosTipo_Declaracao: TStringField;
    t_processosTipo: TStringField;
    t_processosContrato: TStringField;
    t_processosLocal_Inventario: TStringField;
    t_processosNR_DECL_IMP_MICRO: TStringField;
    t_processosNR_DECL_IMP_PROT: TStringField;
    t_processosNR_DECLARACAO_IMP: TStringField;
    t_processosDT_PROCESSAMENTO: TStringField;
    t_processosDT_TRANSMISSAO: TStringField;
    t_processosDT_REGISTRO_DI: TStringField;
    t_processosDT_DESEMBARACO: TDateTimeField;
    t_processosDT_DISTRIBUICAO: TDateTimeField;
    t_processosCanal: TStringField;
    t_processosFiscal: TStringField;
    t_processosStatus: TStringField;
    t_processosCOD_SIT: TStringField;
    t_processosCD_MOTIVO_TRANS: TStringField;
    t_processosIN_MOEDA_UNICA: TIntegerField;
    t_processosTX_INFO_COMPL: TMemoField;
    t_processosCD_TIPO_PGTO_TRIB: TStringField;
    t_processosNumero_RCR: TStringField;
    t_processosData_Entrada_RCR: TDateTimeField;
    t_processosData_Aprovacao_RCR: TDateTimeField;
    t_processosFundamentacao_RCR: TStringField;
    t_processosProcurador: TStringField;
    t_processosNumero_TR: TStringField;
    t_processosData_Entrada_TR: TDateTimeField;
    t_processosData_vencimento_TR: TDateTimeField;
    t_processosData_Aprovacao_TR: TDateTimeField;
    t_processosData_Baixa_TR: TDateTimeField;
    t_processosData_CI: TDateTimeField;
    t_processosTipo_Garantia: TStringField;
    t_processosNome_banco_GAR: TStringField;
    t_processosAgencia_GAR: TStringField;
    t_processosData_deposito_GAR: TDateTimeField;
    t_processosNome_titulo_GAR: TStringField;
    t_processosnumeros_titulos_GAR: TStringField;
    t_processosNome_seguradora_GAR: TStringField;
    t_processosapolice_GAR: TStringField;
    t_processosnome_fiador_GAR: TStringField;
    t_processosCNPJ_fiador_GAR: TStringField;
    t_processosendereco_fiador_GAR: TStringField;
    t_processosQuantidade_LI: TFloatField;
    t_processosValor_FOB: TFloatField;
    t_processosValor_CIF: TFloatField;
    t_processosResponsavel_Empresa: TStringField;
    t_processosResponsavel_Importador: TStringField;
    t_processosSaldo_Faturamento: TFloatField;
    t_processosNR_DECL_IMP_MICROC: TStringField;
    t_processosNR_DECL_IMP_PROTC: TStringField;
    t_processosNR_DECLARACAO_IMPC: TStringField;
    t_processosDT_PROCESSAMENTOC: TStringField;
    t_processosDT_TRANSMISSAOC: TStringField;
    t_processosDT_REGISTRO_DIC: TStringField;
    t_processosDT_DESEMBARACOC: TDateTimeField;
    t_processosDT_DISTRIBUICAOC: TDateTimeField;
    t_processosCanalC: TStringField;
    t_processosFiscalC: TStringField;
    t_processosCOD_SITC: TStringField;
    t_processosData_CIC: TDateTimeField;
    t_processosValor_FOBC: TFloatField;
    t_processosValor_CIFC: TFloatField;
    t_processosident_meio1: TStringField;
    t_processosident_meio2: TStringField;
    t_processosCodevento: TStringField;
    t_processosCodobs: TStringField;
    t_processosObs_especifica: TStringField;
    t_processosData_ufollowup: TDateTimeField;
    t_processosHora_ufollowup: TStringField;
    t_processosData_liberacao: TDateTimeField;
    t_processosUrgente: TIntegerField;
    t_processosconsolidado: TIntegerField;
    t_processosPag_proporcional: TIntegerField;
    t_processosTR_VAL_FOB_US: TFloatField;
    t_processosTR_VAL_CIF_US: TFloatField;
    t_processosTR_VAL_II: TFloatField;
    t_processosTR_VAL_IPI: TFloatField;
    t_processosDDE: TStringField;
    t_processosProcesso_Adm: TStringField;
    t_processosProc_Adm_Data_Entrada: TDateTimeField;
    t_processosFaturado: TIntegerField;
    t_processosFechado: TIntegerField;
    t_processosCentro_Custo: TStringField;
    t_processosProcurador2: TStringField;
    t_processosTR_VAL_PIS: TFloatField;
    t_processosTR_VAL_COFINS: TFloatField;
    t_processosRCR_LOCAL: TStringField;
    t_processosResponsavel_EmpresaC: TStringField;
    t_processosvinc_processo: TIntegerField;
    t_processosproc_vinc: TStringField;
    t_processossem_nfs: TIntegerField;
    dsprocessos: TDataSource;
    T_taxaconvEmpresa: TStringField;
    T_taxaconvFilial: TStringField;
    T_taxaconvProcesso: TStringField;
    T_taxaconvMoeda: TStringField;
    T_taxaconvTaxa_conversao: TFloatField;
    T_taxaconvTaxa_conversaoc: TFloatField;
    q_uptrib: TQuery;
    q_updet: TQuery;
    b_detalhes: TButton;
    q_tributaup: TQuery;
    q_updatetributa: TQuery;
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
    tbproregimpEnviou_adcc: TIntegerField;
    tbproregimpEnviou_adcc_c: TIntegerField;
    tbproregimpEnviou_adr: TIntegerField;
    tbproregimpEnviou_adr_c: TIntegerField;
    q_proreg: TQuery;
    q_upinsertproreg: TQuery;
    q_temproreg: TQuery;
    q_bensEmpresa: TStringField;
    q_bensFilial: TStringField;
    q_bensProcesso: TStringField;
    q_bensfatura: TStringField;
    q_bensqpag: TIntegerField;
    q_bensqseq: TIntegerField;
    q_bensRegime_Tributacao_II: TStringField;
    q_bensFundamento_Legal_II: TStringField;
    q_bensMotivo_Adm_Temp: TStringField;
    q_bensNCM: TStringField;
    q_bensDestaque_NCM: TStringField;
    q_bensdescr_ncm: TStringField;
    q_bensPais: TStringField;
    q_bensIN_MATERIAL_USADO: TIntegerField;
    q_bensIN_BEM_ENCOMENDA: TIntegerField;
    q_bensUnidade_Medida_Estat: TStringField;
    q_bensdescr_ume: TStringField;
    q_bensUnidade: TStringField;
    q_bensdescr_um: TStringField;
    q_bensQuantidade: TFloatField;
    q_bensPeso_Unitario_Acertado: TFloatField;
    q_bensPeso_Total_Acertado: TFloatField;
    q_bensValor_Unitario: TFloatField;
    q_bensValor_Total: TFloatField;
    q_bensMoeda: TStringField;
    q_bensValor_Aduaneiro: TFloatField;
    q_bensValor_mercadoria: TFloatField;
    q_bensRateio_Frete_prepaid: TFloatField;
    q_bensRateio_Frete_collect: TFloatField;
    q_bensRateio_Frete_ternac: TFloatField;
    q_bensRateio_Seguro: TFloatField;
    q_bensdesc: TMemoField;
    q_bensProduto: TStringField;
    q_bensNumero_serie: TStringField;
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
    q_bensCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    q_bensCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    q_bensPC_ALIQ_REDUZIDA_PIS: TFloatField;
    q_bensPC_ALIQ_REDUZIDA_COFINS: TFloatField;
    q_bensAliq_ICMS: TFloatField;
    q_bensAliq_ICMS_EXTRA: TFloatField;
    q_bensAliq_PIS_PASEP: TFloatField;
    q_bensAliq_COFINS: TFloatField;
    q_bensBASEC_PISCOFINS: TFloatField;
    q_bensVALOR_PIS_PASEP: TFloatField;
    q_bensVALOR_COFINS: TFloatField;
    q_bensVMLE: TFloatField;
    q_bensPeso_Libra: TIntegerField;
    q_detalheNR_DECL_IMP_MICRO: TStringField;
    q_detalheAdicao: TStringField;
    q_detalheQuantidade: TFloatField;
    q_detalheseq: TStringField;
    q_detalheProduto: TStringField;
    q_detalheCodigo_Produto: TStringField;
    q_detalheReferencia: TStringField;
    q_detalheNumero_serie: TStringField;
    q_detalheReferencia_projeto: TStringField;
    q_detalhedesc: TMemoField;
    q_detalheCertificado_Origem: TStringField;
    q_detalheFatura: TStringField;
    q_detalhePagina: TStringField;
    q_detalheSequencial: TStringField;
    q_detalhePO: TStringField;
    q_detalheSeqpo: TStringField;
    q_detalheNCM: TStringField;
    q_detalheUnidade: TStringField;
    q_detalheQunidade: TStringField;
    q_detalhevmle: TFloatField;
    q_detalhevalor_aduaneiro: TFloatField;
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
    q_detalhe_adicaoNR_DECL_IMP_MICRO: TStringField;
    q_detalhe_adicaoProduto: TStringField;
    q_detalhe_adicaoQuantidade: TFloatField;
    q_detalhe_adicaoqdesc: TStringField;
    q_detalhe_adicaoFatura: TStringField;
    q_detalhe_adicaoPagina: TStringField;
    q_detalhe_adicaoSequencial: TStringField;
    q_detalhe_adicaoseq: TStringField;
    q_tributaupEmpresa: TStringField;
    q_tributaupFilial: TStringField;
    q_tributaupProcesso: TStringField;
    q_tributaupFatura: TStringField;
    q_tributaupSequencial_Item: TStringField;
    q_tributaupSequencial: TStringField;
    q_tributaupCertificado_Origem: TStringField;
    q_tributaupAto_Concessorio: TStringField;
    q_tributaupCNPJ_CPF_COMPLETO: TStringField;
    q_tributaupMotivo_Adm_Temp: TStringField;
    q_tributaupCD_METOD_VALORACAO: TStringField;
    q_tributaupCD_APLICACAO_MERC: TStringField;
    q_tributaupIN_BEM_ENCOMENDA: TIntegerField;
    q_tributaupIN_MATERIAL_USADO: TIntegerField;
    q_tributaupCD_TIPO_ACORDO_TAR: TStringField;
    q_tributaupACORDO_ALADI: TStringField;
    q_tributaupNumero_Ato_Legal_ALADI: TStringField;
    q_tributaupALIQUOTA_ALADI: TFloatField;
    q_tributaupRegime_Tributacao_II: TStringField;
    q_tributaupAliq_NCM_II: TFloatField;
    q_tributaupValor_II_Devido: TFloatField;
    q_tributaupValor_II_a_recolher: TFloatField;
    q_tributaupFundamento_Legal_II: TStringField;
    q_tributaupNumero_Ato_Legal_II: TStringField;
    q_tributaupRegime_Tributacao_IPI: TStringField;
    q_tributaupBase_Calc_IPI: TFloatField;
    q_tributaupAliq_NCM_IPI: TFloatField;
    q_tributaupValor_IPI_Devido: TFloatField;
    q_tributaupValor_IPI_a_recolher: TFloatField;
    q_tributaupNumero_Ato_Legal_IPI: TStringField;
    q_tributaupPercentual_Reducao_II: TFloatField;
    q_tributaupPercentual_EX: TFloatField;
    q_tributaupPercentual_Reduca_IPI: TFloatField;
    q_tributaupQuantidade: TFloatField;
    q_tributaupAdicao: TStringField;
    q_tributaupSeq_Adicao: TSmallintField;
    q_tributaupDDE: TStringField;
    q_tributaupRE: TStringField;
    q_tributaupPrazo_permanencia: TIntegerField;
    q_tributaupTratamento_Tributario: TStringField;
    q_tributaupFundamento_Legal: TStringField;
    q_tributaupCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    q_tributaupCD_FUND_LEG_REGIME_PISCOFINS: TStringField;
    q_tributaupPC_ALIQ_REDUZIDA_PIS: TFloatField;
    q_tributaupPC_ALIQ_REDUZIDA_COFINS: TFloatField;
    q_tributaupAliq_ICMS: TFloatField;
    q_tributaupAliq_ICMS_EXTRA: TFloatField;
    q_tributaupEmpresa_1: TStringField;
    q_tributaupFilial_1: TStringField;
    q_tributaupProcesso_1: TStringField;
    q_tributaupFatura_1: TStringField;
    q_tributaupSequencial_1: TStringField;
    q_tributaupPagina: TStringField;
    q_tributaupProduto: TStringField;
    q_tributaupDescricao_Produto: TMemoField;
    q_tributaupFabricante: TStringField;
    q_tributaupNCM: TStringField;
    q_tributaupUnidade: TStringField;
    q_tributaupUnidade_Medida_Estat: TStringField;
    q_tributaupDestaque_NCM: TStringField;
    q_tributaupNALADI: TStringField;
    q_tributaupReferencia: TStringField;
    q_tributaupNumero_serie: TStringField;
    q_tributaupReferencia_projeto: TStringField;
    q_tributaupPO: TStringField;
    q_tributaupSeqpo: TStringField;
    q_tributaupQuantidade_1: TFloatField;
    q_tributaupValor_Unitario: TFloatField;
    q_tributaupValor_Total: TFloatField;
    q_tributaupPeso_Unitario: TFloatField;
    q_tributaupPeso_Unitario_Acertado: TFloatField;
    q_tributaupPeso_Total: TFloatField;
    q_tributaupPeso_Total_Acertado: TFloatField;
    q_tributaupSaldo_Tributavel: TFloatField;
    q_tributaupRateio_Acrescimos: TFloatField;
    q_tributaupRateio_Deducoes: TFloatField;
    q_tributaupRateio_Embalagem: TFloatField;
    q_tributaupRateio_Frete_Interno_imp: TFloatField;
    q_tributaupRateio_Seguro_Interno: TFloatField;
    q_tributaupRateio_outras_import: TFloatField;
    q_tributaupRateio_startup: TFloatField;
    q_tributaupRateio_jurosfin: TFloatField;
    q_tributaupRateio_montagem: TFloatField;
    q_tributaupRateio_Frete_Interno_exp: TFloatField;
    q_tributaupRateio_carga_exp: TFloatField;
    q_tributaupRateio_outras_export: TFloatField;
    q_tributaupRateio_frete_fatura: TFloatField;
    q_tributaupRateio_seguro_fatura: TFloatField;
    q_tributaupRateio_carga_imp: TFloatField;
    q_tributaupRateio_Despesas_ate_FOB: TFloatField;
    q_tributaupRateio_Frete_prepaid: TFloatField;
    q_tributaupRateio_Frete_collect: TFloatField;
    q_tributaupRateio_Frete_ternac: TFloatField;
    q_tributaupRateio_Seguro: TFloatField;
    q_tributaupValor_Aduaneiro: TFloatField;
    q_tributaupValor_mercadoria: TFloatField;
    q_tributaupVMLE: TFloatField;
    q_tributaupBase_Calc_II: TFloatField;
    q_tributaupAcresc_reduc_Valaduan: TFloatField;
    q_tributaupCOD_SIT: TStringField;
    q_tributaupCNPJ: TStringField;
    q_tributaupFiel_nome: TStringField;
    q_tributaupFiel_cpf: TStringField;
    q_tributaupContrato: TStringField;
    q_tributaupLocal_Inventario: TStringField;
    q_tributaupRateio_Taxa_Siscomex: TFloatField;
    q_tributaupDescricao_Produto_ing: TMemoField;
    q_tributaupCodigo_Produto: TStringField;
    q_tributaupSequencial_Produto: TIntegerField;
    q_tributaupEmpresa_2: TStringField;
    q_tributaupFilial_2: TStringField;
    q_tributaupProcesso_2: TStringField;
    q_tributaupCodigo: TStringField;
    q_tributaupExportador: TStringField;
    q_tributaupIncoterm: TStringField;
    q_tributaupVinculacao: TStringField;
    q_tributaupCondicao: TStringField;
    q_tributaupValor_Total_1: TFloatField;
    q_tributaupPeso_Total_1: TFloatField;
    q_tributaupPeso_Total_Acertado_1: TFloatField;
    q_tributaupAcrescimos_Reducoes: TIntegerField;
    q_tributaupMoeda: TStringField;
    q_tributaupCobertura_Cambial: TStringField;
    q_tributaupMotivo_Sem_Cobertura: TStringField;
    q_tributaupModalidade_de_Pagamento: TStringField;
    q_tributaupInstituicao_Financiadora: TStringField;
    q_tributaupTipo_Parcela: TStringField;
    q_tributaupNumero_de_parcelas: TStringField;
    q_tributaupPeriodicidade: TStringField;
    q_tributaupValor_das_Parcelas: TFloatField;
    q_tributaupIndicador_Periodicidade: TStringField;
    q_tributaupTaxa_de_Juros: TIntegerField;
    q_tributaupCodigo_Taxa_de_Juros: TStringField;
    q_tributaupValor_Taxa_de_Juros: TFloatField;
    q_tributaupROF_BACEN: TStringField;
    q_tributaupPercentual_ROF: TFloatField;
    q_tributaupDT_PREV_PAG_CAMBIO: TDateTimeField;
    q_tributaupDT_PAG_CAMBIO: TDateTimeField;
    q_tributaupSTATUS_CAMBIO: TStringField;
    q_tributaupCONTRATO_CAMBIO: TStringField;
    q_tributaupSALDO_CAMBIO: TFloatField;
    q_tributaupDtEmissao: TDateTimeField;
    q_tributaupPeso_Libra: TIntegerField;
    q_update_processo_taxasiscomex: TQuery;
    q_Documentos: TQuery;
    q_DocumentosSub_Tipo_Doc: TStringField;
    q_DocumentosNumero_Doc: TStringField;
    q_TipoProcesso: TQuery;
    q_TipoProcessotipo: TStringField;
    q_update_infcomp: TQuery;
    q_update_infcomp1: TQuery;
    qUsuarioHierarquia: TQuery;
    qUsuarioHierarquiaHierarquia: TIntegerField;
    qCGCdoImportador: TQuery;
    qCGCdoImportadorCGC_CPF: TStringField;
    qSenhasAutorizadas: TQuery;
    qSenhasAutorizadasUsuario: TStringField;
    qSenhasAutorizadasSenha: TStringField;
    p_autoriza: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    cancelsenha: TBitBtn;
    oksenha: TBitBtn;
    me_senha: TMaskEdit;
    q_processostipo: TStringField;
    lblAviso: TPanel;
    btnAnexar: TBitBtn;
    pnlAnexo: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    btnAbrir: TSpeedButton;
    btnClear: TSpeedButton;
    edtDescricao: TEdit;
    edtCaminho: TEdit;
    StaticText2: TStaticText;
    btnConfirmar: TBitBtn;
    btnCancel: TBitBtn;
    OP: TOpenDialog;
    qryInsertAnexo: TQuery;
    qryDeleteAnexo: TQuery;
    qrySelectAnexo: TQuery;
    btnViewAnexo: TBitBtn;
    qrySelectAnexofk_processo: TStringField;
    qrySelectAnexocaminho: TStringField;
    T_importadoresExporta_Para_Siscomex: TBooleanField;
    qryImportadorExportaSiscomex: TQuery;
    qryDeleteSiscomex: TQuery;
    t_pro: TQuery;
    t_proEmpresa: TStringField;
    t_proFilial: TStringField;
    t_proCodigo: TStringField;
    t_proRazao_Social: TStringField;
    t_proPais: TStringField;
    t_proCGC_CPF: TStringField;
    t_proEndereco: TStringField;
    t_proNumero: TStringField;
    t_proComplemento: TStringField;
    t_proBairro: TStringField;
    t_proCidade: TStringField;
    t_proCEP: TStringField;
    t_proUF: TStringField;
    t_proEstado: TStringField;
    t_proInscricao_Estadual: TStringField;
    t_proRegistro: TStringField;
    t_proTelefone: TStringField;
    t_proexibe_complementares: TIntegerField;
    qrConhecimento: TQuery;
    q_processosident_meio1: TStringField;
    q_processosident_meio2: TStringField;
    q_processosFundamentacao_RCR: TStringField;
    q_processosData_Aprovacao_RCR: TDateTimeField;
    q_processosData_Entrada_RCR: TDateTimeField;
    q_processosNumero_RCR: TStringField;
    q_processosRCR_LOCAL: TStringField;
    q_processosTipo_Declaracao: TStringField;
    q_processosNumeromanifesto: TStringField;
    qMaterialUsado: TQuery;
    qMaterialUsadoIN_MATERIAL_USADO: TIntegerField;
    qMaterialUsadoNoProcesso: TQuery;
    qMaterialUsadoNoProcessoMaterial_Usado: TSmallintField;
    Q_adicoesNR_OPER_TRAT_PREV: TStringField;
    q_infocomp8: TQuery;
    q_infocomp8Descricao: TStringField;
    q_infocomp8VL_ACRESCIMO_MOEDA: TFloatField;
    q_infocomp8MOEDA: TStringField;
    rdgRefTaxaConversao: TRadioGroup;
    T_taxaconvDeAmanha: TTable;
    T_cambioAmanha: TTable;
    T_cambioAmanhaCodigo: TStringField;
    T_cambioAmanhaDescricao: TStringField;
    T_cambioAmanhaTaxa_Conversao: TStringField;
    T_cambioAmanhaVigencia_Inicio_Taxa: TStringField;
    T_cambioAmanhaVigencia_Fim_Taxa: TStringField;
    T_taxaconvDeAmanhaEmpresa: TStringField;
    T_taxaconvDeAmanhaFilial: TStringField;
    T_taxaconvDeAmanhaProcesso: TStringField;
    T_taxaconvDeAmanhaMoeda: TStringField;
    T_taxaconvDeAmanhaTaxa_conversao: TFloatField;
    T_taxaconvDeAmanhaTaxa_conversaoc: TFloatField;
    q_acertafretsega: TQuery;
    q_acertafretsegaProcesso: TStringField;
    q_acertafretsegaRegime_Tributacao_II: TStringField;
    q_acertafretsegaprepaid: TFloatField;
    q_acertafretsegacollect: TFloatField;
    q_acertafretsegaternac: TFloatField;
    q_acertafretsegaseguro: TFloatField;
    q_acertafretsegaMoeda: TStringField;
    q_acertafretsegaTaxa_conversao: TFloatField;
    q_acertafretsegaTaxa_conversaoc: TFloatField;
    q_acertafretsegaMoeda_1: TStringField;
    q_acertafretsegaTaxa_conversaofre: TFloatField;
    q_acertafretsegaTaxa_conversaocfre: TFloatField;
    q_acertafretsegaMoeda_2: TStringField;
    q_acertafretsegaTaxa_conversaoseg: TFloatField;
    q_acertafretsegaTaxa_conversaocseg: TFloatField;
    q_acertapagtriba: TQuery;
    q_acertapagtribaNR_DECL_IMP_MICRO: TStringField;
    q_acertapagtribanadicoes: TStringField;
    q_acertapagtribacod_ii: TStringField;
    q_acertapagtribacod_ipi: TStringField;
    q_acertapagtribacod_sis: TStringField;
    q_acertapagtribaBanco: TStringField;
    q_acertapagtribaAgencia: TStringField;
    q_acertapagtribaSomaDeValor_II_a_recolher: TFloatField;
    q_acertapagtribaSomaDeValor_IPI_a_recolher: TFloatField;
    q_acertapagtribaRegime_Tributacao_II: TStringField;
    q_acertapagtribaTaxa_conversao: TFloatField;
    q_acertapagtribaTaxa_conversaoc: TFloatField;
    q_infocomp5a: TQuery;
    q_infocomp5aProcesso: TStringField;
    q_infocomp5aDESCRICAO: TStringField;
    q_infocomp5aTaxa_conversao: TFloatField;
    q_infocomp5aTaxa_conversaoc: TFloatField;
    qAcrescimoProcesso: TQuery;
    qAcrescimoProcessoCD_MET_ACRES_VALOR: TStringField;
    qAcrescimoProcessoVL_ACRESCIMO_MOEDA: TFloatField;
    qCountAdicao: TQuery;
    qCountAdicaoAdicao: TStringField;
    qSomaQtdItensFaturas: TQuery;
    qSomaQtdPorAdicao: TQuery;
    qSomaQtdItensFaturasQtdTotal: TFloatField;
    qSomaQtdPorAdicaoAdicao: TStringField;
    qSomaQtdPorAdicaoQtdTotalporAdicao: TFloatField;
    qCD_E_VL_ACRESCIMO: TQuery;
    qUpRateio_Acresc_ICMS: TQuery;
    qAdicao: TQuery;
    qAdicaorateio_acresc_ICMS: TFloatField;
    qZERA_ACRESC_ICMS: TQuery;
    qryGetAcrescimos: TQuery;
    qryGetAcrescimosNR_DECL_IMP_MICRO: TStringField;
    qryGetAcrescimosAdicao: TStringField;
    qryGetAcrescimosIncoterm: TStringField;
    qryGetAcrescimosMoeda: TStringField;
    qryGetAcrescimosBDEDesigner1: TFloatField;
    qryGetAcrescimosBDEDesigner2: TFloatField;
    qryGetAcrescimosBDEDesigner3: TFloatField;
    qryGetAcrescimosBDEDesigner4: TFloatField;
    qryGetAcrescimosBDEDesigner5: TFloatField;
    qryGetAcrescimosBDEDesigner6: TFloatField;
    qryGetAcrescimosBDEDesigner7: TFloatField;
    qryGetAcrescimosBDEDesigner8: TFloatField;
    T_faturasFrete_Incluso: TIntegerField;
    q_incpiscofins_ds: TQuery;
    q_processostxConversaoDeAmanha: TSmallintField;
    T_transpprocessoBandeira: TStringField;
    qTR: TQuery;
    qTRTermo: TMemoField;
    qrConhecimentoAutorizacao_Marinha: TStringField;
    qFreteTotal: TQuery;
    qFreteRateio: TQuery;
    qFreteTotalRateio_Frete_prepaid: TFloatField;
    qFreteTotalRateio_Frete_collect: TFloatField;
    qFreteTotalRateio_Frete_ternac: TFloatField;
    qCD_E_VL_ACRESCIMOCD_ACRESC_ICMS: TIntegerField;
    qCD_E_VL_ACRESCIMOVL_ACRESCIMO: TFloatField;
    qSomaVA: TQuery;
    qSomaVAVA_TOTAL: TFloatField;
    qFreteRateioQuantidade: TFloatField;
    qFreteRateioRateio_Frete_prepaid: TFloatField;
    qFreteRateioRateio_Frete_collect: TFloatField;
    qFreteRateioRateio_Frete_ternac: TFloatField;
    qFreteRateioTaxa_conversao: TFloatField;
    qDiv: TQuery;
    qDivSeq: TIntegerField;
    qFrete: TQuery;
    qFretePag: TFloatField;
    qFreteSeq: TFloatField;
    qFreteRateio_Acrescimos: TFloatField;
    qFreteRateio_Deducoes: TFloatField;
    qFreteRateio_Embalagem: TFloatField;
    qFreteRateio_Frete_Interno_imp: TFloatField;
    qFreteRateio_Seguro_Interno: TFloatField;
    qFreteRateio_outras_import: TFloatField;
    qFreteRateio_startup: TFloatField;
    qFreteRateio_Frete_prepaid: TFloatField;
    qFreteRateio_Frete_collect: TFloatField;
    qFreteRateio_Frete_ternac: TFloatField;
    qFreteRateio_Seguro: TFloatField;
    qFreteValor_Aduaneiro: TFloatField;
    qFreteValor_mercadoria: TFloatField;
    qFreteVMLE: TFloatField;
    qFreteVA: TFloatField;
    qFreteOT: TFloatField;
    qFreteAdicao: TStringField;
    qUPAdicaoAcrescICMS: TQuery;
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
    procedure q_processosAfterScroll(DataSet: TDataSet);
    procedure T_itensfaturasAfterPost(DataSet: TDataSet);
    procedure T_ProcessosAfterPost(DataSet: TDataSet);
    procedure T_tributositemAfterPost(DataSet: TDataSet);
    procedure b_detalhesClick(Sender: TObject);
    procedure tbproregimpAfterPost(DataSet: TDataSet);
    procedure oksenhaClick(Sender: TObject);
    procedure cancelsenhaClick(Sender: TObject);
    procedure btnAnexarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnViewAnexoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure taxaconvDeAmanha(var tempresa:TStringField; tfilial:TStringField; tprocesso:string; tmoeda:TStringField; ttaxa:string);
  private
    NaoEnviaDadosParaSiscomex : Boolean;
    ValorFatura : Double;

    function Processos_Tipo_LI(strProcesso:String):Boolean;
    function Informou_Material_Usado(StrProcesso:String):Boolean;
    procedure RateioAcrescimoICMS;
    procedure RateioAcrescimoICMSNasAdicoes(adicao:string; va:Real; Seq:real);

    function TotalFatura : Double;

    procedure IncluiRegistroAnaliseDIProcesso;

    procedure EnviaEmailAutorizadores;

    function ResponsavelProcesso : String;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_prodidsi: TF_prodidsi;
  v_analise:boolean;
  qii: real;
  q_taxa,
  CaminhoAnexoAtual : string;
  q_tributa, alterou_PROPIS, processa_piscofins:boolean;
  cancela_atualizacao, blnSupervisor : boolean;
  vTotalAcrescimoICMS,   vRateioAcrescICMS : Real;
  vSomaDasQtdAdioes : Integer;
  SomaFrete : Real;
  RateioAcrescICMS : Real;
  AdicaoOld : String;
  ProcessoNaoAnalisado : Boolean;
  UsuResponsavel : String;


implementation

uses U_MSCOMEX, Alerta, uVisualizacaoImagem;

{$R *.DFM}

procedure taxaconv(var tempresa:TStringField; tfilial:TStringField; tprocesso:string; tmoeda:String; ttaxa:string);
var qtaxadolar:string;
begin

  try
          f_prodidsi.t_processos.findkey([v_empresa,v_filial,tprocesso]);
          if f_prodidsi.t_processosNR_DECLARACAO_IMP.asstring ='' then
          begin
                  if tmoeda<>'' then
                  begin
                       if f_prodidsi.rdgRefTaxaConversao.ItemIndex = 0 then
                       begin
                          if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then
                          begin
                                  if f_prodidsi.t_taxaconvtaxa_conversao.asfloat <> strtofloat(ttaxa) then
                                  begin
                                          f_prodidsi.t_taxaconv.edit;
                                          f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(ttaxa);
                                          f_prodidsi.t_taxaconv.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.t_taxaconv.append;
                                  f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
                                  f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
                                  f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
                                  f_prodidsi.t_taxaconvmoeda.asstring         := tmoeda;
                                  f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(ttaxa);
                                  f_prodidsi.t_taxaconv.post;
                          end;
                       end
                       else
                       begin
                          if f_prodidsi.T_taxaconvDeAmanha.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then
                          begin
                                  if f_prodidsi.T_cambioAmanhaTaxa_Conversao.asfloat <> strtofloat(ttaxa) then
                                  begin
                                          f_prodidsi.T_taxaconvDeAmanha.edit;
                                          f_prodidsi.T_taxaconvDeAmanhataxa_conversao.asfloat := strtofloat(ttaxa);
                                          f_prodidsi.T_taxaconvDeAmanha.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.T_taxaconvDeAmanha.append;
                                  f_prodidsi.T_taxaconvDeAmanhaempresa.asstring       := v_empresa;
                                  f_prodidsi.T_taxaconvDeAmanhafilial.asstring        := v_filial;
                                  f_prodidsi.T_taxaconvDeAmanhaprocesso.asstring      := tprocesso;
                                  f_prodidsi.T_taxaconvDeAmanhamoeda.asstring         := tmoeda;
                                  f_prodidsi.T_taxaconvDeAmanhataxa_conversao.asfloat := strtofloat(ttaxa);
                                  f_prodidsi.T_taxaconvDeAmanha.post;
                          end;
                       end;
                  end;

                  {sempre grava o dolar para todos os processos}
                  if ((tmoeda<>'220') and (tmoeda<>'')) then
                  begin
                      if F_prodidsi.rdgRefTaxaConversao.ItemIndex = 0 then
                      begin
                          f_prodidsi.t_cambio.first;
                          f_prodidsi.t_cambio.findkey(['220']);
                          qtaxadolar := f_prodidsi.t_cambiotaxa_conversao.asstring;
                          if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,'220']) then
                          begin
                                  if f_prodidsi.t_taxaconvtaxa_conversao.asfloat <> strtofloat(qtaxadolar) then
                                  begin
                                          f_prodidsi.t_taxaconv.edit;
                                          f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(qtaxadolar);
                                          f_prodidsi.t_taxaconv.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.t_taxaconv.append;
                                  f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
                                  f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
                                  f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
                                  f_prodidsi.t_taxaconvmoeda.asstring         := '220';
                                  f_prodidsi.t_taxaconvtaxa_conversao.asfloat := strtofloat(qtaxadolar);
                                  f_prodidsi.t_taxaconv.post;
                          end;
                      end
                      else
                      begin
                          f_prodidsi.T_cambioAmanha.first;
                          f_prodidsi.T_cambioAmanha.findkey(['220']);
                          qtaxadolar := f_prodidsi.T_cambioAmanhataxa_conversao.asstring;
                          if f_prodidsi.T_taxaconvDeAmanha.findkey([v_empresa,v_filial,tprocesso,'220']) then
                          begin
                                  if f_prodidsi.T_taxaconvDeAmanhataxa_conversao.asfloat <> strtofloat(qtaxadolar) then
                                  begin
                                          f_prodidsi.T_taxaconvDeAmanha.edit;
                                          f_prodidsi.T_taxaconvDeAmanhataxa_conversao.asfloat := strtofloat(qtaxadolar);
                                          f_prodidsi.T_taxaconvDeAmanha.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.T_taxaconvDeAmanha.append;
                                  f_prodidsi.T_taxaconvDeAmanhaempresa.asstring       := v_empresa;
                                  f_prodidsi.T_taxaconvDeAmanhafilial.asstring        := v_filial;
                                  f_prodidsi.T_taxaconvDeAmanhaprocesso.asstring      := tprocesso;
                                  f_prodidsi.T_taxaconvDeAmanhamoeda.asstring         := '220';
                                  f_prodidsi.T_taxaconvDeAmanhataxa_conversao.asfloat := strtofloat(qtaxadolar);
                                  f_prodidsi.T_taxaconvDeAmanha.post;
                          end;
                      end;
                  end;

          end;
          {ver taxa conversao di de consumo}
          if f_prodidsi.t_processosNR_DECLARACAO_IMPC.asstring ='' then
          begin
                  if tmoeda<>'' then
                  begin
                      if F_prodidsi.rdgRefTaxaConversao.ItemIndex = 0 then
                      begin
                          {MessageDlg('Empresa: '+v_empresa+' Filial: '+v_filial+' Processo: '+tprocesso+' Moeda: '+tmoeda.asstring, mtInformation,[mbOk], 0);}
                          if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then
                          begin
                                  if f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat <> strtofloat(ttaxa) then
                                  begin
                                          f_prodidsi.t_taxaconv.edit;
                                          f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(ttaxa);
                                          f_prodidsi.t_taxaconv.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.t_taxaconv.append;
                                  f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
                                  f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
                                  f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
                                  f_prodidsi.t_taxaconvmoeda.asstring         := tmoeda;
                                  f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(ttaxa);
                                  f_prodidsi.t_taxaconv.post;
                          end;
                      end
                      else  {4009}
                      begin
                          if f_prodidsi.T_taxaconvDeAmanha.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then
                          begin
                                  if f_prodidsi.T_taxaconvDeAmanhataxa_conversaoc.asfloat <> strtofloat(ttaxa) then
                                  begin
                                          f_prodidsi.T_taxaconvDeAmanha.edit;
                                          f_prodidsi.T_taxaconvDeAmanhataxa_conversaoc.asfloat := strtofloat(ttaxa);
                                          f_prodidsi.T_taxaconvDeAmanha.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.T_taxaconvDeAmanha.append;
                                  f_prodidsi.T_taxaconvDeAmanhaempresa.asstring       := v_empresa;
                                  f_prodidsi.T_taxaconvDeAmanhafilial.asstring        := v_filial;
                                  f_prodidsi.T_taxaconvDeAmanhaprocesso.asstring      := tprocesso;
                                  f_prodidsi.T_taxaconvDeAmanhamoeda.asstring         := tmoeda;
                                  f_prodidsi.T_taxaconvDeAmanhataxa_conversaoc.asfloat := strtofloat(ttaxa);
                                  f_prodidsi.T_taxaconvDeAmanha.post;
                          end;   {Fim 4009}
                      end;
                  end;

                  {sempre grava o dolar para todos os processos}
                  if ((tmoeda<>'220') and (tmoeda<>'')) then
                  begin
                        if F_prodidsi.rdgRefTaxaConversao.ItemIndex = 0 then
                        begin
                          f_prodidsi.t_cambio.first;
                          f_prodidsi.t_cambio.findkey(['220']);
                          qtaxadolar := f_prodidsi.t_cambiotaxa_conversao.asstring;

                          {MessageDlg('Empresa: '+v_empresa+' Filial: '+v_filial+' Processo: '+tprocesso+' Moeda: '+tmoeda.asstring, mtInformation,[mbOk], 0);}
                          if f_prodidsi.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,'220']) then
                          begin
                                  if f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat <> strtofloat(qtaxadolar) then
                                  begin
                                          f_prodidsi.t_taxaconv.edit;
                                          f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(qtaxadolar);
                                          f_prodidsi.t_taxaconv.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.t_taxaconv.append;
                                  f_prodidsi.t_taxaconvempresa.asstring       := v_empresa;
                                  f_prodidsi.t_taxaconvfilial.asstring        := v_filial;
                                  f_prodidsi.t_taxaconvprocesso.asstring      := tprocesso;
                                  f_prodidsi.t_taxaconvmoeda.asstring         := '220';
                                  f_prodidsi.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(qtaxadolar);
                                  f_prodidsi.t_taxaconv.post;
                          end;
                        end
                        else  {4009}
                        begin
                          f_prodidsi.T_cambioAmanha.first;
                          f_prodidsi.T_cambioAmanha.findkey(['220']);
                          qtaxadolar := f_prodidsi.T_cambioAmanhaTaxa_Conversao.asstring;

                          {MessageDlg('Empresa: '+v_empresa+' Filial: '+v_filial+' Processo: '+tprocesso+' Moeda: '+tmoeda.asstring, mtInformation,[mbOk], 0);}
                          if f_prodidsi.T_taxaconvDeAmanha.findkey([v_empresa,v_filial,tprocesso,'220']) then
                          begin
                                  if f_prodidsi.T_taxaconvDeAmanhataxa_conversaoc.asfloat <> strtofloat(qtaxadolar) then
                                  begin
                                          f_prodidsi.T_taxaconvDeAmanha.edit;
                                          f_prodidsi.T_taxaconvDeAmanhataxa_conversaoc.asfloat := strtofloat(qtaxadolar);
                                          f_prodidsi.T_taxaconvDeAmanha.post;
                                  end;
                          end
                          else
                          begin
                                  f_prodidsi.T_taxaconvDeAmanha.append;
                                  f_prodidsi.T_taxaconvDeAmanhaempresa.asstring       := v_empresa;
                                  f_prodidsi.T_taxaconvDeAmanhafilial.asstring        := v_filial;
                                  f_prodidsi.T_taxaconvDeAmanhaprocesso.asstring      := tprocesso;
                                  f_prodidsi.T_taxaconvDeAmanhamoeda.asstring         := '220';
                                  f_prodidsi.T_taxaconvDeAmanhataxa_conversaoc.asfloat := strtofloat(qtaxadolar);
                                  f_prodidsi.T_taxaconvDeAmanha.post;
                          end;
                        end;    {Fim 4009}
                  end;

          end;

  except
  On E:Exception do
  begin
      showmessage(v_usuario + ' ocorreu um erro na atualização da taxa de conversão! Atualize Novamente.');
      end;
  end;

end;


procedure TF_prodidsi.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


 {    h := Height;
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
     width := w;
  }
end;
function TF_prodidsi.Informou_Material_Usado(StrProcesso:String):Boolean;
begin
   qMaterialUsado.Close;
   qMaterialUsado.ParamByName('pProcesso').asString:=me_nossaref.text;
   qMaterialUsado.Open;

   if qMaterialUsado.RecordCount > 0 then
        Result := True
   else
        Result := False;
end;

procedure TF_prodidsi.ME_nossarefChange(Sender: TObject);
var
  cnpj : String;
  tem37 : boolean;
begin
  q_processos.Close;
  //Leandro Serra - 30/08/2011
  blnSupervisor := false;
  //Fim - Leandro Serra - 30/08/2011

  if length(F_MSCOMEX.LRTrim(me_nossaref.text))= 8
   then begin
     {Ticket 3223 - Leandro Serra 12/07/2012}
     if (v_registra_di = 0) and (v_audita_di = 0)
      then begin
        MessageDlg(v_usuario + ', o seu usuário não está habilitado a registrar DI.', mtWarning,[mbOk], 0);
        Abort;
      end;

     qMaterialUsadoNoProcesso.close;
     qMaterialUsadoNoProcesso.ParamByName('pProcesso').asString := me_nossaref.text;
     qMaterialUsadoNoProcesso.Open;

     AdicaoOld := '000';

     {Se for informado na tela de abertura sim para Material Usado verifica se na tributação informou, pelo menos um item como material usado.}
     if qMaterialUsadoNoProcessoMaterial_Usado.value = 1
      then begin
        if Informou_Material_Usado(me_nossaref.text) = False
         then begin
           Showmessage('Não foi informado na tributação o material usado para este processo, esta operação será abortada.');
           Exit;
         end;
      end;
     {Fim 3223}

     if (IsClosedProcess( me_nossaref.Text, F_prodidsi ))
      then Abort;

     ValorFatura := TotalFatura;

     if (ValorFatura >= v_ValorMinimoRegistroDI)
      then begin
        if F_MSCOMEX.DINaoSolicitada(me_nossaref.Text, F_prodidsi)
         then begin
           if MessageDlg('A DI está pronta para ser registrada ? ("Sim" para solicitar autorização, "Não" para analisar)', mtConfirmation,[mbYes, mbNo], 0) = mrYes
            then begin
              IncluiRegistroAnaliseDIProcesso;
              ShowMessage(v_usuario+', aguardar o e-mail de solicitação de autorização de DI aos responsáveis.');
              Abort;
            end;
         end
         else begin
           if (not F_MSCOMEX.DIAutorizada(me_nossaref.Text)) and (v_audita_di = 0)
            then begin
              ShowMessage(v_usuario+', o registro da DI está pendente de autorização, tela bloqueada.');
              Abort;
            end;
         end;
      end;

     {Sandro Rassy - 06/09/2011
      Verificação da data de atualização do siscomex, se a data estiver desatualizada
      não será permitido continuar na tela.}                        
     if U_MSCOMEX.Verifica_Data_Taxa_Siscomex = false
      then begin
        showmessage('Favor atualizar a taxa de conversão do siscomex.');
        Exit;
      end;
     //Fim - Sandro Rassy - 06/09/2011

     if t_processos.state = dsInactive
      then t_processos.open;

     {Inicio - eduardo.souza 03/06/2011}
     if q_processos.state = dsInactive
      then begin
        q_processos.Close;
        q_processos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
        q_processos.open;
        if (q_processosImportador.asString = '424') or (q_processosImportador.asString = '425') or
        (q_processosImportador.asString = '426') or (q_processosImportador.asString = '427') then
                rdgRefTaxaConversao.visible := true
        else
                rdgRefTaxaConversao.visible := false;
        if q_processostxConversaoDeAmanha.Value = 0 then rdgRefTaxaConversao.ItemIndex := 0 else rdgRefTaxaConversao.ItemIndex := 1;

        //Leonardo.alabarce   - 27/09/2011 - Ticket 660
        if ((Trim(q_processostipo.AsString) = '12') or
            (Trim(q_processostipo.AsString) = '15'))
         then begin
           lblAviso.visible := true;
           Application.ProcessMessages;
         end
         else lblAviso.visible := False;
      end;
        // Fim - 27/09/2011

   {Obs: Que porra é essa, aqui!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!}
   //if q_processos.Locate('Processo',me_nossaref.text,[loCaseInsensitive]) then begin
   If ( Not q_processos.IsEmpty ) Then Begin
   {Fim - eduardo.souza 03/06/2011}
      if (F_MSCOMEX.AcessaPasta(ME_nossaref.Text, q_ProcessosTipo.AsString, F_prodidsi) and
          (v_registra_di = 1)) or
          (v_audita_di = 1)
       then p_processo2.Enabled := True;

      // eduardo.souza 18/11/2011 - Odilma
      qrySelectAnexo.ParamByName('Processo').Value := q_processosProcesso.AsString;
      qrySelectAnexo.Open;
      btnAnexar.Enabled := (( q_processostipo.AsString = '11')Or
                           ( q_processostipo.AsString = '12')) And
                           ( qrySelectAnexo.IsEmpty );
      
      CaminhoAnexoAtual := qrySelectAnexocaminho.AsString;
      qrySelectAnexo.Close;
      //---
      {gera totalizacao das adicoes}
      q_adicoes.Close;
      q_adicoes.Params[0].AsString := q_processosempresa.asstring;
      q_adicoes.Params[1].AsString := q_processosfilial.asstring;
      q_adicoes.Params[2].AsString := me_nossaref.text;
      q_adicoes.open;

      tem37 := false;
      while not q_adicoes.eof do begin
           if q_adicoesfundamento_Legal_II.asstring='37'then begin
                    tem37 := true;
                    q_adicoes.last;
           end;
           q_adicoes.next;
      end;
      q_adicoes.first;

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

//      t_processos.open;
      t_processos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);

      ////alterei para DSI
      IF (t_processostipo.asstring = '17') then begin
         b_atualizasiscomex.enabled := false;
         b_atualizasiscomexa.enabled := false;
         b_dsi.enabled := true;
      end
      else begin
         b_atualizasiscomex.enabled := true;
         b_atualizasiscomexa.enabled := true;

         if (t_processostipo.asstring = '5')
          then b_dsi.enabled := true
          else b_dsi.enabled := false;
      end;

      IF tem37 and (t_processospag_proporcional.asinteger = 0) then begin
         MessageDlg(v_usuario+', Não é possivel registrar/transferir para o Siscomex, foi tributado como proporcional motivo 37 mas na abertura do processo não está marcado como pagamento proporcional! Verifique as Informações.', mtInformation,[mbOk], 0);
         b_atualizasiscomex.enabled := false;
         b_atualizasiscomexa.enabled := false;
         b_dsi.enabled := false;
      end;

      q_propis.close;
      q_propis.Params[0].asstring := me_nossaref.text;
      q_propis.open;


      t_ncm.open;

      q_piscofinstrib.close;
      q_piscofinstrib.Params[0].asstring := me_nossaref.text;               
      q_piscofinstrib.open;

      alterou_PROPIS := false;
      processa_piscofins := false;

         ////////////////////////////
      ///alterei em 27/07/2005 - mm - chupisco!!!
        v_AlteraPRO := 1;
        If (q_processosAtivo.asinteger=0) then begin
           If (v_Edita_cliente_inativo=0)  then begin
              Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
              v_AlteraPRO := 0;
           end;
        end;
        If (q_processosFechado.asinteger=1) then begin
           If (v_Edita_Processo_Fechado=0)  then begin
                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

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
        If (v_autorizadocli=1) Then Begin


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
var v_pesol,qsql:string;
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
    apri,qtdreg:integer;
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
    VPIS_TOTAL,VCOFINS_TOTAL:real;
    vseq:integer;
    // Eduardo Souza 19/03/2013 - para acréscimo
    iacr : integer;
    valorAcr : double;
    codigoAcr : string;
begin
  // Leonardo.Alabarce - 15/05/12  Solicitado por Odilma   - ticket 2801
  If sender = b_atualizasiscomex then begin
    If ((q_processosTipo_Declaracao.AsString = '05') or (q_processosTipo_Declaracao.AsString = '12')) then begin
       If ((q_processosident_meio1.AsString = '') or (q_processosident_meio2.AsString = '') or (q_processosNumero_RCR.AsString = '')or
          (q_processosFundamentacao_RCR.AsString = '') or (q_processosData_Aprovacao_RCR.AsString = '') or (q_processosRCR_LOCAL.AsString = '')or
          (q_processosData_Entrada_RCR.AsString = ''))then begin
          ShowMessage(v_usuario+', Favor Preencher os Campos vazios na tela do RCR.');
          exit;
       End;
    End;
  End;
   {Eduardo Souza - 17/01/2012}
   qryImportadorExportaSiscomex.ParamByName('Importador').Value := q_processosImportador.AsString;
   qryImportadorExportaSiscomex.Close;
   qryImportadorExportaSiscomex.Open;
   If ( qryImportadorExportaSiscomex.FieldByName('Exporta_Para_Siscomex').AsBoolean = False ) Then
     NaoEnviaDadosParaSiscomex := True
   Else
     NaoEnviaDadosParaSiscomex := False;
   {Fim da Alteração - Eduardo Souza - 17/01/2012}

   with q_Documentos do
   begin
     close;
     ParamByName('pProcesso').AsString:=ME_nossaref.Text;
     Open;

     if  RecordCount = 0 then
     begin
         ShowMessage(v_usuario+', Processo indisponível por falta de documentos. Por favor, verifique se está faltando invoice, packing list ou conhecimento.');
         exit;
     end;
   end;

     f_mscomex.MSPGP(me_nossaref.text);
    qii   := 0;
    qipi  := 0;
    qtx   := 0;
    qiic  := 0;
    qipic := 0;
    qtxc  := 0;

if not assigned (f_alerta) then Application.CreateForm(TF_alerta, F_alerta);
f_alerta.showmodal;
if t_processosTX_INFO_COMPL.asstring='' then b_processaclick(b_atualizasiscomex)
else begin
   if MessageDlg('Atualiza Informações Complementares? (clique em não para manter as informações complementares digitadas)', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
      t_processos.edit;
      t_processosTX_INFO_COMPL.asstring :='';
      t_processos.post;
      v_AlteraPRO := 1;
      b_processaclick(f_prodidsi);
   end;
end;

//verprodutos := true;
//if MessageDlg(v_usuario+', ATENÇÃO!!! Atualiza descrição da mercadoria conforme a FATURA?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then verprodutos := false;

if t_processos.state = dsInactive then t_processos.open;
if t_faturas.state = dsInactive then t_faturas.open;
if t_transpprocesso.state = dsInactive then t_transpprocesso.open;
if t_transportadores.state = dsInactive then t_transportadores.open;

if t_itensfaturas.state = dsInactive then t_itensfaturas.open;
if t_tributositem.state = dsInactive then t_tributositem.open;
if t_taxaconv.state = dsInactive then t_taxaconv.open;
if T_taxaconvDeAmanha.state = dsInactive then T_taxaconvDeAmanha.open;
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
{cancela atualizaçao controla a saída do procedimento em toda a atualização
  Leandro Serra - 13/04/2011}
cancela_atualizacao := false;
//{atualiza capa da di}
atualizadi(b_atualizasiscomex);

if   cancela_atualizacao then exit;

q_propis.close;
q_propis.open;


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

//      while t_adicoes.state = dsinsert do begin
//      end;

      if (v_qadicao <> Q_adicoesAdicao.asstring) then begin
         v_qadicao := Q_adicoesAdicao.asstring;
         t_adicoes.append;
         T_adicoesNR_DECL_IMP_MICRO.asstring      :=    Q_adicoesNR_DECL_IMP_MICRO.asstring;
         T_adicoesNR_OP_IMP_MICRO.asstring        :=    Q_adicoesAdicao.asstring;
         {T_adicoesCD_URF_ENTR_MERC.asstring       :=    Q_adicoesURF_chegada.asstring;}
         {T_adicoesCD_VIA_TRANSPORTE.asstring      :=    Q_adicoesVia.asstring;}
         {T_adicoesIN_MULTIMODAL.asboolean         :=    Q_adicoesMultimodal.asboolean;}
         if Q_adicoesRazao_Social.asstring<>''  then T_adicoesNM_FORN_ESTR.asstring           :=    Q_adicoesRazao_Social.asstring
         else begin
              logusu('M','AVISO - Razão Social do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', Razão Social do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesEndereco.asstring<>''     then T_adicoesED_LOGR_FORN_ESTR.asstring      :=    Q_adicoesEndereco.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazao_Social.asstring+' - Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazao_Social.asstring+' - O Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesNumero.asstring<>''       then T_adicoesED_NR_FORN_ESTR.asstring        :=    Q_adicoesNumero.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazao_Social.asstring+' - O número do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazao_Social.asstring+' - O número do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesComplemento.asstring<>'' then T_adicoesED_COMPL_FORN_ESTR.asstring     :=    Q_adicoesComplemento.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazao_Social.asstring+' - O complemento do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazao_Social.asstring+' - O complemento do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesCidade.asstring<>''      then T_adicoesED_CIDAD_FORN_ESTR.asstring     :=    Q_adicoesCidade.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazao_Social.asstring+' - A cidade do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazao_Social.asstring+' - A cidade do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;
         if Q_adicoesEstado.asstring<>''      then T_adicoesED_ESTAD_FORN_ESTR.asstring     :=    Q_adicoesEstado.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazao_Social.asstring+' - O estado do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazao_Social.asstring+' - O estado do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;

         if Q_adicoesPais.asstring<>''         then T_adicoesCD_PAIS_AQUIS_MERC.asstring     :=    Q_adicoesPais.asstring
         else begin
              logusu('M','AVISO - '+Q_adicoesRazao_Social.asstring+' - O País do Endereço do Fabricante/Exportador está em branco! Favor verificar! Processo: '+me_nossaref.text);
              showmessage(v_usuario+', '+Q_adicoesRazao_Social.asstring+' - O País do Endereço do Fabricante/Exportador está em branco! Favor verificar! o envio continuará.');
         end;

         T_adicoesCD_MERCADORIA_NCM.asstring      :=    Q_adicoesNCM.asstring;
         {T_adicoesCD_PAIS_PROC_MERC.asstring      :=    Q_adicoesPais_Procedencia.asstring;}

         {verifica exportador = fabricante}
         if (Q_adicoesRazao_Social.asstring = Q_adicoesFABNOME.asstring) then begin
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
         if (( (Q_adicoesNALADI.asstring<>'') and ( not Q_adicoesNALADI.IsNull ) ) and
             ((Q_adicoesPais_Procedencia.asstring = '158'){chile} or
             (Q_adicoesPais_Procedencia.asstring = '063'){argentina} or
             (Q_adicoesPais_Procedencia.asstring = '845'){uruguai} or
             (Q_adicoesPais_Procedencia.asstring = '586'){paraguai} or
             (Q_adicoesPais_Procedencia.asstring = '097'){bolivia} or
             (Q_adicoesPais_Procedencia.asstring = '493'){mexico} or
             (Q_adicoesPais_Procedencia.asstring = '169'))){colombia} then
             T_adicoesCD_MERC_NALADI_SH.asstring   := Q_adicoesNALADI.asstring;

         {transformar peso em string}
         if (q_adicoespeso_libra.asinteger=1) then
            v_pesol := '0000000000'+floattostrf((Q_adicoesPeso_Total_Acertado.asfloat*0.4536),fffixed,10,5)
         else v_pesol := '0000000000'+floattostrf(Q_adicoesPeso_Total_Acertado.asfloat,fffixed,10,5);
         v_pesol := copy(v_pesol,(length(v_pesol)-15),10)+copy(v_pesol,(length(v_pesol)-4),5);
         T_adicoesPL_MERCADORIA.asstring               := v_pesol;

         {verificar quantidade estatística é quilograma liquido}
         if Q_adicoesUnidade_Medida_Estat.asstring = '10' then
            if  (q_adicoespeso_libra.asinteger=1) then
            v_pesol := '0000000000'+floattostrf((Q_adicoesPeso_Total_Acertado.asfloat*0.4536),fffixed,10,5)
            else v_pesol := '000000000'+floattostrf(Q_adicoesPeso_Total_Acertado.asfloat,fffixed,9,5);
            v_pesol := copy(v_pesol,(length(v_pesol)-14),9)+copy(v_pesol,(length(v_pesol)-4),5);
            T_adicoesQT_UN_ESTATISTICA.asstring    := v_pesol;

         {verificar quantidade estatística é unidade or pares}
         if (Q_adicoesUnidade_Medida_Estat.asstring = '11') or (Q_adicoesUnidade_Medida_Estat.asstring = '13') then begin
            v_quant := '000000000'+floattostrf(Q_adicoesSomaDeQuantidade.asfloat,fffixed,9,5);
            v_quant := copy(v_quant,(length(v_quant)-14),9)+copy(v_quant,(length(v_quant)-4),5);
            T_adicoesQT_UN_ESTATISTICA.asstring    := v_quant;
         end;

         if Q_adicoesCD_APLICACAO_MERC.asstring<>'' then T_adicoesCD_APLICACAO_MERC.asstring := Q_adicoesCD_APLICACAO_MERC.asstring;
         {T_adicoesVL_MERC_EMB_MN.asfloat               := 0;}
         T_adicoesCD_MOEDA_NEGOCIADA.asstring          := Q_adicoesMoeda.asstring;
         T_adicoesCD_INCOTERMS_VENDA.asstring          := Q_adicoesIncoterm.asstring;
         if Q_adicoesCondicao.asstring<>'' then T_adicoesNM_LOC_COND_VENDA.asstring           := Q_adicoesCondicao.asstring;

         {calcular}
         T_adicoesVL_MERC_COND_VENDA.asfloat      := Q_adicoesValor_Aduaneiro.asfloat;

         if rdgRefTaxaConversao.ItemIndex = 0 then
         begin
                 t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);
                 T_adicoesVL_MERC_VENDA_MN.asfloat        := (Q_adicoesValor_Aduaneiro.asfloat*t_taxaconvtaxa_conversao.asfloat);
                 T_adicoesVL_FRETE_MERC_MN.asfloat        := (Q_adicoesFrete.asfloat*t_taxaconvtaxa_conversao.asfloat);
                 T_adicoesVL_SEG_MERC_MN.asfloat          := (Q_adicoesSeguro.asfloat*t_taxaconvtaxa_conversao.asfloat)
         end
         else
         begin
                 T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);
                 T_adicoesVL_MERC_VENDA_MN.asfloat        := (Q_adicoesValor_Aduaneiro.asfloat*T_taxaconvDeAmanhaTaxa_conversao.asfloat);
                 T_adicoesVL_FRETE_MERC_MN.asfloat        := (Q_adicoesFrete.asfloat*T_taxaconvDeAmanhaTaxa_conversao.asfloat);
                 T_adicoesVL_SEG_MERC_MN.asfloat          := (Q_adicoesSeguro.asfloat*T_taxaconvDeAmanhaTaxa_conversao.asfloat);
         end;
         {T_adicoesVL_FRETE_MERC_MNEG.asfloat      := Q_adicoesFrete.asfloat;}
         {T_adicoesCD_MD_FRETE_MERC.asstring      := Q_adicoesMoeda.asstring+' ';}

         {if q_adicoesmoeda_frete.asstring <> Q_adicoesMoeda.asstring then begin
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,q_adicoesmoeda_frete.asstring]);
            T_adicoesVL_FRETE_MERC_MN.asfloat        := (T_adicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat);
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);
         end;}
         ///T_adicoesVL_SEG_MERC_MNEG.asfloat       := Q_adicoesSeguro.asfloat;
         ///T_adicoesCD_MOEDA_SEG_MERC.asstring     := Q_adicoesMoeda.asstring;

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
         if Q_adicoesMotivo_Sem_Cobertura.asstring<>'' then T_adicoesCD_MOTIVO_SEM_COB.asstring        := Q_adicoesMotivo_Sem_Cobertura.asstring;
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
         if Q_adicoesCobertura_Cambial.asstring <>'' then T_adicoesCD_COBERT_CAMBIAL.asstring         := Q_adicoesCobertura_Cambial.asstring;
         if Q_adicoesModalidade_de_Pagamento.asstring<>'' then T_adicoesCD_MODALIDADE_PGTO.asstring    := Q_adicoesModalidade_de_Pagamento.asstring;
         if Q_adicoesInstituicao_Financiadora.asstring <>''then T_adicoesCD_ORGAO_FIN_INTER.asstring  := Q_adicoesInstituicao_Financiadora.asstring;
         if Q_adicoesNumero_de_parcelas.asstring  <>'' then T_adicoesQT_PARC_FINANC_360.asstring       := Q_adicoesNumero_de_parcelas.asstring;
         if Q_adicoesIndicador_Periodicidade.asstring <>''then T_adicoesCD_PERIOD_PGTO_360.asstring   := inttostr(strtoint(Q_adicoesIndicador_Periodicidade.asstring)+1);
         if Q_adicoesPeriodicidade.asstring<>''          then begin
            T_adicoesQT_PERIOD_PGTO_360.asstring   := Q_adicoesPeriodicidade.asstring;
            ////if Q_adicoesValor_Aduaneiro.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat     := Q_adicoesValor_Aduaneiro.asfloat;
            ////alterei em 18/05/2004

            if Q_adicoesValor_Aduaneiro.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat := (Q_adicoesValor_Aduaneiro.asfloat*Q_adicoesprimeirodeValor_das_Parcelas.asfloat)/100;

            ///erika - 26092008 colocado vmle 3640/08....vai dar lama!!
            ///DANIELE - 25112008 colocado vmle EXW...!!
            if (q_adicoesincoterm.asstring='FCA') OR (q_adicoesincoterm.asstring='EXW') then begin
               if Q_adicoesVMLE.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat := (Q_adicoesVMLE.asfloat*Q_adicoesprimeirodeValor_das_Parcelas.asfloat)/100;
            end;

            {if q_adicoesincoterm.asstring='CFR' then begin
               if Q_adicoesValor_Aduaneiro.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat := (Q_adicoesValor_Aduaneiro.asfloat*Q_adicoesprimeirodeValor_das_Parcelas.asfloat)/100;
            end;}

         end;
         {verificar as parcelas digitadas}
         if Q_adicoesvalor_taxa_de_juros.asfloat     <>0 then T_adicoesPC_TAXA_JUROS.asfloat            := Q_adicoesvalor_taxa_de_juros.asfloat;
         if Q_adicoesCodigo_Taxa_de_Juros.asstring   <>''then T_adicoesCD_TAXA_JUROS.asstring           := Q_adicoesCodigo_Taxa_de_Juros.asstring;
         if Q_adicoesROF_BACEN.asstring           <>'' then begin
            T_adicoesNR_ROF.asstring                 := Q_adicoesROF_BACEN.asstring;
            T_adicoesVL_FINANC_SUP_360.asfloat       := (Q_adicoesValor_Aduaneiro.asfloat*(Q_adicoesPercentual_ROF.asfloat/100));
         end;
         {T_adicoesIN_PGTO_VARIAV_360.asboolean    := false;
         T_adicoesIN_JUROS_ATE_360.asboolean      := false;
         T_adicoesPC_COMISSAO_AG_IMP.asfloat      := 0;
         T_adicoesVL_COMISSAO_AG_IMP.asfloat      := 0;
         T_adicoesCD_TIPO_AGENTE_IMP.asstring     := '';
         T_adicoesNR_AGENTE_IMP.asstring          := '';
         T_adicoesCD_BANC_AGENTE_IMP.asstring     := '';
         T_adicoesCD_AGENC_AGENT_IMP.asstring     := '';}
         T_adicoesIN_BEM_ENCOMENDA.asboolean      := (Q_adicoesIN_BEM_ENCOMENDA.asinteger=1);
         T_adicoesIN_MATERIAL_USADO.asboolean     := (Q_adicoesIN_MATERIAL_USADO.asinteger=1);
         {T_adicoesTX_COMPL_VL_ADUAN.asstring      := ' ';}
         {T_adicoesIN_IPI_NAO_TRIBUT.asboolean     := false;}
         if rdgRefTaxaConversao.ItemIndex = 0 then
         begin
                T_adicoesvl_merc_loc_emb_mn.asfloat      := (Q_adicoesVMLE.asfloat*t_taxaconvtaxa_conversao.asfloat);
                T_adicoesvl_base_calculo_mn.asfloat      := (Q_adicoesBase_Calc_II.asfloat*t_taxaconvtaxa_conversao.asfloat);
         end
         else
         begin
                T_adicoesvl_merc_loc_emb_mn.asfloat      := (Q_adicoesVMLE.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
                T_adicoesvl_base_calculo_mn.asfloat      := (Q_adicoesBase_Calc_II.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
         end;
         {Ticket 3375 - Leandro Serra 08/08/2012 }
         if (Q_adicoesNR_OPER_TRAT_PREV.asString <> '') then
                T_adicoesNR_OPER_TRAT_PREV.asstring      := Q_adicoesNR_OPER_TRAT_PREV.Value;
         {Fim 3375}

         // 10052006 mm
         if q_propis.Locate('Adicao',Q_adicoesAdicao.asstring,[loCaseInsensitive]) then begin
//         if t_propis.FindKey([v_empresa,v_filial,me_nossaref.text,Q_adicoesAdicao.asstring]) then begin
            t_adicoesvl_aliq_icms.asfloat := (q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat);
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


//if MessageDlg('Gera detalhes de mercadoria?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
{gera todos os detalhes por adicao}
b_detalhes.Click;
T_tributositem.close;
T_tributositem.open;
//end;

{Atualiza acrescimo valoracao e deducao valoracao}
//q_acresdedu.Close;
//q_acresdedu.Params[0].AsString := q_processosempresa.asstring;
//q_acresdedu.Params[1].AsString := q_processosfilial.asstring;
//q_acresdedu.Params[2].AsString := me_nossaref.text;
//q_acresdedu.open;
//q_acresdedu.first;

T_acresval.close;
T_acresval.open;
T_deduval.close;
T_deduval.open;

qCountAdicao.Close;
qCountAdicao.ParamByName('pProcesso').AsString := me_nossaref.text;
qCountAdicao.Open;

  // Acréscimo
  // Eduardo Souza 19/03/2013 - Esse funciona!!!
  qryGetAcrescimos.Close;
  qryGetAcrescimos.ParamByName('Processo').AsString := me_nossaref.text;
  qryGetAcrescimos.Open;
  qryGetAcrescimos.First;
  while not(qryGetAcrescimos.Eof) do begin
    processamento('Aguarde... Atualizando SISCOMEX... Acréscimos e Deduções', qryGetAcrescimos.recordcount, false);

    // percorrendo colunas de acrescimo itens fatura
    iacr := 0;
    for iacr := 1 to 8 do begin
      // atribuindo valor da coluna
      valorAcr := qryGetAcrescimos.FieldValues[inttostr(iacr)];

      //Acréscimo
      if( valorAcr > 0 )then begin
        //identificando o tipo de acréscimo
        case iacr of
          1: codigoAcr := '2'; // EMBALAGENS E RECIPIENTES
          2: codigoAcr := '16';// CARGA,DESCARGA E MANUSEIO NA ENTRADA - PAIS DE IMPORTAÇÃO
          3: codigoAcr := '11';// SEGURO INTERNO -PAIS DE EXPORTAÇÃO
          4: codigoAcr := '17';// OUTROS ACRESCIMO AO VALOR ADUANEIRO
          5: codigoAcr := '10';// FRETE INTERNO -PAIS DE EXPORTAÇÃO
          6: codigoAcr := '12';// CARGA,DESCARGA E MANUSEIO - PAIS DE EXPORTAÇÃO
          7: codigoAcr := '15';// CARGA,DESCARGA E MANUSEIO INTERNACIONAIS
          8: codigoAcr := '9'; // VALOR QUALQUER PARCELA
        end;
        //----

        try
        T_acresval.append;
        T_acresvalNR_DECL_IMP_MICRO.asstring  := qryGetAcrescimosNR_DECL_IMP_MICRO.asstring;
        T_acresvalNR_OP_IMP_MICRO.asstring    := qryGetAcrescimosAdicao.asstring;
        T_acresvalCD_MET_ACRES_VALOR.asstring := codigoAcr;
        T_acresvalVL_ACRESCIMO_MOEDA.asfloat  := valorAcr;
        T_acresvalCD_MD_NEGOC_ACRES.asstring  := qryGetAcrescimosMoeda.asstring;

        t_taxaconv.findkey([v_empresa,v_filial, me_nossaref.text, qryGetAcrescimosMoeda.asstring]);
        if rdgRefTaxaConversao.ItemIndex = 0 then
          T_acresvalVL_ACRESCIMO_MN.asfloat   := (valorAcr * t_taxaconvtaxa_conversao.asfloat)
        else
          T_acresvalVL_ACRESCIMO_MN.asfloat   := (valorAcr * t_taxaconvDeAmanhataxa_conversao.asfloat);
        T_acresval.post;
        except on e : Exception do
          ShowMessage(e.ClassName +' - '+qryGetAcrescimosAdicao.AsString+' - '+ e.Message);
        end;
      end;

      // Deduções
      if( valorAcr < 0 )then begin
        T_deduval.append;
        T_deduvalNR_DECL_IMP_MICRO.asstring := qryGetAcrescimosNR_DECL_IMP_MICRO.asstring;
        T_deduvalNR_OP_IMP_MICRO.asstring   := qryGetAcrescimosAdicao.asstring;
        if(qryGetAcrescimosIncoterm.asstring = 'CIP') or
          (qryGetAcrescimosIncoterm.asstring = 'DAP') or
          (qryGetAcrescimosIncoterm.asstring = 'CPT') or
          (qryGetAcrescimosIncoterm.asstring = 'DDU') then
          T_deduvalCD_MET_DEDUC_VALOR.asstring := '3'
        else
          T_deduvalCD_MET_DEDUC_VALOR.asstring := '2';
        T_deduvalVL_DEDUCAO_MNEG.asfloat    := (valorAcr * -1);
        T_deduvalCD_MD_NEGOC_DEDUC.asstring := qryGetAcrescimosMoeda.asstring;
        t_taxaconv.findkey([v_empresa,v_filial, me_nossaref.text, qryGetAcrescimosMoeda.asstring]);
        if rdgRefTaxaConversao.ItemIndex = 0 then
          T_deduvalVL_DEDUCAO_MN.asfloat := ((valorAcr * t_taxaconvtaxa_conversao.asfloat)*-1)
        else
          T_deduvalVL_DEDUCAO_MN.asfloat := ((valorAcr * t_taxaconvDeAmanhataxa_conversao.asfloat)*-1);
        T_deduval.post;
      end;
      //---
    end;
    qryGetAcrescimos.Next;
  end;



(* Eduardo Souza 19/03/2013 - Isso não funciona
while not q_acresdedu.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Acréscimos e Deduções',q_acresdedu.recordcount,false);
      // q_valacrededu := strtofloat(floattostrf(Q_acresdeduSomaDeAcresc_reduc_Valaduan.asfloat,fffixed,10,2));
      if qCountAdicao.RecordCount > 1 then
           q_valacrededu := strtofloat(floattostrf(Q_acresdeduSomaDeAcresc_reduc_Valaduan.asfloat,fffixed,10,2))
      else
      begin
          qAcrescimoProcesso.close;
          qAcrescimoProcesso.ParamByName('pProcesso').asString := ME_nossaref.text;
          qAcrescimoProcesso.ParamByName('pCD_MET_ACRES_VALOR').asString := q_acresdeduCD_MET_ACRES_VALOR.asstring;
          qAcrescimoProcesso.Open;
          q_valacrededu := strtofloat(floattostrf(qAcrescimoProcessoVL_ACRESCIMO_MOEDA.asfloat,fffixed,10,2));
      end;
      {é acrescimo}
      if q_valacrededu > 0 then begin
         while t_acresval.state = dsinsert do begin
         end;
         T_acresval.append;
         T_acresvalNR_DECL_IMP_MICRO.asstring           := q_acresdeduNR_DECL_IMP_MICRO.asstring;
         T_acresvalNR_OP_IMP_MICRO.asstring             := q_acresdeduAdicao.asstring;
         ///alterei em 15/08/2006 = mm
         T_acresvalCD_MET_ACRES_VALOR.asstring          := q_acresdeduCD_MET_ACRES_VALOR.asstring; ////10102007 '9';
         ///T_acresvalCD_MET_ACRES_VALOR.asstring          := q_acresdeduCD_MET_ACRES_VALOR.asstring ;
         T_acresvalVL_ACRESCIMO_MOEDA.asfloat           := q_valacrededu;
         T_acresvalCD_MD_NEGOC_ACRES.asstring           := Q_acresdeduMoeda.asstring;
         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,Q_acresdeduMoeda.asstring]);
         if rdgRefTaxaConversao.ItemIndex = 0 then
                 T_acresvalVL_ACRESCIMO_MN.asfloat       := (q_valacrededu*t_taxaconvtaxa_conversao.asfloat)
         else
                 T_acresvalVL_ACRESCIMO_MN.asfloat       := (q_valacrededu*t_taxaconvDeAmanhataxa_conversao.asfloat);
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
                  (q_acresdeduincoterm.asstring = 'DAP') or
                  (q_acresdeduincoterm.asstring = 'CPT') or
                  (q_acresdeduincoterm.asstring = 'DDU')) then T_deduvalCD_MET_DEDUC_VALOR.asstring := '3'
              else T_deduvalCD_MET_DEDUC_VALOR.asstring := '2';
              T_deduvalVL_DEDUCAO_MNEG.asfloat                := (q_valacrededu*-1);
              T_deduvalCD_MD_NEGOC_DEDUC.asstring             := Q_acresdeduMoeda.asstring;
              t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,Q_acresdeduMoeda.asstring]);
              if rdgRefTaxaConversao.ItemIndex = 0 then
                      T_deduvalVL_DEDUCAO_MN.asfloat                  := ((q_valacrededu*t_taxaconvtaxa_conversao.asfloat)*-1)
              else
                      T_deduvalVL_DEDUCAO_MN.asfloat                  := ((q_valacrededu*t_taxaconvDeAmanhataxa_conversao.asfloat)*-1);
              T_deduval.post;
           end
      end;
      q_acresdedu.next;
end;
*)

processamento('Aguarde... Atualizando SISCOMEX... Acréscimos e Deduções',qryGetAcrescimos.recordcount,true);
T_acresval.close;
T_deduval.close;
//q_acresdedu.Close;
qryGetAcrescimos.Close;
qCountAdicao.Close;
qAcrescimoProcesso.close;


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
         T_atosvincSG_TIPO_ATO_VINCUL.asstring  := Q_atovincTipo_Ato_Legal.asstring;
         T_atosvincSG_ORG_ATO_VINCUL.asstring   := Q_atovincOrgao_Emissor.asstring;
         T_atosvincDT_ANO_ATO_VINCUL.asstring   := Q_atovincAno_Ato_Legal.asstring;
         T_atosvincNR_ATO_VINCULADO.asstring    := Q_atovincNumero_Ato_Legal_II.asstring;
         if Q_atovincEX.asstring<>''then T_atosvincNR_EX_ATO_VINCUL.asstring := Q_atovincEX.asstring;
         T_atosvinc.post;
         end;
      end;
      {possue reg de acordo aladi}
      if Q_atovincNumero_1.asstring <> '' then begin
         if not T_atosvinc.findkey([Q_atovincNR_DECL_IMP_MICRO.asstring,Q_atovincAdicao.asstring,'3']) then begin
         T_atosvinc.append;
         T_atosvincNR_DECL_IMP_MICRO.asstring   := Q_atovincNR_DECL_IMP_MICRO.asstring;
         T_atosvincNR_OP_IMP_MICRO.asstring     := Q_atovincAdicao.asstring;
         T_atosvincCD_ASSUNTO_VINCUL.asstring   := '3';
         T_atosvincSG_TIPO_ATO_VINCUL.asstring  := Q_atovincTipo_Ato_Legal_2.asstring;
         T_atosvincSG_ORG_ATO_VINCUL.asstring   := Q_atovincOrgao_Emissor_2.asstring;
         T_atosvincDT_ANO_ATO_VINCUL.asstring   := Q_atovincAno_Ato_Legal_2.asstring;
         T_atosvincNR_ATO_VINCULADO.asstring    := Q_atovincNumero_1.asstring;
         if Q_atovincEX_2.asstring<>''then T_atosvincNR_EX_ATO_VINCUL.asstring := Q_atovincEX_2.asstring;
         T_atosvinc.post;
         end;
      end;
      {possue reg de ipi}
      if Q_atovincNumero.asstring <> '' then begin
         if not T_atosvinc.findkey([Q_atovincNR_DECL_IMP_MICRO.asstring,Q_atovincAdicao.asstring,'4']) then begin
         T_atosvinc.append;
         T_atosvincNR_DECL_IMP_MICRO.asstring   := Q_atovincNR_DECL_IMP_MICRO.asstring;
         T_atosvincNR_OP_IMP_MICRO.asstring     := Q_atovincAdicao.asstring;
         T_atosvincCD_ASSUNTO_VINCUL.asstring   := '4';
         T_atosvincSG_TIPO_ATO_VINCUL.asstring  := Q_atovincTipo_Ato_Legal_1.asstring;
         T_atosvincSG_ORG_ATO_VINCUL.asstring   := Q_atovincOrgao_Emissor_1.asstring;
         T_atosvincDT_ANO_ATO_VINCUL.asstring   := Q_atovincAno_Ato_Legal_1.asstring;
         T_atosvincNR_ATO_VINCULADO.asstring    := Q_atovincNumero.asstring;
         if Q_atovincEX_1.asstring<>'' then T_atosvincNR_EX_ATO_VINCUL.asstring    := Q_atovincEX_1.asstring;
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

q_prodocs.close;
q_prodocs.Params[0].AsString := me_nossaref.text;
q_prodocs.open;

t_docsintru.close;
t_docsintru.open;

//q_docsinstru.first;
{zera documentos por di}
t_docsintru.first;
if t_docsintru.findkey([q_docsinstruNR_DECL_IMP_MICRO.asstring]) then begin
    while ((not t_docsintru.eof) and (t_docsintruNR_DECL_IMP_MICRO.asstring = q_docsinstruNR_DECL_IMP_MICRO.asstring)) do begin
          t_docsintru.delete;
    end;
end;

q_docsinstru.first;

v_num_seq := 0;
while not q_prodocs.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Documentos de Instruções',q_prodocs.recordcount,false);

      while t_docsintru.state = dsinsert do begin
      end;
      {Leandro Serra - 13/02/2012 Ticket 18782}
      try
          t_docsintru.append;
          T_docsintruNR_DECL_IMP_MICRO.asstring  := q_docsinstruNR_DECL_IMP_MICRO.asstring;
          T_docsintruNR_SEQ_DCTO_INSTR.asinteger := v_num_seq;
          T_docsintruCD_TIPO_DCTO_INSTR.asstring := q_prodocsCD_TIPO_DCTO_INSTR.asstring;
          // Ticket: 1440 - eduardo.souza 10/01/2012 - erro quando o campo era null
          if ( q_prodocsNR_DCTO_INSTRUCAO.IsNull ) then
            T_docsintruNR_DCTO_INSTRUCAO.asstring  := ' '
          else
            T_docsintruNR_DCTO_INSTRUCAO.asstring  := q_prodocsNR_DCTO_INSTRUCAO.asstring;
          //--
          T_docsintruNM_DCTO_INSTRUCAO.asstring  := q_prodocsNM_DCTO_INSTRUCAO.asstring;
          t_docsintru.post;
      except
           ShowMessage('Ocorreu um erro devido a falta de informação para o campo CD_TIPO_DCTO_INSTR no SISCOMEX.'+chr(13)+
                       'Por favor, informe no MS2000 no menu Processos / Documentos de instrução '+chr(13) +
                       'o código do documento de instrução que está em branco. '+chr(13)+
                       'A ausência desta informação interrompeu a transferência dos dados.');
           exit;

      end;
      v_num_seq := v_num_seq +1;

      q_prodocs.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Documentos de Instruções',q_prodocs.recordcount,true);

{while not q_docsinstru.eof do begin
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
 }


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


VPIS_TOTAL   := 0;
VCOFINS_TOTAL := 0;

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
      if rdgRefTaxaConversao.ItemIndex = 0 then
      begin
        T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributosBase_Calc_II.asfloat*t_taxaconvtaxa_conversao.asfloat);
        T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributosBase_Calc_II.asfloat*(Q_tributosAliq_NCM_II.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
        T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (Q_tributosSomaDeValor_II_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
        T_tributoVL_IPT_A_RECOLHER.asfloat   := (Q_tributosSomaDeValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
      end
      else
      begin
        T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributosBase_Calc_II.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
        T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributosBase_Calc_II.asfloat*(Q_tributosAliq_NCM_II.asfloat/100))*t_taxaconvDeAmanhataxa_conversao.asfloat);
        T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (Q_tributosSomaDeValor_II_Devido.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
        T_tributoVL_IPT_A_RECOLHER.asfloat   := (Q_tributosSomaDeValor_II_a_recolher.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
      end;
      T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_II.asfloat;
      {T_tributoNM_UN_ALIQ_ESP_IPT.asfloat  := 0;
      T_tributoCD_TIPO_RECIPIENTE.asfloat  := 0;
      T_tributoQT_ML_RECIPIENTE.asfloat    := 0;
      T_tributoQT_MERC_UN_ALIQ_ES.asfloat  := 0;
      T_tributoVL_ALIQ_ESPEC_IPT.asfloat   := 0;
      T_tributoVL_CALC_IPT_ESPEC.asfloat   := 0;
      T_tributoCD_TIPO_BENEF_IPI.asstring  := ' ';}
      if Q_tributosPercentual_Reducao_II.asfloat<>0 then T_tributoPC_REDUCAO_IPT_BLI.asfloat := Q_tributosPercentual_Reducao_II.asfloat;
      if Q_tributosaliquota_aladi.asfloat<>0 then
      begin
        {T_tributoPC_ALIQ_REDUZIDA.asfloat  := (Q_tributosAliq_NCM_II.asfloat-(Q_tributosAliq_NCM_II.asfloat*(Q_tributosaliquota_aladi.asfloat/100)));}
        T_tributoPC_ALIQ_ACOR_TARIF.asfloat := (Q_tributosAliq_NCM_II.asfloat-(Q_tributosAliq_NCM_II.asfloat*(Q_tributosaliquota_aladi.asfloat/100)));
        if rdgRefTaxaConversao.ItemIndex = 0 then
                T_tributoVL_CALC_II_AC_TARI.asfloat := (Q_tributosSomaDeValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat)
        else
                T_tributoVL_CALC_II_AC_TARI.asfloat := (Q_tributosSomaDeValor_II_a_recolher.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
      end
      {calculo da aliquota reduzida para nao aladi}
      else begin

      end;
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
      if rdgRefTaxaConversao.ItemIndex = 0 then
      begin
          T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributossomadeBase_Calc_IpI.asfloat*t_taxaconvtaxa_conversao.asfloat);
          T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributossomadeBase_Calc_IpI.asfloat*(Q_tributosAliq_NCM_IpI.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
          T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (Q_tributosSomaDeValor_IPI_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
          T_tributoVL_IPT_A_RECOLHER.asfloat   := (Q_tributosSomaDeValor_IPI_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
      end
      else
      begin
          T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributossomadeBase_Calc_IpI.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
          T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributossomadeBase_Calc_IpI.asfloat*(Q_tributosAliq_NCM_IpI.asfloat/100))*t_taxaconvDeAmanhataxa_conversao.asfloat);
          T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (Q_tributosSomaDeValor_IPI_Devido.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
          T_tributoVL_IPT_A_RECOLHER.asfloat   := (Q_tributosSomaDeValor_IPI_a_recolher.asfloat*t_taxaconvDeAmanhataxa_conversao.asfloat);
      end;

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
      {T_tributoCD_TIPO_DIREITO.asstring    := ' ';
      T_tributoNR_NOTA_COMPL_TIPI.asstring := ' ';}
      t_tributo.post;

      // 10052006 mm
      if q_propis.Locate('Adicao',q_tributosAdicao.asstring,[loCaseInsensitive]) then begin
//      if t_propis.FindKey([v_empresa,v_filial,me_nossaref.text,q_tributosAdicao.asstring]) then begin
             if q_piscofinstrib.Locate('Adicao',Q_tributosAdicao.asstring,[loCaseInsensitive]) then begin
//                if q_piscofinstribRegime_Tributacao_II.asstring<>'5' then begin

         /// GRAVANDO PIS
         t_tributo.append;
         T_tributoNR_DECL_IMP_MICRO.asstring  := Q_tributosNR_DECL_IMP_MICRO.asstring;
         T_tributoNR_OP_IMP_MICRO.asstring    := Q_tributosAdicao.asstring;
         T_tributoCD_RECEITA_IMPOSTO.asstring := '0005';
         T_tributoCD_TIPO_ALIQ_IPT.asstring   := '1';
         T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := q_propisALIQ_PIS_PASEP.asfloat;
         T_tributoVL_BASE_CALC_ADVAL.asfloat  := q_propisbasec_piscofins.asfloat;
         T_tributoVL_CALC_IPT_ADVAL.asfloat   := q_propisvalor_pis_pasep.asfloat;
        //      if Q_tributosRegime_Tributacao_IPI.asstring<>'' then T_tributoCD_TIPO_BENEF_IPI.asstring  := Q_tributosRegime_Tributacao_IPI.asstring;
        //      if Q_tributosPercentual_Reduca_IPI.asfloat<>0 then T_tributoPC_ALIQ_REDUZIDA.asfloat    := (Q_tributosAliq_NCM_IPI.asfloat*(Q_tributosPercentual_Reduca_IPI.asfloat/100));
         T_tributoVL_IMPOSTO_DEVIDO.asfloat   := q_propisvalor_pis_pasep.asfloat;
//         T_tributoVL_IPT_A_RECOLHER.asfloat   := q_propisvalor_pis_pasep.asfloat;
           T_tributoVL_IPT_A_RECOLHER.asfloat := 0;
         if (q_tributosCD_REGIME_TRIBUTAR_PISCOFINS.asstring='1') or ((q_tributosCD_REGIME_TRIBUTAR_PISCOFINS.asstring='4') and (q_tributosPC_ALIQ_REDUZIDA_PIS.asfloat>0)) then begin
         VPIS_TOTAL := VPIS_TOTAL+q_propisvalor_pis_pasep.asfloat;
         T_tributoVL_IPT_A_RECOLHER.asfloat   := q_propisvalor_pis_pasep.asfloat;
         end;

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
         T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := q_propisALIQ_COFINS.asfloat;
         T_tributoVL_BASE_CALC_ADVAL.asfloat  := q_propisbasec_piscofins.asfloat;
         T_tributoVL_CALC_IPT_ADVAL.asfloat   := q_propisvalor_COFINS.asfloat;
        //      if Q_tributosRegime_Tributacao_IPI.asstring<>'' then T_tributoCD_TIPO_BENEF_IPI.asstring  := Q_tributosRegime_Tributacao_IPI.asstring;
        //      if Q_tributosPercentual_Reduca_IPI.asfloat<>0 then T_tributoPC_ALIQ_REDUZIDA.asfloat    := (Q_tributosAliq_NCM_IPI.asfloat*(Q_tributosPercentual_Reduca_IPI.asfloat/100));
         T_tributoVL_IMPOSTO_DEVIDO.asfloat   := q_propisvalor_COFINS.asfloat;
        /// T_tributoVL_IPT_A_RECOLHER.asfloat   := q_propisvalor_COFINS.asfloat;
           T_tributoVL_IPT_A_RECOLHER.asfloat := 0;
         if (q_tributosCD_REGIME_TRIBUTAR_PISCOFINS.asstring='1') or ((q_tributosCD_REGIME_TRIBUTAR_PISCOFINS.asstring='4') and (q_tributosPC_ALIQ_REDUZIDA_COFINS.asfloat>0)) then begin
         VCOFINS_TOTAL := VCOFINS_TOTAL + q_propisvalor_COFINS.asfloat;
         T_tributoVL_IPT_A_RECOLHER.asfloat   := q_propisvalor_COFINS.asfloat;
         end;

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
      T_pagprevistoDT_PREV_PGTO_360.asstring  := copy(q_pagprevData_de_Pagamento.asstring,3,4)+copy(q_pagprevData_de_Pagamento.asstring,1,2);
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
    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 185;
    for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
        if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+29.50;
        if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+23.60;
        if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+17.70;
        if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+11.80;
        if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+5.90;
        if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2.95;
    end;
    {ratear nos itens das faturas}
    {T_pagtributosDT_PGTO_TRIBUTO.asstring     := ' ';
    T_pagtributosVL_MULTA_PGTO_TRIB.asfloat   := 0;
    T_pagtributosVL_JUROS_PGTO_TRIB.asfloat   := 0;}
    t_pagtributos.post;
    qtx :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

    q_pagtributos.next;
end;

//// inserir aqui o pis(5602) e cofins(5629) 07/03/2007

//VPIS_TOTAL
//VCOFINS_TOTAL
vseq := 3;
if (VPIS_TOTAL > 0) then begin
    t_pagtributos.append;
    T_pagtributosNR_DECL_IMP_MICRO.asstring   := q_pagtributosNR_DECL_IMP_MICRO.asstring;
    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := vseq;
    T_pagtributosCD_RECEITA_PGTO.asstring     := '5602';
    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := VPIS_TOTAL;
    t_pagtributos.post;
    vseq := vseq+1;
end;

if (VCOFINS_TOTAL > 0) then begin
    t_pagtributos.append;
    T_pagtributosNR_DECL_IMP_MICRO.asstring   := q_pagtributosNR_DECL_IMP_MICRO.asstring;
    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := vseq;
    T_pagtributosCD_RECEITA_PGTO.asstring     := '5629';
    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := VCOFINS_TOTAL;
    t_pagtributos.post;
    vseq := vseq+1;

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
      T_pagvinculadoCD_FORMA_PAGAMENTO.asstring  := q_pagvinculadosForma_de_Pagamento.asstring;
      T_pagvinculadoIN_PAGAMENTO_MN.asboolean    := (q_pagvinculadosMoeda_Nacional.asinteger=1);
      T_pagvinculadoCD_BANCO_PAGAMENTO.asstring  := q_pagvinculadosBanco.asstring;
      T_pagvinculadoCD_PRACA_PAGAMENTO.asstring  := q_pagvinculadosPraca.asstring;
      T_pagvinculadoNR_OP_CAMBIO.asstring        := q_pagvinculadosContrato.asstring;
            ///erika - 26092008 colocado vmle 3640/08....vai dar lama!!
            ///DANIELE - 25112008 colocado vmle EXW...!!
      if (q_pagvinculadosincoterm.asstring='FCA') OR (q_pagvinculadosincoterm.asstring='EXW') then begin
         T_pagvinculadoVL_VINC_MD_CAMBIO.asfloat    := (q_pagvinculadosVMLE.asfloat*(q_pagvinculadosValor_Percentual.asfloat/100));
      end
      else begin
         T_pagvinculadoVL_VINC_MD_CAMBIO.asfloat    := (q_pagvinculadosValor_Aduaneiro.asfloat*(q_pagvinculadosValor_Percentual.asfloat/100));
      end;

      {T_pagvinculadoNR_COMPR_CAMBIO.asstring     := q_pagvinculadosCNPJComprador.asstring;
      T_pagvinculadoCD_TP_COMPR_CAMBIO.asstring  := q_pagvinculadosTipoCNPJ.asstring;}
      t_pagvinculado.post;
      q_pagvinculados.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Pagamentos Vinculados',q_pagvinculados.recordcount,true);

{ AQUI ENTRA AS SQLS PARA GERAR DUAS DIS NO CASO "12"}
if t_processostipo_declaracao.asstring = '12' then begin
  if MessageDlg('Gera DI de Admissão Temporária e Consumo Separadamente?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
    processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
     ///de admissao
     achou := false;
     if t_di.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM']) then achou := true;
     if ((achou) and (t_diNR_DECLARACAO_IMP.asstring='')) or (not achou) then
     begin
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
                if rdgRefTaxaConversao.ItemIndex = 0 then
                  t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring])
                else
                  T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascodigo.asstring) do begin
                     if t_tributositem.findkey([q_processosempresa.asstring,q_processosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='5' then begin
                                 v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 if rdgRefTaxaConversao.ItemIndex = 0 then
                                         v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversao.asfloat)
                                 else
                                         v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*T_taxaconvDeAmanhaTaxa_Conversao.asfloat);
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

           t_di.Edit;
           if rdgRefTaxaConversao.ItemIndex = 0 then
           begin
             q_acertafretseg.close;
             q_acertafretseg.params[0].asstring := me_nossaref.text;
             q_acertafretseg.params[1].asstring := '5';
             q_acertafretseg.open;
             if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then
             begin
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
           end
           else
           begin
             q_acertafretsega.close;
             q_acertafretsega.params[0].asstring := me_nossaref.text;
             q_acertafretsega.params[1].asstring := '5';
             q_acertafretsega.open;
             if t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then
             begin

                T_diVL_TOT_FRT_PREPAID.asfloat     := ((q_acertafretsegaprepaid.asfloat*q_acertafretsegataxa_conversao.asfloat)/q_acertafretsegataxa_conversaofre.asfloat);
                T_diVL_TOT_FRT_COLLECT.asfloat     := ((q_acertafretsegacollect.asfloat*q_acertafretsegataxa_conversao.asfloat)/q_acertafretsegataxa_conversaofre.asfloat);
                T_diVL_FRETE_TNAC_MNEG.asfloat     := ((q_acertafretsegaternac.asfloat*q_acertafretsegataxa_conversao.asfloat)/q_acertafretsegataxa_conversaofre.asfloat);
                ////T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat)*q_acertafretsegtaxa_conversao.asfloat;
                T_diVL_TOTAL_FRETE_MN.asfloat      :=  (T_diVL_TOT_FRT_PREPAID.asfloat+T_diVL_TOT_FRT_COLLECT.asfloat-T_diVL_FRETE_TNAC_MNEG.asfloat)*q_acertafretsegataxa_conversaofre.asfloat;
             end;
             if t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
                T_diVL_TOT_SEGURO_MNEG.asfloat     := ((q_acertafretsegaseguro.asfloat*q_acertafretsegataxa_conversao.asfloat)/q_acertafretsegataxa_conversaoseg.asfloat);
                ////T_diVL_TOTAL_SEG_MN.asfloat        := (q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversao.asfloat);
                T_diVL_TOTAL_SEG_MN.asfloat        := (T_diVL_TOT_SEGURO_MNEG.asfloat*q_acertafretsegataxa_conversaoseg.asfloat);
             end;
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
           if rdgRefTaxaConversao.ItemIndex = 0 then
           begin
               q_acertapagtrib.close;
               q_acertapagtrib.params[0].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
               q_acertapagtrib.params[1].asstring := '5';
               q_acertapagtrib.open;
             ///mm 25/04/2006
               if q_acertapagtrib.RecordCount>0 then
               begin
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
                  T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 185;
                  for i := 1 to (apri) do
                  begin
                      if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+29.50;
                      if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+23.60;
                      if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+17.70;
                      if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+11.80;
                      if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+5.90;
                      if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2.95;
                  end;
                  t_pagtributos.post;
                  qtx :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
               end;
           end
           else
           begin
               q_acertapagtriba.close;
               q_acertapagtriba.params[0].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
               q_acertapagtriba.params[1].asstring := '5';
               q_acertapagtriba.open;

               if q_acertapagtriba.RecordCount>0 then
               begin
                  {grava ii}
                  t_pagtributos.append;
                  T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
                  T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
                  T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribacod_ii.asstring;
                  T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
                  T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
                  T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribaSomaDeValor_II_a_recolher.asfloat*q_acertapagtribataxa_conversao.asfloat);
                  t_pagtributos.post;
                  qii :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
                  {grava ipi}
                  t_pagtributos.append;
                  T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
                  T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
                  T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribacod_ipi.asstring;
                  T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
                  T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
                  T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribaSomaDeValor_IPI_a_recolher.asfloat*q_acertapagtribataxa_conversao.asfloat);
                  t_pagtributos.post;
                  qipi :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
                  {grava sis}
                  t_pagtributos.append;
                  T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
                  T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
                  T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribacod_sis.asstring;
                  T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
                  T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
                  T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 185;
                  for i := 1 to (apri) do
                  begin
                      if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+29.50;
                      if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+23.60;
                      if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+17.70;
                      if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+11.80;
                      if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+5.90;
                      if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2.95;
                  end;
                  t_pagtributos.post;
                  qtx :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
               end;
           end;
     end;

     ///de consumo
     achou := false;
     if t_di.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']) then achou := true;
     if ((achou) and (t_diNR_DECLARACAO_IMP.asstring='')) or (not achou) then
     begin
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
               ( t_arrumaadicoesNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do
        begin
              processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
              apri := apri+1;
              t_arrumaadicoes.edit;
              t_arrumaadicoesNR_OP_IMP_MICRO.asstring := copy('000'+inttostr(apri),length('000'+inttostr(apri))-2,3);

              if rdgRefTaxaConversao.ItemIndex = 0 then
              begin
                  if t_processosnr_declaracao_impc.asstring='' then
                  begin
                     t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
                     T_arrumaadicoesVL_MERC_VENDA_MN.asfloat        := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

                     T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
                     T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
                  end;
              end
              else
              begin
                  if t_processosnr_declaracao_impc.asstring='' then
                  begin
                     T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
                     T_arrumaadicoesVL_MERC_VENDA_MN.asfloat        := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat/t_taxaconvDeAmanhataxa_conversao.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat;

                     T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvDeAmanhataxa_conversao.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat;
                     T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvDeAmanhataxa_conversao.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat;
                  end;
              end;
              if ((T_arrumaadicoesCD_INCOTERMS_VENDA.asstring = 'FOB') or
                   (T_arrumaadicoesCD_INCOTERMS_VENDA.asstring = 'FCA') or
                   (T_arrumaadicoesCD_INCOTERMS_VENDA.asstring = 'EXW')) then
              begin
                  T_arrumaadicoesvl_merc_loc_emb_mn.asfloat      := T_arrumaadicoesVL_MERC_VENDA_MN.asfloat;
                  T_arrumaadicoesvl_base_calculo_mn.asfloat      := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat+T_arrumaadicoesVL_FRETE_MERC_MN.asfloat+T_arrumaadicoesVL_SEG_MERC_MN.asfloat)
              end
              else
              begin
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

        if rdgRefTaxaConversao.ItemIndex = 0 then
        begin
            while ((not t_tributo.eof) and
                   ( t_tributoNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do
            begin
                   t_tributo.edit;
                   T_tributoVL_BASE_CALC_ADVAL.asfloat  := (T_tributoVL_BASE_CALC_ADVAL.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
                   T_tributoVL_CALC_IPT_ADVAL.asfloat   := (T_tributoVL_CALC_IPT_ADVAL.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
                   T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (T_tributoVL_IMPOSTO_DEVIDO.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
                   T_tributoVL_IPT_A_RECOLHER.asfloat   := (T_tributoVL_IPT_A_RECOLHER.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
                   t_tributo.post;
                   t_tributo.next;
            end;
        end
        else
        begin
            while ((not t_tributo.eof) and
                   ( t_tributoNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do
            begin
                   t_tributo.edit;
                   T_tributoVL_BASE_CALC_ADVAL.asfloat  := (T_tributoVL_BASE_CALC_ADVAL.asfloat/t_taxaconvDeAmanhataxa_conversao.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat;
                   T_tributoVL_CALC_IPT_ADVAL.asfloat   := (T_tributoVL_CALC_IPT_ADVAL.asfloat/t_taxaconvDeAmanhataxa_conversao.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat;
                   T_tributoVL_IMPOSTO_DEVIDO.asfloat   := (T_tributoVL_IMPOSTO_DEVIDO.asfloat/t_taxaconvDeAmanhataxa_conversao.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat;
                   T_tributoVL_IPT_A_RECOLHER.asfloat   := (T_tributoVL_IPT_A_RECOLHER.asfloat/t_taxaconvDeAmanhataxa_conversao.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat;
                   t_tributo.post;
                   t_tributo.next;
            end;
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
           if rdgRefTaxaConversao.ItemIndex = 0 then
                T_diTX_INFO_COMPL.asstring         := T_processosTX_INFO_COMPL.asstring;


           t_di.post;

           ///acerta valor da di de consumo
           {testar moedas das faturas}
           t_faturas.first;
           t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
           v_moedaigual := true;
           v_moeda      := t_faturasmoeda.asstring;
           v_totfat     := 0;
           v_totfatm    := 0;

           while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do
           begin
                if v_moeda <> t_faturasmoeda.asstring then begin
                    v_moeda      := '790'; {moeda real}
                    v_moedaigual := false;
                end;
                if rdgRefTaxaConversao.ItemIndex = 0 then
                        t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring])
                else
                        T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascodigo.asstring) do begin
                     if t_tributositem.findkey([q_processosempresa.asstring,q_processosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='1' then begin
                                 v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 if rdgRefTaxaConversao.ItemIndex = 0 then
                                          v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversaoc.asfloat)
                                 else
                                          v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvDeAmanhataxa_conversaoc.asfloat);
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
           if rdgRefTaxaConversao.ItemIndex = 0 then
           begin
                 ///acerta fretes e seguro da di de consumo
                 q_acertafretseg.close;
                 q_acertafretseg.params[0].asstring := me_nossaref.text;
                 q_acertafretseg.params[1].asstring := '1';
                 q_acertafretseg.open;

                 t_di.Edit;
                 if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then begin

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
           end
           else
           begin
                 ///acerta fretes e seguro da di de consumo
                 q_acertafretsega.close;
                 q_acertafretsega.params[0].asstring := me_nossaref.text;
                 q_acertafretsega.params[1].asstring := '1';
                 q_acertafretsega.open;

                 t_di.Edit;
                 if t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then begin

                    if t_processosnr_declaracao_imp.asstring='' then begin
                       T_diVL_TOT_FRT_PREPAID.asfloat     := ((q_acertafretsegaprepaid.asfloat*q_acertafretsegataxa_conversaoc.asfloat)/q_acertafretsegataxa_conversaocfre.asfloat);
                       T_diVL_TOT_FRT_COLLECT.asfloat     := ((q_acertafretsegacollect.asfloat*q_acertafretsegataxa_conversaoc.asfloat)/q_acertafretsegataxa_conversaocfre.asfloat);
                       T_diVL_FRETE_TNAC_MNEG.asfloat     := ((q_acertafretsegaternac.asfloat*q_acertafretsegataxa_conversaoc.asfloat)/q_acertafretsegataxa_conversaocfre.asfloat);
                       ////T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat)*q_acertafretsegtaxa_conversao.asfloat;
                       T_diVL_TOTAL_FRETE_MN.asfloat      :=  (T_diVL_TOT_FRT_PREPAID.asfloat+T_diVL_TOT_FRT_COLLECT.asfloat-T_diVL_FRETE_TNAC_MNEG.asfloat)*q_acertafretsegataxa_conversaocfre.asfloat;
                       end
                    else begin
                       T_diVL_TOT_FRT_PREPAID.asfloat     := ((q_acertafretsegaprepaid.asfloat*q_acertafretsegataxa_conversao.asfloat)/q_acertafretsegataxa_conversaofre.asfloat);
                       T_diVL_TOT_FRT_COLLECT.asfloat     := ((q_acertafretsegacollect.asfloat*q_acertafretsegataxa_conversao.asfloat)/q_acertafretsegataxa_conversaofre.asfloat);
                       T_diVL_FRETE_TNAC_MNEG.asfloat     := ((q_acertafretsegaternac.asfloat*q_acertafretsegataxa_conversao.asfloat)/q_acertafretsegataxa_conversaofre.asfloat);
                       ////T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat)*q_acertafretsegtaxa_conversao.asfloat;
                       T_diVL_TOTAL_FRETE_MN.asfloat      :=  (T_diVL_TOT_FRT_PREPAID.asfloat+T_diVL_TOT_FRT_COLLECT.asfloat-T_diVL_FRETE_TNAC_MNEG.asfloat)*q_acertafretsegataxa_conversaocfre.asfloat;
                    end;
                 end;

                 if t_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
                    T_diVL_TOT_SEGURO_MNEG.asfloat     := ((q_acertafretsegaseguro.asfloat*q_acertafretsegataxa_conversaoc.asfloat)/q_acertafretsegataxa_conversaocseg.asfloat);
                    ////T_diVL_TOTAL_SEG_MN.asfloat        := (q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversao.asfloat);
                    T_diVL_TOTAL_SEG_MN.asfloat        := (T_diVL_TOT_SEGURO_MNEG.asfloat*q_acertafretsegataxa_conversaocseg.asfloat);
                 end;
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
           if rdgRefTaxaConversao.ItemIndex = 0 then
           begin
                 q_acertapagtrib.close;
                 q_acertapagtrib.params[0].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
                 q_acertapagtrib.params[1].asstring := '1';
                 q_acertapagtrib.open;

                 ///mm 25/04/2006
                 if q_acertapagtrib.RecordCount>0 then
                 begin
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
                    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 185;
                    for i := 1 to (apri) do begin
                        if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+29.50;
                        if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+23.60;
                        if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+17.70;
                        if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+11.80;
                        if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+5.90;
                        if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2.95;
                    end;
                 end;
                 t_pagtributos.post;
                 qtxc :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;
           end
           else
           begin
                 q_acertapagtriba.close;
                 q_acertapagtriba.params[0].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
                 q_acertapagtriba.params[1].asstring := '1';
                 q_acertapagtriba.open;

                 ///mm 25/04/2006
                 if q_acertapagtriba.RecordCount>0 then
                 begin
                    {grava ii}
                    t_pagtributos.append;
                    T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
                    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
                    T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribacod_ii.asstring;
                    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
                    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
                    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribaSomaDeValor_II_a_recolher.asfloat*q_acertapagtribataxa_conversaoc.asfloat);
                    t_pagtributos.post;
                    qiic :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

                    {grava ipi}
                    t_pagtributos.append;
                    T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
                    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
                    T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribacod_ipi.asstring;
                    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
                    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
                    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribaSomaDeValor_IPI_a_recolher.asfloat*q_acertapagtribataxa_conversaoc.asfloat);
                    t_pagtributos.post;
                    qipic :=    T_pagtributosVL_TRIBUTO_PAGO.asfloat;

                    {grava sis}
                    t_pagtributos.append;
                    T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
                    T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
                    T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribacod_sis.asstring;
                    T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
                    T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
                    T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 185;
                    for i := 1 to (apri) do begin
                        if ((i >= 1 )  and (i <= 2 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+29.50;
                        if ((i >= 3 )  and (i <= 5 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+23.60;
                        if ((i >= 6 )  and (i <= 10 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+17.70;
                        if ((i >= 11)  and (i <= 20))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+11.80;
                        if ((i >= 21)  and (i <= 50))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+5.90;
                        if (i >= 51) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2.95;
                    end;
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


if (t_processostipo_declaracao.asstring='12') and (tem2dis) then begin
   showmessage(v_usuario+', foram calculados os valores:'+#13#10+#13#10+
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
'PIS R$ '+floattostr(VPIS_TOTAL)+#13#10+
'COFINS R$ '+floattostr(VCOFINS_TOTAL)+#13#10+#13#10+
'verificar da pasta "desembaraço"')
end
else begin
showmessage(v_usuario+', foram calculados os valores:'+#13#10+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cif.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fob.asfloat)+#13#10+
'II  R$ '+floattostr(qii)+#13#10+
'IPI R$ '+floattostr(qipi)+#13#10+
'TAXA SISCOMEX R$ '+floattostr(qtx)+#13#10+
'PIS R$ '+floattostr(VPIS_TOTAL)+#13#10+
'COFINS R$ '+floattostr(VCOFINS_TOTAL)+#13#10+#13#10+
'verificar da pasta "desembaraço"')

end;

q_temproreg.Params[0].asstring := v_empresa;
q_temproreg.Params[1].asstring := v_filial;
q_temproreg.Params[2].asstring := me_nossaref.text;
q_temproreg.open;
if q_temproreg.RecordCount=0 then begin
q_upinsertproreg.Params[0].asstring := v_empresa;
q_upinsertproreg.Params[1].asstring := v_filial;
q_upinsertproreg.Params[2].asstring := me_nossaref.text;
q_upinsertproreg.ExecSQL;
end;
q_temproreg.close;

q_proreg.close;
q_proreg.Params[0].asstring := stringreplace(floattostr(qii),',','.',[]);
q_proreg.Params[1].asstring := stringreplace(floattostr(qipi),',','.',[]);
q_proreg.Params[2].asstring := stringreplace(floattostr(qtx),',','.',[]);
q_proreg.Params[3].asstring := stringreplace(floattostr(qiic),',','.',[]);
q_proreg.Params[4].asstring := stringreplace(floattostr(qipic),',','.',[]);
q_proreg.Params[5].asstring := stringreplace(floattostr(qtxc),',','.',[]);
q_proreg.Params[6].asstring := me_nossaref.text;
q_proreg.ExecSQL;

if rdgRefTaxaConversao.ItemIndex = 1 then
begin
 qryDeleteSiscomex.ParamByName('MS').Value := ME_nossaref.Text;
 qryDeleteSiscomex.ExecSQL;
 Application.MessageBox(Pchar('Com a taxa de conversão do dia seguinte, não é possível enviar informações para o siscomex somente cálculos foram feitos.'),'Aviso', MB_OK+MB_ICONWARNING);
 qryImportadorExportaSiscomex.Close;
 Exit;
end;

{Inicio da alteração - Eduardo Souza - 17/01/2012}
If ( NaoEnviaDadosParaSiscomex = True ) Then Begin
 qryDeleteSiscomex.ParamByName('MS').Value := ME_nossaref.Text;
 qryDeleteSiscomex.ExecSQL;
 Application.MessageBox(Pchar('O Cliente: '+ qryImportadorExportaSiscomex.FieldByName('Razao_Social').AsString +' não está habilitado para enviar informações para o siscomex.'),'Aviso', MB_OK+MB_ICONWARNING);
End
Else MessageDlg(v_usuario+' seu SISCOMEX foi Atualizado!', mtInformation,[mbOk], 0);

qryImportadorExportaSiscomex.Close;
{Fim da alteração- Eduardo Souza - 17/01/2012}

//tbproregimp.findkey([v_empresa,v_filial,q_processosprocesso.asstring]);

//showmessage(tbproregimpprocesso.asstring);
{
q_proreg.close;
q_proreg.Params[0].asstring := stringreplace(floattostr(qii),',','.',[]);
q_proreg.Params[1].asstring := stringreplace(floattostr(qipi),',','.',[]);
q_proreg.Params[2].asstring := stringreplace(floattostr(qtx),',','.',[]);
q_proreg.Params[3].asstring := stringreplace(floattostr(qiic),',','.',[]);
q_proreg.Params[4].asstring := stringreplace(floattostr(qipic),',','.',[]);
q_proreg.Params[5].asstring := stringreplace(floattostr(qtxc),',','.',[]);
q_proreg.Params[6].asstring := me_nossaref.text;
q_proreg.ExecSQL;
}

{tbProregimp.edit;
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
 }




end;

procedure Tf_prodidsi.atualizadi(Sender: TObject);
var v_pesob:string;
    v_pesol:string;
    v_moedaigual:boolean;
    v_moeda:string;
    v_totfat,vfret,vsegu:real;
    v_totfatm:real;
    v_opri:boolean;
    v_fat:string;
    v_co:string;
    v_con:string;
    v_textoinf: textfile;
    v_fatant:string;
    v_coant:string;
    v_di:string;
    v_base_calc_ii,v_fator:real;
    q_Aliq_NCM_II :real;
    q_Valor_II_Devido:real;
    q_Valor_II_a_recolher :real;
    q_Aliq_NCM_IPI  :real;
    q_Base_Calc_IPI  :real;
    q_Valor_IPI_Devido  :real;
    q_Valor_IPI_a_recolher :real;
    qtipo: string;


begin

//showmessage('inicio atualizadi');
if (t_processostipo_declaracao.asstring = '') or (t_processostipo_declaracao.IsNull) then
begin
  ShowMessage('Por favor, informe o tipo de declaração para este processo, a atualização será abortada.');
  cancela_atualizacao:= True;
  Exit;
end;
   taxaconvn(f_prodidsi);
   t_processos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
   t_di.open;
if (sender = b_atualizasiscomexa) or (sender = b_atualizasiscomex)  then begin
    t_di.first;
    while not t_di.eof do begin
          if T_diNR_IDENT_USUARIO.asstring = t_processoscodigo.asstring then t_di.delete
          else t_di.Next;
    end;
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

    t_di.first;
    if ((not t_di.findkey([t_processosNR_DECL_IMP_MICRO.asstring])) or (t_processosNR_DECL_IMP_MICRO.asstring='')) then begin
       t_numerador.first;
       v_di := '00000'+inttostr(t_numeradorNR_PROV_DECLARACAO.asinteger)+'/'+copy(inttostr(t_numeradorNR_ANO_DECLARACAO.asinteger),3,2);
       v_di := copy(v_di,(length(v_di)-7),8);

       qtipo := inttostr(strtoint(t_processostipo_declaracao.asstring));

     {  if t_processostipo.asstring = 'LI' then begin
       if (t_processostipo_declaracao.asstring ='') or (t_processostipo_declaracao.IsNull) then begin
          qtipo :='12';
          showmessage(v_usuario+'Atenção! tipo de processo=LI o tipo de declaração foi transferido como 12 CONSUMO E ADMISSÃO TEMPORÁRIA!');
       end;
       end; }

       t_di.append;
       T_diNR_DECL_IMP_MICRO.asstring     := v_di;
       T_diNR_IDENT_USUARIO.asstring      := t_processoscodigo.asstring;
       T_diCD_TIPO_DECLARACAO.asstring    := qtipo;  ///inttostr(strtoint(t_processostipo_declaracao.asstring));
       t_importadores.first;
       t_importadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,t_processosImportador.asstring]);
       if t_importadorestipo_importador.asstring<>'' then T_diCD_TIPO_IMPORTADOR.asstring    := t_importadorestipo_importador.asstring;
       if T_importadoresCNPJ_CPF_COMPLETO.asstring<>'' then T_diNR_IMPORTADOR.asstring         := T_importadoresCNPJ_CPF_COMPLETO.asstring;
       if v_analise = false then T_diCD_TIPO_PGTO_TRIB.asstring     := '1';
       t_diNR_CONTA_PGTO_TRIB.asstring := t_contacorrente_regconta_corrente.asstring;

       t_di.post;

       t_numerador.edit;
       t_numeradorNR_PROV_DECLARACAO.asinteger :=(t_numeradorNR_PROV_DECLARACAO.asinteger+1);
       t_numerador.post;

       t_processos.edit;
       t_processosNR_DECL_IMP_MICRO.asstring     := v_di;
       t_processos.post;
       t_processos.edit;

    end{alterei para apagar a di e atualizar com novos dados}
    else begin

       v_di := t_processosNR_DECL_IMP_MICRO.asstring;
       if T_diNR_IDENT_USUARIO.asstring = t_processoscodigo.asstring then begin
          t_di.delete;
       end
       else begin
           t_numerador.first;
           v_di := '00000'+inttostr(t_numeradorNR_PROV_DECLARACAO.asinteger)+'/'+copy(inttostr(t_numeradorNR_ANO_DECLARACAO.asinteger),3,2);
           v_di := copy(v_di,(length(v_di)-7),8);
           while t_di.state = dsinsert do begin
           end;
           t_numerador.edit;
           t_numeradorNR_PROV_DECLARACAO.asinteger :=(t_numeradorNR_PROV_DECLARACAO.asinteger+1);
           t_numerador.post;

           t_processos.edit;
           t_processosNR_DECL_IMP_MICRO.asstring     := v_di;
           t_processos.post;
           t_processos.edit;

       end;

       t_di.append;
       T_diNR_DECL_IMP_MICRO.asstring     := v_di;
       T_diNR_IDENT_USUARIO.asstring      := t_processoscodigo.asstring;
       T_diCD_TIPO_DECLARACAO.asstring    := inttostr(strtoint(t_processostipo_declaracao.asstring));
       t_importadores.first;
       t_importadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,t_processosImportador.asstring]);
       if t_importadorestipo_importador.asstring<>'' then T_diCD_TIPO_IMPORTADOR.asstring    := t_importadorestipo_importador.asstring;
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
    T_diIN_OPERACAO_FUNDAP.asboolean   := (T_transpprocessoOperacao_FUNDAP.asinteger=1);
    if T_transpprocessoURF_chegada.asstring<>'' then T_diCD_URF_ENTR_CARGA.asstring     := T_transpprocessoURF_chegada.asstring;
    if T_transpprocessoURF_Despacho.asstring<>''then T_diCD_URF_DESPACHO.asstring       := T_transpprocessoURF_Despacho.asstring;
    {T_diCD_TIPO_CONSIG.asstring        := '1'; {1=cgc
    T_diNR_CONSIGNATARIO.asstring      := ' ';
    T_diNM_CONSIGNATARIO.asstring      := ' ';}
    if T_transpprocessoPais_Procedencia.asstring<>'' then T_diCD_PAIS_PROC_CARGA.asstring    := T_transpprocessoPais_Procedencia.asstring;
    if T_transpprocessoVia.asstring<>'' then T_diCD_VIA_TRANSP_CARG.asstring    := T_transpprocessoVia.asstring;
    if T_diCD_VIA_TRANSP_CARG.asstring ='A' then T_diCD_VIA_TRANSP_CARG.asstring    := '10';
    T_diIN_MULTIMODAL.asboolean        := (T_transpprocessoMultimodal.asinteger=1);
    if T_transpprocessoPLaca.asstring<>'' then T_diNR_VEICULO_TRANSP.asstring     := T_transpprocessoPLaca.asstring;
    if T_transpprocessoEmbarcacao.asstring<>'' then T_diNM_VEICULO_TRANSP.asstring     := T_transpprocessoEmbarcacao.asstring;
    t_transportadores.first;
    t_transportadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,T_transpprocessoTransportador.asstring]);
    if T_transportadoresRazao_Social.asstring<>'' then T_diNM_TRANSPORTADOR.asstring      := T_transportadoresRazao_Social.asstring;
    if T_transpprocessoBandeira.asstring <>'' then T_diCD_BANDEIRA_TRANSP.asstring    := T_transpprocessoBandeira.asstring;
    {T_diCD_TIPO_AG_CARGA.asstring      := '0';
    T_diNR_AGENTE_CARGA.asstring       := T_transpprocessoAgente.asstring+' ';}

    ///alterei mm 16062008
    if T_transpprocessocodigo_presenca_carga.asstring<>'' then begin
       T_diCD_TIPO_DCTO_CARGA.asstring    := '12'; ////HOUSE B/L
       T_diNR_DCTO_CARGA.asstring         := trim(copy(T_transpprocessocodigo_presenca_carga.asstring,1,18));
       if trim(copy(T_transpprocessocodigo_presenca_carga.asstring,19,20))<>'' then
          T_diNR_DCTO_CARGA_MAST.asstring    := trim(copy(T_transpprocessocodigo_presenca_carga.asstring,19,20));
    end
    else begin
       if T_transpprocessoTipodoccarga.asstring<>''then T_diCD_TIPO_DCTO_CARGA.asstring    := T_transpprocessoTipodoccarga.asstring;
       if T_transpprocessoNumerodoccarga.asstring<>'' then T_diNR_DCTO_CARGA.asstring      := T_transpprocessoNumerodoccarga.asstring;
       if T_transpprocessoNumeromaster.asstring<>'' then T_diNR_DCTO_CARGA_MAST.asstring    := T_transpprocessoNumeromaster.asstring;
    end;
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
    //Leonardo e Eduardo - 21/02/2013  lugar Certo porraaaaaaa!!!!!
    if T_transpprocessoMoeda_Seguro.asstring<>'' then T_diCD_MOEDA_SEGURO.asstring       := T_transpprocessoMoeda_Seguro.asstring;
    T_diVL_TOT_SEGURO_MNEG.asfloat     := T_transpprocessoValor_Seguro.asfloat;
    T_diVL_TOT_FRT_PREPAID.asfloat     := T_transpprocessoFrete_Prepaid.asfloat;
    T_diVL_TOT_FRT_COLLECT.asfloat     := T_transpprocessoFrete_Collect.asfloat;
    T_diVL_FRETE_TNAC_MNEG.asfloat     := T_transpprocessoFrete_Ter_Nac.asfloat;
    if rdgRefTaxaConversao.ItemIndex = 0 then
    begin
        if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then
           T_diVL_TOTAL_FRETE_MN.asfloat      := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*t_taxaconvtaxa_conversao.asfloat);
        if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then
           T_diVL_TOTAL_SEG_MN.asfloat        := (T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat);
    end
    else
    begin
        if T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then
           T_diVL_TOTAL_FRETE_MN.asfloat      := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*T_taxaconvDeAmanhataxa_conversao.asfloat);
        if T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then
           T_diVL_TOTAL_SEG_MN.asfloat        := (T_transpprocessoValor_Seguro.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
    end;

    //Leonardo e Eduardo - 21/02/2013  lugar errado!!!!!
  {  if T_transpprocessoMoeda_Seguro.asstring<>'' then T_diCD_MOEDA_SEGURO.asstring       := T_transpprocessoMoeda_Seguro.asstring;
    T_diVL_TOT_SEGURO_MNEG.asfloat     := T_transpprocessoValor_Seguro.asfloat; }


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

    while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do
    begin
          if v_moeda <> t_faturasmoeda.asstring then
          begin
             v_moeda      := '790'; {moeda real}
             v_moedaigual := false;
          end;
          if rdgRefTaxaConversao.ItemIndex = 0 then
                  t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring])
          else
                  T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
//           showmessage(t_faturascodigo.asstring);
          {somar vmle}
          t_itensfaturas.first;
          t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring]);
          while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascodigo.asstring) do
          begin
                v_totfatm := v_totfatm+t_itensfaturasvmle.AsFloat;
                if rdgRefTaxaConversao.ItemIndex = 0 then
                  v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*t_taxaconvtaxa_conversao.asfloat)
                else
                  v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*T_taxaconvDeAmanhataxa_conversao.asfloat);



                // Frente Incluso - Eduardo Souza - 26/03/2013
                if(T_faturasFrete_Incluso.AsInteger = 1 )then begin
                  v_totfatm := v_totfatm -
                  (T_transpprocessoFrete_Prepaid.AsFloat/T_faturasPeso_Total.AsFloat)*
                  T_itensfaturasQuantidade.asfloat;

                  v_totfat := v_totfat -
                  (((T_transpprocessoFrete_Prepaid.AsFloat/T_faturasPeso_Total.AsFloat)*
                  T_itensfaturasQuantidade.asfloat)* t_taxaconvtaxa_conversao.asfloat);
                end;




                t_itensfaturas.next;
          end;
          t_faturas.next;
    end;

//    showmessage('valor fob->'+floattostr(v_totfat));


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

///    T_diTX_INFO_COMPL.asstring         := '';
    if rdgRefTaxaConversao.ItemIndex = 0 then
            T_diTX_INFO_COMPL.asstring         := T_processosTX_INFO_COMPL.asstring;

    t_di.post;

   // t_di.close;
   // t_di.open;

    if t_processostipo_declaracao.asstring<>'12' then begin
       t_processos.edit;
       t_processosvalor_fob.asfloat  := t_divl_total_mle_mn.asfloat;
       t_processosvalor_cif.asfloat  := (t_processosvalor_fob.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
       t_processos.Post;
    end;


end
else begin  ////// somente processa

     vfret := 0;
     vsegu := 0;

    t_transpprocesso.first;
    if t_transpprocesso.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]) then
    begin
        if rdgRefTaxaConversao.ItemIndex = 0 then
        begin
            if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_transpprocessoMOEDA_FRETE.asstring]) then
               vfret  := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*t_taxaconvtaxa_conversao.asfloat);

            if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_transpprocessoMOEDA_SEGURO.asstring]) then
               vsegu  := (T_transpprocessoValor_Seguro.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
        end
        else
        begin
            if T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_transpprocessoMOEDA_FRETE.asstring]) then
               vfret  := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*T_taxaconvDeAmanhataxa_conversao.asfloat);

            if T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_transpprocessoMOEDA_SEGURO.asstring]) then
               vsegu  := (T_transpprocessoValor_Seguro.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
        end;
    end;
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
          if rdgRefTaxaConversao.ItemIndex = 0 then
                  t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring])
          else
                  T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
          {somar vmle}
          t_itensfaturas.first;
          t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring]);
          while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascodigo.asstring) do begin
                v_totfatm := v_totfatm+t_itensfaturasvmle.AsFloat;
                if rdgRefTaxaConversao.ItemIndex = 0 then
                        v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*t_taxaconvtaxa_conversao.asfloat)
                else
                        v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
                t_itensfaturas.next;
          end;
          t_faturas.next;
    end;

    if t_processostipo_declaracao.asstring<>'12' then begin
       t_processos.edit;
       t_processosvalor_fob.asfloat  := v_totfat; ///t_divl_total_mle_mn.asfloat;
       t_processosvalor_cif.asfloat  := (v_totfat+vfret+vsegu); ///(t_processosvalor_fob.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
       t_processos.Post;
    end;



end;


    {faz rateio por item de fatura}
    ///if messagedlg('Atualiza Rateio dos Itens da Faturas?',mtconfirmation,[mbno,mbyes],0)= mryes then
    rateio2(f_prodidsi);

      q_tributaup.Close;
      q_tributaup.Params[0].Asstring := v_empresa;
      q_tributaup.Params[1].asstring := v_filial;
      q_tributaup.Params[2].asstring := me_nossaref.text;
      q_tributaup.open;

      while (not q_tributaup.eof) do begin

          v_base_calc_ii := ((q_tributaupBase_Calc_II.asfloat/q_tributaupQuantidade_1.asfloat)*q_tributaupQuantidade.asfloat);
          //AQUI
          //SHOWMESSAGE(FLOATTOSTR(v_base_calc_ii));
          if (q_tributaupprazo_permanencia.asinteger>0) then begin
              v_fator := (strtofloat(q_tributaupprazo_permanencia.asstring)/100);
              v_base_calc_ii := v_base_calc_ii*v_fator;
          end;

          q_Aliq_NCM_II           := q_tributaupAliq_NCM_II.asfloat;
          q_Valor_II_Devido       := q_tributaupValor_II_Devido.asfloat;
          q_Valor_II_a_recolher   := q_tributaupValor_II_a_recolher.asfloat;
          q_Aliq_NCM_IPI          := q_tributaupAliq_NCM_IPI.asfloat;
          q_Base_Calc_IPI         := q_tributaupBase_Calc_IPI.asfloat;
          q_Valor_IPI_Devido      := q_tributaupValor_IPI_Devido.asfloat;
          q_Valor_IPI_a_recolher  := q_tributaupValor_IPI_a_recolher.asfloat;

          if ((q_tributaupRegime_Tributacao_II.asstring = '2') or
             (q_tributaupRegime_Tributacao_II.asstring = '6')) then
             q_Aliq_NCM_II := 0;

          if q_tributaupACORDO_ALADI.asstring <> '' then begin
             q_Valor_II_Devido      := (v_base_calc_ii*((q_Aliq_NCM_II-(q_Aliq_NCM_II*(q_tributaupALIQUOTA_ALADI.asfloat/100)))/100));
             q_Valor_II_a_recolher  := q_Valor_II_Devido;
          end
          else begin
             q_Valor_II_Devido      :=(v_base_calc_ii*(q_Aliq_NCM_II/100));
             q_Valor_II_a_recolher  := ((q_Valor_II_Devido-(q_valor_II_Devido*(q_tributaupPercentual_Reducao_II.asfloat/100))));
          end;

          {se isencao ou suspensao zera o arecolher}
          if ((q_tributaupRegime_Tributacao_II.asstring = '3') or
           (q_tributaupRegime_Tributacao_II.asstring = '5')) then
             q_Valor_II_a_recolher  := 0;

          if (q_tributaupRegime_Tributacao_IPI.asstring = '3') then q_Aliq_NCM_IPI := 0;

          if (q_tributaupRegime_Tributacao_II.asstring = '5') then
             q_Base_Calc_IPI        := (v_base_calc_ii+q_Valor_II_Devido)
          else q_Base_Calc_IPI      := (v_base_calc_ii+q_Valor_II_a_recolher);

          q_Valor_IPI_Devido     := (q_Base_Calc_IPI*(q_Aliq_NCM_IPI/100));
          q_Valor_IPI_Devido     := ((q_Valor_IPI_Devido-(q_Valor_IPI_Devido*(q_tributaupPercentual_Reduca_IPI.asfloat/100))));
          q_Valor_IPI_a_recolher := ((q_Valor_IPI_Devido-(q_Valor_IPI_Devido*(q_tributaupPercentual_Reduca_IPI.asfloat/100))));

          {se isencao ou suspensao zera o arecolher}
          if ((q_tributaupRegime_Tributacao_IPI.asstring = '1') or
             (q_tributaupRegime_Tributacao_IPI.asstring = '5')) then q_Valor_IPI_a_recolher := 0;
          if (q_tributaupRegime_Tributacao_IPI.asstring = '3') then begin
             q_valor_IPI_Devido      := 0;
             q_Valor_IPI_a_recolher  := 0;
          end;

          q_updatetributa.close;
          q_updatetributa.Params[0].asfloat := q_Aliq_NCM_II;
          q_updatetributa.Params[1].asfloat := q_Valor_II_Devido;
          q_updatetributa.Params[2].asfloat := q_Valor_II_a_recolher;
          q_updatetributa.Params[3].asfloat := q_Aliq_NCM_IPI;
          q_updatetributa.Params[4].asfloat := q_Base_Calc_IPI;
          q_updatetributa.Params[5].asfloat := q_Valor_IPI_Devido;
          q_updatetributa.Params[6].asfloat := q_Valor_IPI_a_recolher;
          q_updatetributa.Params[7].asstring  := q_tributaupprocesso.asstring;
          q_updatetributa.Params[8].asstring  := q_tributaupfatura.asstring;
          q_updatetributa.Params[9].asstring  := q_tributaupsequencial_item.asstring;
          q_updatetributa.Params[10].asstring  := q_tributaupsequencial.asstring;
          q_updatetributa.ExecSQL;

          q_tributaup.next;
      end;

    end;

    T_tributositem.close;
    T_tributositem.open;

//showmessage('final atualizadi');

end;

procedure Tf_prodidsi.taxaconvn(Sender: TObject);

var qmoeda:string;
    qtaxa:string;

begin
t_cambio.Open;
t_cambioAmanha.Open;
try
if (t_processosNR_DECLARACAO_IMP.asstring ='') or (t_processosNR_DECLARACAO_IMPC.asstring ='') then begin
   t_transpprocesso.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
   /// frete conhecimento
   qmoeda := t_transpprocessoMoeda_frete.asstring;    {Esta é a taxa do dia do SISCOMEX}
   if rdgRefTaxaConversao.ItemIndex = 0 then
   begin
       if t_cambio.findkey([qmoeda]) then begin
          qtaxa := t_cambiotaxa_conversao.asstring;
          taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
       end;
   end    
   else
   begin
       if T_cambioAmanha.findkey([qmoeda]) then begin
          qtaxa := T_cambioAmanhataxa_conversao.asstring;
          taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
       end;
   end;
   /// seguro conhecimento
   qmoeda := t_transpprocessoMoeda_seguro.asstring;
   if rdgRefTaxaConversao.ItemIndex = 0 then
   begin
       if t_cambio.findkey([qmoeda]) then
       begin
          qtaxa := t_cambiotaxa_conversao.asstring;
          taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
       end;
   end
   else
   begin
       if T_cambioAmanha.findkey([qmoeda]) then
       begin
          qtaxa := T_cambioAmanhataxa_conversao.asstring;
          taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
       end;
   end;
   /// despesas ate fob do conhecimento
   qmoeda := t_transpprocessoMoeda_despesas_ate_fob.asstring;
   if rdgRefTaxaConversao.ItemIndex =  0 then
   begin
       if t_cambio.findkey([qmoeda]) then
       begin
          qtaxa := t_cambiotaxa_conversao.asstring;
          taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
       end;
   end
   else
   begin
       if T_cambioAmanha.findkey([qmoeda]) then
       begin
          qtaxa := T_cambioAmanhataxa_conversao.asstring;
          taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
       end;
   end;
   /// faturas do processo
   t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
   while (( not t_faturas.eof) and (t_faturasempresa.asstring=q_processosempresa.asstring) and (t_faturasfilial.asstring=q_processosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
         qmoeda := t_faturasmoeda.asstring;
         if rdgRefTaxaConversao.ItemIndex = 0 then
         begin
             if t_cambio.findkey([qmoeda]) then begin
                qtaxa := t_cambiotaxa_conversao.asstring;
                taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
             end;
         end
         else
         begin
             if T_cambioAmanha.findkey([qmoeda]) then begin
                qtaxa := T_cambioAmanhataxa_conversao.asstring;
                taxaconv(q_processosempresa,q_processosfilial,me_nossaref.text,qmoeda,qtaxa);
             end;
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
//q_processos.close;
//q_processos.open;
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
    qmsg:string;

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

//showmessage('inicio rateio2');

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
       if (t_faturaspeso_libra.asinteger=1) then begin
          if t_faturasincoterm.asstring = 'EXW' then peso_exw := (peso_exw+(T_faturasPeso_Total_Acertado.asfloat*0.4536));
       end
       else begin
            if t_faturasincoterm.asstring = 'EXW' then peso_exw := (peso_exw+T_faturasPeso_Total_Acertado.asfloat);
       end;
       {v_valtot := (v_valtot+t_faturasvalortotal.asfloat);}
       if T_faturasCobertura_Cambial.asstring<>'4' then begin

          {///cambio diferente de antecipado
          ///if T_faturasstatus_cambio.asstring <> '3' then begin
          t_faturas.edit;
          if T_faturasPeriodicidade.asstring = '' then
             t_faturasdt_prev_pag_cambio.asdatetime   := t_transpprocessodata.asdatetime
          else
             t_faturasdt_prev_pag_cambio.asdatetime   := (t_transpprocessodata.asdatetime+strtoint(T_faturasPeriodicidade.asstring));

          if ((T_faturasModalidade_de_Pagamento.asstring = '10') or
              (T_faturasModalidade_de_Pagamento.asstring = '20') or
              (T_faturasModalidade_de_Pagamento.asstring = '21')) then begin
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

if peso_exw=0 then peso_exw:=1;

if T_transpprocessoValor_Despesas_ate_fob.asfloat = 0 then taxa_desp_fob := 0
else taxa_desp_fob  :=(T_transpprocessoValor_Despesas_ate_fob.asfloat/peso_exw);


t_itensfaturas.close;
t_itensfaturas.open;
t_itensfaturas.first;
t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
      processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
      ///t_itensfaturas.edit;
      t_faturas.first;
      if t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]) then begin
         if (t_faturaspeso_libra.Asinteger=1) then begin
            if t_faturasincoterm.asstring = 'EXW' then v_t_itensfaturasRateio_despesas_ate_fob := ((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_desp_fob)
            else v_t_itensfaturasRateio_despesas_ate_fob := 0;
         end
         else begin
            if t_faturasincoterm.asstring = 'EXW' then v_t_itensfaturasRateio_despesas_ate_fob := (t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_desp_fob)
            else v_t_itensfaturasRateio_despesas_ate_fob := 0;
         end;
      end;
      if rdgRefTaxaConversao.ItemIndex = 0 then
              t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring])
      else
              T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);

      if (t_faturaspeso_libra.asinteger=1) then
      begin
          if rdgRefTaxaConversao.ItemIndex = 0 then
          begin
              v_t_itensfaturasRateio_Frete_Prepaid    := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_frete_pre)*t_taxaconvtaxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_Collect    := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_frete_col)*t_taxaconvtaxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_ternac     := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_frete_ter)*t_taxaconvtaxa_conversao.asfloat);
          end
          else
          begin
              v_t_itensfaturasRateio_Frete_Prepaid    := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_frete_pre)*T_taxaconvDeAmanhataxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_Collect    := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_frete_col)*T_taxaconvDeAmanhataxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_ternac     := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_frete_ter)*T_taxaconvDeAmanhataxa_conversao.asfloat);
          end;
      end
      else
      begin
          if rdgRefTaxaConversao.ItemIndex = 0 then
          begin
              v_t_itensfaturasRateio_Frete_Prepaid    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_pre)*t_taxaconvtaxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_Collect    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_col)*t_taxaconvtaxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_ternac     := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_ter)*t_taxaconvtaxa_conversao.asfloat);
          end
          else
          begin
              v_t_itensfaturasRateio_Frete_Prepaid    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_pre)*T_taxaconvDeAmanhataxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_Collect    := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_col)*T_taxaconvDeAmanhataxa_conversao.asfloat);
              v_t_itensfaturasRateio_Frete_ternac     := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_frete_ter)*T_taxaconvDeAmanhataxa_conversao.asfloat);
          end;
      end;
      if rdgRefTaxaConversao.ItemIndex = 0 then
              t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_seguro.asstring])
      else
              T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_seguro.asstring]);

      {rateio despesas ate fob na moeda da fatura}
      if (t_faturasincoterm.asstring = 'EXW') and (T_transpprocessoMoeda_Despesas_ate_fob.asstring <> t_faturasmoeda.asstring) then
      begin
                if rdgRefTaxaConversao.ItemIndex = 0 then
                begin
                   t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Despesas_ate_fob.asstring]);
                   if (t_faturaspeso_libra.asinteger=1) then
                      v_t_itensfaturasRateio_Despesas_ate_FOB := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_desp_fob)*t_taxaconvtaxa_conversao.asfloat)
                   else
                      v_t_itensfaturasRateio_Despesas_ate_FOB := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_desp_fob)*t_taxaconvtaxa_conversao.asfloat);
                   t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
                   v_t_itensfaturasRateio_Despesas_ate_FOB := (v_t_itensfaturasRateio_Despesas_ate_FOB/t_taxaconvtaxa_conversao.asfloat);
                end
                else
                begin
                   T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Despesas_ate_fob.asstring]);
                   if (t_faturaspeso_libra.asinteger=1) then
                      v_t_itensfaturasRateio_Despesas_ate_FOB := (((t_itensfaturasPeso_Unitario_acertado.asfloat*0.4536)*taxa_desp_fob)*T_taxaconvDeAmanhataxa_conversao.asfloat)
                   else
                      v_t_itensfaturasRateio_Despesas_ate_FOB := ((t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_desp_fob)*T_taxaconvDeAmanhataxa_conversao.asfloat);
                   T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
                   v_t_itensfaturasRateio_Despesas_ate_FOB := (v_t_itensfaturasRateio_Despesas_ate_FOB/T_taxaconvDeAmanhataxa_conversao.asfloat);
                end;
      end;
      if rdgRefTaxaConversao.ItemIndex = 0 then
      begin
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
            T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);

            v_totfrete_pre :=(v_totfrete_pre+(v_t_itensfaturasRateio_Frete_Prepaid*t_itensfaturasquantidade.asfloat));
            v_totfrete_col :=(v_totfrete_col+(v_t_itensfaturasRateio_Frete_Collect*t_itensfaturasquantidade.asfloat));
            v_totfrete_ter :=(v_totfrete_ter+(v_t_itensfaturasRateio_Frete_ternac*t_itensfaturasquantidade.asfloat));

            v_t_itensfaturasRateio_Frete_Prepaid    := ((v_t_itensfaturasRateio_Frete_Prepaid)/T_taxaconvDeAmanhataxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_Collect    := ((v_t_itensfaturasRateio_Frete_Collect)/T_taxaconvDeAmanhataxa_conversao.asfloat);
            v_t_itensfaturasRateio_Frete_ternac     := ((v_t_itensfaturasRateio_Frete_ternac )/T_taxaconvDeAmanhataxa_conversao.asfloat);
      end;
      {Calcula valor aduaneiro conforme incoterms da fatura}
      t_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);

      if (T_faturasacrescimos_reducoes.asinteger = 0) then begin
        // v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalortotal.asfloat+
        //(t_itensfaturasRateio_acrescimos.asfloat        *t_itensfaturasquantidade.asfloat)-
        //(t_itensfaturasRateio_deducoes.asfloat         *t_itensfaturasquantidade.asfloat));
         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalor_total.asfloat+
        (t_itensfaturasRateio_Frete_fatura.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_seguro_fatura.asfloat*t_itensfaturasquantidade.asfloat)-
        (t_itensfaturasRateio_deducoes.asfloat         *t_itensfaturasquantidade.asfloat));

         v_t_itensfaturasvalor_mercadoria := t_itensfaturasvalor_total.asfloat;

         //v_t_itensfaturasVMLE             := v_t_itensfaturasvalor_mercadoria;
         v_t_itensfaturasVMLE             := (t_itensfaturasvalor_total.asfloat+
         (t_itensfaturasRateio_acrescimos.asfloat*t_itensfaturasquantidade.asfloat)-
         (t_itensfaturasRateio_deducoes.asfloat*t_itensfaturasquantidade.asfloat))-(t_itensfaturasrateio_frete_fatura.asfloat*t_itensfaturasquantidade.asfloat)-(t_itensfaturasrateio_seguro_fatura.asfloat*t_itensfaturasquantidade.asfloat);
          //VMLE = COM TODOS OS RATEIOS MENOS FRETE INTERNACIONAL ///MM 25062008
          //t_itensfaturasrateio_frete_fatura.asfloat;

          // Eduardo Souza - 22/03/20013 - Frente Incluso
          if(T_faturasFrete_Incluso.AsInteger = 1)then begin
            v_t_itensfaturasvalor_aduaneiro := (v_t_itensfaturasvalor_aduaneiro -
            (t_itensfaturasRateio_frete_fatura.asfloat * t_itensfaturasquantidade.asfloat));
          end;
          //---
      end
      else begin
        v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalor_total.asfloat;
        v_t_itensfaturasvalor_mercadoria := t_itensfaturasvalor_total.asfloat;
        v_t_itensfaturasVMLE             := (v_t_itensfaturasvalor_mercadoria-(t_itensfaturasRateio_Acrescimos.asfloat        *t_itensfaturasquantidade.asfloat));
      end;

      qmsg:='';
      qmsg:=qmsg+#13#10+'t_itensfaturasvalor_total.asfloat = '+floattostr(t_itensfaturasvalor_total.asfloat);
      qmsg:=qmsg+#13#10+'t_itensfaturasquantidade.asfloat = '+floattostr(t_itensfaturasquantidade.asfloat);
      qmsg:=qmsg+#13#10+'t_itensfaturasRateio_acrescimos.asfloat*t_itensfaturasquantidade.asfloat = '+floattostr(t_itensfaturasRateio_acrescimos.asfloat*t_itensfaturasquantidade.asfloat);
      qmsg:=qmsg+#13#10+'t_itensfaturasRateio_deducoes.asfloat*t_itensfaturasquantidade.asfloat = '+floattostr(t_itensfaturasRateio_deducoes.asfloat*t_itensfaturasquantidade.asfloat);
      qmsg:=qmsg+#13#10+'t_itensfaturasrateio_frete_fatura.asfloat*t_itensfaturasquantidade.asfloat = '+floattostr(t_itensfaturasrateio_frete_fatura.asfloat*t_itensfaturasquantidade.asfloat);
      qmsg:=qmsg+#13#10+'t_itensfaturasrateio_seguro_fatura.asfloat*t_itensfaturasquantidade.asfloat = '+floattostr(t_itensfaturasrateio_seguro_fatura.asfloat*t_itensfaturasquantidade.asfloat);

//       showmessage(qmsg);

         v_t_itensfaturasBase_Calc_II     := (v_t_itensfaturasVMLE+
        (t_itensfaturasRateio_Frete_prepaid.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_Frete_collect.asfloat*t_itensfaturasquantidade.asfloat)-
        (t_itensfaturasRateio_Frete_ternac.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_Seguro.asfloat       *t_itensfaturasquantidade.asfloat));


      if ((t_faturasincoterm.asstring = 'EXW') or
          (t_faturasincoterm.asstring = 'FOB') or
          (t_faturasincoterm.asstring = 'FCA') or
          (t_faturasincoterm.asstring = 'FAS'))then
          v_t_itensfaturasAcresc_reduc_Valaduan := (t_itensfaturasRateio_Acrescimos.asfloat * t_itensfaturasquantidade.asfloat);

      if ((t_faturasincoterm.asstring = 'DDU') or
          (t_faturasincoterm.asstring = 'DES') or
          (t_faturasincoterm.asstring = 'CIF') or
          (t_faturasincoterm.asstring = 'CIP') or
          (t_faturasincoterm.asstring = 'DAF')) then
          v_t_itensfaturasAcresc_reduc_Valaduan :=
          ((v_t_itensfaturasBase_Calc_II)-
           (v_t_itensfaturasvalor_aduaneiro));

      if ((t_faturasincoterm.asstring = 'CFR') or
          (t_faturasincoterm.asstring = 'CPT') or
          (t_faturasincoterm.asstring = 'DAP')) then
          v_t_itensfaturasAcresc_reduc_Valaduan := (v_t_itensfaturasVMLE-v_t_itensfaturasvalor_mercadoria);

///          (v_t_itensfaturasValor_Aduaneiro-v_t_itensfaturasBase_Calc_II);

      {calcula valor totaldo vmle em real para calculo do seguro}
      if rdgRefTaxaConversao.ItemIndex = 0 then
      begin
          t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
          v_valtot := (v_valtot+(v_t_itensfaturasvalor_mercadoria*t_taxaconvtaxa_conversao.asfloat));
      end
      else
      begin
          T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
          v_valtot := (v_valtot+(v_t_itensfaturasvalor_mercadoria*T_taxaconvDeAmanhataxa_conversao.asfloat));
      end;
      // Eduardo Souza - 26/03/2013 - frente internacional incluso
      if(T_faturasFrete_Incluso.AsInteger = 1)then begin
        v_t_itensfaturasRateio_Frete_Prepaid := 0;
        v_t_itensfaturasRateio_Frete_Collect := 0;
        v_t_itensfaturasRateio_Frete_ternac := 0;
      end;

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

//showmessage('mmmostra 1a->'+floattostr(v_totfrete_pre));

{gravando arredondamento de frete para o 1 item de fatura}
if rdgRefTaxaConversao.ItemIndex = 0 then
begin
    t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);
    ofretepre := (T_transpprocessoFrete_Prepaid.asfloat*t_taxaconvtaxa_conversao.asfloat);
    ofretecol := (T_transpprocessoFrete_Collect.asfloat*t_taxaconvtaxa_conversao.asfloat);
    ofreteter := (T_transpprocessoFrete_Ter_Nac.asfloat*t_taxaconvtaxa_conversao.asfloat);
end
else
begin
    T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);
    ofretepre := (T_transpprocessoFrete_Prepaid.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
    ofretecol := (T_transpprocessoFrete_Collect.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
    ofreteter := (T_transpprocessoFrete_Ter_Nac.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
end;
//showmessage('mmmostra 1bofretepre->'+floattostr(ofretepre));

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

   if rdgRefTaxaConversao.ItemIndex = 0 then
   begin
       t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
       q_taxa := floattostr(t_taxaconvtaxa_conversao.asfloat);
   end
   else
   begin
       T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
       q_taxa := floattostr(T_taxaconvDeAmanhataxa_conversao.asfloat);
   end;

   if (floattostr(ofretepre) <> floattostr(v_totfrete_pre)) then begin
      v_diferenca := strtofloat(floattostr(ofretepre)) - abs(strtofloat(floattostr(v_totfrete_pre)));
      v_t_itensfaturasRateio_Frete_Prepaid  := (t_itensfaturasRateio_Frete_Prepaid.asfloat+((v_diferenca/t_itensfaturasquantidade.AsFloat)/strtofloat(q_taxa)));
//showmessage('mmmostra 2->'+floattostr(v_t_itensfaturasRateio_Frete_Prepaid));
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

      ////alterei em 04/01/2005
      ////UPDATE ItensFaturas SET ItensFaturas.Rateio_frete_fatura = (([itensfaturas].[rateio_frete_prepaid]+[itensfaturas].[rateio_frete_collect])-[itensfaturas].[rateio_frete_ternac])
      ///WHERE (((ItensFaturas.Processo)=:qprocesso));

      {08/03/2013 - Estava duplicando valor Collect
      q_update2.close;
      q_update2.params[0].asstring  := me_nossaref.text;
      q_update2.execsql;
      }
      q_upacrescimos.close;
      q_upacrescimos.params[0].asstring  := me_nossaref.text;
      q_upacrescimos.execsql;

end;

if T_transpprocessoValor_Seguro.asfloat>0 then begin
{verificando se rateio seguro fatura se totalizacao = ao do conhecimento}
v_totseguro_fat := 0;
t_acrescimos.first;
t_acrescimos.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando rateio seguro fatura...',0,false);
while (not t_acrescimos.eof) and (T_acrescimosEmpresa.asstring = q_processosempresa.asstring) and (T_acrescimosFilial.asstring = q_processosfilial.asstring)and(T_acrescimosProcesso.asstring = me_nossaref.text) do begin
      processamento('Aguarde verificando rateio seguro fatura...',0,false);
      if copy(t_acrescimosCD_MET_ACRES_VALOR.asstring,1,2) = '14' then  begin
         ////calculando total seguro fatura em reais
         t_faturas.first;
         t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_acrescimosfatura.asstring]);
         if rdgRefTaxaConversao.ItemIndex = 0 then
         begin
             t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
             v_totseguro_fat  := (v_totseguro_fat+(t_acrescimosvl_acrescimo_moeda.asfloat*t_taxaconvtaxa_conversao.asfloat));
         end
         else
         begin
             T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
             v_totseguro_fat  := (v_totseguro_fat+(t_acrescimosvl_acrescimo_moeda.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat));
         end;
      end;
      t_acrescimos.next;
end;
///passando o total seguro fatura para a moeda do seguro do conhecimento
if v_totseguro_fat > 0 then begin
   if rdgRefTaxaConversao.ItemIndex = 0 then
   begin
       t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
       v_totseguro_fat  := (v_totseguro_fat/t_taxaconvtaxa_conversao.asfloat);
   end
   else
   begin
       T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
       v_totseguro_fat  := (v_totseguro_fat/T_taxaconvDeAmanhataxa_conversao.asfloat);
   end;
end;

processamento('Aguarde verificando rateio seguro fatura...',0,true);

{gravando rateio seguro por vmle}
taxa_seguro := 1;
if rdgRefTaxaConversao.ItemIndex = 0 then
begin
    if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
    taxa_seguro    :=((T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat)/v_valtot);
end
else
begin
    if T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
    taxa_seguro    :=((T_transpprocessoValor_Seguro.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat)/v_valtot);
end;

///showmessage('taxa seguro='+floattostr(taxa_seguro)+'  vmletotal= '+floattostr(v_valtot));
//t_itensfaturas.first;
// aqui 20/08

t_itensfaturas.close;
t_itensfaturas.open;
t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text]);
processamento('Aguarde rateio do seguro por vmle...',0,false);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
      //while t_itensfaturas.state = dsedit do begin
      //end;
///      t_itensfaturas.edit;
      processamento('Aguarde rateio do seguro por vmle...',0,false);
      t_faturas.first;
      t_faturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
      if rdgRefTaxaConversao.ItemIndex = 0 then
      begin
          t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
          {unitario em real}
          v_t_itensfaturasRateio_Seguro          := ((t_itensfaturasValor_mercadoria.asfloat/t_itensfaturasquantidade.asfloat)*t_taxaconvtaxa_conversao.asfloat);
      end
      else
      begin
          T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
          {unitario em real}
          v_t_itensfaturasRateio_Seguro          := ((t_itensfaturasValor_mercadoria.asfloat/t_itensfaturasquantidade.asfloat)*T_taxaconvDeAmanhataxa_conversao.asfloat);
      end;
      {unitario em real x a taxa de rateio}
      v_t_itensfaturasRateio_Seguro          := (v_t_itensfaturasRateio_Seguro*taxa_seguro);

      ///{valor convertido para real}
      ///t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]);
      ///v_t_itensfaturasRateio_Seguro         := (v_t_itensfaturasRateio_Seguro*t_taxaconvtaxa_conversao.asfloat);
      if rdgRefTaxaConversao.ItemIndex = 0 then
      begin
          {valor convertido para moeda da fatura}
          t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
          v_t_itensfaturasRateio_Seguro          := (v_t_itensfaturasRateio_Seguro/t_taxaconvtaxa_conversao.asfloat);
      end
      else
      begin
          {valor convertido para moeda da fatura}
          T_taxaconvDeAmanha .findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
          v_t_itensfaturasRateio_Seguro          := (v_t_itensfaturasRateio_Seguro/T_taxaconvDeAmanhataxa_conversao.asfloat);
      end;
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

      if (T_faturasacrescimos_reducoes.asinteger = 0) then begin

///         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalor_total.asfloat+
///         (t_itensfaturasRateio_acrescimos.asfloat        *t_itensfaturasquantidade.asfloat)-
///         (t_itensfaturasRateio_deducoes.asfloat         *t_itensfaturasquantidade.asfloat));

         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalor_total.asfloat+
        (t_itensfaturasRateio_Frete_fatura.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_seguro_fatura.asfloat*t_itensfaturasquantidade.asfloat)-
        (t_itensfaturasRateio_deducoes.asfloat         *t_itensfaturasquantidade.asfloat));

//         (t_itensfaturasRateio_frete_prepaid.asfloat        *t_itensfaturasquantidade.asfloat)+(t_itensfaturasRateio_seguro.asfloat        *t_itensfaturasquantidade.asfloat));

         v_t_itensfaturasvalor_mercadoria := t_itensfaturasvalor_total.asfloat;

//         v_t_itensfaturasVMLE             := v_t_itensfaturasvalor_mercadoria;
         v_t_itensfaturasVMLE             := (t_itensfaturasvalor_total.asfloat+
         (t_itensfaturasRateio_acrescimos.asfloat*t_itensfaturasquantidade.asfloat)-
         (t_itensfaturasRateio_deducoes.asfloat*t_itensfaturasquantidade.asfloat))-(t_itensfaturasrateio_frete_fatura.asfloat*t_itensfaturasquantidade.asfloat)-(t_itensfaturasrateio_seguro_fatura.asfloat*t_itensfaturasquantidade.asfloat);
///VMLE = COM TODOS OS RATEIOS MENOS FRETE INTERNACIONAL ///MM 25062008
//         t_itensfaturasrateio_frete_fatura.asfloat;

          // Eduardo Souza - 22/03/20013 - Frente Incluso
          if(T_faturasFrete_Incluso.AsInteger = 1)then
            v_t_itensfaturasvalor_aduaneiro := (v_t_itensfaturasvalor_aduaneiro -
            (t_itensfaturasRateio_frete_fatura.asfloat * t_itensfaturasquantidade.asfloat));
          //---
      end
      else begin
         v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalor_total.asfloat;
         v_t_itensfaturasvalor_mercadoria := t_itensfaturasvalor_total.asfloat;
         v_t_itensfaturasVMLE             := (v_t_itensfaturasvalor_mercadoria-(t_itensfaturasRateio_Acrescimos.asfloat*t_itensfaturasquantidade.asfloat));
      end;

         v_t_itensfaturasBase_Calc_II     := (v_t_itensfaturasVMLE+
        (t_itensfaturasRateio_Frete_prepaid.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_Frete_collect.asfloat*t_itensfaturasquantidade.asfloat)-
        (t_itensfaturasRateio_Frete_ternac.asfloat*t_itensfaturasquantidade.asfloat)+
        (t_itensfaturasRateio_Seguro.asfloat       *t_itensfaturasquantidade.asfloat));


      if ((t_faturasincoterm.asstring = 'EXW') or
          (t_faturasincoterm.asstring = 'FOB') or
          (t_faturasincoterm.asstring = 'FCA') or
          (t_faturasincoterm.asstring = 'FAS'))then
          v_t_itensfaturasAcresc_reduc_Valaduan := (t_itensfaturasRateio_Acrescimos.asfloat        *t_itensfaturasquantidade.asfloat);

      if ((t_faturasincoterm.asstring = 'DDU') or
          (t_faturasincoterm.asstring = 'DES') or
          (t_faturasincoterm.asstring = 'CIF') or
          (t_faturasincoterm.asstring = 'CIP') or
          (t_faturasincoterm.asstring = 'DAF')) then
          v_t_itensfaturasAcresc_reduc_Valaduan :=
          ((v_t_itensfaturasBase_Calc_II)-
           (v_t_itensfaturasvalor_aduaneiro));

      if ((t_faturasincoterm.asstring = 'CFR') or
          (t_faturasincoterm.asstring = 'DAP') or
          (t_faturasincoterm.asstring = 'CPT')) then
          v_t_itensfaturasAcresc_reduc_Valaduan := (v_t_itensfaturasVMLE-v_t_itensfaturasvalor_mercadoria);



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
///showmessage('Rateio efetuado com successo.');
//showmessage('final rateio2');
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
end;
end;

procedure TF_prodidsi.binfClick(Sender: TObject);
begin
//RateioAcrescimoICMS;
//RateioAcrescimoICMSNasAdicoes;
if t_processosTX_INFO_COMPL.asstring='' then b_processaclick(f_prodidsi);
pinf.visible := true;
b_processa.setfocus;
end;

procedure TF_prodidsi.b_gravaClick(Sender: TObject);

begin
     f_mscomex.MSPGP(me_nossaref.text);
if (v_AlteraPRO=1) then begin
t_processos.edit;
t_processos.post;
end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;
end;

procedure TF_prodidsi.b_processaClick(Sender: TObject);
var qtxt, sql_update:string;
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
    total_ii,total_ipi,total_pis,total_cofins, total_icms_acresc, total_icms:real;
    total_ii_s,total_ipi_s,total_pis_s,total_cofins_s, total_icms_acresc_s,total_icms_s, total_icms_base_acresc,total_icms_base,total_pis_cofins_base, valor_icms, valor_icms_acresc:real;
    qfor,qmod,qper,qind,qcor,qmot,asfat,ver_adicoes,q_suspe,q_suspe_II,q_suspe_IPI:string;
    qACORDO_ALADI: String;
    qNumero_Ato_Legal_ALADI: String;

   qembarque, qchegada, qmaster:string;
   qhouse,qcontainer,qlacre,qlacredta:string;
   qmanifesto,qrecinto,qpresenca,qdtchegada:string;
   qvolumes,qpesoliquido,qpesobruto:string;
   qfrete,qfornecedor,VDETALHE:string;
   qtxt_1, qtxt_2 : string;
   infocomp5 : Boolean;



begin

      t_processos.edit;
      t_processosTX_INFO_COMPL.asstring :='';
      t_processos.post;
      Memo_InfoComplementar.Lines.Clear;
      v_AlteraPRO := 1;

      //b_processaclick(f_prodidsi);

if (v_AlteraPRO=1) then begin

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
      if t_processostipo_declaracao.asstring='12' then begin
         if MessageDlg('Preenche Inf. Compl. somente com as adições de CONSUMO - RECOLHIMENTO INTEGRAL?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
            q_tributa := false;
      end;
    end;


    t_processos.edit;
    t_processosTX_INFO_COMPL.Clear;
    t_processos.post;

    qtxt := '';
  //showmessage('inicio processa');
        ////alterei para DSI
  vdetalhe := 'ADIÇÃO';

  IF (t_processostipo.asstring = '17') OR (t_processostipo.asstring = '5')  then
    vdetalhe := 'BEM...';

    t_processos.edit;

IF (t_processosTipo_Declaracao.asstring = '05') OR (t_processosTipo_Declaracao.asstring = '12')  then begin
        Memo_InfoComplementar.Lines.Add('|-----------------------------------------------------------|');
        Memo_InfoComplementar.Lines.Add('               TERMO DE RESPONSABILIDADE                    ');
        Memo_InfoComplementar.Lines.Add('Declaro assumir inteira responsabilidade pelo integral     ');
        Memo_InfoComplementar.Lines.Add('cumprimento das obrigacoes decorrentes da aplicacao do regime');
        Memo_InfoComplementar.Lines.Add('aduaneiro especial de admissao temporaria aos bens constantes');
        Memo_InfoComplementar.Lines.Add('da presente declaracao de importacao, comprometendo-me a');
        Memo_InfoComplementar.Lines.Add('recolher aos cofres publicos o valor total dos tributos e');
        Memo_InfoComplementar.Lines.Add('contribuicoes federais suspensas, em caso de descumprimento');
        Memo_InfoComplementar.Lines.Add('das regras estabelecidas para o regime. Este termo de');
        Memo_InfoComplementar.Lines.Add('responsabilidade, que esta subscrito pelo preposto/responsavel');
        Memo_InfoComplementar.Lines.Add('legal responsavel pelo registro desta declaracao de importacao,');
        Memo_InfoComplementar.Lines.Add('mediante mandato com clausula especifica para subscreve-lo, ');
        Memo_InfoComplementar.Lines.Add('valido enquanto nao extinto o regime aduaneiro especial e');
        Memo_InfoComplementar.Lines.Add('abrange o periodo de concessao inicial e todos os periodos de');
        Memo_InfoComplementar.Lines.Add('prorrogacao eventualmente obtidos.');
        Memo_InfoComplementar.Lines.Add('|-----------------------------------------------------------|');
end;


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
      qfor:= q_infocomp3Razao_Social.asstring;
      qmod:= q_infocomp3descricao.asstring;
      qper:= q_infocomp3periodicidade.asstring;
      qind:= q_infocomp3Indicador_Periodicidade.asstring;
      qcor:= q_infocomp3Cobertura_Cambial.asstring;
      qmot:= q_infocomp3desc_motscamb.asstring;
      asfat:='';
      qtfat:=0;
      qtdfor:= 1;
       while not Q_infocomp3.Eof do begin
             if ((qfor=q_infocomp3Razao_Social.asstring) and
                 (qmod=q_infocomp3descricao.asstring) and
                 (qper=q_infocomp3periodicidade.asstring) and
                 (qmot=q_infocomp3desc_motscamb.asstring)) then begin
                  if ((asfat<>'') and (qtfat>0)) then asfat := asfat+','+q_infocomp3codigo.asstring
                                                 else asfat := asfat+q_infocomp3codigo.asstring;
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

                  qfor:= q_infocomp3Razao_Social.asstring;
                  qmod:= q_infocomp3descricao.asstring;
                  qper:= q_infocomp3periodicidade.asstring;
                  qind:= q_infocomp3Indicador_Periodicidade.asstring;
                  qcor:= q_infocomp3Cobertura_Cambial.asstring;
                  qmot:= q_infocomp3desc_motscamb.asstring;
                  asfat:= q_infocomp3codigo.asstring;
                  qtfat:=1;

     ////             imprimiu := false ;

             end;

             Q_infocomp3.next;
       end;
       if ((not imprimiu) or (qtdfor>1)) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'|'+'Fornecedor   : '+q_infocomp3Razao_Social.asstring;
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

     if rdgRefTaxaConversao.ItemIndex = 0 then
     begin
        Q_infocomp5.Close;
        Q_infocomp5.Params[0].AsString := me_nossaref.text;
        Q_infocomp5.open;

        if Q_infocomp5.recordcount > 0 then
        begin
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
     end
     else
     begin
        Q_infocomp5a.Close;
        Q_infocomp5a.Params[0].AsString := me_nossaref.text;
        Q_infocomp5a.open;

        if Q_infocomp5a.recordcount > 0 then
        begin
           qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
           qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXAS DE CONVERSÃO:';
               qtxt := qtxt+chr(13)+chr(10)+'|';
           Q_infocomp5a.first;
           while not Q_infocomp5a.Eof do begin
                 qtxt := qtxt+chr(13)+chr(10)+'|'+q_infocomp5adescricao.asstring+':'+floattostrf(q_infocomp5ataxa_conversao.asfloat,fffixed,15,5);
                 Q_infocomp5a.next;
           end;
           qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
           qtxt := qtxt+chr(13)+chr(10)+'|';
        end;
     end;
    //   Local onde se encontra o valor da taxa do siscomex!!!!
    // Sandro Rassy 01/06/2011
    qtaxasis := 185;
    //if q_processostaxa_siscomex.asfloat >0 then
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(q_processostaxa_siscomex.asfloat,ffFixed,15,2))
    //else begin

        q_pagtributos.Close;
        q_pagtributos.Params[0].AsString := q_processosempresa.asstring;
        q_pagtributos.Params[1].AsString := q_processosfilial.asstring;
        q_pagtributos.Params[2].AsString := me_nossaref.text;
        q_pagtributos.open;

        while not q_pagtributos.eof do begin

            for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
                if ((i >= 1 )  and (i <= 2 ))  then  qtaxasis := qtaxasis+29.50;
                if ((i >= 3 )  and (i <= 5 ))  then  qtaxasis := qtaxasis+23.60;
                if ((i >= 6 )  and (i <= 10 )) then  qtaxasis := qtaxasis+17.70;
                if ((i >= 11)  and (i <= 20))  then  qtaxasis := qtaxasis+11.80;
                if ((i >= 21)  and (i <= 50))  then  qtaxasis := qtaxasis+5.90;
                if (i >= 51) then  qtaxasis := qtaxasis+2.95;
            end;

            q_pagtributos.next;

        end;

        qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(qtaxasis,ffFixed,15,2));

        sql_update := 'UPDATE Processos_registro_impostos SET Taxa_SISCOMEX = ' + StringReplace(trim(floattostrf(qtaxasis,ffFixed,15,2)),',','.',[rfReplaceAll, rfIgnoreCase]) + ' WHERE Processo = "' + me_nossaref.text + '" ';
        //if q_update_processo_taxasiscomex.Active = true then
        //        q_update_processo_taxasiscomex.Active := false;

        q_update_processo_taxasiscomex.sql.Clear;
        q_update_processo_taxasiscomex.sql.Add(sql_update);
        q_update_processo_taxasiscomex.ExecSQL;
        //q_update_processo_taxasiscomex.Active := true;

    //end;
///    else showmessage('Taxa Siscomex não informada no desembaraço!');

    if q_processostaxa_siscomexc.asfloat >0 then
       qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX Consumo: '+q_processostaxa_siscomexc.asstring;

     qtxt := qtxt+chr(13)+chr(10)+'|'   +'-----------------------------------------------------------------------------------------------------------------------------------------------';

    temato := false;

    Q_infocomp7.Close;
    Q_infocomp7.Params[0].AsString := me_nossaref.text;
    Q_infocomp7.open;
    if rdgRefTaxaConversao.ItemIndex = 0 then
    begin
            if Q_infocomp5.recordcount > 0 then
            begin
               qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
               qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTAÇÃO:';

               while not q_infocomp7.eof do
               begin

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

                   qadi:= '|'+VDETALHE+': ';
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
    end
    else
    begin
            if q_infocomp5a.recordcount > 0 then
            begin
               qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
               qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTAÇÃO:';

               while not q_infocomp7.eof do
               begin

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

                   qadi:= '|'+VDETALHE+': ';
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
          qtxt := qtxt+chr(13)+chr(10)+'|'+'DA COFINS, PARA ADIÇÕES:';
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
    if q_propis.recordcount>0 then begin
       total_ii    := 0;
       total_ipi   := 0;
       total_pis    := 0;
       total_cofins := 0;
       total_icms   := 0;
       total_icms_acresc := 0;

       total_ii_s    := 0;
       total_ipi_s   := 0;
       total_pis_s    := 0;
       total_cofins_s := 0;
       total_icms_s   := 0;
       total_icms_acresc_s := 0;
       total_icms_base := 0;
//       total_icms_base_acresc := 0;

       total_pis_cofins_base := 0;
       q_propis.first;
       qtxt_1 := qtxt_1+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'PIS/PASEP E COFINS RECOLHIDOS CONFORME MP164/04:';
       qtxt_1 := qtxt_1+chr(13)+chr(10)+'|'+'As contribuições de PIS-PASEP E COFINS recolhidas de acordo com';
       qtxt_1 := qtxt_1+chr(13)+chr(10)+'|'+'o Art. 8º da Lei 10.865 de 30/04/2004.';
       qtxt_1 := qtxt_1+chr(13)+chr(10)+'|';
       qteste := 0;

       while not q_propis.eof do begin
             qteste := qteste+1;
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'|';
             q_suspe := '';
             q_suspe_II := '';
             q_suspe_IPI := '';
             if q_tributa then begin
             if q_piscofinstrib.Locate('Adicao',q_propisadicao.asstring,[loCaseInsensitive]) then begin
                {Ticket 4186 - Incluído para Acréscimo do ICMS - Leandro Serra 12/03/213 }
   //               RateioAcrescimoICMS;

   {             qAdicao.Close;
                qAdicao.ParamByName('pProcesso').asString := ME_nossaref.Text;
                qAdicao.ParamByName('pAdicao').asString := q_propisadicao.asstring;
                qAdicao.Open;}
                {Fim 4186}
                if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe_II := 'II';
                if q_piscofinstribRegime_Tributacao_IPI.asstring='5' then q_suspe_IPI := 'IPI';

                /// verificando se é SUSPENSÃO
                /// leandro dia 21/09/2006, solicitado por Jorge
                if (q_suspe_II<>'') or (q_suspe_IPI<>'') then
                   q_suspe :=' -> ( SUSPENSÃO '
                else begin
                   /// verificando se é ISENÇÃO
                   /// leandro dia 21/09/2006, solicitado por Jorge
                   if q_piscofinstribRegime_Tributacao_II.asstring='3' then q_suspe_II := 'II';
                   if q_piscofinstribRegime_Tributacao_IPI.asstring='3' then q_suspe_IPI := 'IPI';
                   if (q_suspe_II<>'') or (q_suspe_IPI<>'') then q_suspe :=' -> ( ISENÇÃO ';
                end;

                //// mm 26022009

                if (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='5') or
                   (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='2') or
                   (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='6') then begin
                   total_pis_s := total_pis_s+q_propisvalor_pis_pasep.asfloat;
                   total_cofins_s := total_cofins_s+q_propisvalor_cofins.asfloat;

                end
                else begin
                   total_pis := total_pis+q_propisvalor_pis_pasep.asfloat;
                   total_cofins := total_cofins+q_propisvalor_cofins.asfloat;
                end;
                {Ticket 4186}
                valor_icms := (q_propisBASEC_ICMS.asfloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100);
//                valor_icms_acresc := (qAdicaorateio_acresc_ICMS.asFloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100);
                if q_piscofinstribtratamento_tributario.asstring = '' then
                begin
                //  total_icms := total_icms+q_propisvalor_icms.asfloat
                  total_icms := total_icms+valor_icms;
                  total_icms_acresc := total_icms_acresc + valor_icms_acresc;
                end
                else
                begin
                //  total_icms_s := total_icms_s+q_propisvalor_icms.asfloat;
                  total_icms_s := total_icms_s+valor_icms;
                  total_icms_acresc_s := total_icms_acresc_s + valor_icms_acresc;
                end;
                {Fim 4186}
                {Inicio - eduardo.souza 02/06/2011}
                {Ticket 4186}
//                total_icms_base := total_icms_base + (q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat);
                total_icms_base := total_icms_base + (q_propisBASEC_ICMS.asfloat);
         //       total_icms_base_acresc := total_icms_base_acresc + (qAdicaorateio_acresc_ICMS.asFloat);
                {Fim 4186}

                {Fim}

                {Inicio - eduardo.souza 01/03/2012}
                total_pis_cofins_base := total_pis_cofins_base + q_propisBASEC_PISCOFINS.asfloat;
                {Fim}

             end;
             end;
             if (q_suspe_II<>'') or (q_suspe_IPI<>'') then begin
                /// tratamento passou a ser feito logo acima
                ///q_suspe :=' -> ( SUSPENSÃO ';
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
             if (q_propisprazo_permanencia.asinteger>0) then begin
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| '+VDETALHE+'..............: '+q_propisadicao.asstring+ ' -> (PROPORCIONAL)'+q_suspe;
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| NCM.................: '+q_propisNCM.asstring;
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(q_propisva.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisva_proporcional.asfloat,fffixed,10,2) +' )';
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(q_propisaliq_ncm_II.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisaliq_ncm_II_proporcional.asfloat,fffixed,10,2) +' )';
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(q_propisaliq_ncm_ipi.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisaliq_ncm_IPI_proporcional.asfloat,fffixed,10,2) +' )';
             end
             else begin
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| '+VDETALHE+'..............: '+q_propisadicao.asstring+q_suspe;
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| NCM.................: '+q_propisNCM.asstring;
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(q_propisva.asfloat,fffixed,10,2);
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(q_propisaliq_ncm_II.asfloat,fffixed,10,2);
                qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(q_propisaliq_ncm_ipi.asfloat,fffixed,10,2);
             end;
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota ICMS.......: '+floattostrf((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat),fffixed,10,2);
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota PIS/PASEP..: '+floattostrf(q_propisaliq_pis_pasep.asfloat,fffixed,10,2);
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota COFINS.....: '+floattostrf(q_propisaliq_cofins.asfloat,fffixed,10,2);

             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor II ...........: '+floattostrf(q_propisvalor_ii.asfloat,fffixed,10,2);
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor IPI ..........: '+floattostrf(q_propisvalor_ipi.asfloat,fffixed,10,2);

//             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor ICMS .........: '+floattostrf(q_propisvalor_icms.asfloat,fffixed,10,2);
             {Ticket 4186}
//             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor ICMS .........: '+floattostrf((q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100),fffixed,10,2);
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor ICMS .........: '+floattostrf((q_propisBASEC_ICMS.asfloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100),fffixed,10,2);
 {            if qAdicaorateio_acresc_ICMS.asFloat <> 0 then
                     qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Acréscimo ICMS .........: '+floattostrf((qAdicaorateio_acresc_ICMS.asFloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100),fffixed,10,2);
             {Fim 4186}
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor PIS/PASEP.....: '+floattostrf(q_propisvalor_pis_pasep.asfloat,fffixed,10,2);
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor COFINS........: '+floattostrf(q_propisvalor_cofins.asfloat,fffixed,10,2);

             {Inicio eduardo.souza 02/06/2011}
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor BASE ICMS.....: '+floattostrf(q_propisBASEC_ICMS.asfloat,fffixed,10,2);
             { Ticket 4186 - Incluído somente na complementar não vai para o SISCOMEX}
//               qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor BASE ICMS.....: '+floattostrf((q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat),fffixed,10,2);
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor BASE ICMS.....: '+floattostrf((q_propisBASEC_ICMS.asfloat),fffixed,10,2);
 {            if qAdicaorateio_acresc_ICMS.asFloat <> 0 then
                     qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Acréscimo BASE ICMS.....: '+floattostrf((qAdicaorateio_acresc_ICMS.asFloat),fffixed,10,2);
             {Fim 4186}
             {Fim eduardo.souza 02/06/2011}

             {Inicio eduardo.souza 01/03/2012}
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor BASE PIS/PASEP: '+floattostrf(q_propisBASEC_PISCOFINS.asfloat,fffixed,10,2);
             qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor BASE COFINS...: '+floattostrf(q_propisBASEC_PISCOFINS.asfloat,fffixed,10,2);
             {Fim eduardo.souza 01/03/2012}

             if (q_suspe_II='') then total_ii := total_ii+q_propisvalor_ii.asfloat
             else total_ii_s := total_ii_s+q_propisvalor_ii.asfloat;

             if (q_suspe_IPI='') then total_ipi := total_ipi+q_propisvalor_ipi.asfloat
             else total_ipi_s := total_ipi_s+q_propisvalor_ipi.asfloat;

             q_propis.next;
       end;

       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       if (total_ii>0) then  qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total II ...........: '+floattostrf(total_ii,fffixed,10,2);
       if (total_ipi>0) then qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total IPI ..........: '+floattostrf(total_ipi,fffixed,10,2);
       {inicio - eduardo.souza 02/06/2011}
       if (total_icms_base>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total BASE ICMS.....: '+floattostrf(total_icms_base,fffixed,10,2);
     {     if total_icms_base_acresc <> 0 then
                qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total Acréscimo BASE ICMS.....: '+floattostrf(total_icms_base_acresc,fffixed,10,2);
       {fim}

       {inicio - eduardo.souza 01/03/2012}
       if (total_pis_cofins_base >0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total BASE PIS/PASEP: '+floattostrf(total_pis_cofins_base,fffixed,10,2);
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total BASE COFINS...: '+floattostrf(total_pis_cofins_base,fffixed,10,2);
       {fim}

              if (total_icms>0) or (total_pis>0) or (total_cofins>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       if (total_icms>0) then
       begin
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total ICMS (A RECOLHER)...: '+floattostrf(total_icms,fffixed,10,2);
          if total_icms_acresc_s <> 0 then
                  qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Acréscimo ICMS (A RECOLHER)........: '+floattostrf(vTotalAcrescimoICMS,fffixed,10,2);
       end;
       if (total_pis>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total PIS/PASEP.....: '+floattostrf(total_pis,fffixed,10,2);
       if (total_cofins>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total COFINS........: '+floattostrf(total_cofins,fffixed,10,2);


       if (total_icms>0) or (total_pis>0) or (total_cofins>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';

       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       if (total_ii_s>0)  then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total II (SUSPENSO)..........: '+floattostrf(total_ii_s,fffixed,10,2);
       if (total_ipi_s>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total IPI (SUSPENSO).........: '+floattostrf(total_ipi_s,fffixed,10,2);

       if (total_icms_s>0) or (total_pis_s>0) or (total_cofins_s>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';

     if (total_icms_s>0) then
     begin
        {Leandro Serra - 05/09/2011}
        if q_processosBASE_ICMS.AsInteger = 1 then
        begin
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total ICMS (A RECOLHER)........: '+floattostrf(total_icms_s,fffixed,10,2);
          if total_icms_acresc_s <> 0 then
                  qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Acréscimo ICMS (A RECOLHER)........: '+floattostrf(vTotalAcrescimoICMS,fffixed,10,2);
        end
        else
        begin
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total ICMS (SUSPENSO)........: '+floattostrf(total_icms_s,fffixed,10,2);
          if total_icms_acresc_s <> 0 then
                  qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Acréscimo ICMS (SUSPENSO)........: '+floattostrf(vTotalAcrescimoICMS,fffixed,10,2);
        end;
        {Fim 05/09/2011}
     end;     

     if (total_pis_s>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total PIS/PASEP (SUSPENSO)...: '+floattostrf(total_pis_s,fffixed,10,2);

     if (total_cofins_s>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total COFINS (SUSPENSO)......: '+floattostrf(total_cofins_s,fffixed,10,2);

     {inicio - eduardo.souza 02/06/2011}
     //if (total_icms_base>0) then
     //   qtxt := qtxt+chr(13)+chr(10)+'| Valor Total BASE ICMS.....: '+floattostrf(total_icms_base,fffixed,10,2);
     {fim}

     if (total_icms_s>0) or (total_pis_s>0) or (total_cofins_s>0) then
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';


{       if (total_icms>0) or (total_pis>0) or (total_cofins>0) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total ICMS devido...: '+floattostrf(total_icms,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total PIS/PASEP.....: '+floattostrf(total_pis,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total COFINS........: '+floattostrf(total_cofins,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'|';
       end;

       qtxt := qtxt+chr(13)+chr(10)+'|';
       if (total_ii_s>0)  then
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total II (SUSPENSO)..........: '+floattostrf(total_ii_s,fffixed,10,2);
       if (total_ipi_s>0) then
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total IPI (SUSPENSO).........: '+floattostrf(total_ipi_s,fffixed,10,2);

       if (total_icms_s>0) or (total_pis_s>0) or (total_cofins_s>0) then begin
          qtxt := qtxt+chr(13)+chr(10)+'|';
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total ICMS (SUSPENSO)........: '+floattostrf(total_icms_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total PIS/PASEP (SUSPENSO)...: '+floattostrf(total_pis_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'| Valor Total COFINS (SUSPENSO)......: '+floattostrf(total_cofins_s,fffixed,10,2);
          qtxt := qtxt+chr(13)+chr(10)+'|';
       end;}

       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';

    end;

//    end;

    if ((q_processosfilial.asstring = 'CWB') and (temato))then begin
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'SOLICITAMOS O DESEMBARACO ADUANEIRO DAS MERCADORIAS';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONSTANTES NESTA DI COM SUSPENSAO DO PAGAMENTO DOS';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'TRIBUTOS DE ACORDO COM O DECRETO 4543 de 27/12/2002, ARTIGO 335,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'AMPARADO PELO REGIME ESPECIAL DE DRAWBACK,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'COM BASE NA PORTARIA M.F. 594 DE 25/08/92.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'ASSUMO INTEIRA RESPONSABILIDADE PELO INTEGRAL CUMPRIMENTO';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'DAS OBRIGACOES CONSTANTES DO ATO CONCESSORIO SUPRACITADO,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'NOS COMPROMETENDO, AINDA, A RECOLHER AOS COFRES PUBLICOS,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'NO PRAZO REGULAMENTAR, O VALOR DOS TRIBUTOS SUSPENSOS';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONSTANTES NOS ANEXOS CITADOS DESTA D.I. E INCLUSIVE JUROS,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CORRECAO MONETARIA E DEMAIS ENCARGOS CASO NAO SEJAM';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CUMPRIDAS TODAS AS EXIGENCIAS LEGAIS.';
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA LTDA.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
     end;

     qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';

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



     qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'-----------------------------------------------------------------------------------------------------------------------------------------------';
     qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'Transportadora';
     qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'-----------------------------------------------------------------------------------------------------------------------------------------------';
     qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA LTDA.';
     qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'Representantes Legais autorizados a intervir na DI:';

     t_pro.open;
     while not t_pro.eof do begin
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+copy('Nome: '+t_proRazao_Social.asstring+'                                   ',1,50);
          qtxt_2 := qtxt_2+copy(' CPF: '+t_proCGC_CPF.asstring+'                           ',1,25)+' - Reg.Desp: '+t_proregistro.asstring;
          t_pro.next;
     end;
     t_pro.close;

     t_aju.open;
     while not t_aju.eof do begin
          if (t_ajuexibe_complementares.asinteger=1) then begin
          qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+copy('Nome: '+t_ajuRazao_Social.asstring+'                                              ',1,50);
          qtxt_2 := qtxt_2+copy(' CPF: '+t_ajuCGC_CPF.asstring+'                        ',1,25)+' - Reg.Desp: '+t_ajuregistro.asstring;
          end;
          t_aju.next;
     end;
    t_aju.close;

    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'-----------------------------------------------------------------------------------------------------------------------------------------------';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+copy('Referência Faurecia: '+T_processoscodigo_Cliente.asstring+'                                    ',1,35);
    qtxt_2 := qtxt_2+' Responsável: '+T_processosResponsavel_Importador.asstring;
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+copy('Referência Despachante: '+me_nossaref.text+'                                     ',1,35);
    qtxt_2 := qtxt_2+' Responsável: '+T_processosResponsavel_Empresa.asstring;

    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'Observações gerais: ';

    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+q_processosqfilial.asstring+', '+FormatDateTime('dd " de " mmmm " de " yyyy', date());
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+q_processoscliente.asstring;






///////final complementares da faurecia 27/06/2006
end
else begin

//showmessage('inicio processa info1');
    Q_infocomp1.Close;
    Q_infocomp1.Params[0].AsString := me_nossaref.text;
    Q_infocomp1.open;

    if Q_infocomp1.recordcount > 0 then begin

///    qtxt := qtxt+chr(13)+chr(10)+'         1         2         3         4         5         6     ';
///    qtxt := qtxt+chr(13)+chr(10)+'123456789/123456789/123456789/123456879/123456879/123456879/12345';

    //qtxt := qtxt+chr(13)+chr(10)+'|';
    Memo_InfoComplementar.Lines.Add('|');
    //qtxt := qtxt+chr(13)+chr(10)+'|'+'CARGA TRANSFERIDA DO '+q_infocomp1qurf.asstring+' PARA '+q_infocomp1qrecalfa.asstring;
    Memo_InfoComplementar.Lines.Add('|'+'CARGA TRANSFERIDA DO '+q_infocomp1qurf.asstring+' PARA '+q_infocomp1qrecalfa.asstring);

    if Q_infocomp1qtipomanifesto.asstring <> '' then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+Q_infocomp1qtipomanifesto.asstring+' Nº: '+Q_infocomp1numeromanifesto.asstring;
       Memo_InfoComplementar.Lines.Add('|'+Q_infocomp1qtipomanifesto.asstring+' Nº: '+Q_infocomp1numeromanifesto.asstring);
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;

    ////MM - ALTEREI EM 01/07/2004 - CRT
    if Q_infocomp1qtipodoccarga.asstring <>'' then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+Q_infocomp1qtipodoccarga.asstring+' Nº: '+Q_infocomp1numerodoccarga.asstring;
       Memo_InfoComplementar.Lines.Add('|'+Q_infocomp1qtipodoccarga.asstring+' Nº: '+Q_infocomp1numerodoccarga.asstring);
       if Q_infocomp1numeromaster.asstring <>'' then begin
          //qtxt := qtxt+chr(13)+chr(10)+'|'+' MASTER: '+Q_infocomp1numeromaster.asstring;
          Memo_InfoComplementar.Lines.Add('|'+' MASTER: '+Q_infocomp1numeromaster.asstring);
       end;
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end
    else begin
         if Q_infocomp1via.asstring = '7' then begin
            //qtxt := qtxt+chr(13)+chr(10)+'|CRT Nº: '+Q_infocomp1numerodoccarga.asstring;
            Memo_InfoComplementar.Lines.Add('|CRT Nº: '+Q_infocomp1numerodoccarga.asstring);
         end else begin
            //qtxt := qtxt+chr(13)+chr(10)+'|DOC CARGA Nº: '+Q_infocomp1numerodoccarga.asstring;
            Memo_InfoComplementar.Lines.Add('|DOC CARGA Nº: '+Q_infocomp1numerodoccarga.asstring);
         end;

         if Q_infocomp1numeromaster.asstring <>'' then begin
            //qtxt := qtxt+chr(13)+chr(10)+'|'+' MASTER: '+Q_infocomp1numeromaster.asstring;
            Memo_InfoComplementar.Lines.Add('|'+' MASTER: '+Q_infocomp1numeromaster.asstring);
         end;
         //qtxt := qtxt+chr(13)+chr(10)+'|';
         Memo_InfoComplementar.Lines.Add('|');

    end;
    
    if Q_infocomp1embarcacao.asstring <>'' then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'EMBARCAÇÃO / Nº DO VÔO: '+Q_infocomp1embarcacao.asstring;
       Memo_InfoComplementar.Lines.Add('|'+'EMBARCAÇÃO / Nº DO VÔO: '+Q_infocomp1embarcacao.asstring);
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;

    if q_infocomp1data_chegada_urf_cheg.asstring <>'  /  /    ' then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'DATA DE CHEGADA NA URF DE ENTRADA: '+datetostr(Q_infocomp1data_chegada_urf_cheg.asdatetime);
       Memo_InfoComplementar.Lines.Add('|'+'DATA DE CHEGADA NA URF DE ENTRADA: '+datetostr(Q_infocomp1data_chegada_urf_cheg.asdatetime));
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;

    if q_infocomp1data_chegada_urf_desp.asstring <>'  /  /    ' then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'DATA DE CHEGADA NA URF DE DESPACHO: '+datetostr(Q_infocomp1data_chegada_urf_desp.asdatetime);
       Memo_InfoComplementar.Lines.Add('|'+'DATA DE CHEGADA NA URF DE DESPACHO: '+datetostr(Q_infocomp1data_chegada_urf_desp.asdatetime));
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;

    if q_infocomp1codigo_presenca_carga.asstring <>'' then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'PRESENÇA DE CARGA: '+q_infocomp1codigo_presenca_carga.asstring;
       Memo_InfoComplementar.Lines.Add('|'+'PRESENÇA DE CARGA: '+q_infocomp1codigo_presenca_carga.asstring);
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;

    end;
    {
    q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
    q_update_infcomp.Params[1].AsString := qtxt;
    q_update_infcomp.ExecSQL;
    qtxt:='';
    }
    Q_infocomp2.Close;
    Q_infocomp2.Params[0].AsString := me_nossaref.text;
    Q_infocomp2.open;

//showmessage('inicio processa info2');

    if Q_infocomp2.recordcount > 0 then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'IDENTIFICAÇÃO DA CARGA:';
       Memo_InfoComplementar.Lines.Add('|'+'IDENTIFICAÇÃO DA CARGA:');
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       Q_infocomp2.first;
       while not Q_infocomp2.Eof do begin
            //qtxt := qtxt+chr(13)+chr(10)+'|'+'Nº: '+q_infocomp2codigo.asstring+' - '+q_infocomp2descricao.asstring;
            Memo_InfoComplementar.Lines.Add('|'+'Nº: '+q_infocomp2codigo.asstring+' - '+q_infocomp2descricao.asstring);
            Q_infocomp2.next;
       end;
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;
    {
    q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
    q_update_infcomp.Params[1].AsString := qtxt;
    q_update_infcomp.ExecSQL;
    qtxt:='';
    }
    Q_infocomp3.Close;
    Q_infocomp3.Params[0].AsString := me_nossaref.text;
    Q_infocomp3.open;

    qTR.Close;
  {  qTR.sql.clear;
    qTR.SQL.Add('select Termo from Termos_De_Responsabilidade where Importador =:pImportador and Contrato =:pContrato and Local =:pLocal');}
    qTR.ParamByName('pImportador').AsString := t_processosImportador.AsString;
    qTR.ParamByName('pContrato').AsString := t_processosContrato.AsString;
    qTR.ParamByName('pLocal').AsString := t_processosLocal_Inventario.asString;
    qTR.open;

//showmessage('inicio processa info3');


    {TICKET 4257 - LEANDRO SERRA}
    if (t_processosImportador.AsString = '252') or (t_processosImportador.AsString = '265') then
    begin
        if not qTR.Eof then
                Memo_InfoComplementar.Lines.Add('|'+qTRTermo.asString);
        Memo_InfoComplementar.Lines.Add('|'+'N° RCR: RCR['+t_processosNumero_RCR.asString+']RCR');
        Memo_InfoComplementar.Lines.Add('|'+'N° Contrato: CONTRATO['+t_processosContrato.AsString+']CONTRATO');
    end;
    qTR.Close;


    if Q_infocomp3.recordcount > 0 then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'RELAÇÃO DE FATURAS:';
       Memo_InfoComplementar.Lines.Add('|'+'RELAÇÃO DE FATURAS:');
       Q_infocomp3.first;
       qfor:= q_infocomp3Razao_Social.asstring;
       qmod:= q_infocomp3descricao.asstring;
       qper:= q_infocomp3periodicidade.asstring;
       qind:= q_infocomp3Indicador_Periodicidade.asstring;
       qcor:= q_infocomp3Cobertura_Cambial.asstring;
       qmot:= q_infocomp3desc_motscamb.asstring;
       asfat:='';
       qtfat:=0;
       qtdfor:= 1;
       while not Q_infocomp3.Eof do begin
             if ((qfor=q_infocomp3Razao_Social.asstring) and
                 (qmod=q_infocomp3descricao.asstring) and
                 (qper=q_infocomp3periodicidade.asstring) and
                 (qmot=q_infocomp3desc_motscamb.asstring)) then begin
                  if ((asfat<>'') and (qtfat>0)) then asfat := asfat+','+q_infocomp3codigo.asstring
                                                 else asfat := asfat+q_infocomp3codigo.asstring;
                  qtfat:=qtfat+1;
                  if qtfat=3 then begin
                     qtfat:=0;
                     asfat:=asfat+chr(13)+chr(10)+'|'+'               ';
                  end;
                  imprimiu := false;

             end
             else begin
                  qtdfor := qtdfor+1;
                  //qtxt := qtxt+chr(13)+chr(10)+'|';
                  Memo_InfoComplementar.Lines.Add('|');
                  //qtxt := qtxt+chr(13)+chr(10)+'|'+'Fatura(s)    : '+asfat;
                  Memo_InfoComplementar.Lines.Add('|'+'Fatura(s)    : '+asfat);
                  //qtxt := qtxt+chr(13)+chr(10)+'|'+'Fornecedor   : '+qfor;
                  Memo_InfoComplementar.Lines.Add('|'+'Fornecedor   : '+qfor);
                  if qmod <>'' then begin
                     //qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: '+qmod;
                     Memo_InfoComplementar.Lines.Add('|'+'Modalidade.PG: '+qmod);
                  end;
                  if qper<>'' then begin
                     //qtxt := qtxt+chr(13)+chr(10)+'|'+'Periodicidade: '+qper;
                     Memo_InfoComplementar.Lines.Add('|'+'Periodicidade: '+qper);
                     if qind='0' then begin
                        //qtxt := qtxt+' dia(s).';
                        Memo_InfoComplementar.Lines.Add(' dia(s).');
                     end else begin
                        //qtxt := qtxt+' mes(es).'
                        Memo_InfoComplementar.Lines.Add(' mes(es).');
                     end;
                  end;
                  if qcor='4' then begin
                     //qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: Sem cobertura Cambial';
                     Memo_InfoComplementar.Lines.Add('|'+'Modalidade.PG: Sem cobertura Cambial');
                     //qtxt := qtxt+chr(13)+chr(10)+'|'+'Motivo Sem Cobertura: '+qmot;
                     Memo_InfoComplementar.Lines.Add('|'+'Motivo Sem Cobertura: '+qmot);
                  end;
                  {
                  q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
                  q_update_infcomp.Params[1].AsString := qtxt;
                  q_update_infcomp.ExecSQL;
                  qtxt:='';
                  }
                  imprimiu := true;

                  qfor:= q_infocomp3Razao_Social.asstring;
                  qmod:= q_infocomp3descricao.asstring;
                  qper:= q_infocomp3periodicidade.asstring;
                  qind:= q_infocomp3Indicador_Periodicidade.asstring;
                  qcor:= q_infocomp3Cobertura_Cambial.asstring;
                  qmot:= q_infocomp3desc_motscamb.asstring;
                  asfat:= q_infocomp3codigo.asstring;
                  qtfat:=1;

     ////             imprimiu := false ;

             end;

             Q_infocomp3.next;
       end;
       if ((not imprimiu) or (qtdfor>1)) then begin
          //qtxt := qtxt+chr(13)+chr(10)+'|';
          Memo_InfoComplementar.Lines.Add('|');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'Fatura(s)    : '+asfat;
          Memo_InfoComplementar.Lines.Add('|'+'Fatura(s)    : '+asfat);
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'Fornecedor   : '+q_infocomp3Razao_Social.asstring;
          Memo_InfoComplementar.Lines.Add('|'+'Fornecedor   : '+q_infocomp3Razao_Social.asstring);
          {q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
          q_update_infcomp.Params[1].AsString := qtxt;
          q_update_infcomp.ExecSQL;
          qtxt:='';}
          if qmod <>'' then begin
             //qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: '+qmod;
             Memo_InfoComplementar.Lines.Add('|'+'Modalidade.PG: '+qmod);
          end;
          if qper<>'' then begin
             //qtxt := qtxt+chr(13)+chr(10)+'|'+'Periodicidade: '+qper;
             Memo_InfoComplementar.Lines.Add('|'+'Periodicidade: '+qper);
             if qind='0' then begin
                //qtxt := qtxt+' dia(s).'
                Memo_InfoComplementar.Lines.Add(' dia(s).');
             end else begin
                //qtxt := qtxt+' mes(es).'
                Memo_InfoComplementar.Lines.Add(' mes(es).');
             end;
          end;
          if qcor='4' then begin
             //qtxt := qtxt+chr(13)+chr(10)+'|'+'Modalidade.PG: Sem cobertura Cambial';
             Memo_InfoComplementar.Lines.Add('|'+'Modalidade.PG: Sem cobertura Cambial');
             //qtxt := qtxt+chr(13)+chr(10)+'|'+'Motivo Sem Cobertura: '+qmot;
             Memo_InfoComplementar.Lines.Add('|'+'Motivo Sem Cobertura: '+qmot);
          end;
          {q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
          q_update_infcomp.Params[1].AsString := qtxt;
          q_update_infcomp.ExecSQL;
          qtxt:='';}
       end;
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;

    Q_infocomp6.Close;
    Q_infocomp6.Params[0].AsString := me_nossaref.text;
    Q_infocomp6.open;

//showmessage('inicio processa info6');

    if Q_infocomp6certificado_origem.asstring <>'' then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'CERTIFICADOS DE ORIGEM:';
       Memo_InfoComplementar.Lines.Add('|'+'CERTIFICADOS DE ORIGEM:');
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       Q_infocomp6.first;
       while not Q_infocomp6.Eof do begin
            //qtxt := qtxt+chr(13)+chr(10)+'|'+'Nº: '+q_infocomp6certificado_origem.asstring;
            Memo_InfoComplementar.Lines.Add('|'+'Nº: '+q_infocomp6certificado_origem.asstring);
            {
            q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
            q_update_infcomp.Params[1].AsString := qtxt;
            q_update_infcomp.ExecSQL;
            qtxt:='';
            }
            Q_infocomp6.next;
       end;
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');

    end;

    //qtxt := qtxt+chr(13)+chr(10)+'|'+'PESO LIQUIDO: '+floattostrf(q_infocomp1peso_liquido.asfloat,fffixed,15,2)+'KGS';
    Memo_InfoComplementar.Lines.Add('|'+'PESO LIQUIDO: '+floattostrf(q_infocomp1peso_liquido.asfloat,fffixed,15,2)+'KGS');
    //qtxt := qtxt+chr(13)+chr(10)+'|';
    Memo_InfoComplementar.Lines.Add('|');
    qtxt := qtxt+chr(13)+chr(10)+'|'+'PESO BRUTO: '+floattostrf(q_infocomp1peso_bruto.asfloat,fffixed,15,2)+'KGS';
    Memo_InfoComplementar.Lines.Add('|'+'PESO BRUTO: '+floattostrf(q_infocomp1peso_bruto.asfloat,fffixed,15,2)+'KGS');
    //qtxt := qtxt+chr(13)+chr(10)+'|';
    Memo_InfoComplementar.Lines.Add('|');
    {
    q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
    q_update_infcomp.Params[1].AsString := qtxt;
    q_update_infcomp.ExecSQL;
    qtxt:='';
    }
    Q_infocomp4.Close;
    Q_infocomp4.Params[0].AsString := me_nossaref.text;
    Q_infocomp4.open;

//showmessage('inicio processa info4');

    if Q_infocomp4.recordcount > 0 then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'RELAÇÃO DE VOLUMES:';
       Memo_InfoComplementar.Lines.Add('|'+'RELAÇÃO DE VOLUMES:');
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       Q_infocomp4.first;
       while not Q_infocomp4.Eof do begin
            //qtxt := qtxt+chr(13)+chr(10)+'|'+inttostr(strtoint(q_infocomp4quantidade.asstring))+' - '+q_infocomp4descricao.asstring;
            Memo_InfoComplementar.Lines.Add('|'+inttostr(strtoint(q_infocomp4quantidade.asstring))+' - '+q_infocomp4descricao.asstring);
            {
            q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
            q_update_infcomp.Params[1].AsString := qtxt;
            q_update_infcomp.ExecSQL;
            qtxt:='';
            }
            Q_infocomp4.next;
       end;
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
    end;
    {
    q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
    q_update_infcomp.Params[1].AsString := qtxt;
    q_update_infcomp.ExecSQL;
    qtxt:='';
    }

    if rdgRefTaxaConversao.ItemIndex = 0 then
    begin
              Q_infocomp5.Close;
              Q_infocomp5.Params[0].AsString := me_nossaref.text;
              Q_infocomp5.open;

              if Q_infocomp5.recordcount > 0 then begin
                 //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
                 Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
                 //qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXAS DE CONVERSÃO:';
                 Memo_InfoComplementar.Lines.Add('|'+'TAXAS DE CONVERSÃO:');
                 //qtxt := qtxt+chr(13)+chr(10)+'|';
                 Memo_InfoComplementar.Lines.Add('|');
                 Q_infocomp5.first;
                 while not Q_infocomp5.Eof do begin
                       //qtxt := qtxt+chr(13)+chr(10)+'|'+q_infocomp5descricao.asstring+':'+floattostrf(q_infocomp5taxa_conversao.asfloat,fffixed,15,5);
                       Memo_InfoComplementar.Lines.Add('|'+q_infocomp5descricao.asstring+':'+floattostrf(q_infocomp5taxa_conversao.asfloat,fffixed,15,5));
                       Q_infocomp5.next;
                 end;
                 //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
                 Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
                 //qtxt := qtxt+chr(13)+chr(10)+'|';
                 Memo_InfoComplementar.Lines.Add('|');
                 {
                 q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
                 q_update_infcomp.Params[1].AsString := qtxt;
                 q_update_infcomp.ExecSQL;
                 qtxt:='';
                 }
              end;
    end
    else
    begin
              Q_infocomp5a.Close;
              Q_infocomp5a.Params[0].AsString := me_nossaref.text;
              Q_infocomp5a.open;

              if Q_infocomp5a.recordcount > 0 then begin
                 //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
                 Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
                 //qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXAS DE CONVERSÃO:';
                 Memo_InfoComplementar.Lines.Add('|'+'TAXAS DE CONVERSÃO:');
                 //qtxt := qtxt+chr(13)+chr(10)+'|';
                 Memo_InfoComplementar.Lines.Add('|');
                 Q_infocomp5a.first;
                 while not Q_infocomp5a.Eof do begin
                       //qtxt := qtxt+chr(13)+chr(10)+'|'+q_infocomp5descricao.asstring+':'+floattostrf(q_infocomp5taxa_conversao.asfloat,fffixed,15,5);
                       Memo_InfoComplementar.Lines.Add('|'+q_infocomp5adescricao.asstring+':'+floattostrf(q_infocomp5ataxa_conversao.asfloat,fffixed,15,5));
                       Q_infocomp5a.next;
                 end;
                 //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
                 Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
                 //qtxt := qtxt+chr(13)+chr(10)+'|';
                 Memo_InfoComplementar.Lines.Add('|');
                 {
                 q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
                 q_update_infcomp.Params[1].AsString := qtxt;
                 q_update_infcomp.ExecSQL;
                 qtxt:='';
                 }
              end;
    end;
    if rdgRefTaxaConversao.ItemIndex = 0 then
    begin
            Q_infocomp5.Close;
            Q_infocomp5.Params[0].AsString := me_nossaref.text;
            Q_infocomp5.open;
            if Q_infocomp5.recordcount > 0 then
            begin
               qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
               qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTAÇÃO:';

               while not q_infocomp7.eof do
               begin

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

                   qadi:= '|'+VDETALHE+': ';
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
    end
    else
    begin
            Q_infocomp5a.Close;
            Q_infocomp5a.Params[0].AsString := me_nossaref.text;
            Q_infocomp5a.open;
            if Q_infocomp5a.recordcount > 0 then
            begin
               qtxt := qtxt+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
               qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTAÇÃO:';

               while not q_infocomp7.eof do
               begin

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

                   qadi:= '|'+VDETALHE+': ';
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
    end;
    qtaxasis := 185;
    //if q_processostaxa_siscomex.asfloat >0 then
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(q_processostaxa_siscomex.asfloat,ffFixed,15,2))
    //else begin

        q_pagtributos.Close;
        q_pagtributos.Params[0].AsString := q_processosempresa.asstring;
        q_pagtributos.Params[1].AsString := q_processosfilial.asstring;
        q_pagtributos.Params[2].AsString := me_nossaref.text;
        q_pagtributos.open;

        while not q_pagtributos.eof do begin

            for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
                if ((i >= 1 )  and (i <= 2 ))  then  qtaxasis := qtaxasis+29.50;
                if ((i >= 3 )  and (i <= 5 ))  then  qtaxasis := qtaxasis+23.60;
                if ((i >= 6 )  and (i <= 10 )) then  qtaxasis := qtaxasis+17.70;
                if ((i >= 11)  and (i <= 20))  then  qtaxasis := qtaxasis+11.80;
                if ((i >= 21)  and (i <= 50))  then  qtaxasis := qtaxasis+5.90;
                if (i >= 51) then  qtaxasis := qtaxasis+2.95;
            end;

            q_pagtributos.next;

        end;

        //qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX: '+trim(floattostrf(qtaxasis,ffFixed,15,2));
        Memo_InfoComplementar.Lines.Add('|'+'TAXA SISCOMEX: '+trim(floattostrf(qtaxasis,ffFixed,15,2)));
        {
        q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt;
        q_update_infcomp.ExecSQL;
        qtxt:='';
        }
        sql_update := 'UPDATE Processos_registro_impostos SET Taxa_SISCOMEX = ' + StringReplace(trim(floattostrf(qtaxasis,ffFixed,15,2)),',','.',[rfReplaceAll, rfIgnoreCase]) + ' WHERE Processo = "' + me_nossaref.text + '" ';
        //if q_update_processo_taxasiscomex.Active = true then
        //        q_update_processo_taxasiscomex.Active := false;
        q_update_processo_taxasiscomex.sql.Clear;
        q_update_processo_taxasiscomex.sql.Add(sql_update);
        q_update_processo_taxasiscomex.ExecSQL;
        //q_update_processo_taxasiscomex.Active := true;

    //end;
///    else showmessage('Taxa Siscomex não informada no desembaraço!');

    if q_processostaxa_siscomexc.asfloat >0 then begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'TAXA SISCOMEX Consumo: '+q_processostaxa_siscomexc.asstring;
       Memo_InfoComplementar.Lines.Add('|'+'TAXA SISCOMEX Consumo: '+q_processostaxa_siscomexc.asstring);
    end;

    Q_infocomp8.Close;
    Q_infocomp8.Params[0].AsString := me_nossaref.text;
    Q_infocomp8.open;

    if Q_infocomp8.recordcount > 0
     then begin
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       Memo_InfoComplementar.Lines.Add('|'+'ACRÉSCIMOS:');
       Memo_InfoComplementar.Lines.Add('|');

       Q_infocomp8.first;

       while not Q_infocomp8.Eof do
        begin
          Memo_InfoComplementar.Lines.Add('|'+q_infocomp8descricao.asstring+': '+floattostrf(q_infocomp8VL_ACRESCIMO_MOEDA.asfloat,fffixed,15,2) + ' ' + q_infocomp8MOEDA.AsString);


          Q_infocomp8.next;
        end;
     end;

    temato := false;
    {
    q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
    q_update_infcomp.Params[1].AsString := qtxt;
    q_update_infcomp.ExecSQL;
    qtxt:='';
    }
    Q_infocomp7.Close;
    Q_infocomp7.Params[0].AsString := me_nossaref.text;
    Q_infocomp7.open;

    infocomp5 := false;
    if rdgRefTaxaConversao.ItemIndex = 0 then
    begin
              if Q_infocomp5.recordcount > 0 then infocomp5 := True else infocomp5 := false;
    end
    else
    begin
              if Q_infocomp5a.recordcount > 0 then infocomp5 := True else infocomp5 := false;
    end;
 //             if Q_infocomp5.recordcount > 0 then
    if infocomp5 then
    begin
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'TRIBUTAÇÃO:';
       Memo_InfoComplementar.Lines.Add('|'+'TRIBUTAÇÃO:');

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

           //qtxt := qtxt+chr(13)+chr(10)+'|';
           Memo_InfoComplementar.Lines.Add('|');
           //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
           Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
           {
           q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
           q_update_infcomp.Params[1].AsString := qtxt;
           q_update_infcomp.ExecSQL;
           qtxt:='';
           }
           //qtxt := qtxt+chr(13)+chr(10)+qadi;
           Memo_InfoComplementar.Lines.Add(qadi);
           {
           q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
           q_update_infcomp.Params[1].AsString := qtxt;
           q_update_infcomp.ExecSQL;
           qtxt:='';
           }
           //qtxt := qtxt+chr(13)+chr(10)+qregii;
           Memo_InfoComplementar.Lines.Add(qregii);
           {
           q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
           q_update_infcomp.Params[1].AsString := qtxt;
           q_update_infcomp.ExecSQL;
           qtxt:='';
           }

           //qtxt := qtxt+chr(13)+chr(10)+qregipi;
           Memo_InfoComplementar.Lines.Add(qregipi);
           //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
           Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
           {
           q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
            q_update_infcomp.Params[1].AsString := qtxt;
            q_update_infcomp.ExecSQL;
            qtxt:='';
           }
       end;
       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       //qtxt := qtxt+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
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
          //qtxt := qtxt+chr(13)+chr(10)+'|';
          Memo_InfoComplementar.Lines.Add('|');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'ISENÇÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E';
          Memo_InfoComplementar.Lines.Add('|'+'ISENÇÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'DA COFINS, PARA AS ADIÇÕES:';
          Memo_InfoComplementar.Lines.Add('|'+'DA COFINS, PARA AS ADIÇÕES:');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+ ver_adicoes+';';
          Memo_InfoComplementar.Lines.Add('|'+ ver_adicoes+';');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'DE ACORDO COM O ARTIGO 9, item II , letra F, ';
          Memo_InfoComplementar.Lines.Add('|'+'DE ACORDO COM O ARTIGO 9, item II , letra F, ');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'da LEI 10.865 DE 30/04/2004.';
          Memo_InfoComplementar.Lines.Add('|'+'da LEI 10.865 DE 30/04/2004.');
          {
          q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
          q_update_infcomp.Params[1].AsString := qtxt;
          q_update_infcomp.ExecSQL;
          qtxt:='';
          }
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
          //qtxt := qtxt+chr(13)+chr(10)+'|';
          Memo_InfoComplementar.Lines.Add('|');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'SUSPENSÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E';
          Memo_InfoComplementar.Lines.Add('|'+'SUSPENSÃO DO RECOLHIMENTO DAS CONTRIBUIÇÕES DE PIS/PASEP E');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'DA COFINS, PARA AS ADIÇÕES:';
          Memo_InfoComplementar.Lines.Add('|'+'DA COFINS, PARA AS ADIÇÕES:');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+ ver_adicoes+';';
          Memo_InfoComplementar.Lines.Add('|'+ ver_adicoes+';');
          //qtxt := qtxt+chr(13)+chr(10)+'|'+'DE ACORDO COM O ARTIGO 14 LEI 10.865 DE 30/04/2004.';
          Memo_InfoComplementar.Lines.Add('|'+'DE ACORDO COM O ARTIGO 14 LEI 10.865 DE 30/04/2004.');
       end;

       //qtxt := qtxt+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       {
       q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt;
        q_update_infcomp.ExecSQL;
        qtxt:='';
       }
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


//showmessage('inicio processa piscofins');

       ///////////alterado 04/05/2004 pis cofins
    if q_propis.recordcount>0 then begin
       total_ii    := 0;
       total_ipi   := 0;
       total_pis    := 0;
       total_cofins := 0;
       total_icms   := 0;
       total_icms_acresc := 0;

       total_ii_s    := 0;
       total_ipi_s   := 0;
       total_pis_s    := 0;
       total_cofins_s := 0;
       total_icms_s   := 0;
       total_icms_acresc_s := 0;
       total_icms_base := 0;
       total_icms_base_acresc := 0;

       q_propis.first;
       //qtxt_1 := qtxt_1+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'PIS/PASEP E COFINS RECOLHIDOS CONFORME MP164/04:';
       //qtxt_1 := qtxt_1+chr(13)+chr(10)+'|'+'As contribuições de PIS-PASEP E COFINS recolhidas de acordo com';
       Memo_InfoComplementar.Lines.Add('|'+'As contribuições de PIS-PASEP E COFINS recolhidas de acordo com');
       //qtxt_1 := qtxt_1+chr(13)+chr(10)+'|'+'o Art. 8º da Lei 10.865 de 30/04/2004.';
       Memo_InfoComplementar.Lines.Add('|'+'o Art. 8º da Lei 10.865 de 30/04/2004.');
       //qtxt_1 := qtxt_1+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       qteste := 0;
       {
       q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt_1;
        q_update_infcomp.ExecSQL;
        qtxt_1:='';
       }
 //      RateioAcrescimoICMS;
       while not q_propis.eof do begin
             qteste := qteste+1;
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'|';
             Memo_InfoComplementar.Lines.Add('|');
             q_suspe := '';
             q_suspe_II := '';
             q_suspe_IPI := '';
             if q_tributa then begin
             if q_piscofinstrib.Locate('Adicao',q_propisadicao.asstring,[loCaseInsensitive]) then begin

                {Ticket 4186 - Incluído para Acréscimo do ICMS - Leandro Serra 12/03/213 }

//                RateioAcrescimoICMS;
//                RateioAcrescimoICMSNasAdicoes(q_propisadicao.asstring);
{                qAdicao.Close;
                qAdicao.ParamByName('pProcesso').asString := ME_nossaref.Text;
                qAdicao.ParamByName('pAdicao').asString := q_propisadicao.asstring;
                qAdicao.Open;
                {Fim 4186}
                if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe_II := 'II';
                if q_piscofinstribRegime_Tributacao_IPI.asstring='5' then q_suspe_IPI := 'IPI';

                /// verificando se é SUSPENSÃO
                /// leandro dia 21/09/2006, solicitado por Jorge
                if (q_suspe_II<>'') or (q_suspe_IPI<>'') then
                   q_suspe :=' -> ( SUSPENSÃO '
                else begin
                   /// verificando se é ISENÇÃO
                   /// leandro dia 21/09/2006, solicitado por Jorge
                   if q_piscofinstribRegime_Tributacao_II.asstring='3' then q_suspe_II := 'II';
                   if q_piscofinstribRegime_Tributacao_IPI.asstring='3' then q_suspe_IPI := 'IPI';
                   if (q_suspe_II<>'') or (q_suspe_IPI<>'') then q_suspe :=' -> ( ISENÇÃO ';
                end;

                //// mm 26022009

                if (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='5') or
                   (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='2') or
                   (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='6') then begin
                   total_pis_s := total_pis_s+q_propisvalor_pis_pasep.asfloat;
                   total_cofins_s := total_cofins_s+q_propisvalor_cofins.asfloat;

                end
                else begin
                   total_pis := total_pis+q_propisvalor_pis_pasep.asfloat;
                   total_cofins := total_cofins+q_propisvalor_cofins.asfloat;
                end;
                {Ticket 4186}
//                valor_icms := (q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100);
                valor_icms := (q_propisBASEC_ICMS.asfloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100);
 //               valor_icms_acresc := (qAdicaorateio_acresc_ICMS.asFloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100);

                if q_piscofinstribtratamento_tributario.asstring = '' then
                begin
                        //total_icms := total_icms+q_propisvalor_icms.asfloat
                         total_icms := total_icms+valor_icms;
          //               total_icms_acresc := total_icms_acresc+valor_icms_acresc;
                end
                else
                begin
                        //total_icms_s := total_icms_s+q_propisvalor_icms.asfloat;
                        total_icms_s := total_icms_s+valor_icms;
                 //       total_icms_acresc_s := total_icms_acresc_s+valor_icms_acresc;
                end;
                {Fim 4186}
                {Inicio - eduardo.souza 02/06/2011}
                {Ticket 4186}
//                total_icms_base := total_icms_base + (q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat);
                total_icms_base := total_icms_base + (q_propisBASEC_ICMS.asfloat);
               // total_icms_base_acresc := total_icms_base_acresc + (qAdicaorateio_acresc_ICMS.asFloat);
                {Fim 4186}
                //total_icms_base := total_icms_base + q_propisBASEC_ICMS.asfloat;
                {Fim}

                {Inicio - eduardo.souza 01/03/2012}
                total_pis_cofins_base := total_pis_cofins_base + q_propisBASEC_PISCOFINS.asfloat;
                {Fim}

             end;
             end;
             if (q_suspe_II<>'') or (q_suspe_IPI<>'') then begin
                /// tratamento passou a ser feito logo acima
                ///q_suspe :=' -> ( SUSPENSÃO ';
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
             if (q_propisprazo_permanencia.asinteger>0) then begin
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| '+VDETALHE+'..............: '+q_propisadicao.asstring+ ' -> (PROPORCIONAL)'+q_suspe;
                Memo_InfoComplementar.Lines.Add('| '+VDETALHE+'..............: '+q_propisadicao.asstring+ ' -> (PROPORCIONAL)'+q_suspe);
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| NCM.................: '+q_propisNCM.asstring;
                Memo_InfoComplementar.Lines.Add('| NCM.................: '+q_propisNCM.asstring);
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(q_propisva.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisva_proporcional.asfloat,fffixed,10,2) +' )';
                Memo_InfoComplementar.Lines.Add('| Valor Aduaneiro.....: '+floattostrf(q_propisva.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisva_proporcional.asfloat,fffixed,10,2) +' )');
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(q_propisaliq_ncm_II.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisaliq_ncm_II_proporcional.asfloat,fffixed,10,2) +' )';
                Memo_InfoComplementar.Lines.Add('| Alíquota II.........: '+floattostrf(q_propisaliq_ncm_II.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisaliq_ncm_II_proporcional.asfloat,fffixed,10,2) +' )');
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(q_propisaliq_ncm_ipi.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisaliq_ncm_IPI_proporcional.asfloat,fffixed,10,2) +' )';
                Memo_InfoComplementar.Lines.Add('| Alíquota IPI........: '+floattostrf(q_propisaliq_ncm_ipi.asfloat,fffixed,10,2)+' -> ( '+floattostrf(q_propisaliq_ncm_IPI_proporcional.asfloat,fffixed,10,2) +' )');
                {
                q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
                q_update_infcomp.Params[1].AsString := qtxt_1;
                q_update_infcomp.ExecSQL;
                qtxt_1:='';
                }
             end
             else begin
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| '+VDETALHE+'..............: '+q_propisadicao.asstring+q_suspe;
                Memo_InfoComplementar.Lines.Add('| '+VDETALHE+'..............: '+q_propisadicao.asstring+q_suspe);
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| NCM.................: '+q_propisNCM.asstring;
                Memo_InfoComplementar.Lines.Add('| NCM.................: '+q_propisNCM.asstring);
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor Aduaneiro.....: '+floattostrf(q_propisva.asfloat,fffixed,10,2);
                Memo_InfoComplementar.Lines.Add('| Valor Aduaneiro.....: '+floattostrf(q_propisva.asfloat,fffixed,10,2));
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota II.........: '+floattostrf(q_propisaliq_ncm_II.asfloat,fffixed,10,2);
                Memo_InfoComplementar.Lines.Add('| Alíquota II.........: '+floattostrf(q_propisaliq_ncm_II.asfloat,fffixed,10,2));
                //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota IPI........: '+floattostrf(q_propisaliq_ncm_ipi.asfloat,fffixed,10,2);
                Memo_InfoComplementar.Lines.Add('| Alíquota IPI........: '+floattostrf(q_propisaliq_ncm_ipi.asfloat,fffixed,10,2));
                {
                q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
                q_update_infcomp.Params[1].AsString := qtxt_1;
                q_update_infcomp.ExecSQL;
                qtxt_1:='';
                }
             end;

             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota ICMS.......: '+floattostrf((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat),fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Alíquota ICMS.......: '+floattostrf((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat),fffixed,10,2));
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota PIS/PASEP..: '+floattostrf(q_propisaliq_pis_pasep.asfloat,fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Alíquota PIS/PASEP..: '+floattostrf(q_propisaliq_pis_pasep.asfloat,fffixed,10,2));
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Alíquota COFINS.....: '+floattostrf(q_propisaliq_cofins.asfloat,fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Alíquota COFINS.....: '+floattostrf(q_propisaliq_cofins.asfloat,fffixed,10,2));

             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor II ...........: '+floattostrf(q_propisvalor_ii.asfloat,fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Valor II ...........: '+floattostrf(q_propisvalor_ii.asfloat,fffixed,10,2));
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor IPI ..........: '+floattostrf(q_propisvalor_ipi.asfloat,fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Valor IPI ..........: '+floattostrf(q_propisvalor_ipi.asfloat,fffixed,10,2));
             {
             q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
              q_update_infcomp.Params[1].AsString := qtxt_1;
              q_update_infcomp.ExecSQL;
              qtxt_1:='';
             }
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor ICMS .........: '+floattostrf(q_propisvalor_icms.asfloat,fffixed,10,2);
             //Memo_InfoComplementar.Lines.Add('| Valor ICMS .........: '+floattostrf(q_propisvalor_icms.asfloat,fffixed,10,2));
             {Ticket 4186}
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor ICMS .........: '+floattostrf((q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100),fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Valor ICMS .........: '+floattostrf((q_propisBASEC_ICMS.asfloat)*((q_propisaliq_icms.asfloat+q_propisaliq_icms_extra.asfloat)/100),fffixed,10,2));
          //   if  qAdicaorateio_acresc_ICMS.asFloat <> 0 then
        {     if vTotalAcrescimoICMS <> 0 then
                     Memo_InfoComplementar.Lines.Add('| Acréscimo ICMS .....: '+floattostrf(vTotalAcrescimoICMS,fffixed,10,2));
             {Fim 4186}

             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor PIS/PASEP.....: '+floattostrf(q_propisvalor_pis_pasep.asfloat,fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Valor PIS/PASEP.....: '+floattostrf(q_propisvalor_pis_pasep.asfloat,fffixed,10,2));
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor COFINS........: '+floattostrf(q_propisvalor_cofins.asfloat,fffixed,10,2);
             Memo_InfoComplementar.Lines.Add('| Valor COFINS........: '+floattostrf(q_propisvalor_cofins.asfloat,fffixed,10,2));

             {Inicio eduardo.souza 02/06/2011}
             //qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor BASE ICMS.....: '+floattostrf(q_propisBASEC_ICMS.asfloat,fffixed,10,2);
             //Memo_InfoComplementar.Lines.Add('| Valor BASE ICMS.....: '+floattostrf(q_propisBASEC_ICMS.asfloat,fffixed,10,2));
             { Ticket 4186 - Incluído somente na complementar não vai para o SISCOMEX}
//               qtxt_1 := qtxt_1+chr(13)+chr(10)+'| Valor BASE ICMS.....: '+floattostrf((q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat),fffixed,10,2);
//             Memo_InfoComplementar.Lines.Add('| Valor BASE ICMS.....: '+floattostrf((q_propisBASEC_ICMS.asfloat+qAdicaorateio_acresc_ICMS.asFloat),fffixed,10,2));
             Memo_InfoComplementar.Lines.Add('| Valor BASE ICMS.....: '+floattostrf((q_propisBASEC_ICMS.asfloat),fffixed,10,2));
        {     if qAdicaorateio_acresc_ICMS.asFloat <> 0 then
                     Memo_InfoComplementar.Lines.Add('| Acréscimo BASE ICMS..:'+floattostrf((qAdicaorateio_acresc_ICMS.asFloat),fffixed,10,2));
             {Fim 4186}
             {Fim eduardo.souza 02/06/2011}

             {Inicio eduardo.souza 01/03/2012}
             Memo_InfoComplementar.Lines.Add('| Valor BASE PIS/PASEP: '+floattostrf(q_propisBASEC_PISCOFINS.asfloat,fffixed,10,2));
             Memo_InfoComplementar.Lines.Add('| Valor BASE COFINS...: '+floattostrf(q_propisBASEC_PISCOFINS.asfloat,fffixed,10,2));
             {Fim eduardo.souza 01/03/2012}


             {
             q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
              q_update_infcomp.Params[1].AsString := qtxt_1;
              q_update_infcomp.ExecSQL;
              qtxt_1:='';
             }
             if (q_suspe_II='') then total_ii := total_ii+q_propisvalor_ii.asfloat
             else total_ii_s := total_ii_s+q_propisvalor_ii.asfloat;

             if (q_suspe_IPI='') then total_ipi := total_ipi+q_propisvalor_ipi.asfloat
             else total_ipi_s := total_ipi_s+q_propisvalor_ipi.asfloat;
             t_processos.post;
             t_processos.edit;
            q_propis.next;
       end;

       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       if (total_ii>0) then  begin
         //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total II ...........: '+floattostrf(total_ii,fffixed,10,2);
         Memo_InfoComplementar.Lines.Add('| Valor Total II ...........: '+floattostrf(total_ii,fffixed,10,2));
       end;
       if (total_ipi>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total IPI ..........: '+floattostrf(total_ipi,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total IPI ..........: '+floattostrf(total_ipi,fffixed,10,2));
       end;
       {
       q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt_2;
        q_update_infcomp.ExecSQL;
        qtxt_2:='';
       }
       {inicio - eduardo.souza 02/06/2011}
       if (total_icms_base>0) then begin
          Memo_InfoComplementar.Lines.Add('| Valor Total BASE ICMS.....................: '+floattostrf(total_icms_base,fffixed,10,2));
   {       if total_icms_base_acresc <> 0 then
                  Memo_InfoComplementar.Lines.Add('| Valor Total Acréscimo BASE ICMS...........: '+floattostrf(total_icms_base_acresc,fffixed,10,2));}
       end;
       {fim}

       {Inicio eduardo.souza 01/03/2012}
       if (total_pis_cofins_base>0) then begin
         Memo_InfoComplementar.Lines.Add('| Valor Total BASE PIS/PASEP: '+floattostrf(total_pis_cofins_base,fffixed,10,2));
         Memo_InfoComplementar.Lines.Add('| Valor Total BASE COFINS...: '+floattostrf(total_pis_cofins_base,fffixed,10,2));
       end;
       {Fim eduardo.souza 01/03/2012}

       if (total_icms>0) or (total_pis>0) or (total_cofins>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
          Memo_InfoComplementar.Lines.Add('|');
       end;
       if (total_icms>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total ICMS (A RECOLHER)...: '+floattostrf(total_icms,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total ICMS (A RECOLHER).....................: '+floattostrf(total_icms,fffixed,10,2));
          if vTotalAcrescimoICMS <> 0 then
                  Memo_InfoComplementar.Lines.Add('| Valor Acréscimo ICMS (A RECOLHER)........:'+floattostrf(vTotalAcrescimoICMS,fffixed,10,2));
       end;
       if (total_pis>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total PIS/PASEP.....: '+floattostrf(total_pis,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total PIS/PASEP.....: '+floattostrf(total_pis,fffixed,10,2));
       end;
       if (total_cofins>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total COFINS........: '+floattostrf(total_cofins,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total COFINS........: '+floattostrf(total_cofins,fffixed,10,2));
       end;

       if (total_icms>0) or (total_pis>0) or (total_cofins>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
          Memo_InfoComplementar.Lines.Add('|');
       end;
       {
       q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt_2;
        q_update_infcomp.ExecSQL;
        qtxt_2:='';
       }
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       if (total_ii_s>0)  then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total II (SUSPENSO)..........: '+floattostrf(total_ii_s,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total II (SUSPENSO)..........: '+floattostrf(total_ii_s,fffixed,10,2));
       end;
       if (total_ipi_s>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total IPI (SUSPENSO).........: '+floattostrf(total_ipi_s,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total IPI (SUSPENSO).........: '+floattostrf(total_ipi_s,fffixed,10,2));
       end;

       if (total_icms_s>0) or (total_pis_s>0) or (total_cofins_s>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
          Memo_InfoComplementar.Lines.Add('|');
       end;

     if (total_icms_s>0) then begin
          {Leandro Serra - 05/09/2011}
          if q_processosBASE_ICMS.AsInteger = 1 then
          begin
            Memo_InfoComplementar.Lines.Add('| Valor Total ICMS (A RECOLHER).....................: '+floattostrf(total_icms_s,fffixed,10,2));
            if vTotalAcrescimoICMS <> 0 then
                    Memo_InfoComplementar.Lines.Add('| Valor Acréscimo ICMS (A RECOLHER)........: '+floattostrf(vTotalAcrescimoICMS,fffixed,10,2));
          end
          else
          begin
            Memo_InfoComplementar.Lines.Add('| Valor Total ICMS (SUSPENSO).....................: '+floattostrf(total_icms_s,fffixed,10,2));
            if vTotalAcrescimoICMS <> 0 then
                    Memo_InfoComplementar.Lines.Add('| Valor Acréscimo ICMS (SUSPENSO)........: '+floattostrf(vTotalAcrescimoICMS,fffixed,10,2));
          end;
          {Fim 05/09/2011}
     end;

     if (total_pis_s>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total PIS/PASEP (SUSPENSO)...: '+floattostrf(total_pis_s,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total PIS/PASEP (SUSPENSO)...: '+floattostrf(total_pis_s,fffixed,10,2));
     end;

     if (total_cofins_s>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'| Valor Total COFINS (SUSPENSO)......: '+floattostrf(total_cofins_s,fffixed,10,2);
          Memo_InfoComplementar.Lines.Add('| Valor Total COFINS (SUSPENSO)......: '+floattostrf(total_cofins_s,fffixed,10,2));
     end;
     t_processos.post;
     t_processos.edit;
     {
     q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt_2;
        q_update_infcomp.ExecSQL;
        qtxt_2:='';
     }
     {inicio - eduardo.souza 02/06/2011}
     //if (total_icms_base>0) then
     //   qtxt := qtxt+chr(13)+chr(10)+'| Valor Total BASE ICMS.....: '+floattostrf(total_icms_base,fffixed,10,2);
     {fim}

     if (total_icms_s>0) or (total_pis_s>0) or (total_cofins_s>0) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
          Memo_InfoComplementar.Lines.Add('|');
     end;


       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'--------------------------------------------------------------';
       Memo_InfoComplementar.Lines.Add('|'+'--------------------------------------------------------------');
    end;


    if ((q_processosfilial.asstring = 'CWB') and (temato))then begin
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'SOLICITAMOS O DESEMBARACO ADUANEIRO DAS MERCADORIAS';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONSTANTES NESTA DI COM SUSPENSAO DO PAGAMENTO DOS';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'TRIBUTOS DE ACORDO COM O DECRETO 4543 de 27/12/2002, ARTIGO 335,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'AMPARADO PELO REGIME ESPECIAL DE DRAWBACK,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'COM BASE NA PORTARIA M.F. 594 DE 25/08/92.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'ASSUMO INTEIRA RESPONSABILIDADE PELO INTEGRAL CUMPRIMENTO';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'DAS OBRIGACOES CONSTANTES DO ATO CONCESSORIO SUPRACITADO,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'NOS COMPROMETENDO, AINDA, A RECOLHER AOS COFRES PUBLICOS,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'NO PRAZO REGULAMENTAR, O VALOR DOS TRIBUTOS SUSPENSOS';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONSTANTES NOS ANEXOS CITADOS DESTA D.I. E INCLUSIVE JUROS,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CORRECAO MONETARIA E DEMAIS ENCARGOS CASO NAO SEJAM';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CUMPRIDAS TODAS AS EXIGENCIAS LEGAIS.';
///       qtxt := qtxt+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA LTDA.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
     end;
     {
     q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt_2;
        q_update_infcomp.ExecSQL;
        qtxt_2:='';
     }                                                          ///halliburton produtos
    if ((q_processosfilial.asstring = 'RJO') and (temato) and (q_processosimportador.asstring='31'))then begin
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add('|');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'SOLICITAMOS A SUSPENSAO TOTAL DOS IMPOSTOS PELO REGIME ESPECIAL';
       Memo_InfoComplementar.Lines.Add('|'+'SOLICITAMOS A SUSPENSAO TOTAL DOS IMPOSTOS PELO REGIME ESPECIAL');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'DE DRAWBACK-GENERICO (ATO DECLARATORIO NR. 1778-00/000195-0)';
       Memo_InfoComplementar.Lines.Add('|'+'DE DRAWBACK-GENERICO (ATO DECLARATORIO NR. 1778-00/000195-0)');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'DAS MERCADORIAS CONSTANTES DA PRESENTE DECLARACAO DE IMPORTACAO,';
       Memo_InfoComplementar.Lines.Add('|'+'DAS MERCADORIAS CONSTANTES DA PRESENTE DECLARACAO DE IMPORTACAO,');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONFORME PRECEITUA O PARAGRAFO 3o DO ARTIGO 338 DO R.A. 4543/02.';
       Memo_InfoComplementar.Lines.Add('|'+'CONFORME PRECEITUA O PARAGRAFO 3o DO ARTIGO 338 DO R.A. 4543/02.');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'DECLARO ASSUMIR INTEIRA RESPONSABILIDADE PELO INTEGRAL';
       Memo_InfoComplementar.Lines.Add('|'+'DECLARO ASSUMIR INTEIRA RESPONSABILIDADE PELO INTEGRAL');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CUMPRIMENTO DAS OBRIGACOES CONSTANTES DA PRESENTE DECLARACAO';
       Memo_InfoComplementar.Lines.Add('|'+'CUMPRIMENTO DAS OBRIGACOES CONSTANTES DA PRESENTE DECLARACAO');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'DE IMPORTACAO, COMPROMETENDO-ME A RECOLHER AOS COFRES PUBLICOS,';
       Memo_InfoComplementar.Lines.Add('|'+'DE IMPORTACAO, COMPROMETENDO-ME A RECOLHER AOS COFRES PUBLICOS,');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'NO PRAZO REGULAMENTAR, O VALOR DOS TRIBUTOS SUSPENSOS,';
       Memo_InfoComplementar.Lines.Add('|'+'NO PRAZO REGULAMENTAR, O VALOR DOS TRIBUTOS SUSPENSOS,');
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CASO VENHA A SER EXIGIDO PELA SECRETARIA DA RECEITA FEDERAL.';
       Memo_InfoComplementar.Lines.Add('|'+'CASO VENHA A SER EXIGIDO PELA SECRETARIA DA RECEITA FEDERAL.');
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONFORME PRECEITUA O ART. 14 DA LEI 10.865/2004, AS CONTRIBUICOES';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'DE PIS-PASEP E COFINS, ESTÃO SUSPENSAS DE ACORDO COM AS NORMAS';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'RELATIVAS AO DRAWBACK - SUSPENSÃO.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'MERCADORIA ENCONTRA-SE  ACONDICIONADA EM EMBALAGEM DE MADEIRA,';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONFORME COMUNICADO DE SERVIÇO NR.003 DE 25/01/02.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'MERCADORIA NÃO ENCONTRA-SE ACONDICIONADA EM EMBALAGEM OU SUPORTE QUE';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CONTENHAM MADEIRA, CONFORME COMUNICADO DE SERVIÇO NR.003 DE 25/01/02.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'MERCADORIA VISTORIADA NO PORTO/RJ PELO VIGIAGRO/M.A CONFORME PORTARIA';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'INTERMINISTERIAL NR.499/99 POR ESTAR ACONDICIONADA EM CAIXA DE MADEIRA.';
       qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
       Memo_InfoComplementar.Lines.Add(qtxt_2);
     end;

     //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
     Memo_InfoComplementar.Lines.Add('|');
     {
     q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt_2;
        q_update_infcomp.ExecSQL;
        qtxt_2:='';
     }
     t_processos.post;
     t_processos.edit;
    if (q_processosfilial.asstring = 'CWB') then begin
       //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'COMISSARIA: MS LOGISTICA ADUANEIRA LTDA.';
       Memo_InfoComplementar.Lines.Add('|'+'COMISSARIA: MS LOGISTICA ADUANEIRA LTDA.');
    end;

    t_pro.open;
    while not t_pro.eof do begin
          Memo_InfoComplementar.Lines.Add('|'+'REPRESENTANTE LEGAL: '+t_proRazao_Social.asstring);
          Memo_InfoComplementar.Lines.Add('|'+'CPF: '+t_proCGC_CPF.asstring+' - Reg.: '+t_proregistro.asstring);
          t_pro.next;
    end;
    t_pro.close;
    t_processos.post;
     t_processos.edit;
    t_aju.open;
    while not t_aju.eof do begin
          if (t_ajuexibe_complementares.asinteger=1) then begin
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'AJUDANTE DE DESPACHANTE: '+t_ajuRazao_Social.asstring;
          Memo_InfoComplementar.Lines.Add('|'+'AJUDANTE DE DESPACHANTE: '+t_ajuRazao_Social.asstring);
          //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'CPF: '+t_ajuCGC_CPF.asstring+' - Reg.: '+t_ajuregistro.asstring;
          Memo_InfoComplementar.Lines.Add('|'+'CPF: '+t_ajuCGC_CPF.asstring+' - Reg.: '+t_ajuregistro.asstring);
          end;
          {
          q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
          q_update_infcomp.Params[1].AsString := qtxt_2;
          q_update_infcomp.ExecSQL;
          qtxt_2:='';
          }
          t_aju.next;
    end;
    t_aju.close;

    //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
    Memo_InfoComplementar.Lines.Add('|');
    //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'REF. MS:'+me_nossaref.text;
    Memo_InfoComplementar.Lines.Add('|'+'REF. MS:'+me_nossaref.text);
    //qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'REF. CLIENTE:'+T_processoscodigo_Cliente.asstring;
    Memo_InfoComplementar.Lines.Add('|'+'REF. CLIENTE:'+T_processoscodigo_Cliente.asstring);
    t_processos.post;
     t_processos.edit;
    if q_processosfilial.asstring = 'CWB' then begin
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'                     Termo de Desistência                       ';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'Desistimos da Vistoria Aduaneira nos termos do Artigo 586 do    ';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'Regulamento Aduaneiro, aprovado pelo Decreto 4543 de 27/12/2002,';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'responsabilizamo-nos por todos e quaisquer ônus decorrente de   ';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'nossa desistência.                                              ';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+'----------------------------------------------------------------';
    end;
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+q_processosqfilial.asstring+', '+FormatDateTime('dd " de " mmmm " de " yyyy', date());
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|';
    qtxt_2 := qtxt_2+chr(13)+chr(10)+'|'+q_processoscliente.asstring;
    Memo_InfoComplementar.Lines.Add(qtxt_2);
    t_processos.post;
     //t_processos.edit;
    {
    q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
        q_update_infcomp.Params[1].AsString := qtxt_2;
        q_update_infcomp.ExecSQL;
        qtxt_2:='';
     }



    //t_processos.edit;
    //t_processosTX_INFO_COMPL.asstring    := qtxt;
    //t_processosTX_INFO_COMPL.asstring := Memo_InfoComplementar.Lines.Text;
    ///ALTEREI EM 11072007 nao coloquei
//    t_processosTR_VAL_PIS.asstring := floattostrf(total_pis,fffixed,10,2);
//    t_processosTR_VAL_COFINS.asstring := floattostrf(total_cofins,fffixed,10,2);

    //t_processos.post;

    {
    q_update_infcomp.Params[0].AsString := t_processosCodigo.asstring;
    q_update_infcomp.Params[1].AsString := qtxt;
    q_update_infcomp.ExecSQL;
    }



    {
    q_update_infcomp.SQL.Clear;
    q_update_infcomp.SQL.Add('EXEC SP_Informacoes_Complementares "');
    q_update_infcomp.SQL.Add(t_processosCodigo.asstring + '", "');
    q_update_infcomp.SQL.Add(qtxt + '"');
    q_update_infcomp.ExecSQL;
    }

    {
    q_update_infcomp1.Params[0].AsString := qtxt_1;
    q_update_infcomp1.Params[1].AsString := t_processosCodigo.asstring;
    q_update_infcomp1.ExecSQL;

    q_update_infcomp1.Params[0].AsString := qtxt_2;
    q_update_infcomp1.Params[1].AsString := t_processosCodigo.asstring;
    q_update_infcomp1.ExecSQL;
    }

    {
    showmessage(inttostr(length(qtxt)));
        showmessage(inttostr(length(qtxt_1)));
            showmessage(inttostr(length(qtxt_2)));
    }

    {
    t_processos.edit;
    t_processosTX_INFO_COMPL.asstring := qtxt;
    //t_processosTX_INFO_COMPL.asstring := '';
    t_processos.post;

    t_processos.edit;
    t_processosTX_INFO_COMPL.asstring := t_processosTX_INFO_COMPL.asstring + qtxt_1;
    t_processos.post;

    t_processos.edit;
    t_processosTX_INFO_COMPL.asstring := t_processosTX_INFO_COMPL.asstring + qtxt_2;
    t_processos.post;
    }

    t_processos.Refresh;

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
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;
//showmessage('final processa');
end;

procedure TF_prodidsi.B_DSIClick(Sender: TObject);
var seqbem,v_num_seq,vseqdsi:integer;
    v_moeda,q_descricao:string;
    v_moedaigual,verprodutos:boolean;
    v_totfat,v_totfatm,qtotii,qtotipi,qtotpis,qtotcof:real;

begin
   if Processos_Tipo_LI(ME_nossaref.Text) then
   begin
       with q_Documentos do
       begin
         close;
         sql.Clear;
         sql.Add('select Sub_Tipo_Doc, Numero_Doc from Documentos where Processo =:pProcesso ');
         sql.add('and Tipo_Doc = "PROC" AND Sub_Tipo_Doc ="1" ');
         ParamByName('pProcesso').AsString:=ME_nossaref.Text;
         Open;
         if  RecordCount = 0 then
         begin
             ShowMessage(v_usuario+', Processo indisponível por falta de invoice.');
             exit;
         end;
       end;
   end
   else
   begin
       with q_Documentos do
       begin
         close;
         sql.Clear;
         sql.Add('select Sub_Tipo_Doc, Numero_Doc from Documentos where Processo =:pProcesso ');
         sql.add('and Tipo_Doc = "PROC" AND Sub_Tipo_Doc IN ("1","2","7")');
         ParamByName('pProcesso').AsString:=ME_nossaref.Text;
         Open;
         if  RecordCount = 0 then
         begin
             ShowMessage(v_usuario+', Processo indisponível por falta de documentos do tipo invoice, packlist ou conhecimento.');
             exit;
         end;
       end;
   end;
   if MessageDlg(v_usuario+', Confima a atualização do Siscomex DSI?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin


       ////alterei DSI
       {
       {atualizar tributacao
       t_tributositem.open;
       t_tributositem.first;
       q_tributacao.close;
       q_tributacao.params[0].asstring := me_nossaref.text;
       q_tributacao.open;
       vseqdsi := 0;
       while not q_tributacao.eof do begin
             vseqdsi := vseqdsi+1;
       if t_tributositem.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,q_tributacaofatura.asstring,q_tributacaosequencial_item.asstring,q_tributacaosequencial.asstring]) then begin

             T_tributositem.edit;
             T_tributositemADICAO.asstring := copy('000'+inttostr(vseqdsi),length('000'+inttostr(vseqdsi))-2,3);
             T_tributositemseq_ADICAO.asstring := '0';
             T_tributositem.post;
//             showmessage(inttostr(vseqdsi));

       end;
       q_tributacao.next;
       end;

       t_tributositem.close;
       q_tributacao.close;  }




//      verprodutos := true;
//      if MessageDlg(v_usuario+', ATENÇÃO!!! Atualiza descrição da mercadoria conforme a FATURA?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then verprodutos := false;

      if t_processos.state = dsInactive then t_processos.open;
      if t_faturas.state = dsInactive then t_faturas.open;
      if t_transpprocesso.state = dsInactive then t_transpprocesso.open;
      if t_transportadores.state = dsInactive then t_transportadores.open;

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

      if T_processostipo_declaracao.asstring='05' then T_DSI_DGCD_TIPO_NATUREZA.asinteger := 9
      else begin
           if MessageDlg(v_usuario+', Este processo é com Cobertura Cambial?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
              T_DSI_DGCD_TIPO_NATUREZA.asinteger := 3
           else T_DSI_DGCD_TIPO_NATUREZA.asinteger := 4;
      end;    

      T_DSI_DGQT_ADICAO_DSI.asinteger := 0;
      T_DSI_DGCD_TIPO_IMPORTADOR.asstring :='1';
      t_importadores.first;
      t_importadores.findkey([q_processosempresa.asstring,q_processosfilial.asstring,t_processosImportador.asstring]);
      if t_importadorestipo_importador.asstring<>'' then T_DSI_DGCD_TIPO_IMPORTADOR.asstring    := t_importadorestipo_importador.asstring;
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
        if rdgRefTaxaConversao.ItemIndex = 0 then
        begin
            if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]) then
               T_DSI_DGVL_TOTAL_FRETE_MN.asfloat      := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*t_taxaconvtaxa_conversao.asfloat);
            if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
               T_DSI_DGVL_TOTAL_SEG_MN.asfloat        := (T_transpprocessoValor_Seguro.asfloat*t_taxaconvtaxa_conversao.asfloat);
        end
        else
        begin
            if T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]) then
               T_DSI_DGVL_TOTAL_FRETE_MN.asfloat      := (((T_transpprocessoFrete_Prepaid.asfloat+T_transpprocessoFrete_Collect.asfloat)-T_transpprocessoFrete_Ter_Nac.asfloat)*T_taxaconvDeAmanhataxa_conversao.asfloat);
            if T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Seguro.asstring]) then
               T_DSI_DGVL_TOTAL_SEG_MN.asfloat        := (T_transpprocessoValor_Seguro.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
        end;
        if T_transpprocessoMoeda_Seguro.asstring<>'' then T_DSI_DGCD_MOEDA_SEGURO.asstring       := T_transpprocessoMoeda_Seguro.asstring;
        T_DSI_DGVL_TOT_SEGURO_MNEG.asfloat     := T_transpprocessoValor_Seguro.asfloat;

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
              if rdgRefTaxaConversao.ItemIndex = 0 then
                      t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring])
              else
                      T_taxaconvDeAmanha.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

          {somar vmle}
          t_itensfaturas.first;
          t_itensfaturas.findkey([q_processosempresa.asstring,q_processosfilial.asstring,me_nossaref.text,t_faturascodigo.asstring]);
          while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = q_processosempresa.asstring) and (T_itensfaturasFilial.asstring = q_processosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascodigo.asstring) do begin
                v_totfatm := v_totfatm+t_itensfaturasvmle.AsFloat;
                if rdgRefTaxaConversao.ItemIndex = 0 then
                        v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*t_taxaconvtaxa_conversao.asfloat)
                else
                        v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
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
      qtotii  := 0;
      qtotipi := 0;
      qtotpis := 0;
      qtotcof := 0;
      while not q_bens.eof do begin
            processamento('Aguarde... Atualizando SISCOMEX DSI... Bens e tributação',100,false);
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
            T_DSI_BENSCD_PAIS_ORIG_MERC.asstring  := q_bensPais.asstring;

            ////T_DSI_BENSIN_MERCOSUL: TBooleanField;
            T_DSI_BENSIN_MATERIAL_USADO.asboolean := (q_bensin_material_usado.asinteger=1);
            T_DSI_BENSNM_UN_MEDID_ESTAT.asstring  := q_bensdescr_ume.asstring;
            if (q_benspeso_libra.asinteger=1) then begin
            if q_bensunidade_medida_estat.asstring='10' then
               T_DSI_BENSQT_UN_ESTATISTICA.asfloat   := (q_benspeso_total_acertado.asfloat*0.4536)
            else T_DSI_BENSQT_UN_ESTATISTICA.asfloat   := q_bensquantidade.asfloat;
            end
            else begin
            if q_bensunidade_medida_estat.asstring='10' then
               T_DSI_BENSQT_UN_ESTATISTICA.asfloat   := q_benspeso_total_acertado.asfloat
            else T_DSI_BENSQT_UN_ESTATISTICA.asfloat   := q_bensquantidade.asfloat;
            end;
            T_DSI_BENSNM_UN_MEDID_COMERC.asstring := q_bensdescr_um.asstring;
            T_DSI_BENSQT_MERC_UN_COMERC.asfloat   := q_bensquantidade.asfloat;
            T_DSI_BENSPB_BEM.asfloat              := 0;
            if (q_benspeso_libra.asinteger=1) then
               T_DSI_BENSPL_BEM.asfloat              := (q_benspeso_total_acertado.asfloat*0.4536)
            else
               T_DSI_BENSPL_BEM.asfloat              := q_benspeso_total_acertado.asfloat;
            T_DSI_BENSVL_UNID_LOC_EMB.asfloat     := (q_bensVMLE.asfloat/q_bensQUANTIDADE.asfloat); ///q_bensvalorunitrio.asfloat;
            T_DSI_BENSVL_MERC_LOC_EMB.asfloat     := q_bensVMLE.asfloat;///q_bensvalor_total.asfloat;
            T_DSI_BENSCD_MOEDA_NEGOCIADA.asstring := q_bensmoeda.asstring;
            if rdgRefTaxaConversao.ItemIndex = 0 then
            begin
                    T_DSI_BENSVL_ADUANEIRO.asfloat        := (q_bensvalor_total.asfloat*t_taxaconvtaxa_conversao.asfloat);
                    T_DSI_BENSVL_FRETE_MERC_MN.asfloat    := (((q_bensrateio_Frete_Prepaid.asfloat+q_bensrateio_Frete_Collect.asfloat)-q_bensrateio_Frete_TerNac.asfloat)*t_taxaconvtaxa_conversao.asfloat)*q_bensquantidade.asfloat;
                    T_DSI_BENSVL_SEG_MERC_MN.asfloat      := (q_bensrateio_seguro.asfloat*t_taxaconvtaxa_conversao.asfloat)*q_bensquantidade.asfloat;
                    t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,q_bensmoeda.asstring]);
                    T_DSI_BENSVL_MERC_EMB_MN.asfloat      := q_bensvalor_total.asfloat*t_taxaconvtaxa_conversao.asfloat;
            end
            else
            begin
                    T_DSI_BENSVL_ADUANEIRO.asfloat        := (q_bensvalor_total.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
                    T_DSI_BENSVL_FRETE_MERC_MN.asfloat    := (((q_bensrateio_Frete_Prepaid.asfloat+q_bensrateio_Frete_Collect.asfloat)-q_bensrateio_Frete_TerNac.asfloat)*T_taxaconvDeAmanhaTaxa_conversao.asfloat)*q_bensquantidade.asfloat;
                    T_DSI_BENSVL_SEG_MERC_MN.asfloat      := (q_bensrateio_seguro.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat)*q_bensquantidade.asfloat;
                    T_taxaconvDeAmanha .findkey([v_empresa,v_filial,me_nossaref.text,q_bensmoeda.asstring]);
                    T_DSI_BENSVL_MERC_EMB_MN.asfloat      := q_bensvalor_total.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat;
            end;

            ///T_DSI_BENSVL_FRETE_MERC_MNEG.asfloat  :=
            ///T_DSI_BENSCD_MD_FRETE_MERC.asstring   :=
            ///if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]) then


            ///T_DSI_BENSVL_SEG_MERC_DOLAR.asfloat   :=
            ///if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_seguro.asstring]) then


            ///T_DSI_BENSVL_MERC_EMB_DOLAR.asfloat   :=
            ///michele alterou
            T_DSI_BENSVL_ADUANEIRO.asfloat        := (T_DSI_BENSVL_ADUANEIRO.asfloat+T_DSI_BENSVL_FRETE_MERC_MN.asfloat+T_DSI_BENSVL_SEG_MERC_MN.asfloat);

            q_descricao := trim(q_bensdesc.asstring);
            {4257 - Leandro Serra}
            qrConhecimento.Close;
            qrConhecimento.ParamByName('pProcesso').asString := ME_nossaref.text;
            qrConhecimento.Open;

            if qrConhecimentoAutorizacao_Marinha.AsString <> '' then
                         q_descricao := q_descricao+ ' AM['+qrConhecimentoAutorizacao_Marinha.AsString +']AM ';
            qrConhecimento.Close;             
            {4258 - Leandro Serra 02/04/2013}
            if q_bensProduto.asstring<>'' then
            begin
                  if t_processosImportador.AsString = '126' then
                       q_descricao := q_descricao+' Part.Number: #PN='+q_detalheProduto.asstring+'#'
                  else if (t_processosImportador.AsString = '252') or (t_processosImportador.AsString = '265')  then {4257 - Leandro Serra 10/04/2013}
                       q_descricao := q_descricao+' Part.Number: PN['+q_detalheProduto.asstring+']PN'
                  else
                       q_descricao := q_descricao+' Part.Number: '+q_bensProduto.asstring;
            end;
            if ((q_bensnumero_serie.asstring<>'') and (q_bensnumero_serie.asstring<>'.') ) then
            begin
                if t_processosImportador.AsString = '126' then
                        q_descricao := q_descricao+' Nº. Serie: #SN='+q_detalhenumero_serie.asstring + '#'
                else if (t_processosImportador.AsString = '252') or (t_processosImportador.AsString = '265') then
                        q_descricao := q_descricao+' Nº. Serie: SN['+q_detalhenumero_serie.asstring + ']SN'
                else
                        q_descricao := q_descricao+' Nº. Serie: '+q_bensnumero_serie.asstring;
            end;
            if q_benscertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_benscertificado_origem.asstring;
            if q_bensreferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_bensreferencia.asstring;
               if ((q_bensreferencia_projeto.asstring<>'') and (q_bensreferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_bensreferencia_projeto.asstring;
               if q_processosfilial.asstring = 'CWB' then begin
                  if ((q_bensPO.asstring<>'') and (q_bensPO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_bensPO.asstring;
                  if ((q_bensseqPO.asstring<>'') and (q_bensseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_bensseqPO.asstring;
               end;
               q_descricao := q_descricao+' Fatura: '+q_bensFatura.asstring+' Pagina: '+q_bensPagina.asstring+' Linha: '+inttostr(q_bensqseq.asinteger);


            T_DSI_BENSTX_DESC_DET_MERC.asstring := q_descricao;

            T_DSI_BENSVL_ALIQ_ICMS.Asfloat := (q_bensaliq_icms.asfloat+q_bensaliq_icms_extra.asfloat);

            IF q_bensCD_REGIME_TRIBUTAR_PISCOFINS.AsString<>'' THEN
               T_DSI_BENSCD_REGIME_TRIBUTAR_PISCOFINS.AsString := q_bensCD_REGIME_TRIBUTAR_PISCOFINS.AsString;

            IF (q_bensCD_FUND_LEG_REGIME_PISCOFINS.AsString<>'') AND (q_bensCD_FUND_LEG_REGIME_PISCOFINS.AsString<>NULL) THEN
               T_DSI_BENSCD_FUND_LEG_REGIME_PISCOFINS.AsString := q_bensCD_FUND_LEG_REGIME_PISCOFINS.AsString;

            T_DSI_BENS.post;


            T_DSI_TRIB.append;
            T_DSI_TRIBCD_DSI_MICRO.asstring          := me_nossaref.text;
            T_DSI_TRIBNR_BEM.asinteger               := seqbem;
            T_DSI_TRIBPC_ALIQ_NORM_ADVAL_II.asfloat  := q_bensAliq_ncm_II.asfloat;
            if rdgRefTaxaConversao.ItemIndex = 0 then
            begin
                T_DSI_TRIBVL_IMPOSTO_DEVIDO_II.asfloat   := (q_bensValor_II_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
                T_DSI_TRIBVL_IPT_A_RECOLHER_II.asfloat   := (q_bensValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
                T_DSI_TRIBVL_BASE_CALC_ADVAL_II.asfloat  := ((q_bensBase_Calc_II.asfloat*(q_bensAliq_NCM_II.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
                T_DSI_TRIBVL_IMPOSTO_DEVIDO_IPI.asfloat  := (q_bensValor_IPI_Devido.asfloat*t_taxaconvtaxa_conversao.asfloat);
                T_DSI_TRIBVL_IPT_A_RECOLHER_IPI.asfloat  := (q_bensValor_IPI_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
                T_DSI_TRIBVL_BASE_CALC_ADVAL_IPI.asfloat := ((q_bensBase_Calc_IPI.asfloat*(q_bensAliq_NCM_IPI.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
                qtotii := qtotii+(q_bensValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
                qtotipi := qtotipi+(q_bensValor_IPI_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
            end
            else
            begin
                T_DSI_TRIBVL_IMPOSTO_DEVIDO_II.asfloat   := (q_bensValor_II_Devido.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
                T_DSI_TRIBVL_IPT_A_RECOLHER_II.asfloat   := (q_bensValor_II_a_recolher.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
                T_DSI_TRIBVL_BASE_CALC_ADVAL_II.asfloat  := ((q_bensBase_Calc_II.asfloat*(q_bensAliq_NCM_II.asfloat/100))*T_taxaconvDeAmanhataxa_conversao.asfloat);
                T_DSI_TRIBVL_IMPOSTO_DEVIDO_IPI.asfloat  := (q_bensValor_IPI_Devido.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
                T_DSI_TRIBVL_IPT_A_RECOLHER_IPI.asfloat  := (q_bensValor_IPI_a_recolher.asfloat*T_taxaconvDeAmanhataxa_conversao.asfloat);
                T_DSI_TRIBVL_BASE_CALC_ADVAL_IPI.asfloat := ((q_bensBase_Calc_IPI.asfloat*(q_bensAliq_NCM_IPI.asfloat/100))*T_taxaconvDeAmanhataxa_conversao.asfloat);
                qtotii := qtotii+(q_bensValor_II_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
                qtotipi := qtotipi+(q_bensValor_IPI_a_recolher.asfloat*t_taxaconvtaxa_conversao.asfloat);
            end;
            T_DSI_TRIBPC_ALIQ_NORM_ADVAL_IPI.asfloat := q_bensAliq_ncm_IPI.asfloat;
            T_DSI_TRIBPC_ALIQ_NORM_ADVAL_IPI.asfloat := q_bensAliq_ncm_IPI.asfloat;
            T_DSI_TRIBVL_BASE_CALC_ADVAL_PISCOF.asfloat := q_bensbasec_piscofins.asfloat;
            T_DSI_TRIBPC_ALIQ_NORM_ADVAL_PIS.asfloat    := q_bensaliq_pis_pasep.asfloat;
//            T_DSI_TRIBVL_ALIQ_ESPEC_PIS.asfloat         := 0;
//            T_DSI_TRIBNM_UN_ALIQ_ESPEC_PIS.asstring :=
 //           T_DSI_TRIBQT_MERC_UN_ALIQ_ESPEC_PIS.asfloat := 0;
            T_DSI_TRIBVL_IMPOSTO_CALCULADO_PIS.asfloat  := q_bensvalor_pis_pasep.asfloat;
            T_DSI_TRIBVL_IMPOSTO_DEVIDO_PIS.asfloat     := q_bensvalor_pis_pasep.asfloat;
            T_DSI_TRIBVL_IPT_A_RECOLHER_PIS.asfloat  := 0;
            if (q_bensCD_REGIME_TRIBUTAR_PISCOFINS.asstring='1') or ((q_bensCD_REGIME_TRIBUTAR_PISCOFINS.asstring='4') AND (q_bensPC_ALIQ_REDUZIDA_PIS.asfloat>0)) then begin
               T_DSI_TRIBVL_IPT_A_RECOLHER_PIS.asfloat     := q_bensvalor_pis_pasep.asfloat;
               qtotpis := qtotpis+q_bensvalor_pis_pasep.asfloat;
             end;


///            if ((q_benstributosCD_REGIME_TRIBUTAR_PISCOFINS.asstring='4') and (q_tributosPC_ALIQ_REDUZIDA_PIS.asfloat>-1)) then begin
///               T_tributoPC_ALIQ_REDUZIDA.asfloat := q_tributosPC_ALIQ_REDUZIDA_PIS.asfloat;
///            end;

            T_DSI_TRIBPC_ALIQ_NORM_ADVAL_COF.asfloat    := q_bensaliq_cofins.asfloat;
 //           T_DSI_TRIBVL_ALIQ_ESPEC_COF.asfloat         := 0;
//            T_DSI_TRIBNM_UN_ALIQ_ESPEC_COF.asstring :=
 //           T_DSI_TRIBQT_MERC_UN_ALIQ_ESPEC_COF.asfloat := 0;
            T_DSI_TRIBVL_IMPOSTO_CALCULADO_COF.asfloat  := q_bensvalor_cofins.asfloat;
            T_DSI_TRIBVL_IMPOSTO_DEVIDO_COF.asfloat     := q_bensvalor_cofins.asfloat;
//            T_DSI_TRIBVL_IPT_A_RECOLHER_COF.asfloat     := q_bensvalor_cofins.asfloat;

            T_DSI_TRIBVL_IPT_A_RECOLHER_COF.asfloat  := 0;
            if (q_bensCD_REGIME_TRIBUTAR_PISCOFINS.asstring='1') or ((q_bensCD_REGIME_TRIBUTAR_PISCOFINS.asstring='4') AND (q_bensPC_ALIQ_REDUZIDA_PIS.asfloat>0)) then begin
               T_DSI_TRIBVL_IPT_A_RECOLHER_COF.asfloat     := q_bensvalor_cofins.asfloat;
               qtotcof := qtotcof+q_bensvalor_cofins.asfloat;
             end;
            T_DSI_TRIB.post;
         q_bens.next;
      end;
      processamento('Aguarde... Atualizando SISCOMEX DSI... Bens e tributação',100,true);
      T_DSI_BENS.close;
      q_bens.close;

            T_DSI_DG.edit;
            T_DSI_DGVL_TOTAL_II_CALC.asfloat     :=   qtotii;
            T_DSI_DGVL_TOTAL_IPI_CALC.asfloat    :=   qtotipi;
            T_DSI_DGVL_TOTAL_II_A_REC.asfloat    :=   qtotii;
            T_DSI_DGVL_TOTAL_IPI_A_REC.asfloat   :=   qtotipi;

            T_DSI_DGVL_TOT_TRIB_A_REC.asfloat     := (qtotii+qtotipi+qtotpis+qtotcof);

            T_DSI_DGVL_TOTAL_PIS_CALC.asfloat     := qtotpis;
            T_DSI_DGVL_TOTAL_COFINS_CALC.asfloat  := qtotcof;
            T_DSI_DGVL_TOTAL_PIS_A_REC.asfloat    := qtotpis;
            T_DSI_DGVL_TOTAL_COFINS_A_REC.asfloat := qtotcof;
            T_DSI_DG.post;
            T_DSI_DG.close;

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
            processamento('Aguarde... Atualizando SISCOMEX DSI... Embalagens de Cargas',100,false);
            T_DSI_VOLUMES.append;
            T_DSI_VOLUMESCD_DSI_MICRO.asstring      := me_nossaref.text;
            T_DSI_VOLUMESNR_SEQUENCIAL.asinteger    := v_num_seq;
            T_DSI_VOLUMESCD_TIPO_EMBALAGEM.asstring := q_embcargaTipoEmbalagem.asstring;
            T_DSI_VOLUMESQT_VOLUME_CARGA.asstring   := q_embcargaQuantidade.asstring;
            v_num_seq := v_num_seq +1;
            T_DSI_VOLUMES.post;
            q_embcarga.next;
      end;
      processamento('Aguarde... Atualizando SISCOMEX DSI... Embalagens de Cargas',100,true);
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
end;
end;

procedure TF_prodidsi.b_propisClick(Sender: TObject);
var qtaxaOT,qtaxasis,va_total,aliq_icms,aliq_icms_extra,v_fator,qva:real;
    i,apri,b:integer;
    renumera,achou_vida:boolean;
    q_suspe_II,q_suspe_IPI, sql_update:string;

    q_NCM: string;
    q_VA:real;
    q_OT:real;
    q_DA:real;
    q_Aliq_NCM_II:real;
    q_Aliq_NCM_IPI:real;
    q_Aliq_PIS_PASEP:real;
    q_Aliq_COFINS:real;
    q_Aliq_ICMS:real;
    q_Aliq_ICMS_EXTRA:real;
    q_BASEC_PISCOFINS:real;
    q_BASEC_ICMS:real;
    q_VALOR_II:real;
    q_VALOR_IPI:real;
    q_VALOR_ICMS:real;
    q_VALOR_ICMS_EXTRA:real;
    q_VALOR_PIS_PASEP:real;
    q_VALOR_COFINS:real;
    q_Prazo_permanencia:integer;
    q_VA_proporcional:real;
    q_Aliq_NCM_II_proporcional:real;
    q_Aliq_NCM_IPI_proporcional:real;
    q_FOB:real;


begin
cancela_atualizacao :=false;

if (v_AlteraPRO=1) then begin

///showmessage(q_processosurf_chegada.asstring);
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

if t_itensfaturas.state = dsInactive then t_itensfaturas.open;
if t_tributositem.state = dsInactive then t_tributositem.open;
if t_taxaconv.state = dsInactive then t_taxaconv.open;
if T_taxaconvDeAmanha.state = dsInactive then T_taxaconvDeAmanha.open;
if t_acrescimos.state = dsInactive then t_acrescimos.open;
if t_importadores.state = dsInactive then t_importadores.open;
if t_numerador.state = dsInactive then t_numerador.open;
if T_ncm_vutil.state = dsInactive then T_ncm_vutil.open;
if T_ncm.state = dsInactive then T_ncm.open;

{atualiza capa da di}
atualizadi(b_atualizasiscomex);///atualizadi(f_prodidsi);
if   cancela_atualizacao then exit;

renumera := false;
q_tributa := true;
if t_processostipo_declaracao.asstring='12' then begin
   if MessageDlg('Calcula somente CONSUMO - RECOLHIMENTO INTEGRAL?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
      q_incpiscofins.Params[1].asstring := 'x';
      q_tributa := false;
   end
   else  q_incpiscofins.Params[1].asstring := '5';
   if MessageDlg('Renumera adições para gerar Complementares de Consumo?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then renumera := true;
end;


q_propis.Close;

processamento('Aguarde... Inserindo Tabela do Pis/Cofins...',0,false);
q_excpiscofins.Params[0].asstring := me_nossaref.text;
q_excpiscofins.ExecSQL;
{4103 - Leandro Serra 26/03/2013}
if rdgRefTaxaConversao.ItemIndex = 1 then
begin
  {Utiliza a tabela Processos_Taxas_ConversaoDoDiaSeguinte}
  q_incpiscofins_ds.Params[0].asstring := v_empresa;
  q_incpiscofins_ds.Params[1].asstring := v_filial;
  q_incpiscofins_ds.Params[2].asstring := me_nossaref.text;
  q_incpiscofins_ds.ExecSQL;
end
else
begin
  q_incpiscofins.Params[0].asstring := v_empresa;
  q_incpiscofins.Params[1].asstring := v_filial;
  q_incpiscofins.Params[2].asstring := me_nossaref.text;
  q_incpiscofins.ExecSQL;
end;
{Fim 4103 - Leandro Serra 26/03/2013}
//showmessage('inseri piscofins');
q_propis.open;


processamento('Aguarde... Inserindo Tabela do Pis/Cofins...',0,true);

    qtaxasis := 185;
    //if q_processostaxa_siscomex.asfloat>0 then
       //qtaxasis := q_processostaxa_siscomex.asfloat
    //else begin

        q_pagtributos.Close;
        q_pagtributos.Params[0].AsString := q_processosempresa.asstring;
        q_pagtributos.Params[1].AsString := q_processosfilial.asstring;
        q_pagtributos.Params[2].AsString := me_nossaref.text;
        q_pagtributos.open;

        while not q_pagtributos.eof do begin
            processamento('Aguarde... Calculando Taxa Siscomex...',100,false);

            for i := 1 to strtoint(q_pagtributosnadicoes.asstring) do begin
                if ((i >= 1 )  and (i <= 2 ))  then  qtaxasis := qtaxasis+29.50;
                if ((i >= 3 )  and (i <= 5 ))  then  qtaxasis := qtaxasis+23.60;
                if ((i >= 6 )  and (i <= 10 )) then  qtaxasis := qtaxasis+17.70;
                if ((i >= 11)  and (i <= 20))  then  qtaxasis := qtaxasis+11.80;
                if ((i >= 21)  and (i <= 50))  then  qtaxasis := qtaxasis+5.90;
                if (i >= 51) then  qtaxasis := qtaxasis+2.95;
            end;

            q_pagtributos.next;

        end;
        processamento('Aguarde... Calculando Taxa Siscomex...',100,true);
        sql_update := 'UPDATE Processos_registro_impostos SET Taxa_SISCOMEX = ' + StringReplace(trim(floattostrf(qtaxasis,ffFixed,15,2)),',','.',[rfReplaceAll, rfIgnoreCase]) + ' WHERE Processo = "' + me_nossaref.text + '" ';
        //if q_update_processo_taxasiscomex.Active = true then
        //        q_update_processo_taxasiscomex.Active := false;
        q_update_processo_taxasiscomex.sql.Clear;
        q_update_processo_taxasiscomex.sql.Add(sql_update);
        q_update_processo_taxasiscomex.ExecSQL;
        //q_update_processo_taxasiscomex.Active := true;
    //end;


    /// soma o va
    q_propis.first;
    va_total := 0;
    while not q_propis.eof do begin

    q_NCM := q_propisNCM.asstring;
    q_VA  := q_propisVA.asfloat;
    q_OT  := q_propisOT.asfloat;
    q_DA  := q_propisDA.asfloat;
    q_Aliq_NCM_II := q_propisAliq_NCM_II.asfloat;
    q_Aliq_NCM_IPI  := q_propisAliq_NCM_IPI.asfloat;
    q_Aliq_PIS_PASEP := q_propisAliq_PIS_PASEP.asfloat;
    q_Aliq_COFINS := q_propisAliq_COFINS.asfloat;
    q_Aliq_ICMS := q_propisAliq_ICMS.asfloat;
    q_Aliq_ICMS_EXTRA := q_propisAliq_ICMS_EXTRA.asfloat;
    q_BASEC_PISCOFINS  := q_propisBASEC_PISCOFINS.asfloat;
    q_BASEC_ICMS  := q_propisBASEC_ICMS.asfloat;
    q_VALOR_II  := q_propisVALOR_II.asfloat;
    q_VALOR_IPI := q_propisVALOR_IPI.asfloat;
    q_VALOR_ICMS := q_propisVALOR_ICMS.asfloat;
    q_VALOR_ICMS_EXTRA := q_propisVALOR_ICMS_EXTRA.asfloat;
    q_VALOR_PIS_PASEP := q_propisVALOR_PIS_PASEP.asfloat;
    q_VALOR_COFINS := q_propisVALOR_COFINS.asfloat;
    q_Prazo_permanencia := q_propisPrazo_permanencia.asinteger;
    q_VA_proporcional := q_propisVA_proporcional.asfloat;
    q_Aliq_NCM_II_proporcional := q_propisAliq_NCM_II_proporcional.asfloat;
    q_Aliq_NCM_IPI_proporcional := q_propisAliq_NCM_IPI_proporcional.asfloat;
    q_FOB := q_propisFOB.asfloat;


          processamento('Aguarde... Calculando Pis / Cofins...',q_propis.recordcount,false);
          ////alterei 24/09/2004 - para cáculos do "proporcional" ex:02512/04
          qva := q_propisva.asfloat;
          if (q_propisprazo_permanencia.asinteger>0) then begin

{             ////achar a vida útil
             achou_vida := false;
             b:=8;
             while (not achou_vida) and (b>0) do begin
                   if t_ncm_vutil.findkey([copy(q_propisncm.asstring,1,b)]) then achou_vida := true;
                   b:=b-1;
             end;
             if achou_vida then begin
                ///v_fator := (1-(((12*t_ncm_vutilvida_util.asfloat)-strtofloat(me_prazo.text))/(12*12*t_ncm_vutilvida_util.asfloat)));
                v_fator := (strtofloat(q_propisprazo_permanencia.asstring)/(12*t_ncm_vutilvida_util.asfloat));
}
                v_fator := (q_propisprazo_permanencia.asfloat/100);


                ///2809-mm
                //t_propis.edit;
                //t_propisva_proporcional.asfloat := (t_propisva.asfloat*v_fator);
                //t_propisaliq_ncm_ii_proporcional.asfloat := (t_propisaliq_ncm_ii.asfloat*v_fator);
                //t_propisaliq_ncm_ipi_proporcional.asfloat := (t_propisaliq_ncm_ipi.asfloat*v_fator);
                //t_propis.post;
                //qva := t_propisva_proporcional.asfloat

                q_VA_proporcional             := (q_propisva.asfloat*v_fator);
                q_Aliq_NCM_II_proporcional    := (q_propisaliq_ncm_ii.asfloat*v_fator);
                q_Aliq_NCM_IPI_proporcional   := (q_propisaliq_ncm_ipi.asfloat*v_fator);

                q_uppropis.Params[0].asstring  := q_NCM;
                q_uppropis.Params[1].asstring  := stringreplace(floattostr(q_VA),',','.',[]);
                q_uppropis.Params[2].asstring  := stringreplace(floattostr(q_OT),',','.',[]);
                q_uppropis.Params[3].asstring  := stringreplace(floattostr(q_DA),',','.',[]);
                q_uppropis.Params[4].asstring  := stringreplace(floattostr(q_Aliq_NCM_II),',','.',[]);
                q_uppropis.Params[5].asstring  := stringreplace(floattostr(q_Aliq_NCM_IPI),',','.',[]);
                q_uppropis.Params[6].asstring  := stringreplace(floattostr(q_Aliq_PIS_PASEP),',','.',[]);
                q_uppropis.Params[7].asstring  := stringreplace(floattostr(q_Aliq_COFINS),',','.',[]);
                q_uppropis.Params[8].asstring  := stringreplace(floattostr(q_Aliq_ICMS),',','.',[]);
                q_uppropis.Params[9].asstring  := stringreplace(floattostr(q_Aliq_ICMS_EXTRA),',','.',[]);
                q_uppropis.Params[10].asstring := stringreplace(floattostr(q_BASEC_PISCOFINS),',','.',[]);
                q_uppropis.Params[11].asstring := stringreplace(floattostr(q_BASEC_ICMS),',','.',[]);
                q_uppropis.Params[12].asstring := stringreplace(floattostr(q_VALOR_II),',','.',[]);
                q_uppropis.Params[13].asstring := stringreplace(floattostr(q_VALOR_IPI),',','.',[]);
                q_uppropis.Params[14].asstring := stringreplace(floattostr(q_VALOR_ICMS),',','.',[]);
                q_uppropis.Params[15].asstring := stringreplace(floattostr(q_VALOR_ICMS_EXTRA),',','.',[]);
                q_uppropis.Params[16].asstring := stringreplace(floattostr(q_VALOR_PIS_PASEP),',','.',[]);
                q_uppropis.Params[17].asstring := stringreplace(floattostr(q_VALOR_COFINS),',','.',[]);
                q_uppropis.Params[18].asstring := stringreplace(floattostr(q_Prazo_permanencia),',','.',[]);
                q_uppropis.Params[19].asstring := stringreplace(floattostr(q_VA_proporcional),',','.',[]);
                q_uppropis.Params[20].asstring := stringreplace(floattostr(q_Aliq_NCM_II_proporcional),',','.',[]);
                q_uppropis.Params[21].asstring := stringreplace(floattostr(q_Aliq_NCM_IPI_proporcional),',','.',[]);
                q_uppropis.Params[22].asstring := stringreplace(floattostr(q_FOB),',','.',[]);
                q_uppropis.Params[23].Asstring := q_propisprocesso.asstring;
                q_uppropis.Params[24].Asstring := q_propisadicao.asstring;
                q_uppropis.ExecSQL;

                qva := q_VA_proporcional;

         end;

         va_total := va_total+qva;

         ///mm 13122007 alterando aliquotas de pis e cofins por NCM - JOAO MARCOS CURITIBA
        if v_filial='CWB' then begin
        if ((q_propisNCM.asstring='40161000') or
       (q_propisNCM.asstring='40161010') or
       (q_propisNCM.asstring=    '40161090') or
       (q_propisNCM.asstring=    '40169900') or
       (q_propisNCM.asstring=    '40169990') or
       (q_propisNCM.asstring=    '68132000') or
       (q_propisNCM.asstring=    '68138190') or
       (q_propisNCM.asstring=    '68138910') or
       (q_propisNCM.asstring=    '68138990') or
       (q_propisNCM.asstring=    '73201000') or
       (q_propisNCM.asstring=    '83012000') or
       (q_propisNCM.asstring=    '83023000') or
       (q_propisNCM.asstring=    '84073390') or
       (q_propisNCM.asstring=    '84073490') or
       (q_propisNCM.asstring=    '84131100') or
       (q_propisNCM.asstring=    '84139100') or
       (q_propisNCM.asstring=    '84148021') or
       (q_propisNCM.asstring=    '84148022') or
       (q_propisNCM.asstring=    '84152000') or
       (q_propisNCM.asstring=    '84159000') or
       (q_propisNCM.asstring=    '84212300') or
       (q_propisNCM.asstring=    '84213100') or
       (q_propisNCM.asstring=    '84314100') or
       (q_propisNCM.asstring=    '84314200') or
       (q_propisNCM.asstring=    '84339090') or
       (q_propisNCM.asstring=    '84818099') or
       (q_propisNCM.asstring=    '84831000') or
       (q_propisNCM.asstring=    '84832000') or
       (q_propisNCM.asstring=    '84833000') or
       (q_propisNCM.asstring=    '84834000') or
       (q_propisNCM.asstring=    '84835000') or
       (q_propisNCM.asstring=    '85052000') or
       (q_propisNCM.asstring=    '85052090') or
       (q_propisNCM.asstring=    '85071000') or
       (q_propisNCM.asstring=    '85111000') or
       (q_propisNCM.asstring=    '85113020') or
       (q_propisNCM.asstring=    '85115090') or
       (q_propisNCM.asstring=    '85119000') or
       (q_propisNCM.asstring=    '85122000') or
       (q_propisNCM.asstring=    '85123000') or
       (q_propisNCM.asstring=    '85124000') or
       (q_propisNCM.asstring=    '85129000') or
       (q_propisNCM.asstring=    '85272000') or
       (q_propisNCM.asstring=    '85365090') or
       (q_propisNCM.asstring=    '85391000') or
       (q_propisNCM.asstring=    '85443000') or
       (q_propisNCM.asstring=    '87060000') or
       (q_propisNCM.asstring=    '87070000') or
       (q_propisNCM.asstring=    '87082999') or
       (q_propisNCM.asstring=    '87089990') or
       (q_propisNCM.asstring=    '90292010') or
       (q_propisNCM.asstring=    '90299010') or
       (q_propisNCM.asstring=    '90303921') or
       (q_propisNCM.asstring=    '90318040') or
       (q_propisNCM.asstring=    '90318060') or
       (q_propisNCM.asstring=    '91040000') or
       (q_propisNCM.asstring=    '94012000')) then begin

        /// passar para sql
        //t_propis.edit;
        //t_propisAliq_PIS_PASEP.asfloat := 2.30;
        //t_propisAliq_COFINS.asfloat    := 10.80;
        //t_propis.post;
        ///
                q_Aliq_PIS_PASEP := 2.30;///q_propisAliq_PIS_PASEP.asfloat;
                q_Aliq_COFINS := 10.80;///q_propisAliq_COFINS.asfloat;

                q_uppropis.Params[0].asstring  := q_NCM;
                q_uppropis.Params[1].asstring  := stringreplace(floattostr(q_VA),',','.',[]);
                q_uppropis.Params[2].asstring  := stringreplace(floattostr(q_OT),',','.',[]);
                q_uppropis.Params[3].asstring  := stringreplace(floattostr(q_DA),',','.',[]);
                q_uppropis.Params[4].asstring  := stringreplace(floattostr(q_Aliq_NCM_II),',','.',[]);
                q_uppropis.Params[5].asstring  := stringreplace(floattostr(q_Aliq_NCM_IPI),',','.',[]);
                q_uppropis.Params[6].asstring  := stringreplace(floattostr(q_Aliq_PIS_PASEP),',','.',[]);
                q_uppropis.Params[7].asstring  := stringreplace(floattostr(q_Aliq_COFINS),',','.',[]);
                q_uppropis.Params[8].asstring  := stringreplace(floattostr(q_Aliq_ICMS),',','.',[]);
                q_uppropis.Params[9].asstring  := stringreplace(floattostr(q_Aliq_ICMS_EXTRA),',','.',[]);
                q_uppropis.Params[10].asstring := stringreplace(floattostr(q_BASEC_PISCOFINS),',','.',[]);
                q_uppropis.Params[11].asstring := stringreplace(floattostr(q_BASEC_ICMS),',','.',[]);
                q_uppropis.Params[12].asstring := stringreplace(floattostr(q_VALOR_II),',','.',[]);
                q_uppropis.Params[13].asstring := stringreplace(floattostr(q_VALOR_IPI),',','.',[]);
                q_uppropis.Params[14].asstring := stringreplace(floattostr(q_VALOR_ICMS),',','.',[]);
                q_uppropis.Params[15].asstring := stringreplace(floattostr(q_VALOR_ICMS_EXTRA),',','.',[]);
                q_uppropis.Params[16].asstring := stringreplace(floattostr(q_VALOR_PIS_PASEP),',','.',[]);
                q_uppropis.Params[17].asstring := stringreplace(floattostr(q_VALOR_COFINS),',','.',[]);
                q_uppropis.Params[18].asstring := stringreplace(floattostr(q_Prazo_permanencia),',','.',[]);
                q_uppropis.Params[19].asstring := stringreplace(floattostr(q_VA_proporcional),',','.',[]);
                q_uppropis.Params[20].asstring := stringreplace(floattostr(q_Aliq_NCM_II_proporcional),',','.',[]);
                q_uppropis.Params[21].asstring := stringreplace(floattostr(q_Aliq_NCM_IPI_proporcional),',','.',[]);
                q_uppropis.Params[22].asstring := stringreplace(floattostr(q_FOB),',','.',[]);
                q_uppropis.Params[23].Asstring := q_propisprocesso.asstring;
                q_uppropis.Params[24].Asstring := q_propisadicao.asstring;
                q_uppropis.ExecSQL;

        end;
        end;
         q_propis.next;
    end;

    processamento('Aguarde... Calculando Pis / Cofins...',q_propis.recordcount,true);

    apri := 0;
    q_propis.close;
    q_propis.open;
    while not q_propis.eof do begin

         processamento('Aguarde... Calculando Pis/Cofins... Proporcional/suspensos...',q_propis.recordcount,false);

    q_NCM := q_propisNCM.asstring;
    q_VA  := q_propisVA.asfloat;
    q_OT  := q_propisOT.asfloat;
    q_DA  := q_propisDA.asfloat;
    q_Aliq_NCM_II := q_propisAliq_NCM_II.asfloat;
    q_Aliq_NCM_IPI  := q_propisAliq_NCM_IPI.asfloat;
    q_Aliq_PIS_PASEP := q_propisAliq_PIS_PASEP.asfloat;
    q_Aliq_COFINS := q_propisAliq_COFINS.asfloat;
    q_Aliq_ICMS := q_propisAliq_ICMS.asfloat;
    q_Aliq_ICMS_EXTRA := q_propisAliq_ICMS_EXTRA.asfloat;
    q_BASEC_PISCOFINS  := q_propisBASEC_PISCOFINS.asfloat;
    q_BASEC_ICMS  := q_propisBASEC_ICMS.asfloat;
    q_VALOR_II  := q_propisVALOR_II.asfloat;
    q_VALOR_IPI := q_propisVALOR_IPI.asfloat;
    q_VALOR_ICMS := q_propisVALOR_ICMS.asfloat;
    q_VALOR_ICMS_EXTRA := q_propisVALOR_ICMS_EXTRA.asfloat;
    q_VALOR_PIS_PASEP := q_propisVALOR_PIS_PASEP.asfloat;
    q_VALOR_COFINS := q_propisVALOR_COFINS.asfloat;
    q_Prazo_permanencia := q_propisPrazo_permanencia.asinteger;
    q_VA_proporcional := q_propisVA_proporcional.asfloat;
    q_Aliq_NCM_II_proporcional := q_propisAliq_NCM_II_proporcional.asfloat;
    q_Aliq_NCM_IPI_proporcional := q_propisAliq_NCM_IPI_proporcional.asfloat;
    q_FOB := q_propisFOB.asfloat;



         apri := apri+1;
//         if renumera then q_propisADICAO.asstring := copy('000'+inttostr(apri),length('000'+inttostr(apri))-2,3);

         q_suspe_II := '';
         q_suspe_IPI := '';
         if q_tributa then begin
         if q_piscofinstrib.Locate('Adicao',q_propisadicao.asstring,[loCaseInsensitive]) then begin
            if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe_II := ' -> (SUSPENSÃO)';
            if q_piscofinstribRegime_Tributacao_IPI.asstring='5' then q_suspe_IPI := ' -> (SUSPENSÃO)';

            /// verificando se é ISENÇÃO
            /// leandro dia 21/09/2006, solicitado por Jorge
            if q_piscofinstribRegime_Tributacao_II.asstring='3' then q_suspe_II := ' -> (ISENÇÃO)';
            if q_piscofinstribRegime_Tributacao_IPI.asstring='1' then q_suspe_IPI := ' -> (ISENÇÃO)';
         end;
         end;

         //MM 02/08/2006
         qtaxaOT := STRTOFLOAT(E_OT.TEXT);

          ///reducao e isencao
          if (q_prazo_permanencia<=0) then begin
             q_OT := q_va*(qtaxaOT/va_total);
             q_DA := q_va*(qtaxasis/va_total);

             if q_suspe_II='' then begin
                if ((q_valor_ii/q_va)*100)<>q_aliq_ncm_ii then begin
                   if (abs(((q_valor_ii/q_va)*100)-q_aliq_ncm_ii) > 0.1) then
                       q_aliq_ncm_ii := (q_valor_ii/q_va)*100;
                end;
             end
             else begin //// é suspenção

                  if q_suspe_II = ' -> (ISENÇÃO)' then begin
                     q_aliq_ncm_ii := 0;
                  end;
             end;
             if q_suspe_IPI='' then begin
                if ((q_valor_ipi/(q_va+q_valor_ii))+100)<>q_aliq_ncm_ipi then begin
                   if (abs(((q_valor_ipi/(q_va+q_valor_ii))*100)-q_aliq_ncm_ipi) > 0.1) then
                      q_aliq_ncm_ipi := (q_valor_ipi/(q_va+q_valor_ii))*100;
                end;
             end
             else begin //// é suspenção
               // t_propisaliq_ncm_ipi.asfloat := 0;
               if q_suspe_IPI = ' -> (ISENÇÃO)' then begin
                  q_aliq_ncm_ipi := 0;
               end;
             end;
          end
          else begin ////proporcional
               q_OT := q_va_proporcional*(qtaxaOT/va_total);
               q_DA := q_va_proporcional*(qtaxasis/va_total);
          end;

//          t_propis.post;

                q_uppropis.Params[0].asstring  := q_NCM;
                q_uppropis.Params[1].asstring  := stringreplace(floattostr(q_VA),',','.',[]);
                q_uppropis.Params[2].asstring  := stringreplace(floattostr(q_OT),',','.',[]);
                q_uppropis.Params[3].asstring  := stringreplace(floattostr(q_DA),',','.',[]);
                q_uppropis.Params[4].asstring  := stringreplace(floattostr(q_Aliq_NCM_II),',','.',[]);
                q_uppropis.Params[5].asstring  := stringreplace(floattostr(q_Aliq_NCM_IPI),',','.',[]);
                q_uppropis.Params[6].asstring  := stringreplace(floattostr(q_Aliq_PIS_PASEP),',','.',[]);
                q_uppropis.Params[7].asstring  := stringreplace(floattostr(q_Aliq_COFINS),',','.',[]);
                q_uppropis.Params[8].asstring  := stringreplace(floattostr(q_Aliq_ICMS),',','.',[]);
                q_uppropis.Params[9].asstring  := stringreplace(floattostr(q_Aliq_ICMS_EXTRA),',','.',[]);
                q_uppropis.Params[10].asstring := stringreplace(floattostr(q_BASEC_PISCOFINS),',','.',[]);
                q_uppropis.Params[11].asstring := stringreplace(floattostr(q_BASEC_ICMS),',','.',[]);
                q_uppropis.Params[12].asstring := stringreplace(floattostr(q_VALOR_II),',','.',[]);
                q_uppropis.Params[13].asstring := stringreplace(floattostr(q_VALOR_IPI),',','.',[]);
                q_uppropis.Params[14].asstring := stringreplace(floattostr(q_VALOR_ICMS),',','.',[]);
                q_uppropis.Params[15].asstring := stringreplace(floattostr(q_VALOR_ICMS_EXTRA),',','.',[]);
                q_uppropis.Params[16].asstring := stringreplace(floattostr(q_VALOR_PIS_PASEP),',','.',[]);
                q_uppropis.Params[17].asstring := stringreplace(floattostr(q_VALOR_COFINS),',','.',[]);
                q_uppropis.Params[18].asstring := stringreplace(floattostr(q_Prazo_permanencia),',','.',[]);
                q_uppropis.Params[19].asstring := stringreplace(floattostr(q_VA_proporcional),',','.',[]);
                q_uppropis.Params[20].asstring := stringreplace(floattostr(q_Aliq_NCM_II_proporcional),',','.',[]);
                q_uppropis.Params[21].asstring := stringreplace(floattostr(q_Aliq_NCM_IPI_proporcional),',','.',[]);
                q_uppropis.Params[22].asstring := stringreplace(floattostr(q_FOB),',','.',[]);
                q_uppropis.Params[23].Asstring := q_propisprocesso.asstring;
                q_uppropis.Params[24].Asstring := q_propisadicao.asstring;
                q_uppropis.ExecSQL;



          q_propis.next;
    end;

    processamento('Aguarde... Calculando Pis/Cofins... Proporcional/suspensos...',q_propis.recordcount,true);

    q_propis.Close;
    q_propis.open;

    if not processa_piscofins then showmessage(v_usuario+', foi o reprocessado os cálculos do Pis/Cofins!');

end

else begin

      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;


end;


procedure TF_prodidsi.b_recalcClick(Sender: TObject);
var va,d1,a,b,c,d2,e,e2,egravar,base,base_pisco,x,x_pisco,y,ii,ipi,icms,icms2,icms_base,aicms:real;
v_fator,v_fator2,ii3,ipi3,base_pisco3:real;
v:integer;
achou_vida:boolean;
    q_NCM: string;
    q_VA:real;
    q_OT:real;
    q_DA:real;
    q_Aliq_NCM_II:real;
    q_Aliq_NCM_IPI:real;
    q_Aliq_PIS_PASEP:real;
    q_Aliq_COFINS:real;
    q_Aliq_ICMS:real;
    q_Aliq_ICMS_EXTRA:real;
    q_BASEC_PISCOFINS:real;
    q_BASEC_ICMS:real;
    q_VALOR_II:real;
    q_VALOR_IPI:real;
    q_VALOR_ICMS:real;
    q_VALOR_ICMS_EXTRA:real;
    q_VALOR_PIS_PASEP:real;
    q_VALOR_COFINS:real;
    q_Prazo_permanencia:integer;
    q_VA_proporcional:real;
    q_Aliq_NCM_II_proporcional:real;
    q_Aliq_NCM_IPI_proporcional:real;
    q_FOB:real;
begin
     f_mscomex.MSPGP(me_nossaref.text);
if (v_AlteraPRO=1) then begin
      ///alterei em 07/07/2005 para gravar o FOB para utiliza na nf da web
      ///q_gravaFOB.close;
      ///q_gravaFOB.Params[0].asstring := t_propisprocesso.asstring;
      ///q_gravaFOB.Open;
      ///ALTEREI EM 31/03/2006 coloquei no q_incpiscofins - mm
q_propis.first;

while not q_propis.eof do begin
     processamento('Aguarde... ReCalculando Pis/Cofins... Proporcional/suspensos...',q_propis.recordcount,false);

    q_NCM := q_propisNCM.asstring;
    q_VA  := q_propisVA.asfloat;
    q_OT  := q_propisOT.asfloat;
    q_DA  := q_propisDA.asfloat;
    q_Aliq_NCM_II := q_propisAliq_NCM_II.asfloat;
    q_Aliq_NCM_IPI  := q_propisAliq_NCM_IPI.asfloat;
    q_Aliq_PIS_PASEP := q_propisAliq_PIS_PASEP.asfloat;
    q_Aliq_COFINS := q_propisAliq_COFINS.asfloat;
    q_Aliq_ICMS := q_propisAliq_ICMS.asfloat;
    q_Aliq_ICMS_EXTRA := q_propisAliq_ICMS_EXTRA.asfloat;
    q_BASEC_PISCOFINS  := q_propisBASEC_PISCOFINS.asfloat;
    q_BASEC_ICMS  := q_propisBASEC_ICMS.asfloat;
    q_VALOR_II  := q_propisVALOR_II.asfloat;
    q_VALOR_IPI := q_propisVALOR_IPI.asfloat;
    q_VALOR_ICMS := q_propisVALOR_ICMS.asfloat;
    q_VALOR_ICMS_EXTRA := q_propisVALOR_ICMS_EXTRA.asfloat;
    q_VALOR_PIS_PASEP := q_propisVALOR_PIS_PASEP.asfloat;
    q_VALOR_COFINS := q_propisVALOR_COFINS.asfloat;
    q_Prazo_permanencia := q_propisPrazo_permanencia.asinteger;
    q_VA_proporcional := q_propisVA_proporcional.asfloat;
    q_Aliq_NCM_II_proporcional := q_propisAliq_NCM_II_proporcional.asfloat;
    q_Aliq_NCM_IPI_proporcional := q_propisAliq_NCM_IPI_proporcional.asfloat;
    q_FOB := q_propisFOB.asfloat;
    {Leandro Serra - 29/04/2013
    Acréscimo ICMS}
    with qFrete do
    begin
        close;
        ParamByName('pProc').asString :=ME_nossaref.Text;
        ParamByName('pAdicao').AsString :=q_propisadicao.asstring;
        open;
        with qFreteTotal do
        begin
              Close;
              ParamByName('pProcesso').asString := ME_nossaref.text;
              Open;
        end;
        SomaFrete := qFreteTotalRateio_Frete_prepaid.Value + qFreteTotalRateio_Frete_collect.Value + qFreteTotalRateio_Frete_ternac.Value;
        if SomaFrete = 0 then
        begin
//              showmessage('Não foi informado nenhum frete, neste caso não será possível concluir o rateio.');
              qFreteTotal.Close;
              qFreteRateio.Close;
              //Exit;
        end
        else
        begin
              //if q_propisadicao.asstring = '009' then showmessage('teste');
              if AdicaoOld <> qFreteadicao.asstring then
              begin
                   AdicaoOld := qFreteadicao.asstring;
                   RateioAcrescICMS := 0;
              end;
              while not qFrete.Eof do
              begin
                   RateioAcrescimoICMSNasAdicoes(qFreteadicao.asstring, q_propisVA.asFloat, qFreteSeq.Value);
                   qFrete.Next;
              end;
        end;
        close;
    end;

    qUPAdicaoAcrescICMS.Close;
    qUPAdicaoAcrescICMS.ParamByName('pRateio').asFloat := RateioAcrescICMS;
    qUPAdicaoAcrescICMS.ParamByName('pProcesso').asString := ME_nossaref.Text;
    qUPAdicaoAcrescICMS.ParamByName('pAdicao').asString := q_propisadicao.asstring;
    qUPAdicaoAcrescICMS.ExecSQL;

    qAdicao.Close;
    qAdicao.ParamByName('pProcesso').asString := ME_nossaref.Text;
    qAdicao.ParamByName('pAdicao').asString := q_propisadicao.asstring;
    qAdicao.Open;

    aicms := qAdicaorateio_acresc_ICMS.Value;
      /// não é proporcional
     if (q_prazo_permanencia<=0) then begin
        va := q_VA;
        d1 := (q_OT+q_DA);
        a  := (q_Aliq_NCM_II/100);
        b  := (q_Aliq_NCM_IPI/100);
        c  := (q_Aliq_PIS_PASEP/100);
        d2 := (q_Aliq_COFINS/100);
        e  := ((q_Aliq_ICMS+q_Aliq_ICMS_EXTRA)/100);
        e2 := ((q_Aliq_ICMS_EXTRA)/100);
        egravar := (q_Aliq_ICMS/100);
     end
     else begin /// proporcional
//        va := t_propisVA_proporcional.asfloat;
        va := q_VA;

{        achou_vida := false;
        v:=8;
        while (not achou_vida) and (v>0) do begin
              if t_ncm_vutil.findkey([copy(t_propisncm.asstring,1,v)]) then begin
                 achou_vida := true;
              end;
              v:=v-1;
        end;
        v_fator := 1;
        if achou_vida then begin}

///           v_fator := (strtofloat(t_propisprazo_permanencia.asstring)/(12*t_ncm_vutilvida_util.asfloat));

        //end;
        v_fator := 1;//(strtofloat(t_propisprazo_permanencia.asstring)/100);
        v_fator2 := strtofloat(inttostr(q_prazo_permanencia))/100;
        va := (va*v_fator2);

        d1 := (q_OT+q_DA);

        a  := (q_Aliq_NCM_II)*v_fator;
        a  :=  strtofloat(FormatFloat('0.00',a));
        a  := (a/100);

        b  := (q_Aliq_NCM_IPI)*v_fator;
        b  :=  strtofloat(FormatFloat('0.00',b));
        b  := (b/100);

        c  := (q_Aliq_PIS_PASEP)*v_fator;
        c  :=  strtofloat(FormatFloat('0.00',c));
        c  := (c/100);

        d2 := (q_Aliq_COFINS)*v_fator;
        d2 :=  strtofloat(FormatFloat('0.00',d2));
        d2 := (d2/100);

        e  := ((q_Aliq_ICMS+q_Aliq_ICMS_EXTRA))*v_fator;
        e  :=  strtofloat(FormatFloat('0.00',e));
        e  := (e/100);

        e2 := ((q_Aliq_ICMS_EXTRA))*v_fator;
        e2 :=  strtofloat(FormatFloat('0.00',e2));
        e2 := (e2/100);

        egravar := (q_Aliq_ICMS)*v_fator;
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

      ///mm 26022009 - verifica importadores que não tem impostos na base ICMS
      if (q_processosBASE_ICMS.asinteger=1) then begin
         ii3 := ii;
         ipi3 := ipi;
         base_pisco3 := base_pisco;

             if q_piscofinstrib.Locate('Adicao',q_propisadicao.asstring,[loCaseInsensitive]) then begin

                if (q_piscofinstribRegime_Tributacao_II.asstring='5') or
                   (q_piscofinstribRegime_Tributacao_II.asstring='2') or
                   (q_piscofinstribRegime_Tributacao_II.asstring='6') then
                   ii3 := 0;

              //   showmessage('ii3 -> '+floattostr(ii3));

                if (q_piscofinstribRegime_Tributacao_IPI.asstring='5') or
                   (q_piscofinstribRegime_Tributacao_IPI.asstring='2') or
                   (q_piscofinstribRegime_Tributacao_IPI.asstring='6') then
                   ipi3 := 0;

               //  showmessage('ipi3 -> '+floattostr(ipi3));

                if (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='5') or
                   (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='2') or
                   (q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS.asstring='6') then
                   base_pisco3 := 0;

              //   showmessage('base_pisco3 -> '+floattostr(base_pisco3));

             end;
//             icms_base := ((va+ii3+ipi3+d1+(base_pisco3*(c+d2)))/(1-e)); antes do acréscimo do ICMS
             icms_base := ((aicms+va+ii3+ipi3+d1+(base_pisco3*(c+d2)))/(1-e));

            // showmessage('icms_base -> '+floattostr(icms_base));

      end
      else begin
//      icms_base := ((va+ii+ipi+d1+(base_pisco*(c+d2)))/(1-e)); antes do acréscimo do ICMS
      icms_base := ((aicms+va+ii+ipi+d1+(base_pisco*(c+d2)))/(1-e));

      end;

      icms := (icms_base)*e;
      icms2 := (icms_base)*e2;


      {t_propis.edit;
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
        t_propisAliq_ICMS.asfloat       := egravar*100;
        t_propisAliq_ICMS_EXTRA.asfloat := e2*100;
        t_propisAliq_PIS_PASEP.asfloat  := c*100;
        t_propisAliq_COFINS.asfloat     := d2*100;
      end;

      t_propis.post;
      }


      {tirado em 28092009
      q_uppropis.Params[0].Asfloat := base_pisco;
      q_uppropis.Params[1].Asfloat := icms_base;
      q_uppropis.Params[2].Asfloat := ii;
      q_uppropis.Params[3].Asfloat := ipi;
      q_uppropis.Params[4].Asfloat := icms;
      q_uppropis.Params[5].Asfloat := icms2;
      q_uppropis.Params[6].Asfloat := (c*base_pisco);
      q_uppropis.Params[7].Asfloat := (d2*base_pisco);

      q_uppropis.Params[8].Asfloat := t_propisAliq_ICMS.asfloat ;
      q_uppropis.Params[9].Asfloat := t_propisAliq_ICMS_EXTRA.asfloat;
      q_uppropis.Params[10].Asfloat := t_propisAliq_PIS_PASEP.asfloat;
      q_uppropis.Params[11].Asfloat := t_propisAliq_COFINS.asfloat ;

       if v_fator <> 1 then begin
      q_uppropis.Params[8].Asfloat := egravar*100;
      q_uppropis.Params[9].Asfloat := e2*100;
      q_uppropis.Params[10].Asfloat := c*100;
      q_uppropis.Params[11].Asfloat := d2*100;
      end;

      q_uppropis.Params[12].Asstring := t_propisprocesso.asstring;
      q_uppropis.Params[13].Asstring := t_propisadicao.asstring;
      q_uppropis.ExecSQL;
      }

       if v_fator <> 1 then begin
          q_Aliq_ICMS       := egravar*100;
          q_Aliq_ICMS_EXTRA := e2*100;
          q_Aliq_PIS_PASEP  := c*100;
          q_Aliq_COFINS     := d2*100;
      end;


                q_uppropis.Params[0].asstring  := q_NCM;
                q_uppropis.Params[1].asstring   := stringreplace(floattostr(q_VA),',','.',[]);
                q_uppropis.Params[2].asstring   := stringreplace(floattostr(q_OT),',','.',[]);
                q_uppropis.Params[3].asstring   := stringreplace(floattostr(q_DA),',','.',[]);
                q_uppropis.Params[4].asstring   := stringreplace(floattostr(q_Aliq_NCM_II),',','.',[]);
                q_uppropis.Params[5].asstring   := stringreplace(floattostr(q_Aliq_NCM_IPI),',','.',[]);
                q_uppropis.Params[6].asstring   := stringreplace(floattostr(q_Aliq_PIS_PASEP),',','.',[]);
                q_uppropis.Params[7].asstring   := stringreplace(floattostr(q_Aliq_COFINS),',','.',[]);
                q_uppropis.Params[8].asstring   := stringreplace(floattostr(q_Aliq_ICMS),',','.',[]);
                q_uppropis.Params[9].asstring   := stringreplace(floattostr(q_Aliq_ICMS_EXTRA),',','.',[]);
                q_uppropis.Params[10].asstring  := stringreplace(floattostr(base_pisco),',','.',[]);
                q_uppropis.Params[11].asstring  := stringreplace(floattostr(icms_base),',','.',[]);
                q_uppropis.Params[12].asstring  := stringreplace(floattostr(ii),',','.',[]);
                q_uppropis.Params[13].asstring  := stringreplace(floattostr(ipi),',','.',[]);
                q_uppropis.Params[14].asstring  := stringreplace(floattostr(icms),',','.',[]);
                q_uppropis.Params[15].asstring  := stringreplace(floattostr(icms2),',','.',[]);
                q_uppropis.Params[16].asstring  := stringreplace(floattostr((c*base_pisco)),',','.',[]);
                q_uppropis.Params[17].asstring  := stringreplace(floattostr((d2*base_pisco)),',','.',[]);
                q_uppropis.Params[18].asstring  := stringreplace(floattostr(q_Prazo_permanencia),',','.',[]);
                q_uppropis.Params[19].asstring  := stringreplace(floattostr(q_VA_proporcional),',','.',[]);
                q_uppropis.Params[20].asstring  := stringreplace(floattostr(q_Aliq_NCM_II_proporcional),',','.',[]);
                q_uppropis.Params[21].asstring  := stringreplace(floattostr(q_Aliq_NCM_IPI_proporcional),',','.',[]);
                q_uppropis.Params[22].asstring  := stringreplace(floattostr(q_FOB),',','.',[]);
                q_uppropis.Params[23].Asstring := q_propisprocesso.asstring;
                q_uppropis.Params[24].Asstring := q_propisadicao.asstring;
                q_uppropis.ExecSQL;
      q_propis.next;

end;
         processamento('Aguarde... Calculando Pis/Cofins... Proporcional/suspensos...',q_propis.recordcount,true);
    if not processa_piscofins then showmessage(v_usuario+', foi recalculado o Pis/Cofins!');
end

else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

q_propis.Close;
q_propis.open;

end;

procedure TF_prodidsi.t_propisAfterPost(DataSet: TDataSet);
begin
alterou_PROPIS := True;
//showmessage('post no t_propis');
//t_propis.Refresh;

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

procedure TF_prodidsi.q_processosAfterScroll(DataSet: TDataSet);
begin

t_processos.findkey([v_empresa,v_filial,q_processosprocesso.asstring]);

end;

procedure TF_prodidsi.T_itensfaturasAfterPost(DataSet: TDataSet);
begin
t_itensfaturas.refresh;
end;

procedure TF_prodidsi.T_ProcessosAfterPost(DataSet: TDataSet);
begin
t_processos.refresh;
end;

procedure TF_prodidsi.T_tributositemAfterPost(DataSet: TDataSet);
begin
 T_tributositem.Refresh;
end;

procedure TF_prodidsi.b_detalhesClick(Sender: TObject);
var v_pesol,qsql:string;
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
    apri,qtdreg:integer;
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
    VPIS_TOTAL,VCOFINS_TOTAL:real;
    vseq:integer;

begin
{gera todos os detalhes por adicao}

q_detalhe.Close;
q_detalhe.Params[0].AsString := q_processosempresa.asstring;
q_detalhe.Params[1].AsString := q_processosfilial.asstring;
q_detalhe.Params[2].AsString := me_nossaref.text;
q_detalhe.open;

t_detalhes.close;
t_detalhes.open;

{zera detalhes por adicao}
//qsql := 'DELETE FROM DETALHE_MERCADORIA WHERE (((DETALHE_MERCADORIA.NR_DECL_IMP_MICRO)="'+q_detalheNR_DECL_IMP_MICRO.asstring+'"))';
qsql := 'DELETE DETALHE_MERCADORIA.*, DECLARAÇÃO_IMPORTAÇÃO.NR_IDENT_USUARIO FROM DETALHE_MERCADORIA INNER JOIN DECLARAÇÃO_IMPORTAÇÃO ON DETALHE_MERCADORIA.NR_DECL_IMP_MICRO = DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO ';
qsql := qsql+' WHERE (((DECLARAÇÃO_IMPORTAÇÃO.NR_IDENT_USUARIO)="'+me_nossaref.text+'"))';

q_updet.SQL.Clear;
q_updet.sql.add(qsql);
q_updet.ExecSQL;

v_num_seq := -1;
qtdreg := 0;
v_qadicao := Q_detalheAdicao.asstring;
while not q_detalhe.eof do begin
      qtdreg := qtdreg+1;
      processamento('Aguarde... Atualizando SISCOMEX... Detalhes das Mercadorias', 100 ,false);
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

      v_qsequencial := q_detalhesequencial.asinteger;

      q_descricao := trim(q_detalhedesc.asstring);

      {4257 - Leandro Serra}
      qrConhecimento.Close;
      qrConhecimento.ParamByName('pProcesso').asString := ME_nossaref.text;
      qrConhecimento.Open;

      if qrConhecimentoAutorizacao_Marinha.AsString <> '' then
                   q_descricao := q_descricao+ ' AM['+qrConhecimentoAutorizacao_Marinha.AsString +']AM ';
      qrConhecimento.Close;
      
      {4258 - Leandro Serra 02/04/2013}
      if q_detalheProduto.asstring<>'' then
      begin
            if t_processosImportador.AsString = '126' then
                  q_descricao := q_descricao+' Part.Number: #PN='+q_detalheProduto.asstring+'#'
            else if (t_processosImportador.AsString = '252') or (t_processosImportador.AsString = '265') then
                  q_descricao := q_descricao+' Part.Number: PN['+q_detalheProduto.asstring+']PN'
            else
                  q_descricao := q_descricao+' Part.Number: '+q_detalheProduto.asstring;
      end;

      if ((q_detalhenumero_serie.asstring<>'') and (q_detalhenumero_serie.asstring<>'.') ) then
      begin
           if t_processosImportador.AsString = '126' then
                q_descricao := q_descricao+' Nº. Serie: #SN='+q_detalhenumero_serie.asstring + '#'
           else if (t_processosImportador.AsString = '252') or (t_processosImportador.AsString = '265') then
                q_descricao := q_descricao+' Nº. Serie: SN['+q_detalhenumero_serie.asstring + ']SN'
           else
                q_descricao := q_descricao+' Nº. Serie: '+q_detalhenumero_serie.asstring;
      end;
      {Fim 4258 - Leandro Serra 02/04/2013}
      if q_detalhecertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_detalhecertificado_origem.asstring;
      if q_detalhereferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_detalhereferencia.asstring;
      if ((q_detalhereferencia_projeto.asstring<>'') and (q_detalhereferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_detalhereferencia_projeto.asstring;
      if ((q_detalhePO.asstring<>'') and (q_detalhePO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_detalhePO.asstring;
      if ((q_detalheseqPO.asstring<>'') and (q_detalheseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_detalheseqPO.asstring;

      q_descricao := q_descricao+' Fatura: '+q_detalheFatura.asstring+' Pagina: '+q_detalhePagina.asstring+' Linha: '+inttostr(v_qsequencial);

      T_detalhesTX_DESC_DET_MERC.asstring := q_descricao;// + '#PN='+q_detalheProduto.asstring+'# - #SN='+q_detalhenumero_serie.asstring+'#';
      {verificar quantidade }
      v_quant := '00000000000'+floattostrf(q_detalheQuantidade.asfloat,fffixed,9,5);
      v_quant := copy(v_quant,(length(v_quant)-14),9)+copy(v_quant,(length(v_quant)-4),5);
      T_detalhesQT_MERC_UN_COMERC.asstring  := v_quant;

      if (not q_detalhequnidade.isnull) then T_detalhesNM_UN_MEDID_COMERC.asstring := q_detalhequnidade.asstring;
      T_detalhesVL_UNID_LOC_EMB.asfloat     := (q_detalhevmle.asfloat/q_detalhequantidade.asfloat);

      v_valor := '00000000000000'+floattostrf((q_detalhevalor_aduaneiro.asfloat/q_detalhequantidade.asfloat),fffixed,13,7);
      v_valor := copy(v_valor,(length(v_valor)-20),13)+copy(v_valor,(length(v_valor)-6),7);

      T_detalhesVL_UNID_COND_VENDA.asstring := v_valor;
      if q_detalheProduto.asstring<>'' then
         T_detalhesCD_PRODUTO.asstring         := q_detalheProduto.asstring
      else begin
         if q_detalhecodigo_Produto.asstring<>'' then
            T_detalhesCD_PRODUTO.asstring         := q_detalhecodigo_Produto.asstring;
      end;
      t_detalhes.post;

      q_uptrib.Close;
      q_uptrib.Params[0].Asinteger := v_num_seq;
      q_uptrib.Params[1].asstring  := me_nossaref.text;
      q_uptrib.Params[2].asstring  := q_detalhefatura.asstring;
      q_uptrib.Params[3].asstring  := q_detalhesequencial.asstring;
      q_uptrib.Params[4].asstring  := q_detalheseq.asstring;
      q_uptrib.ExecSQL;

      q_detalhe.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Detalhes das Mercadorias', q_detalhe.RecordCount ,true);
//T_tributositem.close;
//T_tributositem.open;
//showmessage('foi!');

end;

procedure TF_prodidsi.tbproregimpAfterPost(DataSet: TDataSet);
begin
tbproregimp.refresh;
end;





function TF_prodidsi.Processos_Tipo_LI(strProcesso: String): Boolean;
begin
    {Se o Processo for do tipo LI cobrar somente o INVOICE - FATURA  1}
        if q_TipoProcessotipo.value = 'LI' then
            result:=True
        else
            result:=True;
end;


procedure TF_prodidsi.oksenhaClick(Sender: TObject);
begin
   {Leandro Serra - 30/08/2011 }
   with qSenhasAutorizadas do
   begin
       close;
       ParamByName('pSenha').asstring:= me_senha.text;
       open;
   end;
   if qSenhasAutorizadas.RecordCount > 0 then
   begin
      b_atualizasiscomex.Enabled := true;
      blnSupervisor:= True;
      p_autoriza.Visible:=false;
   end;
  logusu('I','Atualiza SISCOMEX - Registro Usuário: '+ v_usuario +', Supervisor: '+ me_senha.text);
  {Fim - 30/08/2011}
end;

procedure TF_prodidsi.cancelsenhaClick(Sender: TObject);
begin
 {Leandro Serra - 30/08/2011 }
  p_autoriza.Visible := false;
  blnSupervisor := False;
 {Fim - 30/08/2011}
end;

procedure TF_prodidsi.btnAnexarClick(Sender: TObject);
begin
  pnlAnexo.Left := 200;
  pnlAnexo.Top := 96;
  btnClear.Click;
  pnlAnexo.Show;
end;

procedure TF_prodidsi.btnCancelClick(Sender: TObject);
begin
  pnlAnexo.Hide;
end;

procedure TF_prodidsi.btnClearClick(Sender: TObject);
begin
  edtDescricao.Clear;
  edtCaminho.Clear;
end;

procedure TF_prodidsi.btnAbrirClick(Sender: TObject);
var
  extensao : String;
begin
  extensao := ExtractFileExt(OP.FileName);
  If ( OP.Execute )Then Begin
    if( LowerCase(extensao) = '.jpg')then
      edtCaminho.Text := '\\msserver01\Sistemas\MS2000\Processos_Anexo\'+ FormatDateTime('dd-mm-yyyy', Date )+'\'+ StringReplace(q_processosProcesso.AsString,'/','-',[])+'.jpg'
    else begin
      edtCaminho.Clear();
      ShowMessage('Arquivo com extensão inválida. Somente extensões "JPG" são suportados!');
    End;
  end;
end;

procedure TF_prodidsi.btnConfirmarClick(Sender: TObject);
  var
    Origem,
    Destino: string;
    GoOn : Boolean;
begin
  If ( Trim( edtDescricao.Text ) = '' ) Then Begin
   Application.MessageBox('Campo Descrição não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   Abort;
  end
  else
  If ( edtCaminho.Text = '' ) Then Begin
   Application.MessageBox('Campo caminho não pode ser vazio','Aviso', MB_OK + MB_ICONWARNING );
   Abort;
  end;

  try
    GoOn := true;
    qryInsertAnexo.ParamByName( 'Descricao' ).Value := Trim( edtDescricao.Text );
    qryInsertAnexo.ParamByName( 'Caminho' ).Value := Trim( edtCaminho.Text );
    qryInsertAnexo.ParamByName( 'FK_Processo' ).Value := q_processosProcesso.AsString;
    qryInsertAnexo.ParamByName( 'FK_Usuario' ).Value := v_usuario;
    qryInsertAnexo.ExecSQL;
  except
    GoOn := False;
  end;

  if ( GoOn ) then begin
    // Diretorio
    If ( Trim( edtCaminho.Text )<>'' ) Then Begin
     Origem := OP.FileName;
     Destino := edtCaminho.Text;
     If ( Not DirectoryExists( ExtractFilePath( Destino ) ) ) Then
       ForceDirectories( ExtractFilePath( Destino ) );
     If ( FileExists( Destino ) ) Then
       DeleteFile( Destino );
     If Not CopyFile(PChar(Origem), PChar(Destino), true) then Begin
       GoOn := False;
       qryDeleteAnexo.ParamByName('Processo').Value := q_processosProcesso.AsString;
       qryDeleteAnexo.ExecSQL;
       ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
     End
    End;
    //
  End;
  if ( GoOn ) then begin
    if ( Not F_MSCOMEX.IncluiFollow( q_processosProcesso.AsString, '1021','1201', '', v_usuario, Date, Now ) ) then begin
       GoOn := False;
       qryDeleteAnexo.ParamByName('Processo').Value := q_processosProcesso.AsString;
       qryDeleteAnexo.ExecSQL;
       ShowMessage('Ocorreu um erro na gravação do follow-Up. Tente gravar novamente.');
    end;
  end;            
  if ( GoOn ) then begin
    edtDescricao.Clear;
    edtCaminho.Clear;
    pnlAnexo.Hide;
    btnAnexar.Enabled := False;
    ShowMessage('Operação Realizada Com Sucesso.');
  end;
end;

procedure TF_prodidsi.btnViewAnexoClick(Sender: TObject);
begin
  try
    frmVisualizacaomagem := TfrmVisualizacaomagem.create(Self);
    frmVisualizacaomagem.Path := CaminhoAnexoAtual;
    frmVisualizacaomagem.ShowModal;
  finally
    frmVisualizacaomagem.free;
  end;
end;

procedure TF_prodidsi.RateioAcrescimoICMS();
begin


      {  qSomaQtdItensFaturas.Close;
        qSomaQtdItensFaturas.ParamByName('pProcesso').asString := ME_nossaref.text;
        qSomaQtdItensFaturas.Open;

        vSomaDasQtdAdioes := qSomaQtdItensFaturasQtdTotal.AsInteger;
        vRateioAcrescICMS :=  vTotalAcrescimoICMS/vSomaDasQtdAdioes}
end;
procedure TF_prodidsi.RateioAcrescimoICMSNasAdicoes(adicao:String; va:Real; Seq:Real);
var
  ConstRateioDoAcrescimo, AcrescRateado, RateioFrete : Real;

begin
      {FÓRMULA PARA ACRÉSCIMO MARÍTIMO
      ACRÉSCIMO MARINHA / FRETE TOTAL = CONSTANTE
      CONSTANTE * FRETE POR ADIÇÃO}
      qCD_E_VL_ACRESCIMO.Close;
      qCD_E_VL_ACRESCIMO.ParamByName('pProcesso').asString := ME_nossaref.text;
      qCD_E_VL_ACRESCIMO.Open;
      vTotalAcrescimoICMS := 0;      
      {Se for igual a (0) não existe acréscimo do ICMS}
      if (qCD_E_VL_ACRESCIMOVL_ACRESCIMO.Value = 0) or (qCD_E_VL_ACRESCIMOVL_ACRESCIMO.IsNull) then
      begin
          {Como não existe Acréscimo força a limpeza do Rateio se houver alguma informação}
          qZERA_ACRESC_ICMS.close;
          qZERA_ACRESC_ICMS.ParamByName('pProcesso').asstring :=ME_nossaref.text;
          qZERA_ACRESC_ICMS.ExecSQL;
          qZERA_ACRESC_ICMS.Close;
          qCD_E_VL_ACRESCIMO.Close;
//          vRateioAcrescICMS := 0;
          Exit;
      end;

      vTotalAcrescimoICMS := qCD_E_VL_ACRESCIMOVL_ACRESCIMO.Value;
      {Se não há acréscimo não faz nada
      if vTotalAcrescimoICMS = 0 then exit; }
      {Se for Marítimo calcula pelo frete}
      if qCD_E_VL_ACRESCIMOCD_ACRESC_ICMS.Value = 1 then
      begin
          RateioFrete := 0;
          {Marinha}
          {with qFreteTotal do
          begin
              Close;
              ParamByName('pProcesso').asString := ME_nossaref.text;
              Open;
          end;
        {  with qFreteRateio do
          begin
              Close;
              ParamByName('pProcesso').asString := ME_nossaref.text;
              ParamByName('pAdicao').asString := adicao;
              Open;
          end;}

         { SomaFrete := qFreteTotalRateio_Frete_prepaid.Value + qFreteTotalRateio_Frete_collect.Value + qFreteTotalRateio_Frete_ternac.Value;
          if SomaFrete = 0 then
          begin
              showmessage('Não foi informado nenhum frete, neste caso não será possível concluir o rateio.');
              qFreteTotal.Close;
              qFreteRateio.Close;
              Exit;
          end;
          }
          ConstRateioDoAcrescimo :=  vTotalAcrescimoICMS / SomaFrete;

          if qFreteTotalRateio_Frete_prepaid.Value <> 0 then RateioFrete := qFreteRateio_Frete_prepaid.Value
          else if qFreteTotalRateio_Frete_collect.Value <> 0 then RateioFrete := qFreteRateio_Frete_collect.Value
          else if qFreteTotalRateio_Frete_ternac.Value  <> 0 then RateioFrete := qFreteRateio_Frete_ternac.Value;
          if AdicaoOld = adicao then   RateioAcrescICMS := RateioAcrescICMS + (RateioFrete*ConstRateioDoAcrescimo);
          try
              qUpRateio_Acresc_ICMS.Close;
              qUpRateio_Acresc_ICMS.ParamByName('pRateio_Acresc_ICMS').asFloat :=(RateioFrete*ConstRateioDoAcrescimo);
              qUpRateio_Acresc_ICMS.ParamByName('pProc').asString := ME_nossaref.text;
              qUpRateio_Acresc_ICMS.ParamByName('pAdicao').asString := adicao;
              qUpRateio_Acresc_ICMS.ParamByName('pSeq').asFloat := Seq;
              qUpRateio_Acresc_ICMS.ExecSQL;
          except
                 showmessage('Ocorreu um erro na atualização do acréscimo do ICMS');
          end;
{          qFreteTotal.Close;
          qFreteRateio.Close;}
      end
      else if qCD_E_VL_ACRESCIMOCD_ACRESC_ICMS.Value = 8 then
      begin
          {ATA AÉREO
          ACRÉSCIMO ATA AÉREO / VA = CONSTANTE
          CONSTANTE X VA POR ADIÇÃO}
          with qSomaVA do
          begin
              Close;
              ParamByName('pProcesso').asString := ME_nossaref.text;;
              Open;
          end;

          ConstRateioDoAcrescimo :=  vTotalAcrescimoICMS / qSomaVAVA_TOTAL.Value;

          qUpRateio_Acresc_ICMS.Close;
          qUpRateio_Acresc_ICMS.ParamByName('pRateio_Acresc_ICMS').asFloat := va * ConstRateioDoAcrescimo;
          qUpRateio_Acresc_ICMS.ParamByName('pProcesso').asString := ME_nossaref.text;
          qUpRateio_Acresc_ICMS.ParamByName('pAdicao').asString := adicao;
          qUpRateio_Acresc_ICMS.ExecSQL;
      end;
end;
procedure TF_prodidsi.FormShow(Sender: TObject);
begin
  rdgRefTaxaConversao.Visible := false;
end;

function TF_prodidsi.TotalFatura : Double;
var
  QryAux : TQuery;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT SUM(Valor_Total) AS Valor_Total FROM Faturas WHERE Processo = :Processo ');
    QryAux.ParamByName('Processo').AsString := ME_nossaref.Text;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Result := QryAux.FieldByName('Valor_Total').AsFloat
     else Result := 0;
  finally
    QryAux.Free;
  end;
end;

procedure TF_prodidsi.IncluiRegistroAnaliseDIProcesso;
var
  QryAux : TQuery;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' INSERT INTO Audita_Registro_DI (Processo,Data_Analise) VALUES (:Processo, :Data_Analise) ');
    QryAux.ParamByName('Processo').AsString       := ME_nossaref.Text;
    QryAux.ParamByName('Data_Analise').AsDateTime := Date();
    QryAux.ExecSQL;

    EnviaEmailAutorizadores;

    logusu('P','Processo ' + ME_nossaref.Text + ' analisado e registro de DI solicitado.');    
  finally
    QryAux.Free;
  end;
end;

procedure TF_prodidsi.EnviaEmailAutorizadores;
var
  QryAux : TQuery;
  vPara, vResponsavel_Processo, vBody : String;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT Email, Usuario FROM Usuarios WHERE Ativo = 1 AND Audita_DI = 1 AND Email <> '''' ');
    QryAux.Open;

    QryAux.First;

    while not QryAux.Eof do
     begin
       if vPara = ''
        then vPara := QryAux.FieldByName('Email').AsString
        else vPara := vPara + '; ' + QryAux.FieldByName('Email').AsString;

       QryAux.Next;
     end;

    vResponsavel_Processo := ResponsavelProcesso;

    vBody := '<BR>'
           + 'Prezado(a),<BR>'
           + '<BR>'
           + 'Por meio deste, informamos que o Processo ' + ME_nossaref.Text + ',<BR>'
           + 'sob responsabilidade do(a) colaborador(a) ' + UsuResponsavel + ', foi analisado e necessita de autorização para o Registro de DI.<BR>'
           + StringOfChar('_', 90)
           + '<BR><BR>'
           + 'Este e-mail é automático e não necessita de resposta. <BR>'
           + '<BR><BR>'
           + 'Atenciosamente,'
           + '<BR><BR>'
           + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO'
           + '<BR><BR>';

    F_MSCOMEX.IncluiEmailAuto('Autorização para Registro de DI','Autorização para Registro de DI','','MS2000Plus <auditoria@mslogistica.com.br>',vPara,vResponsavel_Processo,'',vBody);
  finally
    QryAux.Free;
  end;
end;

function TF_prodidsi.ResponsavelProcesso: String;
var
  QrAux1 : TQuery;
begin
  try
    QrAux1 := TQuery.Create(nil);
    QrAux1.DatabaseName := 'DBNMSCOMEX';

    QrAux1.Close;
    QrAux1.SQL.Clear;
    QrAux1.SQL.Add(' SELECT U.Email, U.Nome_Completo                  ');
    QrAux1.SQL.Add('   FROM Processos P INNER JOIN Usuarios U         ');
    QrAux1.SQL.Add('     ON P.Responsavel_Empresa = U.Usuario         ');
    QrAux1.SQL.Add('  WHERE P.Codigo = :pProcesso AND U.Email <> '''' ');
    QrAux1.ParamByName('pProcesso').AsString := ME_nossaref.Text;
    QrAux1.Open;

    if QrAux1.RecordCount > 0
     then begin
       UsuResponsavel := QrAux1.FieldByName('Nome_Completo').AsString;
       Result         := QrAux1.FieldByName('Email').AsString;
     end
     else begin
       UsuResponsavel := '';
       Result         := '';
     end;  
  finally
    QrAux1.Free;
  end;
end;

end.

