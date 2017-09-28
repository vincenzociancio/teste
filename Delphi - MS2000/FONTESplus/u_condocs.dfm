object f_condocs: Tf_condocs
  Left = 317
  Top = 212
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Validade de Documentos'
  ClientHeight = 439
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Validade de Documentos'
    Color = 10514464
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 25
    Width = 751
    Height = 414
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    Color = clGray
    TabOrder = 1
    object Label12: TLabel
      Left = 8
      Top = 374
      Width = 60
      Height = 13
      Caption = 'Documentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnFiltrar: TBitBtn
      Left = 90
      Top = 381
      Width = 107
      Height = 25
      Hint = 'Filtrar Documentos'
      Caption = '&Filtrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnFiltrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
        00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
        00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
        03FF33337FFF77777333333300000333333F3333777773333333}
      NumGlyphs = 2
    end
    object btnLocalizar: TBitBtn
      Left = 202
      Top = 381
      Width = 107
      Height = 25
      Hint = 'Localizar Documento pelo N�mero'
      Caption = '&Localizar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnLocalizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 314
      Top = 381
      Width = 107
      Height = 25
      Hint = 'Alterar datas e status do Documento'
      Caption = '&Alterar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
    object btnSair: TBitBtn
      Left = 668
      Top = 381
      Width = 75
      Height = 25
      Hint = 'Sair do Controle de Validade de Documentos'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnSairClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object btnImprimir: TBitBtn
      Left = 426
      Top = 381
      Width = 107
      Height = 25
      Hint = 'Imprimir Controle de Validade de Documentos'
      Caption = '&Imprimir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object edtTot: TEdit
      Left = 8
      Top = 387
      Width = 60
      Height = 21
      TabStop = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 735
      Height = 363
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 0
      object dbgDoc: TDBGrid
        Left = 0
        Top = 37
        Width = 735
        Height = 199
        Align = alClient
        DataSource = dsDoc
        FixedColor = 10514464
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Processo'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero_Doc'
            Title.Caption = 'N�mero do Documento'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vigencia_inicial'
            Title.Caption = 'Vig�ncia Inicial'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vigencia_final'
            Title.Caption = 'Vig�ncia Final'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_baixa'
            Title.Caption = 'Data de Baixa'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_renovacao'
            Title.Caption = 'Data de Prorroga��o'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_2'
            Title.Caption = 'Status'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Tipo'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_1'
            Title.Caption = 'Sub Tipo'
            Width = 418
            Visible = True
          end>
      end
      object mmFiltro: TMemo
        Left = 0
        Top = 308
        Width = 735
        Height = 55
        TabStop = False
        Align = alBottom
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'DOCUMENTOS FILTRADOS POR:')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        Visible = False
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 735
        Height = 37
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label13: TLabel
          Left = 0
          Top = 0
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object dbLcbCliente: TDBLookupComboBox
          Left = 0
          Top = 13
          Width = 735
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Importador'
          DataSource = dsDoc
          Enabled = False
          KeyField = 'Codigo'
          ListField = 'Razao_Social'
          ListSource = dsImport
          TabOrder = 0
          TabStop = False
        end
      end
      object dbgpro: TDBGrid
        Left = 0
        Top = 252
        Width = 735
        Height = 56
        Align = alBottom
        DataSource = dsprocessos
        FixedColor = 10514464
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NR_DECLARACAO_IMP'
            Title.Caption = 'DI'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero_RCR'
            Title.Caption = 'N� RCR'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_VAL_II'
            Title.Caption = 'Valor (R$) II'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_VAL_IPI'
            Title.Caption = 'Valor (R$) IPI'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_VAL_PIS'
            Title.Caption = 'Valor (R$) PIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_VAL_COFINS'
            Title.Caption = 'Valor (R$) Cofins'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_fiador_GAR'
            Title.Caption = 'Fiador'
            Width = 360
            Visible = True
          end>
      end
      object ppro: TPanel
        Left = 0
        Top = 236
        Width = 735
        Height = 16
        Align = alBottom
        Caption = 'Informa��es referentes ao controle de Termos de Responsabilidade'
        Color = 10514464
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object btnImprimirTR: TBitBtn
      Left = 538
      Top = 381
      Width = 107
      Height = 25
      Hint = 'Imprimir Controle de Validade de Documentos'
      Caption = '&Imprimir Rel TR'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnImprimirTRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object pnlLocalizar: TPanel
    Left = 728
    Top = 24
    Width = 273
    Height = 137
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    Color = clGray
    TabOrder = 3
    Visible = False
    object Label10: TLabel
      Left = 24
      Top = 58
      Width = 95
      Height = 13
      Caption = 'N�mero Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel6: TPanel
      Left = 5
      Top = 5
      Width = 263
      Height = 24
      Align = alTop
      Caption = 'Localizar'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtDoc: TEdit
      Left = 122
      Top = 52
      Width = 119
      Height = 21
      MaxLength = 20
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 5
      Top = 91
      Width = 263
      Height = 41
      Align = alBottom
      Color = clGray
      TabOrder = 2
      object btnOKLoc: TBitBtn
        Left = 48
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Localizar Documento'
        Caption = '&Localizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnOKLocClick
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
      object btnCanLoc: TBitBtn
        Left = 141
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Cancelar Localiza��o de Documento'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCanLocClick
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
    end
  end
  object pnlAlterar: TPanel
    Left = 24
    Top = 84
    Width = 617
    Height = 241
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    Color = clGray
    TabOrder = 4
    Visible = False
    object Label6: TLabel
      Left = 16
      Top = 40
      Width = 71
      Height = 13
      Caption = 'Vig�ncia Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 368
      Top = 40
      Width = 30
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 104
      Top = 40
      Width = 66
      Height = 13
      Caption = 'Vig�ncia Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 192
      Top = 40
      Width = 67
      Height = 13
      Caption = 'Data da Baixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 280
      Top = 40
      Width = 84
      Height = 13
      Caption = 'Data Prorroga��o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel9: TPanel
      Left = 5
      Top = 5
      Width = 607
      Height = 24
      Align = alTop
      Caption = 'Alterar '
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dblcbStatusAlt: TDBLookupComboBox
      Left = 368
      Top = 56
      Width = 233
      Height = 21
      DataField = 'status'
      DataSource = dsDocumentos
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsStatus
      TabOrder = 1
    end
    object Panel10: TPanel
      Left = 5
      Top = 211
      Width = 607
      Height = 25
      Align = alBottom
      Color = clGray
      TabOrder = 2
      object btnOKAlt: TBitBtn
        Left = 436
        Top = 2
        Width = 75
        Height = 25
        Hint = 'Alterar Documento'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnOKAltClick
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
      object btnCanAlt: TBitBtn
        Left = 528
        Top = 1
        Width = 75
        Height = 25
        Hint = 'Cancelar Altera��o do Documento'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCanAltClick
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
    end
    object dbedtVigIni: TDBEdit
      Left = 16
      Top = 56
      Width = 81
      Height = 21
      DataField = 'Vigencia_inicial'
      DataSource = dsDocumentos
      TabOrder = 3
      OnChange = dbedtVigIniChange
      OnExit = dbedtVigIniExit
    end
    object dbedtVigFin: TDBEdit
      Left = 104
      Top = 56
      Width = 81
      Height = 21
      DataField = 'Vigencia_final'
      DataSource = dsDocumentos
      TabOrder = 4
      OnChange = dbedtVigFinChange
    end
    object dbedtDtBaixa: TDBEdit
      Left = 192
      Top = 56
      Width = 81
      Height = 21
      DataField = 'data_baixa'
      DataSource = dsDocumentos
      TabOrder = 5
      OnChange = dbedtDtBaixaChange
      OnExit = dbedtDtBaixaExit
    end
    object dbedtDtRenov: TDBEdit
      Left = 280
      Top = 56
      Width = 81
      Height = 21
      DataField = 'data_renovacao'
      DataSource = dsDocumentos
      TabOrder = 6
      OnChange = dbedtDtRenovChange
      OnExit = dbedtDtRenovExit
    end
    object paltpro: TPanel
      Left = 5
      Top = 79
      Width = 607
      Height = 132
      Align = alBottom
      Color = clGray
      TabOrder = 7
      object Label16: TLabel
        Left = 11
        Top = 32
        Width = 11
        Height = 13
        Caption = 'DI'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 102
        Top = 32
        Width = 38
        Height = 13
        Caption = 'N� RCR'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 11
        Top = 109
        Width = 29
        Height = 13
        Caption = 'Fiador'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 235
        Top = 32
        Width = 56
        Height = 13
        Caption = 'Valor (R$) II'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 319
        Top = 32
        Width = 63
        Height = 13
        Caption = 'Valor (R$) IPI'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 402
        Top = 32
        Width = 67
        Height = 13
        Caption = 'Valor (R$) PIS'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 483
        Top = 32
        Width = 89
        Height = 13
        Caption = 'Valor (R$) COFINS'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 12
        Top = 83
        Width = 55
        Height = 13
        Caption = 'Seguradora'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 11
        Top = 48
        Width = 87
        Height = 21
        DataField = 'NR_DECLARACAO_IMP'
        DataSource = dsprocessos
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 102
        Top = 48
        Width = 130
        Height = 21
        DataField = 'Numero_RCR'
        DataSource = dsprocessos
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 48
        Top = 101
        Width = 546
        Height = 21
        DataField = 'nome_fiador_GAR'
        DataSource = dsprocessos
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 235
        Top = 48
        Width = 80
        Height = 21
        DataField = 'TR_VAL_II'
        DataSource = dsprocessos
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 317
        Top = 48
        Width = 80
        Height = 21
        DataField = 'TR_VAL_IPI'
        DataSource = dsprocessos
        TabOrder = 5
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 605
        Height = 16
        Align = alTop
        Caption = 
          'Alterar - Informa��es referentes ao controle de Termos de Respon' +
          'sabilidade'
        Color = 10514464
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 400
        Top = 48
        Width = 80
        Height = 21
        DataField = 'TR_VAL_PIS'
        DataSource = dsprocessos
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 482
        Top = 48
        Width = 80
        Height = 21
        DataField = 'TR_VAL_COFINS'
        DataSource = dsprocessos
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 75
        Top = 77
        Width = 518
        Height = 21
        DataField = 'Nome_seguradora_GAR'
        DataSource = dsprocessos
        TabOrder = 2
      end
    end
  end
  object pnlFiltrar: TPanel
    Left = 616
    Top = 21
    Width = 425
    Height = 392
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    Color = clGray
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 72
      Top = 68
      Width = 37
      Height = 13
      Caption = 'Clientes'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 72
      Top = 188
      Width = 79
      Height = 13
      Caption = 'Tipo Documento'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 72
      Top = 228
      Width = 101
      Height = 13
      Caption = 'Sub Tipo Documento'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 72
      Top = 268
      Width = 30
      Height = 13
      Caption = 'Status'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 47
      Width = 44
      Height = 13
      Caption = 'Processo'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 72
      Top = 108
      Width = 45
      Height = 13
      Caption = 'Contratos'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 72
      Top = 148
      Width = 96
      Height = 13
      Caption = 'Locais de Invent�rio'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 175
      Top = 281
      Width = 38
      Height = 13
      Caption = 'Per�odo'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label24: TLabel
      Left = 175
      Top = 322
      Width = 74
      Height = 13
      Caption = 'Vencimento de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 322
      Top = 321
      Width = 15
      Height = 13
      Caption = 'at�'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label26: TLabel
      Left = 328
      Top = 260
      Width = 40
      Height = 13
      Caption = 'Fiadores'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 415
      Height = 24
      Align = alTop
      Caption = 'Filtrar'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object dblcbCli: TDBLookupComboBox
      Left = 72
      Top = 84
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsImport
      TabOrder = 2
      OnClick = dblcbCliClick
    end
    object dblcbTipo: TDBLookupComboBox
      Left = 72
      Top = 204
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = dsTipo
      TabOrder = 4
      OnClick = dblcbTipoClick
    end
    object cbTipo: TCheckBox
      Left = 16
      Top = 206
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = cbTipoClick
    end
    object dblcbSubTipo: TDBLookupComboBox
      Left = 72
      Top = 244
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListSource = dsSubTipo
      TabOrder = 6
    end
    object cbSubTipo: TCheckBox
      Left = 16
      Top = 246
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 5
      OnClick = cbSubTipoClick
    end
    object dblcbStatusFil: TDBLookupComboBox
      Left = 72
      Top = 284
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsStatus
      TabOrder = 8
    end
    object cbStatus: TCheckBox
      Left = 16
      Top = 286
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 7
      OnClick = cbStatusClick
    end
    object Panel4: TPanel
      Left = 5
      Top = 346
      Width = 415
      Height = 41
      Align = alBottom
      Color = clGray
      TabOrder = 10
      object btnOKFilt: TBitBtn
        Left = 128
        Top = 8
        Width = 71
        Height = 25
        Hint = 'Filtrar Documentos'
        Caption = '&Filtrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnOKFiltClick
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
      object btnCanFil: TBitBtn
        Left = 215
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Cancelar Filtro de Documentos'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCanFilClick
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
    end
    object cbcon: TCheckBox
      Left = 16
      Top = 126
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 11
      OnClick = cbconClick
    end
    object dblcbcon: TDBLookupComboBox
      Left = 72
      Top = 124
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Contrato'
      ListField = 'Descricao'
      ListSource = ds_qcontratos
      TabOrder = 12
      OnClick = dblcbconClick
    end
    object cbloc: TCheckBox
      Left = 16
      Top = 166
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 13
      OnClick = cblocClick
    end
    object dblcbloc: TDBLookupComboBox
      Left = 72
      Top = 164
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Local'
      ListField = 'Descricao'
      ListSource = ds_locais
      TabOrder = 14
    end
    object me_dataini: TMaskEdit
      Left = 252
      Top = 313
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 15
      Text = '  /  /    '
    end
    object me_datafin: TMaskEdit
      Left = 344
      Top = 313
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 16
      Text = '  /  /    '
    end
    object cbfiadores: TCheckBox
      Left = 272
      Top = 278
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 17
      Visible = False
      OnClick = cbfiadoresClick
    end
    object dblcbfiadores: TDBLookupComboBox
      Left = 328
      Top = 276
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'fiador'
      ListField = 'fiador'
      ListSource = ds_fiadores
      TabOrder = 18
      Visible = False
    end
    object cbCli: TCheckBox
      Left = 16
      Top = 88
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = cbCliClick
    end
    object edtProc: TMaskEdit
      Left = 71
      Top = 42
      Width = 62
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
    end
  end
  object dsDocumentos: TDataSource
    DataSet = t_Documentos
    Left = 48
    Top = 528
  end
  object q_Tipo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT codigo, descricao'
      'FROM Tipo_Documentos')
    Left = 296
    Top = 464
    object q_Tipocodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Tipo_Documentos.codigo'
      Size = 4
    end
    object q_Tipodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Tipo_Documentos.descricao'
      Size = 50
    end
  end
  object q_SubTipo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Tipo_doc, codigo, Descricao'
      'FROM Sub_Tipo_Documentos')
    Left = 368
    Top = 464
    object q_SubTipoTipo_doc: TStringField
      FieldName = 'Tipo_doc'
      Origin = 'DBNMSCOMEX.Sub_Tipo_Documentos.Tipo_doc'
      Size = 4
    end
    object q_SubTipocodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Sub_Tipo_Documentos.codigo'
      Size = 4
    end
    object q_SubTipoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Sub_Tipo_Documentos.Descricao'
      Size = 70
    end
  end
  object q_Status: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM Tipos_status_documentos')
    Left = 456
    Top = 464
    object q_StatusCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.Tipos_status_documentos.CODIGO'
      Size = 2
    end
    object q_StatusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.Tipos_status_documentos.DESCRICAO'
      Size = 100
    end
  end
  object dsTipo: TDataSource
    DataSet = q_Tipo
    Left = 296
    Top = 528
  end
  object dsSubTipo: TDataSource
    DataSet = q_SubTipo
    Left = 368
    Top = 528
  end
  object dsStatus: TDataSource
    DataSet = q_Status
    Left = 456
    Top = 536
  end
  object q_Import: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.empresa, I.filial,I.Codigo, I.Razao_Social, I.CNPJ_CPF_' +
        'COMPLETO'
      
        'FROM Parametros AS P INNER JOIN Importadores AS I ON P.Filial = ' +
        'I.Filial AND P.Empresa = I.Empresa'
      'WHERE I.Codigo NOT IN ('#39'X111'#39','#39'X000'#39')'
      'ORDER BY I.Razao_Social')
    Left = 224
    Top = 464
    object q_Importempresa: TStringField
      FieldName = 'empresa'
      FixedChar = True
      Size = 4
    end
    object q_Importfilial: TStringField
      FieldName = 'filial'
      FixedChar = True
      Size = 4
    end
    object q_ImportCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object q_ImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_ImportCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object dsImport: TDataSource
    DataSet = q_Import
    Left = 216
    Top = 528
  end
  object q_Doc: TQuery
    AfterOpen = q_DocAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT D.Empresa, D.Filial, D.Importador, D.Processo, D.contrato' +
        ', D.local, D.Tipo_Doc, TD.descricao, D.Sub_Tipo_Doc, STD.Descric' +
        'ao, D.Numero_Doc, D.Pagina, D.Codigo, D.Vigencia_inicial, D.Vige' +
        'ncia_final, D.Data_baixa, D.Data_renovacao, D.Status, TSD.DESCRI' +
        'CAO'
      
        'FROM ((Documentos AS D LEFT JOIN Tipo_Documentos AS TD ON D.Tipo' +
        '_Doc = TD.codigo) LEFT JOIN Sub_Tipo_Documentos AS STD ON (D.Tip' +
        'o_Doc = STD.Tipo_doc) AND (D.Sub_Tipo_Doc = STD.codigo)) LEFT JO' +
        'IN Tipos_status_documentos AS TSD ON D.Status = TSD.CODIGO'
      'WHERE D.Pagina = '#39'1'#39)
    Left = 536
    Top = 464
    object q_DocEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_DocFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_DocImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object q_DocProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_Doccontrato: TStringField
      FieldName = 'contrato'
      FixedChar = True
      Size = 8
    end
    object q_Doclocal: TStringField
      FieldName = 'local'
      FixedChar = True
      Size = 4
    end
    object q_DocTipo_Doc: TStringField
      FieldName = 'Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object q_Docdescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 50
    end
    object q_DocSub_Tipo_Doc: TStringField
      FieldName = 'Sub_Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object q_DocDescricao_1: TStringField
      FieldName = 'Descricao_1'
      FixedChar = True
      Size = 70
    end
    object q_DocNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      FixedChar = True
      Size = 30
    end
    object q_DocPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object q_DocCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 11
    end
    object q_DocVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object q_DocVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object q_DocData_baixa: TDateTimeField
      FieldName = 'Data_baixa'
    end
    object q_DocData_renovacao: TDateTimeField
      FieldName = 'Data_renovacao'
    end
    object q_DocStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object q_DocDESCRICAO_2: TStringField
      FieldName = 'DESCRICAO_2'
      FixedChar = True
      Size = 100
    end
  end
  object dsDoc: TDataSource
    DataSet = q_Doc
    Left = 536
    Top = 536
  end
  object q_UpdateDoc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 616
    Top = 464
  end
  object t_Documentos: TTable
    AfterScroll = t_DocumentosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    MasterFields = 'Codigo'
    MasterSource = dsDoc
    TableName = 'Documentos'
    Left = 48
    Top = 464
    object t_DocumentosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_DocumentosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_DocumentosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object t_DocumentosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_DocumentosTipo_Doc: TStringField
      FieldName = 'Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object t_DocumentosSub_Tipo_Doc: TStringField
      FieldName = 'Sub_Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object t_DocumentosNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      FixedChar = True
      Size = 30
    end
    object t_DocumentosPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object t_DocumentosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 11
    end
    object t_DocumentosArquivo: TStringField
      FieldName = 'Arquivo'
      FixedChar = True
      Size = 11
    end
    object t_Documentosftp: TIntegerField
      FieldName = 'ftp'
    end
    object t_DocumentosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object t_DocumentosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object t_DocumentosObservacoes: TStringField
      FieldName = 'Observacoes'
      FixedChar = True
      Size = 255
    end
    object t_DocumentosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object t_DocumentosLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 4
    end
    object t_DocumentosData_inclusao: TDateTimeField
      FieldName = 'Data_inclusao'
    end
    object t_DocumentosData_baixa: TDateTimeField
      FieldName = 'Data_baixa'
    end
    object t_DocumentosData_renovacao: TDateTimeField
      FieldName = 'Data_renovacao'
    end
    object t_DocumentosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object t_DocumentosData_envio: TDateTimeField
      FieldName = 'Data_envio'
    end
    object t_Documentosusuario_dig: TStringField
      FieldName = 'usuario_dig'
      FixedChar = True
      Size = 10
    end
  end
  object t_processos: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsDocumentos
    TableName = 'Processos'
    Left = 136
    Top = 464
    object t_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_processosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_processosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object t_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object t_processosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object t_processosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      Size = 60
    end
    object t_processosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
    object t_processosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object t_processosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object t_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object t_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object t_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object t_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object t_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object t_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object t_processosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object t_processosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object t_processosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object t_processosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object t_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object t_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object t_processosIN_MOEDA_UNICA: TSmallintField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object t_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object t_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object t_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object t_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object t_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object t_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object t_processosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object t_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object t_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object t_processosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object t_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object t_processosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object t_processosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object t_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object t_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 50
    end
    object t_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object t_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object t_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 50
    end
    object t_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object t_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 50
    end
    object t_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object t_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 50
    end
    object t_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 18
    end
    object t_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 200
    end
    object t_processosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object t_processosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object t_processosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object t_processosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object t_processosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      Size = 10
    end
    object t_processosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object t_processosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object t_processosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      Size = 8
    end
    object t_processosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      Size = 8
    end
    object t_processosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      Size = 8
    end
    object t_processosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object t_processosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object t_processosCanalC: TStringField
      FieldName = 'CanalC'
      Size = 1
    end
    object t_processosFiscalC: TStringField
      FieldName = 'FiscalC'
    end
    object t_processosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      Size = 1
    end
    object t_processosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object t_processosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object t_processosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object t_processosident_meio1: TStringField
      FieldName = 'ident_meio1'
      Size = 100
    end
    object t_processosident_meio2: TStringField
      FieldName = 'ident_meio2'
      Size = 100
    end
    object t_processosCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object t_processosCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object t_processosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object t_processosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object t_processosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      Size = 5
    end
    object t_processosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object t_processosUrgente: TSmallintField
      FieldName = 'Urgente'
    end
    object t_processosconsolidado: TSmallintField
      FieldName = 'consolidado'
    end
    object t_processosPag_proporcional: TSmallintField
      FieldName = 'Pag_proporcional'
    end
    object t_processosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object t_processosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object t_processosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object t_processosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object t_processosDDE: TStringField
      FieldName = 'DDE'
      Size = 30
    end
    object t_processosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 30
    end
    object t_processosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object t_processosFaturado: TSmallintField
      FieldName = 'Faturado'
    end
    object t_processosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object t_processosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 4
    end
    object t_processosProcurador2: TStringField
      FieldName = 'Procurador2'
      Size = 4
    end
    object t_processosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object t_processosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object t_processosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      Size = 100
    end
    object t_processosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      Size = 10
    end
    object t_processosvinc_processo: TSmallintField
      FieldName = 'vinc_processo'
    end
    object t_processosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      Size = 8
    end
  end
  object dsprocessos: TDataSource
    DataSet = t_processos
    Left = 136
    Top = 528
  end
  object t_locais: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato'
    MasterFields = 'Empresa;Filial;Importador;Contrato'
    MasterSource = ds_qcontratos
    TableName = 'Locais_Inventario'
    Left = 792
    Top = 471
    object t_locaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_locaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_locaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object t_locaisContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object t_locaisLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object t_locaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object t_locaisTipo_local: TStringField
      FieldName = 'Tipo_local'
      Size = 4
    end
    object t_locaisProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 25
    end
    object t_locaisCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object t_locaisUnidade_Jur: TStringField
      FieldName = 'Unidade_Jur'
      Size = 7
    end
    object t_locaisFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object t_locaisFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
    object t_locaisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 4
    end
    object t_locaisAtivo: TSmallintField
      FieldName = 'Ativo'
    end
  end
  object ds_locais: TDataSource
    DataSet = t_locais
    Left = 792
    Top = 536
  end
  object q_fiadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Processos.Importador, Trim([nome_fiador_GAR]) AS fiador'
      'FROM Processos'
      'GROUP BY Processos.Importador, Trim([nome_fiador_GAR])'
      
        'HAVING (((Processos.Importador) Like :qfia) AND ((Trim([nome_fia' +
        'dor_GAR])) Is Not Null And (Trim([nome_fiador_GAR]))<>""))'
      'ORDER BY Processos.Importador, Trim([nome_fiador_GAR]);')
    Left = 704
    Top = 468
    ParamData = <
      item
        DataType = ftString
        Name = 'qfia'
        ParamType = ptUnknown
      end>
    object q_fiadoresImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object q_fiadoresfiador: TStringField
      FieldName = 'fiador'
      FixedChar = True
      Size = 50
    end
  end
  object ds_fiadores: TDataSource
    DataSet = q_fiadores
    Left = 704
    Top = 536
  end
  object q_contratos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Importador, Contrato, Descricao, Vigenci' +
        'a_inicial, Vigencia_final, Tipo, Data_Baixa, Data_prorrogacao, R' +
        'epetro, Ativo'
      'FROM Contratos'
      'WHERE Empresa = '#39'1'#39
      'AND Filial = '#39'RJO'#39
      'AND Importador = :p1')
    Left = 888
    Top = 469
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object q_contratosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Contratos.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_contratosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Contratos.Filial'
      FixedChar = True
      Size = 4
    end
    object q_contratosImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Contratos.Importador'
      FixedChar = True
      Size = 4
    end
    object q_contratosContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'DBNMSCOMEX.Contratos.Contrato'
      FixedChar = True
      Size = 8
    end
    object q_contratosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contratos.Descricao'
      FixedChar = True
      Size = 50
    end
    object q_contratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
      Origin = 'DBNMSCOMEX.Contratos.Vigencia_inicial'
    end
    object q_contratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
      Origin = 'DBNMSCOMEX.Contratos.Vigencia_final'
    end
    object q_contratosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Contratos.Tipo'
      FixedChar = True
      Size = 1
    end
    object q_contratosData_Baixa: TDateTimeField
      FieldName = 'Data_Baixa'
      Origin = 'DBNMSCOMEX.Contratos.Data_Baixa'
    end
    object q_contratosData_prorrogacao: TDateTimeField
      FieldName = 'Data_prorrogacao'
      Origin = 'DBNMSCOMEX.Contratos.Data_prorrogacao'
    end
    object q_contratosRepetro: TIntegerField
      FieldName = 'Repetro'
      Origin = 'DBNMSCOMEX.Contratos.Repetro'
    end
    object q_contratosAtivo: TIntegerField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Contratos.Ativo'
    end
  end
  object ds_qcontratos: TDataSource
    DataSet = q_contratos
    Left = 888
    Top = 536
  end
end
