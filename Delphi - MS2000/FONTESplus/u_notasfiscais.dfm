object f_notasfiscais: Tf_notasfiscais
  Left = 17
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'MS2000 - Notas Fiscais'
  ClientHeight = 425
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 372
    Width = 77
    Height = 13
    Caption = 'Tipo Nota Fiscal'
  end
  object Label2: TLabel
    Left = 168
    Top = 373
    Width = 93
    Height = 13
    Caption = 'Próxima Nota Fiscal'
  end
  object Label3: TLabel
    Left = 292
    Top = 373
    Width = 88
    Height = 13
    Caption = 'Layout Nota Fiscal'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 33
    Align = alTop
    Color = clTeal
    TabOrder = 0
    object Label14: TLabel
      Left = 8
      Top = 12
      Width = 135
      Height = 13
      Caption = 'Digite o nº do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object me_nossaref: TMaskEdit
      Left = 148
      Top = 8
      Width = 77
      Height = 21
      TabOrder = 0
      OnExit = me_nossarefExit
      OnKeyPress = me_nossarefKeyPress
    end
    object Edit1: TEdit
      Left = 328
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 1
      Visible = False
    end
    object Button1: TButton
      Left = 456
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      Visible = False
      OnClick = Button1Click
    end
  end
  object dbg_itens: TDBGrid
    Left = 0
    Top = 33
    Width = 724
    Height = 324
    Align = alTop
    DataSource = ds_qitens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = dbg_itensExit
    Columns = <
      item
        Expanded = False
        FieldName = 'Exportador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Faturas.Código'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Incoterm'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adicao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Seq_Adicao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sequencial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtdtrib'
        Title.Caption = 'Quant.Trib.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Peso Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Peso_Unitario_Acertado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Peso Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Peso_Total_Acertado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo_Tributavel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Acrescimos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Deducoes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Embalagem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Frete_Interno_imp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Seguro_Interno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_outras_import'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_startup'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_jurosfin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_montagem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Frete_Interno_exp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_carga_exp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_outras_export'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_frete_fatura'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_seguro_fatura'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_carga_imp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Despesas_ate_FOB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Frete_prepaid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Frete_collect'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Frete_ternac'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rateio_Seguro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Aduaneiro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_mercadoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VMLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Base_Calc_II'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Acresc_reduc_Valaduan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Regime_Tributacao_II'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aliq_NCM_II'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_II_Devido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_II_a_recolher'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fundamento_Legal_II'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_Ato_Legal_II'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Regime_Tributacao_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Base_Calc_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aliq_NCM_IPI'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_IPI_Devido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_IPI_a_recolher'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_Ato_Legal_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Percentual_Reducao_II'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Percentual_EX'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Percentual_Reduca_IPI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'moeda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sequencial_item'
        Visible = True
      end>
  end
  object CB_TIPONF: TComboBox
    Left = 8
    Top = 387
    Width = 157
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnChange = CB_TIPONFChange
    OnKeyPress = CB_TIPONFKeyPress
    Items.Strings = (
      'ENTRADA'
      'TRANSFERÊNCIA'
      'SAÍDA')
  end
  object me_nf: TMaskEdit
    Left = 168
    Top = 387
    Width = 121
    Height = 21
    TabOrder = 3
    OnExit = me_nfExit
    OnKeyPress = me_nfKeyPress
  end
  object cb_layout: TComboBox
    Left = 292
    Top = 387
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    OnChange = cb_layoutChange
    OnKeyPress = cb_layoutKeyPress
    Items.Strings = (
      '1 - PADRÃO'
      '2 - SAI'
      '3 - RENAULT'
      '4 - KOYO')
  end
  object b_nota: TBitBtn
    Left = 488
    Top = 383
    Width = 173
    Height = 25
    Caption = 'Gera Notas Fiscais'
    Enabled = False
    TabOrder = 5
    OnClick = b_notaClick
  end
  object Panel2: TPanel
    Left = 25
    Top = 44
    Width = 685
    Height = 354
    TabOrder = 6
    Visible = False
    object Label18: TLabel
      Left = 5
      Top = 37
      Width = 65
      Height = 13
      Caption = 'Data Emissão'
      FocusControl = DBE_emissao
    end
    object Label19: TLabel
      Left = 150
      Top = 37
      Width = 50
      Height = 13
      Caption = 'Data Mov.'
      FocusControl = DBE_dtmov
    end
    object Label20: TLabel
      Left = 278
      Top = 37
      Width = 55
      Height = 13
      Caption = 'Hora Saída'
      FocusControl = DBE_hora
    end
    object Label4: TLabel
      Left = 262
      Top = 67
      Width = 108
      Height = 13
      Caption = 'Natureza de Operação'
    end
    object Label5: TLabel
      Left = 517
      Top = 67
      Width = 28
      Height = 13
      Caption = 'CFOP'
      FocusControl = DBE_cfop
    end
    object Label6: TLabel
      Left = 584
      Top = 67
      Width = 87
      Height = 13
      Caption = 'Inscrição Estadual'
      FocusControl = DBE_inscest1
    end
    object Label9: TLabel
      Left = 108
      Top = 113
      Width = 49
      Height = 13
      Caption = 'Dest/Rem'
      FocusControl = DBE_nome
    end
    object Label11: TLabel
      Left = 108
      Top = 133
      Width = 46
      Height = 13
      Caption = 'Endereço'
      FocusControl = DBE_endereco
    end
    object Label12: TLabel
      Left = 108
      Top = 153
      Width = 64
      Height = 13
      Caption = 'Bairro/Distrito'
      FocusControl = DBE_bairro
    end
    object Label7: TLabel
      Left = 108
      Top = 173
      Width = 45
      Height = 13
      Caption = 'Municipio'
      FocusControl = DBE_municipio
    end
    object Label16: TLabel
      Left = 336
      Top = 173
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBE_uf
    end
    object Label13: TLabel
      Left = 392
      Top = 153
      Width = 19
      Height = 13
      Caption = 'Cep'
      FocusControl = DBE_cep
    end
    object Label10: TLabel
      Left = 496
      Top = 109
      Width = 47
      Height = 13
      Caption = 'CNPJCPF'
      FocusControl = DBE_cnpj
    end
    object Label15: TLabel
      Left = 496
      Top = 133
      Width = 46
      Height = 13
      Caption = 'Fone/Fax'
      FocusControl = DBE_fone
    end
    object Label17: TLabel
      Left = 491
      Top = 153
      Width = 87
      Height = 13
      Caption = 'Inscrição Estadual'
      FocusControl = DBE_inscest2
    end
    object Label42: TLabel
      Left = 108
      Top = 231
      Width = 66
      Height = 13
      Caption = 'Transportador'
    end
    object Label43: TLabel
      Left = 293
      Top = 232
      Width = 24
      Height = 13
      Caption = 'Frete'
    end
    object Label44: TLabel
      Left = 329
      Top = 232
      Width = 27
      Height = 13
      Caption = 'Placa'
      FocusControl = DBE_placa
    end
    object Label45: TLabel
      Left = 397
      Top = 232
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBE_uftrans
    end
    object Label47: TLabel
      Left = 111
      Top = 199
      Width = 38
      Height = 13
      Caption = 'Especie'
      FocusControl = DBE_especie
    end
    object Label48: TLabel
      Left = 219
      Top = 199
      Width = 30
      Height = 13
      Caption = 'Marca'
      FocusControl = DBE_marca
    end
    object Label49: TLabel
      Left = 310
      Top = 199
      Width = 37
      Height = 13
      Caption = 'Número'
      FocusControl = DBE_numero
    end
    object Label8: TLabel
      Left = 402
      Top = 198
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit1
    end
    object DBE_emissao: TDBEdit
      Left = 74
      Top = 33
      Width = 70
      Height = 21
      DataField = 'DtEmissao'
      DataSource = ds_notasfiscais
      TabOrder = 0
    end
    object DBE_dtmov: TDBEdit
      Left = 201
      Top = 33
      Width = 71
      Height = 21
      DataField = 'Dtsaidaentrada'
      DataSource = ds_notasfiscais
      TabOrder = 1
    end
    object DBE_hora: TDBEdit
      Left = 336
      Top = 33
      Width = 70
      Height = 21
      DataField = 'Horasaida'
      DataSource = ds_notasfiscais
      TabOrder = 2
    end
    object DBL_NATOPER: TDBLookupComboBox
      Left = 252
      Top = 79
      Width = 265
      Height = 21
      DataField = 'NatOpe'
      DataSource = ds_notasfiscais
      KeyField = 'Descrição'
      ListField = 'Descrição;CFOP'
      ListSource = ds_natoper
      TabOrder = 3
      OnClick = DBL_NATOPERClick
      OnExit = DBL_NATOPERClick
    end
    object DBE_cfop: TDBEdit
      Left = 518
      Top = 78
      Width = 64
      Height = 21
      DataField = 'CFOP'
      DataSource = ds_notasfiscais
      TabOrder = 4
    end
    object DBE_inscest1: TDBEdit
      Left = 583
      Top = 78
      Width = 94
      Height = 21
      DataField = 'InscEstadual'
      DataSource = ds_notasfiscais
      TabOrder = 5
    end
    object DBE_da1: TDBEdit
      Left = 5
      Top = 85
      Width = 168
      Height = 21
      DataField = 'DA1'
      DataSource = ds_notasfiscais
      TabOrder = 6
    end
    object DBE_da2: TDBEdit
      Left = 5
      Top = 105
      Width = 99
      Height = 21
      DataField = 'DA2'
      DataSource = ds_notasfiscais
      TabOrder = 7
    end
    object DBE_da3: TDBEdit
      Left = 5
      Top = 125
      Width = 99
      Height = 21
      DataField = 'DA3'
      DataSource = ds_notasfiscais
      TabOrder = 8
    end
    object DBE_da4: TDBEdit
      Left = 5
      Top = 145
      Width = 99
      Height = 21
      DataField = 'DA4'
      DataSource = ds_notasfiscais
      TabOrder = 9
    end
    object DBE_da5: TDBEdit
      Left = 5
      Top = 165
      Width = 99
      Height = 21
      DataField = 'DA5'
      DataSource = ds_notasfiscais
      TabOrder = 10
    end
    object DBE_da6: TDBEdit
      Left = 5
      Top = 185
      Width = 99
      Height = 21
      DataField = 'DA6'
      DataSource = ds_notasfiscais
      TabOrder = 11
    end
    object DBE_da7: TDBEdit
      Left = 5
      Top = 205
      Width = 99
      Height = 21
      DataField = 'DA7'
      DataSource = ds_notasfiscais
      TabOrder = 12
    end
    object DBE_nome: TDBEdit
      Left = 176
      Top = 105
      Width = 304
      Height = 21
      DataField = 'Nomedestrem'
      DataSource = ds_notasfiscais
      TabOrder = 13
    end
    object DBE_endereco: TDBEdit
      Left = 176
      Top = 125
      Width = 304
      Height = 21
      DataField = 'Endereco'
      DataSource = ds_notasfiscais
      TabOrder = 14
    end
    object DBE_bairro: TDBEdit
      Left = 176
      Top = 145
      Width = 124
      Height = 21
      DataField = 'Bairrodistrito'
      DataSource = ds_notasfiscais
      TabOrder = 15
    end
    object DBE_municipio: TDBEdit
      Left = 176
      Top = 165
      Width = 154
      Height = 21
      DataField = 'Municipio'
      DataSource = ds_notasfiscais
      TabOrder = 16
    end
    object DBE_uf: TDBEdit
      Left = 352
      Top = 165
      Width = 21
      Height = 21
      DataField = 'UF'
      DataSource = ds_notasfiscais
      TabOrder = 17
    end
    object DBE_cep: TDBEdit
      Left = 416
      Top = 145
      Width = 64
      Height = 21
      DataField = 'Cep'
      DataSource = ds_notasfiscais
      TabOrder = 18
    end
    object DBE_cnpj: TDBEdit
      Left = 564
      Top = 105
      Width = 112
      Height = 21
      DataField = 'CNPJCPF'
      DataSource = ds_notasfiscais
      TabOrder = 19
    end
    object DBE_fone: TDBEdit
      Left = 552
      Top = 125
      Width = 124
      Height = 21
      DataField = 'FoneFax'
      DataSource = ds_notasfiscais
      TabOrder = 20
    end
    object DBE_inscest2: TDBEdit
      Left = 582
      Top = 145
      Width = 94
      Height = 21
      DataField = 'InscEstDestRem'
      DataSource = ds_notasfiscais
      TabOrder = 21
    end
    object DBE_placa: TDBEdit
      Left = 328
      Top = 245
      Width = 64
      Height = 21
      DataField = 'Placa'
      DataSource = ds_notasfiscais
      TabOrder = 22
    end
    object DBE_uftrans: TDBEdit
      Left = 396
      Top = 245
      Width = 21
      Height = 21
      DataField = 'UFVeiculo'
      DataSource = ds_notasfiscais
      TabOrder = 23
    end
    object DBE_especie: TDBEdit
      Left = 110
      Top = 211
      Width = 99
      Height = 21
      DataField = 'Especie'
      DataSource = ds_notasfiscais
      TabOrder = 24
    end
    object DBE_marca: TDBEdit
      Left = 217
      Top = 211
      Width = 84
      Height = 21
      DataField = 'Marca'
      DataSource = ds_notasfiscais
      TabOrder = 25
    end
    object DBE_numero: TDBEdit
      Left = 308
      Top = 211
      Width = 85
      Height = 21
      DataField = 'Numero'
      DataSource = ds_notasfiscais
      TabOrder = 26
    end
    object DBL_transportador: TDBLookupComboBox
      Left = 108
      Top = 245
      Width = 181
      Height = 21
      DataField = 'Transportador'
      DataSource = ds_notasfiscais
      KeyField = 'Codigo'
      ListField = 'Razão Social'
      ListSource = ds_transportadores
      TabOrder = 27
    end
    object DBListBox1: TDBListBox
      Left = 292
      Top = 245
      Width = 33
      Height = 20
      DataField = 'Frete'
      DataSource = ds_notasfiscais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      IntegralHeight = True
      ItemHeight = 16
      Items.Strings = (
        '2'
        '1')
      ParentFont = False
      TabOrder = 28
    end
    object Panel3: TPanel
      Left = 1
      Top = 326
      Width = 683
      Height = 27
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 29
      object B_grava: TBitBtn
        Left = 508
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Grava'
        TabOrder = 0
        OnClick = B_gravaClick
        Kind = bkOK
      end
      object B_fecha: TBitBtn
        Left = 589
        Top = 0
        Width = 75
        Height = 25
        Caption = 'Cancela'
        TabOrder = 1
        OnClick = B_fechaClick
        Kind = bkCancel
      end
    end
    object DBEdit1: TDBEdit
      Left = 400
      Top = 210
      Width = 85
      Height = 21
      DataField = 'Quantidade'
      DataSource = ds_notasfiscais
      TabOrder = 30
    end
  end
  object RichEdit1: TRichEdit
    Left = 480
    Top = 404
    Width = 185
    Height = 15
    Lines.Strings = (
      'RichEdit1')
    ScrollBars = ssBoth
    TabOrder = 7
    Visible = False
  end
  object T_parametros: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 324
    Top = 180
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
    Left = 324
    Top = 208
  end
  object T_processos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Processos'
    Left = 352
    Top = 180
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
    object T_processosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object T_processosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object T_processosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
  end
  object ds_processos: TDataSource
    DataSet = T_processos
    Left = 352
    Top = 208
  end
  object Q_itens: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Código, It' +
        'ensFaturas.Produto, ItensFaturas.Descricao_Produto, Faturas.Códi' +
        'go, Faturas.moeda, Faturas.Exportador, Tributacao_Item_Fatura.Ad' +
        'icao, Tributacao_Item_Fatura.quantidade as qtdtrib, Tributacao_I' +
        'tem_Fatura.Seq_Adicao, Faturas.Incoterm, Tributacao_Item_Fatura.' +
        'Sequencial, Tributacao_Item_Fatura.Sequencial_item, ItensFaturas' +
        '.NCM, ItensFaturas.Unidade, ItensFaturas.Quantidade, ItensFatura' +
        's.[Valor Unitário], ItensFaturas.[Valor Total], ItensFaturas.[Pe' +
        'so Unitário], ItensFaturas.Peso_Unitario_Acertado, ItensFaturas.' +
        '[Peso Total], ItensFaturas.Peso_Total_Acertado, ItensFaturas.Sal' +
        'do_Tributavel, ItensFaturas.Rateio_Acrescimos, ItensFaturas.Rate' +
        'io_Deducoes, ItensFaturas.Rateio_Embalagem, ItensFaturas.Rateio_' +
        'Frete_Interno_imp, ItensFaturas.Rateio_Seguro_Interno, ItensFatu' +
        'ras.Rateio_outras_import, ItensFaturas.Rateio_startup, ItensFatu' +
        'ras.Rateio_jurosfin, ItensFaturas.Rateio_montagem, ItensFaturas.' +
        'Rateio_Frete_Interno_exp, ItensFaturas.Rateio_carga_exp, ItensFa' +
        'turas.Rateio_outras_export, ItensFaturas.Rateio_frete_fatura, It' +
        'ensFaturas.Rateio_seguro_fatura, ItensFaturas.Rateio_carga_imp, ' +
        'ItensFaturas.Rateio_Despesas_ate_FOB, ItensFaturas.Rateio_Frete_' +
        'prepaid, ItensFaturas.Rateio_Frete_collect, ItensFaturas.Rateio_' +
        'Frete_ternac, ItensFaturas.Rateio_Seguro, ItensFaturas.Valor_Adu' +
        'aneiro, ItensFaturas.Valor_mercadoria, ItensFaturas.VMLE, ItensF' +
        'aturas.Base_Calc_II, ItensFaturas.Acresc_reduc_Valaduan, Tributa' +
        'cao_Item_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Ali' +
        'q_NCM_II, Tributacao_Item_Fatura.Valor_II_Devido, Tributacao_Ite' +
        'm_Fatura.Valor_II_a_recolher, Tributacao_Item_Fatura.Fundamento_' +
        'Legal_II, Tributacao_Item_Fatura.Numero_Ato_Legal_II, Tributacao' +
        '_Item_Fatura.Regime_Tributacao_IPI, Tributacao_Item_Fatura.Base_' +
        'Calc_IPI, Tributacao_Item_Fatura.Aliq_NCM_IPI, Tributacao_Item_F' +
        'atura.Valor_IPI_Devido, Tributacao_Item_Fatura.Valor_IPI_a_recol' +
        'her, Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributacao_Ite' +
        'm_Fatura.Percentual_Reducao_II, Tributacao_Item_Fatura.Percentua' +
        'l_EX, Tributacao_Item_Fatura.Percentual_Reduca_IPI'
      
        'FROM (Processos INNER JOIN Faturas ON (Processos.Código = Fatura' +
        's.Processo) AND (Processos.Filial = Faturas.Filial) AND (Process' +
        'os.Empresa = Faturas.Empresa)) INNER JOIN (ItensFaturas LEFT JOI' +
        'N Tributacao_Item_Fatura ON (ItensFaturas.Sequencial = Tributaca' +
        'o_Item_Fatura.Sequencial_Item) AND (ItensFaturas.Fatura = Tribut' +
        'acao_Item_Fatura.Fatura) AND (ItensFaturas.Processo = Tributacao' +
        '_Item_Fatura.Processo) AND (ItensFaturas.Filial = Tributacao_Ite' +
        'm_Fatura.Filial) AND (ItensFaturas.Empresa = Tributacao_Item_Fat' +
        'ura.Empresa)) ON (Faturas.Código = ItensFaturas.Fatura) AND (Fat' +
        'uras.Processo = ItensFaturas.Processo) AND (Faturas.Filial = Ite' +
        'nsFaturas.Filial) AND (Faturas.Empresa = ItensFaturas.Empresa)'
      
        'WHERE (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=:' +
        'qfilial) AND ((Processos.Código)=:qprocesso))'
      
        'ORDER BY Processos.Código, Tributacao_Item_Fatura.Adicao, val(Tr' +
        'ibutacao_Item_Fatura.Seq_Adicao), Faturas.Código, Faturas.Export' +
        'ador ;')
    Left = 380
    Top = 180
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00001110'
      end>
    object Q_itensEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object Q_itensFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object Q_itensProcessosCdigo: TStringField
      FieldName = 'Processos.Código'
      Size = 8
    end
    object Q_itensProduto: TStringField
      FieldName = 'Produto'
      Size = 25
    end
    object Q_itensDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object Q_itensFaturasCdigo: TStringField
      FieldName = 'Faturas.Código'
      Size = 15
    end
    object Q_itensmoeda: TStringField
      FieldName = 'moeda'
      Size = 3
    end
    object Q_itensExportador: TStringField
      FieldName = 'Exportador'
      Size = 4
    end
    object Q_itensAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object Q_itensqtdtrib: TFloatField
      FieldName = 'qtdtrib'
    end
    object Q_itensSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object Q_itensIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object Q_itensSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object Q_itensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object Q_itensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object Q_itensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object Q_itensValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object Q_itensValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object Q_itensPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object Q_itensPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object Q_itensPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object Q_itensPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object Q_itensSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object Q_itensRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object Q_itensRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object Q_itensRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object Q_itensRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object Q_itensRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object Q_itensRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object Q_itensRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object Q_itensRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object Q_itensRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object Q_itensRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object Q_itensRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object Q_itensRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object Q_itensRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object Q_itensRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object Q_itensRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object Q_itensRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object Q_itensRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object Q_itensRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object Q_itensRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object Q_itensRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object Q_itensValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object Q_itensValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object Q_itensVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object Q_itensBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object Q_itensAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object Q_itensRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object Q_itensAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object Q_itensValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object Q_itensValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object Q_itensFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Size = 2
    end
    object Q_itensNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object Q_itensRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object Q_itensBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object Q_itensAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object Q_itensValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object Q_itensValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object Q_itensNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Size = 5
    end
    object Q_itensPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object Q_itensPercentual_EX: TFloatField
      FieldName = 'Percentual_EX'
    end
    object Q_itensPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object Q_itensSequencial_item: TStringField
      FieldName = 'Sequencial_item'
      Size = 4
    end
  end
  object ds_qitens: TDataSource
    DataSet = Q_itens
    Left = 380
    Top = 208
  end
  object T_numnotas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo;Tipo'
    TableName = 'Numerador_Notas_Fiscais'
    Left = 408
    Top = 180
    object T_numnotasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_numnotasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_numnotasCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_numnotasTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object T_numnotasNumero: TStringField
      FieldName = 'Numero'
    end
  end
  object ds_numnotas: TDataSource
    DataSet = T_numnotas
    Left = 408
    Top = 208
  end
  object T_notasfiscais: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Processo;Tiponf;NFiscal'
    TableName = 'Notas_Fiscais'
    Left = 436
    Top = 180
    object T_notasfiscaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_notasfiscaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_notasfiscaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_notasfiscaisProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_notasfiscaisTiponf: TStringField
      FieldName = 'Tiponf'
      Required = True
      Size = 4
    end
    object T_notasfiscaisNFiscal: TStringField
      FieldName = 'NFiscal'
      Required = True
    end
    object T_notasfiscaisLayout: TStringField
      FieldName = 'Layout'
      Size = 4
    end
    object T_notasfiscaisNatOpe: TStringField
      FieldName = 'NatOpe'
      Size = 30
    end
    object T_notasfiscaisCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object T_notasfiscaisInscEstadual: TStringField
      FieldName = 'InscEstadual'
      Size = 15
    end
    object T_notasfiscaisDI: TStringField
      FieldName = 'DI'
      Size = 8
    end
    object T_notasfiscaisADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 3
    end
    object T_notasfiscaisNomedestrem: TStringField
      FieldName = 'Nomedestrem'
      Size = 50
    end
    object T_notasfiscaisCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 18
    end
    object T_notasfiscaisEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object T_notasfiscaisBairrodistrito: TStringField
      FieldName = 'Bairrodistrito'
    end
    object T_notasfiscaisCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object T_notasfiscaisMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 25
    end
    object T_notasfiscaisFoneFax: TStringField
      FieldName = 'FoneFax'
    end
    object T_notasfiscaisUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_notasfiscaisInscEstDestRem: TStringField
      FieldName = 'InscEstDestRem'
      Size = 15
    end
    object T_notasfiscaisDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object T_notasfiscaisDtsaidaentrada: TDateTimeField
      FieldName = 'Dtsaidaentrada'
    end
    object T_notasfiscaisHorasaida: TDateTimeField
      FieldName = 'Horasaida'
    end
    object T_notasfiscaisDuplicataNr: TStringField
      FieldName = 'DuplicataNr'
      Size = 10
    end
    object T_notasfiscaisVencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object T_notasfiscaisValor: TFloatField
      FieldName = 'Valor'
    end
    object T_notasfiscaisCondEspeciais: TStringField
      FieldName = 'CondEspeciais'
      Size = 50
    end
    object T_notasfiscaisDA1: TStringField
      FieldName = 'DA1'
      Size = 60
    end
    object T_notasfiscaisDA2: TStringField
      FieldName = 'DA2'
      Size = 60
    end
    object T_notasfiscaisDA3: TStringField
      FieldName = 'DA3'
      Size = 60
    end
    object T_notasfiscaisDA4: TStringField
      FieldName = 'DA4'
      Size = 60
    end
    object T_notasfiscaisDA5: TStringField
      FieldName = 'DA5'
      Size = 60
    end
    object T_notasfiscaisDA6: TStringField
      FieldName = 'DA6'
      Size = 60
    end
    object T_notasfiscaisDA7: TStringField
      FieldName = 'DA7'
      Size = 60
    end
    object T_notasfiscaisBaseCalcICMS: TFloatField
      FieldName = 'BaseCalcICMS'
    end
    object T_notasfiscaisValICMS: TFloatField
      FieldName = 'ValICMS'
    end
    object T_notasfiscaisBaseCalcICMSsubst: TFloatField
      FieldName = 'BaseCalcICMSsubst'
    end
    object T_notasfiscaisValICMSsubs: TFloatField
      FieldName = 'ValICMSsubs'
    end
    object T_notasfiscaisValtotprodutos: TFloatField
      FieldName = 'Valtotprodutos'
    end
    object T_notasfiscaisValfrete: TFloatField
      FieldName = 'Valfrete'
    end
    object T_notasfiscaisValseguro: TFloatField
      FieldName = 'Valseguro'
    end
    object T_notasfiscaisOutrasdesp: TFloatField
      FieldName = 'Outrasdesp'
    end
    object T_notasfiscaisValtotIPI: TFloatField
      FieldName = 'ValtotIPI'
    end
    object T_notasfiscaisVatotnota: TFloatField
      FieldName = 'Vatotnota'
    end
    object T_notasfiscaisTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object T_notasfiscaisFrete: TStringField
      FieldName = 'Frete'
      Size = 1
    end
    object T_notasfiscaisPlaca: TStringField
      FieldName = 'Placa'
      Size = 10
    end
    object T_notasfiscaisUFVeiculo: TStringField
      FieldName = 'UFVeiculo'
      Size = 2
    end
    object T_notasfiscaisQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_notasfiscaisEspecie: TStringField
      FieldName = 'Especie'
    end
    object T_notasfiscaisMarca: TStringField
      FieldName = 'Marca'
      Size = 10
    end
    object T_notasfiscaisNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object T_notasfiscaisPesoBruto: TFloatField
      FieldName = 'PesoBruto'
    end
    object T_notasfiscaisPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
    end
    object T_notasfiscaisIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object T_notasfiscaisTaxaConversao: TFloatField
      FieldName = 'TaxaConversao'
    end
  end
  object ds_notasfiscais: TDataSource
    DataSet = T_notasfiscais
    Left = 436
    Top = 208
  end
  object t_natoper: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Código'
    TableName = 'Natureza de Operação'
    Left = 464
    Top = 180
    object t_natoperCdigo: TStringField
      FieldName = 'Código'
      Size = 4
    end
    object t_natoperDescrio: TStringField
      FieldName = 'Descrição'
      Size = 30
    end
    object t_natoperCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
  end
  object ds_natoper: TDataSource
    DataSet = t_natoper
    Left = 464
    Top = 208
  end
  object T_transportadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Transportadores'
    Left = 492
    Top = 180
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
    Left = 492
    Top = 208
  end
  object T_importadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Importador'
    MasterSource = ds_processos
    TableName = 'Importadores'
    Left = 520
    Top = 181
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
    Left = 521
    Top = 209
  end
  object T_exportadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Exportadores'
    Left = 548
    Top = 180
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
    Left = 548
    Top = 208
  end
  object T_detalhes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Processo;Tiponf;NFiscal;Sequencial'
    TableName = 'Notas_Fiscais_Detalhes'
    Left = 577
    Top = 180
    object T_detalhesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_detalhesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_detalhesImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_detalhesProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_detalhesTiponf: TStringField
      FieldName = 'Tiponf'
      Required = True
      Size = 4
    end
    object T_detalhesNFiscal: TStringField
      FieldName = 'NFiscal'
      Required = True
    end
    object T_detalhesSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object T_detalhesCodproduto: TStringField
      FieldName = 'Codproduto'
      Size = 25
    end
    object T_detalhesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
    object T_detalhesClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 8
    end
    object T_detalhesST: TStringField
      FieldName = 'ST'
      Size = 4
    end
    object T_detalhesUnidade: TStringField
      FieldName = 'Unidade'
    end
    object T_detalhesQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_detalhesValorMercadoria: TFloatField
      FieldName = 'Valor Mercadoria'
    end
    object T_detalhesFreteUnitrio: TFloatField
      FieldName = 'Frete Unitário'
    end
    object T_detalhesSeguroUnitrio: TFloatField
      FieldName = 'Seguro Unitário'
    end
    object T_detalhesAcrescimoUnitrio: TFloatField
      FieldName = 'Acrescimo Unitário'
    end
    object T_detalhesDeduoUnitrio: TFloatField
      FieldName = 'Dedução Unitário'
    end
    object T_detalhesTributoUnitrio: TFloatField
      FieldName = 'Tributo Unitário'
    end
    object T_detalhesValorunitrio: TFloatField
      FieldName = 'Valor unitário'
    end
    object T_detalhesValortotal: TFloatField
      FieldName = 'Valor total'
    end
    object T_detalhesAliquotaICMS: TFloatField
      FieldName = 'AliquotaICMS'
    end
    object T_detalhesAliquotaIPI: TFloatField
      FieldName = 'AliquotaIPI'
    end
    object T_detalhesValIPI: TFloatField
      FieldName = 'ValIPI'
    end
  end
  object ds_detalhes: TDataSource
    DataSet = T_detalhes
    Left = 577
    Top = 208
  end
  object T_unidade: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_UNID_MEDIDA'
    Left = 605
    Top = 180
    object T_unidadeCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_unidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object ds_unidade: TDataSource
    DataSet = T_unidade
    Left = 605
    Top = 208
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 476
    Top = 352
  end
  object t_taxa: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Moeda'
    TableName = 'Processos_Taxas_Conversao'
    Left = 633
    Top = 184
    object t_taxaEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_taxaFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_taxaProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_taxaMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object t_taxaTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
  end
  object ds_taxa: TDataSource
    DataSet = t_taxa
    Left = 633
    Top = 208
  end
  object q_custos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Custos_Unitarios.Empresa, Custos_Unitarios.Filial, Custos' +
        '_Unitarios.Processo, Custos_Unitarios.Fatura, Custos_Unitarios.S' +
        'equencial, Sum(Custos_Unitarios.Valor) AS custos'
      'FROM Custos_Unitarios'
      
        'GROUP BY Custos_Unitarios.Empresa, Custos_Unitarios.Filial, Cust' +
        'os_Unitarios.Processo, Custos_Unitarios.Fatura, Custos_Unitarios' +
        '.Sequencial'
      
        'HAVING (((Custos_Unitarios.Empresa)=:qempresa) AND ((Custos_Unit' +
        'arios.Filial)=:qfilial) AND ((Custos_Unitarios.Processo)=:qproce' +
        'sso) AND ((Custos_Unitarios.Fatura)=:qfatura) AND ((Custos_Unita' +
        'rios.Sequencial)=:qseq))')
    Left = 661
    Top = 180
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00001153'
      end
      item
        DataType = ftString
        Name = 'qfatura'
        ParamType = ptUnknown
        Value = 'PHO0011723'
      end
      item
        DataType = ftString
        Name = 'qseq'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_custosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Custos_Unitarios.Empresa'
      Size = 4
    end
    object q_custosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Custos_Unitarios.Filial'
      Size = 4
    end
    object q_custosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Custos_Unitarios.Processo'
      Size = 8
    end
    object q_custosFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.Custos_Unitarios.Fatura'
      Size = 15
    end
    object q_custosSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.Custos_Unitarios.Sequencial'
      Size = 4
    end
    object q_custoscustos: TFloatField
      FieldName = 'custos'
      Origin = 'DBNMSCOMEX.Custos_Unitarios.Valor'
    end
  end
  object ds_custos: TDataSource
    DataSet = q_custos
    Left = 661
    Top = 208
  end
  object DBNMSCOMEX: TDatabase
    AliasName = 'A_MS2000'
    DatabaseName = 'DBNMSCOMEX'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 297
    Top = 180
  end
  object t_produtos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    TableName = 'Produtos'
    Left = 521
    Top = 236
    object t_produtosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_produtosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_produtosCdigo: TStringField
      FieldName = 'Código'
      Size = 25
    end
    object t_produtosDescrio: TMemoField
      FieldName = 'Descrição'
      BlobType = ftMemo
    end
    object t_produtosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object t_produtosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object t_produtosFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object t_produtosUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object t_produtosPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object t_produtosValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object t_produtosMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object t_produtosUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object t_produtosDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object t_produtosNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
  end
  object ds_produtos: TDataSource
    DataSet = t_produtos
    Left = 521
    Top = 264
  end
  object t_conhecimento: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = ds_processos
    TableName = 'Conhecimento_Processo'
    Left = 377
    Top = 148
    object t_conhecimentoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_conhecimentoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_conhecimentoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_conhecimentoVia: TStringField
      FieldName = 'Via'
      Size = 2
    end
    object t_conhecimentoMultimodal: TBooleanField
      FieldName = 'Multimodal'
    end
    object t_conhecimentoPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object t_conhecimentoLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object t_conhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object t_conhecimentoTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object t_conhecimentoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object t_conhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object t_conhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object t_conhecimentoLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object t_conhecimentoData: TDateTimeField
      FieldName = 'Data'
    end
    object t_conhecimentoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object t_conhecimentoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object t_conhecimentoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object t_conhecimentoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 25
    end
    object t_conhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object t_conhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object t_conhecimentoAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object t_conhecimentoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object t_conhecimentoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object t_conhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object t_conhecimentoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object t_conhecimentoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object t_conhecimentoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object t_conhecimentoOperacao_FUNDAP: TBooleanField
      FieldName = 'Operacao_FUNDAP'
    end
    object t_conhecimentoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object t_conhecimentoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object t_conhecimentoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object t_conhecimentoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object t_conhecimentoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object t_conhecimentoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object t_conhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object t_conhecimentoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object t_conhecimentoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
  end
end
