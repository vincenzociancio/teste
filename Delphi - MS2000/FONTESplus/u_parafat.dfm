object f_parafat: Tf_parafat
  Left = 99
  Top = 21
  ActiveControl = edFiltroCliente
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Parâmetros de Faturamento'
  ClientHeight = 606
  ClientWidth = 747
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContrato: TPanel
    Left = 0
    Top = 276
    Width = 747
    Height = 75
    Align = alBottom
    BevelInner = bvLowered
    Color = clGray
    Enabled = False
    TabOrder = 8
    OnEnter = pnlContratoEnter
    OnExit = pnlContratoExit
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 212
      Height = 59
      Caption = ' Contrato  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label12: TLabel
        Left = 9
        Top = 18
        Width = 44
        Height = 13
        Caption = 'Dt. Início'
      end
      object Label20: TLabel
        Left = 114
        Top = 17
        Width = 55
        Height = 13
        Caption = 'Dt. Término'
      end
      object edDtInicio_Contrato: TDBEdit
        Left = 7
        Top = 33
        Width = 88
        Height = 21
        DataField = 'Data_Inicio_Contrato'
        DataSource = dscontrato_faturamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edDtTermino_Contrato: TDBEdit
        Left = 113
        Top = 33
        Width = 88
        Height = 21
        DataField = 'Data_Termino_Contrato'
        DataSource = dscontrato_faturamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object dbGrdClientes: TDBGrid
    Left = 0
    Top = 50
    Width = 747
    Height = 84
    Align = alTop
    DataSource = dsClientes
    Options = [dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'REPETRO'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Razão Social'
        Width = 520
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Width = 188
        Visible = True
      end>
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 50
    Align = alTop
    Caption = 'Clientes'
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 10
      Top = 8
      Width = 101
      Height = 13
      Caption = 'Busca por Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbAtivos: TCheckBox
      Left = 643
      Top = 28
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Somente Ativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cbAtivosClick
    end
    object edFiltroCliente: TEdit
      Left = 9
      Top = 23
      Width = 181
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 250
      ParentFont = False
      TabOrder = 1
      OnChange = edFiltroClienteChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 134
    Width = 747
    Height = 29
    Align = alTop
    Caption = '               Parâmetros de Faturamento por Cliente'
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object sbImport: TSpeedButton
      Left = 592
      Top = 0
      Width = 153
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Importar Parâmetros'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = sbImportClick
    end
    object DBCheckBox1: TDBCheckBox
      Left = 158
      Top = 8
      Width = 86
      Height = 17
      Caption = 'Fatura ISS'
      Color = clMaroon
      DataField = 'FATURA_ISS'
      DataSource = dsImportadores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object dbGrdParamFat: TDBGrid
    Left = 0
    Top = 158
    Width = 747
    Height = 116
    DataSource = dsParamFat
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PATIVO'
        Title.Caption = 'ATIVO'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_TipoDecl'
        Title.Caption = 'Tipo Declaração'
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Base_faturamento'
        Title.Caption = 'Base'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Percentual'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Faixa_Real_Dolar'
        Title.Caption = 'Moeda'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Faixa_inicial'
        Title.Caption = 'Faixa Inicial'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Faixa_final'
        Title.Caption = 'Faixa Final'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_minimo'
        Title.Caption = 'Teto Mínimo'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_maximo'
        Title.Caption = 'Teto Máximo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'E_Salario_Minimo'
        Title.Caption = 'Sal. Mínimo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade_Salarios'
        Title.Caption = 'Qtd. Mín. Salários'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade_SalariosMAX'
        Title.Caption = 'Qtd. Max. Salários'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Referencia_SM'
        Title.Caption = 'Ref. Sal. Mínimo'
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'E_Salario_Minimo_TX'
        Title.Caption = 'Tx. Sal. Mínimo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_SM_TAXAEXP'
        Title.Caption = 'Qtd. Sal. Expediente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_SM_DTA1'
        Title.Caption = 'Qtd. Sal. DTA1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_SM_LI'
        Title.Caption = 'Qtd. Sal. LI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Referencia_SM_TX'
        Title.Caption = 'Tx. Ref. Sal. Mínimo'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_taxaexpediente'
        Title.Caption = 'Expediente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_LI'
        Title.Caption = 'Valor LI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_DTA1'
        Title.Caption = 'Valor DTA1'
        Visible = True
      end>
  end
  object pnlCampos: TPanel
    Left = 0
    Top = 351
    Width = 747
    Height = 226
    Align = alBottom
    BevelInner = bvLowered
    Color = clGray
    Enabled = False
    TabOrder = 4
    OnEnter = pnlCamposEnter
    OnExit = pnlCamposExit
    object Label1: TLabel
      Left = 9
      Top = 36
      Width = 83
      Height = 13
      Caption = 'Tipo de Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 379
      Top = 36
      Width = 94
      Height = 13
      Caption = 'Tipo de Declaração'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 80
      Width = 500
      Height = 141
      Caption = ' Faturamento por Faixa '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label4: TLabel
        Left = 16
        Top = 80
        Width = 55
        Height = 13
        Caption = 'Faixa Inicial'
        FocusControl = dbEdtFaixaIni
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 80
        Top = 32
        Width = 51
        Height = 13
        Caption = 'Percentual'
        FocusControl = dbEdtPercent
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 80
        Top = 80
        Width = 50
        Height = 13
        Caption = 'Faixa Final'
        FocusControl = dbEdtFaixaFin
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 144
        Top = 80
        Width = 60
        Height = 13
        Caption = 'Teto Mínimo'
        FocusControl = dbEdtTetoMin
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 208
        Top = 80
        Width = 61
        Height = 13
        Caption = 'Teto Máximo'
        FocusControl = dbEdtTetoMax
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 144
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Moeda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 24
        Height = 13
        Caption = 'Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 290
        Top = 20
        Width = 41
        Height = 26
        Caption = 'Salário Mínimo?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label15: TLabel
        Left = 290
        Top = 80
        Width = 125
        Height = 13
        Caption = 'Referência Salário Mínimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 362
        Top = 20
        Width = 52
        Height = 26
        Caption = 'Qtd. Mín. de Salários'
        FocusControl = dbEdtQtdMin
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label18: TLabel
        Left = 426
        Top = 20
        Width = 58
        Height = 26
        AutoSize = False
        Caption = 'Qtd. Máx. de Salários'
        FocusControl = dbEdtQtdMax
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Bevel3: TBevel
        Left = 277
        Top = 24
        Width = 3
        Height = 108
        Shape = bsLeftLine
      end
      object dbEdtPercent: TDBEdit
        Left = 80
        Top = 48
        Width = 57
        Height = 21
        DataField = 'Percentual'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbEdtFaixaIni: TDBEdit
        Left = 16
        Top = 96
        Width = 57
        Height = 21
        DataField = 'Faixa_Inicial'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbEdtFaixaFin: TDBEdit
        Left = 80
        Top = 96
        Width = 57
        Height = 21
        DataField = 'Faixa_Final'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbEdtTetoMin: TDBEdit
        Left = 144
        Top = 96
        Width = 57
        Height = 21
        DataField = 'Valor_Minimo'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbEdtTetoMax: TDBEdit
        Left = 208
        Top = 96
        Width = 57
        Height = 21
        DataField = 'Valor_Maximo'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbCbFaixaMoeda: TDBComboBox
        Left = 144
        Top = 48
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'Faixa_Real_Dolar'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'Real'
          'Dolar')
        ParentFont = False
        TabOrder = 2
      end
      object dbCbBase: TDBComboBox
        Left = 16
        Top = 48
        Width = 57
        Height = 21
        Style = csDropDownList
        DataField = 'Base_faturamento'
        DataSource = dsParamFatEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          ''
          'CIF'
          'FOB')
        ParentFont = False
        TabOrder = 0
        OnChange = dbCbBaseChange
      end
      object dbCbSalMinimo: TDBComboBox
        Left = 290
        Top = 48
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'E_Salario_Minimo'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'SIM'
          'NÃO')
        ParentFont = False
        TabOrder = 7
        OnChange = dbCbSalMinimoChange
      end
      object dbCbRefSalMinimo: TDBComboBox
        Left = 290
        Top = 96
        Width = 193
        Height = 21
        Style = csDropDownList
        DataField = 'Data_Referencia_SM'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'Abertura do Processo'
          'Registro da DI'
          'Desembaraço'
          'Chegada da Carga')
        ParentFont = False
        TabOrder = 8
      end
      object dbEdtQtdMin: TDBEdit
        Left = 362
        Top = 48
        Width = 57
        Height = 21
        DataField = 'Quantidade_Salarios'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbEdtQtdMax: TDBEdit
        Left = 426
        Top = 48
        Width = 57
        Height = 21
        DataField = 'Quantidade_SalariosMAX'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnKeyPress = dbEdtValFixoKeyPress
      end
    end
    object GroupBox4: TGroupBox
      Left = 513
      Top = 80
      Width = 228
      Height = 141
      Caption = ' Outras Taxas '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label9: TLabel
        Left = 12
        Top = 48
        Width = 50
        Height = 13
        Caption = 'Qtd. por LI'
        FocusControl = dbEdtValLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 76
        Top = 48
        Width = 69
        Height = 13
        Caption = 'Qtd. por DTA1'
        FocusControl = dbEdtValDTA1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 75
        Top = 28
        Width = 76
        Height = 13
        Caption = 'Salário Mínimo?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 12
        Top = 99
        Width = 54
        Height = 13
        Caption = 'Valor por LI'
        FocusControl = dbEdtQtdLI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 76
        Top = 99
        Width = 55
        Height = 13
        Caption = 'Valor DTA1'
        FocusControl = dbEdtQtdDTA1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 8
        Top = 87
        Width = 133
        Height = 6
        Shape = bsBottomLine
      end
      object dbEdtValLI: TDBEdit
        Left = 12
        Top = 115
        Width = 57
        Height = 21
        DataField = 'Valor_LI'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbEdtValDTA1: TDBEdit
        Left = 76
        Top = 115
        Width = 57
        Height = 21
        DataField = 'Valor_DTA1'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbCbSalMinimoTx: TDBComboBox
        Left = 155
        Top = 20
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'E_Salario_Minimo_TX'
        DataSource = dsParamFatEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'SIM'
          'NÃO')
        ParentFont = False
        TabOrder = 0
        OnChange = dbCbSalMinimoTxChange
      end
      object dbEdtQtdLI: TDBEdit
        Left = 12
        Top = 64
        Width = 57
        Height = 21
        DataField = 'QTD_SM_LI'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dbEdtValFixoKeyPress
      end
      object dbEdtQtdDTA1: TDBEdit
        Left = 76
        Top = 64
        Width = 57
        Height = 21
        DataField = 'QTD_SM_DTA1'
        DataSource = dsParamFatEdit
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dbEdtValFixoKeyPress
      end
    end
    object dbLcbTipo: TDBLookupComboBox
      Left = 9
      Top = 52
      Width = 363
      Height = 21
      DataField = 'Tipo_processo'
      DataSource = dsParamFatEdit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsTipos
      ParentFont = False
      TabOrder = 0
    end
    object dbcbAtivo: TDBCheckBox
      Left = 8
      Top = 12
      Width = 49
      Height = 17
      Caption = 'Ativo'
      DataField = 'Ativo'
      DataSource = dsParamFatEdit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dblcbTipo_Decl: TDBLookupComboBox
      Left = 377
      Top = 52
      Width = 363
      Height = 21
      DataField = 'Tipo_Declaracao'
      DataSource = dsParamFatEdit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsTipo_Decl
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 577
    Width = 747
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 5
    object Bevel1: TBevel
      Left = 448
      Top = 2
      Width = 10
      Height = 25
      Shape = bsLeftLine
    end
    object Bevel2: TBevel
      Left = 640
      Top = 2
      Width = 10
      Height = 25
      Shape = bsLeftLine
    end
    object btnNovo: TBitBtn
      Left = 24
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = btnNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 112
      Top = 2
      Width = 75
      Height = 25
      Hint = 'Alterar dados do  Armazém'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btnExcluir: TBitBtn
      Left = 200
      Top = 2
      Width = 75
      Height = 25
      Hint = 'Excluir Armazém'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object btnGravar: TBitBtn
      Left = 464
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 3
      OnClick = btnGravarClick
      OnEnter = pnlCamposEnter
      OnExit = pnlCamposExit
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888880000000000000880330000008803088033000000880308803300000088
        0308803300000000030880333333333333088033000000003308803088888888
        0308803088888888030880308888888803088030888888880308803088888888
        0008803088888888080880000000000000088888888888888888}
    end
    object btnCancelar: TBitBtn
      Left = 552
      Top = 2
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnCancelarClick
      OnEnter = pnlCamposEnter
      OnExit = pnlCamposExit
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnFechar: TBitBtn
      Left = 656
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object btnAlterarDataContrato: TBitBtn
      Left = 289
      Top = 2
      Width = 136
      Height = 25
      Hint = 'Alterar dados do  Armazém'
      Caption = '&Alterar Data Contrato'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnAlterarDataContratoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
  end
  object DBbase: TDBCheckBox
    Left = 3
    Top = 141
    Width = 150
    Height = 17
    Caption = 'Movimenta REPETRO'
    Color = clMaroon
    DataField = 'MOV_REPETRO'
    DataSource = dsImportadores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object pnlImport: TPanel
    Left = 102
    Top = 222
    Width = 600
    Height = 147
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 6
    Visible = False
    object Label17: TLabel
      Left = 16
      Top = 40
      Width = 285
      Height = 13
      Caption = 'Selecione o Cliente de onde serão importados os parâmetros'
    end
    object Panel1: TPanel
      Left = 6
      Top = 6
      Width = 588
      Height = 27
      Align = alTop
      Caption = 'Importar Parâmetros de outro Cliente'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dbGrdImport: TDBGrid
      Left = 16
      Top = 56
      Width = 569
      Height = 167
      DataSource = dsImport
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Width = 133
          Visible = True
        end>
    end
    object btnImportar: TBitBtn
      Left = 408
      Top = 230
      Width = 75
      Height = 25
      Caption = '&Importar'
      TabOrder = 2
      OnClick = btnImportarClick
      Kind = bkAll
    end
    object btnIguinorar: TBitBtn
      Left = 496
      Top = 230
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 7
      TabOrder = 3
      OnClick = btnIguinorarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333FFFFF333333000033333388888833333333333F888888FFF333
        000033338811111188333333338833FFF388FF33000033381119999111833333
        38F338888F338FF30000339119933331111833338F388333383338F300003391
        13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
        33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
        33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
        000039183811193333918338F8F833F83333838F000039118111933339118338
        F3833F83333833830000339111193333391833338F33F8333FF838F300003391
        11833338111833338F338FFFF883F83300003339111888811183333338FF3888
        83FF83330000333399111111993333333388FFFFFF8833330000333333999999
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object dsParamFat: TDataSource
    DataSet = qrParamFat
    Left = 600
    Top = 280
  end
  object dsClientes: TDataSource
    DataSet = qrClientes
    Left = 528
    Top = 280
  end
  object tbParamFat: TTable
    AutoCalcFields = False
    AfterOpen = tbParamFatAfterScroll
    AfterInsert = tbParamFatAfterInsert
    AfterEdit = tbParamFatAfterInsert
    AfterPost = tbParamFatAfterCancel
    AfterCancel = tbParamFatAfterCancel
    BeforeDelete = tbParamFatBeforeDelete
    AfterDelete = qrClientesAfterScroll
    AfterScroll = tbParamFatAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Tipo_Processo;Reg'
    MasterFields = 'Empresa;Filial;Importador;Tipo_Processo;Reg'
    MasterSource = dsParamFat
    TableName = 'Parametros_Faturamento'
    Left = 48
    Top = 408
    object tbParamFatEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbParamFatFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbParamFatImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object tbParamFatTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Size = 2
    end
    object tbParamFatReg: TAutoIncField
      FieldName = 'Reg'
    end
    object tbParamFatBase_faturamento: TStringField
      FieldName = 'Base_faturamento'
      Size = 3
    end
    object tbParamFatValor_fixo: TFloatField
      FieldName = 'Valor_fixo'
    end
    object tbParamFatPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object tbParamFatFaixa_Real_Dolar: TStringField
      FieldName = 'Faixa_Real_Dolar'
      Size = 10
    end
    object tbParamFatFaixa_inicial: TFloatField
      FieldName = 'Faixa_inicial'
    end
    object tbParamFatFaixa_final: TFloatField
      FieldName = 'Faixa_final'
    end
    object tbParamFatValor_minimo: TFloatField
      FieldName = 'Valor_minimo'
    end
    object tbParamFatValor_maximo: TFloatField
      FieldName = 'Valor_maximo'
    end
    object tbParamFatValor_fixoc: TFloatField
      FieldName = 'Valor_fixoc'
    end
    object tbParamFatE_Salario_Minimo: TStringField
      FieldName = 'E_Salario_Minimo'
      Size = 3
    end
    object tbParamFatQuantidade_Salarios: TFloatField
      FieldName = 'Quantidade_Salarios'
    end
    object tbParamFatData_Referencia_SM: TStringField
      FieldName = 'Data_Referencia_SM'
      Size = 50
    end
    object tbParamFatQuantidade_SalariosMAX: TFloatField
      FieldName = 'Quantidade_SalariosMAX'
    end
    object tbParamFatE_Salario_Minimo_TX: TStringField
      FieldName = 'E_Salario_Minimo_TX'
      Size = 3
    end
    object tbParamFatValor_taxaexpediente: TFloatField
      FieldName = 'Valor_taxaexpediente'
    end
    object tbParamFatValor_LI: TFloatField
      FieldName = 'Valor_LI'
    end
    object tbParamFatValor_DTA1: TFloatField
      FieldName = 'Valor_DTA1'
    end
    object tbParamFatQTD_SM_TAXAEXP: TFloatField
      FieldName = 'QTD_SM_TAXAEXP'
    end
    object tbParamFatQTD_SM_DTA1: TFloatField
      FieldName = 'QTD_SM_DTA1'
    end
    object tbParamFatQTD_SM_LI: TFloatField
      FieldName = 'QTD_SM_LI'
    end
    object tbParamFatData_Referencia_SM_TX: TStringField
      FieldName = 'Data_Referencia_SM_TX'
      Size = 50
    end
    object tbParamFatATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object tbParamFatTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
  end
  object dsParamFatEdit: TDataSource
    DataSet = tbParamFat
    Left = 680
    Top = 280
  end
  object dsTipos: TDataSource
    DataSet = qrTipos
    Left = 768
    Top = 280
  end
  object qrClientes: TQuery
    AutoCalcFields = False
    AfterOpen = qrClientesAfterScroll
    AfterScroll = qrClientesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    ParamCheck = False
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Codigo, Razao_Social, Cidade, case MOV_R' +
        'EPETRO when 1 then '#39'SIM'#39' when  0 then '#39'NÃO'#39' end as REPETRO'
      ' FROM Importadores')
    Left = 96
    Top = 280
    object qrClientesEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object qrClientesFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object qrClientesCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object qrClientesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object qrClientesCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      Size = 25
    end
    object qrClientesREPETRO: TStringField
      FieldName = 'REPETRO'
      FixedChar = True
      Size = 3
    end
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 48
    Top = 280
    object qrParamEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros.Empresa'
      Size = 4
    end
    object qrParamFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros.Filial'
      Size = 4
    end
  end
  object qrParamFat: TQuery
    AfterOpen = qrParamFatAfterOpen
    AfterScroll = qrParamFatAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PF.*, TP.Descricao, TD.Descricao as Descricao_TipoDecl,ca' +
        'se PF.ATIVO when 1 then '#39'SIM'#39' when  0 then '#39'NÃO'#39' end as PATIVO '
      
        'FROM Parametros_Faturamento AS PF LEFT JOIN Tipos_de_Processos A' +
        'S TP ON (PF.Tipo_Processo = TP.Codigo) LEFT JOIN'
      '     TAB_TIPO_DECLARACAO TD ON PF.Tipo_Declaracao = TD.Codigo'
      
        'WHERE PF.Empresa = :emp AND PF.Filial = :filial AND PF.Importado' +
        'r = :imp'
      'ORDER BY TP.Descricao, PF.Base_faturamento, PF.Faixa_inicial')
    Left = 152
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qrParamFatEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrParamFatFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrParamFatImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrParamFatTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Size = 2
    end
    object qrParamFatReg: TAutoIncField
      FieldName = 'Reg'
    end
    object qrParamFatBase_faturamento: TStringField
      FieldName = 'Base_faturamento'
      Size = 3
    end
    object qrParamFatDescricao_TipoDecl: TStringField
      FieldName = 'Descricao_TipoDecl'
    end
    object qrParamFatValor_fixo: TFloatField
      FieldName = 'Valor_fixo'
    end
    object qrParamFatPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object qrParamFatFaixa_Real_Dolar: TStringField
      FieldName = 'Faixa_Real_Dolar'
      Size = 10
    end
    object qrParamFatFaixa_inicial: TFloatField
      FieldName = 'Faixa_inicial'
    end
    object qrParamFatFaixa_final: TFloatField
      FieldName = 'Faixa_final'
    end
    object qrParamFatValor_minimo: TFloatField
      FieldName = 'Valor_minimo'
    end
    object qrParamFatValor_maximo: TFloatField
      FieldName = 'Valor_maximo'
    end
    object qrParamFatValor_fixoc: TFloatField
      FieldName = 'Valor_fixoc'
    end
    object qrParamFatE_Salario_Minimo: TStringField
      FieldName = 'E_Salario_Minimo'
      Size = 3
    end
    object qrParamFatQuantidade_Salarios: TFloatField
      FieldName = 'Quantidade_Salarios'
    end
    object qrParamFatData_Referencia_SM: TStringField
      FieldName = 'Data_Referencia_SM'
      Size = 50
    end
    object qrParamFatQuantidade_SalariosMAX: TFloatField
      FieldName = 'Quantidade_SalariosMAX'
    end
    object qrParamFatE_Salario_Minimo_TX: TStringField
      FieldName = 'E_Salario_Minimo_TX'
      Size = 3
    end
    object qrParamFatValor_taxaexpediente: TFloatField
      FieldName = 'Valor_taxaexpediente'
    end
    object qrParamFatValor_LI: TFloatField
      FieldName = 'Valor_LI'
    end
    object qrParamFatValor_DTA1: TFloatField
      FieldName = 'Valor_DTA1'
    end
    object qrParamFatQTD_SM_TAXAEXP: TFloatField
      FieldName = 'QTD_SM_TAXAEXP'
    end
    object qrParamFatQTD_SM_DTA1: TFloatField
      FieldName = 'QTD_SM_DTA1'
    end
    object qrParamFatQTD_SM_LI: TFloatField
      FieldName = 'QTD_SM_LI'
    end
    object qrParamFatData_Referencia_SM_TX: TStringField
      FieldName = 'Data_Referencia_SM_TX'
      Size = 50
    end
    object qrParamFatDescricao: TStringField
      FieldName = 'Descricao'
      Size = 35
    end
    object qrParamFatATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object qrParamFatPATIVO: TStringField
      FieldName = 'PATIVO'
      FixedChar = True
      Size = 3
    end
    object qrParamFatTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
    end
  end
  object qrTipos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM Tipos_de_Processos'
      'ORDER BY Descricao'
      '')
    Left = 232
    Top = 280
    object qrTiposCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.CODIGO'
      Size = 2
    end
    object qrTiposDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.DESCRICAO'
      Size = 35
    end
  end
  object qrVerifcaParaFat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Parametros_Faturamento'
      'WHERE Empresa = :emp AND Filial = :filial AND Importador = :imp'
      
        'AND Tipo_Processo = :tipo AND Tipo_Declaracao = :decl AND Reg <>' +
        ' :reg'
      'ORDER BY Valor_fixo DESC')
    Left = 320
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'decl'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'reg'
        ParamType = ptUnknown
      end>
    object qrVerifcaParaFatEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Empresa'
      Size = 4
    end
    object qrVerifcaParaFatFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Filial'
      Size = 4
    end
    object qrVerifcaParaFatImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Importador'
      Size = 4
    end
    object qrVerifcaParaFatTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Tipo_Processo'
      Size = 2
    end
    object qrVerifcaParaFatReg: TAutoIncField
      FieldName = 'Reg'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Reg'
    end
    object qrVerifcaParaFatBase_faturamento: TStringField
      FieldName = 'Base_faturamento'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Base_faturamento'
      Size = 3
    end
    object qrVerifcaParaFatValor_fixo: TFloatField
      FieldName = 'Valor_fixo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_fixo'
    end
    object qrVerifcaParaFatPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Percentual'
    end
    object qrVerifcaParaFatFaixa_Real_Dolar: TStringField
      FieldName = 'Faixa_Real_Dolar'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Faixa_Real_Dolar'
      Size = 10
    end
    object qrVerifcaParaFatFaixa_inicial: TFloatField
      FieldName = 'Faixa_inicial'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Faixa_inicial'
    end
    object qrVerifcaParaFatFaixa_final: TFloatField
      FieldName = 'Faixa_final'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Faixa_final'
    end
    object qrVerifcaParaFatValor_minimo: TFloatField
      FieldName = 'Valor_minimo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_minimo'
    end
    object qrVerifcaParaFatValor_maximo: TFloatField
      FieldName = 'Valor_maximo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_maximo'
    end
    object qrVerifcaParaFatValor_fixoc: TFloatField
      FieldName = 'Valor_fixoc'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_fixoc'
    end
    object qrVerifcaParaFatE_Salario_Minimo: TStringField
      FieldName = 'E_Salario_Minimo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.E_Salario_Minimo'
      Size = 3
    end
    object qrVerifcaParaFatQuantidade_Salarios: TFloatField
      FieldName = 'Quantidade_Salarios'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Quantidade_Salarios'
    end
    object qrVerifcaParaFatData_Referencia_SM: TStringField
      FieldName = 'Data_Referencia_SM'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Data_Referencia_SM'
      Size = 50
    end
    object qrVerifcaParaFatQuantidade_SalariosMAX: TFloatField
      FieldName = 'Quantidade_SalariosMAX'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Quantidade_SalariosMAX'
    end
    object qrVerifcaParaFatE_Salario_Minimo_TX: TStringField
      FieldName = 'E_Salario_Minimo_TX'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.E_Salario_Minimo_TX'
      Size = 3
    end
    object qrVerifcaParaFatValor_taxaexpediente: TFloatField
      FieldName = 'Valor_taxaexpediente'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_taxaexpediente'
    end
    object qrVerifcaParaFatValor_LI: TFloatField
      FieldName = 'Valor_LI'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_LI'
    end
    object qrVerifcaParaFatValor_DTA1: TFloatField
      FieldName = 'Valor_DTA1'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_DTA1'
    end
    object qrVerifcaParaFatQTD_SM_TAXAEXP: TFloatField
      FieldName = 'QTD_SM_TAXAEXP'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.QTD_SM_TAXAEXP'
    end
    object qrVerifcaParaFatQTD_SM_DTA1: TFloatField
      FieldName = 'QTD_SM_DTA1'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.QTD_SM_DTA1'
    end
    object qrVerifcaParaFatQTD_SM_LI: TFloatField
      FieldName = 'QTD_SM_LI'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.QTD_SM_LI'
    end
    object qrVerifcaParaFatData_Referencia_SM_TX: TStringField
      FieldName = 'Data_Referencia_SM_TX'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Data_Referencia_SM_TX'
      Size = 50
    end
    object qrVerifcaParaFatTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
  end
  object qrImport: TQuery
    AfterOpen = qrClientesAfterScroll
    AfterScroll = qrClientesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT DISTINCT I.Empresa, I.Filial, I.Codigo, I.Razao_Social, I' +
        '.Cidade'
      
        'FROM Importadores AS I INNER JOIN Parametros_Faturamento AS PF O' +
        'N (I.Empresa = PF.Empresa) AND (I.Filial = PF.Filial) AND (I.Cod' +
        'igo = PF.Importador)'
      
        'WHERE I.Empresa = :emp AND I.Filial = :filial AND I.Codigo <> :i' +
        'mport'
      'ORDER BY I.Razao_Social')
    Left = 392
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'import'
        ParamType = ptUnknown
      end>
    object qrImportEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrImportFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrImportCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object qrImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object qrImportCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
  end
  object dsImport: TDataSource
    DataSet = qrImport
    Left = 840
    Top = 280
  end
  object qrDelParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE'
      'FROM Parametros_Faturamento'
      'WHERE Empresa = :emp AND Filial = :filial AND Importador = :imp')
    Left = 448
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end>
  end
  object qrImportParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Parametros_Faturamento (Empresa, Filial, Importador,' +
        ' Tipo_Processo, Base_faturamento, Valor_fixo, Valor_fixoc, Perce' +
        'ntual, Faixa_Real_Dolar, Faixa_inicial, Faixa_final, Valor_minim' +
        'o, Valor_maximo, Valor_LI, Valor_DTA1, Valor_taxaexpediente, E_S' +
        'alario_Minimo, Quantidade_Salarios, Data_Referencia_SM, Quantida' +
        'de_SalariosMax, E_Salario_Minimo_TX, QTD_SM_TAXAEXP, QTD_SM_DTA1' +
        ', QTD_SM_LI, Data_Referencia_SM_TX , ATIVO)'
      
        'SELECT PF.Empresa, PF.Filial, :cli, PF.Tipo_Processo, PF.Base_fa' +
        'turamento, PF.Valor_fixo, PF.Valor_fixoc, PF.Percentual, PF.Faix' +
        'a_Real_Dolar, PF.Faixa_inicial, PF.Faixa_final, PF.Valor_minimo,' +
        ' PF.Valor_maximo, PF.Valor_LI, PF.Valor_DTA1, PF.Valor_taxaexped' +
        'iente, PF.E_Salario_Minimo, PF.Quantidade_Salarios, PF.Data_Refe' +
        'rencia_SM, PF.Quantidade_SalariosMax, PF.E_Salario_Minimo_TX, PF' +
        '.QTD_SM_TAXAEXP, PF.QTD_SM_DTA1, PF.QTD_SM_LI, PF.Data_Referenci' +
        'a_SM_TX, PF.ATIVO'
      'FROM Parametros_Faturamento AS PF'
      'WHERE Empresa = :emp AND Filial = :filial AND Importador = :imp'
      ''
      ' ')
    Left = 1216
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end>
  end
  object t_Importadores: TTable
    AfterPost = t_ImportadoresAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = dsClientes
    TableName = 'Importadores'
    Left = 200
    Top = 408
    object t_ImportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_ImportadoresFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_ImportadoresCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object t_ImportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object t_ImportadoresPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object t_ImportadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object t_ImportadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object t_ImportadoresTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      FixedChar = True
      Size = 1
    end
    object t_ImportadoresEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object t_ImportadoresNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object t_ImportadoresComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object t_ImportadoresBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object t_ImportadoresCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object t_ImportadoresCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object t_ImportadoresUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object t_ImportadoresEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object t_ImportadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object t_ImportadoresBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object t_ImportadoresAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object t_ImportadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object t_ImportadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object t_ImportadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object t_Importadoreslink: TStringField
      FieldName = 'link'
      FixedChar = True
      Size = 50
    end
    object t_ImportadoresCAE: TStringField
      FieldName = 'CAE'
      FixedChar = True
      Size = 15
    end
    object t_ImportadoresTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 15
    end
    object t_ImportadoresAtivo: TIntegerField
      FieldName = 'Ativo'
    end
    object t_ImportadoresAcesso_WEB_MS: TIntegerField
      FieldName = 'Acesso_WEB_MS'
    end
    object t_ImportadoresAcesso_WEB_CLI: TIntegerField
      FieldName = 'Acesso_WEB_CLI'
    end
    object t_ImportadoresAcesso_WEB_REC: TIntegerField
      FieldName = 'Acesso_WEB_REC'
    end
    object t_ImportadoresBASE_ICMS: TIntegerField
      FieldName = 'BASE_ICMS'
    end
    object t_ImportadoresMOV_REPETRO: TIntegerField
      FieldName = 'MOV_REPETRO'
    end
    object t_ImportadoresInscricao_Municipal: TStringField
      FieldName = 'Inscricao_Municipal'
      FixedChar = True
      Size = 15
    end
    object t_ImportadoresEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 80
    end
    object t_ImportadoresFATURA_ISS: TIntegerField
      FieldName = 'FATURA_ISS'
    end
  end
  object dsImportadores: TDataSource
    DataSet = t_Importadores
    Left = 904
    Top = 280
  end
  object qrtipos2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM Tipos_de_Processos'
      'ORDER BY Descricao'
      '')
    Left = 48
    Top = 336
    object qrtipos2Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 2
    end
    object qrtipos2Descricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 35
    end
  end
  object qrclientes2: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    ParamCheck = False
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Codigo, Razao_Social, Cidade, case MOV_R' +
        'EPETRO when 1 then '#39'SIM'#39' when  0 then '#39'NÃO'#39' end as REPETRO'
      ' FROM Importadores')
    Left = 128
    Top = 336
    object qrclientes2Empresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrclientes2Filial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrclientes2Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrclientes2Razao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrclientes2Cidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object qrclientes2REPETRO: TStringField
      FieldName = 'REPETRO'
      FixedChar = True
      Size = 3
    end
  end
  object tbParamFat2: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Tipo_Processo;Reg'
    MasterFields = 'Empresa;Filial;Importador;Tipo_Processo;Reg'
    MasterSource = dsParamFat
    TableName = 'Parametros_Faturamento'
    Left = 120
    Top = 408
    object tbParamFat2Empresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbParamFat2Filial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbParamFat2Importador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object tbParamFat2Tipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      FixedChar = True
      Size = 2
    end
    object tbParamFat2Reg: TAutoIncField
      FieldName = 'Reg'
    end
    object tbParamFat2Base_faturamento: TStringField
      FieldName = 'Base_faturamento'
      FixedChar = True
      Size = 3
    end
    object tbParamFat2Valor_fixo: TFloatField
      FieldName = 'Valor_fixo'
    end
    object tbParamFat2Percentual: TFloatField
      FieldName = 'Percentual'
    end
    object tbParamFat2Faixa_Real_Dolar: TStringField
      FieldName = 'Faixa_Real_Dolar'
      FixedChar = True
      Size = 10
    end
    object tbParamFat2Faixa_inicial: TFloatField
      FieldName = 'Faixa_inicial'
    end
    object tbParamFat2Faixa_final: TFloatField
      FieldName = 'Faixa_final'
    end
    object tbParamFat2Valor_minimo: TFloatField
      FieldName = 'Valor_minimo'
    end
    object tbParamFat2Valor_maximo: TFloatField
      FieldName = 'Valor_maximo'
    end
    object tbParamFat2Valor_fixoc: TFloatField
      FieldName = 'Valor_fixoc'
    end
    object tbParamFat2E_Salario_Minimo: TStringField
      FieldName = 'E_Salario_Minimo'
      FixedChar = True
      Size = 3
    end
    object tbParamFat2Quantidade_Salarios: TFloatField
      FieldName = 'Quantidade_Salarios'
    end
    object tbParamFat2Data_Referencia_SM: TStringField
      FieldName = 'Data_Referencia_SM'
      FixedChar = True
      Size = 50
    end
    object tbParamFat2Quantidade_SalariosMAX: TFloatField
      FieldName = 'Quantidade_SalariosMAX'
    end
    object tbParamFat2E_Salario_Minimo_TX: TStringField
      FieldName = 'E_Salario_Minimo_TX'
      FixedChar = True
      Size = 3
    end
    object tbParamFat2Valor_taxaexpediente: TFloatField
      FieldName = 'Valor_taxaexpediente'
    end
    object tbParamFat2Valor_LI: TFloatField
      FieldName = 'Valor_LI'
    end
    object tbParamFat2Valor_DTA1: TFloatField
      FieldName = 'Valor_DTA1'
    end
    object tbParamFat2QTD_SM_TAXAEXP: TFloatField
      FieldName = 'QTD_SM_TAXAEXP'
    end
    object tbParamFat2QTD_SM_DTA1: TFloatField
      FieldName = 'QTD_SM_DTA1'
    end
    object tbParamFat2QTD_SM_LI: TFloatField
      FieldName = 'QTD_SM_LI'
    end
    object tbParamFat2Data_Referencia_SM_TX: TStringField
      FieldName = 'Data_Referencia_SM_TX'
      FixedChar = True
      Size = 50
    end
    object tbParamFat2ATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
  end
  object qrTipos_Decl: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao '
      '  FROM TAB_TIPO_DECLARACAO '
      'ORDER BY Descricao'
      '')
    Left = 200
    Top = 336
    object StringField1: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 35
    end
  end
  object dsTipo_Decl: TDataSource
    DataSet = qrTipos_Decl
    Left = 984
    Top = 280
  end
  object dscontrato_faturamento: TDataSource
    DataSet = tbContrato_faturamento
    Left = 768
    Top = 344
  end
  object qrContrato_faturamento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Data_Inicio_Contrato, Data_Termino_Contrato FROM Contrato' +
        '_Faturamento'
      '')
    Left = 296
    Top = 336
    object qrContrato_faturamentoData_Inicio_Contrato: TStringField
      FieldName = 'Data_Inicio_Contrato'
      Size = 10
    end
    object qrContrato_faturamentoData_Termino_Contrato: TStringField
      FieldName = 'Data_Termino_Contrato'
      Size = 10
    end
  end
  object tbContrato_faturamento: TTable
    AutoCalcFields = False
    AfterPost = tbContrato_faturamentoAfterPost
    AfterCancel = tbContrato_faturamentoAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;'
    MasterFields = 'Empresa;Filial;Importador;'
    MasterSource = dsParamFat
    TableName = 'Contrato_faturamento'
    Left = 296
    Top = 408
    object tbContrato_faturamentoEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object tbContrato_faturamentoFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object tbContrato_faturamentoImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object tbContrato_faturamentoData_Inicio_Contrato: TStringField
      FieldName = 'Data_Inicio_Contrato'
      Size = 10
    end
    object tbContrato_faturamentoData_Termino_Contrato: TStringField
      FieldName = 'Data_Termino_Contrato'
      Size = 10
    end
  end
end
