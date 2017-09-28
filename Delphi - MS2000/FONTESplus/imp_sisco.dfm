object f_impsisco: Tf_impsisco
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'MS2000 - Importação de Dados via Opção Consulta/DI do SISCOMEX'
  ClientHeight = 399
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 469
    Height = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Declarações Importadas via Consulta/DI do SISCOMEX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 20
    Width = 469
    Height = 345
    Align = alTop
    DataSource = ds_di
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NR_DECLARACAO_IMP'
        Title.Caption = 'DI'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_IMPORTADOR'
        Title.Caption = 'Importador'
        Visible = True
      end>
  end
  object B_atualizams2000: TButton
    Left = 172
    Top = 372
    Width = 159
    Height = 25
    Caption = 'Atualiza MS2000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = B_atualizams2000Click
  end
  object MS2000: TDatabase
    AliasName = 'A_MS2000'
    Connected = True
    DatabaseName = 'DBN_MS2000'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 12
    Top = 268
  end
  object IMPORT: TDatabase
    AliasName = 'A_IMPORT'
    Connected = True
    DatabaseName = 'DBN_IMPORT'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 40
    Top = 268
  end
  object TABSISCO: TDatabase
    AliasName = 'A_TABSISCO'
    Connected = True
    DatabaseName = 'DBN_TABSISCO'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 68
    Top = 268
  end
  object CONS_IMP: TDatabase
    AliasName = 'A_CONS_IMP'
    Connected = True
    DatabaseName = 'DBN_CONSIMP'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 96
    Top = 268
  end
  object T_di: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_CONSIMP'
    IndexFieldNames = 'NR_DECLARACAO_IMP;NR_SEQ_RETIFICACAO'
    TableName = 'DECLARAÇÃO_IMPORTAÇÃO'
    Left = 12
    Top = 296
    object T_diNR_IDENT_USUARIO: TStringField
      FieldName = 'NR_IDENT_USUARIO'
      Size = 15
    end
    object T_diNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_diIN_DI_OK: TBooleanField
      FieldName = 'IN_DI_OK'
    end
    object T_diIN_FASE_RECUP: TBooleanField
      FieldName = 'IN_FASE_RECUP'
    end
    object T_diDADOS_RETIFICACAO: TStringField
      FieldName = 'DADOS_RETIFICACAO'
      Size = 25
    end
    object T_diIN_DI_CANCELADA: TStringField
      FieldName = 'IN_DI_CANCELADA'
      Size = 1
    end
    object T_diNR_SEQ_RETIFICACAO: TStringField
      FieldName = 'NR_SEQ_RETIFICACAO'
      Size = 2
    end
    object T_diDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object T_diHO_REGISTRO_DI: TStringField
      FieldName = 'HO_REGISTRO_DI'
      Size = 6
    end
    object T_diNR_CPF_RESPONS_REG: TStringField
      FieldName = 'NR_CPF_RESPONS_REG'
      Size = 11
    end
    object T_diQT_ADICAO_DI: TStringField
      FieldName = 'QT_ADICAO_DI'
      Size = 3
    end
    object T_diCD_TIPO_DECLARACAO: TStringField
      FieldName = 'CD_TIPO_DECLARACAO'
      Size = 2
    end
    object T_diNM_TIPO_DECLARACAO: TStringField
      FieldName = 'NM_TIPO_DECLARACAO'
      Size = 60
    end
    object T_diCD_TIPO_IMPORTADOR: TStringField
      FieldName = 'CD_TIPO_IMPORTADOR'
      Size = 1
    end
    object T_diNR_IMPORTADOR: TStringField
      FieldName = 'NR_IMPORTADOR'
      Size = 14
    end
    object T_diCD_PAIS_IMPORTADOR: TStringField
      FieldName = 'CD_PAIS_IMPORTADOR'
      Size = 3
    end
    object T_diNM_IMPORTADOR: TStringField
      FieldName = 'NM_IMPORTADOR'
      Size = 60
    end
    object T_diNR_TEL_IMPORTADOR: TStringField
      FieldName = 'NR_TEL_IMPORTADOR'
      Size = 15
    end
    object T_diED_LOGR_IMPORTADOR: TStringField
      FieldName = 'ED_LOGR_IMPORTADOR'
      Size = 40
    end
    object T_diED_NR_IMPORTADOR: TStringField
      FieldName = 'ED_NR_IMPORTADOR'
      Size = 6
    end
    object T_diED_COMPL_IMPO: TStringField
      FieldName = 'ED_COMPL_IMPO'
      Size = 21
    end
    object T_diED_BA_IMPORTADOR: TStringField
      FieldName = 'ED_BA_IMPORTADOR'
      Size = 25
    end
    object T_diED_MUN_IMPORTADOR: TStringField
      FieldName = 'ED_MUN_IMPORTADOR'
      Size = 25
    end
    object T_diED_UF_IMPORTADOR: TStringField
      FieldName = 'ED_UF_IMPORTADOR'
      Size = 2
    end
    object T_diED_CEP_IMPORTADOR: TStringField
      FieldName = 'ED_CEP_IMPORTADOR'
      Size = 8
    end
    object T_diCD_ATIV_ECON_IMPO: TStringField
      FieldName = 'CD_ATIV_ECON_IMPO'
      Size = 4
    end
    object T_diNM_ATIV_ECON_IMPO: TStringField
      FieldName = 'NM_ATIV_ECON_IMPO'
      Size = 60
    end
    object T_diCD_NAT_JURID_IMPO: TStringField
      FieldName = 'CD_NAT_JURID_IMPO'
      Size = 3
    end
    object T_diNM_NAT_JURID_IMPO: TStringField
      FieldName = 'NM_NAT_JURID_IMPO'
      Size = 60
    end
    object T_diNR_CPF_REPR_LEGAL: TStringField
      FieldName = 'NR_CPF_REPR_LEGAL'
      Size = 11
    end
    object T_diCD_MODALIDADE_DESP: TStringField
      FieldName = 'CD_MODALIDADE_DESP'
      Size = 1
    end
    object T_diIN_OPERACAO_FUNDAP: TBooleanField
      FieldName = 'IN_OPERACAO_FUNDAP'
    end
    object T_diCD_URF_ENTR_CARGA: TStringField
      FieldName = 'CD_URF_ENTR_CARGA'
      Size = 7
    end
    object T_diNM_URF_ENTR_CARGA: TStringField
      FieldName = 'NM_URF_ENTR_CARGA'
      Size = 60
    end
    object T_diCD_URF_DESPACHO: TStringField
      FieldName = 'CD_URF_DESPACHO'
      Size = 7
    end
    object T_diNM_URF_DESPACHO: TStringField
      FieldName = 'NM_URF_DESPACHO'
      Size = 60
    end
    object T_diCD_TIPO_CONSIG: TStringField
      FieldName = 'CD_TIPO_CONSIG'
      Size = 1
    end
    object T_diNR_CONSIGNATARIO: TStringField
      FieldName = 'NR_CONSIGNATARIO'
      Size = 14
    end
    object T_diNM_CONSIGNATARIO: TStringField
      FieldName = 'NM_CONSIGNATARIO'
      Size = 60
    end
    object T_diCD_PAIS_PROC_CARGA: TStringField
      FieldName = 'CD_PAIS_PROC_CARGA'
      Size = 3
    end
    object T_diCD_VIA_TRANSP_CARG: TStringField
      FieldName = 'CD_VIA_TRANSP_CARG'
      Size = 2
    end
    object T_diIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object T_diNR_VEICULO_TRANSP: TStringField
      FieldName = 'NR_VEICULO_TRANSP'
      Size = 15
    end
    object T_diNM_VEICULO_TRANSP: TStringField
      FieldName = 'NM_VEICULO_TRANSP'
      Size = 30
    end
    object T_diNM_TRANSPORTADOR: TStringField
      FieldName = 'NM_TRANSPORTADOR'
      Size = 60
    end
    object T_diCD_BANDEIRA_TRANSP: TStringField
      FieldName = 'CD_BANDEIRA_TRANSP'
      Size = 3
    end
    object T_diCD_TIPO_AG_CARGA: TStringField
      FieldName = 'CD_TIPO_AG_CARGA'
      Size = 1
    end
    object T_diNR_AGENTE_CARGA: TStringField
      FieldName = 'NR_AGENTE_CARGA'
      Size = 14
    end
    object T_diCD_TIPO_DCTO_CARGA: TStringField
      FieldName = 'CD_TIPO_DCTO_CARGA'
      Size = 2
    end
    object T_diNR_DCTO_CARGA: TStringField
      FieldName = 'NR_DCTO_CARGA'
      Size = 18
    end
    object T_diNR_DCTO_CARGA_MAST: TStringField
      FieldName = 'NR_DCTO_CARGA_MAST'
      Size = 18
    end
    object T_diNM_LOCAL_EMBARQUE: TStringField
      FieldName = 'NM_LOCAL_EMBARQUE'
      Size = 50
    end
    object T_diDT_EMBARQUE: TStringField
      FieldName = 'DT_EMBARQUE'
      Size = 8
    end
    object T_diCD_UTIL_DCTO_CARGA: TStringField
      FieldName = 'CD_UTIL_DCTO_CARGA'
      Size = 1
    end
    object T_diPB_CARGA: TCurrencyField
      FieldName = 'PB_CARGA'
    end
    object T_diPL_CARGA: TCurrencyField
      FieldName = 'PL_CARGA'
    end
    object T_diDT_CHEGADA_CARGA: TStringField
      FieldName = 'DT_CHEGADA_CARGA'
      Size = 8
    end
    object T_diCD_TIPO_MANIFESTO: TStringField
      FieldName = 'CD_TIPO_MANIFESTO'
      Size = 1
    end
    object T_diNR_MANIFESTO: TStringField
      FieldName = 'NR_MANIFESTO'
      Size = 15
    end
    object T_diCD_RECINTO_ALFAND: TStringField
      FieldName = 'CD_RECINTO_ALFAND'
      Size = 7
    end
    object T_diNM_RECINTO_ALFAND: TStringField
      FieldName = 'NM_RECINTO_ALFAND'
      Size = 60
    end
    object T_diMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 60
    end
    object T_diCD_SETOR_ARMAZENAM: TStringField
      FieldName = 'CD_SETOR_ARMAZENAM'
      Size = 3
    end
    object T_diCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object T_diNR_CONTA_PGTO_TRIB: TStringField
      FieldName = 'NR_CONTA_PGTO_TRIB'
      Size = 19
    end
  end
  object ds_di: TDataSource
    DataSet = T_di
    Left = 12
    Top = 324
  end
  object T_adicao: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_CONSIMP'
    IndexFieldNames = 'NR_DECLARACAO_IMP;NR_SEQ_RETIFICACAO;NR_OP_IMP'
    TableName = 'OP_ADIÇÃO_DE_IMPORTAÇÃO'
    Left = 40
    Top = 296
    object T_adicaoNR_IDENT_USUARIO: TStringField
      FieldName = 'NR_IDENT_USUARIO'
      Size = 15
    end
    object T_adicaoNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_adicaoNR_SEQ_RETIFICACAO: TStringField
      FieldName = 'NR_SEQ_RETIFICACAO'
      Size = 2
    end
    object T_adicaoNR_OP_IMP: TStringField
      FieldName = 'NR_OP_IMP'
      Size = 3
    end
    object T_adicaoNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
    object T_adicaoCD_URF_ENTR_MERC: TStringField
      FieldName = 'CD_URF_ENTR_MERC'
      Size = 7
    end
    object T_adicaoNM_URF_ENTR_MERC: TStringField
      FieldName = 'NM_URF_ENTR_MERC'
      Size = 60
    end
    object T_adicaoCD_VIA_TRANSPORTE: TStringField
      FieldName = 'CD_VIA_TRANSPORTE'
      Size = 2
    end
    object T_adicaoIN_MULTIMODAL: TStringField
      FieldName = 'IN_MULTIMODAL'
      Size = 1
    end
    object T_adicaoNM_FORN_ESTR: TStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object T_adicaoED_LOGR_FORN_ESTR: TStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object T_adicaoED_NR_FORN_ESTR: TStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object T_adicaoED_COMPL_FORN_ESTR: TStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object T_adicaoED_ESTAD_FORN_ESTR: TStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object T_adicaoED_CIDAD_FORN_ESTR: TStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object T_adicaoCD_PAIS_AQUIS_MERC: TStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object T_adicaoCD_MERCADORIA_NCM: TStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object T_adicaoNM_MERCADORIA_NCM: TStringField
      FieldName = 'NM_MERCADORIA_NCM'
      Size = 60
    end
    object T_adicaoCD_PAIS_PROC_MERC: TStringField
      FieldName = 'CD_PAIS_PROC_MERC'
      Size = 3
    end
    object T_adicaoCD_AUSENCIA_FABRIC: TStringField
      FieldName = 'CD_AUSENCIA_FABRIC'
      Size = 1
    end
    object T_adicaoNM_FABRICANTE_MERC: TStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object T_adicaoED_LOGR_FABRIC: TStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object T_adicaoED_NR_FABRIC: TStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object T_adicaoED_COMPL_FABRIC: TStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object T_adicaoED_ESTADO_FABRIC: TStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object T_adicaoED_CIDAD_FABRIC: TStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
    object T_adicaoCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object T_adicaoCD_MERC_NBM_SH: TStringField
      FieldName = 'CD_MERC_NBM_SH'
      Size = 10
    end
    object T_adicaoNM_MERC_NBM_SH: TStringField
      FieldName = 'NM_MERC_NBM_SH'
      Size = 60
    end
    object T_adicaoCD_MERC_NALADI_NCC: TStringField
      FieldName = 'CD_MERC_NALADI_NCC'
      Size = 7
    end
    object T_adicaoNM_MERC_NALADI_NCC: TStringField
      FieldName = 'NM_MERC_NALADI_NCC'
      Size = 60
    end
    object T_adicaoCD_MERC_NALADI_SH: TStringField
      FieldName = 'CD_MERC_NALADI_SH'
      Size = 8
    end
    object T_adicaoNM_MERC_NALADI_SH: TStringField
      FieldName = 'NM_MERC_NALADI_SH'
      Size = 60
    end
    object T_adicaoPL_MERCADORIA: TFloatField
      FieldName = 'PL_MERCADORIA'
    end
    object T_adicaoQT_UN_ESTATISTICA: TFloatField
      FieldName = 'QT_UN_ESTATISTICA'
    end
    object T_adicaoNM_UN_ESTATISTICA: TStringField
      FieldName = 'NM_UN_ESTATISTICA'
      Size = 60
    end
    object T_adicaoCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object T_adicaoNM_APLICACAO_MERC: TStringField
      FieldName = 'NM_APLICACAO_MERC'
      Size = 60
    end
    object T_adicaoVL_MERC_EMB_MN: TCurrencyField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object T_adicaoCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object T_adicaoVL_MERC_EMB_DOLAR: TCurrencyField
      FieldName = 'VL_MERC_EMB_DOLAR'
    end
    object T_adicaoVL_MERC_DESC_MN: TCurrencyField
      FieldName = 'VL_MERC_DESC_MN'
    end
    object T_adicaoVL_MERC_DESC_DOLAR: TCurrencyField
      FieldName = 'VL_MERC_DESC_DOLAR'
    end
    object T_adicaoCD_INCOTERMS_VENDA: TStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object T_adicaoNM_LOC_COND_VENDA: TStringField
      FieldName = 'NM_LOC_COND_VENDA'
      Size = 60
    end
    object T_adicaoVL_MERC_COND_VENDA: TCurrencyField
      FieldName = 'VL_MERC_COND_VENDA'
    end
    object T_adicaoVL_MERC_VENDA_MN: TCurrencyField
      FieldName = 'VL_MERC_VENDA_MN'
    end
    object T_adicaoVL_MERC_DOLAR: TCurrencyField
      FieldName = 'VL_MERC_DOLAR'
    end
    object T_adicaoVL_FRETE_MERC_MNEG: TCurrencyField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object T_adicaoCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object T_adicaoVL_FRETE_MERC_MN: TCurrencyField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object T_adicaoVL_FRT_MERC_DOLAR: TCurrencyField
      FieldName = 'VL_FRT_MERC_DOLAR'
    end
    object T_adicaoVL_SEG_MERC_MNEG: TCurrencyField
      FieldName = 'VL_SEG_MERC_MNEG'
    end
    object T_adicaoCD_MOEDA_SEG_MERC: TStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object T_adicaoVL_SEG_MERC_DOLAR: TCurrencyField
      FieldName = 'VL_SEG_MERC_DOLAR'
    end
    object T_adicaoVL_SEG_MERC_MN: TCurrencyField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object T_adicaoVL_DESPESAS_MNEG: TCurrencyField
      FieldName = 'VL_DESPESAS_MNEG'
    end
    object T_adicaoCD_MOEDA_DESPESAS: TStringField
      FieldName = 'CD_MOEDA_DESPESAS'
      Size = 3
    end
    object T_adicaoVL_DESPESAS_MN: TCurrencyField
      FieldName = 'VL_DESPESAS_MN'
    end
    object T_adicaoVL_DESPESAS_DOLAR: TCurrencyField
      FieldName = 'VL_DESPESAS_DOLAR'
    end
    object T_adicaoCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object T_adicaoNM_METOD_VALORACAO: TStringField
      FieldName = 'NM_METOD_VALORACAO'
      Size = 60
    end
    object T_adicaoCD_VINC_IMPO_EXPO: TStringField
      FieldName = 'CD_VINC_IMPO_EXPO'
      Size = 1
    end
    object T_adicaoCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object T_adicaoNM_TIPO_ACORDO_TAR: TStringField
      FieldName = 'NM_TIPO_ACORDO_TAR'
      Size = 60
    end
    object T_adicaoCD_ACORDO_ALADI: TStringField
      FieldName = 'CD_ACORDO_ALADI'
      Size = 3
    end
    object T_adicaoNM_ACORDO_ALADI: TStringField
      FieldName = 'NM_ACORDO_ALADI'
      Size = 60
    end
    object T_adicaoCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object T_adicaoNM_REGIME_TRIBUTAR: TStringField
      FieldName = 'NM_REGIME_TRIBUTAR'
      Size = 60
    end
    object T_adicaoCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object T_adicaoNM_FUND_LEG_REGIME: TStringField
      FieldName = 'NM_FUND_LEG_REGIME'
      Size = 60
    end
    object T_adicaoCD_MOTIVO_ADM_TEMP: TStringField
      FieldName = 'CD_MOTIVO_ADM_TEMP'
      Size = 2
    end
    object T_adicaoNR_DCTO_REDUCAO: TStringField
      FieldName = 'NR_DCTO_REDUCAO'
      Size = 8
    end
    object T_adicaoPC_COEF_REDUC_II: TCurrencyField
      FieldName = 'PC_COEF_REDUC_II'
    end
    object T_adicaoVL_CALC_DCR_DOLAR: TCurrencyField
      FieldName = 'VL_CALC_DCR_DOLAR'
    end
    object T_adicaoVL_II_CALC_DCR_MN: TCurrencyField
      FieldName = 'VL_II_CALC_DCR_MN'
    end
    object T_adicaoVL_II_DEVIDO_ZFM: TCurrencyField
      FieldName = 'VL_II_DEVIDO_ZFM'
    end
    object T_adicaoVL_II_A_REC_ZFM: TCurrencyField
      FieldName = 'VL_II_A_REC_ZFM'
    end
    object T_adicaoCD_COBERT_CAMBIAL: TStringField
      FieldName = 'CD_COBERT_CAMBIAL'
      Size = 1
    end
    object T_adicaoNM_COBERT_CAMBIAL: TStringField
      FieldName = 'NM_COBERT_CAMBIAL'
      Size = 120
    end
    object T_adicaoCD_MODALIDADE_PGTO: TStringField
      FieldName = 'CD_MODALIDADE_PGTO'
      Size = 2
    end
    object T_adicaoNM_MODALIDADE_PGTO: TStringField
      FieldName = 'NM_MODALIDADE_PGTO'
      Size = 60
    end
    object T_adicaoCD_ORGAO_FIN_INTER: TStringField
      FieldName = 'CD_ORGAO_FIN_INTER'
      Size = 2
    end
    object T_adicaoNM_ORGAO_FIN_INTER: TStringField
      FieldName = 'NM_ORGAO_FIN_INTER'
      Size = 60
    end
    object T_adicaoCD_MOTIVO_SEM_COB: TStringField
      FieldName = 'CD_MOTIVO_SEM_COB'
      Size = 2
    end
    object T_adicaoNM_MOTIVO_SEM_COB: TStringField
      FieldName = 'NM_MOTIVO_SEM_COB'
      Size = 120
    end
    object T_adicaoQT_PARC_FINANC_360: TStringField
      FieldName = 'QT_PARC_FINANC_360'
      Size = 3
    end
    object T_adicaoCD_PERIOD_PGTO_360: TStringField
      FieldName = 'CD_PERIOD_PGTO_360'
      Size = 1
    end
    object T_adicaoQT_PERIOD_PGTO_360: TStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object T_adicaoVL_TOT_FINANC_360: TCurrencyField
      FieldName = 'VL_TOT_FINANC_360'
    end
    object T_adicaoPC_TAXA_JUROS: TCurrencyField
      FieldName = 'PC_TAXA_JUROS'
    end
    object T_adicaoCD_TAXA_JUROS: TStringField
      FieldName = 'CD_TAXA_JUROS'
      Size = 7
    end
    object T_adicaoNM_TAXA_JUROS: TStringField
      FieldName = 'NM_TAXA_JUROS'
      Size = 60
    end
    object T_adicaoVL_FINANC_SUP_360: TCurrencyField
      FieldName = 'VL_FINANC_SUP_360'
    end
    object T_adicaoIN_JUROS_ATE_360: TStringField
      FieldName = 'IN_JUROS_ATE_360'
      Size = 1
    end
    object T_adicaoIN_PGTO_VARIAV_360: TStringField
      FieldName = 'IN_PGTO_VARIAV_360'
      Size = 1
    end
    object T_adicaoNR_ROF: TStringField
      FieldName = 'NR_ROF'
      Size = 8
    end
    object T_adicaoPC_COMISSAO_AG_IMP: TCurrencyField
      FieldName = 'PC_COMISSAO_AG_IMP'
    end
    object T_adicaoVL_COMISSAO_AG_IMP: TCurrencyField
      FieldName = 'VL_COMISSAO_AG_IMP'
    end
    object T_adicaoCD_TIPO_AGENTE_IMP: TStringField
      FieldName = 'CD_TIPO_AGENTE_IMP'
      Size = 1
    end
    object T_adicaoNR_AGENTE_IMP: TStringField
      FieldName = 'NR_AGENTE_IMP'
      Size = 14
    end
    object T_adicaoCD_BANC_AGENTE_IMP: TStringField
      FieldName = 'CD_BANC_AGENTE_IMP'
      Size = 5
    end
    object T_adicaoCD_AGENC_AGENT_IMP: TStringField
      FieldName = 'CD_AGENC_AGENT_IMP'
      Size = 4
    end
    object T_adicaoIN_BEM_ENCOMENDA: TStringField
      FieldName = 'IN_BEM_ENCOMENDA'
      Size = 1
    end
    object T_adicaoIN_MATERIAL_USADO: TStringField
      FieldName = 'IN_MATERIAL_USADO'
      Size = 1
    end
    object T_adicaoVL_TOT_DEDUCAO_MN: TCurrencyField
      FieldName = 'VL_TOT_DEDUCAO_MN'
    end
    object T_adicaoVL_TOT_ACRESC_MN: TCurrencyField
      FieldName = 'VL_TOT_ACRESC_MN'
    end
    object T_adicaoTX_COMPL_VL_ADUAN: TStringField
      FieldName = 'TX_COMPL_VL_ADUAN'
      Size = 250
    end
  end
  object ds_adicao: TDataSource
    DataSet = T_adicao
    Left = 40
    Top = 324
  end
  object T_detalhe: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_CONSIMP'
    IndexFieldNames = 'NR_DECLARACAO_IMP;NR_OP_IMP;NR_SEQ_DETALHE'
    TableName = 'OP_ADIÇÃO_DETALHE_MERCADORIA'
    Left = 68
    Top = 296
    object T_detalheNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_detalheNR_OP_IMP: TStringField
      FieldName = 'NR_OP_IMP'
      Size = 3
    end
    object T_detalheNR_SEQ_DETALHE: TSmallintField
      FieldName = 'NR_SEQ_DETALHE'
    end
    object T_detalheNR_SEQ_PRODUTO: TStringField
      FieldName = 'NR_SEQ_PRODUTO'
      Size = 2
    end
    object T_detalheQT_MERC_UN_COMERC: TFloatField
      FieldName = 'QT_MERC_UN_COMERC'
    end
    object T_detalheNM_UN_MEDID_COMERC: TStringField
      FieldName = 'NM_UN_MEDID_COMERC'
    end
    object T_detalheVL_UNID_COND_VENDA: TFloatField
      FieldName = 'VL_UNID_COND_VENDA'
    end
    object T_detalheVL_UNID_LOC_EMB: TCurrencyField
      FieldName = 'VL_UNID_LOC_EMB'
    end
    object T_detalheTX_DESC_DET_MERC: TMemoField
      FieldName = 'TX_DESC_DET_MERC'
      BlobType = ftMemo
    end
  end
  object ds_detalhe: TDataSource
    DataSet = T_detalhe
    Left = 68
    Top = 324
  end
  object T_despacho: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_CONSIMP'
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    TableName = 'DECLARAÇÃO_DESPACHO'
    Left = 96
    Top = 296
    object T_despachoNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_despachoDT_RECEPCAO: TStringField
      FieldName = 'DT_RECEPCAO'
      Size = 8
    end
    object T_despachoDT_DESEMBARACO: TStringField
      FieldName = 'DT_DESEMBARACO'
      Size = 8
    end
  end
  object ds_despacho: TDataSource
    DataSet = T_despacho
    Left = 96
    Top = 324
  end
  object T_processos: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    TableName = 'Processos'
    Left = 176
    Top = 296
    object T_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_processosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_processosCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 8
    end
    object T_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object T_processosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_processosCdigo_Cliente: TStringField
      FieldName = 'Código_Cliente'
      Size = 15
    end
    object T_processosTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object T_processosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object T_processosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object T_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object T_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object T_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object T_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object T_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object T_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object T_processosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object T_processosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object T_processosStatus: TStringField
      FieldName = 'Status'
      Size = 2
    end
    object T_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object T_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object T_processosIN_MOEDA_UNICA: TBooleanField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object T_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object T_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object T_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object T_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object T_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object T_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object T_processosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object T_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object T_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object T_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object T_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object T_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 25
    end
    object T_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object T_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object T_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 25
    end
    object T_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object T_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 25
    end
    object T_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object T_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 25
    end
    object T_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 14
    end
    object T_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 50
    end
  end
  object ds_processos: TDataSource
    DataSet = T_processos
    Left = 176
    Top = 324
  end
  object T_conhecimento: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Conhecimento_Processo'
    Left = 204
    Top = 296
    object T_conhecimentoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_conhecimentoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_conhecimentoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_conhecimentoVia: TStringField
      FieldName = 'Via'
      Size = 2
    end
    object T_conhecimentoMultimodal: TBooleanField
      FieldName = 'Multimodal'
    end
    object T_conhecimentoPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object T_conhecimentoLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object T_conhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object T_conhecimentoTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object T_conhecimentoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object T_conhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object T_conhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object T_conhecimentoLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object T_conhecimentoData: TDateTimeField
      FieldName = 'Data'
    end
    object T_conhecimentoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object T_conhecimentoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object T_conhecimentoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object T_conhecimentoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 25
    end
    object T_conhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object T_conhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object T_conhecimentoAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object T_conhecimentoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object T_conhecimentoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object T_conhecimentoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object T_conhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object T_conhecimentoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object T_conhecimentoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object T_conhecimentoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object T_conhecimentoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object T_conhecimentoOperacao_FUNDAP: TBooleanField
      FieldName = 'Operacao_FUNDAP'
    end
    object T_conhecimentoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object T_conhecimentoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object T_conhecimentoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object T_conhecimentoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object T_conhecimentoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object T_conhecimentoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object T_conhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object T_conhecimentoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object T_conhecimentoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
  end
  object ds_conhecimento: TDataSource
    DataSet = T_conhecimento
    Left = 204
    Top = 324
  end
  object T_parametros: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 148
    Top = 296
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object T_parametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 148
    Top = 324
  end
  object T_faturas: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Processo;Código'
    TableName = 'Faturas'
    Left = 232
    Top = 296
    object T_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_faturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_faturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_faturasCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 15
    end
    object T_faturasExportador: TStringField
      FieldName = 'Exportador'
      Size = 4
    end
    object T_faturasIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object T_faturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      Size = 1
    end
    object T_faturasCondio: TStringField
      FieldName = 'Condição'
      Size = 50
    end
    object T_faturasValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object T_faturasPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object T_faturasPesoTotal_Acertado: TFloatField
      FieldName = 'Peso Total_Acertado'
    end
    object T_faturasAcrescimos_Reducoes: TBooleanField
      FieldName = 'Acrescimos_Reducoes'
    end
    object T_faturasMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_faturasCoberturaCambial: TStringField
      FieldName = 'Cobertura Cambial'
      Size = 1
    end
    object T_faturasMotivoSemCobertura: TStringField
      FieldName = 'Motivo Sem Cobertura'
      Size = 2
    end
    object T_faturasModalidadedePagamento: TStringField
      FieldName = 'Modalidade de Pagamento'
      Size = 2
    end
    object T_faturasInstituicaoFinanciadora: TStringField
      FieldName = 'Instituicao Financiadora'
      Size = 2
    end
    object T_faturasTipoParcela: TStringField
      FieldName = 'Tipo Parcela'
      Size = 1
    end
    object T_faturasNumerodeparcelas: TStringField
      FieldName = 'Numero de parcelas'
      Size = 3
    end
    object T_faturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 3
    end
    object T_faturasValordasParcelas: TFloatField
      FieldName = 'Valor das Parcelas'
    end
    object T_faturasIndicadorPeriodicidade: TStringField
      FieldName = 'Indicador Periodicidade'
      Size = 1
    end
    object T_faturasTaxadeJuros: TBooleanField
      FieldName = 'Taxa de Juros'
    end
    object T_faturasCodigoTaxadeJuros: TStringField
      FieldName = 'Codigo Taxa de Juros'
      Size = 4
    end
    object T_faturasValorTaxadeJuros: TFloatField
      FieldName = 'Valor Taxa de Juros'
    end
    object T_faturasROFBACEN: TStringField
      FieldName = 'ROF BACEN'
      Size = 8
    end
    object T_faturasPercentualROF: TFloatField
      FieldName = 'Percentual ROF'
    end
  end
  object ds_faturas: TDataSource
    DataSet = T_faturas
    Left = 232
    Top = 324
  end
  object T_itensfaturas: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    TableName = 'ItensFaturas'
    Left = 260
    Top = 296
    object T_itensfaturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_itensfaturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_itensfaturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_itensfaturasFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object T_itensfaturasSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object T_itensfaturasPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object T_itensfaturasProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 25
    end
    object T_itensfaturasDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object T_itensfaturasFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object T_itensfaturasNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object T_itensfaturasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object T_itensfaturasUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object T_itensfaturasDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object T_itensfaturasNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object T_itensfaturasReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object T_itensfaturasNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_itensfaturasPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object T_itensfaturasQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_itensfaturasValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object T_itensfaturasValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object T_itensfaturasPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object T_itensfaturasPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object T_itensfaturasPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object T_itensfaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object T_itensfaturasSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object T_itensfaturasRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object T_itensfaturasRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object T_itensfaturasRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object T_itensfaturasRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object T_itensfaturasRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object T_itensfaturasRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object T_itensfaturasRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object T_itensfaturasRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object T_itensfaturasRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object T_itensfaturasRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object T_itensfaturasRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object T_itensfaturasRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object T_itensfaturasRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object T_itensfaturasRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object T_itensfaturasRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object T_itensfaturasRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object T_itensfaturasRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object T_itensfaturasRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object T_itensfaturasRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object T_itensfaturasRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object T_itensfaturasValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object T_itensfaturasValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object T_itensfaturasVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object T_itensfaturasBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object T_itensfaturasAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object T_itensfaturasCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object T_itensfaturasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object T_itensfaturasFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object T_itensfaturasFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
  end
  object ds_itensfaturas: TDataSource
    DataSet = T_itensfaturas
    Left = 260
    Top = 324
  end
  object T_tributacao: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial_Item;Sequencial'
    TableName = 'Tributacao_Item_Fatura'
    Left = 288
    Top = 296
    object T_tributacaoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_tributacaoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_tributacaoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_tributacaoFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object T_tributacaoSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      Required = True
      Size = 4
    end
    object T_tributacaoSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object T_tributacaoCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
    object T_tributacaoAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
    end
    object T_tributacaoMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      Size = 2
    end
    object T_tributacaoCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object T_tributacaoCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object T_tributacaoIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object T_tributacaoIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object T_tributacaoCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object T_tributacaoACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      Size = 3
    end
    object T_tributacaoNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      Size = 5
    end
    object T_tributacaoALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object T_tributacaoRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object T_tributacaoAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object T_tributacaoValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object T_tributacaoValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object T_tributacaoFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Size = 2
    end
    object T_tributacaoNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object T_tributacaoRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object T_tributacaoBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object T_tributacaoAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object T_tributacaoValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object T_tributacaoValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object T_tributacaoNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Size = 5
    end
    object T_tributacaoPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object T_tributacaoPercentual_EX: TFloatField
      FieldName = 'Percentual_EX'
    end
    object T_tributacaoPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object T_tributacaoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_tributacaoAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object T_tributacaoSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object T_tributacaoDDE: TStringField
      FieldName = 'DDE'
      Size = 15
    end
    object T_tributacaoRE: TStringField
      FieldName = 'RE'
      Size = 15
    end
  end
  object ds_tributacao: TDataSource
    DataSet = T_tributacao
    Left = 288
    Top = 324
  end
  object T_numerador: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Numerador_Importacao_dados'
    Left = 316
    Top = 296
    object T_numeradorEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_numeradorFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object T_numeradorNumerador_Processos: TSmallintField
      FieldName = 'Numerador_Processos'
    end
  end
  object ds_numerador: TDataSource
    DataSet = T_numerador
    Left = 316
    Top = 324
  end
  object T_importadores: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Importadores'
    Left = 344
    Top = 296
    object T_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_importadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_importadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_importadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_importadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_importadoresTipoImportador: TStringField
      FieldName = 'Tipo Importador'
      Size = 1
    end
    object T_importadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_importadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_importadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_importadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_importadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_importadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
    object T_importadoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object T_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object T_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
  end
  object ds_importadores: TDataSource
    DataSet = T_importadores
    Left = 344
    Top = 324
  end
  object T_exportadores: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Exportadores'
    Left = 372
    Top = 296
    object T_exportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_exportadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_exportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_exportadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_exportadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_exportadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_exportadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_exportadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_exportadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_exportadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_exportadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_exportadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_exportadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_exportadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_exportadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object ds_exportadores: TDataSource
    DataSet = T_exportadores
    Left = 372
    Top = 324
  end
  object T_fabricantes: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Fabricantes / Produtores'
    Left = 400
    Top = 296
    object T_fabricantesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_fabricantesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_fabricantesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_fabricantesRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_fabricantesPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_fabricantesCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_fabricantesEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_fabricantesNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_fabricantesComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_fabricantesBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_fabricantesCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_fabricantesCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_fabricantesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_fabricantesEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_fabricantesInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object ds_fabricantes: TDataSource
    DataSet = T_fabricantes
    Left = 400
    Top = 324
  end
  object T_transportadores: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_MS2000'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Transportadores'
    Left = 428
    Top = 296
    object T_transportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_transportadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_transportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_transportadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_transportadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_transportadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_transportadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_transportadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_transportadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_transportadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_transportadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_transportadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_transportadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_transportadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_transportadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object ds_transportadores: TDataSource
    DataSet = T_transportadores
    Left = 428
    Top = 324
  end
  object T_valores: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBN_CONSIMP'
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    TableName = 'DECLARAÇÃO_VALORES_TOTAIS'
    Left = 124
    Top = 296
    object T_valoresNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_valoresVL_TOT_FRT_PREPAID: TCurrencyField
      FieldName = 'VL_TOT_FRT_PREPAID'
    end
    object T_valoresVL_TOT_FRT_COLLECT: TCurrencyField
      FieldName = 'VL_TOT_FRT_COLLECT'
    end
    object T_valoresVL_FRETE_TNAC_MNEG: TCurrencyField
      FieldName = 'VL_FRETE_TNAC_MNEG'
    end
    object T_valoresCD_MOEDA_FRETE: TStringField
      FieldName = 'CD_MOEDA_FRETE'
      Size = 3
    end
    object T_valoresVL_TOT_FRETE_DOLAR: TCurrencyField
      FieldName = 'VL_TOT_FRETE_DOLAR'
    end
    object T_valoresVL_TOTAL_FRETE_MN: TCurrencyField
      FieldName = 'VL_TOTAL_FRETE_MN'
    end
    object T_valoresVL_TOT_SEGURO_MNEG: TCurrencyField
      FieldName = 'VL_TOT_SEGURO_MNEG'
    end
    object T_valoresCD_MOEDA_SEGURO: TStringField
      FieldName = 'CD_MOEDA_SEGURO'
      Size = 3
    end
    object T_valoresVL_TOTAL_SEG_DOLAR: TCurrencyField
      FieldName = 'VL_TOTAL_SEG_DOLAR'
    end
    object T_valoresVL_TOTAL_SEG_MN: TCurrencyField
      FieldName = 'VL_TOTAL_SEG_MN'
    end
    object T_valoresVL_TOT_DESPS_MNEG: TCurrencyField
      FieldName = 'VL_TOT_DESPS_MNEG'
    end
    object T_valoresCD_MOEDA_DESPESAS: TStringField
      FieldName = 'CD_MOEDA_DESPESAS'
      Size = 3
    end
    object T_valoresVL_TOT_DESPS_MN: TCurrencyField
      FieldName = 'VL_TOT_DESPS_MN'
    end
    object T_valoresVL_TOT_DESPS_DOLAR: TCurrencyField
      FieldName = 'VL_TOT_DESPS_DOLAR'
    end
    object T_valoresVL_TOTAL_TRIB_SUSP: TCurrencyField
      FieldName = 'VL_TOTAL_TRIB_SUSP'
    end
    object T_valoresVL_TOTAL_MLE_DOLAR: TCurrencyField
      FieldName = 'VL_TOTAL_MLE_DOLAR'
    end
    object T_valoresVL_TOTAL_MLE_MN: TCurrencyField
      FieldName = 'VL_TOTAL_MLE_MN'
    end
    object T_valoresVL_TOTAL_MLD_DOLAR: TCurrencyField
      FieldName = 'VL_TOTAL_MLD_DOLAR'
    end
    object T_valoresVL_TOTAL_MLD_MN: TCurrencyField
      FieldName = 'VL_TOTAL_MLD_MN'
    end
    object T_valoresVL_TOTAL_II_SUSP: TCurrencyField
      FieldName = 'VL_TOTAL_II_SUSP'
    end
    object T_valoresVL_TOTAL_IPI_SUSP: TCurrencyField
      FieldName = 'VL_TOTAL_IPI_SUSP'
    end
    object T_valoresVL_TOTAL_DIR_SUSP: TCurrencyField
      FieldName = 'VL_TOTAL_DIR_SUSP'
    end
    object T_valoresVL_TOTAL_II_A_REC: TCurrencyField
      FieldName = 'VL_TOTAL_II_A_REC'
    end
    object T_valoresVL_TOTAL_IPI_A_REC: TCurrencyField
      FieldName = 'VL_TOTAL_IPI_A_REC'
    end
    object T_valoresVL_TOTAL_DIR_A_REC: TCurrencyField
      FieldName = 'VL_TOTAL_DIR_A_REC'
    end
    object T_valoresVL_TOT_TRIB_A_REC: TCurrencyField
      FieldName = 'VL_TOT_TRIB_A_REC'
    end
  end
  object ds_valores: TDataSource
    DataSet = T_valores
    Left = 124
    Top = 324
  end
end
