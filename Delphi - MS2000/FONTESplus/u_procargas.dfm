object F_proCargas: TF_proCargas
  Left = 216
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Informações da Carga'
  ClientHeight = 469
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 794
    Height = 390
    Align = alClient
    Color = 10514464
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label55: TLabel
      Left = 16
      Top = 8
      Width = 100
      Height = 13
      Caption = 'País de Procedência'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label62: TLabel
      Left = 384
      Top = 8
      Width = 117
      Height = 13
      Caption = 'URF de Entrada no País'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label135: TLabel
      Left = 16
      Top = 48
      Width = 84
      Height = 13
      Caption = 'Peso Líquido (kg)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label134: TLabel
      Left = 144
      Top = 48
      Width = 73
      Height = 13
      Caption = 'Peso Bruto (kg)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label136: TLabel
      Left = 272
      Top = 48
      Width = 103
      Height = 13
      Caption = 'Agente Transportador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label213: TLabel
      Left = 632
      Top = 48
      Width = 107
      Height = 14
      Caption = 'Valor VMLE Total (R$)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpaPais: TSpeedButton
      Left = 352
      Top = 24
      Width = 25
      Height = 22
      Hint = 'Limpa o País de Procedência'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbLimpaPaisClick
    end
    object sbLimpaURF: TSpeedButton
      Left = 720
      Top = 24
      Width = 25
      Height = 22
      Hint = 'Limpa URF de Entrada no País'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbLimpaURFClick
    end
    object Label2: TLabel
      Left = 81
      Top = 48
      Width = 35
      Height = 13
      Caption = 'em kg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 199
      Top = 48
      Width = 35
      Height = 13
      Caption = 'em kg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gbFrete: TGroupBox
      Left = 16
      Top = 88
      Width = 729
      Height = 57
      Caption = ' Frete '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object Label148: TLabel
        Left = 8
        Top = 16
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
      object Label150: TLabel
        Left = 272
        Top = 16
        Width = 63
        Height = 13
        Caption = 'Valor Prepaid'
      end
      object Label151: TLabel
        Left = 384
        Top = 16
        Width = 59
        Height = 13
        Caption = 'Valor Collect'
      end
      object Label152: TLabel
        Left = 496
        Top = 16
        Width = 113
        Height = 13
        Caption = 'Valor Território Nacional'
      end
      object Label212: TLabel
        Left = 616
        Top = 16
        Width = 104
        Height = 14
        Caption = 'Valor Frete Total (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object sbLimpaMoedaFrete: TSpeedButton
        Left = 240
        Top = 32
        Width = 25
        Height = 22
        Hint = 'Limpa Moeda Frete'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = sbLimpaMoedaFreteClick
      end
      object edtFreteTotal: TMaskEdit
        Left = 616
        Top = 32
        Width = 105
        Height = 21
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dbEdtFretePre: TDBEdit
        Left = 272
        Top = 32
        Width = 105
        Height = 21
        DataField = 'Frete_Prepaid'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dbEdtFretePreKeyPress
      end
      object dbEdtFreteCol: TDBEdit
        Left = 384
        Top = 32
        Width = 105
        Height = 21
        DataField = 'Frete_Collect'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = dbEdtFreteColKeyPress
      end
      object dbEdtFreteTer: TDBEdit
        Left = 496
        Top = 32
        Width = 113
        Height = 21
        DataField = 'Frete_Ter_Nac'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = dbEdtFreteTerKeyPress
      end
      object dbLcbMoedaFrete: TDBLookupComboBox
        Left = 32
        Top = 32
        Width = 209
        Height = 21
        DataField = 'Moeda_Frete'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsMoedaFrete
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dbLcbMoedaFreteKeyPress
      end
      object dbEdtMoedaFrete: TDBEdit
        Left = 8
        Top = 32
        Width = 25
        Height = 21
        DataField = 'Moeda_Frete'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dbEdtMoedaFreteKeyPress
      end
    end
    object gbSeguro: TGroupBox
      Left = 16
      Top = 152
      Width = 361
      Height = 57
      Caption = ' Seguro '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      object Label153: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Moeda'
      end
      object Label154: TLabel
        Left = 272
        Top = 16
        Width = 75
        Height = 13
        Caption = 'Valor na Moeda'
      end
      object sbLimpaMoedaSeguro: TSpeedButton
        Left = 240
        Top = 32
        Width = 25
        Height = 22
        Hint = 'Limpa Moeda Seguro'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = sbLimpaMoedaSeguroClick
      end
      object dbLcbMoedaSeguro: TDBLookupComboBox
        Left = 32
        Top = 32
        Width = 209
        Height = 21
        DataField = 'Moeda_Seguro'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsMoedaSeguro
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dbLcbMoedaSeguroKeyPress
      end
      object dbEdtValSeguro: TDBEdit
        Left = 272
        Top = 32
        Width = 81
        Height = 21
        DataField = 'Valor_Seguro'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dbEdtValSeguroKeyPress
      end
      object dbEdtMoedaSeguro: TDBEdit
        Left = 8
        Top = 32
        Width = 25
        Height = 21
        DataField = 'Moeda_Seguro'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dbEdtMoedaSeguroKeyPress
      end
    end
    object gbDespFob: TGroupBox
      Left = 384
      Top = 152
      Width = 361
      Height = 57
      Caption = ' Despesas até FOB '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object Label173: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Moeda'
      end
      object Label174: TLabel
        Left = 272
        Top = 16
        Width = 75
        Height = 13
        Caption = 'Valor na Moeda'
      end
      object sbLimpaMoedaFOB: TSpeedButton
        Left = 240
        Top = 32
        Width = 25
        Height = 22
        Hint = 'Limpa Moeda Despesas até FOB'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = sbLimpaMoedaFOBClick
      end
      object dbLcbMoedaFOB: TDBLookupComboBox
        Left = 32
        Top = 32
        Width = 209
        Height = 21
        DataField = 'Moeda_Despesas_ate_FOB'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsMoedaFOB
        ParentFont = False
        TabOrder = 1
        OnKeyPress = dbLcbMoedaFOBKeyPress
      end
      object dbEdtValFOB: TDBEdit
        Left = 272
        Top = 32
        Width = 81
        Height = 21
        DataField = 'Valor_Despesas_ate_FOB'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = dbEdtValFOBKeyPress
      end
      object dbEdtMoedaFOB: TDBEdit
        Left = 8
        Top = 32
        Width = 25
        Height = 21
        DataField = 'Moeda_Despesas_ate_FOB'
        DataSource = dsConhecimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = dbEdtMoedaFOBKeyPress
      end
    end
    object dbLcbPais: TDBLookupComboBox
      Left = 48
      Top = 24
      Width = 305
      Height = 21
      DataField = 'Pais_Procedencia'
      DataSource = dsConhecimentos
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsPais
      TabOrder = 1
      OnKeyPress = dbLcbPaisKeyPress
    end
    object dbLcbURF: TDBLookupComboBox
      Left = 432
      Top = 24
      Width = 289
      Height = 21
      DataField = 'URF_chegada'
      DataSource = dsConhecimentos
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsURF
      TabOrder = 3
      OnKeyPress = dbLcbURFKeyPress
    end
    object dbEdtPsLiquido: TDBEdit
      Left = 16
      Top = 64
      Width = 121
      Height = 21
      DataField = 'Peso_Liquido'
      DataSource = dsConhecimentos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbEdtPsBruto: TDBEdit
      Left = 144
      Top = 64
      Width = 121
      Height = 21
      DataField = 'Peso_Bruto'
      DataSource = dsConhecimentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = dbEdtPsBrutoKeyPress
    end
    object dbEdtAgente: TDBEdit
      Left = 272
      Top = 64
      Width = 353
      Height = 21
      DataField = 'Agente'
      DataSource = dsConhecimentos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = dbEdtAgenteKeyPress
    end
    object dbEdtVMLE: TDBEdit
      Left = 632
      Top = 64
      Width = 121
      Height = 21
      DataField = 'SomaDoVMLE'
      DataSource = dsVMLE
      TabOrder = 7
      OnKeyPress = dbEdtVMLEKeyPress
    end
    object dbEdtPais: TDBEdit
      Left = 16
      Top = 24
      Width = 33
      Height = 21
      DataField = 'Pais_Procedencia'
      DataSource = dsConhecimentos
      TabOrder = 0
      OnKeyPress = dbEdtPaisKeyPress
    end
    object dbEdtURF: TDBEdit
      Left = 384
      Top = 24
      Width = 49
      Height = 21
      DataField = 'URF_chegada'
      DataSource = dsConhecimentos
      TabOrder = 2
      OnKeyPress = dbEdtURFKeyPress
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 10
      Width = 113
      Height = 13
      Caption = 'Digite o Nº do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object l_cliente: TLabel
      Left = 200
      Top = 11
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ME_nossaref: TMaskEdit
      Left = 128
      Top = 6
      Width = 65
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnChange = ME_nossarefChange
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 423
    Width = 794
    Height = 46
    Align = alBottom
    Color = 10514464
    TabOrder = 2
    Visible = False
    object btnAlterar: TBitBtn
      Left = 24
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 0
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
    object btnSalvar: TBitBtn
      Left = 296
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = btnSalvarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancelar: TBitBtn
      Left = 392
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = btnCancelarClick
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
    object btnSair: TBitBtn
      Left = 664
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object pnlCarga: TPanel
    Left = 16
    Top = 248
    Width = 361
    Height = 161
    BevelInner = bvLowered
    Color = 10514464
    TabOrder = 3
    Visible = False
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 357
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Tipos de Cargas'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object dbGrdCargas: TDBGrid
      Left = 8
      Top = 24
      Width = 345
      Height = 95
      DataSource = dsQConCargas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'Código'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lacre'
          Width = 103
          Visible = True
        end>
    end
    object btnIncCarga: TBitBtn
      Left = 64
      Top = 128
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Incluir'
      TabOrder = 1
      OnClick = btnIncCargaClick
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
    object btnExcCarga: TBitBtn
      Left = 224
      Top = 128
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 3
      OnClick = btnExcCargaClick
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
    object btnAltCarga: TBitBtn
      Left = 144
      Top = 128
      Width = 75
      Height = 25
      Caption = 'A&lterar'
      Enabled = False
      TabOrder = 2
      OnClick = btnAltCargaClick
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
  object pnlEmbalagem: TPanel
    Left = 384
    Top = 248
    Width = 361
    Height = 161
    BevelInner = bvLowered
    Color = 10514464
    TabOrder = 4
    Visible = False
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 357
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Volume'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object dbGrdEmbalagem: TDBGrid
      Left = 8
      Top = 24
      Width = 345
      Height = 95
      DataSource = dsQEmbalagem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição'
          Width = 253
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end>
    end
    object btnIncEmbalagem: TBitBtn
      Left = 64
      Top = 128
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Incluir'
      TabOrder = 1
      OnClick = btnIncEmbalagemClick
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
    object btnExcEmbalagem: TBitBtn
      Left = 224
      Top = 128
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 3
      OnClick = btnExcEmbalagemClick
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
    object btnAltEmbalagem: TBitBtn
      Left = 144
      Top = 128
      Width = 75
      Height = 25
      Caption = 'A&lterar'
      Enabled = False
      TabOrder = 2
      OnClick = btnAltEmbalagemClick
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
  object pnlTipoCarga: TPanel
    Left = 304
    Top = 168
    Width = 265
    Height = 217
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 5
    Visible = False
    object Label137: TLabel
      Left = 16
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Código'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label138: TLabel
      Left = 16
      Top = 80
      Width = 67
      Height = 13
      Caption = 'Tipo de Carga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label139: TLabel
      Left = 16
      Top = 120
      Width = 27
      Height = 13
      Caption = 'Lacre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 6
      Top = 6
      Width = 253
      Height = 27
      Align = alTop
      Caption = 'Tipos de Cargas'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object btnSalvarCarga: TBitBtn
      Left = 50
      Top = 176
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Salvar'
      TabOrder = 3
      OnClick = btnSalvarCargaClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancelarCarga: TBitBtn
      Left = 138
      Top = 176
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = btnCancelarCargaClick
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
    object dbEdtCod: TDBEdit
      Left = 16
      Top = 56
      Width = 113
      Height = 21
      DataField = 'Codigo'
      DataSource = dsConCargas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbLcbCarga: TDBLookupComboBox
      Left = 16
      Top = 96
      Width = 233
      Height = 21
      Color = clWhite
      DataField = 'Tipo_Carga'
      DataSource = dsConCargas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsTipoCargas
      ParentFont = False
      TabOrder = 1
    end
    object dbEdtLacre: TDBEdit
      Left = 16
      Top = 136
      Width = 113
      Height = 21
      DataField = 'Lacre'
      DataSource = dsConCargas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlVolume: TPanel
    Left = 176
    Top = 184
    Width = 313
    Height = 177
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 6
    Visible = False
    object Label146: TLabel
      Left = 16
      Top = 40
      Width = 94
      Height = 13
      Caption = 'Tipo de Embalagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label149: TLabel
      Left = 16
      Top = 80
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 6
      Top = 6
      Width = 301
      Height = 27
      Align = alTop
      Caption = 'Volume'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object btnSalvarVolume: TBitBtn
      Left = 74
      Top = 132
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 3
      OnClick = btnSalvarVolumeClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancelarVolume: TBitBtn
      Left = 162
      Top = 132
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = btnCancelarVolumeClick
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
    object dbLcbEmbalagem: TDBLookupComboBox
      Left = 48
      Top = 56
      Width = 249
      Height = 21
      DataField = 'TipoEmbalagem'
      DataSource = dsEmbalagem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dsTipoEmb
      ParentFont = False
      TabOrder = 1
    end
    object dbEdtQtd: TDBEdit
      Left = 16
      Top = 96
      Width = 57
      Height = 21
      DataField = 'Quantidade'
      DataSource = dsEmbalagem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = dbEdtQtdKeyPress
    end
    object dbEdtEmbalagem: TDBEdit
      Left = 16
      Top = 56
      Width = 33
      Height = 21
      DataField = 'TipoEmbalagem'
      DataSource = dsEmbalagem
      TabOrder = 0
    end
  end
  object qrProcessos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Tipo, Processos.Codigo_Clien' +
        'te AS refcli, Importadores.Razao_Social AS Cliente, TAB_TIPO_DEC' +
        'LARACAO.Descricao AS tipodecla, Tipos_de_Processos.DESCRICAO AS ' +
        'tipopro, Contratos.Descricao AS qcontrato, Locais_Inventario.Des' +
        'cricao AS qlocal, Importadores.CNPJ_CPF_COMPLETO AS qcnpj, Proce' +
        'ssos.Fechado, Importadores.ATIVO, Processos.Importador, Processo' +
        's.Responsavel_empresa,  Processos.Responsavel_empresac '
      
        'FROM (((((Parametros INNER JOIN Processos ON (Parametros.Empresa' +
        ' = Processos.Empresa) AND (Parametros.Filial = Processos.Filial)' +
        ') LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Em' +
        'presa) AND (Processos.Filial = Importadores.Filial) AND (Process' +
        'os.Importador = Importadores.Codigo)) LEFT JOIN Tipos_de_Process' +
        'os ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TAB_' +
        'TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARAC' +
        'AO.Codigo) LEFT JOIN Contratos ON (Processos.Empresa = Contratos' +
        '.Empresa) AND (Processos.Filial = Contratos.Filial) AND (Process' +
        'os.Importador = Contratos.Importador) AND (Processos.Contrato = ' +
        'Contratos.Contrato)) LEFT JOIN Locais_Inventario ON (Processos.E' +
        'mpresa = Locais_Inventario.Empresa) AND (Processos.Filial = Loca' +
        'is_Inventario.Filial) AND (Processos.Importador = Locais_Inventa' +
        'rio.Importador) AND (Processos.Contrato = Locais_Inventario.Cont' +
        'rato) AND (Processos.Local_Inventario = Locais_Inventario.Local)'
      ''
      'where Processos.Codigo =:Processo'
      'ORDER BY Processos.Codigo')
    Left = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosrefcli: TStringField
      FieldName = 'refcli'
      FixedChar = True
      Size = 60
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 60
    end
    object qrProcessostipodecla: TStringField
      FieldName = 'tipodecla'
      FixedChar = True
      Size = 120
    end
    object qrProcessostipopro: TStringField
      FieldName = 'tipopro'
      FixedChar = True
      Size = 35
    end
    object qrProcessosqcontrato: TStringField
      FieldName = 'qcontrato'
      FixedChar = True
      Size = 50
    end
    object qrProcessosqlocal: TStringField
      FieldName = 'qlocal'
      FixedChar = True
      Size = 250
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      FixedChar = True
      Size = 14
    end
    object qrProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object qrProcessosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qrProcessosResponsavel_empresa: TStringField
      FieldName = 'Responsavel_empresa'
      FixedChar = True
      Size = 10
    end
    object qrProcessosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      FixedChar = True
      Size = 10
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 216
    Top = 16
  end
  object tbConhecimento: TTable
    AutoCalcFields = False
    AfterPost = tbConhecimentoAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Conhecimento_Processo'
    Left = 248
    object tbConhecimentoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbConhecimentoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbConhecimentoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbConhecimentoVia: TStringField
      FieldName = 'Via'
      Size = 1
    end
    object tbConhecimentoMultimodal: TSmallintField
      FieldName = 'Multimodal'
    end
    object tbConhecimentoPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object tbConhecimentoLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object tbConhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object tbConhecimentoTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object tbConhecimentoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object tbConhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object tbConhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object tbConhecimentoLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object tbConhecimentoData: TDateTimeField
      FieldName = 'Data'
    end
    object tbConhecimentoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object tbConhecimentoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object tbConhecimentoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object tbConhecimentoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 50
    end
    object tbConhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object tbConhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object tbConhecimentoAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object tbConhecimentoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object tbConhecimentoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object tbConhecimentoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object tbConhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object tbConhecimentoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object tbConhecimentoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object tbConhecimentoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object tbConhecimentoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object tbConhecimentoOperacao_FUNDAP: TSmallintField
      FieldName = 'Operacao_FUNDAP'
    end
    object tbConhecimentoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object tbConhecimentoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object tbConhecimentoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object tbConhecimentoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object tbConhecimentoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object tbConhecimentoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object tbConhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object tbConhecimentoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object tbConhecimentoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
    object tbConhecimentoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object tbConhecimentoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object dsConhecimentos: TDataSource
    DataSet = tbConhecimento
    Left = 264
    Top = 16
  end
  object dsPais: TDataSource
    DataSet = qrPais
    Left = 312
    Top = 16
  end
  object dsURF: TDataSource
    DataSet = qrURF
    Left = 360
    Top = 16
  end
  object tbConCargas: TTable
    AutoCalcFields = False
    AfterOpen = tbConCargasAfterOpen
    AfterInsert = tbConCargasAfterInsert
    AfterEdit = tbConCargasAfterEdit
    BeforeDelete = tbConCargasBeforeDelete
    AfterDelete = tbConCargasAfterDelete
    AfterScroll = tbConCargasAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Codigo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Concargas'
    Left = 456
    object tbConCargasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbConCargasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbConCargasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbConCargasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tbConCargasTipo_Carga: TStringField
      FieldName = 'Tipo_Carga'
      Size = 4
    end
    object tbConCargasDescricao_tipo: TStringField
      FieldName = 'Descricao_tipo'
      Size = 50
    end
    object tbConCargasLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
  end
  object dsConCargas: TDataSource
    DataSet = tbConCargas
    Left = 472
    Top = 16
  end
  object dsTipoCargas: TDataSource
    DataSet = qrTipoCargas
    Left = 520
    Top = 16
  end
  object tbEmbalagem: TTable
    AutoCalcFields = False
    AfterOpen = tbEmbalagemAfterOpen
    AfterDelete = tbEmbalagemAfterDelete
    AfterScroll = tbEmbalagemAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;TipoEmbalagem'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Embalagem_Processo'
    Left = 608
    object tbEmbalagemEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbEmbalagemFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbEmbalagemProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbEmbalagemTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Size = 2
    end
    object tbEmbalagemDescricaoEmbalagem: TStringField
      FieldName = 'DescricaoEmbalagem'
      Size = 50
    end
    object tbEmbalagemQuantidade: TStringField
      FieldName = 'Quantidade'
      Size = 5
    end
  end
  object dsEmbalagem: TDataSource
    DataSet = tbEmbalagem
    Left = 624
    Top = 16
  end
  object dsTipoEmb: TDataSource
    DataSet = qrTipoEmb
    Left = 672
    Top = 16
  end
  object dsMoedaFrete: TDataSource
    DataSet = qrMoedaFrete
    Left = 192
    Top = 128
  end
  object dsMoedaSeguro: TDataSource
    DataSet = qrMoedaSeguro
    Left = 224
    Top = 192
  end
  object dsMoedaFOB: TDataSource
    DataSet = qrMoedaFOB
    Left = 592
    Top = 192
  end
  object qrPais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_PAIS'
      'ORDER BY DESCRICAO')
    Left = 296
    object qrPaisCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_PAIS.CODIGO'
      Size = 3
    end
    object qrPaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_PAIS.DESCRICAO'
      Size = 120
    end
  end
  object qrURF: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_URF'
      'ORDER BY DESCRICAO')
    Left = 344
    object qrURFCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_URF.CODIGO'
      Size = 7
    end
    object qrURFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_URF.DESCRICAO'
      Size = 120
    end
  end
  object qrTipoCargas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM Tipos_de_Cargas')
    Left = 504
    object qrTipoCargasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_de_Cargas.Codigo'
      Size = 4
    end
    object qrTipoCargasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_de_Cargas.Descricao'
      Size = 50
    end
  end
  object qrTipoEmb: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM TAB_TP_EMBALAGEM')
    Left = 656
    object qrTipoEmbCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.TAB_TP_EMBALAGEM.Codigo'
      Size = 2
    end
    object qrTipoEmbDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.TAB_TP_EMBALAGEM.Descricao'
      Size = 120
    end
  end
  object qrMoedaFrete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_MOEDA'
      'ORDER BY CODIGO')
    Left = 152
    Top = 128
    object qrMoedaFreteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.CODIGO'
      Size = 3
    end
    object qrMoedaFreteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      Size = 120
    end
  end
  object qrMoedaSeguro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_MOEDA'
      'ORDER BY CODIGO')
    Left = 192
    Top = 192
    object qrMoedaSeguroCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.CODIGO'
      Size = 3
    end
    object qrMoedaSeguroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      Size = 120
    end
  end
  object qrMoedaFOB: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_MOEDA'
      'ORDER BY CODIGO')
    Left = 560
    Top = 192
    object qrMoedaFOBCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.CODIGO'
      Size = 3
    end
    object qrMoedaFOBDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      Size = 120
    end
  end
  object qrConCargas: TQuery
    AfterOpen = qrConCargasAfterOpen
    AfterScroll = qrConCargasAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT C.Empresa, C.Filial, C.Processo, C.Codigo, C.Tipo_Carga, ' +
        'T.Descricao, C.Lacre'
      
        'FROM (Parametros AS P INNER JOIN Concargas AS C ON P.Filial = C.' +
        'Filial AND P.Empresa = C.Empresa) INNER JOIN Tipos_de_Cargas AS ' +
        'T ON C.Tipo_Carga = T.Codigo'
      'WHERE C.Processo = :pro')
    Left = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrConCargasEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrConCargasFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrConCargasProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrConCargasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object qrConCargasTipo_Carga: TStringField
      FieldName = 'Tipo_Carga'
      Size = 4
    end
    object qrConCargasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrConCargasLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
  end
  object qrEmbalagem: TQuery
    AfterOpen = qrEmbalagemAfterOpen
    AfterScroll = qrEmbalagemAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT E.Empresa, E.Filial, E.Processo, E.TipoEmbalagem, T.Descr' +
        'icao, E.Quantidade'
      
        'FROM (Parametros AS P INNER JOIN Embalagem_Processo AS E ON P.Fi' +
        'lial = E.Filial AND P.Empresa = E.Empresa) INNER JOIN TAB_TP_EMB' +
        'ALAGEM AS T ON E.TipoEmbalagem = T.Codigo'
      'WHERE E.Processo = :pro')
    Left = 560
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrEmbalagemEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrEmbalagemFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrEmbalagemProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrEmbalagemTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Size = 2
    end
    object qrEmbalagemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object qrEmbalagemQuantidade: TStringField
      FieldName = 'Quantidade'
      Size = 5
    end
  end
  object dsQConCargas: TDataSource
    DataSet = qrConCargas
    Left = 424
    Top = 16
  end
  object dsQEmbalagem: TDataSource
    DataSet = qrEmbalagem
    Left = 576
    Top = 16
  end
  object qrVMLE: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum([I].[VMLE]*[T].Taxa_conversao) AS SomaDoVMLE'
      
        'FROM ((Parametros AS P INNER JOIN Faturas AS F ON (P.Filial = F.' +
        'Filial) AND (P.Empresa = F.Empresa)) INNER JOIN ItensFaturas AS ' +
        'I ON (F.Codigo = I.Fatura) AND (F.Processo = I.Processo) AND (F.' +
        'Filial = I.Filial) AND (F.Empresa = I.Empresa)) INNER JOIN Proce' +
        'ssos_Taxas_Conversao AS T ON (F.Moeda = T.Moeda) AND (F.Processo' +
        ' = T.Processo) AND (F.Filial = T.Filial) AND (F.Empresa = T.Empr' +
        'esa)'
      'GROUP BY F.Processo'
      'HAVING F.Processo = :pro')
    Left = 712
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrVMLESomaDoVMLE: TFloatField
      FieldName = 'SomaDoVMLE'
    end
  end
  object dsVMLE: TDataSource
    DataSet = qrVMLE
    Left = 728
    Top = 17
  end
  object qrTaxa: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT T.Processo, T.Moeda, T.Taxa_conversao, T.Taxa_conversaoc'
      
        'FROM Parametros AS P INNER JOIN Processos_Taxas_Conversao AS T O' +
        'N P.Filial = T.Filial AND P.Empresa = T.Empresa'
      'WHERE T.Processo = :pro AND T.Moeda = :moeda')
    Left = 224
    Top = 129
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'moeda'
        ParamType = ptUnknown
      end>
    object qrTaxaProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Processo'
      Size = 8
    end
    object qrTaxaMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Moeda'
      Size = 3
    end
    object qrTaxaTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversao'
    end
    object qrTaxaTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversaoc'
    end
  end
  object alAtuTabelas: TActionList
    Left = 168
    Top = 25
    object acAtuTabelas: TAction
      Caption = 'acAtuTabelas'
      OnExecute = acAtuTabelasExecute
    end
  end
  object Query1: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Tipo, Processos.Codigo_Clien' +
        'te AS refcli, Importadores.Razao_Social AS Cliente, TAB_TIPO_DEC' +
        'LARACAO.Descricao AS tipodecla, Tipos_de_Processos.DESCRICAO AS ' +
        'tipopro, Contratos.Descricao AS qcontrato, Locais_Inventario.Des' +
        'cricao AS qlocal, Importadores.CNPJ_CPF_COMPLETO AS qcnpj, Proce' +
        'ssos.Fechado, Importadores.ATIVO, Processos.Importador, Processo' +
        's.Responsavel_empresa,  Processos.Responsavel_empresac '
      
        'FROM (((((Parametros INNER JOIN Processos ON (Parametros.Empresa' +
        ' = Processos.Empresa) AND (Parametros.Filial = Processos.Filial)' +
        ') LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Em' +
        'presa) AND (Processos.Filial = Importadores.Filial) AND (Process' +
        'os.Importador = Importadores.Codigo)) LEFT JOIN Tipos_de_Process' +
        'os ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TAB_' +
        'TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARAC' +
        'AO.Codigo) LEFT JOIN Contratos ON (Processos.Empresa = Contratos' +
        '.Empresa) AND (Processos.Filial = Contratos.Filial) AND (Process' +
        'os.Importador = Contratos.Importador) AND (Processos.Contrato = ' +
        'Contratos.Contrato)) LEFT JOIN Locais_Inventario ON (Processos.E' +
        'mpresa = Locais_Inventario.Empresa) AND (Processos.Filial = Loca' +
        'is_Inventario.Filial) AND (Processos.Importador = Locais_Inventa' +
        'rio.Importador) AND (Processos.Contrato = Locais_Inventario.Cont' +
        'rato) AND (Processos.Local_Inventario = Locais_Inventario.Local)'
      ''
      'where Processos.Codigo =:Processo'
      'ORDER BY Processos.Codigo')
    Left = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Data'
    end
    object StringField4: TStringField
      FieldName = 'refcli'
      FixedChar = True
      Size = 60
    end
    object StringField5: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 60
    end
    object StringField6: TStringField
      FieldName = 'tipodecla'
      FixedChar = True
      Size = 120
    end
    object StringField7: TStringField
      FieldName = 'tipopro'
      FixedChar = True
      Size = 35
    end
    object StringField8: TStringField
      FieldName = 'qcontrato'
      FixedChar = True
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'qlocal'
      FixedChar = True
      Size = 250
    end
    object StringField10: TStringField
      FieldName = 'qcnpj'
      FixedChar = True
      Size = 14
    end
    object SmallintField1: TSmallintField
      FieldName = 'Fechado'
    end
    object SmallintField2: TSmallintField
      FieldName = 'ATIVO'
    end
    object StringField11: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object StringField12: TStringField
      FieldName = 'Responsavel_empresa'
      FixedChar = True
      Size = 10
    end
    object StringField13: TStringField
      FieldName = 'Responsavel_empresac'
      FixedChar = True
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
  end
end
