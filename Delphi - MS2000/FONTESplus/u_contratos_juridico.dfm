object f_contratos_juridico: Tf_contratos_juridico
  Left = 286
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contratos de Habilitação ao Repetro'
  ClientHeight = 532
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 59
    BevelOuter = bvNone
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel2: TBevel
      Left = 5
      Top = 304
      Width = 480
      Height = 3
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 9
      Top = 15
      Width = 61
      Height = 13
      Caption = 'Importadores'
    end
    object dbgImport: TDBGrid
      Left = 8
      Top = 21
      Width = 65
      Height = 31
      DataSource = dsImportadores
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnKeyPress = dbgImportKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 300
          Visible = True
        end>
    end
    object dblcbImportadores: TDBLookupComboBox
      Left = 5
      Top = 32
      Width = 476
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'CNPJ_CPF_COMPLETO; razao_social'
      ListFieldIndex = 1
      ListSource = dsImportadores
      ParentFont = False
      TabOrder = 0
      OnClick = dblcbImportadoresClick
    end
  end
  object pnlEsq: TPanel
    Left = 0
    Top = 59
    Width = 484
    Height = 630
    BevelOuter = bvNone
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 5
      Top = -2
      Width = 479
      Height = 467
      Caption = 'Contratos'
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 293
        Width = 33
        Height = 13
        Caption = 'Código'
      end
      object Label2: TLabel
        Left = 71
        Top = 293
        Width = 48
        Height = 13
        Caption = 'Descrição'
      end
      object Label5: TLabel
        Left = 8
        Top = 335
        Width = 71
        Height = 13
        Caption = 'Vigência Inicial'
      end
      object Label6: TLabel
        Left = 129
        Top = 335
        Width = 66
        Height = 13
        Caption = 'Vigência Final'
      end
      object Label4: TLabel
        Left = 7
        Top = 381
        Width = 101
        Height = 13
        Caption = 'Regime Fundamento:'
      end
      object Label8: TLabel
        Left = 266
        Top = 339
        Width = 11
        Height = 13
        Caption = 'IN'
      end
      object dbgContratos: TDBGrid
        Left = 5
        Top = 16
        Width = 468
        Height = 241
        Color = clWhite
        DataSource = dsContratos
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
            FieldName = 'Contrato'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 317
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ativo'
            Visible = True
          end>
      end
      object btnNovoCont: TBitBtn
        Left = 14
        Top = 264
        Width = 75
        Height = 25
        Hint = 'Novo Contrato'
        Caption = '&Novo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnNovoContClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
          0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
          0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
          5555557FFFFF7755555555500000005555555577777775555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
      end
      object btnAlterarCont: TBitBtn
        Left = 108
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Contrato'
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnAlterarContClick
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
      object btnGravarCont: TBitBtn
        Left = 307
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Gravar'
        Caption = '&Gravar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnGravarContClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
      object btnCancelarCont: TBitBtn
        Left = 392
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Cancelar'
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = '&Cancelar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnCancelarContClick
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
      object dbedtContrato: TDBEdit
        Left = 7
        Top = 309
        Width = 65
        Height = 21
        DataField = 'Contrato'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dbedtVigIni: TDBEdit
        Left = 11
        Top = 351
        Width = 84
        Height = 21
        DataField = 'Vigencia_inicial'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
        OnChange = dbedtVigIniChange
      end
      object dbcb1: TDBCheckBox
        Left = 8
        Top = 422
        Width = 44
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ativo'
        DataField = 'Ativo'
        DataSource = dsContratos
        Enabled = False
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object btnImprimir: TBitBtn
        Left = 396
        Top = 431
        Width = 73
        Height = 25
        Hint = 'Imprimir Contratos e Locais de Inventário do Importador'
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
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
      object dbedtVigFin: TDBEdit
        Left = 128
        Top = 351
        Width = 94
        Height = 21
        DataField = 'Vigencia_final'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 9
        OnChange = dbedtVigFinChange
      end
      object dbedtDescCont: TDBEdit
        Left = 71
        Top = 309
        Width = 402
        Height = 21
        DataField = 'Descricao'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object dblcbRegimeFundamento: TDBLookupComboBox
        Left = 8
        Top = 395
        Width = 465
        Height = 21
        DataField = 'Cod_Regime_Fundamento'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'descricao'
        ListSource = ds_Regime_Fundamento
        ParentFont = False
        TabOrder = 11
      end
      object dbedtIN: TDBEdit
        Left = 263
        Top = 350
        Width = 154
        Height = 21
        DataField = 'INs'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
    end
  end
  object pnlDir: TPanel
    Left = 484
    Top = -1
    Width = 534
    Height = 689
    BevelOuter = bvNone
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object GroupBox4: TGroupBox
      Left = 8
      Top = 57
      Width = 477
      Height = 467
      Caption = 'Locais de Inventário'
      TabOrder = 0
      object Label9: TLabel
        Left = 8
        Top = 293
        Width = 33
        Height = 13
        Caption = 'Código'
      end
      object Label10: TLabel
        Left = 74
        Top = 293
        Width = 48
        Height = 13
        Caption = 'Descrição'
      end
      object lblObs: TLabel
        Left = 9
        Top = 349
        Width = 457
        Height = 67
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgLocais: TDBGrid
        Left = 7
        Top = 19
        Width = 462
        Height = 238
        DataSource = dsLocais
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
            FieldName = 'Local'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 319
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ativo'
            Visible = True
          end>
      end
      object btnNovoLoc: TBitBtn
        Left = 8
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Novo Local de Inventário'
        Caption = 'N&ovo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnNovoLocClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
          0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
          0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
          5555557FFFFF7755555555500000005555555577777775555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
      end
      object btnAlterarLoc: TBitBtn
        Left = 88
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Local de Inventário'
        Caption = 'Al&terar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnAlterarLocClick
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
      object btnGravarLoc: TBitBtn
        Left = 321
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Gravar'
        Caption = '&Gravar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnGravarLocClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
      object btnCancelarLoc: TBitBtn
        Left = 397
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Cancelar'
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = '&Cancelar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnCancelarLocClick
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
      object dbedtLocal: TDBEdit
        Left = 7
        Top = 309
        Width = 62
        Height = 21
        DataField = 'Local'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dbedtDescLoc: TDBEdit
        Left = 70
        Top = 309
        Width = 312
        Height = 21
        DataField = 'Descricao'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object dbcb2: TDBCheckBox
        Left = 392
        Top = 313
        Width = 57
        Height = 17
        Caption = 'ATIVO'
        DataField = 'Ativo'
        DataSource = dsLocais
        Enabled = False
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object btnSair: TBitBtn
        Left = 394
        Top = 419
        Width = 75
        Height = 25
        Hint = 'Sair do Cadastro de Contratos de Admissão Temporária'
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
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
    end
  end
  object q_Import: TQuery
    DatabaseName = 'DBNMSCOMEX'
    FilterOptions = [foNoPartialCompare]
    SQL.Strings = (
      'SELECT * FROM Importadores'
      'WHERE Empresa=:emp AND Filial =:fil'
      'ORDER BY Razao_Social')
    Left = 32
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fil'
        ParamType = ptUnknown
      end>
    object q_ImportEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object q_ImportFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object q_ImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object q_ImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object q_ImportPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Importadores.Pais'
      Size = 3
    end
    object q_ImportCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object q_ImportCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Importadores.CGC_CPF'
      Size = 10
    end
    object q_ImportTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Origin = 'DBNMSCOMEX.Importadores.Tipo_Importador'
      Size = 1
    end
    object q_ImportEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Importadores.Endereco'
      Size = 40
    end
    object q_ImportNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Importadores.Numero'
      Size = 6
    end
    object q_ImportComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Importadores.Complemento'
      Size = 21
    end
    object q_ImportBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Importadores.Bairro'
      Size = 25
    end
    object q_ImportCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      Size = 25
    end
    object q_ImportCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Importadores.CEP'
      Size = 10
    end
    object q_ImportUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Importadores.UF'
      Size = 2
    end
    object q_ImportEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Importadores.Estado'
      Size = 25
    end
    object q_ImportInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Importadores.Inscricao_Estadual'
      Size = 15
    end
    object q_ImportBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Importadores.Banco'
      Size = 5
    end
    object q_ImportAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Importadores.Agencia'
      Size = 5
    end
    object q_ImportConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente'
      Size = 8
    end
    object q_ImportConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Registro'
    end
    object q_ImportConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Deposito'
    end
    object q_Importlink: TStringField
      FieldName = 'link'
      Origin = 'DBNMSCOMEX.Importadores.link'
      Size = 50
    end
    object q_ImportCAE: TStringField
      FieldName = 'CAE'
      Origin = 'DBNMSCOMEX.Importadores.CAE'
      Size = 15
    end
    object q_ImportTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Importadores.Telefone'
      Size = 15
    end
    object q_ImportAtivo: TSmallintField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Importadores.Ativo'
    end
    object q_ImportAcesso_WEB_MS: TSmallintField
      FieldName = 'Acesso_WEB_MS'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_MS'
    end
    object q_ImportAcesso_WEB_CLI: TSmallintField
      FieldName = 'Acesso_WEB_CLI'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_CLI'
    end
    object q_ImportAcesso_WEB_REC: TSmallintField
      FieldName = 'Acesso_WEB_REC'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_REC'
    end
    object q_ImportBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      Origin = 'DBNMSCOMEX.Importadores.BASE_ICMS'
    end
  end
  object dsImportadores: TDataSource
    DataSet = q_Import
    Left = 24
    Top = 232
  end
  object t_Contratos: TTable
    AfterOpen = t_ContratosAfterScroll
    AfterPost = t_ContratosAfterPost
    BeforeDelete = t_ContratosBeforeDelete
    AfterScroll = t_ContratosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = dsImportadores
    TableName = 'Contratos'
    Left = 80
    Top = 168
    object t_ContratosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_ContratosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_ContratosImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object t_ContratosContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object t_ContratosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_ContratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object t_ContratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object t_ContratosTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object t_ContratosData_Baixa: TDateTimeField
      FieldName = 'Data_Baixa'
    end
    object t_ContratosData_prorrogacao: TDateTimeField
      FieldName = 'Data_prorrogacao'
    end
    object t_ContratosRepetro: TSmallintField
      FieldName = 'Repetro'
    end
    object t_ContratosAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object t_ContratosCod_Regime_Fundamento: TStringField
      FieldName = 'Cod_Regime_Fundamento'
      Size = 2
    end
    object t_ContratosINs: TStringField
      FieldName = 'INs'
      FixedChar = True
    end
    object t_ContratosSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 5
    end
  end
  object dsContratos: TDataSource
    DataSet = t_Contratos
    Left = 80
    Top = 232
  end
  object t_Locais: TTable
    AfterOpen = t_LocaisAfterScroll
    AfterPost = t_LocaisAfterPost
    BeforeDelete = t_LocaisBeforeDelete
    AfterScroll = t_LocaisAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Setor'
    MasterFields = 'Empresa;Filial;Importador;Contrato;Setor'
    MasterSource = dsContratos
    TableName = 'Locais_Inventario'
    Left = 128
    Top = 168
    object t_LocaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_LocaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_LocaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object t_LocaisContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object t_LocaisLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object t_LocaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object t_LocaisTipo_local: TStringField
      FieldName = 'Tipo_local'
      Size = 4
    end
    object t_LocaisProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 25
    end
    object t_LocaisCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object t_LocaisUnidade_Jur: TStringField
      FieldName = 'Unidade_Jur'
      Size = 7
    end
    object t_LocaisFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object t_LocaisFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
    object t_LocaisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 4
    end
    object t_LocaisAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object t_LocaisCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      FixedChar = True
      Size = 40
    end
    object t_LocaisCodigo_Contabil: TStringField
      FieldName = 'Codigo_Contabil'
      FixedChar = True
      Size = 40
    end
    object t_LocaisACESSO_RF_ANGRA: TIntegerField
      FieldName = 'ACESSO_RF_ANGRA'
    end
    object t_LocaisSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 5
    end
  end
  object dsLocais: TDataSource
    DataSet = t_Locais
    Left = 136
    Top = 240
  end
  object dsTipoContrato: TDataSource
    DataSet = q_TipoContrato
    Left = 176
    Top = 240
  end
  object q_TipoLocais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Tipos_Locais_Inventario')
    Left = 224
    Top = 168
    object q_TipoLocaisCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Locais_Inventario.Codigo'
      Size = 4
    end
    object q_TipoLocaisDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Locais_Inventario.Descricao'
      Size = 50
    end
  end
  object dsTipoLocais: TDataSource
    DataSet = q_TipoLocais
    Left = 224
    Top = 240
  end
  object q_TipoContrato: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Tipos_contratos')
    Left = 176
    Top = 168
    object q_TipoContratoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_contratos.Codigo'
      Size = 1
    end
    object q_TipoContratoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_contratos.Descricao'
      Size = 100
    end
  end
  object q_ProcCont: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT P.Contrato'
      
        'FROM Parametros AS PA INNER JOIN Processos AS P ON PA.Filial = P' +
        '.Filial AND PA.Empresa = P.Empresa'
      'WHERE P.Importador=:imp AND P.Contrato=:cont')
    Left = 272
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptUnknown
      end>
  end
  object q_ProcLoc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT P.Contrato'
      
        'FROM Parametros AS PA INNER JOIN Processos AS P ON PA.Filial = P' +
        '.Filial AND PA.Empresa = P.Empresa'
      'WHERE P.Importador=:imp'
      'AND P.Contrato=:cont'
      'AND P.Local_Inventario=:loc'
      '')
    Left = 320
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'loc'
        ParamType = ptUnknown
      end>
  end
  object q_Teste: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 376
    Top = 168
  end
  object ds_Regime_Fundamento: TDataSource
    DataSet = qr_Regime_Fundamento
    Left = 682
    Top = 417
  end
  object qr_Regime_Fundamento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Regime, Codigo, descricao from TAB_REGIME_FUNDAMENTO '
      'where Regime = 5'
      'order by Descricao')
    Left = 882
    Top = 465
    object qr_Regime_FundamentoRegime: TStringField
      FieldName = 'Regime'
      FixedChar = True
      Size = 1
    end
    object qr_Regime_FundamentoCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 2
    end
    object qr_Regime_Fundamentodescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 120
    end
  end
  object qrCodigo_Contratos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT max(Identificacao) as identificacao'
      '  FROM [MS2000].[dbo].[Contratos]')
    Left = 572
    Top = 160
    object qrCodigo_Contratosidentificacao: TIntegerField
      FieldName = 'identificacao'
    end
  end
  object qrUPSetor_Contrato: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Update Contratos set setor = '#39'JUR'#39' '
      'where contrato = :cont and Importador = :imp')
    Left = 660
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cont'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imp'
        ParamType = ptUnknown
      end>
  end
  object qrCodigo_locais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select contrato , local from Locais_Inventario  '
      'where contrato = :cont and Importador = :imp and local = :loc')
    Left = 572
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'loc'
        ParamType = ptUnknown
      end>
    object qrCodigo_locaiscontrato: TStringField
      FieldName = 'contrato'
      FixedChar = True
      Size = 8
    end
    object qrCodigo_locaislocal: TStringField
      FieldName = 'local'
      FixedChar = True
      Size = 4
    end
  end
  object qrUpSetor_local: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' Update Locais_Inventario set setor = '#39'JUR'#39' '
      'where contrato = :cont and Importador = :imp and local = :loc')
    Left = 660
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cont'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loc'
        ParamType = ptUnknown
      end>
  end
end
