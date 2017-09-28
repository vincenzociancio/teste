object f_contratos: Tf_contratos
  Left = 270
  Top = 89
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contratos de Admissão Temporária'
  ClientHeight = 643
  ClientWidth = 992
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
      ListField = 'Codigo; razao_social'
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
      Top = -1
      Width = 479
      Height = 578
      Caption = 'Contratos'
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 292
        Width = 33
        Height = 13
        Caption = 'Código'
      end
      object Label2: TLabel
        Left = 71
        Top = 292
        Width = 48
        Height = 13
        Caption = 'Descrição'
      end
      object Label5: TLabel
        Left = 8
        Top = 334
        Width = 71
        Height = 13
        Caption = 'Vigência Inicial'
      end
      object Label6: TLabel
        Left = 148
        Top = 334
        Width = 66
        Height = 13
        Caption = 'Vigência Final'
      end
      object Label18: TLabel
        Left = 278
        Top = 334
        Width = 52
        Height = 13
        Caption = 'Data Baixa'
      end
      object Label19: TLabel
        Left = 409
        Top = 334
        Width = 63
        Height = 13
        Caption = 'Data Prorrog.'
      end
      object Label7: TLabel
        Left = 8
        Top = 378
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object Label4: TLabel
        Left = 7
        Top = 418
        Width = 101
        Height = 13
        Caption = 'Regime Fundamento:'
      end
      object Label8: TLabel
        Left = 250
        Top = 378
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
        Left = 6
        Top = 265
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
        Left = 84
        Top = 265
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
      object btnExcluirCont: TBitBtn
        Left = 162
        Top = 265
        Width = 75
        Height = 25
        Hint = 'Excluir Contrato'
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnExcluirContClick
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
      object btnGravarCont: TBitBtn
        Left = 323
        Top = 264
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
        TabOrder = 4
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
        Left = 400
        Top = 264
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
        TabOrder = 5
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
        Top = 308
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
        TabOrder = 6
      end
      object dbedtVigIni: TDBEdit
        Left = 11
        Top = 350
        Width = 65
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
        TabOrder = 7
        OnChange = dbedtVigIniChange
      end
      object dbedtbai: TDBEdit
        Left = 275
        Top = 350
        Width = 65
        Height = 21
        DataField = 'Data_baixa'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 8
        OnChange = dbedtVigFinChange
      end
      object dbedtpro: TDBEdit
        Left = 407
        Top = 350
        Width = 65
        Height = 21
        DataField = 'Data_prorrogacao'
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
      object dblcbTipoCont: TDBLookupComboBox
        Left = 8
        Top = 393
        Width = 233
        Height = 21
        DataField = 'Tipo'
        DataSource = dsContratos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsTipoContrato
        ParentFont = False
        TabOrder = 10
      end
      object dbc_repetro: TDBCheckBox
        Left = 12
        Top = 462
        Width = 61
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Repetro'
        DataField = 'Repetro'
        DataSource = dsContratos
        Enabled = False
        TabOrder = 11
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = dbc_repetroClick
      end
      object dbcb1: TDBCheckBox
        Left = 110
        Top = 461
        Width = 44
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ativo'
        DataField = 'Ativo'
        DataSource = dsContratos
        Enabled = False
        TabOrder = 12
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object btnImprimir: TBitBtn
        Left = 399
        Top = 544
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
        TabOrder = 13
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
      object rdg_Filtra_Ativos: TRadioGroup
        Left = 240
        Top = 482
        Width = 233
        Height = 47
        Caption = 'Filtro de Impressão'
        Columns = 3
        ItemIndex = 2
        Items.Strings = (
          'Ativos'
          'Não Ativos'
          'Todos')
        TabOrder = 14
      end
      object dbedtVigFin: TDBEdit
        Left = 149
        Top = 350
        Width = 65
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
        TabOrder = 15
        OnChange = dbedtVigFinChange
      end
      object dbedtDescCont: TDBEdit
        Left = 71
        Top = 308
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
        TabOrder = 16
      end
      object dblcbRegimeFundamento: TDBLookupComboBox
        Left = 8
        Top = 434
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
        TabOrder = 17
      end
      object dbedtIN: TDBEdit
        Left = 247
        Top = 394
        Width = 225
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
        TabOrder = 18
      end
      object pnlICMS: TPanel
        Left = 12
        Top = 485
        Width = 213
        Height = 81
        Color = clRed
        Enabled = False
        TabOrder = 19
        Visible = False
        object Label21: TLabel
          Left = 7
          Top = 62
          Width = 95
          Height = 13
          Caption = 'valor da alíquota =>'
        end
        object Label20: TLabel
          Left = 168
          Top = 62
          Width = 8
          Height = 13
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 211
          Height = 56
          Align = alTop
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label22: TLabel
            Left = 8
            Top = 7
            Width = 193
            Height = 41
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'Resolução SEFAZ nº 631 de 14 de Maio de 2013. Resolução válida a' +
              'té 31/12/2016.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
        end
        object dbedtValorICMS: TDBEdit
          Left = 112
          Top = 58
          Width = 51
          Height = 21
          DataField = 'Valor_Icms'
          DataSource = dsContratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object pnlDir: TPanel
    Left = 484
    Top = 0
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
    object l_cliente: TLabel
      Left = 8
      Top = 34
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 58
      Width = 477
      Height = 575
      Caption = 'Locais de Inventário'
      TabOrder = 1
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
      object Label13: TLabel
        Left = 293
        Top = 293
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object Label11: TLabel
        Left = 9
        Top = 336
        Width = 68
        Height = 13
        Caption = 'Processo Adm'
      end
      object Label15: TLabel
        Left = 291
        Top = 335
        Width = 118
        Height = 13
        Caption = 'Nome do Fiel Depositário'
      end
      object Label16: TLabel
        Left = 9
        Top = 376
        Width = 110
        Height = 13
        Caption = 'CPF do Fiel Depositário'
      end
      object Label12: TLabel
        Left = 137
        Top = 374
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object Label14: TLabel
        Left = 294
        Top = 375
        Width = 100
        Height = 13
        Caption = 'Unidade Jurisdicional'
      end
      object Label17: TLabel
        Left = 412
        Top = 374
        Width = 23
        Height = 13
        Caption = 'Sigla'
      end
      object lblObs: TLabel
        Left = 9
        Top = 461
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
      object btnExcluirLoc: TBitBtn
        Left = 168
        Top = 263
        Width = 75
        Height = 25
        Hint = 'Excluir Local de Inventário'
        Caption = 'E&xcluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnExcluirLocClick
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
        TabOrder = 4
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
        TabOrder = 5
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
        TabOrder = 6
      end
      object dbedtDescLoc: TDBEdit
        Left = 70
        Top = 309
        Width = 216
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
        TabOrder = 7
      end
      object dblcbTipoLoc: TDBLookupComboBox
        Left = 287
        Top = 309
        Width = 172
        Height = 21
        DataField = 'Tipo_local'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsTipoLocais
        ParentFont = False
        TabOrder = 8
      end
      object dbedtProcAdm: TDBEdit
        Left = 7
        Top = 350
        Width = 278
        Height = 21
        DataField = 'Processo_Adm'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object dbedtNomeFiel: TDBEdit
        Left = 286
        Top = 350
        Width = 172
        Height = 21
        DataField = 'Fiel_nome'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object dbedtCPFFiel: TDBEdit
        Left = 8
        Top = 391
        Width = 125
        Height = 21
        DataField = 'Fiel_cpf'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object dbedtCNPJ: TDBEdit
        Left = 135
        Top = 391
        Width = 151
        Height = 21
        DataField = 'CNPJ'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object dbedtUnidJur: TDBEdit
        Left = 287
        Top = 390
        Width = 122
        Height = 21
        DataField = 'Unidade_Jur'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object dbedtSigla: TDBEdit
        Left = 411
        Top = 390
        Width = 48
        Height = 21
        DataField = 'SIGLA'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBCB3: TDBCheckBox
        Left = 8
        Top = 423
        Width = 121
        Height = 17
        Hint = 
          'ATENÇÃO! HABILITA ACESSO A RF DE ANGRA A ACOMPANHAR PROCESSOS DE' +
          'STE LOCAL'
        Caption = 'ACESSO RF ANGRA'
        Color = 10514464
        DataField = 'ACESSO_RF_ANGRA'
        DataSource = dsLocais
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dbcb2: TDBCheckBox
        Left = 152
        Top = 425
        Width = 57
        Height = 17
        Caption = 'ATIVO'
        DataField = 'Ativo'
        DataSource = dsLocais
        Enabled = False
        TabOrder = 16
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object btnSair: TBitBtn
      Left = 402
      Top = 589
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
      TabOrder = 0
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
  object q_Import: TQuery
    DatabaseName = 'DBNMSCOMEX'
    FilterOptions = [foNoPartialCompare]
    SQL.Strings = (
      'SELECT * FROM Importadores'
      'WHERE Empresa=:emp AND Filial =:fil'
      'ORDER BY Razao_Social')
    Left = 512
    Top = 496
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
    Left = 512
    Top = 528
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
    Left = 552
    Top = 504
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
    object t_ContratosValor_Icms: TFloatField
      FieldName = 'Valor_Icms'
    end
  end
  object dsContratos: TDataSource
    DataSet = t_Contratos
    Left = 552
    Top = 536
  end
  object t_Locais: TTable
    AfterOpen = t_LocaisAfterScroll
    AfterPost = t_LocaisAfterPost
    BeforeDelete = t_LocaisBeforeDelete
    AfterScroll = t_LocaisAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato'
    MasterFields = 'Empresa;Filial;Importador;Contrato'
    MasterSource = dsContratos
    TableName = 'Locais_Inventario'
    Left = 592
    Top = 496
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
  end
  object dsLocais: TDataSource
    DataSet = t_Locais
    Left = 592
    Top = 536
  end
  object dsTipoContrato: TDataSource
    DataSet = q_TipoContrato
    Left = 632
    Top = 536
  end
  object q_TipoLocais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Tipos_Locais_Inventario')
    Left = 672
    Top = 496
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
    Left = 672
    Top = 536
  end
  object q_TipoContrato: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Tipos_contratos')
    Left = 632
    Top = 496
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
    Left = 720
    Top = 496
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
    Left = 752
    Top = 496
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
    Left = 784
    Top = 496
  end
  object q_uptr: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Processos '
      'SET Processos.Data_vencimento_TR = c.vigencia_final'
      'FROM Processos'
      
        'INNER JOIN Contratos as c ON (c.Contrato = Processos.Contrato) A' +
        'ND (c.Importador = Processos.Importador) AND (c.Filial = Process' +
        'os.Filial) '
      'AND (c.Empresa = Processos.Empresa) '
      'WHERE '
      '((c.Empresa=:qemp) '
      'AND (c.Filial=:qfil) '
      'AND (c.Importador=:qimp) '
      'AND (c.Contrato=:qcon) '
      'AND ((c.Vigencia_final) Is Not Null) '
      'AND (Processos.Numero_TR Is Not Null)'
      'AND (Processos.Numero_TR<>'#39#39'))')
    Left = 720
    Top = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qcon'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_uptr_msdoc: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE    Documentos'
      'SET       Vigencia_final = P.Data_vencimento_TR'
      'FROM         Processos AS P INNER JOIN'
      
        '                      Documentos ON P.Importador = Documentos.Im' +
        'portador AND P.Codigo = Documentos.Processo AND P.Contrato = Doc' +
        'umentos.Contrato'
      'WHERE     '
      '(P.Empresa = :qemp) '
      'AND (P.Filial = :qfil) '
      'AND (P.Importador = :qimp) '
      'AND (P.Contrato = :qcon) '
      'AND (P.Numero_TR IS NOT NULL) '
      'AND (P.Numero_TR <> '#39#39') '
      'AND (Documentos.Tipo_Doc = '#39'PROC'#39') '
      'AND (Documentos.Sub_Tipo_Doc = '#39'11'#39')'#9)
    Left = 749
    Top = 552
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qcon'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_uptr2: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Documentos'
      
        'SET Documentos.Data_renovacao = c.data_prorrogacao, Documentos.s' +
        'tatus = '#39'4'#39
      'FROM Documentos'
      
        'INNER JOIN Processos AS p ON (p.Empresa = Documentos.Empresa) AN' +
        'D (p.Filial = Documentos.Filial) AND (p.Codigo = Documentos.Proc' +
        'esso) AND (p.Importador = Documentos.Importador)'
      
        'INNER JOIN Contratos AS c ON (c.Contrato = p.Contrato) AND (c.Im' +
        'portador = p.Importador) AND (c.Filial = p.Filial) AND (c.Empres' +
        'a = p.Empresa) '
      'WHERE '
      '(c.Empresa=:qemp) '
      'AND (c.Filial=:qfil) '
      'AND (c.Importador=:qimp) '
      'AND (c.Contrato=:qcon)  '
      'AND (Documentos.Tipo_Doc='#39'PROC'#39') '
      'AND (Documentos.Sub_Tipo_Doc='#39'11'#39') '
      
        'AND ((Documentos.Data_baixa Is Null) or (Documentos.Data_baixa='#39 +
        #39'))')
    Left = 781
    Top = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qcon'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_upRepetro: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Repetro SET '
      'REPETRO.Contratos_Descricao = Contratos.Descricao , '
      
        'Repetro.Locais_Inventario_Descricao = Locais_Inventario.Descrica' +
        'o'
      'FROM         Repetro INNER JOIN'
      
        '                      Contratos ON Repetro.Codigo = Contratos.Im' +
        'portador AND Repetro.Contrato = Contratos.Contrato INNER JOIN'
      
        '                      Locais_Inventario ON Repetro.Codigo = Loca' +
        'is_Inventario.Importador AND Repetro.Contrato = Locais_Inventari' +
        'o.Contrato AND '
      '                      Repetro.Local = Locais_Inventario.Local'
      'WHERE     '
      '(REPETRO.Empresa = :qemp) '
      'AND (REPETRO.Filial = :qfil) '
      'AND (REPETRO.CODIGO = :qimp) '
      'AND (REPETRO.Contrato = :qcon) ')
    Left = 557
    Top = 584
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qcon'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_upRepetro_pro: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Repetro SET '
      'repetro.Vigencia_final = '
      
        'case contratos.Data_prorrogacao when '#39#39' then Contratos.Vigencia_' +
        'final'
      
        'else case contratos.Data_prorrogacao when null then Contratos.Vi' +
        'gencia_final'
      '     else contratos.Data_prorrogacao'
      '     end'
      'end     '
      'FROM         Repetro INNER JOIN'
      
        '                      Contratos ON Repetro.Codigo = Contratos.Im' +
        'portador AND Repetro.Contrato = Contratos.Contrato INNER JOIN'
      
        '                      Locais_Inventario ON Repetro.Codigo = Loca' +
        'is_Inventario.Importador AND Repetro.Contrato = Locais_Inventari' +
        'o.Contrato AND '
      '                      Repetro.Local = Locais_Inventario.Local'
      'WHERE'
      ' (REPETRO.Empresa = :qemp) '
      'AND (REPETRO.Filial = :qfil) '
      'AND (REPETRO.CODIGO = :qimp) '
      'AND (REPETRO.Contrato = :qcon) ')
    Left = 661
    Top = 596
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qcon'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object ds_Regime_Fundamento: TDataSource
    DataSet = qr_Regime_Fundamento
    Left = 882
    Top = 505
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
end
