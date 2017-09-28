object f_followcomercial: Tf_followcomercial
  Left = 274
  Top = 145
  BorderStyle = bsSingle
  Caption = 'Follow Up - Comercial'
  ClientHeight = 401
  ClientWidth = 736
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Follow Up - Comercial'
    Color = clMaroon
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
    Width = 736
    Height = 376
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 736
      Height = 326
      Align = alClient
      BorderWidth = 8
      TabOrder = 0
      object dbgControle: TDBGrid
        Left = 9
        Top = 9
        Width = 718
        Height = 253
        Align = alClient
        DataSource = dsControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Filial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numerodoccarga'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numeromaster'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SiglaII'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SiglaIII'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SiglaI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Local'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Peso_Bruto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Chegada_URF_Cheg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_FOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_FOBC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_REGISTRO_DI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_REGISTRO_DIC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_DECLARACAO_IMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_DECLARACAO_IMPC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_DESEMBARACO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_DESEMBARACOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumDias'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumDiasC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiasVencido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Importador'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoDec'
            Visible = True
          end>
      end
      object mmFiltro: TMemo
        Left = 9
        Top = 262
        Width = 718
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
          'PROCESSOS FILTRADOS POR:')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
        Visible = False
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 326
      Width = 736
      Height = 50
      Align = alBottom
      Caption = 'Panel1'
      TabOrder = 1
      object Label5: TLabel
        Left = 8
        Top = 5
        Width = 49
        Height = 13
        Caption = 'Shipments'
      end
      object btnFiltrar: TBitBtn
        Left = 80
        Top = 13
        Width = 129
        Height = 25
        Hint = 'Filtrar Processos'
        Caption = '&Filtrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
        Left = 216
        Top = 13
        Width = 129
        Height = 25
        Hint = 'Localizar Processo'
        Caption = '&Localizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
      object btnFollow: TBitBtn
        Left = 352
        Top = 13
        Width = 129
        Height = 25
        Hint = 'Follow Up Comercial'
        Caption = 'F&ollow'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnFollowClick
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
      object btnImprimir: TBitBtn
        Left = 488
        Top = 13
        Width = 129
        Height = 25
        Hint = 'Imprimir Controle de Follow Up Comercial'
        Caption = '&Imprimir'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
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
      object btnSair: TBitBtn
        Left = 653
        Top = 13
        Width = 75
        Height = 25
        Hint = 'Sair do Controle de Follow Up Comercial'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
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
      object edtTot: TEdit
        Left = 8
        Top = 19
        Width = 49
        Height = 21
        TabStop = False
        Enabled = False
        TabOrder = 0
        Text = 'edtTot'
      end
    end
  end
  object pnlFollow: TPanel
    Left = 26
    Top = 26
    Width = 633
    Height = 294
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object Label4: TLabel
      Left = 16
      Top = 36
      Width = 44
      Height = 13
      Caption = 'Processo'
    end
    object Panel9: TPanel
      Left = 5
      Top = 5
      Width = 623
      Height = 24
      Align = alTop
      Caption = 'Follow Up Comercial - Processo'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel10: TPanel
      Left = 5
      Top = 248
      Width = 623
      Height = 41
      Align = alBottom
      TabOrder = 2
      object btnFechar: TBitBtn
        Left = 536
        Top = 8
        Width = 76
        Height = 25
        Hint = 'Fechar'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnFecharClick
        Kind = bkCancel
      end
      object btnNovo: TBitBtn
        Left = 24
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Novo Follow Comercial'
        Caption = '&Novo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnNovoClick
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
      object btnAlterar: TBitBtn
        Left = 112
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Follow Comercial'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Excluir Follow Comercial'
        Caption = '&Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
    end
    object dbgFollow: TDBGrid
      Left = 16
      Top = 56
      Width = 601
      Height = 185
      DataSource = dsFollow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Sequencial'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hora'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 585
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_ing'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          Width = 93
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 32
      Width = 73
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'Codigo'
      DataSource = dsControle
      Enabled = False
      TabOrder = 0
    end
  end
  object pnlEdicao: TPanel
    Left = 73
    Top = 28
    Width = 615
    Height = 271
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label8: TLabel
      Left = 16
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Descrição'
    end
    object Label9: TLabel
      Left = 312
      Top = 32
      Width = 79
      Height = 13
      Caption = 'Descrição Inglês'
    end
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 605
      Height = 24
      Align = alTop
      Caption = 'Follow Up Comercial - Inclusão / Alteração'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Panel7: TPanel
      Left = 5
      Top = 225
      Width = 605
      Height = 41
      Align = alBottom
      TabOrder = 3
      object btnGravar: TBitBtn
        Left = 216
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Gravar'
        Caption = '&Gravar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnGravarClick
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
      object btnCancelar: TBitBtn
        Left = 316
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Cancelar'
        BiDiMode = bdLeftToRight
        Cancel = True
        Caption = '&Cancelar'
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
    end
    object dbmDesc: TDBMemo
      Left = 16
      Top = 48
      Width = 289
      Height = 169
      DataField = 'Descricao'
      DataSource = dsFol
      TabOrder = 0
    end
    object dbmDescIng: TDBMemo
      Left = 312
      Top = 48
      Width = 289
      Height = 169
      DataField = 'Descricao_ing'
      DataSource = dsFol
      TabOrder = 1
    end
  end
  object pnlFiltrar: TPanel
    Left = 222
    Top = 11
    Width = 425
    Height = 323
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Label6: TLabel
      Left = 16
      Top = 247
      Width = 44
      Height = 13
      Caption = 'Processo'
    end
    object Panel4: TPanel
      Left = 5
      Top = 5
      Width = 415
      Height = 24
      Align = alTop
      Caption = 'Filtrar'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object cbCli: TCheckBox
      Left = 16
      Top = 40
      Width = 89
      Height = 17
      Caption = 'Todos Clientes'
      TabOrder = 0
      OnClick = cbCliClick
    end
    object edtProc: TEdit
      Left = 64
      Top = 243
      Width = 129
      Height = 21
      MaxLength = 8
      TabOrder = 4
    end
    object Panel5: TPanel
      Left = 5
      Top = 277
      Width = 415
      Height = 41
      Align = alBottom
      TabOrder = 6
      object btnOKFilt: TBitBtn
        Left = 124
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Filtrar Processos'
        Caption = '&Filtrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnOKFiltClick
        Kind = bkOK
      end
      object btnCanFil: TBitBtn
        Left = 215
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Cancelar Filtro de Processos'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCanFilClick
        Kind = bkCancel
      end
    end
    object rgProc: TRadioGroup
      Left = 16
      Top = 176
      Width = 177
      Height = 57
      Caption = 'Processos'
      ItemIndex = 0
      Items.Strings = (
        'Desembaraçados por Período'
        'Aguardando Desembaraço')
      TabOrder = 2
      OnClick = rgProcClick
    end
    object gbPeriodo: TGroupBox
      Left = 232
      Top = 176
      Width = 177
      Height = 89
      Caption = 'Período'
      TabOrder = 3
      object Label1: TLabel
        Left = 16
        Top = 28
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label3: TLabel
        Left = 14
        Top = 60
        Width = 19
        Height = 13
        Caption = 'Até:'
      end
      object mePerDe: TMaskEdit
        Left = 40
        Top = 24
        Width = 121
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
        OnChange = mePerDeChange
        OnExit = mePerDeChange
      end
      object mePerAte: TMaskEdit
        Left = 40
        Top = 56
        Width = 121
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnChange = mePerAteChange
        OnExit = mePerAteChange
      end
    end
    object dbgCli: TDBGrid
      Left = 16
      Top = 56
      Width = 393
      Height = 110
      DataSource = dsImport
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
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
          Width = 363
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Visible = True
        end>
    end
    object cb_tipopro: TCheckBox
      Left = 216
      Top = 40
      Width = 193
      Height = 17
      Caption = 'Somente Processos de Importação'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
  end
  object pnlLocalizar: TPanel
    Left = 254
    Top = 62
    Width = 273
    Height = 153
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 5
    Visible = False
    object Label10: TLabel
      Left = 56
      Top = 66
      Width = 44
      Height = 13
      Caption = 'Processo'
    end
    object Panel1: TPanel
      Left = 5
      Top = 5
      Width = 263
      Height = 24
      Align = alTop
      Caption = 'Localizar'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtLoc: TEdit
      Left = 106
      Top = 60
      Width = 119
      Height = 21
      MaxLength = 20
      TabOrder = 1
    end
    object Panel8: TPanel
      Left = 5
      Top = 107
      Width = 263
      Height = 41
      Align = alBottom
      TabOrder = 2
      object btnOKLoc: TBitBtn
        Left = 48
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Localizar Processo'
        Caption = '&Localizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnOKLocClick
        Kind = bkOK
      end
      object btnCanLoc: TBitBtn
        Left = 141
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Cancelar Localização de Processos'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCanLocClick
        Kind = bkCancel
      end
    end
  end
  object q_Controle: TQuery
    AfterOpen = q_ControleAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Empresa, P.Filial, P.Importador, P.Codigo, P.Tipo_Decla' +
        'racao AS TipoDec, CP.Numerodoccarga, CP.Numeromaster, LI.SIGLA A' +
        'S SiglaII, TVT.SIGLA AS SiglaIII, TTD.SIGLA AS SiglaI, CP.Local,' +
        ' CP.Peso_Bruto, CP.Data_Chegada_URF_Cheg, P.Valor_FOB*PTC.Taxa_c' +
        'onversao AS Valor_FOB, P.Valor_FOBC*PTC.Taxa_conversaoc AS Valor' +
        '_FOBC, P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, P.NR_DECLARACAO_IMP,' +
        ' P.NR_DECLARACAO_IMPC, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.DT' +
        '_DESEMBARACO-CP.Data_Chegada_URF_Cheg AS NumDias, P.DT_DESEMBARA' +
        'COC-CP.Data_Chegada_URF_Cheg AS NumDiasC, Date()-CP.Data_Chegada' +
        '_URF_Cheg AS DiasVencido'
      
        'FROM ((Parametros AS PA LEFT JOIN ((((Importadores AS I LEFT JOI' +
        'N Processos AS P ON (I.Empresa = P.Empresa) AND (I.Filial = P.Fi' +
        'lial) AND (I.Codigo = P.Importador)) LEFT JOIN Conhecimento_Proc' +
        'esso AS CP ON (P.Empresa = CP.Empresa) AND (P.Filial = CP.Filial' +
        ') AND (P.Codigo = CP.Processo)) LEFT JOIN TAB_VIA_TRANSPORTE AS ' +
        'TVT ON CP.Via = TVT.Codigo) LEFT JOIN TAB_TIPO_DECLARACAO AS TTD' +
        ' ON P.Tipo_Declaracao = TTD.Codigo) ON (PA.Filial = I.Filial) AN' +
        'D (PA.Empresa = I.Empresa)) LEFT JOIN Processos_Taxas_Conversao ' +
        'AS PTC ON (P.Empresa = PTC.Empresa) AND (P.Filial = PTC.Filial) ' +
        'AND (P.Codigo = PTC.Processo)) LEFT JOIN Locais_Inventario AS LI' +
        ' ON (P.Local_Inventario = LI.Local) AND (P.Contrato = LI.Contrat' +
        'o) AND (P.Importador = LI.Importador) AND (P.Filial = LI.Filial)' +
        ' AND (P.Empresa = LI.Empresa)'
      
        'WHERE (((P.Tipo)="1" Or (P.Tipo)="11" Or (P.Tipo)="12" Or (P.Tip' +
        'o)="13") AND ((PTC.Moeda)="220"))'
      
        'ORDER BY Date()-CP.Data_Chegada_URF_Cheg, P.DT_DESEMBARACO, P.DT' +
        '_DESEMBARACOC, P.Codigo')
    Left = 24
    object q_ControleEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_ControleFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_ControleImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object q_ControleCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object q_ControleTipoDec: TStringField
      FieldName = 'TipoDec'
      Size = 2
    end
    object q_ControleNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object q_ControleNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object q_ControleSiglaII: TStringField
      FieldName = 'SiglaII'
      Size = 4
    end
    object q_ControleSiglaIII: TStringField
      FieldName = 'SiglaIII'
      Size = 4
    end
    object q_ControleSiglaI: TStringField
      FieldName = 'SiglaI'
      Size = 4
    end
    object q_ControleLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object q_ControlePeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object q_ControleData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object q_ControleValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object q_ControleValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object q_ControleDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object q_ControleDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      Size = 8
    end
    object q_ControleNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object q_ControleNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object q_ControleDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object q_ControleDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object q_ControleNumDias: TFloatField
      FieldName = 'NumDias'
    end
    object q_ControleNumDiasC: TFloatField
      FieldName = 'NumDiasC'
    end
    object q_ControleDiasVencido: TFloatField
      FieldName = 'DiasVencido'
    end
  end
  object dsControle: TDataSource
    DataSet = q_Controle
    Left = 40
    Top = 16
  end
  object t_Follow: TTable
    AutoCalcFields = False
    AfterPost = t_FollowAfterPost
    BeforeDelete = t_FollowBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsFollow
    TableName = 'Followup_comercial'
    Left = 120
    object t_FollowEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_FollowFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_FollowProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_FollowSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object t_FollowDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object t_FollowDescricao_ing: TStringField
      FieldName = 'Descricao_ing'
      Size = 255
    end
    object t_FollowData: TDateTimeField
      FieldName = 'Data'
    end
    object t_FollowHora: TDateTimeField
      FieldName = 'Hora'
    end
    object t_FollowUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object q_Follow: TQuery
    AfterOpen = q_FollowAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT F.Empresa, F.Filial, F.Processo, F.Sequencial, F.Descrica' +
        'o, F.Descricao_ing, F.Data, F.Hora, F.Usuario'
      
        'FROM Parametros AS P INNER JOIN Followup_comercial AS F ON P.Fil' +
        'ial = F.Filial AND P.Empresa = F.Empresa'
      'WHERE Processo = :proc'
      'ORDER BY val(F.Sequencial)')
    Left = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object q_FollowEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_FollowFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_FollowProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_FollowSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object q_FollowDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object q_FollowDescricao_ing: TStringField
      FieldName = 'Descricao_ing'
      Size = 255
    end
    object q_FollowData: TDateTimeField
      FieldName = 'Data'
    end
    object q_FollowHora: TDateTimeField
      FieldName = 'Hora'
    end
    object q_FollowUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object dsFollow: TDataSource
    DataSet = q_Follow
    Left = 88
    Top = 16
  end
  object dsFol: TDataSource
    DataSet = t_Follow
    Left = 136
    Top = 16
  end
  object q_Import: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO'
      
        'FROM Parametros AS P INNER JOIN Importadores AS I ON P.Filial = ' +
        'I.Filial AND P.Empresa = I.Empresa'
      'ORDER BY I.Razao_Social')
    Left = 168
    object q_ImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object q_ImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_ImportCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object dsImport: TDataSource
    DataSet = q_Import
    Left = 184
    Top = 16
  end
end
