unit u_faturas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, Db, DBTables,
  Buttons, DBCGrids, CheckLst, Gauges, Psock, NMsmtp;

type
  TF_processos = class(TForm)
    PageControl1: TPageControl;
    TS_Faturas: TTabSheet;
    TS_Conhecimento: TTabSheet;
    TS_numerario: TTabSheet;
    T_processos: TTable;
    DS_processos: TDataSource;
    T_tipodecl: TTable;
    DS_tipodecl: TDataSource;
    T_parametros: TTable;
    DS_parametros: TDataSource;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    T_tipodeclCodigo: TStringField;
    T_tipodeclDescricao: TStringField;
    T_faturas: TTable;
    DS_faturas: TDataSource;
    T_itensfaturas: TTable;
    DS_itensfaturas: TDataSource;
    T_produtos: TTable;
    DS_produtos: TDataSource;
    T_incoterms: TTable;
    DS_incoterms: TDataSource;
    T_incotermsCodigo: TStringField;
    T_incotermsDescricao: TStringField;
    DS_exportadores: TDataSource;
    Q_itensfaturas: TQuery;
    DS_qitensfaturas: TDataSource;
    Panel7: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    B_exclui: TBitBtn;
    B_grava: TBitBtn;
    T_fabricantes: TTable;
    DS_Fabricantes: TDataSource;
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
    T_unidades: TTable;
    DS_unidades: TDataSource;
    T_unidadesCODIGO: TStringField;
    T_unidadesDESCRICAO: TStringField;
    T_importadores: TTable;
    DS_importadores: TDataSource;
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
    CB_faturas: TComboBox;
    L_selecione: TLabel;
    CB_incoterms: TComboBox;
    E_pesototal: TEdit;
    E_valortotal: TEdit;
    T_exportadores: TTable;
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
    ME_fatura: TMaskEdit;
    ME_condicao: TMaskEdit;
    Q_produtos: TQuery;
    DS_qprodutos: TDataSource;
    Q_produtosEmpresa: TStringField;
    Q_produtosFilial: TStringField;
    Q_produtosCdigo: TStringField;
    Q_produtosNCM: TStringField;
    T_ncm: TTable;
    DS_ncm: TDataSource;
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
    Q_produtosImportador: TStringField;
    T_moeda: TTable;
    DS_moeda: TDataSource;
    T_moedaCODIGO: TStringField;
    T_moedaDESCRICAO: TStringField;
    CB_moedas: TComboBox;
    Label29: TLabel;
    T_inst: TTable;
    DS_inst: TDataSource;
    T_instCODIGO: TStringField;
    T_instDESCRICAO: TStringField;
    T_moda: TTable;
    DS_moda: TDataSource;
    T_modaCODIGO: TStringField;
    T_modaDESCRICAO: TStringField;
    T_moti: TTable;
    DS_moti: TDataSource;
    T_motiCODIGO: TStringField;
    T_motiDESCRICAO: TStringField;
    T_tipospro: TTable;
    DS_tipospro: TDataSource;
    T_tiposproCODIGO: TStringField;
    T_tiposproDESCRICAO: TStringField;
    T_transportadores: TTable;
    DS_transportadores: TDataSource;
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
    T_transpprocesso: TTable;
    DS_transpprocesso: TDataSource;
    T_followup: TTable;
    DS_follow: TDataSource;
    T_eventos: TTable;
    DS_eventos: TDataSource;
    T_obseventos: TTable;
    DS_obseventos: TDataSource;
    T_eventosEmpresa: TStringField;
    T_eventosFilial: TStringField;
    T_eventosCodigo: TStringField;
    T_eventosDescricao: TStringField;
    T_obseventosEmpresa: TStringField;
    T_obseventosFilial: TStringField;
    T_obseventosEvento: TStringField;
    T_obseventosCodigo: TStringField;
    T_obseventosDescricao: TStringField;
    TS_followup: TTabSheet;
    Panel6: TPanel;
    DBG_followup: TDBGrid;
    B_alterafollow: TBitBtn;
    B_excluifollow: TBitBtn;
    B_novo: TBitBtn;
    T_parcelasvar: TTable;
    DS_parcelasvar: TDataSource;
    T_parcelasvarEmpresa: TStringField;
    T_parcelasvarFilial: TStringField;
    T_parcelasvarProcesso: TStringField;
    T_parcelasvarSequencial: TStringField;
    T_parcelasvarPercentual: TFloatField;
    T_parcelasvarDatadePagamento: TStringField;
    q_parcvar: TQuery;
    DS_qparcevar: TDataSource;
    q_parcvarEmpresa: TStringField;
    q_parcvarFilial: TStringField;
    q_parcvarProcesso: TStringField;
    q_parcvarFatura: TStringField;
    q_parcvarSequencial: TStringField;
    q_parcvarPercentual: TFloatField;
    q_parcvarDatadePagamento: TStringField;
    T_pagvinc: TTable;
    DS_pagvinc: TDataSource;
    T_pagvincEmpresa: TStringField;
    T_pagvincFilial: TStringField;
    T_pagvincProcesso: TStringField;
    T_pagvincSequencial: TStringField;
    T_pagvincFormadePagamento: TStringField;
    T_pagvincMoedaNacional: TBooleanField;
    T_pagvincBanco: TStringField;
    T_pagvincPraca: TStringField;
    T_pagvincContrato: TStringField;
    T_pagvincValorPercentual: TFloatField;
    T_pagvincCNPJComprador: TStringField;
    T_pagvincTipoCNPJ: TStringField;
    q_pgvinc: TQuery;
    DS_qpgvinc: TDataSource;
    T_taxabacen: TTable;
    DS_taxabacen: TDataSource;
    T_taxabacenCODIGO: TStringField;
    T_taxabacenDESCRICAO: TStringField;
    T_taxabacenMOEDA: TStringField;
    q_pgvincEmpresa: TStringField;
    q_pgvincFilial: TStringField;
    q_pgvincProcesso: TStringField;
    q_pgvincFatura: TStringField;
    q_pgvincSequencial: TStringField;
    q_pgvincFormadePagamento: TStringField;
    q_pgvincMoedaNacional: TBooleanField;
    q_pgvincBanco: TStringField;
    q_pgvincPraca: TStringField;
    q_pgvincContrato: TStringField;
    q_pgvincValorPercentual: TFloatField;
    q_pgvincCNPJComprador: TStringField;
    q_pgvincTipoCNPJ: TStringField;
    PageControl4: TPageControl;
    TS_transporte: TTabSheet;
    TS_carga: TTabSheet;
    TS_registro: TTabSheet;
    TS_lilsi: TTabSheet;
    TS_di: TTabSheet;
    TS_desenba: TTabSheet;
    TS_nfiscal: TTabSheet;
    PageControl5: TPageControl;
    TS_aereo: TTabSheet;
    TS_maritimo: TTabSheet;
    TS_rodoviario: TTabSheet;
    TabSheet14: TTabSheet;
    TS_postal: TTabSheet;
    TS_fluvial: TTabSheet;
    TS_lacustre: TTabSheet;
    TS_meios: TTabSheet;
    TS_ducto: TTabSheet;
    Cb_transportadores1: TComboBox;
    Label45: TLabel;
    Panel4: TPanel;
    Label46: TLabel;
    Label51: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label49: TLabel;
    me_local: TMaskEdit;
    me_datatrans: TMaskEdit;
    me_ident: TMaskEdit;
    me_master: TMaskEdit;
    Cb_tipodocs1: TComboBox;
    CB_utilizacao: TComboBox;
    Label76: TLabel;
    cb_transportadores2: TComboBox;
    Panel14: TPanel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    me_local1: TMaskEdit;
    me_datatrans1: TMaskEdit;
    me_ident1: TMaskEdit;
    me_master1: TMaskEdit;
    cb_tipodocs2: TComboBox;
    cb_utilizacao1: TComboBox;
    Label83: TLabel;
    me_embarcacao: TMaskEdit;
    Label84: TLabel;
    cb_transportadores3: TComboBox;
    Label85: TLabel;
    me_placa1: TMaskEdit;
    Panel15: TPanel;
    Label87: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    me_local2: TMaskEdit;
    me_datatrans2: TMaskEdit;
    me_numerocrt: TMaskEdit;
    cb_utilizacao2: TComboBox;
    PageControl6: TPageControl;
    TS_ferroviario: TTabSheet;
    Label86: TLabel;
    cb_transportadores4: TComboBox;
    Panel16: TPanel;
    Label89: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    me_local3: TMaskEdit;
    me_datatrans3: TMaskEdit;
    me_ident3: TMaskEdit;
    me_master3: TMaskEdit;
    cb_tipodocs3: TComboBox;
    cb_utilizacao4: TComboBox;
    TabSheet21: TTabSheet;
    Label97: TLabel;
    Label98: TLabel;
    ComboBox9: TComboBox;
    Panel17: TPanel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    MaskEdit16: TMaskEdit;
    MaskEdit17: TMaskEdit;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    MaskEdit18: TMaskEdit;
    TabSheet22: TTabSheet;
    Label105: TLabel;
    Label106: TLabel;
    ComboBox12: TComboBox;
    MaskEdit19: TMaskEdit;
    Panel18: TPanel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    MaskEdit20: TMaskEdit;
    MaskEdit21: TMaskEdit;
    ComboBox13: TComboBox;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    Panel19: TPanel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    me_barras: TMaskEdit;
    me_datapos: TMaskEdit;
    me_localpos: TMaskEdit;
    Label114: TLabel;
    cb_transportadores5: TComboBox;
    Label115: TLabel;
    me_embarcacao4: TMaskEdit;
    Panel20: TPanel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    me_local4: TMaskEdit;
    me_datatrans4: TMaskEdit;
    me_ident4: TMaskEdit;
    me_master4: TMaskEdit;
    cb_tipodocs4: TComboBox;
    cb_utilizacao5: TComboBox;
    Label122: TLabel;
    cb_transportadores6: TComboBox;
    Label123: TLabel;
    me_embarcacao5: TMaskEdit;
    Panel21: TPanel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    me_local5: TMaskEdit;
    me_datatrans5: TMaskEdit;
    me_ident5: TMaskEdit;
    me_master5: TMaskEdit;
    cb_tipodocs5: TComboBox;
    cb_utilizacao6: TComboBox;
    Panel22: TPanel;
    Label131: TLabel;
    Label132: TLabel;
    me_datatrans6: TMaskEdit;
    me_local6: TMaskEdit;
    Panel23: TPanel;
    Label130: TLabel;
    Label133: TLabel;
    me_datatrans7: TMaskEdit;
    me_local7: TMaskEdit;
    T_acrescimos: TTable;
    DS_acrescimos: TDataSource;
    T_deducoes: TTable;
    DS_deducoes: TDataSource;
    T_concargas: TTable;
    DS_concargas: TDataSource;
    T_tipocarga: TTable;
    DS_tipocargas: TDataSource;
    T_tipoacrescimo: TTable;
    DS_tipoacrescimos: TDataSource;
    T_tipodeducoes: TTable;
    DS_tipodeducoes: TDataSource;
    T_tipocargaCodigo: TStringField;
    T_tipocargaDescricao: TStringField;
    T_tipoacrescimoCODIGO: TStringField;
    T_tipoacrescimoDESCRICAO: TStringField;
    T_tipoacrescimoDESCRICAO_REDUZIDA: TStringField;
    T_tipodeducoesCODIGO: TStringField;
    T_tipodeducoesDESCRICAO: TStringField;
    T_tipodeducoesDESCRICAO_REDUZIDA: TStringField;
    T_assosacre: TTable;
    DS_assosacre: TDataSource;
    T_assosdedu: TTable;
    DS_assosdedu: TDataSource;
    T_assosacreCOD_INCOTERMS: TStringField;
    T_assosacreCOD_ACR_DECR: TStringField;
    T_assosdeduCOD_INCOTERMS: TStringField;
    T_assosdeduCOD_ACR_DECR: TStringField;
    Q_acrescimos: TQuery;
    DS_qacrescimos: TDataSource;
    Q_deducoes: TQuery;
    DS_qdeducoes: TDataSource;
    Q_acrescimosEmpresa: TStringField;
    Q_acrescimosFilial: TStringField;
    Q_acrescimosProcesso: TStringField;
    Q_acrescimosFatura: TStringField;
    Q_acrescimosCD_MET_ACRES_VALOR: TStringField;
    Q_acrescimosDescricao: TStringField;
    Q_acrescimosVL_ACRESCIMO_MOEDA: TFloatField;
    Q_acrescimosCD_MD_NEGOC_ACRES: TStringField;
    Q_acrescimosVL_ACRESCIMO_MN: TFloatField;
    Q_deducoesEmpresa: TStringField;
    Q_deducoesFilial: TStringField;
    Q_deducoesProcesso: TStringField;
    Q_deducoesFatura: TStringField;
    Q_deducoesCD_MET_DEDUC_VALOR: TStringField;
    Q_deducoesDescricao: TStringField;
    Q_deducoesVL_DEDUCAO_MNEG: TFloatField;
    Q_deducoesCD_MD_NEGOC_DEDUC: TStringField;
    Q_deducoesVL_DEDUCAO_MN: TFloatField;
    cb_multi: TCheckBox;
    B_gravaaer: TBitBtn;
    b_gravamar: TBitBtn;
    b_gravarod: TBitBtn;
    b_gravafer: TBitBtn;
    b_gravapos: TBitBtn;
    b_gravaflu: TBitBtn;
    b_gravalac: TBitBtn;
    b_gravamei: TBitBtn;
    b_gravaduc: TBitBtn;
    PageControl7: TPageControl;
    ts_informa: TTabSheet;
    ts_tipocarga: TTabSheet;
    ts_volumes: TTabSheet;
    T_concargasEmpresa: TStringField;
    T_concargasFilial: TStringField;
    T_concargasProcesso: TStringField;
    T_concargasCodigo: TStringField;
    T_concargasTipoCarga: TStringField;
    T_concargasDescricao_tipo: TStringField;
    T_concargasLacre: TStringField;
    T_tipoembalagem: TTable;
    ds_tipoembalagem: TDataSource;
    T_tipoembalagemCodigo: TStringField;
    T_tipoembalagemDescricao: TStringField;
    T_embalagempro: TTable;
    ds_embalagempro: TDataSource;
    q_embalagempro: TQuery;
    ds_qembalagempro: TDataSource;
    q_concargas: TQuery;
    ds_qconcargas: TDataSource;
    q_concargasEmpresa: TStringField;
    q_concargasFilial: TStringField;
    q_concargasProcesso: TStringField;
    q_concargasCodigo: TStringField;
    q_concargasTipoCarga: TStringField;
    q_concargasDescricao_tipo: TStringField;
    q_concargasLacre: TStringField;
    T_pais: TTable;
    ds_pais: TDataSource;
    T_paisCODIGO: TStringField;
    T_paisDESCRICAO: TStringField;
    T_urf: TTable;
    ds_urf: TDataSource;
    T_urfCODIGO: TStringField;
    T_urfDESCRICAO: TStringField;
    T_embalagemproEmpresa: TStringField;
    T_embalagemproFilial: TStringField;
    T_embalagemproProcesso: TStringField;
    T_embalagemproTipoEmbalagem: TStringField;
    T_embalagemproDescricaoEmbalagem: TStringField;
    T_embalagemproQuantidade: TStringField;
    q_embalagemproEmpresa: TStringField;
    q_embalagemproFilial: TStringField;
    q_embalagemproProcesso: TStringField;
    q_embalagemproTipoEmbalagem: TStringField;
    q_embalagemproDescricaoEmbalagem: TStringField;
    q_embalagemproQuantidade: TStringField;
    BitBtn1: TBitBtn;
    T_recintos: TTable;
    ds_recintos: TDataSource;
    T_recintosCODIGO: TStringField;
    T_recintosDESCRICAO: TStringField;
    T_recintosCOD_ORGAO_REC: TStringField;
    T_setores: TTable;
    ds_setores: TDataSource;
    T_setoresOrgao: TStringField;
    T_setoresRecinto: TStringField;
    T_setoresSetor: TStringField;
    T_setoresNome: TStringField;
    T_armazem: TTable;
    ds_armazem: TDataSource;
    T_armazemCodigo: TStringField;
    T_armazemDescricao: TStringField;
    T_armazempro: TTable;
    ds_armazempro: TDataSource;
    T_armazemproEmpresa: TStringField;
    T_armazemproFilial: TStringField;
    T_armazemproProcesso: TStringField;
    T_armazemproCodArmazem: TStringField;
    T_armazemproNome_Armazem: TStringField;
    Q_armazempro: TQuery;
    ds_qarmazempro: TDataSource;
    Q_armazemproEmpresa: TStringField;
    Q_armazemproFilial: TStringField;
    Q_armazemproProcesso: TStringField;
    Q_armazemproCodArmazem: TStringField;
    Q_armazemproNome_Armazem: TStringField;
    PageControl2: TPageControl;
    TS_itensfatura: TTabSheet;
    Panel8: TPanel;
    Label32: TLabel;
    Label38: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label2: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label147: TLabel;
    me_moeda: TMaskEdit;
    me_referencia: TMaskEdit;
    me_descrncm: TMaskEdit;
    B_excluiit: TBitBtn;
    B_gravait: TBitBtn;
    DB_itensfatura: TDBGrid;
    ME_ncm: TMaskEdit;
    ME_pesounit: TMaskEdit;
    ME_quantidade: TMaskEdit;
    ME_valorunit: TMaskEdit;
    ME_fabricante: TMaskEdit;
    ME_descricao: TMaskEdit;
    ME_produto: TMaskEdit;
    P_qprodutos: TPanel;
    L_busca: TLabel;
    DBG_qprodutos: TDBGrid;
    B_cancela: TBitBtn;
    B_ok: TBitBtn;
    me_pagina: TMaskEdit;
    TS_acrescimos: TTabSheet;
    TS_deducoes: TTabSheet;
    TS_Cambiofatura: TTabSheet;
    Panel5: TPanel;
    Label1: TLabel;
    cb_tipoacres: TComboBox;
    Label52: TLabel;
    me_valoracrescimo: TMaskEdit;
    b_incluiacre: TBitBtn;
    b_excluiacre: TBitBtn;
    DBG_acrescimos: TDBGrid;
    Panel24: TPanel;
    Label53: TLabel;
    cb_tipodedu: TComboBox;
    Label54: TLabel;
    me_valordedu: TMaskEdit;
    b_incluidedu: TBitBtn;
    b_excluidedu: TBitBtn;
    DBG_deducoes: TDBGrid;
    Panel26: TPanel;
    Label55: TLabel;
    cb_pais: TComboBox;
    Label62: TLabel;
    cb_urf: TComboBox;
    Label135: TLabel;
    me_pliquido: TMaskEdit;
    Label134: TLabel;
    me_pbruto: TMaskEdit;
    Label136: TLabel;
    me_agente: TMaskEdit;
    GB_frete: TGroupBox;
    Label148: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    cb_moedasfrete: TComboBox;
    me_prepaid: TMaskEdit;
    me_collect: TMaskEdit;
    me_ternac: TMaskEdit;
    GB_seguro: TGroupBox;
    Label153: TLabel;
    Label154: TLabel;
    me_valseg: TMaskEdit;
    cb_moedasseguro: TComboBox;
    b_gravainfo: TBitBtn;
    Panel27: TPanel;
    Label137: TLabel;
    me_codcarga: TMaskEdit;
    Label138: TLabel;
    cb_tipocarga: TComboBox;
    Label139: TLabel;
    me_lacre: TMaskEdit;
    b_incluicarga: TBitBtn;
    b_excluicarga: TBitBtn;
    DBG_tcargas: TDBGrid;
    Panel28: TPanel;
    Label146: TLabel;
    cb_embalagem: TComboBox;
    Label149: TLabel;
    me_qembalagem: TMaskEdit;
    b_incluivol: TBitBtn;
    b_excluivol: TBitBtn;
    DBG_embalagempro: TDBGrid;
    Panel29: TPanel;
    me_contratante: TMaskEdit;
    b_gravaregis: TBitBtn;
    rg_contratante: TRadioGroup;
    cb_fundap: TCheckBox;
    DBG_armazem: TDBGrid;
    b_excluiarm: TBitBtn;
    b_incluiarm: TBitBtn;
    cb_armazem: TComboBox;
    Label145: TLabel;
    cb_setor: TComboBox;
    Label142: TLabel;
    cb_recinto: TComboBox;
    Label141: TLabel;
    Label140: TLabel;
    Label143: TLabel;
    cb_docschegada: TComboBox;
    Label144: TLabel;
    me_identificacao: TMaskEdit;
    cb_urfdespacho: TComboBox;
    Panel9: TPanel;
    L_motivo: TLabel;
    CB_motivos: TComboBox;
    PageControl3: TPageControl;
    TS_cambio: TTabSheet;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    dbg_pagant: TDBGrid;
    me_contrato: TMaskEdit;
    me_banco: TMaskEdit;
    me_praca: TMaskEdit;
    me_valorperc: TMaskEdit;
    me_comprador: TMaskEdit;
    b_excluipag: TBitBtn;
    b_incluipag: TBitBtn;
    ts_pag2: TTabSheet;
    Label56: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    me_contrato2: TMaskEdit;
    me_banco2: TMaskEdit;
    me_praca2: TMaskEdit;
    me_valorperc2: TMaskEdit;
    me_comprador2: TMaskEdit;
    b_incluipag2: TBitBtn;
    b_excluipag2: TBitBtn;
    dbg_pagvista: TDBGrid;
    ts_pag3: TTabSheet;
    Panel10: TPanel;
    rg_parcelas: TRadioGroup;
    p_fixas: TPanel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    me_nparcelas: TMaskEdit;
    me_periodicidade: TMaskEdit;
    me_valorparc: TMaskEdit;
    rg_indiper: TRadioGroup;
    p_varia: TPanel;
    Label71: TLabel;
    Label72: TLabel;
    DBG_parcvar: TDBGrid;
    me_percentual: TMaskEdit;
    me_datapar: TMaskEdit;
    B_incluiparvar: TBitBtn;
    b_excluiparvar: TBitBtn;
    p_juros: TPanel;
    Label73: TLabel;
    Label74: TLabel;
    rb_taxajuros: TRadioButton;
    cb_taxabacen: TComboBox;
    me_valtaxajuros: TMaskEdit;
    RG_cambial: TRadioGroup;
    Label155: TLabel;
    me_lacrevei: TMaskEdit;
    Label156: TLabel;
    me_codpresenca: TMaskEdit;
    T_tributositem: TTable;
    DS_tributositem: TDataSource;
    TS_tributacao: TTabSheet;
    Panel30: TPanel;
    DBG_tributositem: TDBGrid;
    P_tributacao: TPanel;
    GroupBox3: TGroupBox;
    Label157: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    me_certificado: TMaskEdit;
    cb_tipoacordo: TComboBox;
    cb_acordoaladi: TComboBox;
    GroupBox4: TGroupBox;
    Label175: TLabel;
    Label176: TLabel;
    Label180: TLabel;
    cb_regtrib1: TComboBox;
    cb_fundale: TComboBox;
    cb_atolegalii: TComboBox;
    GroupBox5: TGroupBox;
    Label177: TLabel;
    Label183: TLabel;
    cb_regtrib2: TComboBox;
    cb_atoipi: TComboBox;
    cb_atoaladi: TComboBox;
    Label161: TLabel;
    Label158: TLabel;
    me_atoconce: TMaskEdit;
    Label162: TLabel;
    Label163: TLabel;
    me_quantrib: TMaskEdit;
    B_aplica: TBitBtn;
    Label164: TLabel;
    Label165: TLabel;
    b_excluitrib: TBitBtn;
    b_incluitrib: TBitBtn;
    T_aladi: TTable;
    ds_aladi: TDataSource;
    T_aladiCodigo: TStringField;
    T_aladiDescricao: TStringField;
    Label166: TLabel;
    cb_atoii: TComboBox;
    b_cancelaapli: TBitBtn;
    T_fundamentolegal: TTable;
    ds_fundamentolegal: TDataSource;
    T_fundamentolegalRegime: TStringField;
    T_fundamentolegalCodigo: TStringField;
    T_fundamentolegalDescricao: TStringField;
    T_atos: TTable;
    ds_atos: TDataSource;
    Label167: TLabel;
    me_aliquotaacordo: TMaskEdit;
    Label168: TLabel;
    me_perccorII: TMaskEdit;
    Label169: TLabel;
    me_perccoripi: TMaskEdit;
    T_acrescimosEmpresa: TStringField;
    T_acrescimosFilial: TStringField;
    T_acrescimosProcesso: TStringField;
    T_acrescimosFatura: TStringField;
    T_acrescimosCD_MET_ACRES_VALOR: TStringField;
    T_acrescimosDescricao: TStringField;
    T_acrescimosVL_ACRESCIMO_MOEDA: TFloatField;
    T_acrescimosCD_MD_NEGOC_ACRES: TStringField;
    T_acrescimosVL_ACRESCIMO_MN: TFloatField;
    T_deducoesEmpresa: TStringField;
    T_deducoesFilial: TStringField;
    T_deducoesProcesso: TStringField;
    T_deducoesFatura: TStringField;
    T_deducoesCD_MET_DEDUC_VALOR: TStringField;
    T_deducoesDescricao: TStringField;
    T_deducoesVL_DEDUCAO_MNEG: TFloatField;
    T_deducoesCD_MD_NEGOC_DEDUC: TStringField;
    T_deducoesVL_DEDUCAO_MN: TFloatField;
    Q_itenstributaveis: TQuery;
    ds_qitenstributaveis: TDataSource;
    Q_itenstributaveisEmpresa: TStringField;
    Q_itenstributaveisFilial: TStringField;
    Q_itenstributaveisProcesso: TStringField;
    Q_itenstributaveisFatura: TStringField;
    Q_itenstributaveisSequencial: TStringField;
    Q_itenstributaveisPagina: TStringField;
    Q_itenstributaveisProduto: TStringField;
    Q_itenstributaveisDescricao_Produto: TStringField;
    Q_itenstributaveisNCM: TStringField;
    Q_itenstributaveisUnidade: TStringField;
    Q_itenstributaveisReferencia: TStringField;
    Q_itenstributaveisQuantidade: TFloatField;
    Q_itenstributaveisValorUnitrio: TFloatField;
    Q_itenstributaveisValorTotal: TFloatField;
    Q_itenstributaveisPesoUnitrio: TFloatField;
    Q_itenstributaveisPesoTotal: TFloatField;
    Q_itenstributaveisSaldo_Tributavel: TFloatField;
    q_tributoitem: TQuery;
    ds_qtributoitem: TDataSource;
    q_tributoitemEmpresa: TStringField;
    q_tributoitemFilial: TStringField;
    q_tributoitemProcesso: TStringField;
    q_tributoitemFatura: TStringField;
    q_tributoitemSequencial_Item: TStringField;
    q_tributoitemSequencial: TStringField;
    q_tributoitemCertificado_Origem: TStringField;
    q_tributoitemAto_Concessorio: TStringField;
    q_tributoitemCD_TIPO_ACORDO_TAR: TStringField;
    q_tributoitemACORDO_ALADI: TStringField;
    q_tributoitemALIQUOTA_ALADI: TFloatField;
    q_tributoitemRegime_Tributacao_II: TStringField;
    q_tributoitemFundamento_Legal_II: TStringField;
    q_tributoitemNumero_Ato_Legal_II: TStringField;
    q_tributoitemRegime_Tributacao_IPI: TStringField;
    q_tributoitemNumero_Ato_Legal_IPI: TStringField;
    q_tributoitemPercentual_Reducao_II: TFloatField;
    q_tributoitemPercentual_Reduca_IPI: TFloatField;
    q_tributoitemQuantidade: TFloatField;
    T_atosEmpresa: TStringField;
    T_atosFilial: TStringField;
    T_atosTipo_Ato: TStringField;
    T_atosNumero: TStringField;
    T_atosEX: TStringField;
    T_atosTipo_Ato_Legal: TStringField;
    T_atosOrgao_Emissor: TStringField;
    T_atosAno_Ato_Legal: TStringField;
    DBG_itenstributaveis: TDBGrid;
    SB_recalculapeso: TSpeedButton;
    sb_somapaginas: TSpeedButton;
    p_recalculo: TPanel;
    me_pesoinformado: TMaskEdit;
    Label170: TLabel;
    sb_cancela: TSpeedButton;
    sb_processa: TSpeedButton;
    Label171: TLabel;
    E_pesoacertado: TEdit;
    p_totalpag: TPanel;
    Label172: TLabel;
    DBG_totpag: TDBGrid;
    b_fechatot: TBitBtn;
    q_totpag: TQuery;
    q_totpagEmpresa: TStringField;
    q_totpagFilial: TStringField;
    q_totpagProcesso: TStringField;
    q_totpagFatura: TStringField;
    q_totpagPagina: TStringField;
    q_totpagSomaDeQuantidade: TFloatField;
    q_totpagSomaDeValorTotal: TFloatField;
    q_totpagSomaDePeso_Unitario_Acertado: TFloatField;
    q_totpagSomaDePeso_Total_Acertado: TFloatField;
    ds_qtotpag: TDataSource;
    cb_itens: TCheckBox;
    T_tiposacrescimos: TTable;
    ds_tiposacrescimos: TDataSource;
    T_tiposreducoes: TTable;
    ds_tiposreducoes: TDataSource;
    T_tiposacrescimosIncoterm: TStringField;
    T_tiposacrescimosCodigo: TStringField;
    T_tiposacrescimosDescricao: TStringField;
    T_tiposacrescimosCod_Siscomex: TStringField;
    T_tiposreducoesIncoterm: TStringField;
    T_tiposreducoesCodigo: TStringField;
    T_tiposreducoesDescricao: TStringField;
    T_tiposreducoesCod_Siscomex: TStringField;
    GB_despfob: TGroupBox;
    Label173: TLabel;
    Label174: TLabel;
    me_despfob: TMaskEdit;
    cb_moedasfob: TComboBox;
    T_numerador: TTable;
    ds_numerador: TDataSource;
    T_numeradorNR_PROV_DECLARACAO: TIntegerField;
    T_numeradorNR_ANO_DECLARACAO: TSmallintField;
    T_di: TTable;
    ds_di: TDataSource;
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
    T_cambio: TTable;
    ds_cambio: TDataSource;
    T_cambioCodigo: TStringField;
    T_cambioDescricao: TStringField;
    T_cambioTaxa_Conversao: TStringField;
    T_cambioVigencia_Inicio_Taxa: TStringField;
    T_cambioVigencia_Fim_Taxa: TStringField;
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
    me_dtorigem: TMaskEdit;
    Label178: TLabel;
    Label179: TLabel;
    me_dtdespacho: TMaskEdit;
    Panel11: TPanel;
    Label181: TLabel;
    DBG_adicoes: TDBGrid;
    PageControl8: TPageControl;
    TS_detalhe: TTabSheet;
    b_atualizasiscomex: TBitBtn;
    Label182: TLabel;
    cb_motadmtemp: TComboBox;
    T_motadmtemp: TTable;
    ds_motadmtemp: TDataSource;
    T_motadmtempCodigo: TStringField;
    T_motadmtempDescricao: TStringField;
    cb_bemencomenda: TCheckBox;
    cb_materialusado: TCheckBox;
    cb_valoracao: TComboBox;
    rg_aplicacao: TRadioGroup;
    Label184: TLabel;
    T_valoracao: TTable;
    ds_valoracao: TDataSource;
    T_valoracaoCODIGO: TStringField;
    T_valoracaoDESCRICAO: TStringField;
    Q_adicoes: TQuery;
    ds_qadicoes: TDataSource;
    Q_itensadicoes: TQuery;
    ds_qitensadicoes: TDataSource;
    q_detalhe: TQuery;
    ds_detalhe: TDataSource;
    ds_qdetalhe_adicao: TDataSource;
    q_detalhe_adicao: TQuery;
    q_detalheNR_DECL_IMP_MICRO: TStringField;
    q_detalheAdicao: TStringField;
    q_detalheQuantidade: TFloatField;
    q_detalheseq: TStringField;
    q_detalheProduto: TStringField;
    q_detalheDescricao_Produto: TStringField;
    q_detalheFatura: TStringField;
    q_detalhePagina: TStringField;
    q_detalheSequencial: TStringField;
    q_detalhe_adicaoNR_DECL_IMP_MICRO: TStringField;
    q_detalhe_adicaoProduto: TStringField;
    q_detalhe_adicaoQuantidade: TFloatField;
    q_detalhe_adicaoDescricao_Produto: TStringField;
    q_detalhe_adicaoFatura: TStringField;
    q_detalhe_adicaoPagina: TStringField;
    q_detalhe_adicaoSequencial: TStringField;
    q_detalhe_adicaoseq: TStringField;
    T_adicoes: TTable;
    ds_adicoes: TDataSource;
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
    T_detalhes: TTable;
    ds_detalhes: TDataSource;
    T_detalhesNR_DECL_IMP_MICRO: TStringField;
    T_detalhesNR_OP_IMP_MICRO: TStringField;
    T_detalhesNU_SEQ_DETALHE: TSmallintField;
    T_detalhesTX_DESC_DET_MERC: TMemoField;
    T_detalhesQT_MERC_UN_COMERC: TStringField;
    T_detalhesNM_UN_MEDID_COMERC: TStringField;
    T_detalhesVL_UNID_LOC_EMB: TFloatField;
    T_detalhesVL_UNID_COND_VENDA: TStringField;
    T_detalhesCD_PRODUTO: TStringField;
    rg_vinculacao: TRadioGroup;
    T_tributositemEmpresa: TStringField;
    T_tributositemFilial: TStringField;
    T_tributositemProcesso: TStringField;
    T_tributositemFatura: TStringField;
    T_tributositemSequencial_Item: TStringField;
    T_tributositemSequencial: TStringField;
    T_tributositemCertificado_Origem: TStringField;
    T_tributositemAto_Concessorio: TStringField;
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
    T_tributositemPercentual_Reduca_IPI: TFloatField;
    T_tributositemQuantidade: TFloatField;
    T_tributositemAdicao: TStringField;
    T_acresval: TTable;
    ds_acresval: TDataSource;
    T_atosvinc: TTable;
    ds_atosvinc: TDataSource;
    T_cargaarm: TTable;
    ds_cargaarm: TDataSource;
    T_deduval: TTable;
    ds_deduval: TDataSource;
    t_destaquencm: TTable;
    ds_destaquencm: TDataSource;
    T_docsintru: TTable;
    ds_codsinstru: TDataSource;
    T_embcarga: TTable;
    ds_embcarga: TDataSource;
    T_pagprevisto: TTable;
    ds_pagprevisto: TDataSource;
    T_pagtributos: TTable;
    ds_pagtributos: TDataSource;
    T_pagvinculado: TTable;
    ds_pavinculado: TDataSource;
    T_tributo: TTable;
    ds_tributo: TDataSource;
    T_acresvalNR_DECL_IMP_MICRO: TStringField;
    T_acresvalNR_OP_IMP_MICRO: TStringField;
    T_acresvalCD_MET_ACRES_VALOR: TStringField;
    T_acresvalVL_ACRESCIMO_MOEDA: TFloatField;
    T_acresvalCD_MD_NEGOC_ACRES: TStringField;
    T_acresvalVL_ACRESCIMO_MN: TFloatField;
    T_atosvincNR_DECL_IMP_MICRO: TStringField;
    T_atosvincNR_OP_IMP_MICRO: TStringField;
    T_atosvincCD_ASSUNTO_VINCUL: TStringField;
    T_atosvincSG_TIPO_ATO_VINCUL: TStringField;
    T_atosvincSG_ORG_ATO_VINCUL: TStringField;
    T_atosvincDT_ANO_ATO_VINCUL: TStringField;
    T_atosvincNR_ATO_VINCULADO: TStringField;
    T_atosvincNR_EX_ATO_VINCUL: TStringField;
    T_cargaarmNR_DECL_IMP_MICRO: TStringField;
    T_cargaarmNR_SEQ_ARMAZEM: TSmallintField;
    T_cargaarmNM_ARMAZEM_CARGA: TStringField;
    T_deduvalNR_DECL_IMP_MICRO: TStringField;
    T_deduvalNR_OP_IMP_MICRO: TStringField;
    T_deduvalCD_MET_DEDUC_VALOR: TStringField;
    T_deduvalVL_DEDUCAO_MNEG: TFloatField;
    T_deduvalCD_MD_NEGOC_DEDUC: TStringField;
    T_deduvalVL_DEDUCAO_MN: TFloatField;
    t_destaquencmNR_DECL_IMP_MICRO: TStringField;
    t_destaquencmNR_OP_IMP_MICRO: TStringField;
    t_destaquencmNU_SEQ_DESTAQUE: TSmallintField;
    t_destaquencmNR_DESTAQUE_NCM: TStringField;
    T_docsintruNR_DECL_IMP_MICRO: TStringField;
    T_docsintruNR_SEQ_DCTO_INSTR: TSmallintField;
    T_docsintruCD_TIPO_DCTO_INSTR: TStringField;
    T_docsintruNR_DCTO_INSTRUCAO: TStringField;
    T_docsintruNM_DCTO_INSTRUCAO: TStringField;
    T_embcargaNR_DECL_IMP_MICRO: TStringField;
    T_embcargaNR_SEQ_EMBALAGEM: TSmallintField;
    T_embcargaCD_TIPO_EMBALAGEM: TStringField;
    T_embcargaQT_VOLUME_CARGA: TStringField;
    T_pagprevistoNR_DECL_IMP_MICRO: TStringField;
    T_pagprevistoNR_OP_IMP_MICRO: TStringField;
    T_pagprevistoNU_SEQ_PAG_PREV: TSmallintField;
    T_pagprevistoDT_PREV_PGTO_360: TStringField;
    T_pagprevistoVL_PREV_PGTO_360: TFloatField;
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
    Q_acresdedu: TQuery;
    ds_qacresdedu: TDataSource;
    Q_acresdeduNR_DECL_IMP_MICRO: TStringField;
    Q_acresdeduAdicao: TStringField;
    Q_acresdeduSomaDeAcresc_reduc_Valaduan: TFloatField;
    Q_acresdeduIncoterm: TStringField;
    Q_acresdeduMoeda: TStringField;
    Q_atovinc: TQuery;
    ds_qatovinc: TDataSource;
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
    q_embcarga: TQuery;
    q_embcargaNR_DECL_IMP_MICRO: TStringField;
    q_embcargaTipoEmbalagem: TStringField;
    q_embcargaQuantidade: TStringField;
    ds_qembcarga: TDataSource;
    Q_cargaarm: TQuery;
    ds_qcargarm: TDataSource;
    Q_cargaarmNR_DECL_IMP_MICRO: TStringField;
    Q_cargaarmNome_Armazem: TStringField;
    q_destaquencm: TQuery;
    ds_qdestaque: TDataSource;
    q_destaquencmNR_DECL_IMP_MICRO: TStringField;
    q_destaquencmAdicao: TStringField;
    q_destaquencmDestaque_NCM: TStringField;
    q_docsinstru: TQuery;
    ds_qdocsinstru: TDataSource;
    q_docsinstruNR_DECL_IMP_MICRO: TStringField;
    q_docsinstrucod_fat: TStringField;
    q_docsinstrutipo_doc01: TStringField;
    q_docsinstruFatura: TStringField;
    q_docsinstrucod_co: TStringField;
    q_docsinstrutipo_doc02: TStringField;
    q_docsinstruCertificado_Origem: TStringField;
    Q_tributos: TQuery;
    ds_qtributos: TDataSource;
    q_pagprev: TQuery;
    ds_qpagprev: TDataSource;
    q_pagtributos: TQuery;
    ds_qpagtributos: TDataSource;
    q_pagvinculados: TQuery;
    ds_qpagvinculados: TDataSource;
    ComboBox1: TComboBox;
    q_infcomp: TQuery;
    ds_qinfcomp: TDataSource;
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
    Label185: TLabel;
    me_numeroserie: TMaskEdit;
    T_contratos: TTable;
    ds_contratos: TDataSource;
    T_contratosEmpresa: TStringField;
    T_contratosFilial: TStringField;
    T_contratosImportador: TStringField;
    T_contratosContrato: TStringField;
    T_contratosDescricao: TStringField;
    T_contratosVigencia_inicial: TDateTimeField;
    T_contratosVigencia_final: TDateTimeField;
    T_locais: TTable;
    ds_locais: TDataSource;
    T_locaisEmpresa: TStringField;
    T_locaisFilial: TStringField;
    T_locaisImportador: TStringField;
    T_locaisContrato: TStringField;
    T_locaisLocal: TStringField;
    T_locaisDescricao: TStringField;
    T_locaisTipo_local: TStringField;
    me_po: TMaskEdit;
    Label188: TLabel;
    ts_RCR: TTabSheet;
    T_contratosTipo: TStringField;
    p_rcr: TPanel;
    T_fundaRCR: TTable;
    ds_fundaRCR: TDataSource;
    T_fundaRCRCodigo: TStringField;
    T_fundaRCRDescricao: TStringField;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Shape1: TShape;
    b_imprime: TBitBtn;
    b_gravaRCR: TBitBtn;
    me_numerorcr: TMaskEdit;
    me_dataentradarcr: TMaskEdit;
    me_dataaprova: TMaskEdit;
    cb_funda: TComboBox;
    ts_tr: TTabSheet;
    p_tr: TPanel;
    Shape2: TShape;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    b_imprimeTR: TBitBtn;
    b_gracatr: TBitBtn;
    me_numeroTR: TMaskEdit;
    me_dataentrada: TMaskEdit;
    me_dataaprovacao: TMaskEdit;
    cb_procuradores: TComboBox;
    t_procuradores: TTable;
    ds_procuradores: TDataSource;
    t_procuradoresEmpresa: TStringField;
    t_procuradoresFilial: TStringField;
    t_procuradoresCodigo: TStringField;
    t_procuradoresRazoSocial: TStringField;
    t_procuradoresPas: TStringField;
    t_procuradoresCGCCPF: TStringField;
    t_procuradoresEndereo: TStringField;
    t_procuradoresNmero: TStringField;
    t_procuradoresComplemento: TStringField;
    t_procuradoresBairro: TStringField;
    t_procuradoresCidade: TStringField;
    t_procuradoresCEP: TStringField;
    t_procuradoresUF: TStringField;
    t_procuradoresEstado: TStringField;
    t_procuradoresInscrioEstadual: TStringField;
    rg_garantia: TRadioGroup;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    me_datadeposito: TMaskEdit;
    me_nomebanco: TMaskEdit;
    me_agencia: TMaskEdit;
    Label202: TLabel;
    me_nometitulo: TMaskEdit;
    Label203: TLabel;
    me_numeros: TMaskEdit;
    Label204: TLabel;
    me_nomeseguradora: TMaskEdit;
    Label205: TLabel;
    me_numeroapolice: TMaskEdit;
    Label206: TLabel;
    me_nomefiador: TMaskEdit;
    Label207: TLabel;
    me_cnpjfiador: TMaskEdit;
    Label208: TLabel;
    me_enderecofiador: TMaskEdit;
    T_tributositemSeq_Adicao: TSmallintField;
    p_rof: TPanel;
    Label70: TLabel;
    Label210: TLabel;
    me_rof: TMaskEdit;
    me_valperrof: TMaskEdit;
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
    cb_mn1: TCheckBox;
    cb_mn2: TCheckBox;
    dbg_detahes: TDBGrid;
    Label75: TLabel;
    me_percex: TMaskEdit;
    T_tributositemPercentual_EX: TFloatField;
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
    q_pagprevNR_DECL_IMP_MICRO: TStringField;
    q_pagprevAdicao: TStringField;
    q_pagprevDatadePagamento: TStringField;
    q_pagprevPercentual: TFloatField;
    q_pagprevValor_Aduaneiro: TFloatField;
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
    me_seq: TMaskEdit;
    Label211: TLabel;
    q_detalheReferencia: TStringField;
    q_detalheCertificado_Origem: TStringField;
    Label212: TLabel;
    me_fretetotal: TMaskEdit;
    Label213: TLabel;
    me_vmletotal: TMaskEdit;
    Label214: TLabel;
    me_naladi: TMaskEdit;
    Label215: TLabel;
    me_destaque: TMaskEdit;
    Label216: TLabel;
    cb_unid: TComboBox;
    cb_unidest: TComboBox;
    p_ncm: TPanel;
    Label217: TLabel;
    b_cancelancm: TBitBtn;
    b_okncm: TBitBtn;
    DBG_ncm: TDBGrid;
    me_localizancm: TMaskEdit;
    Q_ncm: TQuery;
    Q_ncmCODIGO: TStringField;
    Q_ncmDESCRICAO: TStringField;
    Q_ncmUNIDADE_MEDIDA: TStringField;
    ds_qncm: TDataSource;
    p_exportadores: TPanel;
    Label218: TLabel;
    b_cancelaimp: TBitBtn;
    b_okimp: TBitBtn;
    DBG_exportadores: TDBGrid;
    me_localizaexp: TMaskEdit;
    me_exp: TMaskEdit;
    me_nomeexp: TMaskEdit;
    Q_exportadores: TQuery;
    Q_exportadoresEmpresa: TStringField;
    Q_exportadoresFilial: TStringField;
    Q_exportadoresCodigo: TStringField;
    Q_exportadoresRazoSocial: TStringField;
    ds_qexportadores: TDataSource;
    sb_ncm: TSpeedButton;
    sb_pag: TSpeedButton;
    sb_seq: TSpeedButton;
    sb_val: TSpeedButton;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Q_fabricantes: TQuery;
    Q_fabricantesEmpresa: TStringField;
    Q_fabricantesFilial: TStringField;
    Q_fabricantesCodigo: TStringField;
    Q_fabricantesrazosocial: TStringField;
    ds_qfabricantes: TDataSource;
    p_fabricantes: TPanel;
    Label224: TLabel;
    b_cancelafab: TBitBtn;
    b_okfab: TBitBtn;
    DBG_fabricantes: TDBGrid;
    me_localizafab: TMaskEdit;
    Q_itensadicoesNR_DECL_IMP_MICRO: TStringField;
    Q_itensadicoesCdigo: TStringField;
    Q_itensadicoesVinculacao: TStringField;
    Q_itensadicoesURF_chegada: TStringField;
    Q_itensadicoesVia: TStringField;
    Q_itensadicoesMultimodal: TBooleanField;
    Q_itensadicoesRazoSocial: TStringField;
    Q_itensadicoesEndereo: TStringField;
    Q_itensadicoesNmero: TStringField;
    Q_itensadicoesComplemento: TStringField;
    Q_itensadicoesCidade: TStringField;
    Q_itensadicoesEstado: TStringField;
    Q_itensadicoesPas: TStringField;
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
    Q_itensadicoesCondio: TStringField;
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
    Q_itensadicoesCoberturaCambial: TStringField;
    Q_itensadicoesModalidadedePagamento: TStringField;
    Q_itensadicoesInstituicaoFinanciadora: TStringField;
    Q_itensadicoesMotivoSemCobertura: TStringField;
    Q_itensadicoesNumerodeparcelas: TStringField;
    Q_itensadicoesPeriodicidade: TStringField;
    Q_itensadicoesIndicadorPeriodicidade: TStringField;
    Q_itensadicoesTaxadeJuros: TBooleanField;
    Q_itensadicoesROFBACEN: TStringField;
    Q_itensadicoesCodigoTaxadeJuros: TStringField;
    Q_itensadicoesIN_BEM_ENCOMENDA: TBooleanField;
    Q_itensadicoesIN_MATERIAL_USADO: TBooleanField;
    Q_itensadicoesSomaDeVMLE: TFloatField;
    Q_itensadicoesSomaDeBase_Calc_II: TFloatField;
    Q_itensadicoesCertificado_Origem: TStringField;
    Q_itensadicoesAto_Concessorio: TStringField;
    Q_itensadicoesALIQUOTA_ALADI: TFloatField;
    Q_itensadicoesRegime_Tributacao_IPI: TStringField;
    Q_itensadicoesNumero_Ato_Legal_IPI: TStringField;
    Q_itensadicoesPercentual_Reduca_IPI: TFloatField;
    Q_itensadicoesFatura: TStringField;
    Q_itensadicoessequencial: TStringField;
    Q_itensadicoesseq: TStringField;
    Q_itensadicoesUnidade_Medida_Estat: TStringField;
    Q_itensadicoesDestaque_NCM: TStringField;
    q_pagtributosNR_DECL_IMP_MICRO: TStringField;
    q_pagtributosnadicoes: TStringField;
    q_pagtributoscod_ii: TStringField;
    q_pagtributoscod_ipi: TStringField;
    q_pagtributoscod_sis: TStringField;
    q_pagtributosBanco: TStringField;
    q_pagtributosAgencia: TStringField;
    q_pagtributosSomaDeValor_II_a_recolher: TFloatField;
    q_pagtributosSomaDeValor_IPI_a_recolher: TFloatField;
    T_parametrosNumerador_Processos: TStringField;
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
    T_itensfaturasUnidade_Medida_Estat: TStringField;
    T_itensfaturasDestaque_NCM: TStringField;
    T_itensfaturasNALADI: TStringField;
    Q_itensfaturasEmpresa: TStringField;
    Q_itensfaturasFilial: TStringField;
    Q_itensfaturasProcesso: TStringField;
    Q_itensfaturasFatura: TStringField;
    Q_itensfaturasSequencial: TStringField;
    Q_itensfaturasPagina: TStringField;
    Q_itensfaturasProduto: TStringField;
    Q_itensfaturasDescricao_Produto: TStringField;
    Q_itensfaturasFabricante: TStringField;
    Q_itensfaturasNCM: TStringField;
    Q_itensfaturasUnidade: TStringField;
    Q_itensfaturasReferencia: TStringField;
    Q_itensfaturasNumero_serie: TStringField;
    Q_itensfaturasPO: TStringField;
    Q_itensfaturasQuantidade: TFloatField;
    Q_itensfaturasValorUnitrio: TFloatField;
    Q_itensfaturasValorTotal: TFloatField;
    Q_itensfaturasPesoUnitrio: TFloatField;
    Q_itensfaturasPeso_Unitario_Acertado: TFloatField;
    Q_itensfaturasPesoTotal: TFloatField;
    Q_itensfaturasPeso_Total_Acertado: TFloatField;
    Q_itensfaturasSaldo_Tributavel: TFloatField;
    Q_itensfaturasRateio_Acrescimos: TFloatField;
    Q_itensfaturasRateio_Deducoes: TFloatField;
    Q_itensfaturasRateio_Embalagem: TFloatField;
    Q_itensfaturasRateio_Frete_Interno_imp: TFloatField;
    Q_itensfaturasRateio_Seguro_Interno: TFloatField;
    Q_itensfaturasRateio_outras_import: TFloatField;
    Q_itensfaturasRateio_startup: TFloatField;
    Q_itensfaturasRateio_jurosfin: TFloatField;
    Q_itensfaturasRateio_montagem: TFloatField;
    Q_itensfaturasRateio_Frete_Interno_exp: TFloatField;
    Q_itensfaturasRateio_carga_exp: TFloatField;
    Q_itensfaturasRateio_outras_export: TFloatField;
    Q_itensfaturasRateio_frete_fatura: TFloatField;
    Q_itensfaturasRateio_seguro_fatura: TFloatField;
    Q_itensfaturasRateio_carga_imp: TFloatField;
    Q_itensfaturasRateio_Despesas_ate_FOB: TFloatField;
    Q_itensfaturasRateio_Frete_prepaid: TFloatField;
    Q_itensfaturasRateio_Frete_collect: TFloatField;
    Q_itensfaturasRateio_Frete_ternac: TFloatField;
    Q_itensfaturasRateio_Seguro: TFloatField;
    Q_itensfaturasValor_Aduaneiro: TFloatField;
    Q_itensfaturasValor_mercadoria: TFloatField;
    Q_itensfaturasVMLE: TFloatField;
    Q_itensfaturasBase_Calc_II: TFloatField;
    Q_itensfaturasAcresc_reduc_Valaduan: TFloatField;
    Q_itensfaturasUnidade_Medida_Estat: TStringField;
    Q_itensfaturasDestaque_NCM: TStringField;
    Q_itensfaturasNALADI: TStringField;
    T_rcrtemp: TTable;
    T_rcrtempProcesso: TStringField;
    T_rcrtempNCM: TStringField;
    T_rcrtempFatura: TStringField;
    T_rcrtempPagina: TStringField;
    T_rcrtempQuantidade: TFloatField;
    T_rcrtempValor: TFloatField;
    ds_rcrtemp: TDataSource;
    T_procdi: TTable;
    ds_procdi: TDataSource;
    T_procdiNR_DECL_IMP_MICRO: TStringField;
    T_procdiNR_SEQ_PROCESSO: TSmallintField;
    T_procdiCD_TIPO_PROCESSO: TStringField;
    T_procdiNR_PROCESSO_INSTR: TStringField;
    Label225: TLabel;
    me_transp1: TMaskEdit;
    me_transp2: TMaskEdit;
    Panel12: TPanel;
    t_tiposnumerario: TTable;
    t_tiposnumerarioEmpresa: TStringField;
    t_tiposnumerarioFilial: TStringField;
    t_tiposnumerarioCodigo: TStringField;
    t_tiposnumerarioDescricao: TStringField;
    t_tiposnumerarioPlano_contas: TStringField;
    ds_tiposnumerario: TDataSource;
    t_numerarios: TTable;
    ds_numerarios: TDataSource;
    t_numerariosEmpresa: TStringField;
    t_numerariosFilial: TStringField;
    t_numerariosProcesso: TStringField;
    t_numerariosNumerario: TStringField;
    t_numerariosUsuario_Previsao: TStringField;
    t_numerariosData_Previsao: TDateTimeField;
    t_numerariosValor_Previsao: TFloatField;
    t_numerariosPrevisao_solicitada: TStringField;
    t_numerariosOk_Previsao_financeiro: TStringField;
    t_numerariosUsuario_Financeiro: TStringField;
    t_numerariosData_Registro: TDateTimeField;
    t_numerariosValor_Registrado: TFloatField;
    t_numerariosContabilizado: TStringField;
    t_numerariosUsuario_Contablizado: TStringField;
    DBG_numerarios: TDBGrid;
    Label226: TLabel;
    DBEdit1: TDBEdit;
    Label227: TLabel;
    DBEdit2: TDBEdit;
    b_incluinum: TBitBtn;
    b_excluipro: TBitBtn;
    b_gravanum: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label228: TLabel;
    Label229: TLabel;
    DBEdit3: TDBEdit;
    Label230: TLabel;
    DBEdit4: TDBEdit;
    me_vprevisao: TMaskEdit;
    me_vreal: TMaskEdit;
    Label231: TLabel;
    Label232: TLabel;
    T_contatosimp: TTable;
    ds_contatosimp: TDataSource;
    T_contatosimpEmpresa: TStringField;
    T_contatosimpFilial: TStringField;
    T_contatosimpImportador: TStringField;
    T_contatosimpEmail_Numerario: TStringField;
    T_contatosimpFax_Numerario: TStringField;
    T_contatosimpContato_Numerario: TStringField;
    Panel13: TPanel;
    Label236: TLabel;
    b_impfax: TBitBtn;
    b_impemail: TBitBtn;
    T_followupEmpresa: TStringField;
    T_followupFilial: TStringField;
    T_followupProcesso: TStringField;
    T_followupCodevento: TStringField;
    T_followupCodobs: TStringField;
    T_followupObs_especifica: TStringField;
    T_followupData: TDateTimeField;
    T_followupHora: TStringField;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    dbl_eventos: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    Panel25: TPanel;
    T_canais: TTable;
    ds_canais: TDataSource;
    T_canaisCODIGO: TStringField;
    T_canaisDESCRICAO: TStringField;
    T_status: TTable;
    ds_status: TDataSource;
    T_statusDESCRICAO: TStringField;
    T_sitfis: TTable;
    ds_sitfis: TDataSource;
    T_sitfisCODIGO: TStringField;
    T_sitfisDESCRICAO: TStringField;
    Label239: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
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
    T_pastas: TTable;
    ds_pastas: TDataSource;
    T_pastasEmpresa: TStringField;
    T_pastasFilial: TStringField;
    T_pastasProcesso: TStringField;
    T_pastasUsuario: TStringField;
    T_movpastas: TTable;
    T_movpastasMovimento: TAutoIncField;
    T_movpastasEmpresa: TStringField;
    T_movpastasFilial: TStringField;
    T_movpastasProcesso: TStringField;
    T_movpastasDe_usuario: TStringField;
    T_movpastasPara_usuario: TStringField;
    T_movpastasData: TDateTimeField;
    T_movpastasHora: TDateTimeField;
    ds_movpastas: TDataSource;
    b_atualizasiscomexa: TBitBtn;
    T_taxaconv: TTable;
    ds_taxaconv: TDataSource;
    T_taxaconvEmpresa: TStringField;
    T_taxaconvFilial: TStringField;
    T_taxaconvProcesso: TStringField;
    T_taxaconvMoeda: TStringField;
    T_taxaconvTaxa_conversao: TFloatField;
    T_itensfaturasCOD_SIT: TStringField;
    me_datavencimento: TMaskEdit;
    Label249: TLabel;
    b_imprimeverso: TBitBtn;
    t_obstr: TTable;
    ds_obstr: TDataSource;
    Panel31: TPanel;
    Label250: TLabel;
    DBMemo1: TDBMemo;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    T_produtosDescrio: TMemoField;
    T_rcrtempDescricao_Produto: TStringField;
    Q_produtosQDESCR: TStringField;
    sb_locevento: TSpeedButton;
    p_loceventos: TPanel;
    Label251: TLabel;
    b_cancelaloceventos: TBitBtn;
    b_okloceventos: TBitBtn;
    DBGrid1: TDBGrid;
    me_localiza: TMaskEdit;
    q_loceventos: TQuery;
    ds_qloceventos: TDataSource;
    q_loceventosEmpresa: TStringField;
    q_loceventosFilial: TStringField;
    q_loceventosCodigo: TStringField;
    q_loceventosDescricao: TStringField;
    T_importadoresCNPJ_CPF_COMPLETO: TStringField;
    T_importadoresBanco: TStringField;
    T_importadoresAgencia: TStringField;
    T_importadoresConta_Corrente: TStringField;
    me_databaixatr: TMaskEdit;
    Label252: TLabel;
    q_followup: TQuery;
    T_followuplink: TStringField;
    ds_tfollow: TDataSource;
    T_followupSequencial: TAutoIncField;
    q_followupEmpresa: TStringField;
    q_followupFilial: TStringField;
    q_followupCdigo: TStringField;
    q_followupSequencial: TAutoIncField;
    q_followupData: TDateTimeField;
    q_followupHora: TStringField;
    q_followupCodevento: TStringField;
    q_followupqevento: TStringField;
    q_followupCodobs: TStringField;
    q_followupqobs: TStringField;
    q_followupObs_especifica: TStringField;
    q_followuplink: TStringField;
    Label253: TLabel;
    DBEdit22: TDBEdit;
    t_followup_i: TTable;
    t_followup_iEmpresa: TStringField;
    t_followup_iFilial: TStringField;
    t_followup_iProcesso: TStringField;
    t_followup_iSequencial: TAutoIncField;
    t_followup_iCodevento: TStringField;
    t_followup_iCodobs: TStringField;
    t_followup_iObs_especifica: TStringField;
    t_followup_iData: TDateTimeField;
    t_followup_iHora: TStringField;
    t_followup_ilink: TStringField;
    t_tiposnumerario_ing: TTable;
    ds_tiposnumerario_ing: TDataSource;
    Panel32: TPanel;
    Panel33: TPanel;
    Label257: TLabel;
    DBEdit26: TDBEdit;
    Label258: TLabel;
    DBEdit27: TDBEdit;
    Panel34: TPanel;
    Label259: TLabel;
    Label260: TLabel;
    Panel35: TPanel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label256: TLabel;
    DBEdit25: TDBEdit;
    Label234: TLabel;
    DBEdit6: TDBEdit;
    T_contatosimpCC_Email: TStringField;
    t_usuarios: TTable;
    t_usuariosEmpresa: TStringField;
    t_usuariosFilial: TStringField;
    t_usuariosUsuario: TStringField;
    t_usuariosSenha: TStringField;
    t_usuariosNome_Completo: TStringField;
    t_usuariosDiretorio_SISCOMEX: TStringField;
    t_usuariosNivel: TStringField;
    t_usuariosData_validade_senha: TDateTimeField;
    t_usuariosEmail: TStringField;
    t_usuariosEmail_Sol_Num: TBooleanField;
    ds_usuarios: TDataSource;
    email_num: TNMSMTP;
    p_email: TPanel;
    Memo_email: TMemo;
    b_envia: TBitBtn;
    b_cancelaemail: TBitBtn;
    t_reltipodoccarga: TTable;
    t_reltipodoccargavia: TStringField;
    t_reltipodoccargacodigo: TStringField;
    t_reltipodoccargadescricao: TStringField;
    T_importadoresConta_Corrente_Registro: TIntegerField;
    T_importadoresConta_Corrente_Deposito: TIntegerField;
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
    Label233: TLabel;
    t_tiposnumerario_ingEmpresa: TStringField;
    t_tiposnumerario_ingFilial: TStringField;
    t_tiposnumerario_ingCodigo: TStringField;
    t_tiposnumerario_ingDescricao: TStringField;
    t_tiposnumerario_ingPlano_contas: TStringField;
    T_parametrosNumerador_Documentos: TStringField;
    T_parametrosEndereco_ftp: TStringField;
    T_parametrosUsuario_ftp: TStringField;
    T_parametrosSenha_ftp: TStringField;
    T_parametrosHost: TStringField;
    t_numerariosREG: TAutoIncField;
    t_numerariosConta_Corrente: TIntegerField;
    t_numerariosCodigo_mov: TIntegerField;
    t_numerariosImpdemfim: TStringField;
    Q_update1: TQuery;
    q_update2: TQuery;
    q_upacrescimos: TQuery;
    t_numerariosValor_Contabilizado: TFloatField;
    t_numerariosDetalhe: TStringField;
    q_sub: TQuery;
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
    q_fobcif12c: TQuery;
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
    q_infocomp6: TQuery;
    q_infocomp6Processo: TStringField;
    q_infocomp6Certificado_Origem: TStringField;
    cb_atoconce: TComboBox;
    Label235: TLabel;
    cb_sub: TComboBox;
    T_tributositemCNPJ_CPF_COMPLETO: TStringField;
    T_tributositemDDE: TStringField;
    T_tributositemRE: TStringField;
    q_atosconce: TQuery;
    q_atosconceNumero: TStringField;
    q_atosconceDescricao: TStringField;
    q_atosconceImportador: TStringField;
    q_subEmpresa: TStringField;
    q_subFilial: TStringField;
    q_subNumero: TStringField;
    q_subImportador: TStringField;
    q_subCNPJ_CPF_COMPLETO: TStringField;
    q_subRazao_Social: TStringField;
    me_sub: TMaskEdit;
    q_apagadis: TQuery;
    q_geradi: TQuery;
    q_geraadicoes: TQuery;
    q_geradet: TQuery;
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
    q_acresval: TQuery;
    q_atos: TQuery;
    q_emb: TQuery;
    q_car: TQuery;
    q_desncm: TQuery;
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
    Panel36: TPanel;
    Label242: TLabel;
    DBEdit16: TDBEdit;
    Label243: TLabel;
    DBEdit17: TDBEdit;
    Label244: TLabel;
    DBEdit18: TDBEdit;
    Label245: TLabel;
    DBEdit19: TDBEdit;
    Label237: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label254: TLabel;
    DBEdit23: TDBEdit;
    Label238: TLabel;
    DBEdit12: TDBEdit;
    Label240: TLabel;
    DBEdit14: TDBEdit;
    DBEdit24: TDBEdit;
    Label255: TLabel;
    Label241: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Panel37: TPanel;
    Label261: TLabel;
    Label262: TLabel;
    Label263: TLabel;
    Label264: TLabel;
    Label265: TLabel;
    Label266: TLabel;
    Label267: TLabel;
    Label268: TLabel;
    Label269: TLabel;
    Label270: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBLookupComboBox12: TDBLookupComboBox;
    Panel38: TPanel;
    Panel39: TPanel;
    ts_RPR: TTabSheet;
    Panel40: TPanel;
    Shape3: TShape;
    Label271: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    q_rpr: TQuery;
    ds_rpr: TDataSource;
    q_rprImportador: TStringField;
    q_rprCdigo: TStringField;
    q_rprCdigo_Cliente: TStringField;
    q_rprNR_DECLARACAO_IMP: TStringField;
    q_rprNumero_RCR: TStringField;
    q_rprData_Entrada_RCR: TDateTimeField;
    q_rprData_Aprovacao_RCR: TDateTimeField;
    q_rprNumero_TR: TStringField;
    q_rprData_Entrada_TR: TDateTimeField;
    q_rprData_vencimento_TR: TDateTimeField;
    q_rprData_Aprovacao_TR: TDateTimeField;
    q_rprData_Baixa_TR: TDateTimeField;
    DBGrid2: TDBGrid;
    T_taxaconvTaxa_conversaoc: TFloatField;
    b_imprimerelconsumo: TBitBtn;
    me_destcon: TMaskEdit;
    Label272: TLabel;
    Label273: TLabel;
    ME_VALFOBUSS: TMaskEdit;
    Label274: TLabel;
    ME_VALCIFUSS: TMaskEdit;
    Label275: TLabel;
    me_iireal: TMaskEdit;
    me_ipireal: TMaskEdit;
    Label276: TLabel;
    me_totimpreal: TMaskEdit;
    Label277: TLabel;
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
    q_somaitensfat: TQuery;
    q_somaitensfatEmpresa: TStringField;
    q_somaitensfatFilial: TStringField;
    q_somaitensfatProcesso: TStringField;
    q_somaitensfatFatura: TStringField;
    q_somaitensfatv_valortotal: TFloatField;
    q_somaitensfatv_pesototal: TFloatField;
    q_somaitensfatv_pesototala: TFloatField;
    t_obstrEmpresa: TStringField;
    t_obstrFilial: TStringField;
    t_obstrCdigo: TStringField;
    t_obstrObservacoes: TMemoField;
    T_processosStatus: TStringField;
    T_statusCODIGO: TStringField;
    T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField;
    T_faturasDT_PAG_CAMBIO: TDateTimeField;
    T_faturasSTATUS_CAMBIO: TStringField;
    T_processosCodevento: TStringField;
    T_processosCodobs: TStringField;
    T_processosObs_especifica: TStringField;
    T_processosData_ufollowup: TDateTimeField;
    T_processosHora_ufollowup: TStringField;
    T_followupData_final: TDateTimeField;
    T_followupHora_final: TStringField;
    T_followupDuracao: TIntegerField;
    t_followup_iData_final: TDateTimeField;
    t_followup_iHora_final: TStringField;
    t_followup_iDuracao: TIntegerField;
    T_processosData_liberacao: TDateTimeField;
    Label278: TLabel;
    DBEdit36: TDBEdit;
    T_verufollow: TTable;
    T_verufollowEmpresa: TStringField;
    T_verufollowFilial: TStringField;
    T_verufollowProcesso: TStringField;
    T_verufollowSequencial: TAutoIncField;
    T_verufollowCodevento: TStringField;
    T_verufollowCodobs: TStringField;
    T_verufollowObs_especifica: TStringField;
    T_verufollowData: TDateTimeField;
    T_verufollowHora: TStringField;
    T_verufollowlink: TStringField;
    T_verufollowData_final: TDateTimeField;
    T_verufollowHora_final: TStringField;
    T_verufollowDuracao: TIntegerField;
    T_verufollowUsuario: TStringField;
    T_followupUsuario: TStringField;
    T_pagvincValor: TFloatField;
    T_parcelasvarValor: TFloatField;
    T_faturasCONTRATO_CAMBIO: TStringField;
    q_pgvincvalor: TFloatField;
    me_valorreal: TMaskEdit;
    Label279: TLabel;
    me_valorreal2: TMaskEdit;
    Label280: TLabel;
    q_parcvarvalor: TFloatField;
    Label281: TLabel;
    me_valor3: TMaskEdit;
    T_parcelasvarFatura: TStringField;
    T_pagvincFatura: TStringField;
    Label282: TLabel;
    me_refproj: TMaskEdit;
    T_itensfaturasReferencia_projeto: TStringField;
    T_itensfaturasCNPJ: TStringField;
    T_itensfaturasFiel_nome: TStringField;
    T_itensfaturasFiel_cpf: TStringField;
    Q_itensfaturasReferencia_projeto: TStringField;
    Q_itensfaturasCOD_SIT: TStringField;
    Q_itensfaturasCNPJ: TStringField;
    Q_itensfaturasFiel_nome: TStringField;
    Q_itensfaturasFiel_cpf: TStringField;
    t_moedac: TTable;
    t_moedacCODIGO: TStringField;
    t_moedacDESCRICAO: TStringField;
    t_moedacTaxa_conversao: TFloatField;
    sp_euro: TSpeedButton;
    Label283: TLabel;
    me_prazo: TMaskEdit;
    Label284: TLabel;
    t_ncm_vutil: TTable;
    t_ncm_vutilncm: TStringField;
    t_ncm_vutilvida_util: TStringField;
    T_tributositemPrazo_permanencia: TIntegerField;
    memoDesc: TDBMemo;
    q_detalheReferencia_projeto: TStringField;
    q_detalhePO: TStringField;
    b_qq: TBitBtn;
    T_processosUrgente: TBooleanField;
    T_processosConsolidado: TBooleanField;
    T_itensfaturasContrato: TStringField;
    T_itensfaturasLocal_Inventario: TStringField;
    Label285: TLabel;
    me_seqpo: TMaskEdit;
    Q_itensfaturasSEQPO: TStringField;
    Q_itensfaturasContrato: TStringField;
    Q_itensfaturasLocal_Inventario: TStringField;
    Label247: TLabel;
    DBEdit20: TDBEdit;
    Label248: TLabel;
    DBEdit21: TDBEdit;
    Label246: TLabel;
    DBEdit15: TDBEdit;
    Label286: TLabel;
    Label287: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    q_detalheseqPO: TStringField;
    T_itensfaturasSeqpo: TStringField;
    Q_infocomp2: TQuery;
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
    Q_infocomp2Processo: TStringField;
    Q_infocomp2Codigo: TStringField;
    Q_infocomp2Descricao: TStringField;
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
    q_importadores: TQuery;
    q_importadoresEmpresa: TStringField;
    q_importadoresFilial: TStringField;
    q_importadoresCodigo: TStringField;
    q_importadoresRazoSocial: TStringField;
    q_importadoresPas: TStringField;
    q_importadoresCNPJ_CPF_COMPLETO: TStringField;
    q_importadoresCGCCPF: TStringField;
    q_importadoresTipoImportador: TStringField;
    q_importadoresEndereo: TStringField;
    q_importadoresNmero: TStringField;
    q_importadoresComplemento: TStringField;
    q_importadoresBairro: TStringField;
    q_importadoresCidade: TStringField;
    q_importadoresCEP: TStringField;
    q_importadoresUF: TStringField;
    q_importadoresEstado: TStringField;
    q_importadoresInscrioEstadual: TStringField;
    q_importadoresBanco: TStringField;
    q_importadoresAgencia: TStringField;
    q_importadoresConta_Corrente: TStringField;
    q_importadoresConta_Corrente_Registro: TIntegerField;
    q_importadoresConta_Corrente_Deposito: TIntegerField;
    q_importadoreslink: TStringField;
    q_infocomp5Taxa_conversaoc: TFloatField;
    DBGrid3: TDBGrid;
    Label288: TLabel;
    Label289: TLabel;
    DBGrid4: TDBGrid;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TS_FaturasShow(Sender: TObject);
    procedure ME_nossarefExit(Sender: TObject);
    procedure b_fechacapaClick(Sender: TObject);
    procedure CB_faturasClick(Sender: TObject);
    procedure ME_faturaExit(Sender: TObject);
    procedure B_gravaClick(Sender: TObject);
    procedure B_gravaitClick(Sender: TObject);
    procedure DB_itensfaturaCellClick(Column: TColumn);
    procedure B_excluiitClick(Sender: TObject);
    procedure CB_incotermsExit(Sender: TObject);
    procedure ME_produtoExit(Sender: TObject);
    procedure B_cancelaClick(Sender: TObject);
    procedure B_okClick(Sender: TObject);
    procedure B_excluiClick(Sender: TObject);
    procedure RG_cambialClick(Sender: TObject);
    procedure TS_ConhecimentoShow(Sender: TObject);
    procedure TS_followupShow(Sender: TObject);
    procedure B_novoClick(Sender: TObject);
    procedure B_excluifollowClick(Sender: TObject);
    procedure B_alterafollowClick(Sender: TObject);
    procedure b_gravacambioClick(Sender: TObject);
    procedure CB_motivosClick(Sender: TObject);
    procedure b_incluipagClick(Sender: TObject);
    procedure me_contratoExit(Sender: TObject);
    procedure PageControl3Exit(Sender: TObject);
    procedure dbg_pagantCellClick(Column: TColumn);
    procedure b_excluipagClick(Sender: TObject);
    procedure TS_cambioShow(Sender: TObject);
    procedure ts_pag2Show(Sender: TObject);
    procedure dbg_pagvistaCellClick(Column: TColumn);
    procedure b_incluipag2Click(Sender: TObject);
    procedure Panel10Exit(Sender: TObject);
    procedure TS_cambioEnter(Sender: TObject);
    procedure ts_pag2Enter(Sender: TObject);
    procedure me_contrato2Exit(Sender: TObject);
    procedure ts_pag3Enter(Sender: TObject);
    procedure B_incluiparvarClick(Sender: TObject);
    procedure me_percentualExit(Sender: TObject);
    procedure DBG_parcvarCellClick(Column: TColumn);
    procedure b_excluiparvarClick(Sender: TObject);
    procedure rg_parcelasClick(Sender: TObject);
    procedure TS_acrescimosShow(Sender: TObject);
    procedure TS_deducoesShow(Sender: TObject);
    procedure cb_tipoacresClick(Sender: TObject);
    procedure b_incluiacreClick(Sender: TObject);
    procedure DBG_acrescimosCellClick(Column: TColumn);
    procedure cb_tipodeduClick(Sender: TObject);
    procedure b_incluideduClick(Sender: TObject);
    procedure b_excluiacreClick(Sender: TObject);
    procedure b_excluideduClick(Sender: TObject);
    procedure DBG_deducoesCellClick(Column: TColumn);
    procedure TS_transporteShow(Sender: TObject);
    procedure cb_multiClick(Sender: TObject);
    procedure B_gravaaerClick(Sender: TObject);
    procedure b_gravamarClick(Sender: TObject);
    procedure b_gravarodClick(Sender: TObject);
    procedure b_gravaferClick(Sender: TObject);
    procedure b_gravaposClick(Sender: TObject);
    procedure b_gravafluClick(Sender: TObject);
    procedure b_gravalacClick(Sender: TObject);
    procedure b_gravameiClick(Sender: TObject);
    procedure b_gravaducClick(Sender: TObject);
    procedure ts_tipocargaEnter(Sender: TObject);
    procedure ts_tipocargaShow(Sender: TObject);
    procedure b_incluicargaClick(Sender: TObject);
    procedure me_codcargaExit(Sender: TObject);
    procedure b_excluicargaClick(Sender: TObject);
    procedure DBG_tcargasCellClick(Column: TColumn);
    procedure ts_informaShow(Sender: TObject);
    procedure rateio2(Sender: TObject);
    procedure b_gravainfoClick(Sender: TObject);
    procedure ts_volumesShow(Sender: TObject);
    procedure cb_embalagemExit(Sender: TObject);
    procedure b_incluivolClick(Sender: TObject);
    procedure ts_volumesEnter(Sender: TObject);
    procedure b_excluivolClick(Sender: TObject);
    procedure DBG_embalagemproCellClick(Column: TColumn);
    procedure TS_registroShow(Sender: TObject);
    procedure b_gravaregisClick(Sender: TObject);
    procedure rg_contratanteClick(Sender: TObject);
    procedure cb_urfdespachoChange(Sender: TObject);
    procedure cb_recintoChange(Sender: TObject);
    procedure TS_registroEnter(Sender: TObject);
    procedure cb_armazemChange(Sender: TObject);
    procedure b_incluiarmClick(Sender: TObject);
    procedure DBG_armazemCellClick(Column: TColumn);
    procedure b_excluiarmClick(Sender: TObject);
    procedure me_paginaKeyPress(Sender: TObject; var Key: Char);
    procedure ME_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure me_referenciaKeyPress(Sender: TObject; var Key: Char);
    procedure ME_quantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ME_valorunitKeyPress(Sender: TObject; var Key: Char);
    procedure ME_pesounitKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_qprodutosKeyPress(Sender: TObject; var Key: Char);
    procedure b_incluitribClick(Sender: TObject);
    procedure B_aplicaClick(Sender: TObject);
    procedure b_cancelaapliClick(Sender: TObject);
    procedure DBG_itensCellClick(Column: TColumn);
    procedure TS_tributacaoShow(Sender: TObject);
    procedure b_excluitribClick(Sender: TObject);
    procedure DBG_tributositemCellClick(Column: TColumn);
    procedure DBG_itenstributaveisDblClick(Sender: TObject);
    procedure me_quantribExit(Sender: TObject);
    procedure p_rofExit(Sender: TObject);
    procedure me_paginaChange(Sender: TObject);
    procedure SB_recalculapesoClick(Sender: TObject);
    procedure sb_cancelaClick(Sender: TObject);
    procedure sb_processaClick(Sender: TObject);
    procedure p_recalculoExit(Sender: TObject);
    procedure sb_somapaginasClick(Sender: TObject);
    procedure b_fechatotClick(Sender: TObject);
    procedure CB_incotermsChange(Sender: TObject);
    procedure cb_itensClick(Sender: TObject);
    procedure TS_CambiofaturaShow(Sender: TObject);
    procedure atualizadi(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TS_diShow(Sender: TObject);
    procedure cb_regtrib1Change(Sender: TObject);
    procedure TS_diExit(Sender: TObject);
    procedure b_atualizasiscomexClick(Sender: TObject);
    procedure b_atualizasiscomexClick2(Sender: TObject);    
    procedure rg_vinculacaoClick(Sender: TObject);
    procedure TS_capaExit(Sender: TObject);
    procedure Testatabelas(Sender: TObject);
    procedure me_numeroserieKeyPress(Sender: TObject; var Key: Char);
    procedure me_poKeyPress(Sender: TObject; var Key: Char);
    procedure b_imprimeClick(Sender: TObject);
    procedure b_gravaRCRClick(Sender: TObject);
    procedure ts_RCRShow(Sender: TObject);
    procedure ts_trShow(Sender: TObject);
    procedure rg_garantiaClick(Sender: TObject);
    procedure b_gracatrClick(Sender: TObject);
    procedure b_qqTRClick(Sender: TObject);
    procedure FormActivate2(Sender: TObject);
    procedure cb_localClick(Sender: TObject);
    procedure me_pbrutoExit(Sender: TObject);
    procedure me_seqKeyPress(Sender: TObject; var Key: Char);
    procedure me_seqChange(Sender: TObject);
    procedure me_prepaidChange(Sender: TObject);
    procedure TS_capaShow(Sender: TObject);
    procedure ME_ncmExit(Sender: TObject);
    procedure me_localizancmChange(Sender: TObject);
    procedure p_ncmExit(Sender: TObject);
    procedure b_cancelancmClick(Sender: TObject);
    procedure b_okncmClick(Sender: TObject);
    procedure ME_ncmKeyPress(Sender: TObject; var Key: Char);
    procedure me_destaqueKeyPress(Sender: TObject; var Key: Char);
    procedure me_expExit(Sender: TObject);
    procedure me_localizaexpChange(Sender: TObject);
    procedure b_okimpClick(Sender: TObject);
    procedure b_cancelaimpClick(Sender: TObject);
    procedure sb_pagClick(Sender: TObject);
    procedure sb_ncmClick(Sender: TObject);
    procedure sb_seqClick(Sender: TObject);
    procedure sb_valClick(Sender: TObject);
    procedure me_localizafabChange(Sender: TObject);
    procedure b_cancelafabClick(Sender: TObject);
    procedure b_okfabClick(Sender: TObject);
    procedure ME_fabricanteExit(Sender: TObject);
    procedure ME_fabricanteKeyPress(Sender: TObject; var Key: Char);
    procedure p_fabricantesExit(Sender: TObject);
    procedure SB_localizaClick(Sender: TObject);
    procedure ME_condicaoExit(Sender: TObject);
    procedure T_processosAfterInsert(DataSet: TDataSet);
    procedure T_processosAfterPost(DataSet: TDataSet);
    procedure T_processosBeforeDelete(DataSet: TDataSet);
    procedure T_faturasAfterInsert(DataSet: TDataSet);
    procedure T_faturasAfterPost(DataSet: TDataSet);
    procedure T_faturasBeforeDelete(DataSet: TDataSet);
    procedure T_itensfaturasAfterInsert(DataSet: TDataSet);
    procedure T_itensfaturasAfterPost(DataSet: TDataSet);
    procedure T_itensfaturasBeforeDelete(DataSet: TDataSet);
    procedure T_followupAfterPost(DataSet: TDataSet);
    procedure T_followupBeforeDeete(DataSet: TDataSet);
    procedure T_transpprocessoAfterInsert(DataSet: TDataSet);
    procedure T_transpprocessoAfterPost(DataSet: TDataSet);
    procedure T_transpprocessoBeforeDelete(DataSet: TDataSet);
    procedure T_tributositemAfterInsert(DataSet: TDataSet);
    procedure T_tributositemAfterPost(DataSet: TDataSet);
    procedure T_tributositemBeforeDelete(DataSet: TDataSet);
    procedure b_incluinumClick(Sender: TObject);
    procedure b_excluiproClick(Sender: TObject);
    procedure b_gravanumClick(Sender: TObject);
    procedure t_numerariosAfterPost(DataSet: TDataSet);
    procedure b_impfaxClick(Sender: TObject);
    procedure t_numerariosBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure b_excluiprocClick(Sender: TObject);
    procedure b_novoproClick(Sender: TObject);
    procedure ME_nossarefKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox7Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure b_imprimeversoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Panel31Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure me_localizaChange(Sender: TObject);
    procedure sb_loceventoClick(Sender: TObject);
    procedure b_cancelaloceventosClick(Sender: TObject);
    procedure b_okloceventosClick(Sender: TObject);
    procedure p_loceventosExit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBLookupComboBox11Exit(Sender: TObject);
    procedure T_concargasAfterPost(DataSet: TDataSet);
    procedure T_concargasBeforeDelete(DataSet: TDataSet);
    procedure T_taxaconvAfterPost(DataSet: TDataSet);
    procedure T_taxaconvBeforeDelete(DataSet: TDataSet);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure t_numerariosAfterScroll(DataSet: TDataSet);
    procedure t_numerariosBeforePost(DataSet: TDataSet);
    procedure Q_adicoesAfterScroll(DataSet: TDataSet);
    procedure ME_nossarefChange(Sender: TObject);
    procedure b_impemailClick(Sender: TObject);
    procedure DBEdit28Change(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure b_cancelaemailClick(Sender: TObject);
    procedure b_enviaClick(Sender: TObject);
    procedure t_contacorrente_regAfterScroll(DataSet: TDataSet);
    procedure t_contacorrente_depAfterScroll(DataSet: TDataSet);
    procedure ME_pesounitEnter(Sender: TObject);
    procedure me_prepaidKeyPress(Sender: TObject; var Key: Char);
    procedure me_collectKeyPress(Sender: TObject; var Key: Char);
    procedure me_ternacKeyPress(Sender: TObject; var Key: Char);
    procedure me_fretetotalKeyPress(Sender: TObject; var Key: Char);
    procedure me_valsegKeyPress(Sender: TObject; var Key: Char);
    procedure me_despfobKeyPress(Sender: TObject; var Key: Char);
    procedure me_valoracrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure me_valordeduKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBG_numerariosKeyPress(Sender: TObject; var Key: Char);
    procedure taxaconvn(Sender: TObject);
    procedure cb_atoconceChange(Sender: TObject);
    procedure TS_desenbaShow(Sender: TObject);
    procedure b_imprimerelconsumoClick(Sender: TObject);
    procedure b_imprimeTRClick(Sender: TObject);
    procedure ts_RPRShow(Sender: TObject);
    procedure DBG_numerariosDblClick(Sender: TObject);
    procedure T_processosBeforePost(DataSet: TDataSet);
    procedure T_followupBeforePost(DataSet: TDataSet);
    procedure me_valorpercKeyPress(Sender: TObject; var Key: Char);
    procedure me_valorrealKeyPress(Sender: TObject; var Key: Char);
    procedure me_valorpercExit(Sender: TObject);
    procedure me_valorrealExit(Sender: TObject);
    procedure me_valorreal2KeyPress(Sender: TObject; var Key: Char);
    procedure me_valorperc2Exit(Sender: TObject);
    procedure me_valorperc2KeyPress(Sender: TObject; var Key: Char);
    procedure me_valorreal2Exit(Sender: TObject);
    procedure me_valor3Exit(Sender: TObject);
    procedure me_percentualKeyPress(Sender: TObject; var Key: Char);
    procedure me_valor3KeyPress(Sender: TObject; var Key: Char);
    procedure me_refprojKeyPress(Sender: TObject; var Key: Char);
    procedure sp_euroClick(Sender: TObject);
    procedure ME_descricaoEnter(Sender: TObject);
    procedure memoDescExit(Sender: TObject);
    procedure memoDescKeyPress(Sender: TObject; var Key: Char);
    procedure bsg(Sender: TObject);
    procedure me_moedaExit(Sender: TObject);
    procedure me_destaqueExit(Sender: TObject);
    procedure me_naladiExit(Sender: TObject);
    procedure cb_unidExit(Sender: TObject);
    procedure b_qqClick(Sender: TObject);
    procedure me_seqpoKeyPress(Sender: TObject; var Key: Char);
    procedure me_databaixatrExit(Sender: TObject);
    procedure sb_tempClick(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  F_processos: TF_processos;
  v_pesototal: real;
  v_valortotal: real;
  v_seq :string;
  v_imp :string;
  v_decl:string;
  v_tipo:string;
  v_novofol:boolean;
  v_seqpag:string;
  v_pesoliquido: real;
  selecao:integer;
  v_quant:string;
  v_analise:boolean;
  q_taxa:string;
  qii: real;

implementation

uses U_MSCOMEX, U_RCR, U_TR, U_localizapro, u_solnum, U_TRverso,
  u_solnum_ing, U_relconsumo;

{$R *.DFM}

procedure taxaconv(var tempresa:TStringField; tfilial:TStringField; tprocesso:string; tmoeda:TStringField; ttaxa:string);
var qtaxadolar:string;
begin

try

f_processos.t_processos.findkey([v_empresa,v_filial,tprocesso]);
if f_processos.t_processosNR_DECLARACAO_IMP.asstring ='' then begin
   if tmoeda.asstring<>'' then begin
      if f_processos.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then begin
         if f_processos.t_taxaconvtaxa_conversao.asfloat <> strtofloat(ttaxa) then begin
            f_processos.t_taxaconv.edit;
            f_processos.t_taxaconvtaxa_conversao.asfloat := strtofloat(ttaxa);
            f_processos.t_taxaconv.post;
         end;
      end
      else begin
           f_processos.t_taxaconv.append;
           f_processos.t_taxaconvempresa.asstring       := v_empresa;
           f_processos.t_taxaconvfilial.asstring        := v_filial;
           f_processos.t_taxaconvprocesso.asstring      := tprocesso;
           f_processos.t_taxaconvmoeda.asstring         := tmoeda.asstring;
           f_processos.t_taxaconvtaxa_conversao.asfloat := strtofloat(ttaxa);
           f_processos.t_taxaconv.post;
     end;
  end;

  {sempre grava o dolar para todos os processos}
  if ((tmoeda.asstring<>'220') and (tmoeda.asstring<>'')) then begin

     f_processos.t_cambio.first;
     f_processos.t_cambio.findkey(['220']);
     qtaxadolar := f_processos.t_cambiotaxa_conversao.asstring;

    if f_processos.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,'220']) then begin
       if f_processos.t_taxaconvtaxa_conversao.asfloat <> strtofloat(qtaxadolar) then begin
          f_processos.t_taxaconv.edit;
          f_processos.t_taxaconvtaxa_conversao.asfloat := strtofloat(qtaxadolar);
          f_processos.t_taxaconv.post;
       end;
    end
    else begin
         f_processos.t_taxaconv.append;
         f_processos.t_taxaconvempresa.asstring       := v_empresa;
         f_processos.t_taxaconvfilial.asstring        := v_filial;
         f_processos.t_taxaconvprocesso.asstring      := tprocesso;
         f_processos.t_taxaconvmoeda.asstring         := '220';
         f_processos.t_taxaconvtaxa_conversao.asfloat := strtofloat(qtaxadolar);
         f_processos.t_taxaconv.post;
   end;

end;

end;

{ver taxa conversao di de consumo}
if f_processos.t_processosNR_DECLARACAO_IMPC.asstring ='' then begin
   if tmoeda.asstring<>'' then begin
      {MessageDlg('Empresa: '+v_empresa+' Filial: '+v_filial+' Processo: '+tprocesso+' Moeda: '+tmoeda.asstring, mtInformation,[mbOk], 0);}
      if f_processos.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,tmoeda]) then begin
         if f_processos.t_taxaconvtaxa_conversaoc.asfloat <> strtofloat(ttaxa) then begin
            f_processos.t_taxaconv.edit;
            f_processos.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(ttaxa);
            f_processos.t_taxaconv.post;
         end;
      end
      else begin
           f_processos.t_taxaconv.append;
           f_processos.t_taxaconvempresa.asstring       := v_empresa;
           f_processos.t_taxaconvfilial.asstring        := v_filial;
           f_processos.t_taxaconvprocesso.asstring      := tprocesso;
           f_processos.t_taxaconvmoeda.asstring         := tmoeda.asstring;
           f_processos.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(ttaxa);
           f_processos.t_taxaconv.post;
     end;
  end;

  {sempre grava o dolar para todos os processos}
  if ((tmoeda.asstring<>'220') and (tmoeda.asstring<>'')) then begin

     f_processos.t_cambio.first;
     f_processos.t_cambio.findkey(['220']);
     qtaxadolar := f_processos.t_cambiotaxa_conversao.asstring;

    {MessageDlg('Empresa: '+v_empresa+' Filial: '+v_filial+' Processo: '+tprocesso+' Moeda: '+tmoeda.asstring, mtInformation,[mbOk], 0);}
    if f_processos.t_taxaconv.findkey([v_empresa,v_filial,tprocesso,'220']) then begin
       if f_processos.t_taxaconvtaxa_conversaoc.asfloat <> strtofloat(qtaxadolar) then begin
          f_processos.t_taxaconv.edit;
          f_processos.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(qtaxadolar);
          f_processos.t_taxaconv.post;
       end;
    end
    else begin
         f_processos.t_taxaconv.append;
         f_processos.t_taxaconvempresa.asstring       := v_empresa;
         f_processos.t_taxaconvfilial.asstring        := v_filial;
         f_processos.t_taxaconvprocesso.asstring      := tprocesso;
         f_processos.t_taxaconvmoeda.asstring         := '220';
         f_processos.t_taxaconvtaxa_conversaoc.asfloat := strtofloat(qtaxadolar);
         f_processos.t_taxaconv.post;
   end;

end;

end;

except
   On E:Exception do begin
      showmessage(v_usuario + ' ocorreu um erro na atualização da taxa de conversão! Atualize Novamente.');
      end;
   end;

end;

procedure TF_processos.taxaconvn(Sender: TObject);

var qmoeda:string;
    qtaxa:string;

begin
try
if (t_processosNR_DECLARACAO_IMP.asstring ='') or (t_processosNR_DECLARACAO_IMPC.asstring ='') then begin
   t_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

   /// frete conhecimento
   qmoeda := t_transpprocessoMoeda_frete.asstring;
   if t_cambio.findkey([qmoeda]) then begin
      qtaxa := t_cambiotaxa_conversao.asstring;
      taxaconv(t_parametrosempresa,t_parametrosfilial,me_nossaref.text,t_transpprocessoMoeda_frete,qtaxa);
   end;

   /// seguro conhecimento
   qmoeda := t_transpprocessoMoeda_seguro.asstring;
   if t_cambio.findkey([qmoeda]) then begin
      qtaxa := t_cambiotaxa_conversao.asstring;
      taxaconv(t_parametrosempresa,t_parametrosfilial,me_nossaref.text,t_transpprocessoMoeda_seguro,qtaxa);
   end;

   /// despesas ate fob do conhecimento
   qmoeda := t_transpprocessoMoeda_despesas_ate_fob.asstring;
   if t_cambio.findkey([qmoeda]) then begin
      qtaxa := t_cambiotaxa_conversao.asstring;
      taxaconv(t_parametrosempresa,t_parametrosfilial,me_nossaref.text,t_transpprocessoMoeda_despesas_ate_fob,qtaxa);
   end;

   /// faturas do processo
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
         qmoeda := t_faturasmoeda.asstring;
         if t_cambio.findkey([qmoeda]) then begin
            qtaxa := t_cambiotaxa_conversao.asstring;
            taxaconv(t_parametrosempresa,t_parametrosfilial,me_nossaref.text,t_faturasmoeda,qtaxa);
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


procedure TF_processos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_processos := nil;
///f_mscomex.Importao1.enabled := true;
end;

procedure TF_processos.TS_FaturasShow(Sender: TObject);
begin
{verifica os tipos de moedas}
t_moeda.first;
cb_moedas.clear;
while not t_moeda.eof do begin
      cb_moedas.items.add(t_moedacodigo.asstring+' '+t_moedadescricao.asstring);
      t_moeda.next;
end;

{verifica os faturas por processo por filial}
t_faturas.first;
cb_faturas.clear;
cb_faturas.items.add('Nova');
while not t_faturas.eof do begin
      if (t_faturasempresa.asstring = t_parametrosempresa.asstring) and (t_faturasfilial.asstring = t_parametrosfilial.asstring) and (t_faturasprocesso.asstring = me_nossaref.text ) then cb_faturas.items.add(t_faturascdigo.asstring);
      t_faturas.next;
end;

{verifica os incoterms}
t_incoterms.first;
cb_incoterms.clear;
while not t_incoterms.eof do begin
      cb_incoterms.items.add(t_incotermscodigo.asstring+' '+t_incotermsdescricao.asstring);
      t_incoterms.next;
end;


{verifica as modalidades de pagamentos}
t_moda.first;
cb_motivos.clear;
while not t_moda.eof do begin
      cb_motivos.items.add(t_modacodigo.asstring+' '+t_modadescricao.asstring);
      t_moda.next;
end;


{verifica as taxas de juros bacen}
t_taxabacen.first;
cb_taxabacen.clear;
while not t_taxabacen.eof do begin
      cb_taxabacen.items.add(copy(t_taxabacencodigo.asstring+'   ',1,4) +' '+t_taxabacendescricao.asstring);
      t_taxabacen.next;
end;

{limpa variaveis de tela}
q_itensfaturas.close;
q_acrescimos.close;
q_deducoes.close;
b_grava.tag := 0;
ME_fatura.text       := '';
CB_incoterms.text    := '';
me_exp.text := '';
me_nomeexp.text := '';
ME_condicao.text     := '';
CB_moedas.text       := '';
e_pesototal.text     := '';
e_pesoacertado.text  := '';
e_valortotal.text    := '';
me_pagina.text       :='1';

pagecontrol2.enabled := false;

end;

procedure TF_processos.atualizadi(Sender: TObject);
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
    taxaconvn(f_processos);
    t_di.last;
    t_numerador.edit;
    t_numeradorNR_PROV_DECLARACAO.asinteger := strtoint(copy(T_diNR_DECL_IMP_MICRO.asstring,1,5))+1;
    t_numerador.post;

    t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
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
       t_importadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_processosImportador.asstring]);
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
       ///t_processos.post;

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
       t_importadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_processosImportador.asstring]);
       if t_importadorestipoimportador.asstring<>'' then T_diCD_TIPO_IMPORTADOR.asstring    := t_importadorestipoimportador.asstring;
       if T_importadoresCNPJ_CPF_COMPLETO.asstring<>'' then T_diNR_IMPORTADOR.asstring         := T_importadoresCNPJ_CPF_COMPLETO.asstring;
       if v_analise = false then T_diCD_TIPO_PGTO_TRIB.asstring     := '1';
       t_di.post;
    end;
    t_transpprocesso.first;
    if t_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin
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
    T_diIN_MULTIMODAL.asboolean        := T_transpprocessoMultimodal.asboolean;
    if T_transpprocessoPLaca.asstring<>'' then T_diNR_VEICULO_TRANSP.asstring     := T_transpprocessoPLaca.asstring;
    if T_transpprocessoEmbarcacao.asstring<>'' then T_diNM_VEICULO_TRANSP.asstring     := T_transpprocessoEmbarcacao.asstring;
    t_transportadores.first;
    t_transportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,T_transpprocessoTransportador.asstring]);
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
    t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
    v_moedaigual := true;
    v_moeda      := t_faturasmoeda.asstring;
    v_totfat     := 0;
    v_totfatm    := 0;
    while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
          if v_moeda <> t_faturasmoeda.asstring then begin
             v_moeda      := '790'; {moeda real}
             v_moedaigual := false;
          end;
          t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

          {somar vmle}
          t_itensfaturas.first;
          t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
          while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                v_totfatm := v_totfatm+t_itensfaturasvmle.AsFloat;
                v_totfat  := v_totfat+(t_itensfaturasvmle.AsFloat*t_taxaconvtaxa_conversao.asfloat);
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

    T_diTX_INFO_COMPL.asstring         := '';

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
             T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+q_infocomp5descricao.asstring+':'+floattostrf(q_infocomp5taxa_conversao.asfloat,fffixed,15,5)+CHR(13)+CHR(10)+'|';
             Q_infocomp5.next;
       end;
       T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+chr(13)+chr(10)+'|';
    end;

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'COMISSARIA: MS LOGISTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.'+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: DUILIO MAZUREK RODRIGUES.'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: MANUEL C. DE ALMEIDA MARQUES DA SILVA.'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: VANDERLEI DE JESUS DA MAIA.'+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. MS:'+me_nossaref.text+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. CLIENTE:'+T_processosCdigo_Cliente.asstring+chr(13)+chr(10)+'|';

    t_di.post;

    t_processos.edit;
    t_processosvalor_fob.asfloat  := t_divl_total_mle_mn.asfloat;
    t_processosvalor_cif.asfloat  := (t_processosvalor_fob.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
    t_processos.Post;

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
    Q_infcomp.Params[0].AsString := t_parametrosempresa.asstring;
    Q_infcomp.Params[1].AsString := t_parametrosfilial.asstring;
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
    rateio2(f_processos);
    {atualizar tributacao}
    t_tributositem.first;
    t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
    while ((not T_tributositem.eof) and (t_tributositemempresa.asstring = t_parametrosempresa.asstring)and(t_tributositemfilial.asstring = t_parametrosfilial.asstring)and(t_tributositemprocesso.asstring = me_nossaref.text)) do begin

          t_faturas.first;
          t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_tributositemfatura.asstring]);

          t_itensfaturas.first;
          t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,t_tributositemfatura.asstring,T_tributositemSequencial_Item.asstring]);
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
///       else T_tributositemAliq_NCM_IPI.asfloat         := T_ncmALIQUOTA_IPI.asfloat;
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


procedure TF_processos.ME_nossarefExit(Sender: TObject);
begin
    bsg(f_processos);
//   if ((copy(me_nossaref.text,6,1) <> '/' ) and (me_nossaref.text<>'')) then begin
//      me_nossaref.text := copy(me_nossaref.text,1,5)+copy(t_parametrosNumerador_processos.asstring,6,3);
//   end;
   if not t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,ME_nossaref.text]) then begin
      MessageDlg('Processo não cadastrado!', mtInformation,[mbOk], 0);
      ME_nossaref.text    := '';
      ME_nossaref.setfocus;
   end
   else begin

   {mostra informacoes gerais}
   t_importadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_processosImportador.asstring]);

   l_origem.caption := '';
   l_destino.caption := '';
   lb_mercadorias.items.clear;
   l_transportador.caption :='';
   l_conhecimento.caption  :='';
   l_corigem.caption  :='';
   l_termo.caption    :='';
   l_micdta.caption   :='';
   l_dta.caption      :='';
   l_placas.caption   :='';
   l_di.caption       :='';
   l_li.caption       :='';
   l_data.caption     :='';
   l_canal.caption    :='';
   l_fiscal.caption   := '';
   l_situacao.caption := '';
   lb_faturas.Items.clear;
   lb_obs.items.clear;
   T_transpprocesso.first;
   if T_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin
   T_pais.first;
   if T_pais.findkey([t_transpprocessopais_procedencia.asstring]) then
      l_origem.caption := T_paisdescricao.asstring;
   T_urf.first;
   if T_urf.findkey([T_transpprocessoURF_chegada.asstring]) then
   l_destino.caption := t_urfdescricao.asstring;
   t_transportadores.first;
   if t_transportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,T_transpprocessotransportador.asstring]) then begin
   l_transportador.caption := t_transportadoresrazosocial.asstring;
   l_conhecimento.caption  := T_transpprocessonumerodoccarga.asstring;
   l_corigem.caption  := T_transpprocessonumeromaster.asstring;
   end;
   {1  - Manifesto de Carga
   2  - Termo de Entrada
   3  - DTA
   4  - MIC/DTA}
   if T_transpprocessotipomanifesto.asstring = '2' then
      l_termo.caption    := T_transpprocessonumeromanifesto.asstring;
   if T_transpprocessotipomanifesto.asstring = '4' then
      l_micdta.caption   := T_transpprocessonumeromanifesto.asstring;
   if T_transpprocessotipomanifesto.asstring = '3' then
      l_dta.caption      := T_transpprocessonumeromanifesto.asstring;

   l_placas.caption   := T_transpprocessoplaca.asstring;

   end;
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
         lb_mercadorias.items.add(t_itensfaturasdescricao_produto.asstring);
         t_itensfaturas.next;
   end;
   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (not t_faturas.eof) and (T_faturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_faturasFilial.asstring = t_parametrosfilial.asstring)and(T_faturasProcesso.asstring = me_nossaref.text) do begin
         lb_faturas.items.add(t_faturascdigo.asstring);
         t_faturas.next;
   end;

   l_di.caption       := t_processosnr_declaracao_imp.asstring+' / '+copy(t_processosdt_registro_di.asstring,1,2)+'/'+copy(t_processosdt_registro_di.asstring,3,2)+'/'+copy(t_processosdt_registro_di.asstring,5,4);
   l_li.caption       :='';
   lb_obs.items.clear;
      if t_processosdt_desembaraco.asstring <> '' then
      l_data.caption     := t_processosdt_desembaraco.asstring
   else l_data.caption := '';
   if t_canais.findkey([t_processoscanal.asstring])then
      l_canal.caption    := t_canaisdescricao.asstring
   else l_canal.caption    := '';
   l_fiscal.caption   := t_processosfiscal.asstring;
   if t_sitfis.findkey([t_processoscod_sit.asstring]) then
      l_situacao.caption := t_sitfisdescricao.asstring
   else l_situacao.caption := '';


   {habilita as pastas}
//   TS_documentos.tabvisible    := true;
   TS_faturas.tabvisible       := true;
   TS_conhecimento.tabvisible  := true;
   TS_tributacao.tabvisible    := true;
   TS_RCR.tabvisible           := true;
///   TS_lilsi.tabvisible         := true;
   TS_numerario.tabvisible     := true;
   ts_registro.tabvisible      := true;
   ts_di.tabvisible            := true;
   ts_tr.tabvisible            := true;
   ts_followup.tabvisible      := true;
   ts_desenba.tabvisible       := true;
////   ts_nfiscal.tabvisible       := true;

////   TS_documentos.enabled    := true;
   TS_faturas.enabled       := true;
   TS_conhecimento.enabled  := true;
   TS_tributacao.enabled    := true;
   TS_RCR.enabled           := true;
///   TS_lilsi.enabled         := true;
   TS_numerario.enabled     := true;
   ts_registro.enabled      := true;
   ts_di.enabled            := true;
   ts_tr.enabled            := true;
   ts_followup.enabled      := true;
   ts_desenba.enabled       := true;
////   ts_nfiscal.enabled       := true;
   if t_processostipo.asstring = '8' then begin
       ts_rpr.tabvisible    := true;
       ts_rpr.enabled       := true
   end
   else begin
       ts_rpr.tabvisible    := false;
       ts_rpr.enabled       := false;
   end;

   f_processos.caption      := 'Processo - '+me_nossaref.text+'/';

   if t_pastas.findkey([t_processosempresa.asstring,t_processosfilial.asstring,t_processoscdigo.asstring])then begin
   if t_pastasusuario.asstring <> v_usuario then begin
      if messagedlg('A pasta deste processo atualmente localizada no usuário '+t_pastasusuario.asstring +', encontra-se em seu poder?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
         {atualizar movimentação de pastas}
         ///while t_movpastas.state = dsinsert do begin
         ///end;
         t_movpastas.append;
         t_movpastasempresa.asstring  := t_processosempresa.asstring;
         t_movpastasfilial.asstring   := t_processosfilial.asstring;
         t_movpastasprocesso.asstring := t_processoscdigo.asstring;
         t_movpastasde_usuario.asstring := t_pastasusuario.asstring;
         t_movpastaspara_usuario.asstring := v_usuario;
         t_movpastasdata.asdatetime := date();
         t_movpastashora.asdatetime := time();
         t_movpastas.post;
         {atualizar localizacao}
         t_pastas.edit;
         t_pastasusuario.asstring := v_usuario;
         t_pastas.post;
      end
   end;
end
else begin
      if messagedlg('A pasta deste processo atualmente localizada sem usuário!, encontra-se em seu poder?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
         ///while t_pastas.state = dsinsert do begin
         ///end;
         t_pastas.append;
         t_pastasempresa.asstring    := t_processosempresa.asstring;
         t_pastasfilial.asstring     := t_processosfilial.asstring;
         t_pastasprocesso.asstring   := t_processoscdigo.asstring;
         t_pastasusuario.asstring    := v_usuario;
         t_pastas.post;
      end
end;

   end;

end;

procedure TF_processos.b_fechacapaClick(Sender: TObject);
begin
    f_processos.close;
end;

procedure TF_processos.CB_faturasClick(Sender: TObject);
begin
CB_incoterms.enabled    := true;
ME_condicao.enabled     := true;
{b_grava.enabled         := true;}

if CB_faturas.Items[CB_faturas.ItemIndex] = 'Nova' then begin
   b_grava.tag := 0;
   b_grava.caption      := '&Inclui';
   ME_fatura.text       := '';
   ME_fatura.enabled    := true;
   CB_incoterms.text    := '';
   me_exp.text          := '';
   me_nomeexp.text      := '';
   ME_condicao.text     := '';
   CB_moedas.text       := '';
   e_pesototal.text     := '';
   e_pesoacertado.text  := '';
   e_valortotal.text    := '';
   b_exclui.enabled     := false;
   cb_itens.checked     := false;

   ME_fatura.setfocus;
   me_pagina.text        :='1';
   end
else begin
   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,CB_faturas.Items[CB_faturas.ItemIndex]]);
   b_grava.tag          := 1;
   b_grava.caption      := '&Altera';
   ME_fatura.text       := t_faturascdigo.asstring;
   ME_fatura.enabled    := false;
   t_incoterms.first;
   t_incoterms.findkey([t_faturasincoterm.asstring]);
   CB_incoterms.text    := t_incotermscodigo.asstring+' '+t_incotermsdescricao.asstring;
   t_exportadores.first;
   t_exportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_faturasexportador.asstring]);
   me_exp.text := t_exportadorescodigo.asstring;
   me_nomeexp.text := t_exportadoresrazosocial.asstring;
   t_moeda.first;
   t_moeda.findkey([t_faturasmoeda.asstring]);
   CB_moedas.text       := t_moedacodigo.asstring+' '+t_moedadescricao.asstring;
   rg_vinculacao.itemindex := (strtoint(t_faturasvinculacao.asstring)-1);

   ME_condicao.text     := t_faturascondio.asstring;
   e_pesototal.text     := t_faturaspesototal.asstring;
   e_pesoacertado.text  := t_faturaspesototal_acertado.asstring;
   e_valortotal.text    := t_faturasvalortotal.asstring;

   b_exclui.enabled     := true;

end;


{verifica itens de notas fiscais}
Q_itensfaturas.Close;
Q_itensfaturas.Params[0].AsString := t_parametrosempresa.asstring;
Q_itensfaturas.Params[1].AsString := t_parametrosfilial.asstring;
Q_itensfaturas.Params[2].AsString := me_nossaref.text;
Q_itensfaturas.Params[3].AsString := me_fatura.text;
Q_itensfaturas.open;

if not Q_itensfaturas.eof then begin
   Q_itensfaturas.last;
   me_pagina.text := Q_itensfaturaspagina.asstring;
   me_seq.text    := inttostr(strtoint(Q_itensfaturassequencial.asstring)+1);
   Q_itensfaturas.first;
   end
else begin
   me_pagina.text := '1';
   me_seq.text    := '1';
end;


{verifica os tipos de acrescimos por incoterms}
cb_tipoacres.enabled := false;
t_tiposacrescimos.first;
cb_tipoacres.clear;
while not t_tiposacrescimos.eof do begin
      if (t_tiposacrescimosincoterm.asstring = T_faturasIncoterm.asstring) then cb_tipoacres.items.add(copy(t_tiposacrescimosCODIGO.asstring+'   ',1,4) +' '+t_tiposacrescimosDESCRICAO.asstring);
      t_tiposacrescimos.next;
end;
cb_tipoacres.enabled := true;
{verifica os tipos de deducoes por incoterms}
cb_tipodedu.enabled := false;
t_tiposreducoes.first;
cb_tipodedu.clear;
while not t_tiposreducoes.eof do begin
      if (t_tiposreducoesincoterm.asstring = T_faturasIncoterm.asstring) then cb_tipodedu.items.add(copy(t_tiposreducoesCODIGO.asstring+'   ',1,4) +' '+t_tiposreducoesDESCRICAO.asstring);
      t_tiposreducoes.next;
end;
cb_tipodedu.enabled := true;

{verifica acrescimos por fatura}
Q_acrescimos.Close;
Q_acrescimos.Params[0].AsString := t_parametrosempresa.asstring;
Q_acrescimos.Params[1].AsString := t_parametrosfilial.asstring;
Q_acrescimos.Params[2].AsString := me_nossaref.text;
Q_acrescimos.Params[3].AsString := me_fatura.text;
Q_acrescimos.open;

{verifica deducoes por fatura}
Q_deducoes.Close;
Q_deducoes.Params[0].AsString := t_parametrosempresa.asstring;
Q_deducoes.Params[1].AsString := t_parametrosfilial.asstring;
Q_deducoes.Params[2].AsString := me_nossaref.text;
Q_deducoes.Params[3].AsString := me_fatura.text;
Q_deducoes.open;

cb_itens.checked     := t_faturasacrescimos_reducoes.asboolean;

panel8.Enabled       := true;
pagecontrol2.enabled := true;
pagecontrol2.activepage := TS_itensfatura;

CB_incoterms.setfocus;

end;

procedure TF_processos.ME_faturaExit(Sender: TObject);
begin
   if ME_fatura.text = '' then begin
      {MessageDlg('Informe o Nº da Fatura!', mtInformation,[mbOk], 0);}
      ME_fatura.text    := '';
      ME_fatura.enabled := true;
      ME_fatura.setfocus;
   end;
   t_faturas.first;
   if t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,ME_fatura.text]) then begin
      MessageDlg('Fatura já cadastrada!', mtInformation,[mbOk], 0);
      ME_fatura.text    := '';
      ME_fatura.enabled := true;
      ME_fatura.setfocus;
      end
   else begin
      CB_incoterms.setfocus;
   end;

end;

procedure TF_processos.B_gravaClick(Sender: TObject);
begin
  //while t_faturas.state = dsinsert do begin
  //end;
  if B_grava.tag = 0 then t_faturas.append
  else begin
       while t_faturas.state = dsedit do begin
       end;
       t_faturas.edit;
  end;
  t_faturasempresa.asstring     := t_parametrosempresa.asstring;
  t_faturasfilial.asstring      := t_parametrosfilial.asstring;
  t_faturasprocesso.asstring    := me_nossaref.text;
  t_faturascdigo.asstring       := me_fatura.text;
  t_faturasincoterm.asstring    := copy(cb_incoterms.text,1,3);
  t_faturasexportador.asstring  := me_exp.text;
  t_faturasvinculacao.asstring  := inttostr(rg_vinculacao.itemindex+1);
  t_faturasCondio.asstring      := me_condicao.text;
  t_faturasmoeda.asstring       := copy(cb_moedas.text,1,3);
  if B_grava.tag = 0 then T_faturasValorTotal.asfloat          := 0;
  if B_grava.tag = 0 then T_faturasPesoTotal.asfloat           := 0;
  if B_grava.tag = 0 then t_faturasValordasParcelas.asfloat    := 0;
  if B_grava.tag = 0 then t_faturasValorTaxadeJuros.asfloat    := 0;
  if B_grava.tag = 0 then t_faturasPercentualROF.asfloat       := 0;
  if B_grava.tag = 0 then t_faturascoberturacambial.asstring   := '4';
  t_faturas.post;
  ME_fatura.enabled       := true;
  b_grava.enabled         := false;
  b_exclui.enabled        := false;
  {TS_FaturasShow(f_processos);}
  panel8.Enabled          := true;
  pagecontrol2.activepage := TS_itensfatura;
  me_produto.setfocus;
end;

procedure TF_processos.B_gravaitClick(Sender: TObject);
var v_pesototala:real;
begin
if me_produto.text = '' then begin
   MessageDlg('Informe o Produto!', mtInformation,[mbOk], 0);
   b_gravait.enabled       := false;
   b_excluiit.enabled      := false;
   me_produto.setfocus;
   end
else begin

if me_pesounit.text = '' then begin
   MessageDlg('Informe o Peso Unitário!', mtInformation,[mbOk], 0);
   me_pesounit.setfocus;
   end
else begin
   if me_quantidade.text = '' then begin
      MessageDlg('Informe a Quantidade!', mtInformation,[mbOk], 0);
      me_quantidade.setfocus;
      end
   else begin
      if me_valorunit.text = '' then begin
         MessageDlg('Informe o Valor Unitário!', mtInformation,[mbOk], 0);
         me_valorunit.setfocus;
         end
      else begin
if b_gravait.tag = 0 then begin
   ///while t_itensfaturas.state = dsinsert do begin
   ///end;
   t_itensfaturas.append;
   T_itensfaturasEmpresa     .asstring := t_parametrosempresa.asstring;
   T_itensfaturasFilial      .asstring := t_parametrosfilial.asstring;
   T_itensfaturasProcesso    .asstring := me_nossaref.text;
   T_itensfaturasFatura      .asstring := me_fatura.text;
   T_itensfaturasSequencial  .asstring := me_seq.text;
   end
else begin
     t_itensfaturas.first;
     t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,me_seq.text]);
     t_tributositem.first;
     t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,me_seq.text]);
     if (t_tributositemsequencial_item.asstring = me_seq.text) then begin
         MessageDlg('ATENÇÃO! Alteração de um item já tributado! Será necessário tributa-lo novamente.', mtInformation,[mbOk], 0);
         while ((not t_tributositem.eof) and (t_tributositemfatura.asstring = me_fatura.text)and (t_tributositemsequencial_item.asstring = me_seq.text)) do begin
               t_tributositem.delete;
         end;
     end;
     ///while t_itensfaturas.state = dsedit do begin
     ///end;
     t_itensfaturas.edit;
end;

T_itensfaturasSequencial  .asstring := me_seq.text;
T_itensfaturasPagina      .asstring := me_pagina.text;
T_itensfaturasProduto     .asstring := me_produto.text;
T_itensfaturasDescricao_Produto.asstring := me_descricao.text;
T_itensfaturasfabricante.asstring   := copy(me_fabricante.text+'   ',1,4);
T_itensfaturasNCM         .asstring := me_ncm.text;
T_itensfaturasunidade     .asstring := cb_unid.text;
T_itensfaturasunidade_medida_estat  .asstring := cb_unidest.text;
T_itensfaturasdestaque_ncm.asstring := me_destaque.text;
T_itensfaturasnaladi      .asstring := me_naladi.text;
T_itensfaturasQuantidade  .asfloat  := strtofloat(me_quantidade.text);
T_itensfaturasSaldo_Tributavel  .asfloat  := strtofloat(me_quantidade.text);
T_itensfaturasValorUnitrio.asfloat  := strtofloat(me_valorunit.text);
T_itensfaturasValorTotal  .asfloat  := (strtofloat(me_quantidade.text)*strtofloat(me_valorunit.text));
T_itensfaturasPesoUnitrio .asfloat  := strtofloat(me_pesounit.text);
T_itensfaturasPeso_Unitario_acertado .asfloat  := strtofloat(me_pesounit.text);
T_itensfaturasPesoTotal   .asfloat  := (strtofloat(me_quantidade.text)*strtofloat(me_pesounit.text));
T_itensfaturasPeso_Total_acertado   .asfloat  := (strtofloat(me_quantidade.text)*strtofloat(me_pesounit.text));
t_itensfaturasreferencia  .asstring := me_referencia.text;
t_itensfaturasnumero_serie.asstring := me_numeroserie.text;
t_itensfaturaspo.asstring := me_po.text;
t_itensfaturasseqpo.asstring := me_seqpo.text;
t_itensfaturasreferencia_projeto.asstring := me_refproj.text;
t_itensfaturas.post;


t_produtos.first;
if t_produtos.findkey([t_itensfaturasempresa.asstring,t_itensfaturasfilial.asstring,T_itensfaturasProduto.asstring]) then
   t_produtos.edit
else t_produtos.append;

    T_produtosEmpresa.asstring              := T_itensfaturasEmpresa.asstring;
    T_produtosFilial.asstring               := T_itensfaturasFilial.asstring;
    T_produtosCdigo.asstring                := T_itensfaturasProduto.asstring;
////    T_produtosDescrio.asstring              := T_itensfaturasDescricao_Produto.asstring;
    T_produtosNCM.asstring                  := T_itensfaturasNCM.asstring;
    T_produtosImportador.asstring           := T_processosImportador.AsString;
    T_produtosFabricante.asstring           := T_itensfaturasfabricante.asstring;
    T_produtosUnidade.asstring              := T_itensfaturasunidade.asstring;
    T_produtosPesoUnitrio.asfloat           := T_itensfaturasPesoUnitrio.asfloat;
    T_produtosValorUnitrio.asfloat          := T_itensfaturasValorUnitrio.asfloat;
    T_produtosMoeda.asstring                := me_moeda.text;
    T_produtosUnidade_Medida_Estat.asstring := T_itensfaturasunidade_medida_estat.asstring;
    T_produtosDestaque_NCM.asstring         := T_itensfaturasdestaque_ncm.asstring;
    T_produtosNALADI.asstring               := T_itensfaturasnaladi.asstring;


me_produto.text   := '';
me_descricao.text := '';
me_descrncm.text := '';
{me_referencia.text := '';}
me_numeroserie.text := '.';
me_po.text := '';
me_seqpo.text := '';
me_fabricante.text:= '';
me_ncm.text       := '';
me_destaque.text  := '';
me_naladi.text    :='';
cb_unid.text      :='';
cb_unidest.text   :='';
me_pesounit.text  := '1';
me_valorunit.text := '1';
me_quantidade.text:= '1';
me_refproj.text   :='.';

{ver o próximo sequencial}
t_itensfaturas.first;
t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
v_seq := '1';
while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = me_fatura.text)) do begin
      if strtoint(v_seq) <= strtoint(t_itensfaturassequencial.asstring) then v_seq := inttostr(strtoint(t_itensfaturassequencial.asstring)+1);
      t_itensfaturas.next;
end;
me_seq.text := v_seq;

{me_produto.setfocus;}
b_gravait.enabled       := false;
b_excluiit.enabled      := false;

{atualiza itens de notas fiscais}
Q_itensfaturas.Close;
Q_itensfaturas.Params[0].AsString := t_parametrosempresa.asstring;
Q_itensfaturas.Params[1].AsString := t_parametrosfilial.asstring;
Q_itensfaturas.Params[2].AsString := me_nossaref.text;
Q_itensfaturas.Params[3].AsString := me_fatura.text;
Q_itensfaturas.open;

{atualiza saldos da fatura}

Q_somaitensfat.Close;
Q_somaitensfat.Params[0].AsString := t_parametrosempresa.asstring;
Q_somaitensfat.Params[1].AsString := t_parametrosfilial.asstring;
Q_somaitensfat.Params[2].AsString := me_nossaref.text;
Q_somaitensfat.Params[3].AsString := me_fatura.text;
Q_somaitensfat.open;


{
v_pesototal  := 0;
v_pesototala := 0;
v_valortotal := 0;
Q_itensfaturas.first;
while not q_itensfaturas.eof do begin
      v_pesototal  := v_pesototal  + q_itensfaturaspesototal.asfloat;
      v_pesototala := v_pesototala + q_itensfaturaspeso_total_acertado.asfloat;
      v_valortotal := v_valortotal + q_itensfaturasvalortotal.asfloat;
      q_itensfaturas.next;
end;

}

t_faturas.first;
t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);

t_faturas.edit;
T_faturasValorTotal.asfloat := Q_somaitensfatv_valortotal.asfloat;
T_faturasPesoTotal.asfloat  := Q_somaitensfatv_pesototal.asfloat;
T_faturasPesoTotal_acertado.asfloat  := Q_somaitensfatv_pesototala.asfloat;
t_faturas.post;

Q_somaitensfat.Close;

e_pesototal.text  := T_faturasPesoTotal.asstring;
e_pesoacertado.text := T_faturasPesoTotal_acertado.asstring;
e_valortotal.text := T_faturasValorTotal.asstring;
me_produto.setfocus;

end
end
end
end
end;



procedure TF_processos.DB_itensfaturaCellClick(Column: TColumn);
begin

me_produto.text    := q_itensfaturasproduto.asstring;
t_produtos.first;
if t_produtos.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_produto.text]) then begin
   me_produto.text   := t_produtoscdigo.asstring;
   me_descricao.text := t_produtosdescrio.asstring;
   me_moeda.text     := t_produtosmoeda.asstring;
   if me_moeda.text <> copy(cb_moedas.text,1,3) then  MessageDlg('Moeda do Produto difere da Moeda da Fatura!', mtInformation,[mbOk], 0);
   t_fabricantes.first;
   if t_fabricantes.findkey([t_parametrosempresa.asstring,t_parametrosfilial,q_itensfaturasfabricante.asstring]) then me_fabricante.text := copy(t_fabricantescodigo.asstring+'   ',1,4)+' - '+ t_fabricantesrazosocial.asstring
   else me_fabricante.text := t_produtosfabricante.asstring;
   t_unidades.first;
   if t_unidades.findkey([q_itensfaturasunidade.asstring]) then cb_unid.text := t_unidadescodigo.asstring+' - '+t_unidadesdescricao.asstring
   else cb_unid.text    := q_itensfaturasunidade.asstring;
   t_unidades.first;
   if t_unidades.findkey([q_itensfaturasunidade_medida_estat.asstring]) then cb_unidest.text := t_unidadescodigo.asstring+' - '+t_unidadesdescricao.asstring
   else cb_unidest.text    := q_itensfaturasunidade_medida_estat.asstring;
   me_destaque.text := q_itensfaturasdestaque_ncm.asstring;
   me_naladi.text   := q_itensfaturasnaladi.asstring;
   b_excluiit.enabled := true;
   b_gravait.Caption  := '&Altera';
   b_gravait.tag      := 1;
   b_gravait.enabled  := true;

end;

me_ncm.text        := q_itensfaturasncm.asstring;
t_ncm.first;
if t_ncm.findkey([me_ncm.text]) then me_descrncm.text := t_ncmdescricao.asstring
else me_descrncm.text := me_ncm.text;
me_pesounit.text   := q_itensfaturaspesounitrio.AsString;
me_quantidade.text := q_itensfaturasquantidade.asstring;
me_valorunit.text  := q_itensfaturasvalorunitrio.asstring;
me_pagina.text     := q_itensfaturaspagina.asstring;
me_seq.text        := q_itensfaturassequencial.asstring;
me_referencia.text := q_itensfaturasreferencia.asstring;
me_numeroserie.text := q_itensfaturasnumero_serie.asstring;
me_po.text         := q_itensfaturaspo.asstring;
me_seqpo.text         := q_itensfaturasseqpo.asstring;
me_refproj.text    := q_itensfaturasreferencia_projeto.asstring;
b_excluiit.enabled := true;
me_pagina.setfocus;

end;

procedure TF_processos.B_excluiitClick(Sender: TObject);
var v_pesototala:real;
    v_maior:string;
    i:integer;
    oseq:string;
begin
t_itensfaturas.first;
if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,me_fatura.text,q_itensfaturassequencial.asstring]) then begin
   t_tributositem.first;
   t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,q_itensfaturassequencial.asstring]);
   if (t_tributositemsequencial_item.asstring = q_itensfaturassequencial.asstring) then begin
      MessageDlg('ATENÇÃO! Exclusão de um item já tributado! Será excluida tributação correspondente.', mtInformation,[mbOk], 0);
      while ((not t_tributositem.eof) and (t_tributositemfatura.asstring = me_fatura.text)and (t_tributositemsequencial_item.asstring = q_itensfaturassequencial.asstring)) do begin
            t_tributositem.delete;
      end;
   end;

   oseq := t_itensfaturassequencial.asstring;
   t_itensfaturas.delete;

   {atualiza itens de notas fiscais}
   Q_itensfaturas.Close;
   Q_itensfaturas.Params[0].AsString := t_parametrosempresa.asstring;
   Q_itensfaturas.Params[1].AsString := t_parametrosfilial.asstring;
   Q_itensfaturas.Params[2].AsString := me_nossaref.text;
   Q_itensfaturas.Params[3].AsString := me_fatura.text;
   Q_itensfaturas.open;
   b_excluiit.enabled := false;
   b_gravait.enabled  := false;
   me_produto.text    := '';
   me_descricao.text  := '';
   me_fabricante.text := '';
   me_ncm.text        := '';
   me_destaque.text   := '';
   me_naladi.text     := '';
   cb_unid.text    := '';
   cb_unidest.text := '';
   me_referencia.text := '';
   me_numeroserie.text := '.';
   me_po.text := '';
   me_seqpo.text := '';   
   me_pesounit.text   := '';
   me_quantidade.text := '';
   me_valorunit.text  := '';
   me_moeda.text      := '';

   {atualiza saldos da fatura}

   v_pesototal  := 0;
   v_pesototala := 0;
   v_valortotal := 0;
   Q_itensfaturas.first;
   while not q_itensfaturas.eof do begin
      v_pesototal  := v_pesototal  + q_itensfaturaspesototal.asfloat;
      v_pesototala := v_pesototala + q_itensfaturaspeso_total_acertado.asfloat;
      v_valortotal := v_valortotal + q_itensfaturasvalortotal.asfloat;
      q_itensfaturas.next;
   end;

   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   ///while t_faturas.state = dsedit do begin
   ///end;
   t_faturas.edit;
   T_faturasValorTotal.asfloat := v_valortotal;
   T_faturasPesoTotal.asfloat  := v_pesototal;
   T_faturasPesoTotal_acertado.asfloat  := v_pesototala;
   t_faturas.post;

   e_pesototal.text  := T_faturasPesoTotal.asstring;
   e_pesoacertado.text := T_faturasPesoTotal_acertado.asstring;
   e_valortotal.text := T_faturasValorTotal.asstring;

   db_itensfatura.setfocus;

end

end;

procedure TF_processos.CB_incotermsExit(Sender: TObject);
begin
if cb_incoterms.text = '' then begin
   MessageDlg('Selecione o Incoterm!', mtInformation,[mbOk], 0);
   cb_incoterms.setfocus;
end

end;

procedure TF_processos.ME_produtoExit(Sender: TObject);
var v_seq:string;
begin
   me_fatura.enabled := false;
   if me_produto.text = '' then begin
      {MessageDlg('Informe o Produto!', mtInformation,[mbOk], 0);
      me_produto.setfocus;}
      end
   else begin
      t_produtos.first;
      if t_produtos.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_produto.text]) then begin
         {verificar fabricante do produto}
         if (t_produtosfabricante.asstring='') then begin
             MessageDlg('Produto sem Fabricante!', mtInformation,[mbOk], 0);
             me_produto.setfocus;
         end
         else begin
              me_seqchange(f_processos);
              {ver o próximo sequencial
              t_itensfaturas.first;
              t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
              v_seq := '1';
              while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = me_fatura.text)) do begin
                    if strtoint(v_seq) <= strtoint(t_itensfaturassequencial.asstring) then v_seq := inttostr(strtoint(t_itensfaturassequencial.asstring)+1);
                    t_itensfaturas.next;
              end;
              me_seq.text := v_seq;    }

         me_produto.text   := t_produtoscdigo.asstring;
         me_descricao.text := t_produtosdescrio.asstring;
         me_moeda.text     := t_produtosmoeda.asstring;
         if me_moeda.text <> copy(cb_moedas.text,1,3) then  MessageDlg('Moeda do Produto difere da Moeda da Fatura!', mtInformation,[mbOk], 0);
         t_fabricantes.first;
         if t_fabricantes.findkey([t_parametrosempresa.asstring,t_parametrosfilial,T_produtosfabricante.asstring]) then me_fabricante.text := copy(t_fabricantescodigo.asstring+'   ',1,4)+' - '+ t_fabricantesrazosocial.asstring
         else me_fabricante.text := t_produtosfabricante.asstring;
         t_unidades.first;
         if t_unidades.findkey([t_produtosunidade.asstring]) then cb_unid.text := t_unidadescodigo.asstring+' - '+t_unidadesdescricao.asstring
         else cb_unid.text    := t_produtosunidade.asstring;
         t_unidades.first;
         if t_unidades.findkey([t_produtosunidade_medida_estat.asstring]) then cb_unidest.text := t_unidadescodigo.asstring+' - '+t_unidadesdescricao.asstring
         else cb_unidest.text    := t_produtosunidade_medida_estat.asstring;
         me_ncm.text            := t_produtosncm.asstring;
         t_ncm.first;
         if t_ncm.findkey([me_ncm.text]) then me_descrncm.text := t_ncmdescricao.asstring
         else me_descrncm.text := me_ncm.text;
         me_destaque.text := t_produtosdestaque_ncm.asstring;
         me_naladi.text   := t_produtosnaladi.asstring;
         me_pesounit.text        := t_produtospesounitrio.asstring;
         me_valorunit.text       := t_produtosvalorunitrio.asstring;
         me_destaque.text        := t_produtosdestaque_ncm.asstring;
         me_naladi.text          := t_produtosnaladi.asstring;
         b_excluiit.enabled := false;
         b_gravait.Caption  := '&Inclui';
         b_gravait.tag      := 0;
         me_refproj.setfocus;
         end;
         end
      else begin
         {atualiza lista de produtos}
         if MessageDlg('Deseja incluir um novo produto?', mtConfirmation,[mbYes, mbNo], 0) = mrNo then begin
         Q_produtos.Close;
         Q_produtos.Params[0].AsString := t_parametrosempresa.asstring;
         Q_produtos.Params[1].AsString := t_parametrosfilial.asstring;
         Q_produtos.Params[2].AsString := t_processosimportador.asstring;
         Q_produtos.Params[3].AsString := '*'+me_produto.text+'*';
         Q_produtos.Params[4].AsString := '*'+me_produto.text+'*';
         Q_produtos.open;
         if not q_produtos.Eof then begin
            p_qprodutos.top    := 20;
            p_qprodutos.left   := 77;
            p_qprodutos.height := 237;
            p_qprodutos.width  := 613;

            p_qprodutos.visible := true;
            dbg_qprodutos.setfocus;
            end
         else begin
              MessageDlg('Nenhuma Referência de Produto encontrada!', mtInformation,[mbOk], 0);
              me_produto.text := '';
              me_produto.setfocus;
         end
         end
         else begin
              {ver o próximo sequencial}
              t_itensfaturas.first;
              t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
              v_seq := '1';
              while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = me_fatura.text)) do begin
                    if strtoint(v_seq) <= strtoint(t_itensfaturassequencial.asstring) then v_seq := inttostr(strtoint(t_itensfaturassequencial.asstring)+1);
                    t_itensfaturas.next;
              end;
              me_seq.text := v_seq;
              t_produtos.append;
              T_produtosEmpresa.asstring  := T_parametrosEmpresa.asstring;
              T_produtosFilial.asstring   := T_parametrosFilial.asstring;
              T_produtosCdigo.asstring    := me_produto.text;
              T_produtosDescrio.asstring  := '.';
              t_produtos.post;


              ///me_produto.text   := t_produtoscdigo.asstring;
              me_descricao.text  := '.';
              me_moeda.text      := t_faturasmoeda.asstring;
              me_fabricante.text := '';
              cb_unid.text       := '';
              cb_unidest.text    := '';
              me_ncm.text        := '';
              me_descrncm.text   := '';
              me_destaque.text   := '';
              me_naladi.text     := '';
              me_pesounit.text   := '1';
              me_valorunit.text  := '0';
              me_destaque.text   := '';
              me_naladi.text     := '';
              b_excluiit.enabled := false;
              b_gravait.Caption  := '&Inclui';
              b_gravait.tag      := 0;
              me_descricao.setfocus;
         end;
      end

   end
end;

procedure TF_processos.B_cancelaClick(Sender: TObject);
begin
     p_qprodutos.visible := false;
     me_produto.setfocus;
end;

procedure TF_processos.B_okClick(Sender: TObject);
begin
     p_qprodutos.visible := false;
     me_produto.text   := q_produtoscdigo.asstring;
     t_produtos.first;
     if t_produtos.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_produto.text]) then begin
        {verificar fabricante do produto}
        if (t_produtosfabricante.asstring='') then begin
           MessageDlg('Produto sem Fabricante!', mtInformation,[mbOk], 0);
           me_produto.setfocus;
         end
         else begin
         me_produto.text   := t_produtoscdigo.asstring;
         me_descricao.text := t_produtosdescrio.asstring;
         me_moeda.text     := t_produtosmoeda.asstring;
         if me_moeda.text <> copy(cb_moedas.text,1,3) then  MessageDlg('Moeda do Produto difere da Moeda da Fatura!', mtInformation,[mbOk], 0);
         t_fabricantes.first;
         if t_fabricantes.findkey([t_parametrosempresa.asstring,t_parametrosfilial,T_produtosfabricante.asstring]) then me_fabricante.text := copy(t_fabricantescodigo.asstring+'   ',1,4)+' - '+ t_fabricantesrazosocial.asstring
         else me_fabricante.text := t_produtosfabricante.asstring;
         t_unidades.first;
         if t_unidades.findkey([t_produtosunidade.asstring]) then cb_unid.text := t_unidadescodigo.asstring+' - '+t_unidadesdescricao.asstring
         else cb_unid.text    := t_produtosunidade.asstring;
         t_unidades.first;
         if t_unidades.findkey([t_produtosunidade_medida_estat.asstring]) then cb_unidest.text := t_unidadescodigo.asstring+' - '+t_unidadesdescricao.asstring
         else cb_unidest.text    := t_produtosunidade_medida_estat.asstring;
         me_ncm.text             := t_produtosncm.asstring;
         t_ncm.first;
         if t_ncm.findkey([me_ncm.text]) then me_descrncm.text := t_ncmdescricao.asstring
         else me_descrncm.text := me_ncm.text;
         me_pesounit.text        := t_produtospesounitrio.asstring;
         me_valorunit.text       := t_produtosvalorunitrio.asstring;
         me_destaque.text        := t_produtosdestaque_ncm.asstring;
         me_naladi.text          := t_produtosnaladi.asstring;

         b_gravait.Caption  := '&Inclui';
         b_gravait.tag      := 0;
         me_referencia.setfocus;
     end;
     end;
end;

procedure TF_processos.B_excluiClick(Sender: TObject);
begin
t_faturas.first;
if t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]) then begin
   t_faturas.delete;
   t_itensfaturas.first;
   while not t_itensfaturas.eof do begin
         if (t_itensfaturasempresa.asstring = t_parametrosempresa.asstring) and (t_itensfaturasfilial.asstring = t_parametrosfilial.asstring) and (t_itensfaturasprocesso.asstring = me_nossaref.text ) and (t_itensfaturasfatura.asstring = me_fatura.text ) then t_itensfaturas.delete
         else t_itensfaturas.next;
   end;
   if (t_itensfaturasempresa.asstring = t_parametrosempresa.asstring) and (t_itensfaturasfilial.asstring = t_parametrosfilial.asstring) and (t_itensfaturasprocesso.asstring = me_nossaref.text ) and (t_itensfaturasfatura.asstring = me_fatura.text ) then t_itensfaturas.delete;
   ME_fatura.text       := '';
   ME_fatura.enabled    := false;
   CB_incoterms.text    := '';
   me_exp.text          := '';
   me_nomeexp.text      :='';
   ME_condicao.text     := '';
   CB_moedas.text       := '';
   e_pesototal.text     := '';
   e_valortotal.text    := '';
   b_exclui.enabled     := false;
   panel8.Enabled       := false;
   me_produto.text   := '';
   me_descricao.text := '';
   me_fabricante.text := '';
   me_ncm.text        := '';
   cb_unid.text    := '';
   cb_unidest.text := '';
   me_destaque.text := '';
   me_naladi.text  := '';
   me_referencia.text := '';
   me_numeroserie.text := '.';
   me_po.text := '';
   me_seqpo.text := '';   
   me_pesounit.text   := '';
   me_quantidade.text := '';
   me_valorunit.text  := '';
   me_moeda.text      := '';
   //Q_itensfaturas.Close;
   {TS_FaturasShow(f_processos);}
   cb_faturas.setfocus;
end;

end;

procedure TF_processos.RG_cambialClick(Sender: TObject);
begin
if copy(RG_cambial.items[RG_cambial.ItemIndex],1,1) = '1' then begin
   l_motivo.caption := 'Modalidade de Pagamento:';
   Ts_pag3.caption := 'Pagamento em até 180 Dias';
   {verifica os modalidades de pagamentos}
   t_moda.first;
   cb_motivos.clear;
   while not t_moda.eof do begin
         cb_motivos.items.add(t_modacodigo.asstring+' '+t_modadescricao.asstring);
         t_moda.next;
   end;
   PageControl3.visible := true;
   PageControl3.enabled := true;
   panel10.Visible := true;
   p_rof.visible   := false;
end;
if copy(RG_cambial.items[RG_cambial.ItemIndex],1,1) = '2' then begin
   l_motivo.caption := 'Modalidade de Pagamento:';
   ts_pag3.caption := 'Pagamento em até 360 Dias';
   {verifica os modalidades de pagamentos}
   t_moda.first;
   cb_motivos.clear;
   while not t_moda.eof do begin
         cb_motivos.items.add(t_modacodigo.asstring+' '+t_modadescricao.asstring);
         t_moda.next;
   end;
   PageControl3.visible := true;
   PageControl3.enabled := true;
   panel10.Visible := true;
   p_rof.visible   := false;
end;
if copy(RG_cambial.items[RG_cambial.ItemIndex],1,1) = '3' then begin
   l_motivo.caption := 'Instituição Financiadora:';
   ts_pag3.caption := 'Prazo Superior à 360 Dias';
   {verifica os instituições financiadoras}
   t_inst.first;
   cb_motivos.clear;
   while not t_inst.eof do begin
         cb_motivos.items.add(t_instcodigo.asstring+' '+t_instdescricao.asstring);
         t_inst.next;
   end;
   PageControl3.visible := true;
   PageControl3.enabled := true;
   panel10.Visible := false;
   p_rof.top  :=  32;
   p_rof.left := 248;
   p_rof.Width := 201;
   p_rof.Height :=  77;
   p_rof.visible   := true;
end;
if copy(RG_cambial.items[RG_cambial.ItemIndex],1,1) = '4' then begin
   l_motivo.caption := 'Motivo:';
   PageControl3.visible := false;
   PageControl3.enabled := false;
   {verifica os motivos de sem cobertura cambial}
   t_moti.first;
   cb_motivos.clear;
   while not t_moti.eof do begin
         cb_motivos.items.add(t_moticodigo.asstring+' '+t_motidescricao.asstring);
         t_moti.next;
   end;
   //while t_faturas.state = dsedit do begin
   //end;
   t_faturas.edit;
   T_faturasTipoParcela.asstring            := '';
   T_faturasNumerodeparcelas.asstring       := '';
   T_faturasPeriodicidade.asstring          := '';
   T_faturasValordasParcelas.asfloat        := 0;
   T_faturasIndicadorPeriodicidade.asstring := '';
   T_faturasTaxadeJuros.asboolean           := false;
   T_faturasCodigoTaxadeJuros.asstring      := '';
   T_faturasValorTaxadeJuros.asfloat        := 0;
   T_faturasROFBACEN.asstring               := '';
   T_faturasPercentualROF.asfloat           := 0;
   t_faturasdt_prev_pag_cambio.asstring     := '';
   t_faturasdt_pag_cambio.asstring          := '';
   t_faturasstatus_cambio.asstring          := '0';
   t_faturas.post;
   {Exclui pagamento vinculados}
   t_pagvinc.first;
   t_pagvinc.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,'1']);
   while ((not t_pagvinc.eof) and (t_pagvincempresa.asstring = t_parametrosempresa.asstring) and (t_pagvincfilial.asstring = t_parametrosfilial.asstring) and (t_pagvincprocesso.asstring = me_nossaref.text) and (t_pagvincfatura.asstring = me_fatura.text)) do begin
          t_pagvinc.delete;
   end;

   {Exclui parcelas variaveis}
   t_parcelasvar.first;
   t_parcelasvar.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,'1']);
   while ((not t_parcelasvar.eof) and (t_parcelasvarempresa.asstring = t_parametrosempresa.asstring) and (t_parcelasvarfilial.asstring = t_parametrosfilial.asstring) and (t_parcelasvarprocesso.asstring = me_nossaref.text) and (t_parcelasvarfatura.asstring = me_fatura.text)) do begin
          t_parcelasvar.delete;
   end;
   Q_pgvinc.close;
   Q_pgvinc.Params[0].AsString := t_parametrosempresa.asstring;
   Q_pgvinc.Params[1].AsString := t_parametrosfilial.asstring;
   Q_pgvinc.Params[2].AsString := me_nossaref.text;
   Q_pgvinc.Params[3].AsString := me_fatura.text;
   Q_pgvinc.Params[4].AsString := '1';
   Q_pgvinc.open;
   p_rof.visible   := false;

end;

t_faturas.edit;
t_faturascoberturacambial.asstring := copy(RG_cambial.items[RG_cambial.ItemIndex],1,1);
t_faturas.post;


end;

procedure TF_processos.TS_ConhecimentoShow(Sender: TObject);
var v_vmletotal:real;
begin
//Q_itensfaturas.close;
Q_produtos.close;
q_parcvar.close;
q_pgvinc.close;
//Q_acrescimos.close;
//Q_acresdedu.close;
PageControl4.activepage  := ts_transporte;
{zera variaveis}

          cb_multi.checked := false;
          PageControl5.activepage  := ts_aereo;
          cb_transportadores1.text := '';
          cb_tipodocs1.text        := '';
          me_ident.text            := '';
          me_master.text           := '';
          cb_utilizacao.text       := '';
          me_local.text            := '';
          me_datatrans.text        := '';

          cb_transportadores2.text := '';
          me_embarcacao.text       := '';
          cb_tipodocs2.text        := '';
          me_ident1.text           := '';
          me_master1.text          := '';
          cb_utilizacao1.text      := '';
          me_local1.text           := '';
          me_datatrans1.text       := '';

          cb_transportadores3.text := '';
          me_placa1.text           := '';
          me_numerocrt.text        := '';
          cb_utilizacao2.text      := '';
          me_local2.text           := '';
          me_datatrans2.text       := '';
          me_lacrevei.text         := '';

          cb_transportadores4.text := '';
          cb_tipodocs3.text        := '';
          me_ident3.text           := '';
          me_master3.text          := '';
          cb_utilizacao4.text      := '';
          me_local3.text           := '';
          me_datatrans3.text       := '';

          me_barras.text           := '';
          me_localpos.text         := '';
          me_datapos.text          := '';

          cb_transportadores5.text := '';
          me_embarcacao4.text      := '';
          cb_tipodocs4.text        := '';
          me_ident4.text           := '';
          me_master4.text          := '';
          cb_utilizacao5.text      := '';
          me_local4.text           := '';
          me_datatrans4.text       := '';

          cb_transportadores6.text := '';
          me_embarcacao5.text      := '';
          cb_tipodocs5.text        := '';
          me_ident5.text           := '';
          me_master5.text          := '';
          cb_utilizacao6.text      := '';
          me_local5.text           := '';
          me_datatrans5.text       := '';

          me_local6.text           := '';
          me_datatrans6.text       := '';

          me_local7.text           := '';
          me_datatrans7.text       := '';


    if me_nossaref.text <> '' then begin
          T_transpprocesso.first;
       if T_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin
          T_transportadores.first;
          T_transportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,T_transpprocessotransportador.asstring]);
          cb_multi.checked := T_transpprocessomultimodal.asboolean;
          if T_transpprocessovia.asstring = '4' then begin
             PageControl5.activepage  := ts_aereo;
             cb_transportadores1.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
             cb_tipodocs1.text        := T_transpprocessoTipodoccarga.asstring;
             me_ident.text            := T_transpprocessoNumerodoccarga.asstring;
             me_master.text           := T_transpprocessoNumeromaster.asstring;
             cb_utilizacao.text       := T_transpprocessoUtilizacao.asstring;
             me_local.text            := T_transpprocessoLocal.asstring;
             me_datatrans.text        := T_transpprocessodata.asstring;
          end;
          if T_transpprocessovia.asstring = '1' then begin
             PageControl5.activepage  := ts_maritimo;
             cb_transportadores2.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
             me_embarcacao.text       := T_transpprocessoEmbarcacao.asstring;
             cb_tipodocs2.text        := T_transpprocessoTipodoccarga.asstring;
             me_ident1.text           := T_transpprocessoNumerodoccarga.asstring;
             me_master1.text          := T_transpprocessoNumeromaster.asstring;
             cb_utilizacao1.text      := T_transpprocessoUtilizacao.asstring;
             me_local1.text           := T_transpprocessoLocal.asstring;
             me_datatrans1.text       := T_transpprocessodata.asstring;
          end;
          if T_transpprocessovia.asstring = '7' then begin
             PageControl5.activepage  := ts_rodoviario;
             cb_transportadores3.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
             me_placa1.text           := T_transpprocessoplaca.asstring;
             me_numerocrt.text        := T_transpprocessoNumerodoccarga.asstring;
             cb_utilizacao2.text      := T_transpprocessoUtilizacao.asstring;
             me_local2.text           := T_transpprocessoLocal.asstring;
             me_datatrans2.text       := T_transpprocessodata.asstring;
             me_lacrevei.text         := T_transpprocessolacre.asstring;
          end;
          if T_transpprocessovia.asstring = '6' then begin
             PageControl5.activepage  := ts_ferroviario;
             cb_transportadores4.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
             cb_tipodocs3.text        := T_transpprocessoTipodoccarga.asstring;
             me_ident3.text           := T_transpprocessoNumerodoccarga.asstring;
             me_master3.text          := T_transpprocessoNumeromaster.asstring;
             cb_utilizacao4.text      := T_transpprocessoUtilizacao.asstring;
             me_local3.text           := T_transpprocessoLocal.asstring;
             me_datatrans3.text       := T_transpprocessodata.asstring;
          end;
          if T_transpprocessovia.asstring = '5' then begin
             PageControl5.activepage  := ts_postal;
             me_barras.text           := T_transpprocessoNumerodoccarga.asstring;
             me_localpos.text         := T_transpprocessoLocal.asstring;
             me_datapos.text          := T_transpprocessodata.asstring;
          end;
          if T_transpprocessovia.asstring = '2' then begin
             PageControl5.activepage  := ts_fluvial;
             cb_transportadores5.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
             me_embarcacao4.text      := T_transpprocessoEmbarcacao.asstring;
             cb_tipodocs4.text        := T_transpprocessoTipodoccarga.asstring;
             me_ident4.text           := T_transpprocessoNumerodoccarga.asstring;
             me_master4.text          := T_transpprocessoNumeromaster.asstring;
             cb_utilizacao5.text      := T_transpprocessoUtilizacao.asstring;
             me_local4.text           := T_transpprocessoLocal.asstring;
             me_datatrans4.text       := T_transpprocessodata.asstring;
          end;
          if T_transpprocessovia.asstring = '3' then begin
             PageControl5.activepage  := ts_lacustre;
             cb_transportadores6.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
             me_embarcacao5.text      := T_transpprocessoEmbarcacao.asstring;
             cb_tipodocs5.text        := T_transpprocessoTipodoccarga.asstring;
             me_ident5.text           := T_transpprocessoNumerodoccarga.asstring;
             me_master5.text          := T_transpprocessoNumeromaster.asstring;
             cb_utilizacao6.text      := T_transpprocessoUtilizacao.asstring;
             me_local5.text           := T_transpprocessoLocal.asstring;
             me_datatrans5.text       := T_transpprocessodata.asstring;
          end;
          if T_transpprocessovia.asstring = '9' then begin
             PageControl5.activepage  := ts_meios;
             me_local6.text           := T_transpprocessoLocal.asstring;
             me_datatrans6.text       := T_transpprocessodata.asstring;
          end;
          if T_transpprocessovia.asstring = '8' then begin
             PageControl5.activepage  := ts_meios;
             me_local7.text           := T_transpprocessoLocal.asstring;
             me_datatrans7.text       := T_transpprocessodata.asstring;
          end;


       end
       else begin
          ///while t_transpprocesso.state = dsinsert do begin
          ///end;
          T_transpprocesso.append;
          T_transpprocessoempresa.asstring  := t_parametrosempresa.asstring;
          T_transpprocessofilial.asstring   := t_parametrosfilial.asstring;
          T_transpprocessoprocesso.asstring := me_nossaref.text;
          T_transpprocesso.post;
       end;
       q_concargas.Close;
       q_concargas.Params[0].AsString := t_parametrosempresa.asstring;
       q_concargas.Params[1].AsString := t_parametrosfilial.asstring;
       q_concargas.Params[2].AsString := me_nossaref.text;
       q_concargas.open;

       q_embalagempro.Close;
       q_embalagempro.Params[0].AsString := t_parametrosempresa.asstring;
       q_embalagempro.Params[1].AsString := t_parametrosfilial.asstring;
       q_embalagempro.Params[2].AsString := me_nossaref.text;
       q_embalagempro.open;

       v_pesoliquido := 0;
       t_faturas.first;
       t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
       while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
             v_pesoliquido := v_pesoliquido +t_faturasPesoTotal_acertado.asfloat;
             t_faturas.next;
       end;
       //while t_transpprocesso.state = dsedit do begin
       //end;
       T_transpprocesso.edit;
       T_transpprocessopeso_liquido.asfloat := v_pesoliquido;
///       T_transpprocesso.post;

       v_vmletotal := 0;
       t_itensfaturas.first;
       t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
       while (( not t_itensfaturas.eof) and (t_itensfaturasempresa.asstring=t_parametrosempresa.asstring) and (t_itensfaturasfilial.asstring=t_parametrosfilial.asstring)and(t_itensfaturasprocesso.asstring=me_nossaref.text)) do begin
             t_faturas.first;
             t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
             t_taxaconv.first;
             t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);
             v_vmletotal := v_vmletotal +(t_itensfaturasvmle.asfloat*t_taxaconvtaxa_conversao.asfloat);
             t_itensfaturas.next;
       end;

       me_pbruto.text   := T_transpprocessopeso_bruto.asstring;
       me_pliquido.text := T_transpprocessopeso_liquido.asstring;
       me_agente.text   := T_transpprocessoagente.asstring;
       cb_pais.text     := T_transpprocessopais_procedencia.asstring;
       cb_urf.text      := T_transpprocessourf_chegada.asstring;
       me_vmletotal.text:= floattostr(v_vmletotal);

    end;

end;

procedure TF_processos.TS_followupShow(Sender: TObject);
begin
//Q_itensfaturas.close;
Q_produtos.close;
q_parcvar.close;
q_pgvinc.close;
///Q_acrescimos.close;
///Q_acresdedu.close;
q_followup.close;
q_followup.params[0].asstring := t_parametrosempresa.asstring;
q_followup.params[1].asstring := t_parametrosfilial.asstring;
q_followup.params[2].asstring := me_nossaref.text;
q_followup.open;

end;

procedure TF_processos.B_novoClick(Sender: TObject);

begin
    t_followup_i.append;
    t_followup_iempresa.asstring := t_parametrosempresa.asstring;
    t_followup_ifilial.asstring := t_parametrosfilial.asstring;
    t_followup_iprocesso.asstring := me_nossaref.text;
    t_followup_idata.asdatetime := date();
    t_followup_ihora.asstring   := timetostr(time());
    t_followup_i.post;
    v_novofol := true;
    q_followup.close;
    q_followup.open;
    q_followup.last;
    bsg(f_processos);
end;

procedure TF_processos.B_excluifollowClick(Sender: TObject);
var qreg:string;
begin
////if ((v_nivel > '7') and (v_novofol = false)) then showmessage('Exclusão de Follow Up só está permitida para nível de supervisão. Entre em contato com seu Supervisor.')
if ( (v_novofol = false) and ((v_nivel > '7') and (v_usuario <> t_processosresponsavel_empresa.asstring))) then showmessage('Exclusão de Follow Up só está permitida para Usuário Responsável pelo processo ->'+t_processosresponsavel_empresa.asstring+' ou entre em contato com seu supervisor.')
else begin
if MessageDlg('Confirma exclusão de Follow Up?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
t_followup.delete;
q_followup.moveby(-1);
qreg := q_followupsequencial.asstring;
q_followup.close;
q_followup.open;
q_followup.locate('sequencial',qreg,[loCaseInsensitive]);
end;
end;
v_novofol := false;
end;

procedure TF_processos.B_alterafollowClick(Sender: TObject);
var qreg:string;
    qdata:string;
    qhora:string;
    qduracao:real;
begin
////if ((v_nivel > '7') and (v_novofol = false)) then begin
if ( (t_followupcodobs.asstring <> '') and (v_novofol = false) and ((v_nivel > '7') and (v_usuario <> t_processosresponsavel_empresa.asstring))) then begin
   t_followup.cancel;
   ////showmessage('Alteração de Follow Up só está permitida para nível de supervisão. Entre em contato com seu Supervisor.');
   showmessage('Alteração de Follow Up só está permitida para Usuário Responsável pelo processo ->'+t_processosresponsavel_empresa.asstring+' ou entre em contato com seu supervisor.');
end
else begin
t_followup.edit;
t_followup.post;
qreg := q_followupsequencial.asstring;
///gravando final do evento
qdata := t_followupdata.asstring;
qhora := t_followuphora.asstring;
q_followup.moveby(-1);
t_followup.edit;
t_followupdata_final.asstring := qdata;
t_followuphora_final.asstring := qhora;
qduracao := (t_followupdata_final.asdatetime-t_followupdata.asdatetime);
if qduracao > 0 then qduracao := (((qduracao*24)*60)*60)
else qduracao := 0;
qduracao := qduracao-((strtoint(copy(t_followuphora.asstring,1,2))*60)*60);
qduracao := qduracao-(strtoint(copy(t_followuphora.asstring,4,2))*60);
qduracao := qduracao+((strtoint(copy(t_followuphora_final.asstring,1,2))*60)*60);
qduracao := qduracao+(strtoint(copy(t_followuphora_final.asstring,4,2))*60);
t_followupduracao.asfloat   := qduracao;
t_followup.post;
q_followup.moveby(+1);
q_followup.close;
q_followup.open;
q_followup.locate('sequencial',qreg,[loCaseInsensitive]);
end;
if t_followupcodobs.asstring <> '' then v_novofol := false;
end;

procedure TF_processos.b_gravacambioClick(Sender: TObject);
begin
{T_faturas.edit;
T_faturascoberturacambial.asstring          :=  inttostr(rg_cambial.itemindex+1);
T_faturasMotivoSemCobertura.asstring        :=  copy(cb_motivos.text,1,2);
T_faturasModalidadedePagamento.asstring     :=  copy(cb_modalidade.text,1,2);
T_faturasInstituicaoFinanciadora.asstring   :=  copy(cb_instituicao.text,1,2);
T_faturasContratodeCambio.asstring          :=  me_contrato.text;
T_faturasBanco.asstring                     :=  me_banco.text;
T_faturasPraca.asstring                     :=  me_praca.text;
T_faturasTipoParcela.asstring               :=  inttostr(rg_parcelas.itemindex+1);
T_faturasNumerodeparcelas.asstring          :=  me_nparcelas.text;
T_faturasPeriodicidade.asstring             :=  me_periodicidade.text;
T_faturasValordasParcelas.asstring          :=  me_valorparc.text;
T_faturasIndicadorPeriodicidade.asstring    :=  inttostr(rg_indper.itemindex+1);
}
end;

procedure TF_processos.CB_motivosClick(Sender: TObject);
begin
///while t_faturas.state = dsedit do begin
///end;
t_faturas.edit;
if t_faturascoberturacambial.asstring = '1' then begin
   T_faturasMotivoSemCobertura.asstring      := '';
   T_faturasModalidadedePagamento.asstring   := copy(cb_motivos.Items[cb_motivos.ItemIndex],1,2);
   T_faturasInstituicaoFinanciadora.asstring := '';
end;
if t_faturascoberturacambial.asstring = '2' then begin
   T_faturasMotivoSemCobertura.asstring      := '';
   T_faturasModalidadedePagamento.asstring   := copy(cb_motivos.Items[cb_motivos.ItemIndex],1,2);
   T_faturasInstituicaoFinanciadora.asstring := '';
end;
if t_faturascoberturacambial.asstring = '3' then begin
   T_faturasMotivoSemCobertura.asstring      := '';
   T_faturasModalidadedePagamento.asstring   := '';
   T_faturasInstituicaoFinanciadora.asstring := copy(cb_motivos.Items[cb_motivos.ItemIndex],1,2);
end;
if t_faturascoberturacambial.asstring = '4' then begin
   T_faturasMotivoSemCobertura.asstring      := copy(cb_motivos.Items[cb_motivos.ItemIndex],1,2);
   T_faturasModalidadedePagamento.asstring   := '';
   T_faturasInstituicaoFinanciadora.asstring := '';
end;
t_faturas.post;

end;

procedure TF_processos.b_incluipagClick(Sender: TObject);

begin

if (me_banco.text='') or (me_praca.text ='') or (me_contrato.text ='') or (me_valorperc.text ='') then begin
   MessageDlg('Informe o Contrato, Banco, Praça e Percentual de Pagamento!', mtInformation,[mbOk], 0);
   cb_mn1.setfocus;
   end
else begin

{verifica sequencia pagamento vinculados}
v_seqpag:= '1';
t_pagvinc.first;
t_pagvinc.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,'1']);
while ((not t_pagvinc.eof) and (t_pagvincempresa.asstring = t_parametrosempresa.asstring) and (t_pagvincfilial.asstring = t_parametrosfilial.asstring) and (t_pagvincprocesso.asstring = me_nossaref.text) and (t_pagvincfatura.asstring = me_fatura.text)) do begin
      if (v_seqpag <= t_pagvincsequencial.asstring) then v_seqpag := inttostr(strtoint(t_pagvincsequencial.asstring)+1);
      t_pagvinc.next;
end;

while t_pagvinc.state = dsinsert do begin
end;
t_pagvinc.append;
T_pagvincEmpresa.asstring          := t_parametrosempresa.asstring;
T_pagvincFilial.asstring           := t_parametrosfilial.asstring;
T_pagvincProcesso.asstring         := me_nossaref.text;
T_pagvincFatura.asstring           := me_fatura.text;
T_pagvincSequencial.asstring       := v_seqpag;
T_pagvincFormadePagamento.asstring := '1';
T_pagvincMoedaNacional.asboolean   := cb_mn1.checked;
T_pagvincBanco.asstring            := me_banco.text;
T_pagvincPraca.asstring            := me_praca.text;
T_pagvincContrato.asstring         := me_contrato.text;
T_pagvincValorPercentual.asstring  := me_valorperc.text;
T_pagvincValor.asstring            := me_valorreal.text;
T_pagvincCNPJComprador.asstring    := me_comprador.text;
{T_pagvincTipoCNPJ.asstring         :=}
t_pagvinc.post;

t_faturas.edit;
T_faturascontrato_cambio.asstring  := me_contrato.text;
t_faturas.post;

Q_pgvinc.close;
Q_pgvinc.Params[0].AsString := t_parametrosempresa.asstring;
Q_pgvinc.Params[1].AsString := t_parametrosfilial.asstring;
Q_pgvinc.Params[2].AsString := me_nossaref.text;
Q_pgvinc.Params[3].AsString := me_fatura.text;
Q_pgvinc.Params[4].AsString := '1';

Q_pgvinc.open;
b_incluipag.Enabled := false;
cb_mn1.checked    := false;
me_banco.text     :='';
me_praca.text     :='';
me_contrato.text  :='';
me_valorperc.text :='';
me_valorreal.text :='';
me_comprador.text :='';
cb_mn1.setfocus;
end;
end;

procedure TF_processos.me_contratoExit(Sender: TObject);
begin
 b_incluipag.Enabled := true;
end;

procedure TF_processos.PageControl3Exit(Sender: TObject);
begin
   Q_pgvinc.refresh;
end;

procedure TF_processos.dbg_pagantCellClick(Column: TColumn);
begin
cb_mn1.checked      := Q_pgvincmoedanacional.asboolean;
me_banco.text       := Q_pgvincbanco.asstring;
me_praca.text       := Q_pgvincpraca.asstring;
me_contrato.text    := Q_pgvinccontrato.asstring;
me_valorperc.text   := Q_pgvincvalorpercentual.asstring;
me_comprador.text   := Q_pgvinccnpjcomprador.asstring;
v_seqpag            := Q_pgvincsequencial.asstring;
b_excluipag.enabled := true;
b_incluipag.Enabled := false;
b_excluipag.setfocus;

end;

procedure TF_processos.b_excluipagClick(Sender: TObject);
begin
t_pagvinc.first;
if t_pagvinc.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,v_seqpag]) then begin
   t_pagvinc.delete;
end;
   Q_pgvinc.close;
   Q_pgvinc.open;
   b_excluipag.enabled := false;
   cb_mn1.checked    := false;
   me_banco.text     :='';
   me_praca.text     :='';
   me_contrato.text  :='';
   me_valorperc.text :='';
   me_comprador.text :='';
   cb_mn1.setfocus;
end;

procedure TF_processos.TS_cambioShow(Sender: TObject);
begin
{verifica pagamentos por fatura}
Q_pgvinc.Close;
Q_pgvinc.Params[0].AsString := t_parametrosempresa.asstring;
Q_pgvinc.Params[1].AsString := t_parametrosfilial.asstring;
Q_pgvinc.Params[2].AsString := me_nossaref.text;
Q_pgvinc.Params[3].AsString := me_fatura.text;
Q_pgvinc.Params[4].AsString := '1';
Q_pgvinc.open;

end;

procedure TF_processos.ts_pag2Show(Sender: TObject);
begin
{verifica pagamentos por fatura}
Q_pgvinc.Close;
Q_pgvinc.Params[0].AsString := t_parametrosempresa.asstring;
Q_pgvinc.Params[1].AsString := t_parametrosfilial.asstring;
Q_pgvinc.Params[2].AsString := me_nossaref.text;
Q_pgvinc.Params[3].AsString := me_fatura.text;
Q_pgvinc.Params[4].AsString := '2';
Q_pgvinc.open;

end;

procedure TF_processos.dbg_pagvistaCellClick(Column: TColumn);
begin
cb_mn2.checked       := Q_pgvincmoedanacional.asboolean;
me_banco2.text       := Q_pgvincbanco.asstring;
me_praca2.text       := Q_pgvincpraca.asstring;
me_contrato2.text    := Q_pgvinccontrato.asstring;
me_valorperc2.text   := Q_pgvincvalorpercentual.asstring;
me_comprador2.text   := Q_pgvinccnpjcomprador.asstring;
v_seqpag             := Q_pgvincsequencial.asstring;
b_excluipag2.enabled := true;
b_incluipag2.Enabled := false;
b_excluipag2.setfocus;

end;

procedure TF_processos.b_incluipag2Click(Sender: TObject);
begin
if (me_banco2.text='') or (me_praca2.text ='') or (me_contrato2.text ='') or (me_valorperc2.text ='') then begin
   MessageDlg('Informe o Contrato, Banco, Praça e Percentual de Pagamento!', mtInformation,[mbOk], 0);
   cb_mn2.setfocus;
   end
else begin

{verifica sequencia pagamento vinculados}
v_seqpag:= '1';
t_pagvinc.first;
t_pagvinc.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,'1']);
while ((not t_pagvinc.eof) and (t_pagvincempresa.asstring = t_parametrosempresa.asstring) and (t_pagvincfilial.asstring = t_parametrosfilial.asstring) and (t_pagvincprocesso.asstring = me_nossaref.text) and (t_pagvincfatura.asstring = me_fatura.text)) do begin
      if (v_seqpag <= t_pagvincsequencial.asstring) then v_seqpag := inttostr(strtoint(t_pagvincsequencial.asstring)+1);
      t_pagvinc.next;
end;

while t_pagvinc.state = dsinsert do begin
end;
t_pagvinc.append;
T_pagvincEmpresa.asstring          := t_parametrosempresa.asstring;
T_pagvincFilial.asstring           := t_parametrosfilial.asstring;
T_pagvincProcesso.asstring         := me_nossaref.text;
T_pagvincFatura.asstring           := me_fatura.text;
T_pagvincSequencial.asstring       := v_seqpag;
T_pagvincFormadePagamento.asstring := '2';
T_pagvincMoedaNacional.asboolean   := cb_mn2.checked;
T_pagvincBanco.asstring            := me_banco2.text;
T_pagvincPraca.asstring            := me_praca2.text;
T_pagvincContrato.asstring         := me_contrato2.text;
T_pagvincValorPercentual.asstring  := me_valorperc2.text;
T_pagvincValor.asstring            := me_valorreal2.text;
T_pagvincCNPJComprador.asstring    := me_comprador2.text;
{T_pagvincTipoCNPJ.asstring         :=}
t_pagvinc.post;

t_faturas.edit;
T_faturascontrato_cambio.asstring  := me_contrato2.text;
t_faturas.post;


Q_pgvinc.close;
Q_pgvinc.open;
b_incluipag2.Enabled := false;
cb_mn2.checked    := false;
me_banco2.text     :='';
me_praca2.text     :='';
me_contrato2.text  :='';
me_valorperc2.text :='';
me_valorreal2.text :='';
me_comprador2.text :='';
cb_mn2.setfocus;
end;

end;

procedure TF_processos.Panel10Exit(Sender: TObject);
begin

t_faturas.edit;
if me_nparcelas.text <> '' then begin
   if rg_parcelas.itemindex >= 0 then t_faturastipoparcela.asstring := inttostr(rg_parcelas.itemindex+1);
   T_faturasNumerodeparcelas.asstring       := me_nparcelas.text    ;
   T_faturasPeriodicidade.asstring          := me_periodicidade.text;
   T_faturasValordasParcelas.asstring       := me_valorparc.text;
   T_faturasIndicadorPeriodicidade.asstring := inttostr(rg_indiper.itemindex);
end;
T_faturasTaxadeJuros.asboolean           := rb_taxajuros.checked;
T_faturasCodigoTaxadeJuros.asstring      := copy(cb_taxabacen.text,1,4);
T_faturasValorTaxadeJuros.asstring       := me_valtaxajuros.text;
t_faturas.post;
end;

procedure TF_processos.TS_cambioEnter(Sender: TObject);
begin
{verifica pagamentos por fatura}
Q_pgvinc.Close;
Q_pgvinc.Params[0].AsString := t_parametrosempresa.asstring;
Q_pgvinc.Params[1].AsString := t_parametrosfilial.asstring;
Q_pgvinc.Params[2].AsString := me_nossaref.text;
Q_pgvinc.Params[3].AsString := me_fatura.text;
Q_pgvinc.Params[4].AsString := '1';
Q_pgvinc.open;

end;

procedure TF_processos.ts_pag2Enter(Sender: TObject);
begin
{verifica pagamentos por fatura}
Q_pgvinc.Close;
Q_pgvinc.Params[0].AsString := t_parametrosempresa.asstring;
Q_pgvinc.Params[1].AsString := t_parametrosfilial.asstring;
Q_pgvinc.Params[2].AsString := me_nossaref.text;
Q_pgvinc.Params[3].AsString := me_fatura.text;
Q_pgvinc.Params[4].AsString := '2';
Q_pgvinc.open;

end;

procedure TF_processos.me_contrato2Exit(Sender: TObject);
begin
 b_incluipag2.Enabled := true;
end;

procedure TF_processos.ts_pag3Enter(Sender: TObject);
begin
{verifica pagamentos por fatura}
Q_parcvar.Close;
Q_parcvar.Params[0].AsString := t_parametrosempresa.asstring;
Q_parcvar.Params[1].AsString := t_parametrosfilial.asstring;
Q_parcvar.Params[2].AsString := me_nossaref.text;
Q_parcvar.Params[3].AsString := me_fatura.text;
Q_parcvar.open;

{ pg_parc_var.Empresa, pg_parc_var.Filial, pg_parc_var.Processo, pg_parc_var.Fatura, pg_parc_var.Sequencial, pg_parc_var.Percentual, pg_parc_var.[Data de Pagamento]

    pg_parc_var.Empresa: TStringField;
    pg_parc_var.Filial: TStringField;
    pg_parc_var.Processo: TStringField;
    pg_parc_var.Fatura: TStringField;
    pg_parc_var.Sequencial: TStringField;
    pg_parc_var.Percentual: TFloatField;
    pg_parc_var.[Data de Pagamento]: TStringField;

}
end;

procedure TF_processos.B_incluiparvarClick(Sender: TObject);
begin
if (me_percentual.text='') or (me_datapar.text ='') then begin
   MessageDlg('Informe o Percentual e Data!', mtInformation,[mbOk], 0);
   me_percentual.setfocus;
   end
else begin

{verifica sequencia pagamento vinculados}
v_seqpag:= '1';
t_parcelasvar.first;
t_parcelasvar.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,'1']);
while ((not t_parcelasvar.eof) and (t_parcelasvarempresa.asstring = t_parametrosempresa.asstring) and (t_parcelasvarfilial.asstring = t_parametrosfilial.asstring) and (t_parcelasvarprocesso.asstring = me_nossaref.text) and (t_parcelasvarfatura.asstring = me_fatura.text)) do begin
      if (v_seqpag <= t_parcelasvarsequencial.asstring) then v_seqpag := inttostr(strtoint(t_parcelasvarsequencial.asstring)+1);
      t_parcelasvar.next;
end;

while t_parcelasvar.state = dsinsert do begin
end;
t_parcelasvar.append;
t_parcelasvarEmpresa.asstring          := t_parametrosempresa.asstring;
t_parcelasvarFilial.asstring           := t_parametrosfilial.asstring;
t_parcelasvarProcesso.asstring         := me_nossaref.text;
t_parcelasvarFatura.asstring           := me_fatura.text;
t_parcelasvarSequencial.asstring       := v_seqpag;
T_parcelasvarPercentual.asstring       := me_percentual.text;
T_parcelasvarvalor.asstring            := me_valor3.text;
T_parcelasvarDatadePagamento.asstring  := me_datapar.text;
T_parcelasvar.post;

Q_parcvar.close;
Q_parcvar.open;
b_incluiparvar.Enabled := false;
me_percentual.text     :='';
me_datapar.text        :='';
me_percentual.setfocus;

end;
end;

procedure TF_processos.me_percentualExit(Sender: TObject);
begin
b_incluiparvar.Enabled := true;
me_valor3.Text := floattostr((strtofloat(me_percentual.text)*t_faturasvalortotal.asfloat)/100);
end;

procedure TF_processos.DBG_parcvarCellClick(Column: TColumn);
begin
me_percentual.text := Q_parcvarpercentual.asstring;
me_datapar.text    := Q_parcvardatadepagamento.asstring;
v_seqpag           := Q_parcvarsequencial.asstring;
b_incluiparvar.Enabled := false;
b_excluiparvar.enabled := true;
end;

procedure TF_processos.b_excluiparvarClick(Sender: TObject);
begin
T_parcelasvar.first;
if T_parcelasvar.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,v_seqpag]) then begin
   T_parcelasvar.delete;
end;
Q_parcvar.close;
Q_parcvar.open;
b_excluiparvar.enabled := false;
b_incluiparvar.Enabled := false;
me_percentual.text     :='';
me_datapar.text        :='';
me_percentual.setfocus;

end;

procedure TF_processos.rg_parcelasClick(Sender: TObject);
begin
if rg_parcelas.itemindex = 0 then begin
   p_fixas.enabled := true;
   p_varia.enabled := false;
   me_nparcelas.setfocus;
   end
else begin
   p_fixas.enabled := false;
   p_varia.enabled := true;
   me_percentual.setfocus;
   end;

end;

procedure TF_processos.TS_acrescimosShow(Sender: TObject);
begin

{verifica os tipos de acrescimos por incoterms}
cb_tipoacres.enabled := false;
t_tiposacrescimos.first;
cb_tipoacres.clear;
while not t_tiposacrescimos.eof do begin
      if (t_tiposacrescimosincoterm.asstring = T_faturasIncoterm.asstring) then cb_tipoacres.items.add(copy(t_tiposacrescimosCODIGO.asstring+'   ',1,4) +' '+t_tiposacrescimosDESCRICAO.asstring);
      t_tiposacrescimos.next;
end;
cb_tipoacres.enabled := true;

{verifica acrescimos por fatura}
Q_acrescimos.Close;
Q_acrescimos.Params[0].AsString := t_parametrosempresa.asstring;
Q_acrescimos.Params[1].AsString := t_parametrosfilial.asstring;
Q_acrescimos.Params[2].AsString := me_nossaref.text;
Q_acrescimos.Params[3].AsString := me_fatura.text;
Q_acrescimos.open;

end;

procedure TF_processos.TS_deducoesShow(Sender: TObject);
begin

{verifica os tipos de deducoes por incoterms}
cb_tipodedu.enabled := false;
t_tiposreducoes.first;
cb_tipodedu.clear;
while not t_tiposreducoes.eof do begin
      if (t_tiposreducoesincoterm.asstring = T_faturasIncoterm.asstring) then cb_tipodedu.items.add(copy(t_tiposreducoesCODIGO.asstring+'   ',1,4) +' '+t_tiposreducoesDESCRICAO.asstring);
      t_tiposreducoes.next;
end;
cb_tipodedu.enabled := true;
{verifica deducoes por fatura}
Q_deducoes.Close;
Q_deducoes.Params[0].AsString := t_parametrosempresa.asstring;
Q_deducoes.Params[1].AsString := t_parametrosfilial.asstring;
Q_deducoes.Params[2].AsString := me_nossaref.text;
Q_deducoes.Params[3].AsString := me_fatura.text;
Q_deducoes.open;


end;

procedure TF_processos.cb_tipoacresClick(Sender: TObject);
begin
b_incluiacre.enabled := true;
b_excluiacre.enabled := false;
end;

procedure TF_processos.b_incluiacreClick(Sender: TObject);
var total_acres:real;
    taxa_acres:real;
    total_emb:real;
    total_frete_int:real;
    total_seguro_int:real;
    total_outras_import:real;
    total_startup:real;
    total_jurosfin:real;
    total_montagem:real;
    total_Frete_Interno_exp:real;
    total_carga_exp:real;
    total_outras_export:real;
    total_frete_fatura:real;
    total_seguro_fatura:real;
    total_carga_imp:real;

    ttotal_emb:real;
    ttotal_frete_int:real;
    ttotal_seguro_int:real;
    ttotal_outras_import:real;
    ttotal_startup:real;
    ttotal_jurosfin:real;
    ttotal_montagem:real;
    ttotal_Frete_Interno_exp:real;
    ttotal_carga_exp:real;
    ttotal_outras_export:real;
    ttotal_frete_fatura:real;
    ttotal_seguro_fatura:real;
    ttotal_carga_imp:real;

begin
t_acrescimos.first;
if t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,copy(cb_tipoacres.text,1,4)])then begin
   MessageDlg('Acrescimo já cadastrado!', mtInformation,[mbOk], 0);
   cb_tipoacres.setfocus;
   end
else begin
   while t_acrescimos.state = dsinsert do begin
   end;
   t_acrescimos.append;
   T_acrescimosEmpresa.asstring             := t_parametrosempresa.asstring;
   T_acrescimosFilial.asstring              := t_parametrosfilial.asstring;
   T_acrescimosProcesso.asstring            := me_nossaref.text;
   T_acrescimosFatura.asstring              := me_fatura.text;
   T_acrescimosCD_MET_ACRES_VALOR.asstring  := copy(cb_tipoacres.text,1,4);
   T_acrescimosDescricao.asstring           := copy(cb_tipoacres.text,6,50);
   T_acrescimosVL_ACRESCIMO_MOEDA.asstring  := me_valoracrescimo.text;
   T_acrescimosCD_MD_NEGOC_ACRES.asstring   := t_faturasmoeda.asstring;
   {T_acrescimosVL_ACRESCIMO_MN.asstring    :=}
   t_acrescimos.post;
   me_valoracrescimo.text := '';
   Q_acrescimos.close;
   Q_acrescimos.open;

   {rateio de acrescimos}
   total_acres := 0;
   total_emb := 0;
   total_frete_int := 0;
   total_seguro_int := 0;
   total_outras_import := 0;
   total_startup := 0;
   total_jurosfin := 0;
   total_montagem := 0;
   total_Frete_Interno_exp := 0;
   total_carga_exp := 0;
   total_outras_export := 0;
   total_frete_fatura := 0;
   total_seguro_fatura := 0;
   total_carga_imp := 0;
   Q_acrescimos.first;
   while not Q_acrescimos.eof do begin
         {total_acres := (total_acres + Q_acrescimosvl_acrescimo_moeda.asfloat);
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '1  ' then  total_emb               := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '10 ' then  total_frete_int         := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '11 ' then  total_seguro_int        := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '12 ' then  total_outras_import     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '13 ' then  total_startup           := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '2  ' then  total_jurosfin          := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '3  ' then  total_montagem          := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '4  ' then  total_Frete_Interno_exp := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '16 ' then  total_carga_exp         := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '6  ' then  total_outras_export     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '7  ' then  total_frete_fatura      := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '8  ' then  total_seguro_fatura     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '9  ' then  total_carga_imp         := q_acrescimosvl_acrescimo_moeda.asfloat;    }

         total_acres := (total_acres + Q_acrescimosvl_acrescimo_moeda.asfloat);
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '2  ' then  total_emb               := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '9  ' then  total_carga_imp         := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '10 ' then  total_Frete_Interno_exp := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '11 ' then  total_seguro_int        := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '12 ' then  total_carga_exp         := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '13 ' then  total_frete_fatura      := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '14 ' then  total_seguro_fatura     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '15 ' then  total_outras_import     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '16 ' then  total_frete_int         := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '17 ' then  total_outras_export     := q_acrescimosvl_acrescimo_moeda.asfloat;
         //    if q_acrescimosCD_MET_ACRES_VALOR.asstring = '13 ' then  total_startup           := q_acrescimosvl_acrescimo_moeda.asfloat;
         //    if q_acrescimosCD_MET_ACRES_VALOR.asstring = '2  ' then  total_jurosfin          := q_acrescimosvl_acrescimo_moeda.asfloat;
         //    if q_acrescimosCD_MET_ACRES_VALOR.asstring = '3  ' then  total_montagem          := q_acrescimosvl_acrescimo_moeda.asfloat;
         Q_acrescimos.next;
   end;
   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);

   taxa_acres               :=(total_acres/T_faturasPesoTotal_acertado.asfloat);
   ttotal_emb               :=(total_emb              /T_faturasPesoTotal_acertado.asfloat);
   ttotal_frete_int         :=(total_frete_int       /T_faturasPesoTotal_acertado.asfloat);
   ttotal_seguro_int        :=(total_seguro_int       /T_faturasPesoTotal_acertado.asfloat);
   ttotal_outras_import     :=(total_outras_import    /T_faturasPesoTotal_acertado.asfloat);
   ttotal_startup           :=(total_startup          /T_faturasPesoTotal_acertado.asfloat);
   ttotal_jurosfin          :=(total_jurosfin         /T_faturasPesoTotal_acertado.asfloat);
   ttotal_montagem          :=(total_montagem         /T_faturasPesoTotal_acertado.asfloat);
   ttotal_Frete_Interno_exp :=(total_Frete_Interno_exp/T_faturasPesoTotal_acertado.asfloat);
   ttotal_carga_exp         :=(total_carga_exp        /T_faturasPesoTotal_acertado.asfloat);
   ttotal_outras_export     :=(total_outras_export    /T_faturasPesoTotal_acertado.asfloat);
   ttotal_frete_fatura      :=(total_frete_fatura     /T_faturasPesoTotal_acertado.asfloat);
   ttotal_seguro_fatura     :=(total_seguro_fatura    /T_faturasPesoTotal_acertado.asfloat);
   ttotal_carga_imp         :=(total_carga_imp        /T_faturasPesoTotal_acertado.asfloat);
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
         //while t_itensfaturas.state = dsedit do begin
         //end;
         t_itensfaturas.edit;
         t_itensfaturasRateio_Acrescimos.asfloat         := (t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_acres);
         T_itensfaturasRateio_Embalagem.asfloat          := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_emb              );
         T_itensfaturasRateio_Frete_Interno_imp.asfloat  := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_frete_int        );
         T_itensfaturasRateio_Seguro_Interno.asfloat     := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_seguro_int       );
         T_itensfaturasRateio_outras_import.asfloat      := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_outras_import    );
         T_itensfaturasRateio_startup.asfloat            := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_startup          );
         T_itensfaturasRateio_jurosfin.asfloat           := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_jurosfin         );
         T_itensfaturasRateio_montagem.asfloat           := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_montagem         );
         T_itensfaturasRateio_Frete_Interno_exp.asfloat  := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_Frete_Interno_exp);
         T_itensfaturasRateio_carga_exp.asfloat          := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_carga_exp        );
         T_itensfaturasRateio_outras_export.asfloat      := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_outras_export    );
         T_itensfaturasRateio_frete_fatura.asfloat       := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_frete_fatura     );
         T_itensfaturasRateio_seguro_fatura.asfloat      := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_seguro_fatura    );
         T_itensfaturasRateio_carga_imp.asfloat          := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_carga_imp        );
         t_itensfaturas.post;
         t_itensfaturas.next;
   end;

   b_incluiacre.enabled := false;
   cb_itensClick(Sender);
end;

end;

procedure TF_processos.DBG_acrescimosCellClick(Column: TColumn);
begin

cb_tipoacres.text      := q_acrescimosCD_MET_ACRES_VALOR.asstring;
me_valoracrescimo.text := q_acrescimosVL_ACRESCIMO_MOEDA.asstring;
b_excluiacre.enabled   := true;
b_incluiacre.enabled   := false;
Q_acrescimos.close;
Q_acrescimos.open;
b_excluiacre.setfocus;

end;

procedure TF_processos.cb_tipodeduClick(Sender: TObject);
begin
b_incluidedu.enabled := true;
b_excluidedu.enabled := false;
end;

procedure TF_processos.b_incluideduClick(Sender: TObject);
var total_dedu:real;
    taxa_dedu:real;

begin
t_deducoes.first;
if t_deducoes.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,copy(cb_tipodedu.text,1,4)])then begin
   MessageDlg('Dedução já cadastrada!', mtInformation,[mbOk], 0);
   cb_tipodedu.setfocus;
   end
else begin
   while t_deducoes.state = dsinsert do begin
   end;
   t_deducoes.append;
   t_deducoesEmpresa.asstring             := t_parametrosempresa.asstring;
   t_deducoesFilial.asstring              := t_parametrosfilial.asstring;
   t_deducoesProcesso.asstring            := me_nossaref.text;
   t_deducoesFatura.asstring              := me_fatura.text;
   t_deducoesCD_MET_DEDUC_VALOR.asstring  := copy(cb_tipodedu.text,1,4);
   t_deducoesDescricao.asstring           := copy(cb_tipodedu.text,6,50);
   t_deducoesVL_DEDUCAO_MNEG.asstring     := me_valordedu.text;
   t_deducoesCD_MD_NEGOC_DEDUC.asstring   := t_faturasmoeda.asstring;
   {t_deducoesVL_DEDUCAO_MN.asstring     :=}
   t_deducoes.post;
   me_valordedu.text := '';
   Q_deducoes.close;
   Q_deducoes.open;

   {rateio de deducoes}
   total_dedu := 0;
   Q_deducoes.first;
   while not Q_deducoes.eof do begin
         total_dedu := (total_dedu + Q_deducoesvl_deducao_mneg.asfloat);
         Q_deducoes.next;
   end;
   taxa_dedu :=(total_dedu/T_faturasPesoTotal_acertado.asfloat);
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
         //while t_itensfaturas.state = dsedit do begin
         //end;
         t_itensfaturas.edit;
         t_itensfaturasRateio_deducoes.asfloat := (t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_dedu);
         t_itensfaturas.post;
         t_itensfaturas.next;
   end;

   b_incluidedu.enabled := false;
   cb_itensClick(Sender);
end;
end;

procedure TF_processos.b_excluiacreClick(Sender: TObject);
var total_acres:real;
    taxa_acres:real;
    total_emb:real;
    total_frete_int:real;
    total_seguro_int:real;
    total_outras_import:real;
    total_startup:real;
    total_jurosfin:real;
    total_montagem:real;
    total_Frete_Interno_exp:real;
    total_carga_exp:real;
    total_outras_export:real;
    total_frete_fatura:real;
    total_seguro_fatura:real;
    total_carga_imp:real;

    ttotal_emb:real;
    ttotal_frete_int:real;
    ttotal_seguro_int:real;
    ttotal_outras_import:real;
    ttotal_startup:real;
    ttotal_jurosfin:real;
    ttotal_montagem:real;
    ttotal_Frete_Interno_exp:real;
    ttotal_carga_exp:real;
    ttotal_outras_export:real;
    ttotal_frete_fatura:real;
    ttotal_seguro_fatura:real;
    ttotal_carga_imp:real;

begin
t_acrescimos.first;
if t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,copy(cb_tipoacres.text,1,4)])then begin
   t_acrescimos.delete;
   Q_acrescimos.close;
   Q_acrescimos.open;
   {rateio de acrescimos}
   total_acres := 0;
   total_emb := 0;
   total_frete_int := 0;
   total_seguro_int := 0;
   total_outras_import := 0;
   total_startup := 0;
   total_jurosfin := 0;
   total_montagem := 0;
   total_Frete_Interno_exp := 0;
   total_carga_exp := 0;
   total_outras_export := 0;
   total_frete_fatura := 0;
   total_seguro_fatura := 0;
   total_carga_imp := 0;
   Q_acrescimos.first;
   while not Q_acrescimos.eof do begin
        { total_acres := (total_acres + Q_acrescimosvl_acrescimo_moeda.asfloat);
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '1  ' then  total_emb               := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '10 ' then  total_frete_int         := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '11 ' then  total_seguro_int        := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '12 ' then  total_outras_import     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '13 ' then  total_startup           := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '2  ' then  total_jurosfin          := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '3  ' then  total_montagem          := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '4  ' then  total_Frete_Interno_exp := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '16 ' then  total_carga_exp         := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '6  ' then  total_outras_export     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '7  ' then  total_frete_fatura      := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '8  ' then  total_seguro_fatura     := q_acrescimosvl_acrescimo_moeda.asfloat;
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '9  ' then  total_carga_imp         := q_acrescimosvl_acrescimo_moeda.asfloat;  }

         total_acres := (total_acres + Q_acrescimosvl_acrescimo_moeda.asfloat);
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '2  ' then  total_emb               := q_acrescimosvl_acrescimo_moeda.asfloat; //EMBALAGENS E RECIPIENTES
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '9  ' then  total_carga_imp         := q_acrescimosvl_acrescimo_moeda.asfloat; //VALOR QUALQUER PARCELA
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '10 ' then  total_Frete_Interno_exp := q_acrescimosvl_acrescimo_moeda.asfloat; //FRETE INTERNO -PAIS DE EXPORTAÇÃO
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '11 ' then  total_seguro_int        := q_acrescimosvl_acrescimo_moeda.asfloat; //SEGURO INTERNO -PAIS DE EXPORTAÇÃO
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '12 ' then  total_carga_exp         := q_acrescimosvl_acrescimo_moeda.asfloat; //CARGA,DESCARGA E MANUSEIO - PAIS DE EXPORTAÇÃO
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '13 ' then  total_frete_fatura      := q_acrescimosvl_acrescimo_moeda.asfloat; //FRETE INTERNACIONAL
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '14 ' then  total_seguro_fatura     := q_acrescimosvl_acrescimo_moeda.asfloat; //SEGURO INTERNACIONAL
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '15 ' then  total_outras_import     := q_acrescimosvl_acrescimo_moeda.asfloat; //CARGA,DESCARGA E MANUSEIO INTERNACIONAIS
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '16 ' then  total_frete_int         := q_acrescimosvl_acrescimo_moeda.asfloat; //CARGA,DESCARGA E MANUSEIO NA ENTRADA - PAIS DE IMPORTAÇÃO
         if q_acrescimosCD_MET_ACRES_VALOR.asstring = '17 ' then  total_outras_export     := q_acrescimosvl_acrescimo_moeda.asfloat; //OUROS ACRESCIMO AO VALOR ADUANEIRO
         //    if q_acrescimosCD_MET_ACRES_VALOR.asstring = '13 ' then  total_startup           := q_acrescimosvl_acrescimo_moeda.asfloat;
         //    if q_acrescimosCD_MET_ACRES_VALOR.asstring = '2  ' then  total_jurosfin          := q_acrescimosvl_acrescimo_moeda.asfloat;
         //    if q_acrescimosCD_MET_ACRES_VALOR.asstring = '3  ' then  total_montagem          := q_acrescimosvl_acrescimo_moeda.asfloat;
          Q_acrescimos.next;
   end;
   taxa_acres               :=(total_acres/T_faturasPesoTotal_acertado.asfloat);
   ttotal_emb               :=(total_emb              /T_faturasPesoTotal_acertado.asfloat);
   ttotal_frete_int         :=(total_frete_int       /T_faturasPesoTotal_acertado.asfloat);
   ttotal_seguro_int        :=(total_seguro_int       /T_faturasPesoTotal_acertado.asfloat);
   ttotal_outras_import     :=(total_outras_import    /T_faturasPesoTotal_acertado.asfloat);
   ttotal_startup           :=(total_startup          /T_faturasPesoTotal_acertado.asfloat);
   ttotal_jurosfin          :=(total_jurosfin         /T_faturasPesoTotal_acertado.asfloat);
   ttotal_montagem          :=(total_montagem         /T_faturasPesoTotal_acertado.asfloat);
   ttotal_Frete_Interno_exp :=(total_Frete_Interno_exp/T_faturasPesoTotal_acertado.asfloat);
   ttotal_carga_exp         :=(total_carga_exp        /T_faturasPesoTotal_acertado.asfloat);
   ttotal_outras_export     :=(total_outras_export    /T_faturasPesoTotal_acertado.asfloat);
   ttotal_frete_fatura      :=(total_frete_fatura     /T_faturasPesoTotal_acertado.asfloat);
   ttotal_seguro_fatura     :=(total_seguro_fatura    /T_faturasPesoTotal_acertado.asfloat);
   ttotal_carga_imp         :=(total_carga_imp        /T_faturasPesoTotal_acertado.asfloat);
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
         //while t_itensfaturas.state = dsedit do begin
         //end;
         t_itensfaturas.edit;
         t_itensfaturasRateio_Acrescimos.asfloat         := (t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_acres);
         T_itensfaturasRateio_Embalagem.asfloat          := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_emb              );
         T_itensfaturasRateio_Frete_Interno_imp.asfloat  := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_frete_int        );
         T_itensfaturasRateio_Seguro_Interno.asfloat     := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_seguro_int       );
         T_itensfaturasRateio_outras_import.asfloat      := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_outras_import    );
         T_itensfaturasRateio_startup.asfloat            := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_startup          );
         T_itensfaturasRateio_jurosfin.asfloat           := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_jurosfin         );
         T_itensfaturasRateio_montagem.asfloat           := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_montagem         );
         T_itensfaturasRateio_Frete_Interno_exp.asfloat  := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_Frete_Interno_exp);
         T_itensfaturasRateio_carga_exp.asfloat          := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_carga_exp        );
         T_itensfaturasRateio_outras_export.asfloat      := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_outras_export    );
         T_itensfaturasRateio_frete_fatura.asfloat       := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_frete_fatura     );
         T_itensfaturasRateio_seguro_fatura.asfloat      := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_seguro_fatura    );
         T_itensfaturasRateio_carga_imp.asfloat          := (t_itensfaturasPeso_Unitario_acertado.asfloat*ttotal_carga_imp        );
         t_itensfaturas.post;
         t_itensfaturas.next;
   end;
   b_incluiacre.enabled := false;
   b_excluiacre.enabled := false;
   cb_itensClick(Sender);
end;


end;

procedure TF_processos.b_excluideduClick(Sender: TObject);
var total_dedu:real;
    taxa_dedu:real;

begin
t_deducoes.first;
if t_deducoes.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,copy(cb_tipodedu.text,1,4)])then begin
   t_deducoes.delete;
   Q_deducoes.close;
   Q_deducoes.open;

   {rateio de deducoes}
   total_dedu := 0;
   Q_deducoes.first;
   while not Q_deducoes.eof do begin
         total_dedu := (total_dedu + Q_deducoesvl_deducao_mneg.asfloat);
         Q_deducoes.next;
   end;
   taxa_dedu :=(total_dedu/T_faturasPesoTotal_acertado.asfloat);
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
         //while t_itensfaturas.state = dsedit do begin
         //end;
         t_itensfaturas.edit;
         t_itensfaturasRateio_deducoes.asfloat := (t_itensfaturasPeso_Unitario_acertado.asfloat*taxa_dedu);
         t_itensfaturas.post;
         t_itensfaturas.next;
   end;

   b_incluidedu.enabled := false;
   b_excluidedu.enabled := false;
   cb_itensClick(Sender);
end;
end;

procedure TF_processos.DBG_deducoesCellClick(Column: TColumn);
begin

cb_tipodedu.text       := q_deducoesCD_MET_DEDUC_VALOR.asstring;
me_valordedu.text      := q_deducoesVL_DEDUCAO_MNEG.asstring;
b_excluidedu.enabled   := true;
b_incluidedu.enabled   := false;
Q_deducoes.close;
Q_deducoes.open;
b_excluidedu.setfocus;

end;

procedure TF_processos.TS_transporteShow(Sender: TObject);
begin

{verifica os transportadores por filial}
t_transportadores.first;
cb_transportadores1.clear;
cb_transportadores2.clear;
cb_transportadores3.clear;
cb_transportadores4.clear;
cb_transportadores5.clear;
cb_transportadores6.clear;
while not t_transportadores.eof do begin
      if (t_transportadoresempresa.asstring = t_parametrosempresa.asstring) and (t_transportadoresfilial.asstring = t_parametrosfilial.asstring ) then begin
          cb_transportadores1.items.add(copy(t_transportadorescodigo.asstring+'   ',1,4) +' '+t_transportadoresrazosocial.asstring);
          cb_transportadores2.items.add(copy(t_transportadorescodigo.asstring+'   ',1,4) +' '+t_transportadoresrazosocial.asstring);
          cb_transportadores3.items.add(copy(t_transportadorescodigo.asstring+'   ',1,4) +' '+t_transportadoresrazosocial.asstring);
          cb_transportadores4.items.add(copy(t_transportadorescodigo.asstring+'   ',1,4) +' '+t_transportadoresrazosocial.asstring);
          cb_transportadores5.items.add(copy(t_transportadorescodigo.asstring+'   ',1,4) +' '+t_transportadoresrazosocial.asstring);
          cb_transportadores6.items.add(copy(t_transportadorescodigo.asstring+'   ',1,4) +' '+t_transportadoresrazosocial.asstring);
      end;
      t_transportadores.next;
end;

T_transportadores.first;
T_transportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,T_transpprocessotransportador.asstring]);
cb_transportadores1.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
cb_transportadores2.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
cb_transportadores3.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
cb_transportadores4.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
cb_transportadores5.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;
cb_transportadores6.text := copy(T_transpprocessotransportador.asstring+'   ',1,4) + ' '+ T_transportadoresRazoSocial.asstring;

end;

procedure TF_processos.cb_multiClick(Sender: TObject);
begin
//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
t_transpprocessomultimodal.asboolean := cb_multi.checked;
T_transpprocesso.post;
end;

procedure TF_processos.B_gravaaerClick(Sender: TObject);
begin
if me_datatrans.text <> '' then begin
//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '4';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring := '';
T_transpprocessoTransportador.asstring := copy(cb_transportadores1.text+'   ',1,4);
T_transpprocessoTipodoccarga.asstring  := copy(cb_tipodocs1.text+'   ',1,2);
T_transpprocessoNumerodoccarga.asstring := me_ident.text;
T_transpprocessoNumeromaster.asstring := me_master.text;
T_transpprocessoLocal.asstring := me_local.text;
T_transpprocessoData.asstring := me_datatrans.text;
T_transpprocessoUtilizacao.asstring := copy(cb_utilizacao.text,1,1);
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);
end;

procedure TF_processos.b_gravamarClick(Sender: TObject);
begin
if me_datatrans1.text <> '' then begin
//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '1';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring    := me_embarcacao.text;
T_transpprocessoTransportador.asstring := copy(cb_transportadores2.text+'   ',1,4);
T_transpprocessoTipodoccarga.asstring  := copy(cb_tipodocs2.text+'   ',1,2);
T_transpprocessoNumerodoccarga.asstring := me_ident1.text;
T_transpprocessoNumeromaster.asstring := me_master1.text;
T_transpprocessoLocal.asstring := me_local1.text;
T_transpprocessoData.asstring := me_datatrans1.text;
T_transpprocessoUtilizacao.asstring := copy(cb_utilizacao1.text,1,1);
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.b_gravarodClick(Sender: TObject);
begin
if me_datatrans2.text <> '' then begin
///while t_transpprocesso.state = dsedit do begin
///end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '7';
T_transpprocessoPLaca.asstring := me_placa1.text;
T_transpprocessoEmbarcacao.asstring    := '';
T_transpprocessoTransportador.asstring := copy(cb_transportadores3.text+'   ',1,4);
T_transpprocessoTipodoccarga.asstring  := '13';
T_transpprocessoNumerodoccarga.asstring := me_numerocrt.text;
T_transpprocessoNumeromaster.asstring := '';
T_transpprocessoLocal.asstring := me_local2.text;
T_transpprocessoData.asstring := me_datatrans2.text;
T_transpprocessoUtilizacao.asstring := copy(cb_utilizacao2.text,1,1);
T_transpprocessolacre.asstring            := me_lacrevei.text;
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.b_gravaferClick(Sender: TObject);
begin
if me_datatrans3.text <> '' then begin
///while t_transpprocesso.state = dsedit do begin
///end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '6';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring    := '';
T_transpprocessoTransportador.asstring := copy(cb_transportadores4.text+'   ',1,4);
T_transpprocessoTipodoccarga.asstring  := copy(cb_tipodocs3.text+'   ',1,2);
T_transpprocessoNumerodoccarga.asstring := me_ident3.text;
T_transpprocessoNumeromaster.asstring := me_master3.text;
T_transpprocessoLocal.asstring := me_local3.text;
T_transpprocessoData.asstring := me_datatrans3.text;
T_transpprocessoUtilizacao.asstring := copy(cb_utilizacao4.text,1,1);
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);


end;

procedure TF_processos.b_gravaposClick(Sender: TObject);
begin
if me_datapos.text <> '' then begin
///while t_transpprocesso.state = dsedit do begin
///end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '5';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring    := '';
T_transpprocessoTransportador.asstring := '';
T_transpprocessoTipodoccarga.asstring  := '20';
T_transpprocessoNumerodoccarga.asstring := me_barras.text;
T_transpprocessoNumeromaster.asstring := '';
T_transpprocessoLocal.asstring := me_localpos.text;
T_transpprocessoData.asstring := me_datapos.text;
T_transpprocessoUtilizacao.asstring := '';
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.b_gravafluClick(Sender: TObject);
begin
if me_datatrans4.text <> '' then begin
///while t_transpprocesso.state = dsedit do begin
///end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '2';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring    := me_embarcacao4.text;
T_transpprocessoTransportador.asstring := copy(cb_transportadores5.text+'   ',1,4);
T_transpprocessoTipodoccarga.asstring  := copy(cb_tipodocs4.text+'   ',1,2);
T_transpprocessoNumerodoccarga.asstring := me_ident4.text;
T_transpprocessoNumeromaster.asstring := me_master4.text;
T_transpprocessoLocal.asstring := me_local4.text;
T_transpprocessoData.asstring := me_datatrans4.text;
T_transpprocessoUtilizacao.asstring := copy(cb_utilizacao5.text,1,1);
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.b_gravalacClick(Sender: TObject);
begin
if me_datatrans5.text <> '' then begin
//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '3';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring    := me_embarcacao5.text;
T_transpprocessoTransportador.asstring := copy(cb_transportadores6.text+'   ',1,4);
T_transpprocessoTipodoccarga.asstring  := copy(cb_tipodocs5.text+'   ',1,2);
T_transpprocessoNumerodoccarga.asstring := me_ident5.text;
T_transpprocessoNumeromaster.asstring := me_master5.text;
T_transpprocessoLocal.asstring := me_local5.text;
T_transpprocessoData.asstring := me_datatrans5.text;
T_transpprocessoUtilizacao.asstring := copy(cb_utilizacao6.text,1,1);
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.b_gravameiClick(Sender: TObject);
begin
if me_datatrans6.text <> '' then begin
//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '9';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring    := '';
T_transpprocessoTransportador.asstring := '';
T_transpprocessoTipodoccarga.asstring  := '';
T_transpprocessoNumerodoccarga.asstring := '';
T_transpprocessoNumeromaster.asstring := '';
T_transpprocessoLocal.asstring := me_local6.text;
T_transpprocessoData.asstring := me_datatrans6.text;
T_transpprocessoUtilizacao.asstring := '';
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.b_gravaducClick(Sender: TObject);
begin
if me_datatrans7.text <> '' then begin
//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
t_transpprocessovia.asstring := '8';
T_transpprocessoPLaca.asstring := '';
T_transpprocessoEmbarcacao.asstring    := '';
T_transpprocessoTransportador.asstring := '';
T_transpprocessoTipodoccarga.asstring  := '';
T_transpprocessoNumerodoccarga.asstring := '';
T_transpprocessoNumeromaster.asstring := '';
T_transpprocessoLocal.asstring := me_local7.text;
T_transpprocessoData.asstring := me_datatrans7.text;
T_transpprocessoUtilizacao.asstring := '';
T_transpprocesso.post;
end
else MessageDlg('Informe a Data!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.ts_tipocargaEnter(Sender: TObject);
begin
{verifica cargas por processo}
q_concargas.Close;
q_concargas.Params[0].AsString := t_parametrosempresa.asstring;
q_concargas.Params[1].AsString := t_parametrosfilial.asstring;
q_concargas.Params[2].AsString := me_nossaref.text;
q_concargas.open;

end;

procedure TF_processos.ts_tipocargaShow(Sender: TObject);
begin
{verifica os tipos de cargas}
t_tipocarga.first;
cb_tipocarga.clear;
while not t_tipocarga.eof do begin
      cb_tipocarga.items.add(copy(T_tipocargaCODIGO.asstring+'   ',1,4) +' '+T_tipocargaDESCRICAO.asstring);
      t_tipocarga.next;
end;


end;

procedure TF_processos.b_incluicargaClick(Sender: TObject);
begin
  t_concargas.first;
  if t_concargas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_codcarga.text])then begin
   MessageDlg('Código já cadastrado!', mtInformation,[mbOk], 0);
   me_codcarga.setfocus;
   end
else begin
   while t_concargas.state = dsinsert do begin
   end;
   t_concargas.append;
   t_concargasEmpresa.asstring             := t_parametrosempresa.asstring;
   t_concargasFilial.asstring              := t_parametrosfilial.asstring;
   t_concargasProcesso.asstring            := me_nossaref.text;
   t_concargasCodigo.asstring              := me_codcarga.text;
   t_concargasTipoCarga.asstring           := copy(cb_tipocarga.text,1,4);
   t_concargasDescricao_tipo.asstring      := copy(cb_tipocarga.text,6,50);
   t_concargasLacre.asstring               := me_lacre.text;
   t_concargas.post;
   Q_concargas.close;
   Q_concargas.open;
   me_codcarga.text  := '';
   cb_tipocarga.text := '';
   me_lacre.text     := '';
   me_codcarga.setfocus;
   b_incluicarga.enabled := false;
end;


end;

procedure TF_processos.me_codcargaExit(Sender: TObject);
begin
b_incluicarga.enabled := true;
b_excluicarga.enabled := false;
end;

procedure TF_processos.b_excluicargaClick(Sender: TObject);
begin
t_concargas.first;
if t_concargas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_codcarga.text])then begin
   t_concargas.delete;
   Q_concargas.close;
   Q_concargas.open;
   b_incluicarga.enabled := false;
   b_excluicarga.enabled := false;
   me_codcarga.text  := '';
   cb_tipocarga.text := '';
   me_lacre.text     := '';
   me_codcarga.setfocus;

end;

end;

procedure TF_processos.DBG_tcargasCellClick(Column: TColumn);
begin

cb_tipocarga.text      := q_concargastipocarga.asstring;
me_codcarga.text       := q_concargascodigo.asstring;
me_lacre.text          := q_concargaslacre.asstring;
b_excluicarga.enabled   := true;
b_incluicarga.enabled   := false;
Q_concargas.close;
Q_concargas.open;
Q_concargas.active := true;
b_excluicarga.setfocus;

end;

procedure TF_processos.ts_informaShow(Sender: TObject);
begin
{verifica os paises}
t_pais.first;
cb_pais.clear;
while not t_pais.eof do begin
      cb_pais.items.add(copy(T_paisCODIGO.asstring+'  ',1,3)+' '+T_paisDESCRICAO.asstring);
      t_pais.next;
end;

{verifica as urfs}
t_urf.first;
cb_urf.clear;
while not t_urf.eof do begin
      cb_urf.items.add(copy(T_urfCODIGO.asstring+'       ',1,7)+' '+T_urfDESCRICAO.asstring);
      t_urf.next;
end;

{verifica os tipos de moedas para frete e seguro}
t_moeda.first;
cb_moedasfrete.clear;
cb_moedasseguro.clear;
cb_moedasfob.clear;
while not t_moeda.eof do begin
      cb_moedasfrete.items.add(t_moedacodigo.asstring+' '+t_moedadescricao.asstring);
      cb_moedasseguro.items.add(t_moedacodigo.asstring+' '+t_moedadescricao.asstring);
      cb_moedasfob.items.add(t_moedacodigo.asstring+' '+t_moedadescricao.asstring);
      t_moeda.next;
end;

if t_pais.findkey([T_transpprocessoPais_Procedencia.asstring])then cb_pais.text := T_transpprocessoPais_Procedencia.asstring+' '+T_paisDESCRICAO.asstring;
if t_urf.findkey([T_transpprocessoURF_CHEGADA.asstring]) then cb_urf.text  := T_urfCODIGO.asstring+ ' '+ T_urfDESCRICAO.asstring;
if t_moeda.findkey([T_transpprocessoMoeda_Frete.asstring])then cb_moedasfrete.text := t_moedacodigo.asstring+' '+t_moedadescricao.asstring;
if t_moeda.findkey([T_transpprocessoMoeda_Seguro.asstring])then cb_moedasseguro.text := t_moedacodigo.asstring+' '+t_moedadescricao.asstring;
if t_moeda.findkey([T_transpprocessoMoeda_Despesas_ate_fob.asstring])then cb_moedasfob.text := t_moedacodigo.asstring+' '+t_moedadescricao.asstring;

me_pbruto.text   := T_transpprocessopeso_bruto.asstring;
me_agente.text   := T_transpprocessoagente.asstring;
me_prepaid.text  := T_transpprocessoFrete_Prepaid.asstring;
me_collect.text  := T_transpprocessoFrete_Collect.asstring;
me_ternac.text   := T_transpprocessoFrete_Ter_Nac.asstring;
t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_transpprocessoMoeda_Frete.asstring]);
me_fretetotal.text := floattostr(((strtofloat(me_prepaid.text)+strtofloat(me_collect.text))-strtofloat(me_ternac.text))*t_taxaconvtaxa_conversao.asfloat);
me_valseg.text   := T_transpprocessoValor_Seguro.asstring;
me_despfob.text  := T_transpprocessoValor_Despesas_ate_fob.asstring;

{verifica se para este processo existe fatura EXW}
gb_despfob.enabled := false;
t_faturas.first;
t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
       if t_faturasincoterm.asstring = 'EXW' then gb_despfob.enabled := true;
       t_faturas.next;
end;
end;


procedure TF_processos.rateio2(Sender: TObject);
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
t_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

{rateio de frete,seguro e despesas ate fob}
taxa_frete_pre :=(T_transpprocessoFrete_Prepaid.asfloat/T_transpprocessopeso_liquido.asfloat);
taxa_frete_col :=(T_transpprocessoFrete_Collect.asfloat/T_transpprocessopeso_liquido.asfloat);
taxa_frete_ter :=(T_transpprocessoFrete_Ter_Nac.asfloat/T_transpprocessopeso_liquido.asfloat);

peso_exw := 0;
v_valtot := 0;
t_faturas.first;
t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando Faturas EXW...',0,false);
while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
       processamento('Aguarde verificando Faturas EXW...',0,false);
       if t_faturasincoterm.asstring = 'EXW' then peso_exw := (peso_exw+T_faturasPesoTotal_Acertado.asfloat);
       {v_valtot := (v_valtot+t_faturasvalortotal.asfloat);}
       if T_faturasCoberturaCambial.asstring<>'4' then begin
          t_faturas.edit;
          if T_faturasPeriodicidade.asstring = '' then
             t_faturasdt_prev_pag_cambio.asdatetime   := t_transpprocessodata.asdatetime
          else
             t_faturasdt_prev_pag_cambio.asdatetime   := (t_transpprocessodata.asdatetime+strtoint(T_faturasPeriodicidade.asstring));
             
          if ((T_faturasModalidadedePagamento.asstring = '10') or
              (T_faturasModalidadedePagamento.asstring = '20') or
              (T_faturasModalidadedePagamento.asstring = '21')) then begin
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

if T_transpprocessoValor_Despesas_ate_fob.asfloat = 0 then taxa_desp_fob := 0
else taxa_desp_fob  :=(T_transpprocessoValor_Despesas_ate_fob.asfloat/peso_exw);

t_itensfaturas.first;
t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
      processamento('Aguarde rateio fretes Prepaid,Collect,Ternac...',0,false);
      ///t_itensfaturas.edit;
      t_faturas.first;
      if t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]) then begin
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
      t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
      if T_faturasacrescimos_reducoes.asboolean = false then
         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalortotal.asfloat+
      (t_itensfaturasRateio_Frete_Interno_imp.asfloat*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Seguro_Interno.asfloat   *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_outras_import.asfloat    *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_startup.asfloat          *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_Frete_Interno_exp.asfloat*t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_carga_exp.asfloat        *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_outras_export.asfloat    *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_frete_fatura.asfloat     *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_seguro_fatura.asfloat    *t_itensfaturasquantidade.asfloat)+
      (t_itensfaturasRateio_carga_imp.asfloat        *t_itensfaturasquantidade.asfloat))///+
///      (t_itensfaturasRateio_Acrescimos.asfloat       *t_itensfaturasquantidade.asfloat)-
///      (t_itensfaturasRateio_deducoes.asfloat         *t_itensfaturasquantidade.asfloat))
      else
         v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalortotal.asfloat;

      v_t_itensfaturasvalor_mercadoria := (v_t_itensfaturasvalor_aduaneiro-
      (t_itensfaturasRateio_Frete_Interno_imp.asfloat*t_itensfaturasquantidade.asfloat)-
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

      {calcula valor totaldo vmle em real para calculo do seguro}
      t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
      v_valtot := (v_valtot+(v_t_itensfaturasVMLE*t_taxaconvtaxa_conversao.asfloat));

      try
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
if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin

   processamento('Aguarde gravando arredondamento de frete para o 1 item de fatura...',0,false);
//   t_itensfaturas.edit;
   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);

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
t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando acrescimos das faturas...',0,false);
while (not t_acrescimos.eof) and (T_acrescimosEmpresa.asstring = t_parametrosempresa.asstring) and (T_acrescimosFilial.asstring = t_parametrosfilial.asstring)and(T_acrescimosProcesso.asstring = me_nossaref.text) do begin
        processamento('Aguarde verificando acrescimos das faturas...',0,false);
         if t_acrescimosCD_MET_ACRES_VALOR.asstring = '13 ' then  v_totfrete_fat   := (v_totfrete_fat+t_acrescimosvl_acrescimo_moeda.asfloat);
         t_acrescimos.next;
end;
processamento('Aguarde verificando acrescimos das faturas...',0,true);
if (v_totfrete_fat  = (t_transpprocessofrete_prepaid.asfloat+t_transpprocessofrete_collect.asfloat-t_transpprocessofrete_ter_nac.asfloat)) then begin

/// substitui por sql em 26042001
///    t_itensfaturas.first;
///    t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
///    while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
///          //while t_itensfaturas.state = dsedit do begin
///          //end;
///          t_itensfaturas.edit;
///          t_itensfaturasrateio_frete_fatura.asfloat := ((t_itensfaturasrateio_frete_prepaid.asfloat+t_itensfaturasrateio_frete_collect.asfloat)-t_itensfaturasrateio_frete_ternac.asfloat);
///          t_itensfaturas.post;
///          t_itensfaturas.next;
///    end;
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
t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
processamento('Aguarde verificando rateio seguro fatura...',0,false);
while (not t_acrescimos.eof) and (T_acrescimosEmpresa.asstring = t_parametrosempresa.asstring) and (T_acrescimosFilial.asstring = t_parametrosfilial.asstring)and(T_acrescimosProcesso.asstring = me_nossaref.text) do begin
      processamento('Aguarde verificando rateio seguro fatura...',0,false);
      if t_acrescimosCD_MET_ACRES_VALOR.asstring = '14 ' then  begin
         ////calculando total seguro fatura em reais
         t_faturas.first;
         t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_acrescimosfatura.asstring]);
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
t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
processamento('Aguarde rateio do seguro por vmle...',0,false);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
      //while t_itensfaturas.state = dsedit do begin
      //end;
///      t_itensfaturas.edit;
      processamento('Aguarde rateio do seguro por vmle...',0,false);
      t_faturas.first;
      t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
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
      t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_itensfaturasfatura.asstring]);
      if T_faturasacrescimos_reducoes.asboolean = false then
         v_t_itensfaturasvalor_aduaneiro  := (t_itensfaturasvalortotal.asfloat+
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
         v_t_itensfaturasvalor_aduaneiro  := t_itensfaturasvalortotal.asfloat;

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



procedure TF_processos.b_gravainfoClick(Sender: TObject);

begin
//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
T_transpprocessopeso_bruto.asstring       := me_pbruto.text;
T_transpprocessoagente.asstring           := me_agente.text;
T_transpprocessopais_procedencia.asstring := copy(cb_pais.text,1,3);
T_transpprocessourf_chegada.asstring      := copy(cb_urf.text,1,7);
T_transpprocessoMoeda_Frete.asstring      := copy(cb_moedasfrete.text,1,3);
T_transpprocessoFrete_Prepaid.asstring    := me_prepaid.text;
T_transpprocessoFrete_Collect.asstring    := me_collect.text;
T_transpprocessoFrete_Ter_Nac.asstring    := me_ternac.text;
T_transpprocessoMoeda_Seguro.asstring     := copy(cb_moedasseguro.text,1,3);
T_transpprocessoValor_Seguro.asstring     := me_valseg.text;
T_transpprocessoMoeda_Despesas_ate_fob.asstring     := copy(cb_moedasfob.text,1,3);
T_transpprocessoValor_Despesas_ate_fob.asstring     := me_despfob.text;

T_transpprocesso.post;
taxaconvn(f_processos);
rateio2(f_processos);
showmessage(v_usuario+' - Conhecimento Gravado.');

end;

procedure TF_processos.ts_volumesShow(Sender: TObject);
begin
{verifica os tipos de cargas}
t_tipoembalagem.first;
cb_embalagem.clear;
while not t_tipoembalagem.eof do begin
      cb_embalagem.items.add(copy(T_tipoembalagemCODIGO.asstring+'  ',1,2) +' '+T_tipoembalagemDESCRICAO.asstring);
      t_tipoembalagem.next;
end;

end;

procedure TF_processos.cb_embalagemExit(Sender: TObject);
begin
b_incluivol.enabled  := true;
b_excluivol.enabled  := false;
end;

procedure TF_processos.b_incluivolClick(Sender: TObject);
begin
t_embalagempro.first;
  if t_embalagempro.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,copy(cb_embalagem.text+'  ',1,2)])then begin
   MessageDlg('Tipo de Embalagem já cadastrado!', mtInformation,[mbOk], 0);
   cb_embalagem.setfocus;
   end
else begin
   while t_embalagempro.state = dsinsert do begin
   end;
   t_embalagempro.append;
   t_embalagemproEmpresa.asstring             := t_parametrosempresa.asstring;
   t_embalagemproFilial.asstring              := t_parametrosfilial.asstring;
   t_embalagemproProcesso.asstring            := me_nossaref.text;
   t_embalagemproTipoembalagem.asstring       := copy(cb_embalagem.text,1,2);
   t_embalagemproDescricaoembalagem.asstring  := copy(cb_embalagem.text,4,50);
   t_embalagemproquantidade.asstring          := me_qembalagem.text;
   t_embalagempro.post;
   Q_embalagempro.close;
   Q_embalagempro.open;
   me_qembalagem.text  := '';
   cb_embalagem.text := '';
   cb_embalagem.setfocus;
   b_incluivol.enabled := false;
end;

end;

procedure TF_processos.ts_volumesEnter(Sender: TObject);
begin
{verifica cargas por processo}
q_embalagempro.Close;
q_embalagempro.Params[0].AsString := t_parametrosempresa.asstring;
q_embalagempro.Params[1].AsString := t_parametrosfilial.asstring;
q_embalagempro.Params[2].AsString := me_nossaref.text;
q_embalagempro.open;

end;

procedure TF_processos.b_excluivolClick(Sender: TObject);
begin

t_embalagempro.first;
if t_embalagempro.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,copy(cb_embalagem.text,1,2)])then begin
   t_embalagempro.delete;
   Q_embalagempro.close;
   Q_embalagempro.open;
   b_incluivol.enabled := false;
   b_excluivol.enabled := false;
   me_qembalagem.text  := '';
   cb_embalagem.text := '';
   cb_embalagem.setfocus;
end;

end;

procedure TF_processos.DBG_embalagemproCellClick(Column: TColumn);
begin

cb_embalagem.text      := q_embalagemprotipoembalagem.asstring;
me_qembalagem.text     := q_embalagemproquantidade.asstring;
b_excluivol.enabled   := true;
b_incluivol.enabled   := false;
Q_embalagempro.close;
Q_embalagempro.open;
b_excluivol.setfocus;


end;

procedure TF_processos.TS_registroShow(Sender: TObject);
begin

{zera as variaveis}

cb_urfdespacho.text   := '';
cb_recinto.text       := '';
cb_setor.text         := '';
cb_docschegada.text   := '';
me_identificacao.text := '';
cb_fundap.checked     := false;
me_contratante.text   := '';
me_codpresenca.text   := '';
me_dtorigem.text      := '';
me_dtdespacho.text    := '';
rg_contratante.itemindex := -1;

{verifica as urfs}
t_urf.first;
cb_urfdespacho.clear;
while not t_urf.eof do begin
      cb_urfdespacho.items.add(copy(T_urfCODIGO.asstring+'       ',1,7)+' '+T_urfDESCRICAO.asstring);
      t_urf.next;
end;

{verifica armazem}
t_armazem.first;
cb_armazem.clear;
while not t_armazem.eof do begin
      cb_armazem.items.add(copy(T_armazemCODIGO.asstring+'   ',1,3)+' '+T_armazemDESCRICAO.asstring);
      t_armazem.next;
end;

T_transpprocesso.first;
if T_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin

if T_urf.findkey([T_transpprocessourf_despacho.asstring]) then
cb_urfdespacho.text   := copy(T_urfCODIGO.asstring+'       ',1,7)+' '+T_urfDESCRICAO.asstring;

if t_recintos.findkey([T_transpprocessorecinto_alfandegario.asstring]) then
cb_recinto.text       := t_recintosCODIGO.asstring+' '+t_recintosdescricao.asstring;

if t_setores.findkey([T_transpprocessourf_despacho.asstring,T_transpprocessorecinto_alfandegario.asstring,T_transpprocessosetor_alfandegario.asstring]) then
cb_setor.text         := t_setoressetor.asstring+' '+t_setoresnome.asstring;

if T_transpprocessoTipomanifesto.asstring='1' then
   cb_docschegada.text   :='1  - Manifesto de Carga';
if T_transpprocessoTipomanifesto.asstring='2' then
   cb_docschegada.text   :='2  - Termo de Entrada';
if T_transpprocessoTipomanifesto.asstring='3' then
   cb_docschegada.text   :='3  - DTA';
if T_transpprocessoTipomanifesto.asstring='4' then
   cb_docschegada.text   :='4  - MIC/DTA';

me_identificacao.text := T_transpprocessoNumeromanifesto.asstring;
cb_fundap.checked     := T_transpprocessoOperacao_FUNDAP.asboolean;
me_contratante.text   := T_transpprocessoContratante_OPCAMBIAL.asstring;
me_codpresenca.text   := T_transpprocessoCodigo_Presenca_Carga.asstring;
me_dtorigem.text      := T_transpprocessodata_chegada_urf_cheg.asstring;
me_dtdespacho.text    := T_transpprocessodata_chegada_urf_desp.asstring;

if T_transpprocessoContratante_OPCAMBIAL.asstring = t_importadoresCNPJ_CPF_COMPLETO.asstring then rg_contratante.itemindex := 0
else rg_contratante.itemindex := 1;

end;

end;

procedure TF_processos.b_gravaregisClick(Sender: TObject);
begin

//while t_transpprocesso.state = dsedit do begin
//end;
T_transpprocesso.edit;
T_transpprocessourf_despacho.asstring           :=   copy(cb_urfdespacho.text,1,7);
T_transpprocessorecinto_alfandegario.asstring   :=   copy(cb_recinto.text,1,7);
T_transpprocessosetor_alfandegario.asstring     :=   copy(cb_setor.text,1,3);
T_transpprocessoTipomanifesto.asstring          :=   copy(cb_docschegada.text,1,1);
T_transpprocessoNumeromanifesto.asstring        :=   me_identificacao.text;
T_transpprocessoOperacao_FUNDAP.asboolean       :=   cb_fundap.checked;
T_transpprocessoContratante_OPCAMBIAL.asstring  :=   me_contratante.text;
T_transpprocessoCodigo_Presenca_Carga.asstring  :=   me_codpresenca.text;
if me_dtorigem.text  <>'  /  /    ' then T_transpprocessodata_chegada_urf_cheg.asstring  :=   me_dtorigem.text;
if me_dtdespacho.text<>'  /  /    ' then T_transpprocessodata_chegada_urf_desp.asstring  :=   me_dtdespacho.text;
T_transpprocesso.post;
v_analise := true;
{atualizadi(f_processos);}
end;

procedure TF_processos.rg_contratanteClick(Sender: TObject);
begin

if rg_contratante.itemindex = 0 then me_contratante.text   := t_importadoresCNPJ_CPF_COMPLETO.asstring;

end;

procedure TF_processos.cb_urfdespachoChange(Sender: TObject);
begin
{verifica recintos por urf de despacho}
cb_recinto.enabled := false;
t_recintos.first;
cb_recinto.clear;
while not t_recintos.eof do begin
      if (copy(cb_urfdespacho.text,1,7) = t_recintosCOD_ORGAO_REC.asstring) then cb_recinto.items.add(t_recintosCODIGO.asstring+' '+t_recintosdescricao.asstring);
      t_recintos.next;
end;
cb_recinto.refresh;
cb_recinto.enabled := true;

end;

procedure TF_processos.cb_recintoChange(Sender: TObject);
begin
{verifica setores por recinto}
cb_setor.enabled := false;
t_setores.first;
cb_setor.clear;
while not t_setores.eof do begin
      if ((copy(cb_urfdespacho.text,1,7) = t_setoresORGAO.asstring) and (copy(cb_recinto.text,1,7) = t_setoresrecinto.asstring )) then cb_setor.items.add(t_setoressetor.asstring+' '+t_setoresnome.asstring);
      t_setores.next;
end;
cb_setor.refresh;
cb_setor.enabled := true;

end;

procedure TF_processos.TS_registroEnter(Sender: TObject);
begin
{verifica armazem por processo}
q_armazempro.Close;
q_armazempro.Params[0].AsString := t_parametrosempresa.asstring;
q_armazempro.Params[1].AsString := t_parametrosfilial.asstring;
q_armazempro.Params[2].AsString := me_nossaref.text;
q_armazempro.open;

end;

procedure TF_processos.cb_armazemChange(Sender: TObject);
begin
b_incluiarm.enabled := true;
b_excluiarm.enabled := false;
end;

procedure TF_processos.b_incluiarmClick(Sender: TObject);
begin
  if t_armazempro.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,copy(cb_armazem.text,1,3)])then begin
   MessageDlg('Armazem já cadastrado!', mtInformation,[mbOk], 0);
   cb_armazem.setfocus;
   end
else begin
   while t_armazempro.state = dsinsert do begin
   end;
   t_armazempro.append;
   t_armazemproEmpresa.asstring             := t_parametrosempresa.asstring;
   t_armazemproFilial.asstring              := t_parametrosfilial.asstring;
   t_armazemproProcesso.asstring            := me_nossaref.text;
   t_armazemproCodArmazem.asstring          := copy(cb_armazem.text,1,3);
   t_armazemproNome_Armazem.asstring        := copy(cb_armazem.text,5,50);
   t_armazempro.post;
   Q_armazempro.close;
   Q_armazempro.open;
   cb_armazem.text := '';
   cb_armazem.setfocus;
   b_incluiarm.enabled := false;
end;
end;

procedure TF_processos.DBG_armazemCellClick(Column: TColumn);
begin
cb_armazem.text := q_armazemprocodarmazem.asstring;
b_excluiarm.enabled := true;
b_excluiarm.setfocus;
end;

procedure TF_processos.b_excluiarmClick(Sender: TObject);
begin
  if t_armazempro.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,copy(cb_armazem.text,1,3)])then begin
   t_armazempro.delete;
   Q_armazempro.close;
   Q_armazempro.open;
   b_incluiarm.enabled := false;
   b_excluiarm.enabled := false;
   cb_armazem.text := '';
   cb_armazem.setfocus;

end;

end;

procedure TF_processos.me_paginaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = chr(13) then me_seq.setfocus;
end;

procedure TF_processos.ME_produtoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_descricao.setfocus;
end;

procedure TF_processos.me_referenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then me_numeroserie.setfocus;
end;

procedure TF_processos.ME_quantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
if key = chr(13) then me_valorunit.setfocus;
end;

procedure TF_processos.ME_valorunitKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
if key = chr(13) then me_pesounit.setfocus;
end;

procedure TF_processos.ME_pesounitKeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
if key = chr(13) then begin
   b_gravait.Enabled  := true;
   b_gravait.setfocus;
   end;
end;

procedure TF_processos.DBG_qprodutosKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then B_okClick(sender);
end;

procedure TF_processos.b_incluitribClick(Sender: TObject);

begin
{possiciona no processo}
t_processos.first;
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

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
if (t_processostipo_declarao.asstring = '05') then begin
   rg_aplicacao.itemindex := 2;
   rg_aplicacao.enabled   := false;
   end
else begin
   rg_aplicacao.itemindex := 0;
   if (t_processostipo_declarao.asstring = '12') then begin
      if MessageDlg('Se tributação for para admissão temporária. Confirme para não usar "aplicação mercadoria" ', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
         rg_aplicacao.itemindex := 2;
         if v_usuario = 'MAGALI' then showmessage('VALEU!! MAGALI!! ESSA FOI PRA VC!! NUNCA MAIS VAI ESQUECER!!! HAHAHAHA!!');
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
      if t_atostipo_ato.asstring = '1' then  cb_atoii.items.add(t_atosnumero.asstring);
      if t_atostipo_ato.asstring = '2' then  cb_atoipi.items.add(t_atosnumero.asstring);
      if t_atostipo_ato.asstring = '3' then  cb_atoaladi.items.add(t_atosnumero.asstring);
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
q_atosconce.params[0].asstring := t_processosimportador.asstring;
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

if selecao > 1 then begin
   me_quantrib.text := '' ;
   me_quantrib.enabled := false;
   end
else begin
     me_quantrib.text := v_quant;
     me_quantrib.enabled := true;
end;

p_tributacao.visible := true;

if q_atosconce.recordcount >0 then
showmessage('Este importador possue Atos Concessórios. Por favor verifique a necessidade de aplicação dos mesmos.');

end;

procedure TF_processos.B_aplicaClick(Sender: TObject);
var i,b:integer;
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
    v_ibe:boolean;
    v_imu:boolean;
    v_co:string;
    v_ac:string;
    v_rtipi:string;
    v_nalipi:string;
    v_itens:integer;
    v_naladi:string;
    v_cond:string;
    v_destaque:string;
    v_unidmed:string;
    v_fator:real;
    achou_vida:boolean;
begin

if ((copy(cb_regtrib1.text,1,1)='9') and (me_prazo.text='')) then
   showmessage(v_usuario+', para este tipo de tributação é necessário preencher o prazo de permanência.')
else begin

processamento('Aguarde...Aplicando Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);

{verifica seleção de itens}
if dbg_itenstributaveis.SelectedRows.Count>0 then
    with dbg_itenstributaveis.DataSource.DataSet do
      for i:=0 to dbg_itenstributaveis.SelectedRows.Count-1 do
      begin
       GotoBookmark(pointer(dbg_itenstributaveis.SelectedRows.Items[i]));
       processamento('Aguarde...Aplicando Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);
       if selecao > 1 then v_quant := dbg_itenstributaveis.fields[4].asstring
       else v_quant := me_quantrib.text;
///       v_seq := '1';
///       t_tributositem.first;
///       t_tributositem.FindKey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring]);
///       while ((not T_tributositem.eof)and(T_tributositemEmpresa.asstring = t_parametrosempresa.asstring)and(T_tributositemFilial.asstring = t_parametrosfilial.asstring)
///               and(T_tributositemProcesso.asstring = me_nossaref.text)and(T_tributositemFatura.asstring = dbg_itenstributaveis.fields[0].asstring)) do begin
///             if strtoint(v_seq) <= strtoint(T_tributositemsequencial.asstring) then v_seq := inttostr(strtoint(T_tributositemsequencial.asstring)+1);
///             T_tributositem.next;
///       end;

      T_faturas.first;
      t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring]);
      v_fator :=0;
      t_itensfaturas.first;
       if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring,dbg_itenstributaveis.fields[2].asstring]) then begin
          t_ncm.first;
          if t_ncm.findkey([t_itensfaturasncm.asstring]) then begin

       v_seq := '1';///dbg_itenstributaveis.fields[2].asstring;

       while t_tributositem.FindKey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,dbg_itenstributaveis.fields[0].asstring,dbg_itenstributaveis.fields[2].asstring,v_seq]) do begin
              v_seq := inttostr(strtoint(v_seq)+1);
       end;

       T_tributositem.append;
       T_tributositemEmpresa.asstring := t_parametrosempresa.asstring;
       T_tributositemFilial.asstring :=  t_parametrosfilial.asstring;
       T_tributositemProcesso.asstring := me_nossaref.text;
       T_tributositemFatura.asstring := dbg_itenstributaveis.fields[0].asstring;
       T_tributositemSequencial_Item.asstring := dbg_itenstributaveis.fields[2].asstring;
       T_tributositemSequencial.asstring := v_seq;
       T_tributositemCertificado_Origem.asstring := me_certificado.text;
       T_tributositemAto_Concessorio.asstring := copy(cb_atoconce.text,1,20);
       T_tributositemcnpj_cpf_completo.asstring := copy(cb_sub.text,1,14);
       T_tributositemmotivo_adm_temp.asstring := copy(cb_motadmtemp.text,1,2);
       T_tributositemCD_METOD_VALORACAO.asstring := copy(cb_valoracao.text,1,2);
       if rg_aplicacao.itemindex = 0 then T_tributositemCD_APLICACAO_MERC.asstring := '1';
       if rg_aplicacao.itemindex = 1 then T_tributositemCD_APLICACAO_MERC.asstring := '2';
       if rg_aplicacao.itemindex = 2 then T_tributositemCD_APLICACAO_MERC.asstring := '';
       T_tributositemIN_BEM_ENCOMENDA.asboolean  := cb_bemencomenda.checked;
       T_tributositemIN_MATERIAL_USADO.asboolean := cb_materialusado.checked;
       T_tributositemCD_TIPO_ACORDO_TAR.asstring := copy(cb_tipoacordo.text,1,1);
       T_tributositemACORDO_ALADI.asstring :=  copy(cb_acordoaladi.text,1,3);
       T_tributositemNumero_Ato_Legal_ALADI.asstring := copy(cb_atoaladi.text,1,5);
       T_tributositemALIQUOTA_ALADI.asstring := me_aliquotaacordo.text;
       if me_prazo.text<>'' then
          T_tributositemprazo_permanencia.asfloat := strtofloat(me_prazo.text);
       if copy(cb_regtrib1.text,1,1)='9' then
          T_tributositemRegime_Tributacao_II.asstring := '1'
       else
          T_tributositemRegime_Tributacao_II.asstring := copy(cb_regtrib1.text,1,1);

       T_tributositemFundamento_Legal_II.asstring := copy(cb_fundale.text,1,2);
       T_tributositemNumero_Ato_Legal_II.asstring := copy(cb_atoii.text,1,5);
       if copy(cb_regtrib2.text,1,1)='9' then
          T_tributositemRegime_Tributacao_IPI.asstring := '4'
       else
          T_tributositemRegime_Tributacao_IPI.asstring := copy(cb_regtrib2.text,1,1);
       T_tributositemNumero_Ato_Legal_IPI.asstring := copy(cb_atoipi.text,1,5);
       T_tributositemPercentual_Reducao_II.asstring := me_perccorii.text;
       T_tributositemPercentual_EX.asstring := me_percex.text;
       T_tributositemPercentual_Reduca_IPI.asstring := me_perccoripi.text;
       T_tributositemQuantidade.asstring := floattostr(strtofloat(v_quant));

       v_base_calc_ii := ((T_itensfaturasBase_Calc_II.asfloat/T_itensfaturasQuantidade.asfloat)*T_tributositemQuantidade.asfloat);

       {verifica se tem percentual EX se tiver iguala a aliquota do ii ao ex}
       if (T_tributositemPercentual_EX.asstring='') then begin
          if (T_ncmALIQUOTA_II.asstring='') or (T_ncmALIQUOTA_II.asstring='NT') then T_tributositemAliq_NCM_II.asfloat   := 0
          else  T_tributositemAliq_NCM_II.asfloat   := T_ncmALIQUOTA_II.asfloat;
          end
       else T_tributositemAliq_NCM_II.asfloat   := T_tributositemPercentual_EX.asfloat;

       {é recolhimento integral com redução de aliquota}
       {1-[(12xU-P)/(12xU)]
       onde U é o prazo de vida útil - 3a coluna da tabela abaixo que para a classificação em questão é 4
       P é o prazo de permanência do bem , em meses, que para este caso é 24 (2 anos x 12 meses)  }

       if copy(cb_regtrib1.text,1,1)='9' then begin
          {achar a vida útil}
          achou_vida := false;
          b:=8;
          while (not achou_vida) and (b>0) do begin
                if t_ncm_vutil.findkey([copy(t_itensfaturasncm.asstring,1,b)]) then achou_vida := true;
                b:=b-1;
          end;
          if achou_vida then begin
             v_fator := (1-(((12*t_ncm_vutilvida_util.asfloat)-strtofloat(me_prazo.text))/(12*12*t_ncm_vutilvida_util.asfloat)));
             if (T_tributositemPercentual_EX.asstring='') then
               T_tributositemAliq_NCM_II.asfloat   := (T_tributositemAliq_NCM_II.asfloat*v_fator);
             end
          else showmessage(v_usuario+', não foi encontrado nenhum parâmetro de vida útil'+#13#10+
                          'para a NCM:'+t_itensfaturasncm.asstring+'. A tributação continuará'+#13#10+
                          'mas não será aplicada a redução das aliquotas de II e IPI em referência à'+#13#10+
                          'IN 150/99 ART 7º.');

       end;


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

       if (T_ncmALIQUOTA_IPI.asstring='') or (T_ncmALIQUOTA_IPI.asstring='NT') then T_tributositemAliq_NCM_IPI.asfloat  := 0
       else T_tributositemAliq_NCM_IPI.asfloat         := T_ncmALIQUOTA_IPI.asfloat;

       {aplicar fator de redução}
       if copy(cb_regtrib2.text,1,1)='9' then begin
          if (T_tributositemAliq_NCM_IPI.asfloat=0) then
             T_tributositemAliq_NCM_II.asfloat   := (T_tributositemAliq_NCM_II.asfloat*v_fator);
       end;


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

       T_tributositem.post;

       //while t_itensfaturas.state = dsedit do begin
       //end;
       t_itensfaturas.edit;
       t_itensfaturassaldo_tributavel.asfloat := (t_itensfaturassaldo_tributavel.asfloat-T_tributositemQuantidade.asfloat);
       t_itensfaturas.post;

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
Q_tributoitem.Close;
Q_tributoitem.open;

{se tributou todos os itens grava as adicoes}
if q_itenstributaveis.isempty = true then begin
q_itensadicoes.Close;
q_itensadicoes.Params[0].AsString := t_parametrosempresa.asstring;
q_itensadicoes.Params[1].AsString := t_parametrosfilial.asstring;
q_itensadicoes.Params[2].AsString := me_nossaref.text;
q_itensadicoes.open;

{aqui começa a geração das adicoes}

q_itensadicoes.first;
{variaveis para checar}
v_exportador := Q_itensadicoesRazoSocial.asstring;
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
v_cc         := Q_itensadicoesCoberturaCambial.asstring;
v_mp         := Q_itensadicoesModalidadedePagamento.asstring;
v_if         := Q_itensadicoesInstituicaoFinanciadora.asstring;
v_msc        := Q_itensadicoesMotivoSemCobertura.asstring;
v_rof        := Q_itensadicoesROFBACEN.asstring;
v_ibe        := Q_itensadicoesIN_BEM_ENCOMENDA.asboolean;
v_imu        := Q_itensadicoesIN_MATERIAL_USADO.asboolean;
v_co         := Q_itensadicoesCertificado_Origem.asstring;
v_ac         := Q_itensadicoesAto_Concessorio.asstring;
v_rtipi      := Q_itensadicoesRegime_Tributacao_IPI.asstring;
v_nalipi     := Q_itensadicoesNumero_Ato_Legal_IPI.asstring;
v_naladi     := Q_itensadicoesNALADI.asstring;
v_cond       := Q_itensadicoescondio.asstring;
v_destaque   := q_itensadicoesdestaque_ncm.asstring;
v_unidmed    := q_itensadicoesunidade_medida_estat.asstring;
v_num_adic   := 1;
v_itens      := 0;
while not q_itensadicoes.eof do begin
      processamento('Aguarde...Separando Adições...',q_itensadicoes.recordcount,false);
      if ((v_exportador = Q_itensadicoesRazoSocial.asstring) and
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
          (v_cc         = Q_itensadicoesCoberturaCambial.asstring) and
          (v_mp         = Q_itensadicoesModalidadedePagamento.asstring) and
          (v_if         = Q_itensadicoesInstituicaoFinanciadora.asstring) and
          (v_msc        = Q_itensadicoesMotivoSemCobertura.asstring) and
          (v_rof        = Q_itensadicoesROFBACEN.asstring) and
          (v_ibe        = Q_itensadicoesIN_BEM_ENCOMENDA.asboolean) and
          (v_imu        = Q_itensadicoesIN_MATERIAL_USADO.asboolean) and
          {(v_co         = Q_itensadicoesCertificado_Origem.asstring) and}
          (v_ac         = Q_itensadicoesAto_Concessorio.asstring) and
          (v_rtipi      = Q_itensadicoesRegime_Tributacao_IPI.asstring) and
          (v_nalipi     = Q_itensadicoesNumero_Ato_Legal_IPI.asstring) and
          (v_naladi     = Q_itensadicoesNALADI.asstring) and
          (v_cond       = Q_itensadicoescondio.asstring) and
          (v_destaque   = Q_itensadicoesdestaque_ncm.asstring) and
          (v_unidmed    = Q_itensadicoesunidade_medida_estat.asstring) and
          (v_itens      < 80) ) then begin

          {conta itens por adicao}
          v_itens := (v_itens+1);

          {faz parte de uma adicao entao grava para a quantidade tributada}
          t_tributositem.first;
          if t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,q_itensadicoesfatura.asstring,q_itensadicoessequencial.asstring,q_itensadicoesseq.asstring]) then begin
             ///while t_tributositem.state = dsedit do begin
             ///end;
             t_tributositem.edit;
             t_tributositemadicao.asstring := copy('000'+inttostr(v_num_adic),(length('000'+inttostr(v_num_adic))-2),3);
             t_tributositem.post;
          end;
          {totaliza adicao}

      end
      else begin
          v_num_adic := (v_num_adic+1);
          {faz parte de uma adicao entao grava para a quantidade tributada}
          t_tributositem.first;
          if t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,q_itensadicoesfatura.asstring,q_itensadicoessequencial.asstring,q_itensadicoesseq.asstring]) then begin
             ///while t_tributositem.state = dsedit do begin
             //end;
             t_tributositem.edit;
             t_tributositemadicao.asstring := copy('000'+inttostr(v_num_adic),(length('000'+inttostr(v_num_adic))-2),3);
             t_tributositem.post;
          end;
          v_itens      := 1;
          v_exportador := Q_itensadicoesRazoSocial.asstring;
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
          v_cc         := Q_itensadicoesCoberturaCambial.asstring;
          v_mp         := Q_itensadicoesModalidadedePagamento.asstring;
          v_if         := Q_itensadicoesInstituicaoFinanciadora.asstring;
          v_msc        := Q_itensadicoesMotivoSemCobertura.asstring;
          v_rof        := Q_itensadicoesROFBACEN.asstring;
          v_ibe        := Q_itensadicoesIN_BEM_ENCOMENDA.asboolean;
          v_imu        := Q_itensadicoesIN_MATERIAL_USADO.asboolean;
          v_co         := Q_itensadicoesCertificado_Origem.asstring;
          v_ac         := Q_itensadicoesAto_Concessorio.asstring;
          v_rtipi      := Q_itensadicoesRegime_Tributacao_IPI.asstring;
          v_nalipi     := Q_itensadicoesNumero_Ato_Legal_IPI.asstring;
          v_naladi     := Q_itensadicoesNALADI.asstring;
          v_cond       := Q_itensadicoescondio.asstring;
          v_destaque   := q_itensadicoesdestaque_ncm.asstring;
          v_unidmed    := q_itensadicoesunidade_medida_estat.asstring;

      end;

      q_itensadicoes.next;
end;
processamento('Aguarde...Separando Adições...',q_itensadicoes.recordcount,true);
end;
end;
end;

procedure TF_processos.b_cancelaapliClick(Sender: TObject);
begin
p_tributacao.visible := false;

end;

procedure TF_processos.DBG_itensCellClick(Column: TColumn);
begin
{dbg_itens.selectedrows;}
end;

procedure TF_processos.TS_tributacaoShow(Sender: TObject);
var qincoterms:string;
    achou,mostramsg:boolean;

begin
///Q_itensfaturas.close;
Q_produtos.close;
q_parcvar.close;
q_pgvinc.close;
///Q_acrescimos.close;
///Q_acresdedu.close;


{verifica itens de notas fiscais}
Q_itenstributaveis.Close;
Q_itenstributaveis.Params[0].AsString := t_parametrosempresa.asstring;
Q_itenstributaveis.Params[1].AsString := t_parametrosfilial.asstring;
Q_itenstributaveis.Params[2].AsString := me_nossaref.text;
Q_itenstributaveis.open;

{verifica tributacao dos itens de notas fiscais}
Q_tributoitem.Close;
Q_tributoitem.Params[0].AsString := t_parametrosempresa.asstring;
Q_tributoitem.Params[1].AsString := t_parametrosfilial.asstring;
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
///t_acrescimos.open;
////t_faturas.open;

T_faturas.first;
t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
while ((not t_faturas.eof)and(t_faturasempresa.asstring=t_parametrosempresa.asstring)and(t_faturasfilial.asstring=t_parametrosfilial.asstring)
     and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
///     showmessage(t_faturasprocesso.asstring+' - '+t_faturascdigo.asstring);
     /// 13= frete internacional
     if ((t_faturasincoterm.asstring='CPT') or
         (t_faturasincoterm.asstring='CFR'))  then begin
         if not t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring,'13 ']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possue frete internacional informado. Tributação cancelada.'+#13#10;
            achou := false;
         end
         else qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com frete internacional informado. OK!'+#13#10;
         mostramsg := true;
     end;
     /// 14= seguro internacional
     if ((t_faturasincoterm.asstring='CIP') or
        (t_faturasincoterm.asstring='CIF'))  then begin
        if not t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring,'14 ']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possue seguro internacional informado. Tributação cancelada.'+#13#10;
            achou := false;
         end
         else qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com seguro internacional informado. OK!'+#13#10;
         mostramsg := true;
     end;
     /// 13 e 14
     if ((t_faturasincoterm.asstring='DDP') or
        (t_faturasincoterm.asstring='DDU'))  then begin
        if not t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring,'13 ']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possue frete internacional informado. Verifique.'+#13#10;
        end
        else qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com frete internacional informado. OK!'+#13#10;
        if not t_acrescimos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring,'14 ']) then begin
            qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' não possue seguro internacional informado. Verifique.'+#13#10;
        end
        else qincoterms := qincoterms+'Fatura:'+t_faturascdigo.asstring+', com incoterm:'+t_faturasincoterm.asstring+' com seguro internacional informado. OK!'+#13#10;
         mostramsg := true;
     end;
     t_faturas.next;
end;

if mostramsg then showmessage(qincoterms);
if (not achou) then ts_tributacao.enabled := false
else ts_tributacao.enabled := true;

end;

procedure TF_processos.b_excluitribClick(Sender: TObject);
var i:integer;
begin

processamento('Aguarde...Excluindo Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);

{verifica seleção de itens}
if dbg_tributositem.SelectedRows.Count>0 then begin
    with dbg_tributositem.DataSource.DataSet do
      for i:=0 to dbg_tributositem.SelectedRows.Count-1 do
      begin
         GotoBookmark(pointer(dbg_tributositem.SelectedRows.Items[i]));
         processamento('Aguarde...Excluindo Tributações...',dbg_itenstributaveis.SelectedRows.Count,false);
         t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial,q_tributoitemprocesso.asstring,q_tributoitemfatura.asstring,q_tributoitemsequencial_item.asstring,q_tributoitemsequencial.asstring]);
         if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial,t_tributositemprocesso.asstring,t_tributositemfatura.asstring,t_tributositemsequencial_item.asstring]) then begin
            ///while t_itensfaturas.state = dsedit do begin
            ///end;
            t_itensfaturas.edit;
            t_itensfaturassaldo_tributavel.asfloat := (t_itensfaturassaldo_tributavel.asfloat+T_tributositemQuantidade.asfloat);
            t_itensfaturas.post;
         end;
         t_tributositem.delete;
      end;
end;
processamento('Aguarde...Excluindo Tributações...',dbg_itenstributaveis.SelectedRows.Count,true);
t_itensfaturas.refresh;
p_tributacao.visible := false;
Q_itenstributaveis.Close;
Q_itenstributaveis.open;
Q_tributoitem.Close;
Q_tributoitem.open;

end;

procedure TF_processos.DBG_tributositemCellClick(Column: TColumn);
begin
if dbg_tributositem.SelectedRows.Count>0 then b_excluitrib.enabled := true;
end;

procedure TF_processos.DBG_itenstributaveisDblClick(Sender: TObject);

{var
   SavePlace: TBookmark;}
begin
{dbg_itenstributaveis.DataSource.DataSet.first;
while not dbg_itenstributaveis.DataSource.DataSet.eof do begin
   with dbg_itenstributaveis.DataSource.DataSet do
   begin
    SelectedRows := getbookmark;
    {get a bookmark so that we can return to the same record }
    {dbg_itenstributaveis.SelectedRows.items.add(SavePlace);}
    {if something else is changing the dataset asynchronously}
    {GotoBookmark(SavePlace);}
    { Free the bookmark }
    {FreeBookmark(SavePlace);}
    {dbg_itenstributaveis.items.add(saveplace);
  end;
  dbg_itenstributaveis.DataSource.DataSet.next;
end;}
end;

{
begin

dbg_itenstributaveis.DataSource.DataSet.first;
while not dbg_itenstributaveis.DataSource.DataSet.eof do begin
      dbg_itenstributaveis.Bookmark;
      (dbg_itenstributaveis.SelectedRows.Items[i]));
      dbg_itenstributaveis.SelectedRows;
      dbg_itenstributaveis.DataSource.DataSet.next;
end

if dbg_itenstributaveis.SelectedRows.Count>0 then
    with dbg_itenstributaveis.DataSource.DataSet do
      for i:=0 to dbg_itenstributaveis.SelectedRows.Count-1 do
      begin
       GotoBookmark(pointer(dbg_itenstributaveis.SelectedRows.Items[i]));

dbg_itenstributaveis.Selected.all;
{edRows

end;
  }
procedure TF_processos.me_quantribExit(Sender: TObject);
begin
if (selecao = 1) and (strtoint(me_quantrib.text) > dbg_itenstributaveis.fields[4].asinteger) then begin
   MessageDlg('Quantidade não pode ser maior que o Saldo Tributável!', mtInformation,[mbOk], 0);
   me_quantrib.setfocus;
end;

end;

procedure TF_processos.p_rofExit(Sender: TObject);
begin
///while t_faturas.state = dsedit do begin
///end;
t_faturas.edit;
T_faturasROFBACEN.asstring               := me_rof.text;
T_faturasPercentualROF.asstring          := me_valperrof.text;
t_faturas.post;
end;

procedure TF_processos.me_paginaChange(Sender: TObject);
var q_pagina:string;
begin
q_pagina := '1';
t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
      if strtoint(q_pagina) <= strtoint(t_itensfaturaspagina.asstring) then q_pagina := inttostr(strtoint(t_itensfaturaspagina.asstring)+1);
      t_itensfaturas.next;
end;

if strtoint(me_pagina.text) > (strtoint(q_pagina)) then begin
   MessageDlg('Página '+me_pagina.text+' fora de sequência! Nova Página = '+q_pagina, mtInformation,[mbOk], 0);
   me_pagina.text := q_pagina;
   me_pagina.setfocus;
end;
end;

procedure TF_processos.SB_recalculapesoClick(Sender: TObject);
begin
p_recalculo.top := 30;
p_recalculo.visible := true;
me_pesoinformado.setfocus;
end;

procedure TF_processos.sb_cancelaClick(Sender: TObject);
begin
p_recalculo.visible := false;

end;

procedure TF_processos.sb_processaClick(Sender: TObject);
var Taxa_peso:real;
    v_totpeso:real;
begin
if me_pesoinformado.text = '' then begin
   MessageDlg('Informe o Peso da Fatura!', mtInformation,[mbOk], 0);
   me_pesoinformado.setfocus;
   end
else begin
if MessageDlg('Confirma Peso da Fatura '+me_pesoinformado.text, mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
if MessageDlg('Calcula acerto de rateio de peso unitário com base nos pesos unitários informados?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
   taxa_peso := (strtofloat(me_pesoinformado.text)/t_faturaspesototal.asfloat);
   v_totpeso := 0;
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
         ///while t_itensfaturas.state = dsedit do begin
         ///end;
         t_itensfaturas.edit;
         t_itensfaturaspeso_unitario_acertado.asfloat := strtofloat(floattostrf(t_itensfaturaspesounitrio.asfloat*taxa_peso,fffixed,10,5));
         t_itensfaturaspeso_total_acertado.asfloat    := strtofloat(floattostrf(t_itensfaturaspesototal.asfloat*taxa_peso  ,fffixed,10,5));
         t_itensfaturas.post;
         v_totpeso := (v_totpeso+t_itensfaturaspeso_total_acertado.asfloat);
         t_itensfaturas.next;
   end;
   T_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   ///while t_faturas.state = dsedit do begin
   ///end;
   T_faturas.edit;
   T_faturasPesoTotal_acertado.asfloat  := (T_faturasPesoTotal.asfloat*taxa_peso);
   T_faturas.post;
   e_pesoacertado.text := T_faturasPesoTotal_acertado.asstring;
   if (v_totpeso <> T_faturasPesoTotal_acertado.asfloat) then begin
       t_itensfaturas.first;
       if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]) then begin
          ///while t_itensfaturas.state = dsedit do begin
          ///end;
          t_itensfaturas.edit;
          t_itensfaturaspeso_unitario_acertado.asfloat := (t_itensfaturaspeso_unitario_acertado.asfloat-((v_totpeso - T_faturasPesoTotal_acertado.asfloat)/t_itensfaturasquantidade.asfloat));
          t_itensfaturaspeso_total_acertado.asfloat    := (t_itensfaturaspeso_total_acertado.asfloat   -(v_totpeso - T_faturasPesoTotal_acertado.asfloat));
          t_itensfaturas.post;
       end;
   end;
   Q_itensfaturas.Close;
   Q_itensfaturas.open;
   p_recalculo.visible := false;
   end
else begin
   taxa_peso := (strtofloat(me_pesoinformado.text)/T_faturasValorTotal.asfloat);
   v_totpeso := 0;
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
         ///while t_itensfaturas.state = dsedit do begin
         ///end;
         t_itensfaturas.edit;
         t_itensfaturaspeso_unitario_acertado.asfloat := strtofloat(floattostrf(t_itensfaturasvalorunitrio.asfloat*taxa_peso,fffixed,10,5));
         t_itensfaturaspeso_total_acertado.asfloat    := strtofloat(floattostrf(t_itensfaturasvalortotal.asfloat*taxa_peso  ,fffixed,10,5));
         t_itensfaturas.post;
         v_totpeso := (v_totpeso+t_itensfaturaspeso_total_acertado.asfloat);
         t_itensfaturas.next;
   end;
   T_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   ///while t_faturas.state = dsedit do begin
   ///end;
   T_faturas.edit;
   T_faturasPesoTotal_acertado.asfloat  := (T_faturasvalorTotal.asfloat*taxa_peso);
   T_faturas.post;
   e_pesoacertado.text := T_faturasPesoTotal_acertado.asstring;
   if (v_totpeso <> T_faturasPesoTotal_acertado.asfloat) then begin
       t_itensfaturas.first;
       if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]) then begin
          ///while t_itensfaturas.state = dsedit do begin
          ///end;
          t_itensfaturas.edit;
          t_itensfaturaspeso_unitario_acertado.asfloat := (t_itensfaturaspeso_unitario_acertado.asfloat-((v_totpeso - T_faturasPesoTotal_acertado.asfloat)/t_itensfaturasquantidade.asfloat));
          t_itensfaturaspeso_total_acertado.asfloat    := (t_itensfaturaspeso_total_acertado.asfloat   -(v_totpeso - T_faturasPesoTotal_acertado.asfloat));
          t_itensfaturas.post;
       end;
   end;
   Q_itensfaturas.Close;
   Q_itensfaturas.open;
   Q_itensfaturas.active := true;
   p_recalculo.visible := false;

end
end
else
   me_pesoinformado.setfocus;
end;

end;

procedure TF_processos.p_recalculoExit(Sender: TObject);
begin
   p_recalculo.visible := false;
end;

procedure TF_processos.sb_somapaginasClick(Sender: TObject);
begin
{totaliza por páginas da fatura}
Q_totpag.Close;
Q_totpag.Params[0].AsString := t_parametrosempresa.asstring;
Q_totpag.Params[1].AsString := t_parametrosfilial.asstring;
Q_totpag.Params[2].AsString := me_nossaref.text;
Q_totpag.Params[3].AsString := me_fatura.text;
Q_totpag.open;

p_totalpag.top   := 20;
p_totalpag.visible := true;
dbg_totpag.setfocus;
end;

procedure TF_processos.b_fechatotClick(Sender: TObject);
begin
p_totalpag.visible := false;
end;

procedure TF_processos.CB_incotermsChange(Sender: TObject);
begin
{verifica os tipos de acrescimos por incoterms}
cb_tipoacres.enabled := false;
t_tiposacrescimos.first;
cb_tipoacres.clear;
while not t_tiposacrescimos.eof do begin
      if (t_tiposacrescimosincoterm.asstring = copy(cb_incoterms.text,1,3)) then cb_tipoacres.items.add(copy(t_tiposacrescimosCODIGO.asstring+'   ',1,4) +' '+t_tiposacrescimosDESCRICAO.asstring);
      t_tiposacrescimos.next;
end;
cb_tipoacres.enabled := true;
{verifica os tipos de deducoes por incoterms}
cb_tipodedu.enabled := false;
t_tiposreducoes.first;
cb_tipodedu.clear;
while not t_tiposreducoes.eof do begin
      if (t_tiposreducoesincoterm.asstring = T_faturasIncoterm.asstring) then cb_tipodedu.items.add(copy(t_tiposreducoesCODIGO.asstring+'   ',1,4) +' '+t_tiposreducoesDESCRICAO.asstring);
      t_tiposreducoes.next;
end;
cb_tipodedu.enabled := true;

end;

procedure TF_processos.cb_itensClick(Sender: TObject);
begin
///while t_faturas.state = dsedit do begin
///end;
t_faturas.edit;
T_faturasacrescimos_reducoes.asboolean := cb_itens.checked;
t_faturas.post;
{recalculo do valor da fatura dependendo se sim ou não}
if T_faturasacrescimos_reducoes.asboolean = false then begin
   v_valortotal := 0;
   Q_acrescimos.first;
   while not q_acrescimos.eof do begin
         v_valortotal := v_valortotal + q_acrescimosvl_acrescimo_moeda.asfloat;
         q_acrescimos.next;
   end;
   Q_deducoes.first;
   while not q_deducoes.eof do begin
         v_valortotal := v_valortotal - q_deducoesvl_deducao_mneg.asfloat;
         q_deducoes.next;
   end;

   Q_itensfaturas.first;
   while not q_itensfaturas.eof do begin
         v_valortotal := v_valortotal + q_itensfaturasvalortotal.asfloat;
         q_itensfaturas.next;
   end;

   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   ///while t_faturas.state = dsedit do begin
   ///end;
   t_faturas.edit;
   T_faturasValorTotal.asfloat := v_valortotal;
   t_faturas.post;
   e_valortotal.text := T_faturasValorTotal.asstring;

end
else begin
   v_valortotal := 0;
   Q_itensfaturas.first;
   while not q_itensfaturas.eof do begin
         v_valortotal := v_valortotal + q_itensfaturasvalortotal.asfloat;
         q_itensfaturas.next;
   end;

   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   ///while t_faturas.state = dsedit do begin
   ///end;
   t_faturas.edit;
   T_faturasValorTotal.asfloat := v_valortotal;
   t_faturas.post;
   e_valortotal.text := T_faturasValorTotal.asstring;
end;

end;

procedure TF_processos.TS_CambiofaturaShow(Sender: TObject);
begin
   {Variaveis de Cambio}
   rg_cambial.itemindex  := (strtoint(t_faturascoberturacambial.asstring)-1);
   pagecontrol3.activepage := ts_pag3;
   panel10.visible := true;
   if T_faturasTipoParcela.asstring <> '' then rg_parcelas.itemindex := strtoint(T_faturasTipoParcela.asstring)-1;
   me_nparcelas.text     := T_faturasNumerodeparcelas.asstring;
   me_periodicidade.text := T_faturasPeriodicidade.asstring;
   me_valorparc.text     := T_faturasValordasParcelas.asstring;
   if T_faturasIndicadorPeriodicidade.asstring <>'' then rg_indiper.itemindex  := strtoint(T_faturasIndicadorPeriodicidade.asstring);
   rb_taxajuros.checked  := T_faturasTaxadeJuros.asboolean;
   cb_taxabacen.text     := T_faturasCodigoTaxadeJuros.asstring;
   me_valtaxajuros.text  := T_faturasValorTaxadeJuros.asstring;
   panel10.visible := false;
   if t_faturascoberturacambial.asstring = '1' then begin
      l_motivo.caption := 'Modalidade de Pagamento:';
      t_moda.findkey([T_faturasmodalidadedepagamento.asstring]);
      cb_motivos.text := T_faturasmodalidadedepagamento.asstring+' '+t_modadescricao.asstring;
      panel10.visible := true;
   end;
   if t_faturascoberturacambial.asstring = '2' then begin
      l_motivo.caption := 'Modalidade de Pagamento:';
      t_moda.findkey([T_faturasmodalidadedepagamento.asstring]);
      cb_motivos.text := T_faturasmodalidadedepagamento.asstring+' '+t_modadescricao.asstring;
      panel10.visible := true;
   end;
   if t_faturascoberturacambial.asstring = '3' then begin
      l_motivo.caption := 'Instituição Financiadora:';
      t_inst.findkey([T_faturasinstituicaofinanciadora.asstring]);
      cb_motivos.text := T_faturasinstituicaofinanciadora.asstring+' '+t_instdescricao.asstring;
      pagecontrol3.activepage := ts_pag3;
      p_rof.top  :=  32;
      p_rof.left := 248;
      p_rof.Width := 201;
      p_rof.Height :=  77;
      p_rof.visible   := true;
      me_rof.text           := T_faturasROFBACEN.asstring;
      me_valperrof.text     := T_faturasPercentualROF.asstring;
   end;
   if t_faturascoberturacambial.asstring = '4' then begin
      l_motivo.caption := 'Motivo:';
      t_moti.findkey([T_faturasmotivosemcobertura.asstring]);
      cb_motivos.text := T_faturasmotivosemcobertura.asstring+' '+t_motidescricao.asstring;
   end;
   pagecontrol3.activepage := ts_cambio;

end;

procedure TF_processos.FormShow(Sender: TObject);
var v_cambio:boolean;
begin
pagecontrol1.activepage := TS_capa;
{abrir tabelas}
if T_motadmtemp.state      = dsInactive then T_processos.open;
if T_tipodecl.state        = dsInactive then T_tipodecl.open;
if T_parametros.state      = dsInactive then T_parametros.open;
if T_tipospro.state        = dsInactive then T_tipospro.open;
if T_importadores.state    = dsInactive then T_importadores.open;
if T_di.state              = dsInactive then T_di.open;
if T_numerador.state       = dsInactive then T_numerador.open;
if T_urf.state             = dsInactive then T_urf.open;
if T_cambio.state          = dsInactive then T_cambio.open;
Testatabelas(f_processos);
t_cambio.first;
v_cambio := true;
while not t_cambio.eof do begin
      if t_cambiodescricao.asstring<>'' then begin
      if strtodate(t_cambiovigencia_fim_taxa.asstring) < date() then begin
         v_cambio := false;
      end;
      end;
      t_cambio.next;
end;
if v_cambio = false then begin
   MessageDlg('Atualize as Taxas de Câmbio pelo SISCOMEX!', mtInformation,[mbOk], 0);
   {f_processos.close;}
end;
me_nossaref.text := t_processoscdigo.asstring;
t_usuarios.findkey([t_processosempresa.asstring,t_processosfilial.asstring,v_usuario]);
end;

procedure TF_processos.TS_diShow(Sender: TObject);
begin
///Q_itensfaturas.close;
Q_produtos.close;
q_parcvar.close;
q_pgvinc.close;
//Q_acrescimos.close;
//Q_acresdedu.close;

q_itensadicoes.Close;
q_itensadicoes.Params[0].AsString := t_parametrosempresa.asstring;
q_itensadicoes.Params[1].AsString := t_parametrosfilial.asstring;
q_itensadicoes.Params[2].AsString := me_nossaref.text;
q_itensadicoes.open;

{gera totalizacao das adicoes}
q_adicoes.Close;
q_adicoes.Params[0].AsString := t_parametrosempresa.asstring;
q_adicoes.Params[1].AsString := t_parametrosfilial.asstring;
q_adicoes.Params[2].AsString := me_nossaref.text;
q_adicoes.open;
b_atualizasiscomex.enabled := false;
if (not q_adicoes.Eof) then begin
   b_atualizasiscomex.enabled := true;
   b_atualizasiscomexa.enabled := true;
   end
else MessageDlg('Não foi possível gerar DI! Verifique as Informações.', mtInformation,[mbOk], 0);

end;

procedure TF_processos.cb_regtrib1Change(Sender: TObject);
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
   cb_regtrib2.text      := '';
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
   cb_regtrib2.text      := '9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 150/99 art 7º)';
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



end;

procedure TF_processos.TS_diExit(Sender: TObject);
begin

q_itensadicoes.Close;
q_adicoes.Close;
q_detalhe.Close;

end;

procedure TF_processos.b_atualizasiscomexClick(Sender: TObject);
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


begin
v_analise := true;
{if MessageDlg('Atualiza DI - SISCOMEX para Registro?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then v_analise := false;}
if sender = b_atualizasiscomex then begin
   {MessageDlg('Atualização SISCOMEX para Registro!', mtInformation,[mbOk], 0);}
   v_analise := false;
end;

if T_produtos.state = dsInactive then T_produtos.open;

{atualiza capa da di}
atualizadi(f_processos);
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
q_adicoes.Close;
q_adicoes.Params[0].AsString := t_parametrosempresa.asstring;
q_adicoes.Params[1].AsString := t_parametrosfilial.asstring;
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
   t_procdiNR_PROCESSO_INSTR.asstring := t_processosnumero_rcr.asstring;
   t_procdi.post;
   t_procdi.close;
end;

t_di.Active := false;
t_di.active := true;
t_di.close;
t_di.open;
t_di.refresh;
t_di.first;
t_adicoes.close;
t_adicoes.open;
q_adicoes.first;
t_adicoes.first;
if t_adicoes.findkey([Q_adicoesNR_DECL_IMP_MICRO.asstring]) then begin
    while (not t_adicoes.eof) and (t_adicoesNR_DECL_IMP_MICRO.asstring =Q_adicoesNR_DECL_IMP_MICRO.asstring ) do begin
          t_adicoes.delete;
    end;
end;
while not q_adicoes.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Adições',q_adicoes.recordcount,false);
      while t_adicoes.state = dsinsert do begin
      end;
      t_adicoes.append;
         T_adicoesNR_DECL_IMP_MICRO.asstring      :=    Q_adicoesNR_DECL_IMP_MICRO.asstring;
         T_adicoesNR_OP_IMP_MICRO.asstring        :=    Q_adicoesAdicao.asstring;
         {T_adicoesCD_URF_ENTR_MERC.asstring       :=    Q_adicoesURF_chegada.asstring;}
         {T_adicoesCD_VIA_TRANSPORTE.asstring      :=    Q_adicoesVia.asstring;}
         {T_adicoesIN_MULTIMODAL.asboolean         :=    Q_adicoesMultimodal.asboolean;}
         if Q_adicoesRazoSocial.asstring<>'' then T_adicoesNM_FORN_ESTR.asstring           :=    Q_adicoesRazoSocial.asstring;
         if Q_adicoesEndereo.asstring<>'' then T_adicoesED_LOGR_FORN_ESTR.asstring      :=    Q_adicoesEndereo.asstring;
         if Q_adicoesNmero.asstring<>'' then T_adicoesED_NR_FORN_ESTR.asstring        :=    Q_adicoesNmero.asstring;
         if Q_adicoesComplemento.asstring<>'' then T_adicoesED_COMPL_FORN_ESTR.asstring     :=    Q_adicoesComplemento.asstring;
         if Q_adicoesCidade.asstring<>'' then T_adicoesED_CIDAD_FORN_ESTR.asstring     :=    Q_adicoesCidade.asstring;
         if Q_adicoesEstado.asstring<>'' then T_adicoesED_ESTAD_FORN_ESTR.asstring     :=    Q_adicoesEstado.asstring;
         if Q_adicoesPas.asstring<>'' then T_adicoesCD_PAIS_AQUIS_MERC.asstring     :=    Q_adicoesPas.asstring;
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

              if Q_adicoesFABEND.asstring<>'' then T_adicoesED_LOGR_FABRIC.asstring         := Q_adicoesFABEND.asstring;
              if Q_adicoesFABNUM.asstring<>'' then T_adicoesED_NR_FABRIC.asstring           := Q_adicoesFABNUM.asstring;
              if Q_adicoesFABCOMP.asstring<>'' then T_adicoesED_COMPL_FABRIC.asstring        := Q_adicoesFABCOMP.asstring;
              if Q_adicoesFABCID.asstring<>'' then T_adicoesED_CIDAD_FABRIC.asstring        := Q_adicoesFABCID.asstring;
              if Q_adicoesFABEST.asstring<>'' then T_adicoesED_ESTADO_FABRIC.asstring       := Q_adicoesFABEST.asstring;
              {T_adicoesCD_PAIS_ORIG_MERC.asstring      := Q_adicoesFABPAI.asstring+' ';}
         end;
         if Q_adicoesFABPAI.asstring<>'' then T_adicoesCD_PAIS_ORIG_MERC.asstring := Q_adicoesFABPAI.asstring;

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
         T_adicoesVL_MERC_COND_VENDA.asfloat      := Q_adicoesValor_Aduaneiro.asfloat;
         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);

         T_adicoesVL_MERC_VENDA_MN.asfloat        := (Q_adicoesValor_Aduaneiro.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {T_adicoesVL_FRETE_MERC_MNEG.asfloat      := Q_adicoesFrete.asfloat;}
         {T_adicoesCD_MD_FRETE_MERC.asstring      := Q_adicoesMoeda.asstring+' ';}
         T_adicoesVL_FRETE_MERC_MN.asfloat        := (Q_adicoesFrete.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {T_adicoesVL_SEG_MERC_MNEG.asfloat       := Q_adicoesSeguro.asfloat;}
         {T_adicoesCD_MOEDA_SEG_MERC.asstring     := Q_adicoesMoeda.asstring;}
         T_adicoesVL_SEG_MERC_MN.asfloat          := (Q_adicoesSeguro.asfloat*t_taxaconvtaxa_conversao.asfloat);
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
            if Q_adicoesValor_Aduaneiro.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat     := Q_adicoesValor_Aduaneiro.asfloat;
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
         T_adicoesvl_merc_loc_emb_mn.asfloat      := (Q_adicoesVMLE.asfloat*t_taxaconvtaxa_conversao.asfloat);
         T_adicoesvl_base_calculo_mn.asfloat      := (Q_adicoesBase_Calc_II.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {T_adicoesNR_OPER_TRAT_PREV.asstring      := ' ';}

      t_adicoes.post;
      q_adicoes.next
end;

processamento('Aguarde... Atualizando SISCOMEX... Adições',q_adicoes.recordcount,true);


{gera todos os detalhes por adicao}
q_detalhe.Close;
q_detalhe.Params[0].AsString := t_parametrosempresa.asstring;
q_detalhe.Params[1].AsString := t_parametrosfilial.asstring;
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
      t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,q_detalheFatura.asstring,'1']);
      v_seq_pag := q_detalhesequencial.asinteger;
      v_menor   := q_detalhesequencial.asinteger;
      while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = q_detalheFatura.asstring)) do begin
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
      t_produtos.first;
      t_produtos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,q_detalheproduto.asstring]);
      q_descricao := trim(t_produtosdescrio.asstring)+' Referencia: '+q_detalheProduto.asstring;
      if q_detalhecertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_detalhecertificado_origem.asstring;
      if q_detalhereferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_detalhereferencia.asstring;
      if ((q_detalhereferencia_projeto.asstring<>'') and (q_detalhereferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_detalhereferencia_projeto.asstring;
      if t_parametrosfilial.asstring = 'CWB' then begin
         if ((q_detalhePO.asstring<>'') and (q_detalhePO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_detalhePO.asstring;
         if ((q_detalheseqPO.asstring<>'') and (q_detalheseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_detalheseqPO.asstring;
      end;
      q_descricao := q_descricao+' Fatura: '+q_detalheFatura.asstring+' Pagina: '+q_detalhePagina.asstring+' Linha: '+inttostr(v_qsequencial);
      T_detalhesTX_DESC_DET_MERC.asstring := q_descricao;
      {verificar quantidade }
      v_quant := '00000000000'+floattostrf(q_detalheQuantidade.asfloat,fffixed,9,5);
      v_quant := copy(v_quant,(length(v_quant)-14),9)+copy(v_quant,(length(v_quant)-4),5);
      T_detalhesQT_MERC_UN_COMERC.asstring  := v_quant;
      t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,q_detalheFatura.asstring,q_detalheSequencial.asstring]);
      {localiza o nome da unidades}
      t_unidades.findkey([t_itensfaturasunidade.asstring]);
      if t_unidadesdescricao.asstring<>'' then T_detalhesNM_UN_MEDID_COMERC.asstring := t_unidadesdescricao.asstring;
      T_detalhesVL_UNID_LOC_EMB.asfloat     := (t_itensfaturasvmle.asfloat/t_itensfaturasquantidade.asfloat);

      v_valor := '00000000000000'+floattostrf((t_itensfaturasvalor_aduaneiro.asfloat/t_itensfaturasquantidade.asfloat),fffixed,13,7);
      v_valor := copy(v_valor,(length(v_valor)-20),13)+copy(v_valor,(length(v_valor)-6),7);

      T_detalhesVL_UNID_COND_VENDA.asstring := v_valor;
      T_detalhesCD_PRODUTO.asstring         := q_detalheProduto.asstring;
      t_detalhes.post;
      {grava sequencia da adicao nos itens tributaveis}
      if T_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,q_detalhefatura.asstring,q_detalhesequencial.asstring,q_detalheseq.asstring]) then begin
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
q_acresdedu.Params[0].AsString := t_parametrosempresa.asstring;
q_acresdedu.Params[1].AsString := t_parametrosfilial.asstring;
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
         T_acresvalCD_MET_ACRES_VALOR.asstring          := '9';
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
q_atovinc.Params[0].AsString := t_parametrosempresa.asstring;
q_atovinc.Params[1].AsString := t_parametrosfilial.asstring;
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
q_embcarga.Params[0].AsString := t_parametrosempresa.asstring;
q_embcarga.Params[1].AsString := t_parametrosfilial.asstring;
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
q_cargaarm.Params[0].AsString := t_parametrosempresa.asstring;
q_cargaarm.Params[1].AsString := t_parametrosfilial.asstring;
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
q_destaquencm.Params[0].AsString := t_parametrosempresa.asstring;
q_destaquencm.Params[1].AsString := t_parametrosfilial.asstring;
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
q_docsinstru.Params[0].AsString := t_parametrosempresa.asstring;
q_docsinstru.Params[1].AsString := t_parametrosfilial.asstring;
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
processamento('Aguarde... Atualizando SISCOMEX... Documentos de Instruções',q_docsinstru.recordcount,true);

{verifica tributos por adicao}
q_tributos.Close;
q_tributos.Params[0].AsString := t_parametrosempresa.asstring;
q_tributos.Params[1].AsString := t_parametrosfilial.asstring;
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
      t_tributo.append;
      T_tributoNR_DECL_IMP_MICRO.asstring  := Q_tributosNR_DECL_IMP_MICRO.asstring;
      T_tributoNR_OP_IMP_MICRO.asstring    := Q_tributosAdicao.asstring;
      T_tributoCD_RECEITA_IMPOSTO.asstring := Q_tributoscod_IPI.asstring;
      T_tributoCD_TIPO_ALIQ_IPT.asstring   := Q_tributostipo_aliq.asstring;
      T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributossomadeBase_Calc_IpI.asfloat*t_taxaconvtaxa_conversao.asfloat);
      T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_IPI.asfloat;
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
      q_tributos.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Tributos',q_tributos.recordcount,true);

{verifica pagamentos previstos por adicao}
q_pagprev.Close;
q_pagprev.Params[0].AsString := t_parametrosempresa.asstring;
q_pagprev.Params[1].AsString := t_parametrosfilial.asstring;
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
q_pagtributos.Params[0].AsString := t_parametrosempresa.asstring;
q_pagtributos.Params[1].AsString := t_parametrosfilial.asstring;
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
    for i := 0 to strtoint(q_pagtributosnadicoes.asstring)-1 do begin
        if ((i >= 0 )  and (i <= 1 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
        if ((i >= 2 )  and (i <= 4 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
        if ((i >= 5 )  and (i <= 9 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
        if ((i >= 10)  and (i <= 21))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
        if ((i >= 22)  and (i <= 51))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
        if (i >= 52) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
    end;
    {ratear nos itens das faturas}
    {T_pagtributosDT_PGTO_TRIBUTO.asstring     := ' ';
    T_pagtributosVL_MULTA_PGTO_TRIB.asfloat   := 0;
    T_pagtributosVL_JUROS_PGTO_TRIB.asfloat   := 0;}
    t_pagtributos.post;

    q_pagtributos.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Pagamentos de Tributos por Adição',q_pagtributos.recordcount,true);

{verifica pagamentos vinculados por adicao}
q_pagvinculados.Close;
q_pagvinculados.Params[0].AsString := t_parametrosempresa.asstring;
q_pagvinculados.Params[1].AsString := t_parametrosfilial.asstring;
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
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando adicoes de admissao
        q_geraadicoes.params[0].asstring := 'ADM';
        q_geraadicoes.params[1].asstring := '5';
        q_geraadicoes.params[2].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geraadicoes.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando detalhes das mercadorias das adicoes de admissao
        q_geradet.params[0].asstring := 'ADM';
        q_geradet.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geradet.params[2].asstring := '5';
        q_geradet.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando acrescimos valoracao das adicoes de admissao
        q_acresval.params[0].asstring := 'ADM';
        q_acresval.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_acresval.params[2].asstring := '5';
        q_acresval.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando atos vinculados das adicoes de admissao
        q_atos.params[0].asstring := 'ADM';
        q_atos.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_atos.params[2].asstring := '5';
        q_atos.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando embalagens de carga das adicoes de admissao
        q_emb.params[0].asstring := 'ADM';
        q_emb.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_emb.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando armazens das adicoes de admissao
        q_car.params[0].asstring := 'ADM';
        q_car.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_car.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando destaques ncm das adicoes de admissao
        q_desncm.params[0].asstring := 'ADM';
        q_desncm.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_desncm.params[2].asstring := '5';
        q_desncm.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando documentos de instrução das adicoes de admissao
        q_doci.params[0].asstring := 'ADM';
        q_doci.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_doci.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando tributos das adicoes de admissao
        q_trib.params[0].asstring := 'ADM';
        q_trib.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_trib.params[2].asstring := '5';
        q_trib.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando pagamentos previstos das adicoes de admissao
        q_pagpre.params[0].asstring := 'ADM';
        q_pagpre.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagpre.params[2].asstring := '5';
        q_pagpre.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando pagamentos vinculados das adicoes de admissao
        q_pagvin.params[0].asstring := 'ADM';
        q_pagvin.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagvin.params[2].asstring := '5';
        q_pagvin.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando processos di de admissao
        q_procdi.params[0].asstring := 'ADM';
        q_procdi.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_procdi.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///arruma adicoes de admissao
        t_arrumaadicoes.close;
        t_arrumaadicoes.open;
        t_arrumaadicoes.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM']);
        apri := 0;
        while ((not t_arrumaadicoes.eof) and
               ( t_arrumaadicoesNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM')) do begin
              processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
              apri := apri+1;
              t_arrumaadicoes.edit;
              t_arrumaadicoesNR_OP_IMP_MICRO.asstring := copy('000'+inttostr(apri),length('000'+inttostr(apri))-2,3);
              t_arrumaadicoes.post;
              t_arrumaadicoes.next;
        end;

        ///acerta peso da di de admissao
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
           t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
           v_moedaigual := true;
           v_moeda      := t_faturasmoeda.asstring;
           v_totfat     := 0;
           v_totfatm    := 0;
           while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
                if v_moeda <> t_faturasmoeda.asstring then begin
                    v_moeda      := '790'; {moeda real}
                    v_moedaigual := false;
                end;
                t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                     if t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='5' then begin
                                 v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversao.asfloat);
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
           q_acertafretseg.close;
           q_acertafretseg.params[0].asstring := me_nossaref.text;
           q_acertafretseg.params[1].asstring := '5';
           q_acertafretseg.open;

           t_di.Edit;
           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then begin
              T_diVL_TOT_FRT_PREPAID.asfloat     := (q_acertafretsegprepaid.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOT_FRT_COLLECT.asfloat     := (q_acertafretsegcollect.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_FRETE_TNAC_MNEG.asfloat     := (q_acertafretsegternac.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat);
           end;

           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
              T_diVL_TOT_SEGURO_MNEG.asfloat     := (q_acertafretsegseguro.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_SEG_MN.asfloat        := q_acertafretsegseguro.asfloat;
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

          {grava ii}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ii.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_II_a_recolher.asfloat);
          t_pagtributos.post;
          {grava ipi}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ipi.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_IPI_a_recolher.asfloat);
          t_pagtributos.post;

          {grava sis}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_sis.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 30;
          for i := 0 to (apri) do begin
              if ((i >= 0 )  and (i <= 1 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
              if ((i >= 2 )  and (i <= 4 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
              if ((i >= 5 )  and (i <= 9 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
              if ((i >= 10)  and (i <= 21))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
              if ((i >= 22)  and (i <= 51))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
              if (i >= 52) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
          end;
          t_pagtributos.post;
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
////aqui

         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
         T_arrumaadicoesVL_MERC_VENDA_MN.asfloat        := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

///         T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
///         T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

         T_arrumaadicoesvl_merc_loc_emb_mn.asfloat      := T_arrumaadicoesVL_MERC_VENDA_MN.asfloat;
         T_arrumaadicoesvl_base_calculo_mn.asfloat      := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat+T_arrumaadicoesVL_FRETE_MERC_MN.asfloat+T_arrumaadicoesVL_SEG_MERC_MN.asfloat);

///         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_arrumaadicoesCD_MD_FRETE_MERC.asstring]);
///         T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

///         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_arrumaadicoesCD_MOEDA_SEG_MERC.asstring]);
///         T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;


///
              t_arrumaadicoes.post;
              t_arrumaadicoes.next;
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
           T_diTX_INFO_COMPL.asstring         := '';

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

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: DUILIO MAZUREK RODRIGUES.'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: MANUEL C. DE ALMEIDA MARQUES DA SILVA.'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: VANDERLEI DE JESUS DA MAIA.'+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. MS:'+me_nossaref.text+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. CLIENTE:'+T_processosCdigo_Cliente.asstring+chr(13)+chr(10)+'|';


           t_di.post;

           ///acerta valor da di de consumo
           {testar moedas das faturas}
           t_faturas.first;
           t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
           v_moedaigual := true;
           v_moeda      := t_faturasmoeda.asstring;
           v_totfat     := 0;
           v_totfatm    := 0;
           while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
                if v_moeda <> t_faturasmoeda.asstring then begin
                    v_moeda      := '790'; {moeda real}
                    v_moedaigual := false;
                end;
                t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                     if t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='1' then begin
                                 v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversaoc.asfloat);
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
              T_diVL_TOT_FRT_PREPAID.asfloat     := (q_acertafretsegprepaid.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOT_FRT_COLLECT.asfloat     := (q_acertafretsegcollect.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_FRETE_TNAC_MNEG.asfloat     := (q_acertafretsegternac.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat);
           end;

           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
              T_diVL_TOT_SEGURO_MNEG.asfloat     := (q_acertafretsegseguro.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_SEG_MN.asfloat        := q_acertafretsegseguro.asfloat;
           end;
           t_di.post;

           t_processos.edit;
           t_processosvalor_fobc.asfloat  := t_divl_total_mle_mn.asfloat;
           t_processosvalor_cifc.asfloat  := (t_processosvalor_fobc.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
           t_processos.Post;

        end;

           ////acerta tributos di de consumo
           t_tributo.first;
           if t_tributo.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']) then begin
              qii:=0;
              while ((not t_tributo.eof) and (t_tributoNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do begin
                     t_arrumaadicoes.findkey([t_tributoNR_DECL_IMP_MICRO.asstring,t_tributoNR_OP_IMP_MICRO.asstring]);
                     t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
                     t_tributo.edit;
                     if t_tributoCD_RECEITA_IMPOSTO.asstring = '0001' then begin
                     {
                     T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_II.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributosBase_Calc_II.asfloat*(Q_tributosAliq_NCM_II.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
                     }
                     T_tributoVL_BASE_CALC_ADVAL.asfloat := T_arrumaadicoesvl_base_calculo_mn.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat := ((T_tributoVL_BASE_CALC_ADVAL.asfloat*(T_tributoPC_ALIQ_NORM_ADVAL.asfloat/100)));
                     qii := T_tributoVL_CALC_IPT_ADVAL.asfloat;
                     end;

                     if t_tributoCD_RECEITA_IMPOSTO.asstring = '0002' then begin
                     {
                     T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributossomadeBase_Calc_IpI.asfloat*t_taxaconvtaxa_conversao.asfloat);
                     T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_IPI.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributossomadeBase_Calc_IpI.asfloat*(Q_tributosAliq_NCM_IpI.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
                     }
                     T_tributoVL_BASE_CALC_ADVAL.asfloat := qii+T_arrumaadicoesvl_base_calculo_mn.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat := ((T_tributoVL_BASE_CALC_ADVAL.asfloat*(T_tributoPC_ALIQ_NORM_ADVAL.asfloat/100)));
                     end;

                     t_tributo.post;
                     t_tributo.next;
              end;
           end;

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

          {grava ii}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ii.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_II_a_recolher.asfloat);
          t_pagtributos.post;
          {grava ipi}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ipi.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_IPI_a_recolher.asfloat);
          t_pagtributos.post;

          {grava sis}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_sis.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 30;
          for i := 0 to (apri) do begin
              if ((i >= 0 )  and (i <= 1 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
              if ((i >= 2 )  and (i <= 4 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
              if ((i >= 5 )  and (i <= 9 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
              if ((i >= 10)  and (i <= 21))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
              if ((i >= 22)  and (i <= 51))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
              if (i >= 52) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
          end;
          t_pagtributos.post;


     end;
   processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,TRUE);

   showmessage(v_usuario+', foram geradas as DIs:'+#13#10#13#10+
              'Ref: '+me_nossaref.text+' = Admissão Temporária e Consumo (12)'+#13#10+
              'Ref: '+me_nossaref.text+'-ADM'+' = Somente Admissão Temporária (05)'+#13#10+
              'Ref: '+me_nossaref.text+'-CON'+' = Somente Consumo (01)'+#13#10)
   end;

end;

if not v_analise then begin

///MessageDlg('Confirma atualização da BASE INTERNET?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
///gerar atualização da base internet - itensfaturas/produtos
t_itensfaturas.first;
if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin
///   AtuNet('ItensFaturas',[T_itensfaturasEmpresa.asstring,T_itensfaturasFilial.asstring,T_itensfaturasprocesso.asstring],'D');
   processamento('Aguarde... Atualizando BASE INTERNET... Itens de Faturas',100,FALSE);
   while ((not t_itensfaturas.eof) and
       (t_parametrosempresa.asstring=t_itensfaturasempresa.asstring) and
       (t_parametrosfilial.asstring=t_itensfaturasfilial.asstring) and
       (me_nossaref.text=t_itensfaturasprocesso.asstring)) do begin
       processamento('Aguarde... Atualizando BASE INTERNET... Itens de Faturas',100,FALSE);
       AtuNet('ItensFaturas',[T_itensfaturasEmpresa.asstring,T_itensfaturasFilial.asstring,T_itensfaturasprocesso.asstring,T_itensfaturasfatura.asstring,T_itensfaturassequencial.asstring],'P');
       if t_produtos.findkey([T_itensfaturasEmpresa.asstring,T_itensfaturasFilial.asstring,T_itensfaturasproduto.asstring]) then begin
          AtuNet('Produtos',[T_produtosEmpresa.asstring,T_produtosFilial.asstring,T_produtoscdigo.asstring],'P');
       end;
       t_itensfaturas.next;
   end;
   processamento('Aguarde... Atualizando BASE INTERNET... Itens de Faturas',100,true);
end;
t_tributositem.first;
if t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin
///   AtuNet('Tributacao_Item_Fatura',[T_tributositemEmpresa.asstring,T_tributositemFilial.asstring,T_tributositemprocesso.asstring],'D');
   processamento('Aguarde... Atualizando BASE INTERNET... Tributação',100,FALSE);
while ((not t_tributositem.eof) and
       (t_parametrosempresa.asstring=t_tributositemempresa.asstring) and
       (t_parametrosfilial.asstring=t_tributositemfilial.asstring) and
       (me_nossaref.text=t_tributositemprocesso.asstring)) do begin
       processamento('Aguarde... Atualizando BASE INTERNET... Tributação',100,FALSE);
       AtuNet('Tributacao_Item_Fatura',[T_tributositemEmpresa.asstring,T_tributositemFilial.asstring,T_tributositemprocesso.asstring,T_tributositemfatura.asstring,T_tributositemsequencial_item.asstring,T_tributositemsequencial.asstring],'P');
       t_tributositem.next;
end;
processamento('Aguarde... Atualizando BASE INTERNET... Tributação',100,true);
end;
end;

////if not v_analise then showmessage(v_usuario+', após o registro da DI informar os valores CIF e FOB na pasta "Desembaraço".');

{
///gravar FOB/CIF NO PROCESSO

{possiciona no processo}
{t_processos.first;
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

if (t_processostipo_declarao.asstring='12') then begin
   q_fobcif12c.close;
   q_fobcif12c.Params[0].AsString := me_nossaref.text;
   q_fobcif12c.open;
   q_fobcif12a.close;
   q_fobcif12a.Params[0].AsString := me_nossaref.text;
   q_fobcif12a.open;
////strtofloat(floattostrf((QR_TR.Q_TRSomaDeValor_II_Devido.asfloat*strtofloat(q_taxa)),fffixed,10,5))
   t_processos.edit;
   if q_fobcif12a.recordcount >0 then begin
   t_processosvalor_fob.asfloat := strtofloat(floattostrf(q_fobcif12afobreal.asfloat,fffixed,10,5));
   t_processosvalor_cif.asfloat := strtofloat(floattostrf(q_fobcif12acifreal.asfloat,fffixed,10,5));
   end;
   if q_fobcif12c.recordcount >0 then begin
   t_processosvalor_fobc.asfloat := strtofloat(floattostrf(q_fobcif12cfobreal.asfloat,fffixed,10,5));
   t_processosvalor_cifc.asfloat := strtofloat(floattostrf(q_fobcif12ccifreal.asfloat,fffixed,10,5));
   end;
   t_processos.Post;

   q_fobcif12c.close;
   q_fobcif12a.close;

end
else begin
   q_fobcif.close;
   q_fobcif.Params[0].AsString := me_nossaref.text;
   q_fobcif.open;

   if q_fobcif.recordcount > 0 then begin
   t_processos.edit;
   t_processosvalor_fob.asfloat  := strtofloat(floattostrf(q_fobciffobreal.asfloat,fffixed,10,5));
   t_processosvalor_cif.asfloat  := strtofloat(floattostrf(q_fobcifcifreal.asfloat,fffixed,10,5));
   t_processosvalor_fobc.asfloat := 0;
   t_processosvalor_cifc.asfloat := 0;
   t_processos.Post;
   end;

   q_fobcif.close;

end;
}

if (t_processostipo_declarao.asstring='12') then begin
showmessage(v_usuario+', foram calculados os valores:'+#13#10+
'Admissão'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cif.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fob.asfloat)+#13#10+
'Consumo'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cifc.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fobc.asfloat)+#13#10+#13#10+
'verificar da pasta "desembaraço"')
end
else begin
showmessage(v_usuario+', foram calculados os valores:'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cif.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fob.asfloat)+#13#10+#13#10+
'verificar da pasta "desembaraço"')

end;

MessageDlg(v_usuario+' seu SISCOMEX foi Atualizado!', mtInformation,[mbOk], 0);

end;

procedure TF_processos.rg_vinculacaoClick(Sender: TObject);
begin
rg_vinculacao.visible := false;
me_condicao.SetFocus;
end;


{Abrir tabelas
capa
T_processos.open;
T_tipodecl.open;
T_parametros.open;
T_tipospro.open;
T_importadores.open;
T_di.open;
T_numerador.open;
T_urf.open;
T_cambio.open;

}

procedure TF_processos.TS_capaExit(Sender: TObject);
begin

{faturas}
if T_faturas.state           = dsInactive then T_faturas.open;
if T_itensfaturas.state      = dsInactive then T_itensfaturas.open;
if T_produtos.state          = dsInactive then T_produtos.open;
if T_incoterms.state         = dsInactive then T_incoterms.open;
if T_fabricantes.state       = dsInactive then T_fabricantes.open;
if T_unidades.state          = dsInactive then T_unidades.open;
if T_exportadores.state      = dsInactive then T_exportadores.open;
if T_ncm.state               = dsInactive then T_ncm.open;
if T_moeda.state             = dsInactive then T_moeda.open;
if T_inst.state              = dsInactive then T_inst.open;
if T_moda.state              = dsInactive then T_moda.open;
if T_moti.state              = dsInactive then T_moti.open;
if T_parcelasvar.state       = dsInactive then T_parcelasvar.open;
if T_pagvinc.state           = dsInactive then T_pagvinc.open;
if T_taxabacen.state         = dsInactive then T_taxabacen.open;
if T_acrescimos.state        = dsInactive then T_acrescimos.open;
if T_deducoes.state          = dsInactive then T_deducoes.open;
if T_concargas.state         = dsInactive then T_concargas.open;
if T_tipocarga.state         = dsInactive then T_tipocarga.open;
if T_tipoacrescimo.state     = dsInactive then T_tipoacrescimo.open;
if T_tipodeducoes.state      = dsInactive then T_tipodeducoes.open;
if T_assosacre.state         = dsInactive then T_assosacre.open;
if T_assosdedu.state         = dsInactive then T_assosdedu.open;
if T_tipoembalagem.state     = dsInactive then T_tipoembalagem.open;
if T_embalagempro.state      = dsInactive then T_embalagempro.open;
if T_pais.state              = dsInactive then T_pais.open;
if T_tiposacrescimos.state   = dsInactive then T_tiposacrescimos.open;
if T_tiposreducoes.state     = dsInactive then T_tiposreducoes.open;
if T_transportadores.state   = dsInactive then T_transportadores.open;
if T_transpprocesso.state    = dsInactive then T_transpprocesso.open;
if T_followup.state          = dsInactive then T_followup.open;
if T_eventos.state           = dsInactive then T_eventos.open;
if T_obseventos.state        = dsInactive then T_obseventos.open;
if T_recintos.state          = dsInactive then T_recintos.open;
if T_setores.state           = dsInactive then T_setores.open;
if T_armazem.state           = dsInactive then T_armazem.open;
if T_armazempro.state        = dsInactive then T_armazempro.open;
if T_tributositem.state      = dsInactive then T_tributositem.open;
if T_aladi.state             = dsInactive then T_aladi.open;
if T_fundamentolegal.state   = dsInactive then T_fundamentolegal.open;
if T_atos.state              = dsInactive then T_atos.open;
if T_motadmtemp.state        = dsInactive then T_motadmtemp.open;


end;

procedure TF_processos.Testatabelas(Sender: TObject);
begin

{faturas}
if T_faturas.state           = dsInactive then T_faturas.open;
if T_itensfaturas.state      = dsInactive then T_itensfaturas.open;
if T_produtos.state          = dsInactive then T_produtos.open;
if T_incoterms.state         = dsInactive then T_incoterms.open;
if T_fabricantes.state       = dsInactive then T_fabricantes.open;
if T_unidades.state          = dsInactive then T_unidades.open;
if T_exportadores.state      = dsInactive then T_exportadores.open;
if T_ncm.state               = dsInactive then T_ncm.open;
if T_moeda.state             = dsInactive then T_moeda.open;
if T_inst.state              = dsInactive then T_inst.open;
if T_moda.state              = dsInactive then T_moda.open;
if T_moti.state              = dsInactive then T_moti.open;
if T_parcelasvar.state       = dsInactive then T_parcelasvar.open;
if T_pagvinc.state           = dsInactive then T_pagvinc.open;
if T_taxabacen.state         = dsInactive then T_taxabacen.open;
if T_acrescimos.state        = dsInactive then T_acrescimos.open;
if T_deducoes.state          = dsInactive then T_deducoes.open;
if T_concargas.state         = dsInactive then T_concargas.open;
if T_tipocarga.state         = dsInactive then T_tipocarga.open;
if T_tipoacrescimo.state     = dsInactive then T_tipoacrescimo.open;
if T_tipodeducoes.state      = dsInactive then T_tipodeducoes.open;
if T_assosacre.state         = dsInactive then T_assosacre.open;
if T_assosdedu.state         = dsInactive then T_assosdedu.open;
if T_tipoembalagem.state     = dsInactive then T_tipoembalagem.open;
if T_embalagempro.state      = dsInactive then T_embalagempro.open;
if T_pais.state              = dsInactive then T_pais.open;
if T_tiposacrescimos.state   = dsInactive then T_tiposacrescimos.open;
if T_tiposreducoes.state     = dsInactive then T_tiposreducoes.open;
if T_transportadores.state   = dsInactive then T_transportadores.open;
if T_transpprocesso.state    = dsInactive then T_transpprocesso.open;
if T_followup.state          = dsInactive then T_followup.open;
if T_eventos.state           = dsInactive then T_eventos.open;
if T_obseventos.state        = dsInactive then T_obseventos.open;
if T_recintos.state          = dsInactive then T_recintos.open;
if T_setores.state           = dsInactive then T_setores.open;
if T_armazem.state           = dsInactive then T_armazem.open;
if T_armazempro.state        = dsInactive then T_armazempro.open;
if T_tributositem.state      = dsInactive then T_tributositem.open;
if T_aladi.state             = dsInactive then T_aladi.open;
if T_fundamentolegal.state   = dsInactive then T_fundamentolegal.open;
if T_atos.state              = dsInactive then T_atos.open;
if T_motadmtemp.state        = dsInactive then T_motadmtemp.open;


end;



procedure TF_processos.me_numeroserieKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then me_po.setfocus;
end;

procedure TF_processos.me_poKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_seqpo.setfocus;
end;

procedure TF_processos.b_imprimeClick(Sender: TObject);
var qtaxa:string;
begin
   taxaconvn(f_processos);
   QR_RCR.preview;
end;

procedure TF_processos.b_gravaRCRClick(Sender: TObject);
begin
{possiciona no processo}
t_processos.first;
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

while t_processos.state = dsedit do begin
end;
t_processos.edit;
T_processosNumero_RCR.asstring        :=   me_numerorcr.text      ;
if me_dataentradarcr.text<>'  /  /    ' then T_processosData_Entrada_RCR.asstring   :=   me_dataentradarcr.text
else T_processosData_Entrada_RCR.asstring   :=   '';
if me_dataaprova.text    <>'  /  /    ' then T_processosData_Aprovacao_RCR.asstring :=   me_dataaprova.text
else T_processosData_Aprovacao_RCR.asstring :=   '';

T_processosFundamentacao_RCR.asstring :=   copy(cb_funda.text,1,4);
t_processosident_meio1.asstring := me_transp1.text;
t_processosident_meio2.asstring := me_transp2.text;
t_processos.post;
showmessage(v_usuario+', RCR gravado.');
end;

procedure TF_processos.ts_RCRShow(Sender: TObject);
var qrcr:integer;
    j:integer;
    qpag:real;
    qpag2:integer;
    qpega:integer;
    qmfpnpo:string;

begin
{possiciona no processo}
t_processos.first;
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

if not assigned (QR_RCR) then Application.CreateForm(TQR_RCR, QR_RCR);

   {roda a sql de itens de rcr}
   QR_RCR.Q_itensrcr.Close;
   QR_RCR.Q_itensrcr.Params[0].AsString := f_processos.t_parametrosempresa.asstring;
   QR_RCR.Q_itensrcr.Params[1].AsString := f_processos.t_parametrosfilial.asstring;
   QR_RCR.Q_itensrcr.Params[2].AsString := f_processos.me_nossaref.text;
   QR_RCR.Q_itensrcr.open;
if QR_RCR.Q_itensrcr.eof then begin
   MessageDlg('Declaração não é de Admissão Temporária ou não possui Tributação Suspensa!', mtInformation,[mbOk], 0);
   p_rcr.enabled := false;
   end
else begin
   t_rcrtemp.first;
   while not t_rcrtemp.eof do begin
         if (t_rcrtempprocesso.asstring = me_nossaref.text) then t_rcrtemp.delete
         else t_rcrtemp.Next;
   end;
   qrcr := 0;
   QR_RCR.Q_itensrcr.first;
   while not QR_RCR.Q_itensrcr.eof do begin
         qrcr := qrcr+1;
         while t_rcrtemp.state = dsinsert do begin
         end;
         t_rcrtemp.Append;
         t_rcrtempprocesso.asstring := me_nossaref.text;
         t_rcrtempncm.asstring      := QR_RCR.Q_itensrcrncm.asstring;
         t_produtos.findkey([QR_RCR.Q_itensrcrempresa.asstring,QR_RCR.Q_itensrcrfilial.asstring,QR_RCR.Q_itensrcrproduto.asstring]);
         t_rcrtempdescricao_produto.asstring := trim(COPY(t_produtosdescrio.asstring,1,70));
         t_rcrtempfatura.asstring      := QR_RCR.Q_itensrcrfatura.asstring;
         t_rcrtemppagina.asstring      := QR_RCR.Q_itensrcrpagina.asstring;
         t_rcrtempquantidade.asfloat   := QR_RCR.Q_itensrcrsomadequantidade.asfloat;
         t_rcrtempvalor.asfloat        := QR_RCR.Q_itensrcrSomaDeValor_Aduaneiro.asfloat;
         t_rcrtemp.post;
         for qpega := 1 to strtoint(floattostr(int(length(trim(t_produtosdescrio.asstring ))/70))) do begin
             qrcr := qrcr+1;
             while t_rcrtemp.state = dsinsert do begin
             end;
             t_rcrtemp.Append;
             t_rcrtempprocesso.asstring := me_nossaref.text;
             t_rcrtempdescricao_produto.asstring := trim(COPY(t_produtosdescrio.asstring,(qpega*70)+1,70));
             t_rcrtempncm.asstring                    := ' ';
             t_rcrtempfatura.asstring                 := ' ';
             t_rcrtemppagina.asstring                 := ' ';
             t_rcrtemp.post;
         end;
         qmfpnpo := ' '+trim('MFPN.'+QR_RCR.Q_itensrcrproduto.asstring);
         if QR_RCR.Q_itensrcrPO.asstring<>'' then qmfpnpo := qmfpnpo+' PO.'+TRIM(QR_RCR.Q_itensrcrPO.asstring);

         if (length(trim(t_rcrtempdescricao_produto.asstring+qmfpnpo)) < 70) then begin
            t_rcrtemp.edit;
            t_rcrtempdescricao_produto.asstring := t_rcrtempdescricao_produto.asstring+qmfpnpo;
            t_rcrtemp.post;
            end
         else begin
             qrcr := qrcr+1;
             t_rcrtemp.Append;
             t_rcrtempprocesso.asstring := me_nossaref.text;
             t_rcrtempdescricao_produto.asstring := qmfpnpo;
             t_rcrtempncm.asstring                    := ' ';
             t_rcrtempfatura.asstring                 := ' ';
             t_rcrtemppagina.asstring                 := ' ';
             t_rcrtemp.post;
         end;

         QR_RCR.Q_itensrcr.next;
   end;
   //// alterei di 04/04/2001 qpag := int(qrcr/18);
   ///if ((qrcr mod 18) > 0) then qpag := qpag +1;
if qrcr = 19 then qrcr := 20;
   qpag := round(qrcr*0.055);
   if (((qrcr*0.055) - qpag) > 0.055) then qpag := qpag +1;
   qpag2 := strtoint(floattostr(qpag));
   if ((qpag2*18)-qrcr) > 0 then begin
   for j := 1 to (((qpag2*18)-qrcr)+(qpag2-1)) do begin
         while t_rcrtemp.state = dsinsert do begin
         end;
         t_rcrtemp.Append;
         t_rcrtempprocesso.asstring               := me_nossaref.text;
         t_rcrtempncm.asstring                    := ' ';
         t_rcrtempdescricao_produto.asstring      := ' ';
         t_rcrtempfatura.asstring                 := ' ';
         t_rcrtemppagina.asstring                 := ' ';
         t_rcrtemp.post;
   end;
   end;
   QR_RCR.Q_rcrtemp.Close;
   QR_RCR.Q_rcrtemp.Params[0].AsString := f_processos.me_nossaref.text;
   QR_RCR.Q_rcrtemp.open;

   p_rcr.enabled := true;
{verifica os faundamentos de RCR por processo por filial}
t_fundarcr.first;
cb_funda.clear;
while not t_fundarcr.eof do begin
      cb_funda.items.add(copy(T_fundaRCRCodigo.asstring+'   ',1,4)+' '+ T_fundaRCRDescricao.asstring);
      if (copy(T_fundaRCRCodigo.asstring+'   ',1,4) = T_processosFundamentacao_RCR.asstring) then
         cb_funda.text := (copy(T_fundaRCRCodigo.asstring+'   ',1,4)+' '+ T_fundaRCRDescricao.asstring);
      t_fundarcr.next;
end;

me_numerorcr.text      := '';
me_dataentradarcr.text := '';
me_dataaprova.text     := '';
if T_processosNumero_RCR.asstring<>'' then  me_numerorcr.text      := T_processosNumero_RCR.asstring;
if T_processosData_Entrada_RCR.asstring<>'' then    me_dataentradarcr.text := T_processosData_Entrada_RCR.asstring;
if T_processosData_Aprovacao_RCR.asstring<>''then me_dataaprova.text     := T_processosData_Aprovacao_RCR.asstring;

if t_processosident_meio1.asstring = '' then begin
t_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_processoscdigo.asstring]);
T_pais.findkey([t_transpprocessopais_procedencia.asstring]);
me_transp1.text := 'PROCEDÊNCIA: '+T_paisdescricao.asstring+'  ';
if (t_transpprocessotipodoccarga.asstring = '1 ' ) then me_transp1.text := me_transp1.text + 'AWB: '+t_transpprocessonumerodoccarga.asstring+'/'+t_transpprocessonumeromaster.asstring;
if (t_transpprocessotipodoccarga.asstring = '3 ' ) then me_transp1.text := me_transp1.text + 'HOUSE AWB: '+t_transpprocessonumerodoccarga.asstring+'/'+t_transpprocessonumeromaster.asstring;
if (t_transpprocessotipodoccarga.asstring = '14' ) then me_transp1.text := me_transp1.text + 'DSIC: '+t_transpprocessonumerodoccarga.asstring+'/'+t_transpprocessonumeromaster.asstring;
if (t_transpprocessotipodoccarga.asstring = '13' ) then me_transp1.text := me_transp1.text + 'CRT: '+t_transpprocessonumerodoccarga.asstring+'/'+t_transpprocessonumeromaster.asstring;
if (t_transpprocessotipodoccarga.asstring = '10' ) then me_transp1.text := me_transp1.text + 'B/L: '+t_transpprocessonumerodoccarga.asstring+'/'+t_transpprocessonumeromaster.asstring;
if (t_transpprocessotipodoccarga.asstring = '12' ) then me_transp1.text := me_transp1.text + 'HOUSE B/L: '+t_transpprocessonumerodoccarga.asstring+'/'+t_transpprocessonumeromaster.asstring;
end
else begin
   me_transp1.text := t_processosident_meio1.asstring;
end;

if t_processosident_meio2.asstring = '' then begin
T_transportadores.findkey([t_transpprocessoempresa.asstring,t_transpprocessofilial.asstring,t_transpprocessotransportador.asstring]);
if (t_transpprocessoembarcacao.asstring <> '') then me_transp2.text := 'EMBARCAÇÃO: '+ t_transpprocessoembarcacao.asstring
else me_transp2.text := 'TRANSPORTADOR: '+ T_transportadoresrazosocial.asstring;
end
else begin
    me_transp2.text := t_processosident_meio2.asstring;
end;

end;

end;

procedure TF_processos.ts_trShow(Sender: TObject);
begin
{possiciona no processo}
t_processos.first;
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

if ((t_processostipo_declarao.asstring<>'05') and
   (t_processostipo_declarao.asstring<>'12')) then begin
   MessageDlg('Declaração não é de Admissão Temporária!', mtInformation,[mbOk], 0);
   p_tr.enabled := false;
   end
else begin
   p_tr.enabled := true;


{verifica os procuradores por processo por filial}
t_procuradores.first;
cb_procuradores.clear;
while not t_procuradores.eof do begin
      if (t_procuradoresempresa.asstring = t_parametrosempresa.asstring) and (t_procuradoresfilial.asstring = t_parametrosfilial.asstring ) then begin
          cb_procuradores.items.add(copy(T_procuradoresCodigo.asstring+'   ',1,4)+' '+ T_procuradoresrazosocial.asstring);
          if (copy(T_procuradoresCodigo.asstring+'   ',1,4) = T_processosprocurador.asstring) then
            cb_procuradores.text := (copy(T_procuradoresCodigo.asstring+'   ',1,4)+' '+ T_procuradoresrazosocial.asstring);
      end;
      t_procuradores.next;
end;

    me_numerotr.text       := T_processosNumero_TR.asstring;
    me_dataentrada.text    := T_processosData_Entrada_TR.asstring;
    me_dataaprovacao.text  := T_processosData_Aprovacao_TR.asstring;
    me_datavencimento.text := T_processosData_vencimento_TR.asstring;
    me_databaixatr.text    := T_processosData_baixa_TR.asstring;
    me_datadeposito.text   := T_processosData_deposito_GAR.asstring;
    me_nomebanco.text      := T_processosNome_banco_GAR.asstring;
    me_agencia.text        := T_processosAgencia_GAR.asstring;
    me_nometitulo.text     := T_processosNome_titulo_GAR.asstring;
    me_numeros.text        := T_processosnumeros_titulos_GAR.asstring;
    me_nomeseguradora.text := T_processosNome_seguradora_GAR.asstring;
    me_numeroapolice.text  := T_processosapolice_GAR.asstring;
    me_nomefiador.text     := T_processosnome_fiador_GAR.asstring;
    me_cnpjfiador.text     := T_processosCNPJ_fiador_GAR.asstring;
    me_enderecofiador.text := T_processosendereco_fiador_GAR.asstring;

    if T_processosTipo_Garantia.asstring <>'' then rg_garantia.itemindex  := strtoint(T_processosTipo_Garantia.asstring)-1;

end;

end;

procedure TF_processos.rg_garantiaClick(Sender: TObject);
begin
if (rg_garantia.itemindex  = 0) then begin
    me_nometitulo.text    := '';
    me_numeros.text    := '';
    me_nomeseguradora.text    := '';
    me_numeroapolice.text     := '';
    me_nomefiador.text        := '';
    me_cnpjfiador.text        := '';
    me_enderecofiador.text    := '';
    me_datadeposito.enabled   := true;
    me_nomebanco.enabled      := true;
    me_agencia.enabled        := true;
    me_nometitulo.enabled     := false;
    me_numeros.enabled := false;
    me_nomeseguradora.enabled := false;
    me_numeroapolice.enabled  := false;
    me_nomefiador.enabled     := false;
    me_cnpjfiador.enabled     := false;
    me_enderecofiador.enabled := false;

end;
if (rg_garantia.itemindex  = 1) then begin
    me_datadeposito.text    := '';
    me_nomebanco.text       := '';
    me_agencia.text         := '';
    me_nomeseguradora.text    := '';
    me_numeroapolice.text     := '';
    me_nomefiador.text        := '';
    me_cnpjfiador.text        := '';
    me_enderecofiador.text    := '';
    me_datadeposito.enabled := false;
    me_nomebanco.enabled    := false;
    me_agencia.enabled      := false;
    me_nometitulo.enabled   := true;
    me_numeros.enabled      := true;
    me_nomeseguradora.enabled := false;
    me_numeroapolice.enabled  := false;
    me_nomefiador.enabled     := false;
    me_cnpjfiador.enabled     := false;
    me_enderecofiador.enabled := false;
end;
if (rg_garantia.itemindex  = 2) then begin
    me_datadeposito.text    := '';
    me_nomebanco.text       := '';
    me_agencia.text         := '';
    me_nometitulo.text      := '';
    me_numeros.text         := '';
    me_nomefiador.text      := '';
    me_cnpjfiador.text      := '';
    me_enderecofiador.text  := '';
    me_datadeposito.enabled := false;
    me_nomebanco.enabled    := false;
    me_agencia.enabled      := false;
    me_nometitulo.enabled   := false;
    me_numeros.enabled      := false;
    me_nomeseguradora.enabled := true;
    me_numeroapolice.enabled  := true;
    me_nomefiador.enabled     := false;
    me_cnpjfiador.enabled     := false;
    me_enderecofiador.enabled := false;

end;
if (rg_garantia.itemindex  = 3) then begin
    me_datadeposito.text    := '';
    me_nomebanco.text       := '';
    me_agencia.text         := '';
    me_nometitulo.text      := '';
    me_numeros.text         := '';
    me_nomeseguradora.text    := '';
    me_numeroapolice.text     := '';
    me_datadeposito.enabled := false;
    me_nomebanco.enabled    := false;
    me_agencia.enabled      := false;
    me_nometitulo.enabled   := false;
    me_numeros.enabled      := false;
    me_nomeseguradora.enabled := false;
    me_numeroapolice.enabled  := false;
    me_nomefiador.enabled     := true;
    me_cnpjfiador.enabled     := true;
    me_enderecofiador.enabled := true;
end;



end;

procedure TF_processos.b_gracatrClick(Sender: TObject);
begin
{possiciona no processo}
t_processos.first;
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

while t_processos.state = dsedit do begin
end;

t_processos.edit;
T_processosNumero_TR.asstring           := me_numerotr.text;

if me_dataentrada.text    <> '  /  /    ' then T_processosData_Entrada_TR.asstring     :=  me_dataentrada.text
else T_processosData_Entrada_TR.asstring     :=  '';
if me_dataaprovacao.text  <> '  /  /    ' then T_processosData_Aprovacao_TR.asstring   :=  me_dataaprovacao.text
else T_processosData_Aprovacao_TR.asstring   :=  '';
if me_datavencimento.text <> '  /  /    ' then T_processosData_vencimento_TR.asstring  :=  me_datavencimento.text
else T_processosData_vencimento_TR.asstring  :=  '';
if me_databaixatr.text    <> '  /  /    ' then T_processosData_baixa_TR.asstring       :=  me_databaixatr.text
else T_processosData_baixa_TR.asstring       :=  '';
if me_datadeposito.text   <> '  /  /    ' then T_processosData_deposito_GAR.asstring   :=  me_datadeposito.text
else T_processosData_deposito_GAR.asstring   :=  '';


T_processosNome_banco_GAR.asstring      := me_nomebanco.text;
T_processosAgencia_GAR.asstring         := me_agencia.text;
T_processosNome_titulo_GAR.asstring     := me_nometitulo.text;
T_processosnumeros_titulos_GAR.asstring := me_numeros.text;
T_processosNome_seguradora_GAR.asstring := me_nomeseguradora.text;
T_processosapolice_GAR.asstring         := me_numeroapolice.text;
T_processosnome_fiador_GAR.asstring     := me_nomefiador.text;
T_processosCNPJ_fiador_GAR.asstring     := me_cnpjfiador.text;
T_processosendereco_fiador_GAR.asstring := me_enderecofiador.text;
T_processosProcurador.asstring          := copy(cb_procuradores.text,1,4);
T_processosTipo_Garantia.asstring       := inttostr(rg_garantia.itemindex+1);
t_processos.post;

end;

procedure TF_processos.b_qqTRClick(Sender: TObject);
var qvalfob:real;
    qvalcif:real;
    qvalii:real;
    qvalipi:real;
    qvaltot:real;
    ovalorfob:real;
    ovalorcif:real;
begin

   {totalizar saldos totais por dolar e real}
   qvalfob := 0;
   qvalcif := 0;
   qvalii  := 0;
   qvalipi := 0;
   qvaltot := 0;
   QR_TR.Q_TR.first;
   while ( not QR_TR.Q_TR.eof ) do begin
         t_faturas.first;
         t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,QR_TR.Q_TRFatura.asstring]);
         if (T_faturasMoeda.asstring = '220') then begin
            qvalfob := qvalfob + QR_TR.Q_TRSomaDeValor_Aduaneiro.asfloat;
            qvalcif := qvalcif + QR_TR.Q_TRSomaDeBase_Calc_II.asfloat;
            {converti para real}
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasmoeda.asstring]);
            q_taxa := t_taxaconvtaxa_conversao.asstring;
            qvalii   := qvalii + strtofloat(floattostrf((QR_TR.Q_TRSomaDeValor_II_Devido.asfloat*strtofloat(q_taxa)),fffixed,10,5));
            qvalipi  := qvalipi +strtofloat(floattostrf((QR_TR.Q_TRSomaDeValor_IPI_Devido.asfloat*strtofloat(q_taxa)),fffixed,10,5));
            end
         else begin
            {converti para real}
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_faturasMoeda.asstring]);
            q_taxa := t_taxaconvtaxa_conversao.asstring;

            ovalorfob := (QR_TR.Q_TRSomaDeValor_Aduaneiro.asfloat*strtofloat(q_taxa));
            ovalorcif := (QR_TR.Q_TRSomaDeBase_Calc_II.asfloat*strtofloat(q_taxa));
            qvalii   := qvalii + strtofloat(floattostrf((QR_TR.Q_TRSomaDeValor_II_Devido.asfloat*strtofloat(q_taxa)),fffixed,10,5));
            qvalipi  := qvalipi +strtofloat(floattostrf((QR_TR.Q_TRSomaDeValor_IPI_Devido.asfloat*strtofloat(q_taxa)),fffixed,10,5));
//            qvalii   := qvalii + (QR_TR.Q_TRSomaDeValor_II_Devido.asfloat*strtofloat(q_taxa));
//            qvalipi  := qvalipi + (QR_TR.Q_TRSomaDeValor_IPI_Devido.asfloat*strtofloat(q_taxa));
            {converti para dolar}
            t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,'220']);
            q_taxa := t_taxaconvtaxa_conversao.asstring;

            ovalorfob := (ovalorfob/strtofloat(q_taxa));
            ovalorcif := (ovalorcif/strtofloat(q_taxa));
            qvalfob   := qvalfob + ovalorfob;
            qvalcif   := qvalcif + ovalorcif;
         end;

         QR_TR.Q_TR.next;
   end;

   qvaltot := qvalii+qvalipi;

   me_valfobuss.text  := floattostrf(qvalfob,fffixed,10,2);
   me_valcifuss.text  := floattostrf(qvalcif,fffixed,10,2);
   me_iireal.text     := floattostrf(qvalii,fffixed,10,2);
   me_ipireal.text    := floattostrf(qvalipi,fffixed,10,2);
   me_totimpreal.text := floattostrf(qvaltot,fffixed,10,2);

{
   QR_TR.qrl_valorfob.caption := 'US$ '+ floattostrf(qvalfob,fffixed,10,2);
   QR_TR.qrl_valorcif.caption := 'US$ '+ floattostrf(qvalcif,fffixed,10,2);
   QR_TR.qrl_valorii.caption  := 'R$ '+ floattostrf(qvalii,fffixed,10,2);
   QR_TR.qrl_valoripi.caption := 'R$ '+ floattostrf(qvalipi,fffixed,10,2);
   QR_TR.qrl_valortot.caption := 'R$ '+ floattostrf(qvaltot,fffixed,10,2);
 }

   {
    qvalor.caption := floattostrf(ovalor,fffixed,10,2);
    Q_TRSomaDeValor_Aduaneiro: TFloatField;
    Q_TRSomaDeBase_Calc_II: TFloatField;
    Q_TRSomaDeValor_II_Devido: TFloatField;
    Q_TRSomaDeValor_IPI_Devido: TFloatField;
   }

//   QR_TR.preview;
end;

procedure TF_processos.FormActivate2(Sender: TObject);
begin
f_processos.left := 0;
f_processos.top  := 0;
pagecontrol1.activepage := TS_capa;
if (me_nossaref.text<>'') then begin
   t_processos.first;
   t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   ME_nossaref.text    := t_processoscdigo.asstring;

   {mostra informacoes gerais}

   l_origem.caption := '';
   l_destino.caption := '';
   lb_mercadorias.items.clear;
   l_transportador.caption :='';
   l_conhecimento.caption  :='';
   l_corigem.caption  :='';
   l_termo.caption    :='';
   l_micdta.caption   :='';
   l_dta.caption      :='';
   l_placas.caption    :='';
   l_di.caption       :='';
   l_li.caption       :='';
   l_data.caption     :='';
   l_canal.caption    :='';
   l_fiscal.caption   := '';
   l_situacao.caption := '';
   lb_faturas.Items.clear;
   lb_obs.items.clear;
   T_transpprocesso.first;
   if T_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin
   T_pais.first;
   if T_pais.findkey([t_transpprocessopais_procedencia.asstring]) then
      l_origem.caption := T_paisdescricao.asstring;
   T_urf.first;
   if T_urf.findkey([T_transpprocessoURF_chegada.asstring]) then
   l_destino.caption := t_urfdescricao.asstring;
   l_conhecimento.caption  := T_transpprocessonumerodoccarga.asstring;
   l_corigem.caption  := T_transpprocessonumeromaster.asstring;
   {1  - Manifesto de Carga
   2  - Termo de Entrada
   3  - DTA
   4  - MIC/DTA}
   if T_transpprocessotipomanifesto.asstring = '2' then
      l_termo.caption    := T_transpprocessonumeromanifesto.asstring;
   if T_transpprocessotipomanifesto.asstring = '4' then
      l_micdta.caption   := T_transpprocessonumeromanifesto.asstring;
   if T_transpprocessotipomanifesto.asstring = '3' then
      l_dta.caption      := T_transpprocessonumeromanifesto.asstring;
   l_placas.caption   := T_transpprocessoplaca.asstring;
   t_transportadores.first;
   if t_transportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,T_transpprocessotransportador.asstring]) then begin
      l_transportador.caption := t_transportadoresrazosocial.asstring;
   end;
   end;
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
         lb_mercadorias.items.add(t_itensfaturasdescricao_produto.asstring);
         t_itensfaturas.next;
   end;
   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (not t_faturas.eof) and (T_faturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_faturasFilial.asstring = t_parametrosfilial.asstring)and(T_faturasProcesso.asstring = me_nossaref.text) do begin
         lb_faturas.items.add(t_faturascdigo.asstring);
         t_faturas.next;
   end;

   l_di.caption       := t_processosnr_declaracao_imp.asstring+' / '+copy(t_processosdt_registro_di.asstring,1,2)+'/'+copy(t_processosdt_registro_di.asstring,3,2)+'/'+copy(t_processosdt_registro_di.asstring,5,4);
   l_li.caption       :='';
   lb_obs.items.clear;
      if t_processosdt_desembaraco.asstring <> '' then
      l_data.caption     := t_processosdt_desembaraco.asstring
   else l_data.caption := '';
   if t_canais.findkey([t_processoscanal.asstring])then
      l_canal.caption    := t_canaisdescricao.asstring
   else l_canal.caption    := '';
   l_fiscal.caption   := t_processosfiscal.asstring;
   if t_sitfis.findkey([t_processoscod_sit.asstring]) then
      l_situacao.caption := t_sitfisdescricao.asstring
   else l_situacao.caption := '';

   TS_faturas.enabled       := true;
   {TS_conhecimentos.enabled := true;
   TS_documentos.enabled    := true;}
   f_processos.caption      := 'Processo - '+me_nossaref.text+'/';
end;


end;

procedure TF_processos.cb_localClick(Sender: TObject);
begin
{b_gravapro.enabled      := true;}
end;

procedure TF_processos.me_pbrutoExit(Sender: TObject);
begin
if (strtofloat(me_pliquido.text) > strtofloat(me_pbruto.text)) then begin
   MessageDlg('Peso Líquido não pode ser maior que Peso Bruto!', mtInformation,[mbOk], 0);
   me_pbruto.text := me_pliquido.text;
   me_pbruto.setfocus;
end;
end;

procedure TF_processos.me_seqKeyPress(Sender: TObject; var Key: Char);
begin
 { if key = chr(13) then me_produto.setfocus;}
end;

procedure TF_processos.me_seqChange(Sender: TObject);
var v_maior:string;
    i:integer;
begin

t_itensfaturas.first;
t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
v_maior := '1';
while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = me_fatura.text)) do begin
      if strtoint(v_maior) <= strtoint(t_itensfaturassequencial.asstring) then v_maior := inttostr(strtoint(t_itensfaturassequencial.asstring)+1);
      t_itensfaturas.next;
end;

t_itensfaturas.first;
if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,me_seq.text]) then begin
   {achou sequencial}
   if MessageDlg('Sequencial já existe. Altera incluindo este novo Sequencial?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
      for i := strtoint(v_maior) downto strtoint(me_seq.text) do begin
          t_itensfaturas.first;
          if t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text,inttostr(i)]) then begin
             ///while t_itensfaturas.state = dsedit do begin
             ///end;
             t_itensfaturas.edit;
             t_itensfaturassequencial.AsString := inttostr(i+1);
             t_itensfaturas.post;
          end;
      end;
      Q_itensfaturas.Close;
      Q_itensfaturas.active := true;
   end
   else begin
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   v_seq := '1';
   while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = me_fatura.text)) do begin
         if strtoint(v_seq) <= strtoint(t_itensfaturassequencial.asstring) then v_seq := inttostr(strtoint(t_itensfaturassequencial.asstring)+1);
         t_itensfaturas.next;
   end;
   if strtoint(me_seq.text) > (strtoint(v_seq)) then begin
      MessageDlg('Sequencial '+me_seq.text+' fora de sequência! Novo Sequencial = '+v_seq, mtInformation,[mbOk], 0);
      me_seq.text := v_seq;
      me_seq.setfocus;
   end;

   end;

end
else begin {não achou sequencial pega o próximo}
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   v_seq := '1';
   while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = me_fatura.text)) do begin
         if strtoint(v_seq) <= strtoint(t_itensfaturassequencial.asstring) then v_seq := inttostr(strtoint(t_itensfaturassequencial.asstring)+1);
         t_itensfaturas.next;
   end;
   if strtoint(me_seq.text) > (strtoint(v_seq)) then begin
      MessageDlg('Sequencial '+me_seq.text+' fora de sequência! Novo Sequencial = '+v_seq, mtInformation,[mbOk], 0);
      me_seq.text := v_seq;
      me_seq.setfocus;
   end;

end;

end;

procedure TF_processos.me_prepaidChange(Sender: TObject);
begin
t_moeda.first;
t_moeda.findkey([copy(cb_moedasfrete.text,1,3)]);
t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,copy(cb_moedasfrete.text,1,3)]);
me_fretetotal.text := floattostr(((strtofloat(me_prepaid.text)+strtofloat(me_collect.text))-strtofloat(me_ternac.text))*t_taxaconvtaxa_conversao.asfloat);

end;

procedure TF_processos.TS_capaShow(Sender: TObject);
begin
if (me_nossaref.text<>'') then begin
   t_processos.first;
   t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   ME_nossaref.text    := t_processoscdigo.asstring;


   {mostra informacoes gerais}

   l_origem.caption := '';
   l_destino.caption := '';
   lb_mercadorias.items.clear;
   l_transportador.caption :='';
   l_conhecimento.caption  :='';
   l_corigem.caption  :='';
   l_termo.caption    :='';
   l_micdta.caption   :='';
   l_dta.caption      :='';
   l_placas.caption    :='';
   l_di.caption       :='';
   l_li.caption       :='';
   l_data.caption     :='';
   l_canal.caption    :='';
   l_fiscal.caption   := '';
   l_situacao.caption := '';
   lb_faturas.Items.clear;
   lb_obs.items.clear;
   T_transpprocesso.first;
   if T_transpprocesso.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]) then begin
   T_pais.first;
   if T_pais.findkey([t_transpprocessopais_procedencia.asstring]) then
      l_origem.caption := T_paisdescricao.asstring;
   T_urf.first;
   if T_urf.findkey([T_transpprocessoURF_chegada.asstring]) then
   l_destino.caption := t_urfdescricao.asstring;
   l_conhecimento.caption  := T_transpprocessonumerodoccarga.asstring;
   l_corigem.caption  := T_transpprocessonumeromaster.asstring;
   {1  - Manifesto de Carga
   2  - Termo de Entrada
   3  - DTA
   4  - MIC/DTA}
   if T_transpprocessotipomanifesto.asstring = '2' then
      l_termo.caption    := T_transpprocessonumeromanifesto.asstring;
   if T_transpprocessotipomanifesto.asstring = '4' then
      l_micdta.caption   := T_transpprocessonumeromanifesto.asstring;
   if T_transpprocessotipomanifesto.asstring = '3' then
      l_dta.caption      := T_transpprocessonumeromanifesto.asstring;
   l_placas.caption   := T_transpprocessoplaca.asstring;
   t_transportadores.first;
   if t_transportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,T_transpprocessotransportador.asstring]) then begin
      l_transportador.caption := t_transportadoresrazosocial.asstring;
      end;
   end;
   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
         lb_mercadorias.items.add(t_itensfaturasdescricao_produto.asstring);
         t_itensfaturas.next;
   end;
   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (not t_faturas.eof) and (T_faturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_faturasFilial.asstring = t_parametrosfilial.asstring)and(T_faturasProcesso.asstring = me_nossaref.text) do begin
         lb_faturas.items.add(t_faturascdigo.asstring);
         t_faturas.next;
   end;

   l_di.caption       := t_processosnr_declaracao_imp.asstring+' / '+copy(t_processosdt_registro_di.asstring,1,2)+'/'+copy(t_processosdt_registro_di.asstring,3,2)+'/'+copy(t_processosdt_registro_di.asstring,5,4);
   l_li.caption       :='';
   lb_obs.items.clear;
   if t_processosdt_desembaraco.asstring <> '' then
      l_data.caption     := t_processosdt_desembaraco.asstring
   else l_data.caption := '';
   if t_canais.findkey([t_processoscanal.asstring])then
      l_canal.caption    := t_canaisdescricao.asstring
   else l_canal.caption    := '';
   l_fiscal.caption   := t_processosfiscal.asstring;
   if t_sitfis.findkey([t_processoscod_sit.asstring]) then
      l_situacao.caption := t_sitfisdescricao.asstring
   else l_situacao.caption := '';

   TS_faturas.enabled       := true;
   {TS_conhecimentos.enabled := true;
   TS_documentos.enabled    := true;}
   f_processos.caption      := 'Processo - '+me_nossaref.text+'/';
end;


end;

procedure TF_processos.ME_ncmExit(Sender: TObject);
begin
 if t_ncm.findkey([me_ncm.text]) then begin
        me_descrncm.text := t_ncmdescricao.asstring;
        cb_unidest.text  := t_ncmunidade_medida.asstring
        end
     else begin
        p_ncm.top    := 40;
        p_ncm.left   := 76;
        p_ncm.width  := 613;
        p_ncm.Height := 237;
        p_ncm.visible := true;
        q_ncm.close;
        me_localizancm.text := '';
        me_localizancm.setfocus;
     end;
end;

procedure TF_processos.me_localizancmChange(Sender: TObject);
begin
    if me_localizancm.text <> '' then begin
      Q_ncm.Close;
      Q_ncm.Params[0].AsString := '*'+me_localizancm.text+'*';
      Q_ncm.Params[1].AsString := '*'+me_localizancm.text+'*';
      Q_ncm.open;

   end;

end;

procedure TF_processos.p_ncmExit(Sender: TObject);
begin
p_ncm.visible := false;
end;

procedure TF_processos.b_cancelancmClick(Sender: TObject);
begin
p_ncm.visible := false;
me_ncm.setfocus;

end;

procedure TF_processos.b_okncmClick(Sender: TObject);
begin
p_ncm.visible := false;
me_ncm.text  := q_ncmcodigo.asstring;
me_descrncm.text := q_ncmdescricao.asstring;
cb_unidest.text  := q_ncmunidade_medida.asstring;
me_destaque.setfocus;
end;

procedure TF_processos.ME_ncmKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_destaque.setfocus;
end;

procedure TF_processos.me_destaqueKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_naladi.setfocus;
end;

procedure TF_processos.me_expExit(Sender: TObject);
begin
 if t_exportadores.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_exp.text]) then begin
        me_nomeexp.text := t_exportadoresrazosocial.asstring;
        rg_vinculacao.visible := true;
        rg_vinculacao.setfocus;
        end
     else begin
        p_exportadores.top := 40;
        p_exportadores.left  := 84;
        p_exportadores.width := 613;
        p_exportadores.height:= 232;

        p_exportadores.visible := true;
        q_exportadores.close;
        me_localizaexp.text := '';
        me_localizaexp.setfocus;
     end;
end;

procedure TF_processos.me_localizaexpChange(Sender: TObject);
begin
    if me_localizaexp.text <> '' then begin
      Q_exportadores.Close;
      Q_exportadores.Params[0].AsString := t_parametrosempresa.asstring;
      Q_exportadores.Params[1].AsString := t_parametrosfilial.asstring;
      Q_exportadores.Params[2].AsString := '*'+me_localizaexp.text+'*';
      Q_exportadores.Params[3].AsString := '*'+me_localizaexp.text+'*';
      Q_exportadores.open;
   end;
end;

procedure TF_processos.b_okimpClick(Sender: TObject);
begin
p_exportadores.visible := false;
me_exp.text  := q_exportadorescodigo.asstring;
me_nomeexp.text := q_exportadoresrazosocial.asstring;
rg_vinculacao.visible := true;
rg_vinculacao.setfocus;

end;

procedure TF_processos.b_cancelaimpClick(Sender: TObject);
begin
p_exportadores.visible := false;
me_exp.SetFocus;
end;

procedure TF_processos.sb_pagClick(Sender: TObject);
begin
{verifica itens de notas fiscais}
Q_itenstributaveis.Close;
Q_itenstributaveis.Params[0].AsString := t_parametrosempresa.asstring;
Q_itenstributaveis.Params[1].AsString := t_parametrosfilial.asstring;
Q_itenstributaveis.Params[2].AsString := me_nossaref.text;
Q_itenstributaveis.open;
end;

procedure TF_processos.sb_ncmClick(Sender: TObject);
begin
{verifica itens de notas fiscais}
Q_itenstributaveis.Close;
Q_itenstributaveis.Params[0].AsString := t_parametrosempresa.asstring;
Q_itenstributaveis.Params[1].AsString := t_parametrosfilial.asstring;
Q_itenstributaveis.Params[2].AsString := me_nossaref.text;
Q_itenstributaveis.open;
end;

procedure TF_processos.sb_seqClick(Sender: TObject);
begin
{verifica itens de notas fiscais}
Q_itenstributaveis.Close;
Q_itenstributaveis.Params[0].AsString := t_parametrosempresa.asstring;
Q_itenstributaveis.Params[1].AsString := t_parametrosfilial.asstring;
Q_itenstributaveis.Params[2].AsString := me_nossaref.text;
Q_itenstributaveis.open;

end;

procedure TF_processos.sb_valClick(Sender: TObject);
begin
{verifica itens de notas fiscais}
Q_itenstributaveis.Close;
Q_itenstributaveis.Params[0].AsString := t_parametrosempresa.asstring;
Q_itenstributaveis.Params[1].AsString := t_parametrosfilial.asstring;
Q_itenstributaveis.Params[2].AsString := me_nossaref.text;
Q_itenstributaveis.open;

end;

procedure TF_processos.me_localizafabChange(Sender: TObject);
begin
 if me_localizafab.text <> '' then begin
      Q_fabricantes.Close;
      Q_fabricantes.Params[0].AsString := t_parametrosempresa.asstring;
      Q_fabricantes.Params[1].AsString := t_parametrosfilial.asstring;
      Q_fabricantes.Params[2].AsString := '*'+me_localizafab.text+'*';
      Q_fabricantes.Params[3].AsString := '*'+me_localizafab.text+'*';
      Q_fabricantes.open;
   end;
end;

procedure TF_processos.b_cancelafabClick(Sender: TObject);
begin
p_fabricantes.visible := false;
me_fabricante.setfocus;
end;

procedure TF_processos.b_okfabClick(Sender: TObject);
begin
p_fabricantes.visible := false;
me_fabricante.text := copy(q_fabricantescodigo.asstring+'   ',1,4)+' - '+ q_fabricantesrazosocial.asstring;
me_ncm.setfocus;

end;

procedure TF_processos.ME_fabricanteExit(Sender: TObject);
begin
     if t_fabricantes.findkey([t_parametrosempresa.asstring,t_parametrosfilial,copy(me_fabricante.text,1,4)]) then begin
        me_fabricante.text := copy(t_fabricantescodigo.asstring+'   ',1,4)+' - '+ t_fabricantesrazosocial.asstring;
        me_ncm.setfocus;
        end
     else begin
        p_fabricantes.top   := 40;
        p_fabricantes.left  := 84;
        p_fabricantes.width := 613;
        p_fabricantes.height:= 232;
        p_fabricantes.visible := true;
        q_fabricantes.close;
        me_localizafab.text := '';
        me_localizafab.setfocus;
     end;
end;

procedure TF_processos.ME_fabricanteKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then me_ncm.setfocus;
end;

procedure TF_processos.p_fabricantesExit(Sender: TObject);
begin
   p_fabricantes.visible := false;
end;

procedure TF_processos.SB_localizaClick(Sender: TObject);
begin
if not assigned (F_localizapro) then Application.CreateForm(TF_localizapro, F_localizapro)
else f_localizapro.show;
end;

procedure TF_processos.ME_condicaoExit(Sender: TObject);
begin
b_grava.enabled         := true;
end;

procedure TF_processos.T_processosAfterInsert(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;
        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='I';
        f_mscomex.t_movusudescricao.asstring  := 'Incluiu Processo: '+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

end;

procedure TF_processos.T_processosAfterPost(DataSet: TDataSet);

begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;
        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='P';
        f_mscomex.t_movusudescricao.asstring  := 'Alterou Processo: '+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

    AtuNet('Processos',[T_processosEmpresa.asstring,T_processosFilial.asstring,T_processoscdigo.asstring],'P');

end;

procedure TF_processos.T_processosBeforeDelete(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='E';
        f_mscomex.t_movusudescricao.asstring  := 'Excluiu Processo: '+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

    AtuNet('Processos',[T_processosEmpresa.asstring,T_processosFilial.asstring,T_processoscdigo.asstring],'D');
    
end;

procedure TF_processos.T_faturasAfterInsert(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='I';
        f_mscomex.t_movusudescricao.asstring  := 'Incluiu Fatura: '+t_faturascdigo.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;


end;

procedure TF_processos.T_faturasAfterPost(DataSet: TDataSet);

begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='P';
        f_mscomex.t_movusudescricao.asstring  := 'Alterou Fatura: '+t_faturascdigo.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

    AtuNet('Faturas',[T_faturasEmpresa.asstring,T_faturasFilial.asstring,T_faturasprocesso.asstring,t_faturascdigo.asstring],'P');

end;

procedure TF_processos.T_faturasBeforeDelete(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='E';
        f_mscomex.t_movusudescricao.asstring  := 'Excluiu Fatura: '+t_faturascdigo.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

    AtuNet('Faturas',[T_faturasEmpresa.asstring,T_faturasFilial.asstring,T_faturasprocesso.asstring,t_faturascdigo.asstring],'D');

end;

procedure TF_processos.T_itensfaturasAfterInsert(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='I';
        f_mscomex.t_movusudescricao.asstring  := 'Incluiu Item: '+t_itensfaturasproduto.asstring +'  na Fatura: '+t_faturascdigo.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

end;

procedure TF_processos.T_itensfaturasAfterPost(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='P';
        f_mscomex.t_movusudescricao.asstring  := 'Alterou Item: '+t_itensfaturasproduto.asstring +'  na Fatura: '+t_faturascdigo.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

///        AtuNet('ItensFaturas',[T_itensfaturasEmpresa.asstring,T_itensfaturasFilial.asstring,T_itensfaturasprocesso.asstring,T_itensfaturasfatura.asstring,T_itensfaturassequencial.asstring],'P');
end;

procedure TF_processos.T_itensfaturasBeforeDelete(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='E';
        f_mscomex.t_movusudescricao.asstring  := 'Excluiu Item: '+t_itensfaturasproduto.asstring +'  na Fatura: '+t_faturascdigo.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

///        AtuNet('ItensFaturas',[T_itensfaturasEmpresa.asstring,T_itensfaturasFilial.asstring,T_itensfaturasprocesso.asstring,T_itensfaturasfatura.asstring,T_itensfaturassequencial.asstring],'D');

end;

procedure TF_processos.T_followupAfterPost(DataSet: TDataSet);

begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='P';
        f_mscomex.t_movusudescricao.asstring  := 'Alterou Follow Up: '+t_eventosdescricao.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

    AtuNet('FollowUp',[T_followupEmpresa.asstring,T_followupFilial.asstring,T_followupprocesso.asstring,t_followupsequencial.asstring],'P');

end;

procedure TF_processos.T_followupBeforeDeete(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='E';
        f_mscomex.t_movusudescricao.asstring  := 'Excluiu Follow Up: '+t_eventosdescricao.asstring+' - Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

   AtuNet('FollowUp',[T_followupEmpresa.asstring,T_followupFilial.asstring,T_followupprocesso.asstring,t_followupsequencial.asstring],'D');

end;

procedure TF_processos.T_transpprocessoAfterInsert(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='I';
        f_mscomex.t_movusudescricao.asstring  := 'Incluiu Transportes/Conhecimento Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

end;

procedure TF_processos.T_transpprocessoAfterPost(DataSet: TDataSet);

begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='P';
        f_mscomex.t_movusudescricao.asstring  := 'Alterou Transportes/Conhecimento Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

    AtuNet('Conhecimento_Processo',[T_transpprocessoEmpresa.asstring,T_transpprocessoFilial.asstring,T_transpprocessoprocesso.asstring],'P');

end;

procedure TF_processos.T_transpprocessoBeforeDelete(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='E';
        f_mscomex.t_movusudescricao.asstring  := 'Excluiu Transportes/Connhecimento Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

    AtuNet('Conhecimento_Processo',[T_transpprocessoEmpresa.asstring,T_transpprocessoFilial.asstring,T_transpprocessoprocesso.asstring],'D');

end;

procedure TF_processos.T_tributositemAfterInsert(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='I';
        f_mscomex.t_movusudescricao.asstring  := 'Incluiu Tributação Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

end;

procedure TF_processos.T_tributositemAfterPost(DataSet: TDataSet);
begin
{        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='P';
        f_mscomex.t_movusudescricao.asstring  := 'Alterou Tributação Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;
 }

///        AtuNet('Tributacao_Item_Fatura',[T_tributositemEmpresa.asstring,T_tributositemFilial.asstring,T_tributositemprocesso.asstring,T_tributositemfatura.asstring,T_tributositemsequencial_item.asstring,T_tributositemsequencial.asstring],'P');
end;

procedure TF_processos.T_tributositemBeforeDelete(DataSet: TDataSet);
begin
        while f_mscomex.t_movusu.state = dsinsert do begin
        end;

        f_mscomex.t_movusu.append;
        f_mscomex.t_movusuempresa.asstring := v_empresa;
        f_mscomex.t_movusufilial.asstring  := v_filial;
        f_mscomex.t_movusuusuario.asstring := v_usuario;
        f_mscomex.t_movusumovimentacao.asstring  :='E';
        f_mscomex.t_movusudescricao.asstring  := 'Excluiu Tributação Processo:'+t_processoscdigo.asstring;
        f_mscomex.t_movusudata.asdatetime  := date();
        f_mscomex.t_movusuhora.asdatetime  := time();
        f_mscomex.t_movusu.post;

///        AtuNet('Tributacao_Item_Fatura',[T_tributositemEmpresa.asstring,T_tributositemFilial.asstring,T_tributositemprocesso.asstring,T_tributositemfatura.asstring,T_tributositemsequencial_item.asstring,T_tributositemsequencial.asstring],'D');

end;

procedure TF_processos.b_incluinumClick(Sender: TObject);
begin

while t_numerarios.state = dsinsert do begin
end;

   t_numerarios.append;
   t_numerariosdata_previsao.asdatetime  := date();
   t_numerariosusuario_previsao.asstring := v_usuario;

end;

procedure TF_processos.b_excluiproClick(Sender: TObject);
begin
  t_numerarios.delete;
end;

procedure TF_processos.b_gravanumClick(Sender: TObject);
begin
    {if t_numerariosprevisao_solicitada.asstring = 'SIM' then begin
       MessageDlg('Previsão solicitada não ser alterada!', mtInformation,[mbOk], 0);
       t_numerarios.CancelUpdates;
    end
    else begin}
         t_numerarios.edit;
         t_numerariosusuario_previsao.asstring := v_usuario;
         t_numerarios.post;
         t_numerarios.first;
         me_vprevisao.text := '0';
         me_vreal.text   := '0';
         while not t_numerarios.eof do begin
         me_vprevisao.text := floattostr(strtofloat(me_vprevisao.text)+t_numerariosvalor_previsao.asfloat);
         me_vreal.text := floattostr(strtofloat(me_vreal.text)+t_numerariosvalor_registrado.asfloat);
         t_numerarios.next
         end;
         me_vprevisao.refresh;
         me_vreal.refresh;
    {end;}
end;

procedure TF_processos.t_numerariosAfterPost(DataSet: TDataSet);
begin
    AtuNet('Numerarios_Processos',[T_numerariosempresa.asstring,t_numerariosfilial.asstring,t_numerariosprocesso.asstring,t_numerariosreg.asstring],'P');
{t_numerarios.first;
me_vprevisao.text := '0';
me_vreal.text   := '0';
while not t_numerarios.eof do begin
      me_vprevisao.text := floattostr(strtofloat(me_vprevisao.text)+t_numerariosvalor_previsao.asfloat);
      me_vreal.text := floattostr(strtofloat(me_vreal.text)+t_numerariosvalor_registrado.asfloat);
      t_numerarios.next
end;
me_vprevisao.refresh;
me_vreal.refresh; }
end;

procedure TF_processos.b_impfaxClick(Sender: TObject);
var emportugues:boolean;
begin
   emportugues := false;
   if MessageDlg('Gera Solicitação em Inglês?', mtConfirmation,[mbYes, mbNo], 0) = mrNO then begin
      emportugues := true;
      if not assigned (qr_solnum) then Application.CreateForm(Tqr_solnum, qr_solnum)
      end
   else
      if not assigned (qr_solnum_ing) then Application.CreateForm(Tqr_solnum_ing, qr_solnum_ing);

   if MessageDlg('Gera Solicitação apenas dos NÃO SOLICITADOS?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
      t_numerarios.filter := 'NUMERARIO<>'+chr(39)+'HONO'+chr(39)+' AND NUMERARIO<>'+chr(39)+'ISS'+chr(39)+' AND NUMERARIO<>'+chr(39)+'CPMF'+chr(39)+' AND PREVISAO_SOLICITADA='+chr(39)+'NÃO'+chr(39);
   end;
   if emportugues then  qr_solnum.preview
   else qr_solnum_ing.preview;

   t_numerarios.filter := 'NUMERARIO<>'+chr(39)+'HONO'+chr(39)+' AND NUMERARIO<>'+chr(39)+'ISS'+chr(39)+' AND NUMERARIO<>'+chr(39)+'CPMF'+chr(39);

   if MessageDlg('Confirma Solicitação desta Previsão?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
   t_numerarios.first;
    while not t_numerarios.eof do begin
          if ((t_numerariosprevisao_solicitada.asstring <> 'SIM') and
             (t_numerariosok_previsao_financeiro.asstring <> 'SIM'))then begin

         t_numerarios.edit;
         t_numerariosprevisao_solicitada.asstring := 'SIM';
         t_numerariosusuario_previsao.asstring := v_usuario;
         t_numerarios.post;
      end;
      t_numerarios.next;
   end;
   {t_numerarios.post;}
   end;
end;

procedure TF_processos.t_numerariosBeforeDelete(DataSet: TDataSet);
begin
    AtuNet('Numerarios_Processos',[T_numerariosempresa.asstring,t_numerariosfilial.asstring,t_numerariosprocesso.asstring,t_numerariosreg.asstring],'D');
    ////if ((t_numerariosprevisao_solicitada.asstring = 'SIM') or
    ////     (t_numerariosok_previsao_financeiro.asstring = 'SIM'))then begin
    ////   showmessage('Numerários com Previsão já solicitada'+#10#13+'e/ou já liberado pelo Financeiro'+#10#13+'NÃO poderão ser alterados e/ou excluídos.'+#10#13+#10#13);
    ////   t_numerarios.CancelUpdates;
    ////end
    ////else begin
       t_numerarios.edit;
       t_numerariosusuario_previsao.asstring := v_usuario;
       if t_numerariosvalor_registrado.asfloat > 0 then begin
          t_numerariosusuario_financeiro.asstring := v_usuario;
          t_numerariosprevisao_solicitada.asstring := 'SIM';
          t_numerariosok_previsao_financeiro.asstring := 'SIM';
          if t_numerariosvalor_previsao.asfloat=0 then t_numerariosvalor_previsao.asfloat:=t_numerariosvalor_registrado.asfloat;
          if t_numerariosdata_previsao.asstring='' then t_numerariosdata_previsao.asstring:=t_numerariosdata_registro.asstring;
       end;
    ////end;
end;

procedure TF_processos.FormActivate(Sender: TObject);
begin
f_processos.left := 0;
f_processos.top  := 0;
if (v_nivel > '7') then dbcb_urgente.enabled := false
else dbcb_urgente.enabled := true;

end;

procedure TF_processos.b_excluiprocClick(Sender: TObject);
begin
if MessageDlg('Confirma Exclusão deste Processo?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
   t_processos.delete;
   t_processos.first;
   me_nossaref.text := t_processoscdigo.asstring;
end;
end;

procedure TF_processos.b_novoproClick(Sender: TObject);
var v_num:integer;
    v_numt:string;
begin


if MessageDlg('Confirma Inclusão de um novo Processo? Nº '+v_numt, mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
   v_num := (strtoint(copy(t_parametrosNumerador_processos.asstring,1,5))+1);
   v_numt := '00000'+inttostr(v_num);
   v_numt := copy(v_numt,length(v_numt)-4,5)+copy(t_parametrosNumerador_processos.asstring,6,3);

   t_parametros.edit;
   t_parametrosNumerador_processos.asstring := v_numt;
   t_parametros.post;

   while t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,v_numt]) do begin
         v_num := (strtoint(copy(t_parametrosNumerador_processos.asstring,1,5))+1);
         v_numt := '00000'+inttostr(v_num);
         v_numt := copy(v_numt,length(v_numt)-4,5)+copy(t_parametrosNumerador_processos.asstring,6,3);
   end;

   t_processos.append;
   t_processosempresa.asstring := t_parametrosempresa.asstring;
   t_processosfilial.asstring  := t_parametrosfilial.asstring;
   t_processoscdigo.asstring   := v_numt;
   t_processosdata.asdatetime  := date();
   t_processoscod_sit.asstring := '1';
   t_processosstatus.asstring  := '01';
   ME_nossaref.text         := '';
   ME_nossaref.text         := v_numt;
   t_processos.post;
   t_parametros.edit;
   t_parametrosNumerador_processos.asstring := me_nossaref.text;
   t_parametros.post;
   dbedit13.setfocus;
end;

end;

procedure TF_processos.ME_nossarefKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then me_nossarefexit(f_processos);
end;

procedure TF_processos.DBLookupComboBox7Exit(Sender: TObject);

begin
t_processos.post;
end;

procedure TF_processos.DBLookupComboBox5Exit(Sender: TObject);
begin

t_itensfaturas.first;
t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text) do begin
      t_itensfaturas.edit;
      t_itensfaturascod_sit.asstring := t_processoscod_sit.asstring;
      t_itensfaturas.post;
      t_itensfaturas.next;
end;


end;

procedure TF_processos.b_imprimeversoClick(Sender: TObject);
begin
    if not assigned (QR_TRverso) then Application.CreateForm(TQR_TRverso, QR_TRverso);
    panel31.height := 303;
    panel31.visible := true;
end;

procedure TF_processos.BitBtn3Click(Sender: TObject);
begin
    panel31.visible := false;
end;

procedure TF_processos.Panel31Exit(Sender: TObject);
begin
panel31.visible := false;
end;

procedure TF_processos.BitBtn2Click(Sender: TObject);
begin
    panel31.visible := false;
    t_obstr.edit;
    t_obstr.post;
///    if t_obstr.state=dsedit then t_obstr.post;
///    if messagedlg('Confirma a impressão no verso do TR a obs "LAVRO O PRESENTE TERMO..."?',mtconfirmation,[mbyes,mbno],0)= mryes then
///       QR_TRverso.qrm_lavro.Transparent := false
///    else QR_TRverso.qrm_lavro.Transparent := true;
    if MessageDlg(v_usuario+', deseja imprimir a obs "LAVRO O PRESENTE TERMO..." no verso do TR?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
       qr_trverso.qrm_lavro.Enabled     := true;
       qr_trverso.qrm_lavro.Transparent := false;
       end
    else begin
       qr_trverso.qrm_lavro.Enabled     := false;
       qr_trverso.qrm_lavro.Transparent := true;
    end;

    QR_TRverso.preview;
end;

procedure TF_processos.me_localizaChange(Sender: TObject);
begin
   if me_localiza.text <> '' then begin
      Q_loceventos.Close;
      Q_loceventos.Params[0].AsString := '*'+me_localiza.text+'*';
      Q_loceventos.open;
   end

end;

procedure TF_processos.sb_loceventoClick(Sender: TObject);
begin
q_loceventos.close;
p_loceventos.visible :=true;
me_localiza.text :='';
me_localiza.setfocus;
end;

procedure TF_processos.b_cancelaloceventosClick(Sender: TObject);
begin
p_loceventos.visible := false;
dbl_eventos.setfocus;
end;

procedure TF_processos.b_okloceventosClick(Sender: TObject);
begin
t_followup.edit;
t_followupcodevento.asstring := q_loceventoscodigo.asstring;
t_followup.post;
t_followup.edit;
t_eventos.refresh;
dbl_eventos.refresh;
p_loceventos.visible := false;

end;

procedure TF_processos.p_loceventosExit(Sender: TObject);
begin
p_loceventos.visible := false;

end;

procedure TF_processos.DBEdit13Exit(Sender: TObject);
begin
if (t_processosdata.asdatetime <> date()) then begin
   if messagedlg('A data informada difere do computador confirma?',mtconfirmation,[mbno,mbyes],0)= mrno then begin
      dbedit13.setfocus;
   end;
end;
end;

procedure TF_processos.DBLookupComboBox11Exit(Sender: TObject);
var qimpor:string;
begin
    qimpor :=        'Importador: '+t_importadoresrazosocial.asstring+#13#10;
    qimpor := qimpor+'Endereço: '+t_importadoresendereo.asstring+', '+t_importadoresnmero.asstring+' - '+t_importadorescomplemento.asstring+#13#10;
    qimpor := qimpor+'Bairro: '+t_importadoresbairro.asstring+#13#10;
    qimpor := qimpor+'Cidade: '+t_importadorescidade.asstring+#13#10;
    qimpor := qimpor+'Estado: '+t_importadoresestado.asstring+#13#10;
    showmessage(qimpor);
    dbedit11.setfocus;
end;

procedure TF_processos.T_concargasAfterPost(DataSet: TDataSet);
begin
    AtuNet('Concargas',[T_concargasEmpresa.asstring,T_concargasFilial.asstring,T_concargasprocesso.asstring,T_concargascodigo.asstring],'P');
end;

procedure TF_processos.T_concargasBeforeDelete(DataSet: TDataSet);
begin

    AtuNet('Concargas',[T_concargasEmpresa.asstring,T_concargasFilial.asstring,T_concargasprocesso.asstring,T_concargascodigo.asstring],'D');

end;

procedure TF_processos.T_taxaconvAfterPost(DataSet: TDataSet);
begin

    AtuNet('Processos_Taxas_Conversao',[T_taxaconvEmpresa.asstring,T_taxaconvFilial.asstring,T_taxaconvprocesso.asstring,T_taxaconvmoeda.asstring],'P');

end;

procedure TF_processos.T_taxaconvBeforeDelete(DataSet: TDataSet);
begin

    AtuNet('Processos_Taxas_Conversao',[T_taxaconvEmpresa.asstring,T_taxaconvFilial.asstring,T_taxaconvprocesso.asstring,T_taxaconvmoeda.asstring],'D');

end;

procedure TF_processos.DBEdit22Exit(Sender: TObject);
begin
if dbedit22.text<>'' then begin
   if (dbedit22.text = me_nossaref.text) then begin
      showmessage('Referência ao mesmo processo não permitida!');
      dbedit22.text := '';
      dbedit22.setfocus;
   end
   else begin
   if not t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,dbedit22.text]) then begin
      showmessage('Processos não encontrado!');
      dbedit22.text := '';
      dbedit22.setfocus;
   end
   else b_alterafollow.setfocus;
   t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   end;
end;
end;

procedure TF_processos.DBEdit14Change(Sender: TObject);
begin
if dbedit14.text = '' then begin
   t_status.findkey(['01']);
   t_sitfis.findkey(['1']);
   t_processos.edit;
   t_processoscod_sit.asstring := '1';
   t_processosstatus.asstring  := '01';
   t_processos.post;
   showmessage('Processo Aguardando desembaraço e em andamento no Operacional!')

end
else begin
   t_status.findkey(['1']);
   t_sitfis.findkey(['2']);
   t_processos.edit;
   t_processoscod_sit.asstring := '2';
   t_processosstatus.asstring  := '1';
   t_processos.post;
   showmessage('Processo Desembaraçado e finalizado no Operacional!');
   if MessageDlg('Carga Liberada para o transportador na data do Desembaraço da DI?', mtConfirmation,[mbYes, mbNo], 0) = mryes then begin
      t_processos.edit;
      if t_processosdt_desembaracoc.asstring = '' then
      t_processosdata_liberacao.asstring := t_processosdt_desembaraco.asstring
      else
      t_processosdata_liberacao.asstring := t_processosdt_desembaracoc.asstring;      
      t_processos.post;
   end;

end;


end;

procedure TF_processos.DBEdit4Exit(Sender: TObject);
begin
if dbedit3.text<>'' then begin
   if strtofloat(dbedit4.text)<=0 then begin
     showmessage('Valor não permitido!');
     dbedit4.setfocus;
   end;
end
else begin
   if strtofloat(dbedit4.text)<>0 then begin
      showmessage('Informe a Data de Registro!');
      dbedit3.setfocus;
   end
end;

end;

procedure TF_processos.t_numerariosAfterScroll(DataSet: TDataSet);
begin
    if (t_numerariosprevisao_solicitada.asstring = 'SIM') then begin
         b_excluipro.enabled := false;
        // b_gravanum.enabled := false;
    end
    else begin
         b_excluipro.enabled := true;
        // b_gravanum.enabled := true;
    end;

end;

procedure TF_processos.t_numerariosBeforePost(DataSet: TDataSet);
begin
    ////if ((t_numerariosprevisao_solicitada.asstring = 'SIM') and
    ////     (t_numerariosok_previsao_financeiro.asstring = 'SIM'))then begin
    ////   showmessage('Numerários com Previsão já solicitada'+#10#13+'e/ou já liberado pelo Financeiro'+#10#13+'NÃO poderão ser alterados e/ou excluídos.'+#10#13+#10#13);
    ////  t_numerarios.CancelUpdates;
    ////end
    ////else begin
       t_numerarios.edit;
       t_numerariosusuario_previsao.asstring := v_usuario;
       if t_numerariosvalor_registrado.asfloat > 0 then begin
          t_numerariosvalor_contabilizado.asfloat := t_numerariosvalor_registrado.asfloat;
          t_numerariosusuario_financeiro.asstring := v_usuario;
//          t_numerariosprevisao_solicitada.asstring := 'SIM';
          t_numerariosok_previsao_financeiro.asstring := 'SIM';
          if t_numerariosvalor_previsao.asfloat=0 then t_numerariosvalor_previsao.asfloat:=t_numerariosvalor_registrado.asfloat;
          if t_numerariosdata_previsao.asstring='' then t_numerariosdata_previsao.asstring:=t_numerariosdata_registro.asstring;
       end;
    ////end;

end;

procedure TF_processos.Q_adicoesAfterScroll(DataSet: TDataSet);
begin
{gera os detalhes por adicao}
q_detalhe_adicao.Close;
q_detalhe_adicao.Params[0].AsString := t_parametrosempresa.asstring;
q_detalhe_adicao.Params[1].AsString := t_parametrosfilial.asstring;
q_detalhe_adicao.Params[2].AsString := me_nossaref.text;
q_detalhe_adicao.Params[3].AsString := q_adicoesadicao.asstring;
q_detalhe_adicao.open;

end;

procedure TF_processos.ME_nossarefChange(Sender: TObject);
begin
///if length(me_nossaref.text)=8 then me_nossarefexit(f_processos);

end;

procedure TF_processos.b_impemailClick(Sender: TObject);
var emportugues:boolean;
    sonaosoli:boolean;
    valtotal:real;
begin

   emportugues := false;
   sonaosoli   := false;

   if MessageDlg('Gera Email em Inglês?', mtConfirmation,[mbYes, mbNo], 0) = mrNO then emportugues := true;
   if MessageDlg('Gera Email apenas dos NÃO SOLICITADOS?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then sonaosoli := true;
   email_num.host := t_parametroshost.asstring;
   email_num.postmessage.fromaddress := t_usuariosemail.asstring;
   email_num.postmessage.fromname    := t_usuariosnome_completo.asstring;
   email_num.postmessage.toaddress.clear;
   email_num.postmessage.toaddress.Add(t_contatosimpemail_numerario.asstring);
   email_num.postmessage.tocarboncopy.clear;
   email_num.postmessage.tocarboncopy.Add(t_contatosimpcc_email.asstring);
   email_num.postmessage.tocarboncopy.Add(t_usuariosemail.asstring);
   t_usuarios.first;
   while not t_usuarios.eof do begin
         if t_usuariosemail_sol_num.asboolean then email_num.postmessage.tocarboncopy.Add(t_usuariosemail.asstring);
         t_usuarios.next;
   end;
   t_usuarios.findkey([t_processosempresa.asstring,t_processosfilial.asstring,v_usuario]);

   email_num.postmessage.body.clear;
   memo_email.Clear;

   if emportugues then begin
      email_num.postmessage.subject := 'MS2000 - Solicitação de Numerários - '+t_importadoresrazosocial.asstring+' - Processo: '+me_nossaref.text;
      ////                  123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/
      memo_email.lines.add('MS2000 - SISTEMA GERENCIAL ADUANEIRO - Versão 1.2 Abril/2001                    ');
      memo_email.lines.add('________________________________________________________________________________');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Prezado(s) Senhor(es),                                                            ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Solicitamos numerários referentes ao processo: '+f_processos.T_processosCdigo.asstring+', Ref.Cliente:'+ f_processos.t_processoscdigo_cliente.asstring+', ');
      if t_locaisdescricao.asstring<>'' then begin
         memo_email.lines.add('embarcação '+trim(t_locaisdescricao.asstring) + ', conhecimento: '+trim(t_reltipodoccargadescricao.asstring)+' - '+trim(t_transpprocessonumerodoccarga.asstring));
         if t_transpprocessonumeromaster.asstring <>'' then begin
         memo_email.lines.add('Master: '+trim(t_transpprocessonumeromaster.asstring));
         end;
      end
      else begin
         memo_email.lines.add('Conhecimento: '+trim(t_reltipodoccargadescricao.asstring)+' - '+trim(t_transpprocessonumerodoccarga.asstring));
           if t_transpprocessonumeromaster.asstring <>'' then begin
              memo_email.lines.add('Master: '+trim(t_transpprocessonumeromaster.asstring));
           end;
      end;
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Especificação de Numerários_________________________ Valor Previsto             ');
      /////////             123456789/123456789/123456789/123456789/123456789/123
      ///                   ____________________________________________________
      memo_email.lines.add('                                                                                ');
      t_numerarios.first;
      valtotal := 0;
      while not t_numerarios.eof do begin
            if ((sonaosoli) and (t_numerariosprevisao_solicitada.asstring = 'NÃO')) then begin
               valtotal := valtotal+t_numerariosvalor_previsao.asfloat;
               memo_email.lines.add(copy(t_tiposnumerariodescricao.asstring+'____________________________________________________',1,52)+' '+floattostrf(t_numerariosvalor_previsao.asfloat,fffixed,10,2));
            end
            else begin
               if not sonaosoli then begin
               valtotal := valtotal+t_numerariosvalor_previsao.asfloat;
               memo_email.lines.add(copy(t_tiposnumerariodescricao.asstring+'____________________________________________________',1,52)+' '+floattostrf(t_numerariosvalor_previsao.asfloat,fffixed,10,2));
               end;
            end;
            t_numerarios.next;
      end;
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add(copy('Total____________________________________________________',1,52)+' '+floattostrf(valtotal,fffixed,10,2));

      ///      floattostrf((strtofloat(qtotal.caption)+ f_processos.t_numerariosvalor_previsao.asfloat),fffixed,10,2);

      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Observações: Os valores mencionados acima são previsões, sofrerão alterações    ');
      memo_email.lines.add('confome a variação cambial da moeda negociada.                                  ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Dados para Depósito:');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Banco___________ '+t_contacorrente_depbanco.asstring);
      memo_email.lines.add('Agência_________ '+t_contacorrente_depagencia.asstring);
      memo_email.lines.add('Conta Corrente__ '+t_contacorrente_depconta_corrente.asstring);
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Atenciosamente,                                                                 ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add(t_usuariosnome_completo.asstring);
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');

   end
   else begin ////em inglês
         email_num.postmessage.subject := 'MS2000 - Request of Funds - '+t_importadoresrazosocial.asstring+' - Process: '+me_nossaref.text;

      ////                  123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/
      memo_email.lines.add('MS2000 - IMPORT MANAGEMENT SYSTEM - Version 1.2 April/2001                      ');
      memo_email.lines.add('________________________________________________________________________________');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Dear Sirs,                                                                      ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('We hereby ask for below funds for process: '+f_processos.T_processosCdigo.asstring+', Client Ref.: '+t_processoscdigo_cliente.asstring+', ');
      if t_locaisdescricao.asstring<>'' then begin
         memo_email.lines.add('vessel '+trim(t_locaisdescricao.asstring) + ', lading: '+trim(t_reltipodoccargadescricao.asstring)+' - '+trim(t_transpprocessonumerodoccarga.asstring));
         if t_transpprocessonumeromaster.asstring <>'' then begin
         memo_email.lines.add('Master: '+trim(t_transpprocessonumeromaster.asstring));
         end;
      end
      else begin
           memo_email.lines.add('Lading: '+trim(t_reltipodoccargadescricao.asstring)+' - '+trim(t_transpprocessonumerodoccarga.asstring));
           if t_transpprocessonumeromaster.asstring <>'' then begin
              memo_email.lines.add('Master: '+trim(t_transpprocessonumeromaster.asstring));
           end;
      end;
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Breakdown of Funds__________________________________ Estimate Amount            ');
      /////////             123456789/123456789/123456789/123456789/123456789/123
      ///                   ____________________________________________________
      memo_email.lines.add('                                                                                ');
      t_numerarios.first;
      valtotal := 0;
      while not t_numerarios.eof do begin
            if ((sonaosoli) and (t_numerariosprevisao_solicitada.asstring = 'NÃO')) then begin
               valtotal := valtotal+t_numerariosvalor_previsao.asfloat;
               memo_email.lines.add(copy(t_tiposnumerario_ingdescricao.asstring+'____________________________________________________',1,52)+' '+floattostrf(t_numerariosvalor_previsao.asfloat,fffixed,10,2));
            end
            else begin
               if not sonaosoli then begin
               valtotal := valtotal+t_numerariosvalor_previsao.asfloat;
               memo_email.lines.add(copy(t_tiposnumerario_ingdescricao.asstring+'____________________________________________________',1,52)+' '+floattostrf(t_numerariosvalor_previsao.asfloat,fffixed,10,2));
               end;
            end;
            t_numerarios.next;
      end;
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add(copy('Total____________________________________________________',1,52)+' '+floattostrf(valtotal,fffixed,10,2));

      ///      floattostrf((strtofloat(qtotal.caption)+ f_processos.t_numerariosvalor_previsao.asfloat),fffixed,10,2);

      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Remark: The above mentioned amounts are estimate, and may vary with fluctuation ');
      memo_email.lines.add('of exchange rate negotiated curency.                                            ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Transfer Details:');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Bank____________ '+t_contacorrente_depbanco.asstring);
      memo_email.lines.add('Branch__________ '+t_contacorrente_depagencia.asstring);
      memo_email.lines.add('Current Account_ '+t_contacorrente_depconta_corrente.asstring);
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('Sincerely,                                                                      ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add(t_usuariosnome_completo.asstring);
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');
      memo_email.lines.add('                                                                                ');

   end;

   p_email.left    := 11;
   p_email.width   := 741;
   p_email.visible := true;

end;

procedure TF_processos.DBEdit28Change(Sender: TObject);
begin
if t_contatosimpfax_numerario.asstring='' then b_impfax.enabled := false
else b_impfax.enabled := true;

if ((t_contatosimpemail_numerario.asstring<>'') and (t_usuariosemail.asstring <>'')) then
b_impemail.enabled := true
else
b_impemail.enabled := false;


end;

procedure TF_processos.DBEdit27Exit(Sender: TObject);
begin
if t_usuarios.State = dsedit then t_usuarios.post;
end;

procedure TF_processos.b_cancelaemailClick(Sender: TObject);
begin
p_email.visible := false;
end;

procedure TF_processos.b_enviaClick(Sender: TObject);
var i:integer;
begin

if MessageDlg('Confirma envio do Email?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin

email_num.postmessage.body.add('<FONT face=Courier>');
for i:= 0 to memo_email.lines.Count-1 do begin
    email_num.postmessage.body.add(memo_email.lines[i]+'<br>');
end;
///email_num.postmessage.body.add('<FONT face=Courier>');
try
   email_num.connect;
   email_num.sendmail;
   email_num.disconnect;
   showmessage('Email enviado com sucesso!');
   p_email.visible := false;
   if MessageDlg('Confirma Solicitação desta Previsão?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
   t_numerarios.first;
    while not t_numerarios.eof do begin
          if ((t_numerariosprevisao_solicitada.asstring <> 'SIM') and
             (t_numerariosok_previsao_financeiro.asstring <> 'SIM'))then begin

         t_numerarios.edit;
         t_numerariosprevisao_solicitada.asstring := 'SIM';
         t_numerariosusuario_previsao.asstring := v_usuario;
         t_numerarios.post;
      end;
      t_numerarios.next;
   end;
   end;

except
   On E:Exception do begin
      showmessage('Erro no envio do email. Verifique seus dados e sua conexão com a internet!');
      email_num.disconnect;
      end;
   end;

   end;

end;

procedure TF_processos.t_contacorrente_regAfterScroll(DataSet: TDataSet);
begin
if ((t_contacorrente_regbanco.asstring='') or
    (t_contacorrente_regagencia.asstring='') or
    (t_contacorrente_regconta_corrente.asstring='')) then begin
    showmessage('Solicite ao Financeiro para Informar (Banco/Agência/Conta Corrente) para registro no SISCOMEX do Cliente '+t_importadoresrazosocial.asstring);
end;

end;

procedure TF_processos.t_contacorrente_depAfterScroll(DataSet: TDataSet);
begin
if ((t_contacorrente_depbanco.asstring='') or
    (t_contacorrente_depagencia.asstring='') or
    (t_contacorrente_depconta_corrente.asstring='')) then begin
    showmessage('Solicite ao Financeiro para Informar (Banco/Agência/Conta Corrente) para Depósito de Numerários do Cliente '+t_importadoresrazosocial.asstring);
end;

end;

procedure TF_processos.ME_pesounitEnter(Sender: TObject);
begin
    b_gravait.Enabled  := true;
end;

procedure TF_processos.me_prepaidKeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_collectKeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_ternacKeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_fretetotalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valsegKeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_despfobKeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valoracrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valordeduKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.DBG_numerariosKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.cb_atoconceChange(Sender: TObject);
begin
q_sub.close;
q_sub.params[0].asstring := copy(cb_atoconce.text,1,20);
q_sub.params[1].asstring := t_processosimportador.asstring;
q_sub.open;
cb_sub.enabled := false;
cb_sub.clear;
while not q_sub.Eof do begin
      cb_sub.items.add(copy(q_subcnpj_cpf_completo.asstring+'                            ',1,14)+' '+q_subrazao_social.asstring);
      q_sub.next;
end;
cb_sub.enabled := true;


end;

procedure TF_processos.TS_desenbaShow(Sender: TObject);
begin
panel37.enabled := false;
if t_processostipo_declarao.asstring='12' then panel37.enabled := true;
end;

procedure TF_processos.b_imprimerelconsumoClick(Sender: TObject);
var qrcr:integer;
    j:integer;
    qpag:real;
    qpag2:integer;
    qpega:integer;
    qmfpnpo:string;
    apri:boolean;

begin
{possiciona no processo}
t_processos.first;
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);

if not assigned (QR_relconsumo) then Application.CreateForm(TQR_relconsumo, QR_relconsumo);

   /// faturas do processo
   QR_relconsumo.qrlabel3.caption := me_destcon.text;
   QR_relconsumo.qrl_faturas.caption := '';
   apri := true;
   t_faturas.first;
   t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
   while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
         if apri then begin
                 QR_relconsumo.qrl_faturas.caption := T_faturasCdigo.asstring;
                 apri := false;
         end
         else QR_relconsumo.qrl_faturas.caption := QR_relconsumo.qrl_faturas.caption+', '+T_faturasCdigo.asstring;
         t_faturas.next;
   end;

    Q_infocomp1.Close;
    Q_infocomp1.Params[0].AsString := me_nossaref.text;
    Q_infocomp1.open;

    if Q_infocomp1.recordcount > 0 then begin

    if ((Q_infocomp1qtipomanifesto.asstring <>'') and (Q_infocomp1numeromanifesto.asstring<>'')) then begin
       QR_relconsumo.qrl_faturas.caption := QR_relconsumo.qrl_faturas.caption+' e '+Q_infocomp1qtipomanifesto.asstring+' Nº: '+Q_infocomp1numeromanifesto.asstring;
    end;
    end;



   {roda a sql de itens de rcr}
   QR_relconsumo.Q_itensrcr.Close;
   QR_relconsumo.Q_itensrcr.Params[0].AsString := f_processos.t_parametrosempresa.asstring;
   QR_relconsumo.Q_itensrcr.Params[1].AsString := f_processos.t_parametrosfilial.asstring;
   QR_relconsumo.Q_itensrcr.Params[2].AsString := f_processos.me_nossaref.text;
   QR_relconsumo.Q_itensrcr.open;
if QR_relconsumo.Q_itensrcr.eof then begin
   MessageDlg('Este processo não possui itens tributados integralmente!', mtInformation,[mbOk], 0);
   end
else begin
   t_rcrtemp.first;
   while not t_rcrtemp.eof do begin
         if (t_rcrtempprocesso.asstring = me_nossaref.text) then t_rcrtemp.delete
         else t_rcrtemp.Next;
   end;
   qrcr := 0;
   QR_relconsumo.Q_itensrcr.first;
   while not QR_relconsumo.Q_itensrcr.eof do begin
         qrcr := qrcr+1;
         while t_rcrtemp.state = dsinsert do begin
         end;
         t_rcrtemp.Append;
         t_rcrtempprocesso.asstring := me_nossaref.text;
         t_rcrtempncm.asstring      := QR_relconsumo.Q_itensrcrncm.asstring;
         t_produtos.findkey([QR_RCR.Q_itensrcrempresa.asstring,QR_relconsumo.Q_itensrcrfilial.asstring,QR_relconsumo.Q_itensrcrproduto.asstring]);
         t_rcrtempdescricao_produto.asstring := trim(COPY(t_produtosdescrio.asstring,1,70));
         t_rcrtempfatura.asstring      := QR_relconsumo.Q_itensrcrfatura.asstring;
         t_rcrtemppagina.asstring      := QR_relconsumo.Q_itensrcrpagina.asstring;
         t_rcrtempquantidade.asfloat   := QR_relconsumo.Q_itensrcrsomadequantidade.asfloat;
         t_rcrtempvalor.asfloat        := QR_relconsumo.Q_itensrcrSomaDeValor_Aduaneiro.asfloat;
         t_rcrtemp.post;
         for qpega := 1 to strtoint(floattostr(int(length(trim(t_produtosdescrio.asstring ))/70))) do begin
             qrcr := qrcr+1;
             while t_rcrtemp.state = dsinsert do begin
             end;
             t_rcrtemp.Append;
             t_rcrtempprocesso.asstring := me_nossaref.text;
             t_rcrtempdescricao_produto.asstring := trim(COPY(t_produtosdescrio.asstring,(qpega*70)+1,70));
             t_rcrtempncm.asstring                    := ' ';
             t_rcrtempfatura.asstring                 := ' ';
             t_rcrtemppagina.asstring                 := ' ';
             t_rcrtemp.post;
         end;
         qmfpnpo := ' '+trim('MFPN.'+QR_relconsumo.Q_itensrcrproduto.asstring);
         if QR_relconsumo.Q_itensrcrPO.asstring<>'' then qmfpnpo := qmfpnpo+' PO.'+TRIM(QR_relconsumo.Q_itensrcrPO.asstring);

         if (length(trim(t_rcrtempdescricao_produto.asstring+qmfpnpo)) < 70) then begin
            t_rcrtemp.edit;
            t_rcrtempdescricao_produto.asstring := t_rcrtempdescricao_produto.asstring+qmfpnpo;
            t_rcrtemp.post;
            end
         else begin
             qrcr := qrcr+1;
             t_rcrtemp.Append;
             t_rcrtempprocesso.asstring := me_nossaref.text;
             t_rcrtempdescricao_produto.asstring := qmfpnpo;
             t_rcrtempncm.asstring                    := ' ';
             t_rcrtempfatura.asstring                 := ' ';
             t_rcrtemppagina.asstring                 := ' ';
             t_rcrtemp.post;
         end;

         QR_relconsumo.Q_itensrcr.next;
   end;
{
   qpag := round(qrcr*0.055);
   if (((qrcr*0.055) - qpag) > 0.055) then qpag := qpag +1;
   qpag2 := strtoint(floattostr(qpag));
   if ((qpag2*40)-qrcr) > 0 then begin
   for j := 1 to (((qpag2*40)-qrcr)+(qpag2-1)) do begin
         while t_rcrtemp.state = dsinsert do begin
         end;
         t_rcrtemp.Append;
         t_rcrtempprocesso.asstring               := me_nossaref.text;
         t_rcrtempncm.asstring                    := ' ';
         t_rcrtempdescricao_produto.asstring      := ' ';
         t_rcrtempfatura.asstring                 := ' ';
         t_rcrtemppagina.asstring                 := ' ';
         t_rcrtemp.post;
   end;
   end;
}
   QR_relconsumo.Q_rcrtemp.Close;
   QR_relconsumo.Q_rcrtemp.Params[0].AsString := f_processos.me_nossaref.text;
   QR_relconsumo.Q_rcrtemp.open;
   taxaconvn(f_processos);
   QR_relconsumo.preview;
end;
end;

procedure TF_processos.b_imprimeTRClick(Sender: TObject);
begin

if not assigned (QR_TR) then Application.CreateForm(TQR_TR, QR_TR);

   {roda a sql de itens de rcr}
   QR_TR.Q_TR.Close;
   QR_TR.Q_TR.Params[0].AsString := f_processos.t_parametrosempresa.asstring;
   QR_TR.Q_TR.Params[1].AsString := f_processos.t_parametrosfilial.asstring;
   QR_TR.Q_TR.Params[2].AsString := f_processos.me_nossaref.text;
   QR_TR.Q_TR.open;

   QR_TR.qrl_valorfob.caption := 'US$ '+ me_valfobuss.text;
   QR_TR.qrl_valorcif.caption := 'US$ '+ me_valcifuss.text;
   QR_TR.qrl_valorii.caption  := 'R$ '+ me_iireal.text;
   QR_TR.qrl_valoripi.caption := 'R$ '+ me_ipireal.text;
   QR_TR.qrl_valortot.caption := 'R$ '+ me_totimpreal.text;

   QR_TR.preview;

end;

procedure TF_processos.ts_RPRShow(Sender: TObject);
begin
q_rpr.close;
q_rpr.Params[0].asstring := t_processosimportador.asstring;
q_rpr.open;
end;

procedure TF_processos.DBG_numerariosDblClick(Sender: TObject);
begin
         t_numerarios.edit;
         if t_numerariosprevisao_solicitada.asstring = 'SIM' then
            t_numerariosprevisao_solicitada.asstring := 'NÃO'
         else
            t_numerariosprevisao_solicitada.asstring := 'SIM';
         t_numerarios.post;

end;

procedure TF_processos.T_processosBeforePost(DataSet: TDataSet);
begin
{t_verufollow.last;
if ((t_verufollowCodevento.asstring<>'') and (not t_verufollow.Bof) ) then begin
   t_processos.edit;
   T_processosCodevento.asstring      := t_verufollowCodevento.asstring;
   T_processosCodobs.asstring         := t_verufollowCodobs.asstring;
   T_processosObs_especifica.asstring := t_verufollowObs_especifica.asstring;
   T_processosData_ufollowup.asstring := t_verufollowData.asstring;
   T_processosHora_ufollowup.asstring := t_verufollowHora.asstring;


   end;}
end;

procedure TF_processos.T_followupBeforePost(DataSet: TDataSet);
begin
t_followup.edit;
t_followupusuario.asstring := v_usuario;

end;

procedure TF_processos.me_valorpercKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valorrealKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valorpercExit(Sender: TObject);
begin

me_valorreal.Text := floattostr((strtofloat(me_valorperc.text)*t_faturasvalortotal.asfloat)/100);
end;

procedure TF_processos.me_valorrealExit(Sender: TObject);
begin
me_valorperc.Text := floattostr((strtofloat(me_valorreal.text)*100)/t_faturasvalortotal.asfloat);
end;

procedure TF_processos.me_valorreal2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valorperc2Exit(Sender: TObject);
begin
me_valorreal2.Text := floattostr((strtofloat(me_valorperc2.text)*t_faturasvalortotal.asfloat)/100);
end;

procedure TF_processos.me_valorperc2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valorreal2Exit(Sender: TObject);
begin
me_valorperc2.Text := floattostr((strtofloat(me_valorreal2.text)*100)/t_faturasvalortotal.asfloat);
end;

procedure TF_processos.me_valor3Exit(Sender: TObject);
begin
me_percentual.Text := floattostr((strtofloat(me_valor3.text)*100)/t_faturasvalortotal.asfloat);
end;

procedure TF_processos.me_percentualKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_valor3KeyPress(Sender: TObject; var Key: Char);
begin
if key = '.' then key := ',';
end;

procedure TF_processos.me_refprojKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_referencia.setfocus;
end;

procedure TF_processos.sp_euroClick(Sender: TObject);
begin
t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
t_moeda.findkey([t_faturasmoeda.asstring]);
if (t_moedac.Eof and t_moedac.bof) then begin
   showmessage(v_usuario+', a moeda desta fatura não possue conversão para EURO.');
end
else begin
   showmessage(v_usuario+', a conversão para EURO não poderá ser desfeita. Verifique todos os dados da sua fatura.');
   if MessageDlg('Confirma Conversão dos valores desta Fatura para valores em EURO?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin

   t_itensfaturas.first;
   t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,me_fatura.text]);
   while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = me_fatura.text) do begin
         t_itensfaturas.edit;
         t_itensfaturasvalorunitrio.asfloat := (t_itensfaturasvalorunitrio.asfloat/t_moedactaxa_conversao.asfloat);
         t_itensfaturasvalortotal.asfloat   := (t_itensfaturasvalortotal.asfloat/t_moedactaxa_conversao.asfloat);
         t_itensfaturas.post;
         t_itensfaturas.next;
   end;
   T_faturas.edit;
   T_faturasmoeda.asstring      := '978';
   T_faturasvalortotal.asfloat  := (T_faturasvalortotal.asfloat/t_moedactaxa_conversao.asfloat);
   T_faturas.post;
   Q_itensfaturas.Close;
   Q_itensfaturas.open;
   t_moeda.findkey([t_faturasmoeda.asstring]);
   CB_moedas.text       := t_moedacodigo.asstring+' '+t_moedadescricao.asstring;
   e_valortotal.text    := t_faturasvalortotal.asstring;

   showmessage(v_usuario+', sua fatura foi convertida para EURO.');

   end;
end;
end;

procedure TF_processos.ME_descricaoEnter(Sender: TObject);
begin
memodesc.visible := true;
memodesc.setfocus;
end;

procedure TF_processos.memoDescExit(Sender: TObject);
begin
me_descricao.text := t_produtosdescrio.asstring;
memodesc.visible := false;
me_fabricante.setfocus;
end;

procedure TF_processos.memoDescKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_fabricante.setfocus;
end;

procedure TF_processos.bsg(Sender: TObject);
var qvetor :array[0..37] of string;
begin
{   qvetor[0] := 'Oi! simplesmente sinto sua falta...';
   qvetor[1] := 'O amor é a asa veloz que Deus deu à alma para que voe até o céu.';
   qvetor[2] := 'SABIA QUE A FUSÃO DE DOIS CORAÇÕES QUE SE AMAM, PASSA A SER APENAS UM CORAÇÃO,  BATENDO EM PEITOS DIFERENTES. MAS NO MESMO RiTIMO.';
   qvetor[3] := 'A distância mais longa é entre a cabeça e o coração.';
   qvetor[4] := 'O verdadeiro amor nunca se esgota. Quanto mais se dá, mais se tem.';
   qvetor[5] := 'Amar é ter vontade de continuar a caminhada para fazer alguém feliz.';
   qvetor[6] := 'O amor é uma luz que não deixa escurecer a vida... Ninguém é pobre quando ama.';
   qvetor[7] := 'Há lágrimas que correm pela face e outras que rolam pelo coração.';
   qvetor[8] := 'O casamento não é uma solução. É um ponto de partida no caminho do amor.';
   qvetor[9] := 'O poder pode ser alcançado por meio do conhecimento mas só o amor nos leva à perfeição.';
   qvetor[10] := 'Que eu reze não para ser preservado dos perigos, mas para encará-los de frente.';
   qvetor[11] := 'Sem paz, sem amor, sem glória... Eu pergunto: isso é vida ? ';
   qvetor[12] := 'A vida é maravilhosa quando não se tem medo dela.';
   qvetor[13] := 'Eu quase de nada sei, mas desconfio de muita coisa.';
   qvetor[14] := 'A saudade é a memória do coração.';
   qvetor[15] := 'Se tu choras por ter perdido o sol, as lágrimas te impedirão de ver as estrelas.';
   qvetor[16] := 'O amor é como a respiração... Precisamos sempre de mais,';
   qvetor[17] := 'O AMOR É COMO UM ESPELHO. QUANDO VOCÊ AMA ALGUÉM ELA SE TORNA SEU ESPELHO E VOCÊ O DELA...E REFLETINDO O AMOR DE CADA UM VOCÊ ENXERGA A INFINIDADE.';
   qvetor[18] := 'Amar é um universo infinito, onde as estrelas celestiais são todos os sentimentos humanos reunidos, os planetas somos nós, os amantes, os apaixonados; o Sol é a luz divina, a luz da vida, e a Lua, uma fonte inesgotável de esperança e inspiração...';
   qvetor[19] := 'A esperança é a arte de ser feliz sem a felicidade...Quando esperamos,os segundos são anos. Quando recordamos,os anos são segundos.';
   qvetor[20] := 'Que tudo na sua vida brilhe como seu olhos, seja maravilhoso como seu coração, e linda como você.';
   qvetor[21] := 'Se eu tivesse que escolher entre você e um sorriso, ficaria com você,pois sem você jamais conseguiria sorrir.';
   qvetor[22] := 'Se alguem disser que você nunca fez nada de importante, não ligue.O mais importante já foi feito: você.';
   qvetor[23] := 'Se o amor está presente a vida fica melhor .Quando ele está ausente a paixão fica maior. A distância permite a saudade, mas nunca o esquecimento.';
   qvetor[24] := 'Meu amor é como o amor do Sol pela Terra, que não se aproxima mais por saber que pode destruir o que lhe dá sentido para existir, sua vida. E, só por isso, admira sua beleza a distância. Amo você!.';
   qvetor[25] := 'O amor é uma estrada florida, não tem retorno apenas ida.';
   qvetor[26] := 'beijo, beijo, beijo para que beijar se podemos amar.';
   qvetor[27] := 'Belezas são coisas acesas por dentro, tristezas são belezas apagadas pelo sofrimento.';
   qvetor[28] := 'Saio da escuridão para viver novamente, e enfrento essa imensidão para te amar eternamente...';
   qvetor[29] := 'Amar é sofrer um instante de saudade, é sentir um segundo de ciúme, é viver um momento de paixão. Se você não existisse, eu não teria aprendido a amar de um jeito tão bonito e especial.';
   qvetor[30] := 'A tristeza pode sempre sobrevoar a sua cabeça, mas nunca a deixe fazer um ninho.';
   qvetor[31] := 'Procure as coisas certas no lugar certo, olhe ao seu redor, ou melhor procure as coisas certas nas pessoas que lhe pareçam ser erradas, garanto que encontrará.';
   qvetor[32] := 'O SORRISO É UMA MANIFESTAÇÃO DOS LÁBIOS QUANDO OS OLHOS ENCONTRAM O QUE O CORAÇÃO PROCURA.';
   qvetor[33] := 'Os anjos sobrevoam a minha janela trazem a felicidade, me amostram o valor de um verdadeiro amor e me provaram q um sonho nunca morrerá, apenas descansará p/ ter mais forças e capacidade de a si próprio realizar.';
   qvetor[34] := 'pensa em mim... só um pouquinho... beijão!';
   qvetor[35] := 'te amo... não quero ser repetitivo... mas é inevitável...';
   qvetor[36] := 'MMMMAAARRRRAAAAVVVVIIIILLLLHHHHOOOOOSSSSAAAAA!!!!';
   qvetor[37] := 'nem por 1 segundo vc sai da minha cabeça! beijo!';
   randomize;
   if v_usuario = 'BIANCA' then showmessage('Bia, '+qvetor[random(38)-1]);
   if v_usuario = 'MM' then showmessage('Bia, '+ qvetor[random(38)-1]);}
end;

procedure TF_processos.me_moedaExit(Sender: TObject);
begin
me_ncm.SetFocus;
end;

procedure TF_processos.me_destaqueExit(Sender: TObject);
begin
me_naladi.setfocus;
end;

procedure TF_processos.me_naladiExit(Sender: TObject);
begin
cb_unid.setfocus;
end;

procedure TF_processos.cb_unidExit(Sender: TObject);
begin
cb_unidest.SetFocus;
end;

procedure TF_processos.b_qqClick(Sender: TObject);
begin

   if not assigned (QR_TR) then Application.CreateForm(TQR_TR, QR_TR);

   {roda a sql de itens de rcr}
   QR_TR.Q_TR.Close;
   QR_TR.Q_TR.Params[0].AsString := f_processos.t_parametrosempresa.asstring;
   QR_TR.Q_TR.Params[1].AsString := f_processos.t_parametrosfilial.asstring;
   QR_TR.Q_TR.Params[2].AsString := f_processos.me_nossaref.text;
   QR_TR.Q_TR.open;

   b_qqTRClick(f_processos);

end;

procedure TF_processos.me_seqpoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_quantidade.setfocus;
end;

procedure TF_processos.me_databaixatrExit(Sender: TObject);
begin
showmessage(v_usuario+', informa a data da baixa do TR no controle de validade de documentos.');
end;

procedure TF_processos.sb_tempClick(Sender: TObject);
begin
t_processos.first;
while not t_processos.eof do begin
      me_nossaref.text := t_processoscdigo.asstring;
      me_nossaref.Refresh;
      try
      if (t_processosvalor_fob.asfloat=0) and (copy(t_processosdata.asstring,7,4) = '2002') and ((t_processosnr_declaracao_imp.asstring <> '') or (t_processosnr_declaracao_impc.asstring <>''))  then
         b_atualizasiscomexClick2(f_processos);
      except
      On E:Exception do begin
         end;
      end;
      t_processos.next;
end;

end;

procedure TF_processos.b_atualizasiscomexClick2(Sender: TObject);
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


begin
v_analise := true;
{if MessageDlg('Atualiza DI - SISCOMEX para Registro?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then v_analise := false;}
if sender = b_atualizasiscomex then begin
   {MessageDlg('Atualização SISCOMEX para Registro!', mtInformation,[mbOk], 0);}
   v_analise := false;
end;

if T_produtos.state = dsInactive then T_produtos.open;

{atualiza capa da di}
atualizadi(f_processos);
t_processos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
q_adicoes.Close;
q_adicoes.Params[0].AsString := t_parametrosempresa.asstring;
q_adicoes.Params[1].AsString := t_parametrosfilial.asstring;
q_adicoes.Params[2].AsString := me_nossaref.text;
q_adicoes.open;

if t_processosnumero_rcr.asstring <>'' then begin
   t_procdi.close;
   t_procdi.open;
   if t_procdi.findkey([t_processosNR_DECL_IMP_MICRO.asstring,0]) then begin
      t_procdi.delete;
   end;
   while t_procdi.state = dsinsert do begin
   end;
   t_procdi.append;
   t_procdiNR_DECL_IMP_MICRO.asstring := t_processosNR_DECL_IMP_MICRO.asstring;
   t_procdiNR_SEQ_PROCESSO.AsInteger  := 0;
   t_procdiCD_TIPO_PROCESSO.asstring  :='1';
   t_procdiNR_PROCESSO_INSTR.asstring := t_processosnumero_rcr.asstring;
   t_procdi.post;
   t_procdi.close;
end;

t_di.Active := false;
t_di.active := true;
t_di.close;
t_di.open;
t_di.refresh;
t_di.first;
t_adicoes.close;
t_adicoes.open;
q_adicoes.first;
t_adicoes.first;
if t_adicoes.findkey([Q_adicoesNR_DECL_IMP_MICRO.asstring]) then begin
    while (not t_adicoes.eof) and (t_adicoesNR_DECL_IMP_MICRO.asstring =Q_adicoesNR_DECL_IMP_MICRO.asstring ) do begin
          t_adicoes.delete;
    end;
end;
while not q_adicoes.eof do begin
      processamento('Aguarde... Atualizando SISCOMEX... Adições',q_adicoes.recordcount,false);
      while t_adicoes.state = dsinsert do begin
      end;
      t_adicoes.append;
         T_adicoesNR_DECL_IMP_MICRO.asstring      :=    Q_adicoesNR_DECL_IMP_MICRO.asstring;
         T_adicoesNR_OP_IMP_MICRO.asstring        :=    Q_adicoesAdicao.asstring;
         {T_adicoesCD_URF_ENTR_MERC.asstring       :=    Q_adicoesURF_chegada.asstring;}
         {T_adicoesCD_VIA_TRANSPORTE.asstring      :=    Q_adicoesVia.asstring;}
         {T_adicoesIN_MULTIMODAL.asboolean         :=    Q_adicoesMultimodal.asboolean;}
         if Q_adicoesRazoSocial.asstring<>'' then T_adicoesNM_FORN_ESTR.asstring           :=    Q_adicoesRazoSocial.asstring;
         if Q_adicoesEndereo.asstring<>'' then T_adicoesED_LOGR_FORN_ESTR.asstring      :=    Q_adicoesEndereo.asstring;
         if Q_adicoesNmero.asstring<>'' then T_adicoesED_NR_FORN_ESTR.asstring        :=    Q_adicoesNmero.asstring;
         if Q_adicoesComplemento.asstring<>'' then T_adicoesED_COMPL_FORN_ESTR.asstring     :=    Q_adicoesComplemento.asstring;
         if Q_adicoesCidade.asstring<>'' then T_adicoesED_CIDAD_FORN_ESTR.asstring     :=    Q_adicoesCidade.asstring;
         if Q_adicoesEstado.asstring<>'' then T_adicoesED_ESTAD_FORN_ESTR.asstring     :=    Q_adicoesEstado.asstring;
         if Q_adicoesPas.asstring<>'' then T_adicoesCD_PAIS_AQUIS_MERC.asstring     :=    Q_adicoesPas.asstring;
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

              if Q_adicoesFABEND.asstring<>'' then T_adicoesED_LOGR_FABRIC.asstring         := Q_adicoesFABEND.asstring;
              if Q_adicoesFABNUM.asstring<>'' then T_adicoesED_NR_FABRIC.asstring           := Q_adicoesFABNUM.asstring;
              if Q_adicoesFABCOMP.asstring<>'' then T_adicoesED_COMPL_FABRIC.asstring        := Q_adicoesFABCOMP.asstring;
              if Q_adicoesFABCID.asstring<>'' then T_adicoesED_CIDAD_FABRIC.asstring        := Q_adicoesFABCID.asstring;
              if Q_adicoesFABEST.asstring<>'' then T_adicoesED_ESTADO_FABRIC.asstring       := Q_adicoesFABEST.asstring;
              {T_adicoesCD_PAIS_ORIG_MERC.asstring      := Q_adicoesFABPAI.asstring+' ';}
         end;
         if Q_adicoesFABPAI.asstring<>'' then T_adicoesCD_PAIS_ORIG_MERC.asstring := Q_adicoesFABPAI.asstring;

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
         T_adicoesVL_MERC_COND_VENDA.asfloat      := Q_adicoesValor_Aduaneiro.asfloat;
         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_adicoesCD_MOEDA_NEGOCIADA.asstring]);

         T_adicoesVL_MERC_VENDA_MN.asfloat        := (Q_adicoesValor_Aduaneiro.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {T_adicoesVL_FRETE_MERC_MNEG.asfloat      := Q_adicoesFrete.asfloat;}
         {T_adicoesCD_MD_FRETE_MERC.asstring      := Q_adicoesMoeda.asstring+' ';}
         T_adicoesVL_FRETE_MERC_MN.asfloat        := (Q_adicoesFrete.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {T_adicoesVL_SEG_MERC_MNEG.asfloat       := Q_adicoesSeguro.asfloat;}
         {T_adicoesCD_MOEDA_SEG_MERC.asstring     := Q_adicoesMoeda.asstring;}
         T_adicoesVL_SEG_MERC_MN.asfloat          := (Q_adicoesSeguro.asfloat*t_taxaconvtaxa_conversao.asfloat);
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
            if Q_adicoesValor_Aduaneiro.asfloat<>0 then T_adicoesVL_TOT_FINANC_360.asfloat     := Q_adicoesValor_Aduaneiro.asfloat;
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
         T_adicoesvl_merc_loc_emb_mn.asfloat      := (Q_adicoesVMLE.asfloat*t_taxaconvtaxa_conversao.asfloat);
         T_adicoesvl_base_calculo_mn.asfloat      := (Q_adicoesBase_Calc_II.asfloat*t_taxaconvtaxa_conversao.asfloat);
         {T_adicoesNR_OPER_TRAT_PREV.asstring      := ' ';}

      t_adicoes.post;
      q_adicoes.next
end;

processamento('Aguarde... Atualizando SISCOMEX... Adições',q_adicoes.recordcount,true);


{gera todos os detalhes por adicao}
q_detalhe.Close;
q_detalhe.Params[0].AsString := t_parametrosempresa.asstring;
q_detalhe.Params[1].AsString := t_parametrosfilial.asstring;
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
      t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,q_detalheFatura.asstring,'1']);
      v_seq_pag := q_detalhesequencial.asinteger;
      v_menor   := q_detalhesequencial.asinteger;
      while ((not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring) and (T_itensfaturasProcesso.asstring = me_nossaref.text) and (T_itensfaturasFatura.asstring = q_detalheFatura.asstring)) do begin
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
      t_produtos.first;
      t_produtos.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,q_detalheproduto.asstring]);
      q_descricao := trim(t_produtosdescrio.asstring)+' Referencia: '+q_detalheProduto.asstring;
      if q_detalhecertificado_origem.asstring<>'' then q_descricao := q_descricao+' Certif.Origem: '+q_detalhecertificado_origem.asstring;
      if q_detalhereferencia.asstring<>'' then q_descricao := q_descricao+' Caixa: '+q_detalhereferencia.asstring;
      if ((q_detalhereferencia_projeto.asstring<>'') and (q_detalhereferencia_projeto.asstring<>'.')) then q_descricao := q_descricao+' Ref.Projeto: '+q_detalhereferencia_projeto.asstring;
      if t_parametrosfilial.asstring = 'CWB' then begin
         if ((q_detalhePO.asstring<>'') and (q_detalhePO.asstring<>'.')) then q_descricao := q_descricao+' PO: '+q_detalhePO.asstring;
         if ((q_detalheseqPO.asstring<>'') and (q_detalheseqPO.asstring<>'.')) then q_descricao := q_descricao+' Seq.PO: '+q_detalheseqPO.asstring;
      end;
      q_descricao := q_descricao+' Fatura: '+q_detalheFatura.asstring+' Pagina: '+q_detalhePagina.asstring+' Linha: '+inttostr(v_qsequencial);
      T_detalhesTX_DESC_DET_MERC.asstring := q_descricao;
      {verificar quantidade }
      v_quant := '00000000000'+floattostrf(q_detalheQuantidade.asfloat,fffixed,9,5);
      v_quant := copy(v_quant,(length(v_quant)-14),9)+copy(v_quant,(length(v_quant)-4),5);
      T_detalhesQT_MERC_UN_COMERC.asstring  := v_quant;
      t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,q_detalheFatura.asstring,q_detalheSequencial.asstring]);
      {localiza o nome da unidades}
      t_unidades.findkey([t_itensfaturasunidade.asstring]);
      if t_unidadesdescricao.asstring<>'' then T_detalhesNM_UN_MEDID_COMERC.asstring := t_unidadesdescricao.asstring;
      T_detalhesVL_UNID_LOC_EMB.asfloat     := (t_itensfaturasvmle.asfloat/t_itensfaturasquantidade.asfloat);

      v_valor := '00000000000000'+floattostrf((t_itensfaturasvalor_aduaneiro.asfloat/t_itensfaturasquantidade.asfloat),fffixed,13,7);
      v_valor := copy(v_valor,(length(v_valor)-20),13)+copy(v_valor,(length(v_valor)-6),7);

      T_detalhesVL_UNID_COND_VENDA.asstring := v_valor;
      T_detalhesCD_PRODUTO.asstring         := q_detalheProduto.asstring;
      t_detalhes.post;
      {grava sequencia da adicao nos itens tributaveis}
      if T_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,q_detalhefatura.asstring,q_detalhesequencial.asstring,q_detalheseq.asstring]) then begin
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
q_acresdedu.Params[0].AsString := t_parametrosempresa.asstring;
q_acresdedu.Params[1].AsString := t_parametrosfilial.asstring;
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
         T_acresvalCD_MET_ACRES_VALOR.asstring          := '9';
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
q_atovinc.Params[0].AsString := t_parametrosempresa.asstring;
q_atovinc.Params[1].AsString := t_parametrosfilial.asstring;
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
q_embcarga.Params[0].AsString := t_parametrosempresa.asstring;
q_embcarga.Params[1].AsString := t_parametrosfilial.asstring;
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
q_cargaarm.Params[0].AsString := t_parametrosempresa.asstring;
q_cargaarm.Params[1].AsString := t_parametrosfilial.asstring;
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
q_destaquencm.Params[0].AsString := t_parametrosempresa.asstring;
q_destaquencm.Params[1].AsString := t_parametrosfilial.asstring;
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
q_docsinstru.Params[0].AsString := t_parametrosempresa.asstring;
q_docsinstru.Params[1].AsString := t_parametrosfilial.asstring;
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
processamento('Aguarde... Atualizando SISCOMEX... Documentos de Instruções',q_docsinstru.recordcount,true);

{verifica tributos por adicao}
q_tributos.Close;
q_tributos.Params[0].AsString := t_parametrosempresa.asstring;
q_tributos.Params[1].AsString := t_parametrosfilial.asstring;
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
      t_tributo.append;
      T_tributoNR_DECL_IMP_MICRO.asstring  := Q_tributosNR_DECL_IMP_MICRO.asstring;
      T_tributoNR_OP_IMP_MICRO.asstring    := Q_tributosAdicao.asstring;
      T_tributoCD_RECEITA_IMPOSTO.asstring := Q_tributoscod_IPI.asstring;
      T_tributoCD_TIPO_ALIQ_IPT.asstring   := Q_tributostipo_aliq.asstring;
      T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributossomadeBase_Calc_IpI.asfloat*t_taxaconvtaxa_conversao.asfloat);
      T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_IPI.asfloat;
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
      q_tributos.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Tributos',q_tributos.recordcount,true);

{verifica pagamentos previstos por adicao}
q_pagprev.Close;
q_pagprev.Params[0].AsString := t_parametrosempresa.asstring;
q_pagprev.Params[1].AsString := t_parametrosfilial.asstring;
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
q_pagtributos.Params[0].AsString := t_parametrosempresa.asstring;
q_pagtributos.Params[1].AsString := t_parametrosfilial.asstring;
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
    for i := 0 to strtoint(q_pagtributosnadicoes.asstring)-1 do begin
        if ((i >= 0 )  and (i <= 1 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
        if ((i >= 2 )  and (i <= 4 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
        if ((i >= 5 )  and (i <= 9 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
        if ((i >= 10)  and (i <= 21))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
        if ((i >= 22)  and (i <= 51))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
        if (i >= 52) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
    end;
    {ratear nos itens das faturas}
    {T_pagtributosDT_PGTO_TRIBUTO.asstring     := ' ';
    T_pagtributosVL_MULTA_PGTO_TRIB.asfloat   := 0;
    T_pagtributosVL_JUROS_PGTO_TRIB.asfloat   := 0;}
    t_pagtributos.post;

    q_pagtributos.next;
end;
processamento('Aguarde... Atualizando SISCOMEX... Pagamentos de Tributos por Adição',q_pagtributos.recordcount,true);

{verifica pagamentos vinculados por adicao}
q_pagvinculados.Close;
q_pagvinculados.Params[0].AsString := t_parametrosempresa.asstring;
q_pagvinculados.Params[1].AsString := t_parametrosfilial.asstring;
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
///  if MessageDlg('Gera DI de Admissão Temporária e Consumo Separadamente?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
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
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando adicoes de admissao
        q_geraadicoes.params[0].asstring := 'ADM';
        q_geraadicoes.params[1].asstring := '5';
        q_geraadicoes.params[2].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geraadicoes.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando detalhes das mercadorias das adicoes de admissao
        q_geradet.params[0].asstring := 'ADM';
        q_geradet.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_geradet.params[2].asstring := '5';
        q_geradet.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando acrescimos valoracao das adicoes de admissao
        q_acresval.params[0].asstring := 'ADM';
        q_acresval.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_acresval.params[2].asstring := '5';
        q_acresval.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando atos vinculados das adicoes de admissao
        q_atos.params[0].asstring := 'ADM';
        q_atos.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_atos.params[2].asstring := '5';
        q_atos.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando embalagens de carga das adicoes de admissao
        q_emb.params[0].asstring := 'ADM';
        q_emb.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_emb.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando armazens das adicoes de admissao
        q_car.params[0].asstring := 'ADM';
        q_car.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_car.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando destaques ncm das adicoes de admissao
        q_desncm.params[0].asstring := 'ADM';
        q_desncm.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_desncm.params[2].asstring := '5';
        q_desncm.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando documentos de instrução das adicoes de admissao
        q_doci.params[0].asstring := 'ADM';
        q_doci.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_doci.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando tributos das adicoes de admissao
        q_trib.params[0].asstring := 'ADM';
        q_trib.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_trib.params[2].asstring := '5';
        q_trib.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando pagamentos previstos das adicoes de admissao
        q_pagpre.params[0].asstring := 'ADM';
        q_pagpre.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagpre.params[2].asstring := '5';
        q_pagpre.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando pagamentos vinculados das adicoes de admissao
        q_pagvin.params[0].asstring := 'ADM';
        q_pagvin.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_pagvin.params[2].asstring := '5';
        q_pagvin.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///gerando processos di de admissao
        q_procdi.params[0].asstring := 'ADM';
        q_procdi.params[1].asstring := t_processosNR_DECL_IMP_MICRO.asstring;
        q_procdi.execsql;
        processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
        ///arruma adicoes de admissao
        t_arrumaadicoes.close;
        t_arrumaadicoes.open;
        t_arrumaadicoes.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM']);
        apri := 0;
        while ((not t_arrumaadicoes.eof) and
               ( t_arrumaadicoesNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM')) do begin
              processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,false);
              apri := apri+1;
              t_arrumaadicoes.edit;
              t_arrumaadicoesNR_OP_IMP_MICRO.asstring := copy('000'+inttostr(apri),length('000'+inttostr(apri))-2,3);
              t_arrumaadicoes.post;
              t_arrumaadicoes.next;
        end;

        ///acerta peso da di de admissao
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
           t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
           v_moedaigual := true;
           v_moeda      := t_faturasmoeda.asstring;
           v_totfat     := 0;
           v_totfatm    := 0;
           while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
                if v_moeda <> t_faturasmoeda.asstring then begin
                    v_moeda      := '790'; {moeda real}
                    v_moedaigual := false;
                end;
                t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                     if t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='5' then begin
                                 v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversao.asfloat);
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
           q_acertafretseg.close;
           q_acertafretseg.params[0].asstring := me_nossaref.text;
           q_acertafretseg.params[1].asstring := '5';
           q_acertafretseg.open;

           t_di.Edit;
           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_FRETE.asstring]) then begin
              T_diVL_TOT_FRT_PREPAID.asfloat     := (q_acertafretsegprepaid.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOT_FRT_COLLECT.asfloat     := (q_acertafretsegcollect.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_FRETE_TNAC_MNEG.asfloat     := (q_acertafretsegternac.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat);
           end;

           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
              T_diVL_TOT_SEGURO_MNEG.asfloat     := (q_acertafretsegseguro.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_SEG_MN.asfloat        := q_acertafretsegseguro.asfloat;
           end;
           t_di.post;

           t_processos.edit;
           if t_processosvalor_fob.asfloat=0 then t_processosvalor_fob.asfloat  := t_divl_total_mle_mn.asfloat;
           if t_processosvalor_cif.asfloat=0 then t_processosvalor_cif.asfloat  := (t_processosvalor_fob.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
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

          {grava ii}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ii.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_II_a_recolher.asfloat);
          t_pagtributos.post;
          {grava ipi}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ipi.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_IPI_a_recolher.asfloat);
          t_pagtributos.post;

          {grava sis}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'ADM';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_sis.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 30;
          for i := 0 to (apri) do begin
              if ((i >= 0 )  and (i <= 1 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
              if ((i >= 2 )  and (i <= 4 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
              if ((i >= 5 )  and (i <= 9 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
              if ((i >= 10)  and (i <= 21))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
              if ((i >= 22)  and (i <= 51))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
              if (i >= 52) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
          end;
          t_pagtributos.post;
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
////aqui

         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
         T_arrumaadicoesVL_MERC_VENDA_MN.asfloat        := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

///         T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;
///         T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

         T_arrumaadicoesvl_merc_loc_emb_mn.asfloat      := T_arrumaadicoesVL_MERC_VENDA_MN.asfloat;
         T_arrumaadicoesvl_base_calculo_mn.asfloat      := (T_arrumaadicoesVL_MERC_VENDA_MN.asfloat+T_arrumaadicoesVL_FRETE_MERC_MN.asfloat+T_arrumaadicoesVL_SEG_MERC_MN.asfloat);

///         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_arrumaadicoesCD_MD_FRETE_MERC.asstring]);
///         T_arrumaadicoesVL_FRETE_MERC_MN.asfloat        := (T_arrumaadicoesVL_FRETE_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;

///         t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,t_arrumaadicoesCD_MOEDA_SEG_MERC.asstring]);
///         T_arrumaadicoesVL_SEG_MERC_MN.asfloat          := (T_arrumaadicoesVL_SEG_MERC_MN.asfloat/t_taxaconvtaxa_conversao.asfloat)*t_taxaconvtaxa_conversaoc.asfloat;


///
              t_arrumaadicoes.post;
              t_arrumaadicoes.next;
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
           T_diTX_INFO_COMPL.asstring         := '';

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

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: DUILIO MAZUREK RODRIGUES.'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: MANUEL C. DE ALMEIDA MARQUES DA SILVA.'+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REPRESENTANTE LEGAL: VANDERLEI DE JESUS DA MAIA.'+chr(13)+chr(10)+'|'+chr(13)+chr(10)+'|';

    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. MS:'+me_nossaref.text+chr(13)+chr(10)+'|';
    T_diTX_INFO_COMPL.asstring    := T_diTX_INFO_COMPL.asstring+'REF. CLIENTE:'+T_processosCdigo_Cliente.asstring+chr(13)+chr(10)+'|';


           t_di.post;

           ///acerta valor da di de consumo
           {testar moedas das faturas}
           t_faturas.first;
           t_faturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text]);
           v_moedaigual := true;
           v_moeda      := t_faturasmoeda.asstring;
           v_totfat     := 0;
           v_totfatm    := 0;
           while (( not t_faturas.eof) and (t_faturasempresa.asstring=t_parametrosempresa.asstring) and (t_faturasfilial.asstring=t_parametrosfilial.asstring)and(t_faturasprocesso.asstring=me_nossaref.text)) do begin
                if v_moeda <> t_faturasmoeda.asstring then begin
                    v_moeda      := '790'; {moeda real}
                    v_moedaigual := false;
                end;
                t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_faturasmoeda.asstring]);

               {somar vmle}
               t_itensfaturas.first;
               t_itensfaturas.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,me_nossaref.text,t_faturascdigo.asstring]);
               while (not t_itensfaturas.eof) and (T_itensfaturasEmpresa.asstring = t_parametrosempresa.asstring) and (T_itensfaturasFilial.asstring = t_parametrosfilial.asstring)and(T_itensfaturasProcesso.asstring = me_nossaref.text)and(T_itensfaturasFatura.asstring = t_faturascdigo.asstring) do begin
                     if t_tributositem.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_nossaref.text,T_itensfaturasFatura.asstring,T_itensfaturassequencial.asstring]) then begin
                        while ((not t_tributositem.eof) and
                               (t_tributositemprocesso.asstring=me_nossaref.text) and
                               (t_tributositemfatura.asstring=t_itensfaturasfatura.asstring) and
                               (t_tributositemsequencial_item.asstring = t_itensfaturassequencial.asstring)) do begin
                              if t_tributositemregime_tributacao_ii.asstring='1' then begin
                                 v_totfatm := v_totfatm+((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat);
                                 v_totfat  := v_totfat+(((t_itensfaturasvmle.AsFloat/t_itensfaturasquantidade.asfloat)*t_tributositemquantidade.asfloat)*t_taxaconvtaxa_conversaoc.asfloat);
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
              T_diVL_TOT_FRT_PREPAID.asfloat     := (q_acertafretsegprepaid.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOT_FRT_COLLECT.asfloat     := (q_acertafretsegcollect.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_FRETE_TNAC_MNEG.asfloat     := (q_acertafretsegternac.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_FRETE_MN.asfloat      := (q_acertafretsegprepaid.asfloat+q_acertafretsegcollect.asfloat-q_acertafretsegternac.asfloat);
           end;

           if t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_diCD_MOEDA_SEGURO.asstring]) then begin
              T_diVL_TOT_SEGURO_MNEG.asfloat     := (q_acertafretsegseguro.asfloat/t_taxaconvtaxa_conversao.asfloat);
              T_diVL_TOTAL_SEG_MN.asfloat        := q_acertafretsegseguro.asfloat;
           end;
           t_di.post;

           t_processos.edit;
           if t_processosvalor_fobc.asfloat=0 then t_processosvalor_fobc.asfloat  := t_divl_total_mle_mn.asfloat;
           if t_processosvalor_cifc.asfloat=0 then t_processosvalor_cifc.asfloat  := (t_processosvalor_fobc.asfloat+T_diVL_TOTAL_FRETE_MN.asfloat+T_diVL_TOTAL_SEG_MN.asfloat);
           t_processos.Post;

        end;

           ////acerta tributos di de consumo
           t_tributo.first;
           if t_tributo.findkey([copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON']) then begin
              qii:=0;
              while ((not t_tributo.eof) and (t_tributoNR_DECL_IMP_MICRO.asstring = copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON')) do begin
                     t_arrumaadicoes.findkey([t_tributoNR_DECL_IMP_MICRO.asstring,t_tributoNR_OP_IMP_MICRO.asstring]);
                     t_taxaconv.findkey([v_empresa,v_filial,me_nossaref.text,T_arrumaadicoescd_moeda_negociada.asstring]);
                     t_tributo.edit;
                     if t_tributoCD_RECEITA_IMPOSTO.asstring = '0001' then begin
                     {
                     T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_II.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributosBase_Calc_II.asfloat*(Q_tributosAliq_NCM_II.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
                     }
                     T_tributoVL_BASE_CALC_ADVAL.asfloat := T_arrumaadicoesvl_base_calculo_mn.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat := ((T_tributoVL_BASE_CALC_ADVAL.asfloat*(T_tributoPC_ALIQ_NORM_ADVAL.asfloat/100)));
                     qii := T_tributoVL_CALC_IPT_ADVAL.asfloat;
                     end;

                     if t_tributoCD_RECEITA_IMPOSTO.asstring = '0002' then begin
                     {
                     T_tributoVL_BASE_CALC_ADVAL.asfloat  := (Q_tributossomadeBase_Calc_IpI.asfloat*t_taxaconvtaxa_conversao.asfloat);
                     T_tributoPC_ALIQ_NORM_ADVAL.asfloat  := Q_tributosAliq_NCM_IPI.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat   := ((Q_tributossomadeBase_Calc_IpI.asfloat*(Q_tributosAliq_NCM_IpI.asfloat/100))*t_taxaconvtaxa_conversao.asfloat);
                     }
                     T_tributoVL_BASE_CALC_ADVAL.asfloat := qii+T_arrumaadicoesvl_base_calculo_mn.asfloat;
                     T_tributoVL_CALC_IPT_ADVAL.asfloat := ((T_tributoVL_BASE_CALC_ADVAL.asfloat*(T_tributoPC_ALIQ_NORM_ADVAL.asfloat/100)));
                     end;

                     t_tributo.post;
                     t_tributo.next;
              end;
           end;

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

          {grava ii}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 0;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ii.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_II_a_recolher.asfloat);
          t_pagtributos.post;
          {grava ipi}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 1;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_ipi.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := (q_acertapagtribSomaDeValor_IPI_a_recolher.asfloat);
          t_pagtributos.post;

          {grava sis}
          t_pagtributos.append;
          T_pagtributosNR_DECL_IMP_MICRO.asstring   := copy(t_processosNR_DECL_IMP_MICRO.asstring,1,5)+'CON';
          T_pagtributosNR_SEQ_PGTO_TRIB.asinteger   := 2;
          T_pagtributosCD_RECEITA_PGTO.asstring     := q_acertapagtribcod_sis.asstring;
          T_pagtributosCD_BANCO_PGTO_TRIB.asstring  := t_contacorrente_regbanco.asstring;
          T_pagtributosNR_AGENC_PGTO_TRIB.asstring  := t_contacorrente_regagencia.asstring;
          T_pagtributosVL_TRIBUTO_PAGO.asfloat      := 30;
          for i := 0 to (apri) do begin
              if ((i >= 0 )  and (i <= 1 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+10;
              if ((i >= 2 )  and (i <= 4 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+8;
              if ((i >= 5 )  and (i <= 9 ))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+6;
              if ((i >= 10)  and (i <= 21))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+4;
              if ((i >= 22)  and (i <= 51))  then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+2;
              if (i >= 52) then  T_pagtributosVL_TRIBUTO_PAGO.asfloat := T_pagtributosVL_TRIBUTO_PAGO.asfloat+1;
          end;
          t_pagtributos.post;


     end;
   processamento('Aguarde... Atualizando SISCOMEX... Separando DIs',100,TRUE);

{   showmessage(v_usuario+', foram geradas as DIs:'+#13#10#13#10+
              'Ref: '+me_nossaref.text+' = Admissão Temporária e Consumo (12)'+#13#10+
              'Ref: '+me_nossaref.text+'-ADM'+' = Somente Admissão Temporária (05)'+#13#10+
              'Ref: '+me_nossaref.text+'-CON'+' = Somente Consumo (01)'+#13#10)
}
///   end;

end;

{
if (t_processostipo_declarao.asstring='12') then begin
showmessage(v_usuario+', foram calculados os valores:'+#13#10+
'Admissão'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cif.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fob.asfloat)+#13#10+
'Consumo'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cifc.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fobc.asfloat)+#13#10+#13#10+
'verificar da pasta "desembaraço"')
end
else begin
showmessage(v_usuario+', foram calculados os valores:'+#13#10+
'CIF R$ '+floattostr(t_processosvalor_cif.asfloat)+#13#10+
'FOB R$ '+floattostr(t_processosvalor_fob.asfloat)+#13#10+#13#10+
'verificar da pasta "desembaraço"')

end;

MessageDlg(v_usuario+' seu SISCOMEX foi Atualizado!', mtInformation,[mbOk], 0);
}
end;


end.
