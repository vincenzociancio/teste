unit U_nfiscais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  TF_nfiscais = class(TForm)
    T_parametros: TTable;
    T_nfiscais: TTable;
    T_nfdetalhes: TTable;
    T_di: TTable;
    T_adicao: TTable;
    DS_parametros: TDataSource;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    DS_nfiscais: TDataSource;
    DS_nfdetalhes: TDataSource;
    T_detalhemerc: TTable;
    T_tributoII: TTable;
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
    DS_di: TDataSource;
    T_adicaoNR_OP_IMP_MICRO: TStringField;
    T_adicaoCD_URF_ENTR_MERC: TStringField;
    T_adicaoCD_VIA_TRANSPORTE: TStringField;
    T_adicaoIN_MULTIMODAL: TBooleanField;
    T_adicaoNM_FORN_ESTR: TStringField;
    T_adicaoED_LOGR_FORN_ESTR: TStringField;
    T_adicaoED_NR_FORN_ESTR: TStringField;
    T_adicaoED_COMPL_FORN_ESTR: TStringField;
    T_adicaoED_CIDAD_FORN_ESTR: TStringField;
    T_adicaoED_ESTAD_FORN_ESTR: TStringField;
    T_adicaoCD_PAIS_AQUIS_MERC: TStringField;
    T_adicaoCD_MERCADORIA_NCM: TStringField;
    T_adicaoCD_PAIS_PROC_MERC: TStringField;
    T_adicaoCD_AUSENCIA_FABRIC: TStringField;
    T_adicaoNM_FABRICANTE_MERC: TStringField;
    T_adicaoED_LOGR_FABRIC: TStringField;
    T_adicaoED_NR_FABRIC: TStringField;
    T_adicaoED_COMPL_FABRIC: TStringField;
    T_adicaoED_CIDAD_FABRIC: TStringField;
    T_adicaoED_ESTADO_FABRIC: TStringField;
    T_adicaoCD_PAIS_ORIG_MERC: TStringField;
    T_adicaoCD_MERC_NBM_SH: TStringField;
    T_adicaoCD_MERC_NALADI_NCC: TStringField;
    T_adicaoCD_MERC_NALADI_SH: TStringField;
    T_adicaoPL_MERCADORIA: TStringField;
    T_adicaoQT_UN_ESTATISTICA: TStringField;
    T_adicaoCD_APLICACAO_MERC: TStringField;
    T_adicaoVL_MERC_EMB_MN: TFloatField;
    T_adicaoCD_MOEDA_NEGOCIADA: TStringField;
    T_adicaoCD_INCOTERMS_VENDA: TStringField;
    T_adicaoNM_LOC_COND_VENDA: TStringField;
    T_adicaoVL_MERC_COND_VENDA: TFloatField;
    T_adicaoVL_MERC_VENDA_MN: TFloatField;
    T_adicaoVL_FRETE_MERC_MNEG: TFloatField;
    T_adicaoCD_MD_FRETE_MERC: TStringField;
    T_adicaoVL_FRETE_MERC_MN: TFloatField;
    T_adicaoVL_SEG_MERC_MNEG: TFloatField;
    T_adicaoCD_MOEDA_SEG_MERC: TStringField;
    T_adicaoVL_SEG_MERC_MN: TFloatField;
    T_adicaoVL_UNID_LOC_EMP: TFloatField;
    T_adicaoCD_METOD_VALORACAO: TStringField;
    T_adicaoCD_VINC_IMPO_EXPO: TStringField;
    T_adicaoCD_TIPO_ACORDO_TAR: TStringField;
    T_adicaoCD_ACORDO_ALADI: TStringField;
    T_adicaoCD_REGIME_TRIBUTAR: TStringField;
    T_adicaoCD_FUND_LEG_REGIME: TStringField;
    T_adicaoCD_MOTIVO_ADM_TEMP: TStringField;
    T_adicaoNR_DCTO_REDUCAO: TStringField;
    T_adicaoVL_DESPESAS_MNEG: TFloatField;
    T_adicaoCD_MOEDAS_DESPESAS: TStringField;
    T_adicaoVL_DESPESAS_MN: TFloatField;
    T_adicaoPC_COEF_REDUC_II: TFloatField;
    T_adicaoVL_CALC_DCR_DOLAR: TFloatField;
    T_adicaoVL_II_CALC_DCR_MN: TFloatField;
    T_adicaoVL_II_DEVIDO_ZFM: TFloatField;
    T_adicaoVL_II_A_REC_ZFM: TFloatField;
    T_adicaoCD_COBERT_CAMBIAL: TStringField;
    T_adicaoCD_MODALIDADE_PGTO: TStringField;
    T_adicaoCD_ORGAO_FIN_INTER: TStringField;
    T_adicaoCD_MOTIVO_SEM_COB: TStringField;
    T_adicaoQT_PARC_FINANC_360: TStringField;
    T_adicaoCD_PERIOD_PGTO_360: TStringField;
    T_adicaoQT_PERIOD_PGTO_360: TStringField;
    T_adicaoVL_TOT_FINANC_360: TFloatField;
    T_adicaoPC_TAXA_JUROS: TFloatField;
    T_adicaoCD_TAXA_JUROS: TStringField;
    T_adicaoVL_FINANC_SUP_360: TFloatField;
    T_adicaoNR_ROF: TStringField;
    T_adicaoIN_PGTO_VARIAV_360: TBooleanField;
    T_adicaoIN_JUROS_ATE_360: TBooleanField;
    T_adicaoPC_COMISSAO_AG_IMP: TFloatField;
    T_adicaoVL_COMISSAO_AG_IMP: TFloatField;
    T_adicaoCD_TIPO_AGENTE_IMP: TStringField;
    T_adicaoNR_AGENTE_IMP: TStringField;
    T_adicaoCD_BANC_AGENTE_IMP: TStringField;
    T_adicaoCD_AGENC_AGENT_IMP: TStringField;
    T_adicaoIN_BEM_ENCOMENDA: TBooleanField;
    T_adicaoIN_MATERIAL_USADO: TBooleanField;
    T_adicaoTX_COMPL_VL_ADUAN: TStringField;
    T_adicaoIN_IPI_NAO_TRIBUT: TBooleanField;
    T_adicaovl_merc_loc_emb_mn: TFloatField;
    T_adicaovl_base_calculo_mn: TFloatField;
    T_adicaoNR_OPER_TRAT_PREV: TStringField;
    T_detalhemercNR_DECL_IMP_MICRO: TStringField;
    T_detalhemercNR_OP_IMP_MICRO: TStringField;
    T_detalhemercNU_SEQ_DETALHE: TSmallintField;
    T_detalhemercTX_DESC_DET_MERC: TMemoField;
    T_detalhemercQT_MERC_UN_COMERC: TStringField;
    T_detalhemercNM_UN_MEDID_COMERC: TStringField;
    T_detalhemercVL_UNID_LOC_EMB: TFloatField;
    T_detalhemercVL_UNID_COND_VENDA: TStringField;
    T_detalhemercCD_PRODUTO: TStringField;
    DS_adicao: TDataSource;
    DS_detalhemerc: TDataSource;
    DS_tributoII: TDataSource;
    T_tributoIINR_DECL_IMP_MICRO: TStringField;
    T_tributoIINR_OP_IMP_MICRO: TStringField;
    T_tributoIICD_RECEITA_IMPOSTO: TStringField;
    T_tributoIICD_TIPO_ALIQ_IPT: TStringField;
    T_tributoIIVL_BASE_CALC_ADVAL: TFloatField;
    T_tributoIIPC_ALIQ_NORM_ADVAL: TFloatField;
    T_tributoIIVL_CALC_IPT_ADVAL: TFloatField;
    T_tributoIINM_UN_ALIQ_ESP_IPT: TStringField;
    T_tributoIICD_TIPO_RECIPIENTE: TStringField;
    T_tributoIIQT_ML_RECIPIENTE: TFloatField;
    T_tributoIIQT_MERC_UN_ALIQ_ES: TFloatField;
    T_tributoIIVL_ALIQ_ESPEC_IPT: TFloatField;
    T_tributoIIVL_CALC_IPT_ESPEC: TFloatField;
    T_tributoIICD_TIPO_BENEF_IPI: TStringField;
    T_tributoIIPC_ALIQ_REDUZIDA: TFloatField;
    T_tributoIIPC_REDUCAO_IPT_BLI: TFloatField;
    T_tributoIIPC_ALIQ_ACOR_TARIF: TFloatField;
    T_tributoIIVL_CALC_II_AC_TARI: TFloatField;
    T_tributoIIVL_IMPOSTO_DEVIDO: TFloatField;
    T_tributoIIVL_IPT_A_RECOLHER: TFloatField;
    T_tributoIICD_TIPO_DIREITO: TStringField;
    T_tributoIINR_NOTA_COMPL_TIPI: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBE_cfop: TDBEdit;
    Label6: TLabel;
    DBE_inscest1: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBE_nome: TDBEdit;
    Label10: TLabel;
    DBE_cnpj: TDBEdit;
    Label11: TLabel;
    DBE_endereco: TDBEdit;
    Label12: TLabel;
    DBE_bairro: TDBEdit;
    Label13: TLabel;
    DBE_cep: TDBEdit;
    Label14: TLabel;
    DBE_municipio: TDBEdit;
    Label15: TLabel;
    DBE_fone: TDBEdit;
    Label16: TLabel;
    DBE_uf: TDBEdit;
    Label17: TLabel;
    DBE_inscest2: TDBEdit;
    Label18: TLabel;
    DBE_emissao: TDBEdit;
    Label19: TLabel;
    DBE_dtmov: TDBEdit;
    Label20: TLabel;
    DBE_hora: TDBEdit;
    Label21: TLabel;
    DBE_duplicata: TDBEdit;
    Label22: TLabel;
    DBE_venc: TDBEdit;
    Label23: TLabel;
    DBE_valor: TDBEdit;
    Label24: TLabel;
    DBE_condespe: TDBEdit;
    DBE_da1: TDBEdit;
    DBE_da2: TDBEdit;
    DBE_da3: TDBEdit;
    DBE_da4: TDBEdit;
    DBE_da5: TDBEdit;
    DBE_da6: TDBEdit;
    DBE_da7: TDBEdit;
    Label32: TLabel;
    DBE_baseicms: TDBEdit;
    Label33: TLabel;
    DBE_valicms: TDBEdit;
    Label34: TLabel;
    DBE_icmssubs: TDBEdit;
    Label35: TLabel;
    DBE_valicmssubst: TDBEdit;
    Label36: TLabel;
    DBE_vtprod: TDBEdit;
    Label37: TLabel;
    DBE_frete: TDBEdit;
    Label38: TLabel;
    DBE_seguro: TDBEdit;
    Label39: TLabel;
    DBE_outras: TDBEdit;
    Label40: TLabel;
    DBE_vtipi: TDBEdit;
    Label41: TLabel;
    DBE_vtnota: TDBEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBE_placa: TDBEdit;
    Label45: TLabel;
    DBE_uftrans: TDBEdit;
    Label46: TLabel;
    DBE_quantidade: TDBEdit;
    Label47: TLabel;
    DBE_especie: TDBEdit;
    Label48: TLabel;
    DBE_marca: TDBEdit;
    Label49: TLabel;
    DBE_numero: TDBEdit;
    Label50: TLabel;
    DBE_pb: TDBEdit;
    Label51: TLabel;
    DBE_pl: TDBEdit;
    Label52: TLabel;
    DBE_incoterm: TDBEdit;
    Label53: TLabel;
    DBE_txcon: TDBEdit;
    DBL_di: TDBLookupComboBox;
    T_transportadores: TTable;
    DS_transportadores: TDataSource;
    T_transportadoresEmpresa: TStringField;
    T_transportadoresFilial: TStringField;
    T_transportadoresCodigo: TStringField;
    T_transportadoresRazoSocial: TStringField;
    T_transportadoresCGCCPF: TStringField;
    T_transportadoresEndereo: TStringField;
    T_transportadoresBairro: TStringField;
    T_transportadoresCidade: TStringField;
    T_transportadoresCEP: TStringField;
    T_transportadoresUF: TStringField;
    T_transportadoresInscrioEstadual: TStringField;
    DBL_transportador: TDBLookupComboBox;
    DBG_detalhe: TDBGrid;
    DBL_adicoes: TDBLookupComboBox;
    T_adicaoNR_DECL_IMP_MICRO: TStringField;
    Q_adicoes: TQuery;
    DS_consultaaidc: TDataSource;
    Q_adicoesNR_DECL_IMP_MICRO: TStringField;
    Q_adicoesNR_OP_IMP_MICRO: TStringField;
    Q_adicoesCD_URF_ENTR_MERC: TStringField;
    Q_adicoesCD_VIA_TRANSPORTE: TStringField;
    Q_adicoesIN_MULTIMODAL: TBooleanField;
    Q_adicoesNM_FORN_ESTR: TStringField;
    Q_adicoesED_LOGR_FORN_ESTR: TStringField;
    Q_adicoesED_NR_FORN_ESTR: TStringField;
    Q_adicoesED_COMPL_FORN_ESTR: TStringField;
    Q_adicoesED_CIDAD_FORN_ESTR: TStringField;
    Q_adicoesED_ESTAD_FORN_ESTR: TStringField;
    Q_adicoesCD_PAIS_AQUIS_MERC: TStringField;
    Q_adicoesCD_MERCADORIA_NCM: TStringField;
    Q_adicoesCD_PAIS_PROC_MERC: TStringField;
    Q_adicoesCD_AUSENCIA_FABRIC: TStringField;
    Q_adicoesNM_FABRICANTE_MERC: TStringField;
    Q_adicoesED_LOGR_FABRIC: TStringField;
    Q_adicoesED_NR_FABRIC: TStringField;
    Q_adicoesED_COMPL_FABRIC: TStringField;
    Q_adicoesED_CIDAD_FABRIC: TStringField;
    Q_adicoesED_ESTADO_FABRIC: TStringField;
    Q_adicoesCD_PAIS_ORIG_MERC: TStringField;
    Q_adicoesCD_MERC_NBM_SH: TStringField;
    Q_adicoesCD_MERC_NALADI_NCC: TStringField;
    Q_adicoesCD_MERC_NALADI_SH: TStringField;
    Q_adicoesPL_MERCADORIA: TStringField;
    Q_adicoesQT_UN_ESTATISTICA: TStringField;
    Q_adicoesCD_APLICACAO_MERC: TStringField;
    Q_adicoesVL_MERC_EMB_MN: TFloatField;
    Q_adicoesCD_MOEDA_NEGOCIADA: TStringField;
    Q_adicoesCD_INCOTERMS_VENDA: TStringField;
    Q_adicoesNM_LOC_COND_VENDA: TStringField;
    Q_adicoesVL_MERC_COND_VENDA: TFloatField;
    Q_adicoesVL_MERC_VENDA_MN: TFloatField;
    Q_adicoesVL_FRETE_MERC_MNEG: TFloatField;
    Q_adicoesCD_MD_FRETE_MERC: TStringField;
    Q_adicoesVL_FRETE_MERC_MN: TFloatField;
    Q_adicoesVL_SEG_MERC_MNEG: TFloatField;
    Q_adicoesCD_MOEDA_SEG_MERC: TStringField;
    Q_adicoesVL_SEG_MERC_MN: TFloatField;
    Q_adicoesVL_UNID_LOC_EMP: TFloatField;
    Q_adicoesCD_METOD_VALORACAO: TStringField;
    Q_adicoesCD_VINC_IMPO_EXPO: TStringField;
    Q_adicoesCD_TIPO_ACORDO_TAR: TStringField;
    Q_adicoesCD_ACORDO_ALADI: TStringField;
    Q_adicoesCD_REGIME_TRIBUTAR: TStringField;
    Q_adicoesCD_FUND_LEG_REGIME: TStringField;
    Q_adicoesCD_MOTIVO_ADM_TEMP: TStringField;
    Q_adicoesNR_DCTO_REDUCAO: TStringField;
    Q_adicoesVL_DESPESAS_MNEG: TFloatField;
    Q_adicoesCD_MOEDAS_DESPESAS: TStringField;
    Q_adicoesVL_DESPESAS_MN: TFloatField;
    Q_adicoesPC_COEF_REDUC_II: TFloatField;
    Q_adicoesVL_CALC_DCR_DOLAR: TFloatField;
    Q_adicoesVL_II_CALC_DCR_MN: TFloatField;
    Q_adicoesVL_II_DEVIDO_ZFM: TFloatField;
    Q_adicoesVL_II_A_REC_ZFM: TFloatField;
    Q_adicoesCD_COBERT_CAMBIAL: TStringField;
    Q_adicoesCD_MODALIDADE_PGTO: TStringField;
    Q_adicoesCD_ORGAO_FIN_INTER: TStringField;
    Q_adicoesCD_MOTIVO_SEM_COB: TStringField;
    Q_adicoesQT_PARC_FINANC_360: TStringField;
    Q_adicoesCD_PERIOD_PGTO_360: TStringField;
    Q_adicoesQT_PERIOD_PGTO_360: TStringField;
    Q_adicoesVL_TOT_FINANC_360: TFloatField;
    Q_adicoesPC_TAXA_JUROS: TFloatField;
    Q_adicoesCD_TAXA_JUROS: TStringField;
    Q_adicoesVL_FINANC_SUP_360: TFloatField;
    Q_adicoesNR_ROF: TStringField;
    Q_adicoesIN_PGTO_VARIAV_360: TBooleanField;
    Q_adicoesIN_JUROS_ATE_360: TBooleanField;
    Q_adicoesPC_COMISSAO_AG_IMP: TFloatField;
    Q_adicoesVL_COMISSAO_AG_IMP: TFloatField;
    Q_adicoesCD_TIPO_AGENTE_IMP: TStringField;
    Q_adicoesNR_AGENTE_IMP: TStringField;
    Q_adicoesCD_BANC_AGENTE_IMP: TStringField;
    Q_adicoesCD_AGENC_AGENT_IMP: TStringField;
    Q_adicoesIN_BEM_ENCOMENDA: TBooleanField;
    Q_adicoesIN_MATERIAL_USADO: TBooleanField;
    Q_adicoesTX_COMPL_VL_ADUAN: TStringField;
    Q_adicoesIN_IPI_NAO_TRIBUT: TBooleanField;
    Q_adicoesvl_merc_loc_emb_mn: TFloatField;
    Q_adicoesvl_base_calculo_mn: TFloatField;
    Q_adicoesNR_OPER_TRAT_PREV: TStringField;
    T_tributoIPI: TTable;
    DS_tributoIPI: TDataSource;
    T_tributoIPINR_DECL_IMP_MICRO: TStringField;
    T_tributoIPINR_OP_IMP_MICRO: TStringField;
    T_tributoIPICD_RECEITA_IMPOSTO: TStringField;
    T_tributoIPICD_TIPO_ALIQ_IPT: TStringField;
    T_tributoIPIVL_BASE_CALC_ADVAL: TFloatField;
    T_tributoIPIPC_ALIQ_NORM_ADVAL: TFloatField;
    T_tributoIPIVL_CALC_IPT_ADVAL: TFloatField;
    T_tributoIPINM_UN_ALIQ_ESP_IPT: TStringField;
    T_tributoIPICD_TIPO_RECIPIENTE: TStringField;
    T_tributoIPIQT_ML_RECIPIENTE: TFloatField;
    T_tributoIPIQT_MERC_UN_ALIQ_ES: TFloatField;
    T_tributoIPIVL_ALIQ_ESPEC_IPT: TFloatField;
    T_tributoIPIVL_CALC_IPT_ESPEC: TFloatField;
    T_tributoIPICD_TIPO_BENEF_IPI: TStringField;
    T_tributoIPIPC_ALIQ_REDUZIDA: TFloatField;
    T_tributoIPIPC_REDUCAO_IPT_BLI: TFloatField;
    T_tributoIPIPC_ALIQ_ACOR_TARIF: TFloatField;
    T_tributoIPIVL_CALC_II_AC_TARI: TFloatField;
    T_tributoIPIVL_IMPOSTO_DEVIDO: TFloatField;
    T_tributoIPIVL_IPT_A_RECOLHER: TFloatField;
    T_tributoIPICD_TIPO_DIREITO: TStringField;
    T_tributoIPINR_NOTA_COMPL_TIPI: TStringField;
    T_embalagem: TTable;
    DS_embalagem: TDataSource;
    T_embalagemNR_DECL_IMP_MICRO: TStringField;
    T_embalagemNR_SEQ_EMBALAGEM: TSmallintField;
    T_embalagemCD_TIPO_EMBALAGEM: TStringField;
    T_embalagemQT_VOLUME_CARGA: TStringField;
    T_tipoembalagem: TTable;
    DS_tpembalagem: TDataSource;
    T_tipoembalagemCodigo: TStringField;
    T_tipoembalagemDescricao: TStringField;
    Q_detalhes: TQuery;
    DS_qdetalhes: TDataSource;
    T_acresval: TTable;
    DS_acresval: TDataSource;
    T_acresvalNR_DECL_IMP_MICRO: TStringField;
    T_acresvalNR_OP_IMP_MICRO: TStringField;
    T_acresvalCD_MET_ACRES_VALOR: TStringField;
    T_acresvalVL_ACRESCIMO_MOEDA: TFloatField;
    T_acresvalCD_MD_NEGOC_ACRES: TStringField;
    T_acresvalVL_ACRESCIMO_MN: TFloatField;
    T_deduval: TTable;
    DS_deduval: TDataSource;
    T_deduvalNR_DECL_IMP_MICRO: TStringField;
    T_deduvalNR_OP_IMP_MICRO: TStringField;
    T_deduvalCD_MET_DEDUC_VALOR: TStringField;
    T_deduvalVL_DEDUCAO_MNEG: TFloatField;
    T_deduvalCD_MD_NEGOC_DEDUC: TStringField;
    T_deduvalVL_DEDUCAO_MN: TFloatField;
    T_tempdetalhes: TTable;
    DS_temdet: TDataSource;
    DBListBox1: TDBListBox;
    T_nfdetalhesEmpresa: TStringField;
    T_nfdetalhesFilial: TStringField;
    T_nfdetalhesNFiscal: TStringField;
    T_nfdetalhesSequencial: TStringField;
    T_nfdetalhesCodproduto: TStringField;
    T_nfdetalhesDescricao: TStringField;
    T_nfdetalhesClassificacao: TStringField;
    T_nfdetalhesST: TStringField;
    T_nfdetalhesUnidade: TStringField;
    T_nfdetalhesQuantidade: TFloatField;
    T_nfdetalhesValorunitrio: TFloatField;
    T_nfdetalhesValortotal: TFloatField;
    T_nfdetalhesAliquotaICMS: TFloatField;
    T_nfdetalhesAliquotaIPI: TFloatField;
    T_nfdetalhesValIPI: TFloatField;
    T_tempdetalhesEmpresa: TStringField;
    T_tempdetalhesFilial: TStringField;
    T_tempdetalhesUsuario: TStringField;
    T_tempdetalhesNFiscal: TStringField;
    T_tempdetalhesSequencial: TStringField;
    T_tempdetalhesCodproduto: TStringField;
    T_tempdetalhesDescricao: TStringField;
    T_tempdetalhesClassificacao: TStringField;
    T_tempdetalhesST: TStringField;
    T_tempdetalhesUnidade: TStringField;
    T_tempdetalhesQuantidade: TFloatField;
    T_tempdetalhesValorunitrio: TFloatField;
    T_tempdetalhesValorMercadoria: TFloatField;
    T_tempdetalhesFreteUnitrio: TFloatField;
    T_tempdetalhesSeguroUnitrio: TFloatField;
    T_tempdetalhesAcrescimoUnitrio: TFloatField;
    T_tempdetalhesDeduoUnitrio: TFloatField;
    T_tempdetalhesTributoUnitrio: TFloatField;
    T_tempdetalhesValortotal: TFloatField;
    T_tempdetalhesAliquotaICMS: TFloatField;
    T_tempdetalhesAliquotaIPI: TFloatField;
    T_tempdetalhesValIPI: TFloatField;
    T_natoper: TTable;
    DS_natoper: TDataSource;
    T_natoperCdigo: TStringField;
    T_natoperDescrio: TStringField;
    T_natoperCFOP: TStringField;
    DBL_NATOPER: TDBLookupComboBox;
    T_nfiscaisEmpresa: TStringField;
    T_nfiscaisFilial: TStringField;
    T_nfiscaisNFiscal: TStringField;
    T_nfiscaisNatOpe: TStringField;
    T_nfiscaisCFOP: TStringField;
    T_nfiscaisInscEstadual: TStringField;
    T_nfiscaisDI: TStringField;
    T_nfiscaisADICAO: TStringField;
    T_nfiscaisNomedestrem: TStringField;
    T_nfiscaisCNPJCPF: TStringField;
    T_nfiscaisEndereco: TStringField;
    T_nfiscaisCep: TStringField;
    T_nfiscaisMunicipio: TStringField;
    T_nfiscaisFoneFax: TStringField;
    T_nfiscaisUF: TStringField;
    T_nfiscaisInscEstDestRem: TStringField;
    T_nfiscaisDtEmissao: TDateTimeField;
    T_nfiscaisDtsaidaentrada: TDateTimeField;
    T_nfiscaisHorasaida: TDateTimeField;
    T_nfiscaisDuplicataNr: TStringField;
    T_nfiscaisVencimento: TDateTimeField;
    T_nfiscaisValor: TFloatField;
    T_nfiscaisCondEspeciais: TStringField;
    T_nfiscaisBaseCalcICMS: TFloatField;
    T_nfiscaisValICMS: TFloatField;
    T_nfiscaisBaseCalcICMSsubst: TFloatField;
    T_nfiscaisValICMSsubs: TFloatField;
    T_nfiscaisValtotprodutos: TFloatField;
    T_nfiscaisValfrete: TFloatField;
    T_nfiscaisValseguro: TFloatField;
    T_nfiscaisOutrasdesp: TFloatField;
    T_nfiscaisValtotIPI: TFloatField;
    T_nfiscaisVatotnota: TFloatField;
    T_nfiscaisTransportador: TStringField;
    T_nfiscaisFrete: TStringField;
    T_nfiscaisPlaca: TStringField;
    T_nfiscaisUFVeiculo: TStringField;
    T_nfiscaisQuantidade: TFloatField;
    T_nfiscaisEspecie: TStringField;
    T_nfiscaisMarca: TStringField;
    T_nfiscaisNumero: TStringField;
    T_nfiscaisPesoBruto: TFloatField;
    T_nfiscaisPesoLiquido: TFloatField;
    T_nfiscaisIncoterm: TStringField;
    T_nfiscaisTaxaConversao: TFloatField;
    E_nf: TEdit;
    T_nfiscaisDA1: TStringField;
    T_nfiscaisDA2: TStringField;
    T_nfiscaisDA3: TStringField;
    T_nfiscaisDA4: TStringField;
    T_nfiscaisDA5: TStringField;
    T_nfiscaisDA6: TStringField;
    T_nfiscaisDA7: TStringField;
    T_nfiscaisBairrodistrito: TStringField;
    Label1: TLabel;
    T_nfiscaisTiponf: TStringField;
    DBL_tiponf: TDBLookupComboBox;
    T_tiponf: TTable;
    DS_tiponf: TDataSource;
    T_tiponfCodigo: TStringField;
    T_tiponfDescrio: TStringField;
    Panel1: TPanel;
    B_grava: TBitBtn;
    B_fecha: TBitBtn;
    T_nfdetalhesValorMercadoria: TFloatField;
    T_nfdetalhesFreteUnitrio: TFloatField;
    T_nfdetalhesSeguroUnitrio: TFloatField;
    T_nfdetalhesAcrescimoUnitrio: TFloatField;
    T_nfdetalhesDeduoUnitrio: TFloatField;
    T_nfdetalhesTributoUnitrio: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBL_diClick(Sender: TObject);
    procedure DBL_adicoesClick(Sender: TObject);
    procedure B_fechaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure B_gravaClick(Sender: TObject);
    procedure DBL_NATOPERClick(Sender: TObject);
    procedure DBL_tiponfExit(Sender: TObject);
    procedure E_nfExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_nfiscais: TF_nfiscais;
  v_valacresval: real;
  v_valdeduval: real;
  v_txfreteinter: real;
  v_txsegurointer: real;
  v_txtributoii: real;
  v_txtributoipi: real;
  v_unitario: real;
  v_unitarioH: real;
  v_unitarioF: real;
  v_valtotpro: real;
  v_valtotfrete: real;
  v_valtotseguro: real;
  v_valtotIPI: real;
  v_valtotnota: real;
  vl_empresa: string;
  vl_filial: string;
  vl_usuario: string;
  vl_nfiscal: string;
  v_pesobrutodi    :real;
  v_pesoliquidodi  :real;
  v_txpeso         :real;
  v_pesoliquidoadi :real;
  v_nf: string;
  v_ii: real;
  v_fob: real;
  v_textonota: textfile;
  v_nometrans      :string;
  v_cgctrans       :string;
  v_endtrans       :string;
  v_baitrans       :string;
  v_cidtrans       :string;
  v_ceptrans       :string;
  v_uftrans        :string;
  v_instrans       :string;
  v_itens          :integer;
  v_itens2         :integer;
  v_notas          :integer;
  v_qnota          :integer;
    v_nfiscaisEmpresa: string;
    v_Filial: string;
    v_NFiscal: string;
    v_NatOpe:string;
    v_CFOP: string;
    v_InscEstadual: string;
    v_DI: string;
    v_ADICAO: string;
    v_Nomedestrem: string;
    v_CNPJCPF: string;
    v_Endereco: string;
    v_Bairrodistrito: string;
    v_Cep: string;
    v_Municipio: string;
    v_FoneFax: string;
    v_UF: string;
    v_InscEstDestRem: string;
    v_DtEmissao: TDate;
    v_Dtsaidaentrada: TDate;
    v_Horasaida: TDate;
    v_DuplicataNr: string;
    v_Vencimento: TDate;
    v_CondEspeciais: string;
    v_Transportador: string;
    v_Frete: string;
    v_Placa: string;
    v_UFVeiculo: string;
    v_Especie: string;
    v_Marca: string;
    v_Numero: string;
    v_Tiponf: string;
    qitens: integer;
    v_da1:string;
    v_da2:string;
    v_da3:string;
    v_da4:string;
    v_da5:string;


implementation

uses U_MSCOMEX, u_extenso;

{$R *.DFM}

procedure TF_nfiscais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
F_nfiscais := nil;
f_mscomex.NotasFiscais1.enabled := true;
end;

procedure TF_nfiscais.DBL_diClick(Sender: TObject);
begin
    Q_adicoes.Active := false;
    Q_adicoes.Params[0].AsString   := T_nfiscaisdi.asstring;
    Q_adicoes.Active := true;
end;

procedure TF_nfiscais.DBL_adicoesClick(Sender: TObject);

begin
    f_nfiscais.cursor := crHourGlass;
    {Posiciona na DI}
    if T_DI.FindKey([T_nfiscaisDI.asstring]) then begin
    end;
    {zera totais da nota}
    v_valtotpro    := 0;
    v_valtotfrete  := 0;
    v_valtotseguro := 0;
    v_valtotIPI    := 0;
    v_valtotnota   := 0;
    v_fob          := 0;
    v_ii           := 0;
    v_notas        := 0;

    {Localizando TRIBUTOS}
    if T_tributoII.FindKey([Q_adicoesNR_DECL_IMP_MICRO.AsString,Q_adicoesNR_OP_IMP_MICRO.asstring,'0001']) then begin
       v_txtributoii  := (T_tributoiiVL_IPT_A_RECOLHER.asfloat/Q_adicoesVL_MERC_VENDA_MN.asfloat);
    end;
    if T_tributoIPI.FindKey([Q_adicoesNR_DECL_IMP_MICRO.AsString,Q_adicoesNR_OP_IMP_MICRO.asstring,'0002']) then begin
       v_txtributoipi := (T_tributoipiVL_IPT_A_RECOLHER.asfloat/Q_adicoesVL_MERC_VENDA_MN.asfloat);
    end;

    {Acrescimos de valoração}
    v_valacresval := 0;
    while not t_acresval.Eof do begin
          if T_acresvalNR_DECL_IMP_MICRO.asstring = Q_adicoesNR_DECL_IMP_MICRO.AsString then begin
             if T_acresvalNR_OP_IMP_MICRO.asstring = Q_adicoesNR_OP_IMP_MICRO.asstring then begin
                v_valacresval := v_valacresval + (T_acresvalVL_ACRESCIMO_MN.asfloat/Q_adicoesVL_MERC_VENDA_MN.asfloat)
             end
          end;
          t_acresval.next;
    end;

    {Deduções de Valoração}
    v_valdeduval := 0;
    while not t_deduval.Eof do begin
          if T_deduvalNR_DECL_IMP_MICRO.asstring = Q_adicoesNR_DECL_IMP_MICRO.AsString then begin
             if T_deduvalNR_OP_IMP_MICRO.asstring = Q_adicoesNR_OP_IMP_MICRO.asstring then begin
                v_valdeduval := v_valdeduval + (T_deduvalVL_DEDUCAO_MN.asfloat/Q_adicoesVL_MERC_VENDA_MN.asfloat)
             end
          end;
          t_deduval.next;
    end;


    {Rateio de frete e seguro internacionais}
    v_txfreteinter := 0;
    v_txsegurointer:= 0;
    if T_adicao.FindKey([T_nfiscaisDI.asstring,T_nfiscaisadicao.asstring]) then begin
       v_txfreteinter := (T_adicaoVL_FRETE_MERC_MN.asfloat/T_adicaoVL_MERC_VENDA_MN.asfloat);
       v_txsegurointer:= (T_adicaoVL_SEG_MERC_MN.asfloat/T_adicaoVL_MERC_VENDA_MN.asfloat);
    end;

    {Atualizando Tabela Temporaria de Mercadorias}
    t_tempdetalhes.open;
    {t_tempdetalhes.edit;}
    {t_tempdetalhes.EmptyTable;}
    t_tempdetalhes.first;
    while not t_tempdetalhes.Eof do begin
          {if (T_tempdetalhesEmpresa.asstring  = t_parametrosempresa.asstring) and (T_tempdetalhesFilial.asstring   = t_parametrosfilial.asstring) and (T_tempdetalhesUsuario.asstring  = v_usuario) then begin
              t_tempdetalhes.edit;
              t_tempdetalhes.delete;
              {t_tempdetalhes.post;}

          t_tempdetalhes.edit;
          t_tempdetalhes.delete;
    end;

    t_detalhemerc.first;
    while not t_detalhemerc.Eof do begin
          if (T_detalhemercNR_DECL_IMP_MICRO.asstring = T_nfiscaisDI.asstring) and (T_detalhemercNR_OP_IMP_MICRO.asstring = T_nfiscaisADICAO.asstring) then begin
              t_tempdetalhes.append;
              T_tempdetalhesEmpresa.asstring       := t_parametrosempresa.asstring;
              T_tempdetalhesFilial.asstring        := t_parametrosfilial.asstring;
              T_tempdetalhesUsuario.asstring       := v_usuario;
              T_tempdetalhesNFiscal.asstring       := T_nfiscaisNFiscal.asstring;
              T_tempdetalhesSequencial.asstring    := inttostr(T_detalhemercNU_SEQ_DETALHE.asinteger);
              if T_detalhemercCD_PRODUTO.asstring = '' then T_tempdetalhesCodproduto.asstring    := '          '
              else T_tempdetalhesCodproduto.asstring := T_detalhemercCD_PRODUTO.asstring;
              T_tempdetalhesDescricao.asstring     := T_detalhemercTX_DESC_DET_MERC.asstring;
              T_tempdetalhesClassificacao.asstring := Q_adicoesCD_MERCADORIA_NCM.asstring;
              T_tempdetalhesST.asstring            := '  ';
              T_tempdetalhesUnidade.asstring       := T_detalhemercNM_UN_MEDID_COMERC.asstring;
              T_tempdetalhesQuantidade.asfloat     := (strtofloat(copy(T_detalhemercQT_MERC_UN_COMERC.asstring,1,9)+','+copy(T_detalhemercQT_MERC_UN_COMERC.asstring,10,5)));
              IF (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'FOB') or     (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'FCA') or (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'EXW') then begin
                 v_unitario  := 0;
                 v_unitarioH := 0;
                 v_unitarioF := 0;
                 v_unitario  := ((strtofloat(copy(T_detalhemercVL_UNID_COND_VENDA.asstring,1,13)+','+copy(T_detalhemercVL_UNID_COND_VENDA.asstring,14,7)))*(Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat));
                 v_unitarioF := (v_unitarioF + v_unitario);
                 if T_nfiscaisTiponf.asstring <> '2' then begin
                    v_unitarioF := (v_unitarioF + (v_unitario*v_txfreteinter));
                    v_unitarioF := (v_unitarioF + (v_unitario*v_txsegurointer));
                    v_unitarioF := (v_unitarioF + (v_unitario*v_valacresval));
                    v_unitarioF := (v_unitarioF - (v_unitario*v_valdeduval));
                 end;
                 v_unitarioF := (v_unitarioF + (v_unitario*v_txtributoii));
                 T_tempdetalhesValorunitrio.asfloat     := v_unitarioF;
                 T_tempdetalhesFreteUnitrio.asfloat     := (v_unitario*v_txfreteinter);
                 T_tempdetalhesSeguroUnitrio.asfloat    := (v_unitario*v_txsegurointer);
                 T_tempdetalhesAcrescimoUnitrio.asfloat := (v_unitario*v_valacresval);
                 T_tempdetalhesDeduoUnitrio.asfloat     := (v_unitario*v_valdeduval);
                 T_tempdetalhesTributoUnitrio.asfloat   := (v_unitario*v_txtributoii);
                 T_tempdetalhesValorMercadoria.asfloat  :=  v_unitario;
                 v_fob := v_fob + (T_tempdetalhesQuantidade.asfloat*(v_unitario+T_tempdetalhesAcrescimoUnitrio.asfloat-T_tempdetalhesDeduoUnitrio.asfloat));
              end;
              IF (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'CFR') or  (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'CPT') then begin
                 v_unitario  := 0;
                 v_unitarioF := 0;
                 v_unitarioH := 0;
                 v_unitarioF := 0;
                 v_unitario  := ((strtofloat(copy(T_detalhemercVL_UNID_COND_VENDA.asstring,1,13)+','+copy(T_detalhemercVL_UNID_COND_VENDA.asstring,14,7)))*(Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat));
                 {v_unitarioF := (v_unitarioF + (v_unitario*v_txfreteinter));}
                 v_unitarioF := (v_unitarioF + v_unitario);
                 if T_nfiscaisTiponf.asstring <> '2' then begin
                    v_unitarioF := (v_unitarioF + (v_unitario*v_txsegurointer));
                    v_unitarioF := (v_unitarioF + (v_unitario*v_valacresval));
                    v_unitarioF := (v_unitarioF - (v_unitario*v_valdeduval));
                 end;
                 v_unitarioF := (v_unitarioF + (v_unitario*v_txtributoii));
                 T_tempdetalhesValorunitrio.asfloat     := v_unitarioF;
                 T_tempdetalhesSeguroUnitrio.asfloat    := (v_unitario*v_txsegurointer);
                 T_tempdetalhesAcrescimoUnitrio.asfloat := (v_unitario*v_valacresval);
                 T_tempdetalhesDeduoUnitrio.asfloat     := (v_unitario*v_valdeduval);
                 T_tempdetalhesTributoUnitrio.asfloat   := (v_unitario*v_txtributoii);
                 T_tempdetalhesValorMercadoria.asfloat  :=  v_unitario;
                 v_fob := v_fob + (T_tempdetalhesQuantidade.asfloat*(v_unitario-(v_unitario*v_txfreteinter)+T_tempdetalhesAcrescimoUnitrio.asfloat-T_tempdetalhesDeduoUnitrio.asfloat));
              end;
              IF (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'DDU') then begin
                 v_unitario  := 0;
                 v_unitarioF := 0;
                 v_unitario  := ((strtofloat(copy(T_detalhemercVL_UNID_COND_VENDA.asstring,1,13)+','+copy(T_detalhemercVL_UNID_COND_VENDA.asstring,14,7)))*(Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat));
                 v_unitarioF := (v_unitarioF + v_unitario);
                 if T_nfiscaisTiponf.asstring <> '2' then begin
                    {v_unitarioF := (v_unitarioF + (v_unitario*v_txfreteinter));
                    v_unitarioF := (v_unitarioF + (v_unitario*v_txsegurointer));}
                    v_unitarioF := (v_unitarioF + (v_unitario*v_valacresval));
                    v_unitarioF := (v_unitarioF - (v_unitario*v_valdeduval));
                 end;
                 v_unitarioF := (v_unitarioF + (v_unitario*v_txtributoii));
                 T_tempdetalhesValorunitrio.asfloat     := v_unitarioF;
                 T_tempdetalhesAcrescimoUnitrio.asfloat := (v_unitario*v_valacresval);
                 T_tempdetalhesDeduoUnitrio.asfloat     := (v_unitario*v_valdeduval);
                 T_tempdetalhesTributoUnitrio.asfloat   := (v_unitario*v_txtributoii);
                 T_tempdetalhesValorMercadoria.asfloat  :=  v_unitario;
                 v_fob := v_fob + (T_tempdetalhesQuantidade.asfloat*(v_unitario-(v_unitario*v_txfreteinter)-(v_unitario*v_txsegurointer)+T_tempdetalhesAcrescimoUnitrio.asfloat-T_tempdetalhesDeduoUnitrio.asfloat));
              end;

              T_tempdetalhesValortotal.asfloat     := (T_tempdetalhesValorunitrio.asfloat * T_tempdetalhesQuantidade.asfloat );
              T_tempdetalhesAliquotaICMS.asfloat   := 0;
              T_tempdetalhesAliquotaIPI.asfloat    := T_tributoIPIPC_ALIQ_NORM_ADVAL.asfloat;
              T_tempdetalhesValIPI.asfloat         := ((v_unitario*T_tempdetalhesQuantidade.asfloat)*v_txtributoipi);
              t_tempdetalhes.post;
              v_valtotpro    :=  ( v_valtotpro    +(T_tempdetalhesValortotal.asfloat));
              v_valtotfrete  :=  ( v_valtotfrete  +((v_unitario*v_txfreteinter)*T_tempdetalhesQuantidade.asfloat));
              v_valtotseguro :=  ( v_valtotseguro +((v_unitario*v_txsegurointer)*T_tempdetalhesQuantidade.asfloat));
              v_valtotIPI    :=  ( v_valtotIPI    +(T_tempdetalhesValIPI.asfloat));
              v_valtotnota   :=  ( v_valtotnota   +((T_tempdetalhesValortotal.asfloat+T_tempdetalhesValIPI.asfloat)));
              v_ii  := v_ii + (T_tempdetalhesQuantidade.asfloat*T_tempdetalhesTributoUnitrio.asfloat);
          end;
          t_detalhemerc.next;
    end;

    vl_empresa := t_parametrosempresa.asstring;
    vl_filial  := t_parametrosfilial.asstring;
    vl_usuario := v_usuario;
    vl_nfiscal := T_nfiscaisNFiscal.asstring;
    {t_tempdetalhes.filter := 'Empresa = ' + vl_empresa + ' and ;}

    T_nfiscaisDtEmissao.asdatetime      := date();
    T_nfiscaisDtsaidaentrada.asdatetime := date();
    {T_nfiscaisHorasaida.asdatetime  := date();}

    T_nfiscaisNomedestrem.asstring := Q_adicoesNM_FORN_ESTR.asstring;
    T_nfiscaisEndereco.asstring    := (Q_adicoesED_LOGR_FORN_ESTR.asstring+', '+Q_adicoesED_NR_FORN_ESTR.asstring);
    {T_nfiscaisBairrodistrito       :=}
    T_nfiscaisCep.asstring         := Q_adicoesED_COMPL_FORN_ESTR.asstring;
    T_nfiscaisMunicipio.asstring   := (Q_adicoesED_CIDAD_FORN_ESTR.asstring + ', '+Q_adicoesED_ESTAD_FORN_ESTR.asstring);
    {T_nfiscaisFoneFax.asstring    :=}
    T_nfiscaisDA1.asstring         := 'ICMS diferido conforme Termo de Acordo nr 1594/98 A53';
    T_nfiscaisDA2.asstring         := 'Fatura Nr ';
    T_nfiscaisDA3.asstring         := 'DI Nr '+ T_diNR_DECLARACAO_IMP.asstring +' - DI DATA '+ copy(T_diDT_REGISTRO_DI.asstring,1,2)+'/'+copy(T_diDT_REGISTRO_DI.asstring,3,2)+'/'+copy(T_diDT_REGISTRO_DI.asstring,5,4);
    T_nfiscaisDA4.asstring         := 'FOB    R$ '+ floattostrf(v_fob,ffNumber,15,2);
    T_nfiscaisDA5.asstring         := 'II     R$ '+ floattostrf(v_ii,ffNumber,15,2);
    T_nfiscaisIncoterm.asstring    :=  Q_adicoesCD_INCOTERMS_VENDA.AsString;
    T_nfiscaisTaxaConversao.asfloat:=  (Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat);

    if T_embalagem.FindKey([Q_adicoesNR_DECL_IMP_MICRO.AsString,'0']) then begin
       T_nfiscaisQuantidade.asfloat := T_embalagemQT_VOLUME_CARGA.asfloat;
       if T_tipoembalagem.FindKey([T_embalagemCD_TIPO_EMBALAGEM.AsString]) then begin
          T_nfiscaisEspecie.asstring := T_tipoembalagemDescricao.asstring;
       end;
    end;
    v_pesobrutodi    := strtofloat(copy(T_diPB_CARGA.asstring,1,10)+','+copy(T_diPB_CARGA.asstring,11,5));
    v_pesoliquidodi  := strtofloat(copy(T_diPL_CARGA.asstring,1,10)+','+copy(T_diPL_CARGA.asstring,11,5));
    v_txpeso         := (v_pesobrutodi/v_pesoliquidodi);
    v_pesoliquidoadi := strtofloat(COPY(T_adicaoPL_MERCADORIA.asstring,1,10)+','+COPY(T_adicaoPL_MERCADORIA.asstring,11,5));

    T_nfiscaisPesoBruto.asfloat      := (v_pesoliquidoadi*v_txpeso);
    T_nfiscaisPesoLiquido.asfloat    := v_pesoliquidoadi;
    T_nfiscaisValtotprodutos.asfloat := v_valtotpro;
    {T_nfiscaisValfrete.asfloat      := v_valtotfrete;
    T_nfiscaisValseguro.asfloat      := v_valtotseguro;}
    T_nfiscaisValtotIPI.asfloat      := v_valtotIPI;
    T_nfiscaisVatotnota.asfloat      := v_valtotnota;
    T_nfiscaisDA6.asstring           := 'FRETE  R$ '+ floattostrf(v_valtotfrete,ffNumber,15,2);
    T_nfiscaisDA7.asstring           := 'SEGURO R$ '+ floattostrf(v_valtotseguro,ffNumber,15,2);
    B_grava.enabled := true;
    f_nfiscais.cursor := crDefault;
end;


procedure TF_nfiscais.B_fechaClick(Sender: TObject);
begin
    F_nfiscais.close;
end;

procedure TF_nfiscais.FormActivate(Sender: TObject);
begin
f_nfiscais.left := 0;
f_nfiscais.top  := 0;
{T_nfiscais.open;
T_nfiscais.append;}
end;

procedure TF_nfiscais.B_gravaClick(Sender: TObject);

begin

    if T_nfiscaisTiponf.asstring = '1' then qitens := 25;
    if T_nfiscaisTiponf.asstring = '2' then qitens := 25;
    if T_nfiscaisTiponf.asstring = '3' then qitens := 22;
    if T_nfiscaisTiponf.asstring = '4' then qitens := 18;
    T_nfiscais.post;
    T_nfiscais.edit;

    {Verifica quantas notas serão geradas}
    t_detalhemerc.first;
    v_itens := 0;
    v_notas := 1;
    while not t_detalhemerc.Eof do begin
          if (T_detalhemercNR_DECL_IMP_MICRO.asstring = T_nfiscaisDI.asstring) and (T_detalhemercNR_OP_IMP_MICRO.asstring = T_nfiscaisADICAO.asstring) then begin
              v_itens := v_itens+1
          end;
          t_detalhemerc.next;
    end;

    if v_itens > qitens then begin
       v_notas := (v_itens div qitens)+1;
       MessageDlg('Serão geradas '+ inttostr(v_notas)+ ' notas fiscais.', mtConfirmation, [mbOK], 0);
       {Gera varias notas}

       v_qnota := 1;
       while v_qnota <= v_notas do begin
               v_valtotpro    := 0;
               v_valtotfrete  := 0;
               v_valtotseguro := 0;
               v_valtotIPI    := 0;
               v_valtotnota   := 0;
               v_fob          := 0;
               v_ii           := 0;

             v_itens2 := 0;
             if v_qnota > 1 then begin
               T_nfiscais.append;
               T_nfiscaisEmpresa       .asstring    := v_Empresa       ;
               T_nfiscaisFilial        .asstring    := v_Filial        ;
               T_nfiscaisNFiscal       .asstring    := v_nf+CHR(96+v_qnota);
               T_nfiscaisNatOpe        .asstring    := v_NatOpe        ;
               T_nfiscaisCFOP          .asstring    := v_CFOP          ;
               T_nfiscaisInscEstadual  .asstring    := v_InscEstadual  ;
               T_nfiscaisDI            .asstring    := v_DI            ;
               T_nfiscaisADICAO        .asstring    := v_ADICAO        ;
               T_nfiscaisNomedestrem   .asstring    := v_Nomedestrem   ;
               T_nfiscaisCNPJCPF       .asstring    := v_CNPJCPF       ;
               T_nfiscaisEndereco      .asstring    := v_Endereco      ;
               T_nfiscaisBairrodistrito.asstring    := v_Bairrodistrito;
               T_nfiscaisCep           .asstring    := v_Cep           ;
               T_nfiscaisMunicipio     .asstring    := v_Municipio     ;
               T_nfiscaisFoneFax       .asstring    := v_FoneFax       ;
               T_nfiscaisUF            .asstring    := v_UF            ;
               T_nfiscaisInscEstDestRem.asstring    := v_InscEstDestRem;
               T_nfiscaisDtEmissao     .asdatetime  := v_DtEmissao     ;
               T_nfiscaisDtsaidaentrada.asdatetime  := v_Dtsaidaentrada;
               T_nfiscaisHorasaida     .asdatetime  := v_Horasaida     ;
               T_nfiscaisDuplicataNr   .asstring    := v_DuplicataNr   ;
               T_nfiscaisVencimento    .asdatetime  := v_Vencimento    ;
               T_nfiscaisCondEspeciais .asstring    := v_CondEspeciais ;
               T_nfiscaisTransportador .asstring    := v_Transportador ;
               T_nfiscaisFrete         .asstring    := v_Frete         ;
               T_nfiscaisPlaca         .asstring    := v_Placa         ;
               T_nfiscaisUFVeiculo     .asstring    := v_UFVeiculo     ;
               T_nfiscaisEspecie       .asstring    := v_Especie       ;
               T_nfiscaisMarca         .asstring    := v_Marca         ;
               T_nfiscaisNumero        .asstring    := v_Numero        ;
               T_nfiscaisTiponf        .asstring    := v_Tiponf        ;
               T_nfiscaisDA1.asstring               := v_da1;
               T_nfiscaisDA2.asstring               := v_da2;
               T_nfiscaisDA3.asstring               := v_da3;
               T_nfiscaisDA4.asstring               := v_da4;
               T_nfiscaisDA5.asstring               := v_da5;

             end;

            {Atualizando Tabela Temporaria de Mercadorias}
            t_tempdetalhes.open;
            t_tempdetalhes.first;
            while not t_tempdetalhes.Eof do begin
                  {if (T_tempdetalhesEmpresa.asstring  = t_parametrosempresa.asstring) and (T_tempdetalhesFilial.asstring   = t_parametrosfilial.asstring) and (T_tempdetalhesUsuario.asstring  = v_usuario) then begin
                  t_tempdetalhes.edit;
                  t_tempdetalhes.delete;
                  {t_tempdetalhes.post;}
                  t_tempdetalhes.edit;
                  t_tempdetalhes.delete;
            end;

            t_detalhemerc.first;
            while not t_detalhemerc.Eof do begin
              if (T_detalhemercNR_DECL_IMP_MICRO.asstring = T_nfiscaisDI.asstring) and (T_detalhemercNR_OP_IMP_MICRO.asstring = T_nfiscaisADICAO.asstring) then begin
                  v_itens2 := v_itens2+1;
                  if ((v_itens2 <= (v_qnota*qitens)) and (v_itens2>((v_qnota-1)*qitens))) then begin
                     t_tempdetalhes.append;
                     T_tempdetalhesEmpresa.asstring       := t_parametrosempresa.asstring;
                     T_tempdetalhesFilial.asstring        := t_parametrosfilial.asstring;
                     T_tempdetalhesUsuario.asstring       := v_usuario;
                     T_tempdetalhesNFiscal.asstring       := T_nfiscaisNFiscal.asstring;
                     T_tempdetalhesSequencial.asstring    := inttostr(T_detalhemercNU_SEQ_DETALHE.asinteger);
                     if T_detalhemercCD_PRODUTO.asstring = '' then T_tempdetalhesCodproduto.asstring    := '          '
                     else T_tempdetalhesCodproduto.asstring := T_detalhemercCD_PRODUTO.asstring;
                     T_tempdetalhesDescricao.asstring     := T_detalhemercTX_DESC_DET_MERC.asstring;
                     T_tempdetalhesClassificacao.asstring := Q_adicoesCD_MERCADORIA_NCM.asstring;
                     T_tempdetalhesST.asstring            := '  ';
                     T_tempdetalhesUnidade.asstring       := T_detalhemercNM_UN_MEDID_COMERC.asstring;
                     T_tempdetalhesQuantidade.asfloat     := (strtofloat(copy(T_detalhemercQT_MERC_UN_COMERC.asstring,1,9)+','+copy(T_detalhemercQT_MERC_UN_COMERC.asstring,10,5)));
                  IF (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'FOB') or     (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'FCA') or (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'EXW') then begin
                     v_unitario  := 0;
                     v_unitarioH := 0;
                     v_unitarioF := 0;
                     v_unitario  := ((strtofloat(copy(T_detalhemercVL_UNID_COND_VENDA.asstring,1,13)+','+copy(T_detalhemercVL_UNID_COND_VENDA.asstring,14,7)))*(Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat));
                     v_unitarioF := (v_unitarioF + v_unitario);
                     if T_nfiscaisTiponf.asstring <> '2' then begin
                        v_unitarioF := (v_unitarioF + (v_unitario*v_txfreteinter));
                        v_unitarioF := (v_unitarioF + (v_unitario*v_txsegurointer));
                        v_unitarioF := (v_unitarioF + (v_unitario*v_valacresval));
                        v_unitarioF := (v_unitarioF - (v_unitario*v_valdeduval));
                     end;
                     v_unitarioF := (v_unitarioF + (v_unitario*v_txtributoii));
                     T_tempdetalhesValorunitrio.asfloat     := v_unitarioF;
                     T_tempdetalhesFreteUnitrio.asfloat     := (v_unitario*v_txfreteinter);
                     T_tempdetalhesSeguroUnitrio.asfloat    := (v_unitario*v_txsegurointer);
                     T_tempdetalhesAcrescimoUnitrio.asfloat := (v_unitario*v_valacresval);
                     T_tempdetalhesDeduoUnitrio.asfloat     := (v_unitario*v_valdeduval);
                     T_tempdetalhesTributoUnitrio.asfloat   := (v_unitario*v_txtributoii);
                     T_tempdetalhesValorMercadoria.asfloat  :=  v_unitario;
                     v_fob := v_fob + (T_tempdetalhesQuantidade.asfloat*(v_unitario+T_tempdetalhesAcrescimoUnitrio.asfloat-T_tempdetalhesDeduoUnitrio.asfloat));
                  end;
                  IF (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'CFR') or  (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'CPT') then begin
                     v_unitario  := 0;
                     v_unitarioF := 0;
                     v_unitarioH := 0;
                     v_unitarioF := 0;
                     v_unitario  := ((strtofloat(copy(T_detalhemercVL_UNID_COND_VENDA.asstring,1,13)+','+copy(T_detalhemercVL_UNID_COND_VENDA.asstring,14,7)))*(Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat));
                     {v_unitarioF := (v_unitarioF + (v_unitario*v_txfreteinter));}
                     v_unitarioF := (v_unitarioF + v_unitario);
                     if T_nfiscaisTiponf.asstring <> '2' then begin
                        v_unitarioF := (v_unitarioF + (v_unitario*v_txsegurointer));
                        v_unitarioF := (v_unitarioF + (v_unitario*v_valacresval));
                        v_unitarioF := (v_unitarioF - (v_unitario*v_valdeduval));
                     end;
                     v_unitarioF := (v_unitarioF + (v_unitario*v_txtributoii));
                     T_tempdetalhesValorunitrio.asfloat     := v_unitarioF;
                     T_tempdetalhesSeguroUnitrio.asfloat    := (v_unitario*v_txsegurointer);
                     T_tempdetalhesAcrescimoUnitrio.asfloat := (v_unitario*v_valacresval);
                     T_tempdetalhesDeduoUnitrio.asfloat     := (v_unitario*v_valdeduval);
                     T_tempdetalhesTributoUnitrio.asfloat   := (v_unitario*v_txtributoii);
                     T_tempdetalhesValorMercadoria.asfloat  :=  v_unitario;
                     v_fob := v_fob + (T_tempdetalhesQuantidade.asfloat*(v_unitario-(v_unitario*v_txfreteinter)+T_tempdetalhesAcrescimoUnitrio.asfloat-T_tempdetalhesDeduoUnitrio.asfloat));
                  end;
                  IF (Q_adicoesCD_INCOTERMS_VENDA.AsString = 'DDU') then begin
                     v_unitario  := 0;
                     v_unitarioF := 0;
                     v_unitario  := ((strtofloat(copy(T_detalhemercVL_UNID_COND_VENDA.asstring,1,13)+','+copy(T_detalhemercVL_UNID_COND_VENDA.asstring,14,7)))*(Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat));
                     v_unitarioF := (v_unitarioF + v_unitario);
                     if T_nfiscaisTiponf.asstring <> '2' then begin
                        {v_unitarioF := (v_unitarioF + (v_unitario*v_txfreteinter));
                         v_unitarioF := (v_unitarioF + (v_unitario*v_txsegurointer));}
                         v_unitarioF := (v_unitarioF + (v_unitario*v_valacresval));
                         v_unitarioF := (v_unitarioF - (v_unitario*v_valdeduval));
                     end;
                     v_unitarioF := (v_unitarioF + (v_unitario*v_txtributoii));
                     T_tempdetalhesValorunitrio.asfloat     := v_unitarioF;
                     T_tempdetalhesAcrescimoUnitrio.asfloat := (v_unitario*v_valacresval);
                     T_tempdetalhesDeduoUnitrio.asfloat     := (v_unitario*v_valdeduval);
                     T_tempdetalhesTributoUnitrio.asfloat   := (v_unitario*v_txtributoii);
                     T_tempdetalhesValorMercadoria.asfloat  :=  v_unitario;
                     v_fob := v_fob + (T_tempdetalhesQuantidade.asfloat*(v_unitario-(v_unitario*v_txfreteinter)-(v_unitario*v_txsegurointer)+T_tempdetalhesAcrescimoUnitrio.asfloat-T_tempdetalhesDeduoUnitrio.asfloat));
                  end;

                  T_tempdetalhesValortotal.asfloat     := (T_tempdetalhesValorunitrio.asfloat * T_tempdetalhesQuantidade.asfloat );
                  T_tempdetalhesAliquotaICMS.asfloat   := 0;
                  T_tempdetalhesAliquotaIPI.asfloat    := T_tributoIPIPC_ALIQ_NORM_ADVAL.asfloat;
                  T_tempdetalhesValIPI.asfloat         := ((v_unitario*T_tempdetalhesQuantidade.asfloat)*v_txtributoipi);
                  t_tempdetalhes.post;
                  v_valtotpro    :=  ( v_valtotpro    +(T_tempdetalhesValortotal.asfloat));
                  v_valtotfrete  :=  ( v_valtotfrete  +((v_unitario*v_txfreteinter)*T_tempdetalhesQuantidade.asfloat));
                  v_valtotseguro :=  ( v_valtotseguro +((v_unitario*v_txsegurointer)*T_tempdetalhesQuantidade.asfloat));
                  v_valtotIPI    :=  ( v_valtotIPI    +(T_tempdetalhesValIPI.asfloat));
                  v_valtotnota   :=  ( v_valtotnota   +((T_tempdetalhesValortotal.asfloat+T_tempdetalhesValIPI.asfloat)));
                  v_ii  := v_ii + (T_tempdetalhesQuantidade.asfloat*T_tempdetalhesTributoUnitrio.asfloat);
                  end;
              end;
              t_detalhemerc.next;
            end;

              T_nfiscaisDtEmissao.asdatetime      := date();
              T_nfiscaisDtsaidaentrada.asdatetime := date();
              {T_nfiscaisHorasaida.asdatetime  := date();}

              T_nfiscaisNomedestrem.asstring := Q_adicoesNM_FORN_ESTR.asstring;
              T_nfiscaisEndereco.asstring    := (Q_adicoesED_LOGR_FORN_ESTR.asstring+', '+Q_adicoesED_NR_FORN_ESTR.asstring);
              {T_nfiscaisBairrodistrito       :=}
              T_nfiscaisCep.asstring         := Q_adicoesED_COMPL_FORN_ESTR.asstring;
              T_nfiscaisMunicipio.asstring   := (Q_adicoesED_CIDAD_FORN_ESTR.asstring + ', '+Q_adicoesED_ESTAD_FORN_ESTR.asstring);
              {T_nfiscaisFoneFax.asstring    :=}
              {T_nfiscaisDA1.asstring         := 'ICMS diferido conforme Termo de Acordo nr 1594/98 A53';
              T_nfiscaisDA2.asstring         := 'Fatura Nr ';}
              T_nfiscaisDA3.asstring         := 'DI Nr '+ T_diNR_DECLARACAO_IMP.asstring +' - DI DATA '+ copy(T_diDT_REGISTRO_DI.asstring,1,2)+'/'+copy(T_diDT_REGISTRO_DI.asstring,3,2)+'/'+copy(T_diDT_REGISTRO_DI.asstring,5,4);
              T_nfiscaisDA4.asstring         := 'FOB    R$ '+ floattostrf(v_fob,ffNumber,15,2);
              T_nfiscaisDA5.asstring         := 'II     R$ '+ floattostrf(v_ii,ffNumber,15,2);
              T_nfiscaisIncoterm.asstring    :=  Q_adicoesCD_INCOTERMS_VENDA.AsString;
              T_nfiscaisTaxaConversao.asfloat:=  (Q_adicoesVL_MERC_VENDA_MN.asfloat/Q_adicoesVL_MERC_COND_VENDA.asfloat);

              if T_embalagem.FindKey([Q_adicoesNR_DECL_IMP_MICRO.AsString,'0']) then begin
                 T_nfiscaisQuantidade.asfloat := T_embalagemQT_VOLUME_CARGA.asfloat;
                 if T_tipoembalagem.FindKey([T_embalagemCD_TIPO_EMBALAGEM.AsString]) then begin
                    T_nfiscaisEspecie.asstring := T_tipoembalagemDescricao.asstring;
                 end;
              end;
              v_pesobrutodi    := strtofloat(copy(T_diPB_CARGA.asstring,1,10)+','+copy(T_diPB_CARGA.asstring,11,5));
              v_pesoliquidodi  := strtofloat(copy(T_diPL_CARGA.asstring,1,10)+','+copy(T_diPL_CARGA.asstring,11,5));
              v_txpeso         := (v_pesobrutodi/v_pesoliquidodi);
              v_pesoliquidoadi := strtofloat(COPY(T_adicaoPL_MERCADORIA.asstring,1,10)+','+COPY(T_adicaoPL_MERCADORIA.asstring,11,5));

              T_nfiscaisPesoBruto.asfloat      := (v_pesoliquidoadi*v_txpeso);
              T_nfiscaisPesoLiquido.asfloat    := v_pesoliquidoadi;
              T_nfiscaisValtotprodutos.asfloat := v_valtotpro;
              {T_nfiscaisValfrete.asfloat      := v_valtotfrete;
              T_nfiscaisValseguro.asfloat      := v_valtotseguro;}
              T_nfiscaisValtotIPI.asfloat      := v_valtotIPI;
              T_nfiscaisVatotnota.asfloat      := v_valtotnota;
              T_nfiscaisDA6.asstring           := 'FRETE  R$ '+ floattostrf(v_valtotfrete,ffNumber,15,2);
              T_nfiscaisDA7.asstring           := 'SEGURO R$ '+ floattostrf(v_valtotseguro,ffNumber,15,2);

              if T_nfiscaisFrete.asstring = '' then T_nfiscaisFrete.asstring :='2';

            v_Empresa       := T_nfiscaisEmpresa       .asstring;
            v_Filial        := T_nfiscaisFilial        .asstring;
            v_NFiscal       := T_nfiscaisNFiscal       .asstring;
            v_NatOpe        := T_nfiscaisNatOpe        .asstring;
            v_CFOP          := T_nfiscaisCFOP          .asstring;
            v_InscEstadual  := T_nfiscaisInscEstadual  .asstring;
            v_DI            := T_nfiscaisDI            .asstring;
            v_ADICAO        := T_nfiscaisADICAO        .asstring;
            v_Nomedestrem   := T_nfiscaisNomedestrem   .asstring;
            v_CNPJCPF       := T_nfiscaisCNPJCPF       .asstring;
            v_Endereco      := T_nfiscaisEndereco      .asstring;
            v_Bairrodistrito:= T_nfiscaisBairrodistrito.asstring;
            v_Cep           := T_nfiscaisCep           .asstring;
            v_Municipio     := T_nfiscaisMunicipio     .asstring;
            v_FoneFax       := T_nfiscaisFoneFax       .asstring;
            v_UF            := T_nfiscaisUF            .asstring;
            v_InscEstDestRem:= T_nfiscaisInscEstDestRem.asstring;
            v_DtEmissao     := T_nfiscaisDtEmissao     .asdatetime;
            v_Dtsaidaentrada:= T_nfiscaisDtsaidaentrada.asdatetime;
            v_Horasaida     := T_nfiscaisHorasaida     .asdatetime;
            v_DuplicataNr   := T_nfiscaisDuplicataNr   .asstring;
            v_Vencimento    := T_nfiscaisVencimento    .asdatetime;
            v_CondEspeciais := T_nfiscaisCondEspeciais .asstring;
            v_Transportador := T_nfiscaisTransportador .asstring;
            v_Frete         := T_nfiscaisFrete         .asstring;
            v_Placa         := T_nfiscaisPlaca         .asstring;
            v_UFVeiculo     := T_nfiscaisUFVeiculo     .asstring;
            v_Especie       := T_nfiscaisEspecie       .asstring;
            v_Marca         := T_nfiscaisMarca         .asstring;
            v_Numero        := T_nfiscaisNumero        .asstring;
            v_Tiponf        := T_nfiscaisTiponf        .asstring;
            v_da1           := T_nfiscaisDA1.asstring;
            v_da2           := T_nfiscaisDA2.asstring;
            v_da3           := T_nfiscaisDA3.asstring;
            v_da4           := T_nfiscaisDA4.asstring;
            v_da5           := T_nfiscaisDA5.asstring;

            T_nfdetalhes.open;
            t_tempdetalhes.open;
            t_tempdetalhes.first;
            while not t_tempdetalhes.Eof do begin
                  T_nfdetalhes.append;
                  T_nfdetalhesEmpresa.asstring        :=  T_tempdetalhesEmpresa.asstring;
                  T_nfdetalhesFilial.asstring         :=  T_tempdetalhesFilial.asstring;
                  T_nfdetalhesNFiscal.asstring        :=  T_tempdetalhesNFiscal.asstring;
                  T_nfdetalhesSequencial.asstring     :=  T_tempdetalhesSequencial.asstring;
                  T_nfdetalhesCodproduto.asstring     :=  T_tempdetalhesCodproduto.asstring;
                  T_nfdetalhesDescricao.asstring      :=  T_tempdetalhesDescricao.asstring;
                  T_nfdetalhesClassificacao.asstring  :=  T_tempdetalhesClassificacao.asstring;
                  T_nfdetalhesST.asstring             :=  T_tempdetalhesST.asstring;
                  T_nfdetalhesUnidade.asstring        :=  T_tempdetalhesUnidade.asstring;
                  T_nfdetalhesQuantidade.asfloat      :=  T_tempdetalhesQuantidade.asfloat;
                  T_nfdetalhesValorunitrio.asfloat    :=  T_tempdetalhesValorunitrio.asfloat;
                  T_nfdetalhesValortotal.asfloat      :=  T_tempdetalhesValortotal.asfloat;
                  T_nfdetalhesAliquotaICMS.asfloat    :=  T_tempdetalhesAliquotaICMS.asfloat;
                  T_nfdetalhesAliquotaIPI.asfloat     :=  T_tempdetalhesAliquotaIPI.asfloat;
                  T_nfdetalhesValIPI.asfloat          :=  T_tempdetalhesValIPI.asfloat;
                  T_nfdetalhesValorMercadoria.asfloat :=  T_tempdetalhesValorMercadoria.asfloat;
                  T_nfdetalhesFreteUnitrio.asfloat    :=  T_tempdetalhesFreteUnitrio.asfloat;
                  T_nfdetalhesSeguroUnitrio.asfloat   :=  T_tempdetalhesSeguroUnitrio.asfloat;
                  T_nfdetalhesAcrescimoUnitrio.asfloat:=  T_tempdetalhesAcrescimoUnitrio.asfloat;
                  T_nfdetalhesDeduoUnitrio.asfloat    :=  T_tempdetalhesDeduoUnitrio.asfloat;
                  T_nfdetalhesTributoUnitrio.asfloat  :=  T_tempdetalhesTributoUnitrio.asfloat;
                  T_nfdetalhes.post;
                  t_tempdetalhes.edit;
                  t_tempdetalhes.delete;
           end;

           MessageDlg('NF: '+T_nfiscaisNFiscal.asstring+' - Valor pot Extenso: '+ extenso(T_nfiscaisVatotnota.asfloat), mtinformation, [mbOK], 0);

           {Grava arquivo de nota fiscal}
           assignfile(v_textonota,'NF'+T_nfiscaisNFiscal.asstring+'.txt');
           rewrite(v_textonota);
           {writeln(v_textonota    ,'         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16        17        18        19        20        21        22        23        24');
           writeln(v_textonota    ,'123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');}
{padrão}   if T_nfiscaisTiponf.asstring = '1' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,68));
              writeln(v_textonota,'                                                                             '+copy(T_nfiscaisEndereco.asstring +'                                                              ',1,64)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(T_nfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '    '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+T_nfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                  while not T_nfdetalhes.Eof do begin
if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                 end;
              end
              else begin
              T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
              while not T_nfdetalhes.Eof do begin
              if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
                 v_itens := v_itens + 1;
                 if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
              end;
                T_nfdetalhes.next;
              end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(T_nfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+T_nfiscaisNFiscal.asstring);

            end;

{SAI}       if T_nfiscaisTiponf.asstring = '2' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisEndereco.asstring   +'                                                              ',1,64)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(T_nfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '    '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(T_nfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(T_nfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(T_nfiscaisValor.asfloat,ffNumber,15,2));}
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+T_nfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                 while not T_nfdetalhes.Eof do begin
                 if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
                    v_itens := v_itens + 1;
                    if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                       end;
                       T_nfdetalhes.next;
                 end;
              end
              else begin
                  T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
                   while not T_nfdetalhes.Eof do begin
                   if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
                      v_itens := v_itens + 1;
                      if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                   end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(T_nfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+T_nfiscaisNFiscal.asstring);

            end;

{RENAULT}   if T_nfiscaisTiponf.asstring = '3' then begin
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                                  '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '                    '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(T_nfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '   '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,49));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(T_nfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(T_nfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(T_nfiscaisValor.asfloat,ffNumber,15,2));}
              {writeln(v_textonota,'                                                                             '+T_nfiscaisCondEspeciais.asstring);}
              writeln(v_textonota,copy('                                                                                                                                                                                                                                   ',1,90)+extenso(T_nfiscaisVatotnota.asfloat));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                  while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
                            v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,60)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +'     '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,10)+'         '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'       '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'         '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                 end;
              end
              else begin
                  T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
                   while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,60)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +'     '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,10)+'         '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'       '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'         '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                   end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'             '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'   '         +copy(v_cidtrans+'                                              ',1,25)+'   '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(T_nfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+' '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+T_nfiscaisNFiscal.asstring);

            end;

{KOYO}   if T_nfiscaisTiponf.asstring = '4' then begin
            //                                 1         2         3         4         5         6         7         8         9        10        11        12        13
            //writeln(v_textonota,'   123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/');
              writeln(v_textonota,'                                                                                                                                   '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                     XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisNatOpe.asstring+'                            ',1,50)+'  '+ copy(T_nfiscaisCFOP.asstring+'       ',1,5)+'   '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisNomedestrem.asstring+'                                                                                                         ',1,80)+'    '+ copy(T_nfiscaisCNPJCPF.asstring+'                                     ',1,30)   +'     '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisEndereco.asstring   +'                                                                           ',1,65)+'     '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,30)    + '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '     '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisMunicipio.asstring+'                                                     ',1,45)+'    '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,25)  + '    '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '   '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              {
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '                    '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(T_nfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '   '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,49));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
                      writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              }

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                  while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
                            v_itens := v_itens + 1;
{if v_itens <= qitens then writeln(v_textonota,copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,11) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,40)+' '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,5) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,8)+'  '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +' '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10));}
if v_itens <= qitens then writeln(v_textonota,copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,58)+'   '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,5) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,fffixed,7,0)+'            ',1,8)+'    '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'    '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10));
                        end;
                        T_nfdetalhes.next;
                 end;
              end
              else begin
                  T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
                   while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,58)+'   '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,5) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,fffixed,7,0)+'            ',1,8)+'    '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'    '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10));
                        end;
                        T_nfdetalhes.next;
                   end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15) +'             '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy(v_nometrans+'                                                                  ',1,67)+'             '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'          '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(v_endtrans +'                                                                  ',1,67)+'       '      +copy(v_cidtrans+'                                              ',1,25)+'      '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('                                                        ',1,16)+' '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'     '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisDA1.asstring+'                                                        ',1,69));
              writeln(v_textonota,copy(T_nfiscaisDA2.asstring+'                                            ',1,40)+'     '+copy(T_nfiscaisDA5.asstring+'                           ',1,30));
              writeln(v_textonota,copy(T_nfiscaisDA3.asstring+'                                            ',1,40)+'     '+copy(T_nfiscaisDA6.asstring+'                           ',1,30));
              writeln(v_textonota,copy(T_nfiscaisDA4.asstring+'                                            ',1,40)+'     '+copy(T_nfiscaisDA7.asstring+'                           ',1,30));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                          '+T_nfiscaisNFiscal.asstring);

            end;

           closefile(v_textonota);
           v_qnota := v_qnota+1;

      end
    end
    else begin {Gera apenas 1 nota}
    v_qnota := 1;

    T_nfdetalhes.open;
    t_tempdetalhes.open;
    t_tempdetalhes.first;
    while not t_tempdetalhes.Eof do begin
          T_nfdetalhes.append;
          T_nfdetalhesEmpresa.asstring        :=  T_tempdetalhesEmpresa.asstring;
          T_nfdetalhesFilial.asstring         :=  T_tempdetalhesFilial.asstring;
          T_nfdetalhesNFiscal.asstring        :=  T_tempdetalhesNFiscal.asstring;
          T_nfdetalhesSequencial.asstring     :=  T_tempdetalhesSequencial.asstring;
          T_nfdetalhesCodproduto.asstring     :=  T_tempdetalhesCodproduto.asstring;
          T_nfdetalhesDescricao.asstring      :=  T_tempdetalhesDescricao.asstring;
          T_nfdetalhesClassificacao.asstring  :=  T_tempdetalhesClassificacao.asstring;
          T_nfdetalhesST.asstring             :=  T_tempdetalhesST.asstring;
          T_nfdetalhesUnidade.asstring        :=  T_tempdetalhesUnidade.asstring;
          T_nfdetalhesQuantidade.asfloat      :=  T_tempdetalhesQuantidade.asfloat;
          T_nfdetalhesValorunitrio.asfloat    :=  T_tempdetalhesValorunitrio.asfloat;
          T_nfdetalhesValortotal.asfloat      :=  T_tempdetalhesValortotal.asfloat;
          T_nfdetalhesAliquotaICMS.asfloat    :=  T_tempdetalhesAliquotaICMS.asfloat;
          T_nfdetalhesAliquotaIPI.asfloat     :=  T_tempdetalhesAliquotaIPI.asfloat;
          T_nfdetalhesValIPI.asfloat          :=  T_tempdetalhesValIPI.asfloat;
          T_nfdetalhesValorMercadoria.asfloat :=  T_tempdetalhesValorMercadoria.asfloat;
          T_nfdetalhesFreteUnitrio.asfloat    :=  T_tempdetalhesFreteUnitrio.asfloat;
          T_nfdetalhesSeguroUnitrio.asfloat   :=  T_tempdetalhesSeguroUnitrio.asfloat;
          T_nfdetalhesAcrescimoUnitrio.asfloat:=  T_tempdetalhesAcrescimoUnitrio.asfloat;
          T_nfdetalhesDeduoUnitrio.asfloat    :=  T_tempdetalhesDeduoUnitrio.asfloat;
          T_nfdetalhesTributoUnitrio.asfloat  :=  T_tempdetalhesTributoUnitrio.asfloat;
          T_nfdetalhes.post;
          t_tempdetalhes.edit;
          t_tempdetalhes.delete;
    end;

    MessageDlg('NF: '+T_nfiscaisNFiscal.asstring+' - Valor pot Extenso: '+ extenso(T_nfiscaisVatotnota.asfloat), mtinformation, [mbOK], 0);

           {Grava arquivo de nota fiscal}
           assignfile(v_textonota,'NF'+T_nfiscaisNFiscal.asstring+'.txt');
           rewrite(v_textonota);
           {writeln(v_textonota    ,'         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16        17        18        19        20        21        22        23        24');
           writeln(v_textonota    ,'123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');}
{padrão}   if T_nfiscaisTiponf.asstring = '1' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,68));
              writeln(v_textonota,'                                                                             '+copy(T_nfiscaisEndereco.asstring +'                                                              ',1,64)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(T_nfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '    '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+T_nfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                  while not T_nfdetalhes.Eof do begin
if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
    v_itens := v_itens + 1;
     if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                 end;
              end
              else begin
                  T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
                   while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                   end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(T_nfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+T_nfiscaisNFiscal.asstring);

            end;

{SAI}       if T_nfiscaisTiponf.asstring = '2' then begin
              writeln(v_textonota,'                                                                                                                                                                                                                 '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,33)+'   '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'              '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                  ',1,74)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,68));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,68)+'      '+ copy(T_nfiscaisEndereco.asstring   +'                                                              ',1,64)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '        '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+copy(T_nfiscaisMunicipio.asstring+'                            ',1,41)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '   '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '    '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(T_nfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(T_nfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(T_nfiscaisValor.asfloat,ffNumber,15,2));}
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                             '+T_nfiscaisCondEspeciais.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                  while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                 end;
              end
              else begin
                  T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
                   while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,72)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +'    '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,15,2)+'         ',1,8) +'   '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'     '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'   '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,6) +'   '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                   end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'                  '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'      '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'     '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'      '         +copy(v_cidtrans+'                                              ',1,28)+'      '+copy(v_uftrans+'    ',1,2)+'     '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(T_nfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+'     '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'   '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+T_nfiscaisNFiscal.asstring);

            end;

{RENAULT}   if T_nfiscaisTiponf.asstring = '3' then begin
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                                  '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                          XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '                    '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(T_nfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '   '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,49));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              {writeln(v_textonota,'                                                                             '+copy(T_nfiscaisDuplicataNr.asstring+'             ',1,10) + '           ' + copy(datetostr(T_nfiscaisVencimento.asdatetime)+'               ',1,10)+'         '+ floattostrf(T_nfiscaisValor.asfloat,ffNumber,15,2));}
              {writeln(v_textonota,'                                                                             '+T_nfiscaisCondEspeciais.asstring);}
              writeln(v_textonota,copy('                                                                                                                                                                                                                                   ',1,90)+extenso(T_nfiscaisVatotnota.asfloat));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                  while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
                            v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,60)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +'     '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,10)+'         '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'       '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'         '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                 end;
              end
              else begin
                  T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
                   while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,'  '+ copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,21) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,60)+'  '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,11) +'     '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,10)+'         '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,17) +'       '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,17) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'   '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'         '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,14));
                        end;
                        T_nfdetalhes.next;
                   end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'       '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15)+'           '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy('   '+v_nometrans+'                                                                  ',1,67)+'             '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'   '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('   '+v_endtrans +'                                                                  ',1,67)+'   '         +copy(v_cidtrans+'                                              ',1,25)+'   '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,'   '+copy(floattostrf(T_nfiscaisQuantidade.asfloat,ffNumber,15,2)+'                      ',1,16)+' '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'  '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                                                                                             '+T_nfiscaisNFiscal.asstring);


            end;

{KOYO}   if T_nfiscaisTiponf.asstring = '4' then begin
            //                                 1         2         3         4         5         6         7         8         9        10        11        12        13
            //writeln(v_textonota,'   123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/');
              writeln(v_textonota,'                                                                                                                                   '+T_nfiscaisNFiscal.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                     XX');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisNatOpe.asstring+'                            ',1,50)+'  '+ copy(T_nfiscaisCFOP.asstring+'       ',1,5)+'   '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisNomedestrem.asstring+'                                                                                                         ',1,80)+'    '+ copy(T_nfiscaisCNPJCPF.asstring+'                                     ',1,30)   +'     '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisEndereco.asstring   +'                                                                           ',1,65)+'     '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,30)    + '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '     '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisMunicipio.asstring+'                                                     ',1,45)+'    '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,25)  + '    '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '   '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

              {
              writeln(v_textonota,'   '+copy('                                                                                                                                                    ',1,49)+'     '+ copy(T_nfiscaisNatOpe.asstring+'                                     ',1,48)+'       '+ copy(T_nfiscaisCFOP.asstring+'                   ',1,5)+'   '+copy(T_nfiscaisInscEstadual.asstring+'                                ',1,20));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA1.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA2.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA3.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisNomedestrem.asstring+'                                                                                                         ',1,92)+'   '+ copy(T_nfiscaisCNPJCPF.asstring+'                                               ',1,28)            +'       '+ datetostr(T_nfiscaisDtEmissao.asdatetime));
              writeln(v_textonota,'   '+copy('BASE DE CALCULO DO IPI:                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA4.asstring+'                                                        ',1,49)+'     '+ copy(T_nfiscaisEndereco.asstring   +'                                                                           ',1,70)+'   '+ copy(T_nfiscaisBairrodistrito.asstring+'                                                          ',1,23)+ '  '+ copy(T_nfiscaisCep.asstring+'                                  ',1,12)+ '                    '+ datetostr(T_nfiscaisDtsaidaentrada.asdatetime));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA5.asstring+'                                                        ',1,49));
              writeln(v_textonota,'   '+copy(T_nfiscaisDA6.asstring+'                                                        ',1,49)+'     '+copy(T_nfiscaisMunicipio.asstring+'                                                     ',1,50)+'         '+ copy(T_nfiscaisFoneFax.asstring+'                       ',1,17)  + '               '+ copy(T_nfiscaisUF.asstring+'   ',1,2)+ '   '+ T_nfiscaisInscEstDestRem.asstring);
              writeln(v_textonota,'   '+copy(T_nfiscaisDA7.asstring+'                                                        ',1,49));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
                      writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              }

              v_itens := 0;
              {imprime detalhe}
              if v_qnota > 1 then begin
                 T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,v_nf+CHR(96+v_qnota)]);
                  while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = v_nf+CHR(96+v_qnota)) then begin
                            v_itens := v_itens + 1;
{if v_itens <= qitens then writeln(v_textonota,copy(T_nfdetalhesCodproduto.asstring+'                                 ',1,11) +'    '+ copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,40)+' '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,5) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,ffNumber,7,2)+'            ',1,8)+'  '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +' '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10));}
if v_itens <= qitens then writeln(v_textonota,copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,58)+'   '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,5) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,fffixed,7,0)+'            ',1,8)+'    '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'    '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10));
                        end;
                        T_nfdetalhes.next;
                 end;
              end
              else begin
                  T_nfdetalhes.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,t_nfiscaisnfiscal.asstring]);
                   while not T_nfdetalhes.Eof do begin
                        if (T_nfdetalhesEmpresa.asstring = T_nfiscaisEmpresa.asstring) and (T_nfdetalhesFilial.asstring = T_nfiscaisFilial.asstring) and ( T_nfdetalhesNFiscal.asstring = t_nfiscaisnfiscal.asstring ) then begin
v_itens := v_itens + 1;
if v_itens <= qitens then writeln(v_textonota,copy(T_nfdetalhesDescricao.asstring+'                                                                          ',1,58)+'   '+copy(T_nfdetalhesClassificacao.asstring+'           ',1,5) +' '+ copy(T_nfdetalhesST.asstring+'     ',1,3) +' '+ copy(T_nfdetalhesUnidade.asstring+'   ',1,3) +'   '+ copy(floattostrf(T_nfdetalhesQuantidade.asfloat,fffixed,7,0)+'            ',1,8)+'    '+ copy(floattostrf(T_nfdetalhesValorunitrio.asfloat,ffNumber,15,4)+'                            ',1,11) +'  '+ copy(floattostrf(T_nfdetalhesValortotal.asfloat,ffNumber,15,2)+'                 ',1,13) +'  '+copy(floattostrf(T_nfdetalhesAliquotaICMS.asfloat,ffNumber,15,0)+'            ',1,2) +'  '+copy( floattostrf(T_nfdetalhesAliquotaIPI.asfloat,ffNumber,15,0)+'            ',1,2) +'    '+ copy(floattostrf(T_nfdetalhesValIPI.asfloat,ffNumber,15,2)+'            ',1,10));
                        end;
                        T_nfdetalhes.next;
                   end;
              end;
              while v_itens < qitens do begin
                    v_itens := v_itens + 1;
                    writeln(v_textonota,' ');
              end;

              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(T_nfiscaisBaseCalcICMS.asfloat,ffNumber,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValICMS.asfloat,ffNumber,15,2  )+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisBaseCalcICMSsubst.asfloat,ffNumber,15,2)+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValICMSsubs.asfloat,ffNumber,15,2)+'            ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotprodutos.asfloat,ffNumber,15,2)+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,'  '+ copy(floattostrf(T_nfiscaisValfrete.asfloat,ffNumber    ,15,2)+'                                              ',1,15)+'            '+copy(floattostrf(T_nfiscaisValseguro.asfloat,ffNumber,15,2)+'                      ',1,15)+'           '+copy(floattostrf(T_nfiscaisOutrasdesp.asfloat,ffNumber,15,2       )+'                       ',1,15)+'             '+copy(floattostrf(T_nfiscaisValtotIPI.asfloat,ffNumber,15,2  )+'            ',1,15) +'             '+copy(floattostrf(T_nfiscaisVatotnota.asfloat,ffNumber,15,2     )+'                                 ',1,15));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');

             {Localizando Transportador}
              if T_transportadores.FindKey([T_nfiscaisEmpresa.asstring,T_nfiscaisFilial.asstring,T_nfiscaisTransportador.asstring]) then begin
                 v_nometrans := T_transportadoresRazoSocial.asstring;
                 v_cgctrans  := T_transportadoresCGCCPF.asstring;
                 v_endtrans  := T_transportadoresEndereo.asstring;
                 v_baitrans  := T_transportadoresBairro.asstring;
                 v_cidtrans  := T_transportadoresCidade.asstring;
                 v_ceptrans  := T_transportadoresCEP.asstring;
                 v_uftrans   := T_transportadoresUF.asstring;
                 v_instrans  := T_transportadoresInscrioEstadual.asstring;
              end
              else begin
                 v_nometrans := '                                                             ';
                 v_cgctrans  := '                  ';
                 v_endtrans  := '                                                             ';
                 v_baitrans  := '                               ';
                 v_cidtrans  := '                               ';
                 v_ceptrans  := '          ';
                 v_uftrans   := '  ';
                 v_instrans  := '               ';
              end;

              writeln(v_textonota,copy(v_nometrans+'                                                                  ',1,67)+'             '+copy(T_nfiscaisFrete.asstring+'   ',1,1)+'          '+ copy(T_nfiscaisPlaca.asstring+'                          ',1,12)+'  '+copy(T_nfiscaisUFVeiculo.asstring+'   ',1,2)+'   '+copy(v_cgctrans+'                                ',1,27));
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(v_endtrans +'                                                                  ',1,67)+'       '      +copy(v_cidtrans+'                                              ',1,25)+'      '+copy(v_uftrans+'    ',1,2)+'   '+v_instrans);
              writeln(v_textonota,' ');
              writeln(v_textonota,copy('                                                        ',1,16)+' '+ copy(T_nfiscaisEspecie.asstring+'                                 ',1,20)+'       '+copy(T_nfiscaisMarca.asstring+'                                  ',1,22) +'     '+copy(T_nfiscaisNumero.asstring+'                                  ',1,21)+'       '+copy(floattostrf(T_nfiscaisPesoBruto.asfloat,ffNumber,15,2)+'                           ',1,18)+'   '+copy(floattostrf(T_nfiscaisPesoLiquido.asfloat,ffNumber,15,2)+'',1,18));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,copy(T_nfiscaisDA1.asstring+'                                                        ',1,69));
              writeln(v_textonota,copy(T_nfiscaisDA2.asstring+'                                            ',1,40)+'     '+copy(T_nfiscaisDA5.asstring+'                           ',1,30));
              writeln(v_textonota,copy(T_nfiscaisDA3.asstring+'                                            ',1,40)+'     '+copy(T_nfiscaisDA6.asstring+'                           ',1,30));
              writeln(v_textonota,copy(T_nfiscaisDA4.asstring+'                                            ',1,40)+'     '+copy(T_nfiscaisDA7.asstring+'                           ',1,30));
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,' ');
              writeln(v_textonota,'                                                                                                                          '+T_nfiscaisNFiscal.asstring);


            end;

           closefile(v_textonota);
    end;

    B_grava.enabled := false;
    t_tempdetalhes.refresh;
    f_nfiscais.refresh;
    E_nf.text := '';
    E_nf.setfocus;
end;

procedure TF_nfiscais.DBL_NATOPERClick(Sender: TObject);
begin
   T_nfiscaisCFOP.ASSTRING := T_natoperCFOP.asstring;
end;

procedure TF_nfiscais.DBL_tiponfExit(Sender: TObject);
begin
    if E_nf.text = '' then begin
       MessageDlg('Informe o Nº da Nota Fiscal!', mtConfirmation, [mbOK], 0);
       E_nf.setfocus;
    end
end;

procedure TF_nfiscais.E_nfExit(Sender: TObject);
begin
    if E_nf.text <> '' then begin
    T_nfiscais.open;
    t_parametros.open;
    t_parametros.first;
    vl_empresa := t_parametrosempresa.asstring;
    vl_filial  := t_parametrosfilial.asstring;
    v_nf       := E_nf.text;
    if T_nfiscais.FindKey([vl_empresa,vl_filial,v_nf]) then begin
       if MessageDlg('Nota Fiscal já cadastrada!', mtConfirmation, [mbOK], 0) = mrOK then begin
          T_nfiscais.close;
          E_nf.text := '';
          E_nf.setfocus;
          end
       end
    else begin
         T_nfiscais.open;
         T_nfiscais.append;
         T_nfiscaisEmpresa.asstring   := vl_empresa;
         T_nfiscaisFilial.asstring    := vl_filial;
         T_nfiscaisNFiscal.asstring   := v_nf;
         DBL_tiponf.setfocus;
         end
     end
     {else begin
       MessageDlg('Informe o Nº da Nota Fiscal!', mtConfirmation, [mbOK], 0);
       E_nf.setfocus;
     end}

end;

end.
