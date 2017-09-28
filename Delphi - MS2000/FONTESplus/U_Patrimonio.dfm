object F_Patrimonio: TF_Patrimonio
  Left = 6
  Top = 50
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Patrimônio'
  ClientHeight = 490
  ClientWidth = 769
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
  object pnlPrinc: TPanel
    Left = 0
    Top = 25
    Width = 769
    Height = 465
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 8
    Color = 10514464
    TabOrder = 1
    object pnlMenu: TPanel
      Left = 8
      Top = 408
      Width = 753
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Label18: TLabel
        Left = 49
        Top = 8
        Width = 54
        Height = 13
        Caption = 'Patrimônios'
      end
      object btnIncluir: TBitBtn
        Left = 116
        Top = 17
        Width = 75
        Height = 25
        Hint = 'Incluir patrimônio'
        Caption = '&Incluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnIncluirClick
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
        Left = 204
        Top = 17
        Width = 75
        Height = 25
        Hint = 'Alterar dados do patrimônio'
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
        Left = 292
        Top = 17
        Width = 75
        Height = 25
        Hint = 'Excluir patrimônio'
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
      object btnLocalizar: TBitBtn
        Left = 380
        Top = 17
        Width = 75
        Height = 25
        Hint = 'Localizar patrimônio'
        Caption = '&Localizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnLocalizarClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888800000888880000080F000888880F00080F000888880F
          0008000000080000000800F000000F00000800F000800F00000800F000800F00
          00088000000000000088880F00080F0008888800000800000888888000888000
          88888880F08880F0888888800088800088888888888888888888}
      end
      object btnFiltrar: TBitBtn
        Left = 468
        Top = 17
        Width = 75
        Height = 25
        Hint = 'Filtrar patrimônios'
        Caption = '&Filtrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnFiltrarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333FF3FF3333333333CC30003333333333773777333333333C33
          3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
          33003377333337F33377333333333C333300333F333337F33377339333333C33
          3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
          330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
          330077F377F337F33377993399333C33330077FF773337F33377399993333C33
          33333777733337F333FF333333333C33300033333333373FF7773333333333CC
          3000333333333377377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnRelatorio: TBitBtn
        Left = 556
        Top = 17
        Width = 75
        Height = 25
        Hint = 'Relatório de patrimônios'
        Caption = '&Relatório'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnRelatorioClick
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
      object btnSair: TBitBtn
        Left = 644
        Top = 17
        Width = 75
        Height = 25
        Hint = 'Sair do Controle de Patrimônio'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Kind = bkClose
      end
      object edtTot: TEdit
        Left = 49
        Top = 21
        Width = 57
        Height = 21
        Enabled = False
        TabOrder = 7
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 8
      Width = 753
      Height = 400
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object mmFiltro: TMemo
        Left = 0
        Top = 346
        Width = 753
        Height = 54
        TabStop = False
        Align = alBottom
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'PATRIMÔNIOS FILTRADOS POR:')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
        Visible = False
      end
      object dbGrdPatri: TDBGrid
        Left = 0
        Top = 0
        Width = 753
        Height = 346
        Align = alClient
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dsPatrimonio
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Plaqueta'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Plaqueta2'
            Title.Caption = 'Pat.Novo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescIV'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescII'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescIII'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescI'
            Width = 495
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Completo'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'detalhe'
            Title.Caption = 'Detalhes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nserie'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Razão Social'
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nfiscal_entrada'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IP'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PREDE'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DescV'
            Width = 79
            Visible = True
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Patrimônios'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object pnlFiltrar: TPanel
    Left = 40
    Top = 24
    Width = 369
    Height = 409
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object Label11: TLabel
      Left = 16
      Top = 252
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label12: TLabel
      Left = 120
      Top = 252
      Width = 19
      Height = 13
      Caption = 'Até:'
    end
    object btnOkFiltrar: TBitBtn
      Left = 103
      Top = 376
      Width = 75
      Height = 25
      Hint = 'Filtrar dados'
      Caption = '&Ok'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnOkFiltrarClick
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
    object dblcbFilTipo: TDBLookupComboBox
      Left = 16
      Top = 104
      Width = 337
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListFieldIndex = 1
      ListSource = dsTipo
      TabOrder = 1
      OnClick = dblcbFilTipoClick
      OnEnter = dblcbFilTipoEnter
      OnExit = dblcbFilTipoExit
    end
    object dblcbFilSub: TDBLookupComboBox
      Left = 16
      Top = 152
      Width = 337
      Height = 21
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListFieldIndex = 1
      ListSource = dsSub
      TabOrder = 2
      OnEnter = dblcbFilSubEnter
      OnExit = dblcbFilSubExit
    end
    object dblcbFilSetor: TDBLookupComboBox
      Left = 16
      Top = 56
      Width = 337
      Height = 21
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListFieldIndex = 1
      ListSource = dsSetor
      TabOrder = 0
      OnEnter = dblcbFilSetorEnter
      OnExit = dblcbFilSetorExit
    end
    object dblcbFilUsu: TDBLookupComboBox
      Left = 16
      Top = 200
      Width = 337
      Height = 21
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListFieldIndex = 1
      ListSource = dsUsuario
      TabOrder = 3
      OnEnter = dblcbFilUsuEnter
      OnExit = dblcbFilUsuExit
    end
    object dblcbFilFornec: TDBLookupComboBox
      Left = 16
      Top = 296
      Width = 337
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListFieldIndex = 1
      ListSource = dsFornec
      TabOrder = 6
      OnEnter = dblcbFilFornecEnter
      OnExit = dblcbFilFornecExit
    end
    object dblcbFilStatus: TDBLookupComboBox
      Left = 16
      Top = 344
      Width = 337
      Height = 21
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListFieldIndex = 1
      ListSource = dsStatus
      TabOrder = 7
      OnEnter = dblcbFilStatusEnter
      OnExit = dblcbFilStatusExit
    end
    object edtValDe: TEdit
      Left = 40
      Top = 248
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 4
      OnEnter = edtValDeEnter
      OnExit = edtValDeExit
      OnKeyPress = edtValDeKeyPress
    end
    object edtValAte: TEdit
      Left = 144
      Top = 248
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 5
      OnEnter = edtValDeEnter
      OnExit = edtValDeExit
      OnKeyPress = edtValAteKeyPress
    end
    object cbTipo: TCheckBox
      Left = 16
      Top = 88
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Tipo:'
      TabOrder = 10
      OnClick = cbTipoClick
    end
    object cbSub: TCheckBox
      Left = 16
      Top = 136
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Sub-Tipo:'
      TabOrder = 11
    end
    object cbSetor: TCheckBox
      Left = 16
      Top = 40
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Setor:'
      TabOrder = 9
    end
    object cbUsu: TCheckBox
      Left = 16
      Top = 184
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Usuário:'
      TabOrder = 12
    end
    object cbVal: TCheckBox
      Left = 16
      Top = 232
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Valor:'
      TabOrder = 13
    end
    object cbFornec: TCheckBox
      Left = 16
      Top = 280
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Fornecedor:'
      TabOrder = 14
    end
    object cbStatus: TCheckBox
      Left = 16
      Top = 328
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Status:'
      TabOrder = 15
    end
    object btnCancFiltrar: TBitBtn
      Left = 191
      Top = 376
      Width = 75
      Height = 25
      Hint = 'Cancela o filtro dos dados'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = btnCancFiltrarClick
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
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 359
      Height = 24
      Align = alTop
      Caption = 'Filtrar Controle de Patrimônios'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
  end
  object pnlIncluir: TPanel
    Left = 96
    Top = 16
    Width = 561
    Height = 329
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label7: TLabel
      Left = 16
      Top = 40
      Width = 52
      Height = 13
      Caption = 'Patrimônio:'
    end
    object Label8: TLabel
      Left = 88
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Descrição:'
    end
    object Label5: TLabel
      Left = 128
      Top = 96
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label6: TLabel
      Left = 286
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Sub-Tipo:'
    end
    object Label9: TLabel
      Left = 16
      Top = 120
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object Label10: TLabel
      Left = 462
      Top = 120
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label13: TLabel
      Left = 397
      Top = 200
      Width = 33
      Height = 13
      Caption = 'Status:'
    end
    object Label14: TLabel
      Left = 16
      Top = 160
      Width = 39
      Height = 13
      Caption = 'Usuário:'
    end
    object Label15: TLabel
      Left = 286
      Top = 160
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label16: TLabel
      Left = 286
      Top = 120
      Width = 57
      Height = 13
      Caption = 'Nº de Série:'
    end
    object Label17: TLabel
      Left = 285
      Top = 200
      Width = 57
      Height = 13
      Caption = 'NF Entrada:'
    end
    object Label1: TLabel
      Left = 16
      Top = 240
      Width = 22
      Height = 13
      Caption = 'Obs:'
    end
    object sbLimpaUtil: TSpeedButton
      Left = 256
      Top = 96
      Width = 25
      Height = 22
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
      ShowHint = False
      OnClick = sbLimpaUtilClick
    end
    object SpeedButton1: TSpeedButton
      Left = 256
      Top = 136
      Width = 25
      Height = 22
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
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 256
      Top = 176
      Width = 25
      Height = 22
      Hint = 'Limpa a Utilização'
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
      ShowHint = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 528
      Top = 96
      Width = 25
      Height = 22
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
      ShowHint = False
      OnClick = SpeedButton3Click
    end
    object Label4: TLabel
      Left = 16
      Top = 200
      Width = 42
      Height = 13
      Caption = 'Detalhes'
    end
    object btnOkInc: TBitBtn
      Left = 187
      Top = 360
      Width = 75
      Height = 25
      Hint = 'Confirmar inclusão do patrimônio'
      Caption = 'C&onfirmar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btnOkIncClick
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
    object dbLcbTipo: TDBLookupComboBox
      Left = 16
      Top = 96
      Width = 241
      Height = 21
      DataField = 'Tipo_Patrimonio'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = dsTipo
      TabOrder = 2
      OnClick = dbLcbTipoClick
      OnExit = dbLcbTipoClick
    end
    object dbLcbSub: TDBLookupComboBox
      Left = 286
      Top = 96
      Width = 241
      Height = 21
      DataField = 'Sub_Tipo_Patrimonio'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListSource = dsSub
      TabOrder = 3
    end
    object dbLcbSetor: TDBLookupComboBox
      Left = 16
      Top = 136
      Width = 241
      Height = 21
      DataField = 'Setor'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListSource = dsSetor
      TabOrder = 4
    end
    object dbLcbUser: TDBLookupComboBox
      Left = 16
      Top = 176
      Width = 241
      Height = 21
      DataField = 'Usuario'
      DataSource = dsTPatrimonio
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dsUsuario
      TabOrder = 7
    end
    object dbLcbFornec: TDBLookupComboBox
      Left = 286
      Top = 176
      Width = 241
      Height = 21
      DataField = 'Fornecedor'
      DataSource = dsTPatrimonio
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsFornec
      TabOrder = 8
    end
    object dbLcbStatus: TDBLookupComboBox
      Left = 397
      Top = 216
      Width = 129
      Height = 21
      DataField = 'Status_Patrimonio'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListSource = dsStatus
      TabOrder = 11
    end
    object btnCancInc: TBitBtn
      Left = 267
      Top = 360
      Width = 75
      Height = 25
      Hint = 'Cancelar inclusão do patrimônio'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btnCancIncClick
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
    object Panel1: TPanel
      Left = 5
      Top = 5
      Width = 551
      Height = 28
      Align = alTop
      Caption = 'Inclusão de Patrimônio'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object dbEdtPlaqueta: TDBEdit
      Left = 16
      Top = 56
      Width = 65
      Height = 21
      DataField = 'Plaqueta'
      DataSource = dsTPatrimonio
      TabOrder = 0
      OnExit = dbEdtPlaquetaExit
      OnKeyPress = dbEdtPlaquetaKeyPress
    end
    object dbEdtDesc: TDBEdit
      Left = 88
      Top = 56
      Width = 457
      Height = 21
      DataField = 'Descricao'
      DataSource = dsTPatrimonio
      TabOrder = 1
    end
    object dbEdtNSerie: TDBEdit
      Left = 286
      Top = 136
      Width = 169
      Height = 21
      DataField = 'Nserie'
      DataSource = dsTPatrimonio
      TabOrder = 5
    end
    object dbEdtVal: TDBEdit
      Left = 462
      Top = 136
      Width = 65
      Height = 21
      DataField = 'Valor'
      DataSource = dsTPatrimonio
      TabOrder = 6
      OnKeyPress = dbEdtValKeyPress
    end
    object dbEdtNF: TDBEdit
      Left = 285
      Top = 216
      Width = 105
      Height = 21
      DataField = 'Nfiscal_entrada'
      DataSource = dsTPatrimonio
      TabOrder = 10
    end
    object dbmemPatri: TDBMemo
      Left = 16
      Top = 256
      Width = 489
      Height = 89
      DataField = 'Obs'
      DataSource = dsTPatrimonio
      TabOrder = 12
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 216
      Width = 241
      Height = 21
      DataField = 'Detalhe'
      DataSource = dsTPatrimonio
      TabOrder = 9
    end
  end
  object pnlImprime: TPanel
    Left = 176
    Top = 278
    Width = 273
    Height = 140
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 6
    Visible = False
    object rgImp: TRadioGroup
      Left = 16
      Top = 35
      Width = 241
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Opções'
      ItemIndex = 0
      Items.Strings = (
        'Relatório Sintético'
        'Relatório Analítico'
        'Relatório Ficha Individual - Informática')
      TabOrder = 0
      TabStop = True
    end
    object BitBtn1: TBitBtn
      Left = 47
      Top = 104
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 1
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 151
      Top = 104
      Width = 75
      Height = 25
      Hint = 'Fechar opções de impressão'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn2Click
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
    object Panel8: TPanel
      Left = 5
      Top = 5
      Width = 263
      Height = 24
      Align = alTop
      Caption = 'Imprime Relatório de Patrimônios'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object pnlAlterar: TPanel
    Left = 144
    Top = 16
    Width = 562
    Height = 401
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Label21: TLabel
      Left = 16
      Top = 40
      Width = 52
      Height = 13
      Caption = 'Patrimônio:'
    end
    object Label22: TLabel
      Left = 88
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Descrição:'
    end
    object Label23: TLabel
      Left = 16
      Top = 80
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label24: TLabel
      Left = 285
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Sub-Tipo:'
    end
    object Label25: TLabel
      Left = 16
      Top = 120
      Width = 28
      Height = 13
      Caption = 'Setor:'
    end
    object Label26: TLabel
      Left = 461
      Top = 120
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label27: TLabel
      Left = 400
      Top = 200
      Width = 33
      Height = 13
      Caption = 'Status:'
    end
    object Label28: TLabel
      Left = 16
      Top = 160
      Width = 39
      Height = 13
      Caption = 'Usuário:'
    end
    object Label29: TLabel
      Left = 285
      Top = 160
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label30: TLabel
      Left = 285
      Top = 120
      Width = 57
      Height = 13
      Caption = 'Nº de Série:'
    end
    object Label31: TLabel
      Left = 288
      Top = 200
      Width = 57
      Height = 13
      Caption = 'NF Entrada:'
    end
    object Label2: TLabel
      Left = 16
      Top = 240
      Width = 22
      Height = 13
      Caption = 'Obs:'
    end
    object SpeedButton4: TSpeedButton
      Left = 256
      Top = 96
      Width = 25
      Height = 22
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
      ShowHint = False
      OnClick = sbLimpaUtilClick
    end
    object SpeedButton5: TSpeedButton
      Left = 256
      Top = 136
      Width = 25
      Height = 22
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
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton6: TSpeedButton
      Left = 256
      Top = 176
      Width = 25
      Height = 22
      Hint = 'Limpa a Utilização'
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
      ShowHint = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton7: TSpeedButton
      Left = 528
      Top = 96
      Width = 25
      Height = 22
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
      ShowHint = False
      OnClick = SpeedButton3Click
    end
    object Label3: TLabel
      Left = 16
      Top = 200
      Width = 42
      Height = 13
      Caption = 'Detalhes'
    end
    object Label19: TLabel
      Left = 438
      Top = 346
      Width = 83
      Height = 13
      Caption = 'Patrimônio NOVO'
    end
    object btnOkAlt: TBitBtn
      Left = 187
      Top = 360
      Width = 75
      Height = 25
      Hint = 'Confirmar alteração do patrimônio'
      Caption = 'C&onfirmar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btnOkAltClick
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
    object dbLcbTipoAlt: TDBLookupComboBox
      Left = 16
      Top = 96
      Width = 241
      Height = 21
      DataField = 'Tipo_Patrimonio'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = dsTipo
      TabOrder = 2
      OnClick = dbLcbTipoAltClick
      OnExit = dbLcbTipoAltClick
    end
    object dbLcbSubAlt: TDBLookupComboBox
      Left = 285
      Top = 96
      Width = 241
      Height = 21
      DataField = 'Sub_Tipo_Patrimonio'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListSource = dsSub
      TabOrder = 3
    end
    object dbLcbSetorAlt: TDBLookupComboBox
      Left = 16
      Top = 136
      Width = 241
      Height = 21
      DataField = 'Setor'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListSource = dsSetor
      TabOrder = 4
    end
    object dbLcbUserAlt: TDBLookupComboBox
      Left = 16
      Top = 176
      Width = 241
      Height = 21
      DataField = 'Usuario'
      DataSource = dsTPatrimonio
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dsUsuario
      TabOrder = 7
    end
    object dbLcbFornecAlt: TDBLookupComboBox
      Left = 285
      Top = 176
      Width = 241
      Height = 21
      DataField = 'Fornecedor'
      DataSource = dsTPatrimonio
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsFornec
      TabOrder = 8
    end
    object dbLcbStatusAlt: TDBLookupComboBox
      Left = 400
      Top = 216
      Width = 129
      Height = 21
      DataField = 'Status_Patrimonio'
      DataSource = dsTPatrimonio
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListFieldIndex = 1
      ListSource = dsStatus
      TabOrder = 11
    end
    object btnCancAlt: TBitBtn
      Left = 267
      Top = 360
      Width = 75
      Height = 25
      Hint = 'Cancelar alteração do patrimônio'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btnCancAltClick
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
    object dbEdtPlaquetaAlt: TDBEdit
      Left = 16
      Top = 56
      Width = 65
      Height = 21
      Color = clInactiveCaptionText
      DataField = 'Plaqueta'
      DataSource = dsTPatrimonio
      Enabled = False
      TabOrder = 0
      OnKeyPress = dbEdtPlaquetaKeyPress
    end
    object dbEdtDescAlt: TDBEdit
      Left = 88
      Top = 56
      Width = 417
      Height = 21
      DataField = 'Descricao'
      DataSource = dsTPatrimonio
      TabOrder = 1
    end
    object dbEdtNSerieAlt: TDBEdit
      Left = 285
      Top = 136
      Width = 169
      Height = 21
      DataField = 'Nserie'
      DataSource = dsTPatrimonio
      TabOrder = 5
    end
    object dbEdtValAlt: TDBEdit
      Left = 461
      Top = 136
      Width = 65
      Height = 21
      DataField = 'Valor'
      DataSource = dsTPatrimonio
      TabOrder = 6
    end
    object dbEdtNFEntradaAlt: TDBEdit
      Left = 288
      Top = 216
      Width = 105
      Height = 21
      DataField = 'Nfiscal_entrada'
      DataSource = dsTPatrimonio
      TabOrder = 10
    end
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 552
      Height = 24
      Align = alTop
      Caption = 'Alteração do Patrimônio'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 256
      Width = 489
      Height = 89
      DataField = 'Obs'
      DataSource = dsTPatrimonio
      TabOrder = 12
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 216
      Width = 241
      Height = 21
      DataField = 'Detalhe'
      DataSource = dsTPatrimonio
      TabOrder = 9
    end
    object dbEdtPlaquetaAlt2: TDBEdit
      Left = 444
      Top = 362
      Width = 65
      Height = 21
      Color = clInactiveCaptionText
      DataField = 'Plaqueta2'
      DataSource = dsTPatrimonio
      TabOrder = 16
      OnExit = dbEdtPlaquetaAlt2Exit
      OnKeyPress = dbEdtPlaquetaKeyPress
    end
  end
  object pnlLoc: TPanel
    Left = 334
    Top = 128
    Width = 369
    Height = 225
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 0
    Visible = False
    object rgLoc: TRadioGroup
      Left = 16
      Top = 48
      Width = 337
      Height = 129
      Caption = ' Localizar por '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Patrimônio'
        'Descrição'
        'Tipo'
        'Sub Tipo'
        'Setor'
        'Usuário'
        'Nº de Serie'
        'Valor'
        'Fornecedor'
        'NF Entrada')
      TabOrder = 0
    end
    object edtLoc: TEdit
      Left = 16
      Top = 184
      Width = 337
      Height = 21
      TabOrder = 1
    end
    object btnOkLoc: TBitBtn
      Left = 103
      Top = 216
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 2
      OnClick = btnOkLocClick
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
    object btnCancLoc: TBitBtn
      Left = 191
      Top = 216
      Width = 75
      Height = 25
      Hint = 'Cancela o filtro dos dados'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnCancLocClick
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
    object Panel4: TPanel
      Left = 5
      Top = 5
      Width = 359
      Height = 24
      Align = alTop
      Caption = 'Localização de Patrimônio'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object dsPatrimonio: TDataSource
    DataSet = qrPatri
    Left = 24
    Top = 16
  end
  object qrPatri: TQuery
    AutoCalcFields = False
    AfterOpen = qrPatriAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Obs, P.Empresa, P.Filial, P.Plaqueta, P.Plaqueta2, P.De' +
        'scricao AS DescI, TP.descricao AS DescII, STP.Descricao AS DescI' +
        'II, S.descricao AS DescIV, U.Usuario, U.Nome_Completo, P.Nserie,' +
        ' P.Valor, F.Razao_Social, P.Nfiscal_entrada, P.IP, P.PREDE, SP.d' +
        'escricao AS DescV, P.detalhe'
      
        'FROM (((((Patrimonio AS P LEFT JOIN Fornecedores AS F ON P.Empre' +
        'sa = F.Empresa AND P.Filial = F.Filial AND P.Fornecedor = F.Codi' +
        'go) LEFT JOIN Setores AS S ON P.Setor = S.codigo) LEFT JOIN Usua' +
        'rios AS U ON P.Empresa = U.Empresa AND P.Filial = U.Filial AND P' +
        '.Usuario = U.Usuario) LEFT JOIN Status_Patrimonio AS SP ON P.Sta' +
        'tus_Patrimonio = SP.codigo) LEFT JOIN Tipo_Patrimonio AS TP ON P' +
        '.Tipo_Patrimonio = TP.codigo) LEFT JOIN Sub_Tipo_Patrimonio AS S' +
        'TP ON P.Tipo_Patrimonio = STP.Tipo_patrimonio AND P.Sub_Tipo_Pat' +
        'rimonio = STP.codigo'
      'WHERE P.Empresa Like :emp AND P.Filial Like :filial '
      'ORDER BY S.Descricao, U.Usuario, P.Plaqueta')
    Left = 8
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
      end>
    object qrPatriObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object qrPatriEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrPatriFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrPatriPlaqueta: TStringField
      FieldName = 'Plaqueta'
      Size = 6
    end
    object qrPatriPlaqueta2: TStringField
      FieldName = 'Plaqueta2'
      Size = 6
    end
    object qrPatriDescI: TStringField
      FieldName = 'DescI'
      Size = 255
    end
    object qrPatriDescII: TStringField
      FieldName = 'DescII'
      Size = 50
    end
    object qrPatriDescIII: TStringField
      FieldName = 'DescIII'
      Size = 70
    end
    object qrPatriDescIV: TStringField
      FieldName = 'DescIV'
      Size = 50
    end
    object qrPatriUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object qrPatriNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Size = 45
    end
    object qrPatriNserie: TStringField
      FieldName = 'Nserie'
      Size = 50
    end
    object qrPatriValor: TFloatField
      FieldName = 'Valor'
    end
    object qrPatriRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object qrPatriNfiscal_entrada: TStringField
      FieldName = 'Nfiscal_entrada'
    end
    object qrPatriIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
    object qrPatriPREDE: TStringField
      FieldName = 'PREDE'
      Size = 2
    end
    object qrPatriDescV: TStringField
      FieldName = 'DescV'
      Size = 50
    end
    object qrPatridetalhe: TStringField
      FieldName = 'detalhe'
      Size = 50
    end
  end
  object qrTipo: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Tipo_Patrimonio')
    Left = 112
    object qrTipocodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Tipo_Patrimonio.codigo'
      Size = 4
    end
    object qrTipodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Tipo_Patrimonio.descricao'
      Size = 50
    end
  end
  object dsTipo: TDataSource
    DataSet = qrTipo
    OnDataChange = dsTipoDataChange
    Left = 120
    Top = 16
  end
  object qrSetor: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Setores')
    Left = 192
    object qrSetorcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Setores.codigo'
      Size = 4
    end
    object qrSetordescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Setores.descricao'
      Size = 50
    end
  end
  object qrUsuario: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT U.*'
      
        'FROM Parametros AS P INNER JOIN Usuarios AS U ON P.Filial = U.Fi' +
        'lial AND P.Empresa = U.Empresa')
    Left = 232
    object qrUsuarioEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Usuarios.Empresa'
      Size = 4
    end
    object qrUsuarioFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Usuarios.Filial'
      Size = 4
    end
    object qrUsuarioUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object qrUsuarioSenha: TStringField
      FieldName = 'Senha'
      Origin = 'DBNMSCOMEX.Usuarios.Senha'
      Size = 10
    end
    object qrUsuarioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object qrUsuarioDiretorio_SISCOMEX: TStringField
      FieldName = 'Diretorio_SISCOMEX'
      Origin = 'DBNMSCOMEX.Usuarios.Diretorio_SISCOMEX'
      Size = 50
    end
    object qrUsuarioNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel'
      Size = 4
    end
    object qrUsuarioNivel_ccorrente: TStringField
      FieldName = 'Nivel_ccorrente'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel_ccorrente'
      Size = 4
    end
    object qrUsuarioData_validade_senha: TDateTimeField
      FieldName = 'Data_validade_senha'
      Origin = 'DBNMSCOMEX.Usuarios.Data_validade_senha'
    end
    object qrUsuarioEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrUsuarioEmail_Sol_Num: TSmallintField
      FieldName = 'Email_Sol_Num'
      Origin = 'DBNMSCOMEX.Usuarios.Email_Sol_Num'
    end
    object qrUsuarioEmail_aviso_oper: TSmallintField
      FieldName = 'Email_aviso_oper'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_oper'
    end
    object qrUsuarioEmail_aviso_finan: TSmallintField
      FieldName = 'Email_aviso_finan'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_finan'
    end
    object qrUsuarioEmail_aviso_diretoria: TSmallintField
      FieldName = 'Email_aviso_diretoria'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_diretoria'
    end
    object qrUsuarioEmail_aviso_sistema: TSmallintField
      FieldName = 'Email_aviso_sistema'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_sistema'
    end
    object qrUsuarioDistribui_processo: TSmallintField
      FieldName = 'Distribui_processo'
      Origin = 'DBNMSCOMEX.Usuarios.Distribui_processo'
    end
    object qrUsuarioAbre_processos: TSmallintField
      FieldName = 'Abre_processos'
      Origin = 'DBNMSCOMEX.Usuarios.Abre_processos'
    end
    object qrUsuarioEdita_eventos: TSmallintField
      FieldName = 'Edita_eventos'
      Origin = 'DBNMSCOMEX.Usuarios.Edita_eventos'
    end
    object qrUsuarioDigitalizador: TSmallintField
      FieldName = 'Digitalizador'
      Origin = 'DBNMSCOMEX.Usuarios.Digitalizador'
    end
    object qrUsuarioTraduz_Classifica: TSmallintField
      FieldName = 'Traduz_Classifica'
      Origin = 'DBNMSCOMEX.Usuarios.Traduz_Classifica'
    end
    object qrUsuarioInativa_Cliente: TSmallintField
      FieldName = 'Inativa_Cliente'
      Origin = 'DBNMSCOMEX.Usuarios.Inativa_Cliente'
    end
    object qrUsuarioEdita_cliente_inativo: TSmallintField
      FieldName = 'Edita_cliente_inativo'
      Origin = 'DBNMSCOMEX.Usuarios.Edita_cliente_inativo'
    end
    object qrUsuarioFecha_Processo: TSmallintField
      FieldName = 'Fecha_Processo'
      Origin = 'DBNMSCOMEX.Usuarios.Fecha_Processo'
    end
    object qrUsuarioEdita_Processo_Fechado: TSmallintField
      FieldName = 'Edita_Processo_Fechado'
      Origin = 'DBNMSCOMEX.Usuarios.Edita_Processo_Fechado'
    end
    object qrUsuarioAcessa_Patrimonio: TSmallintField
      FieldName = 'Acessa_Patrimonio'
      Origin = 'DBNMSCOMEX.Usuarios.Acessa_Patrimonio'
    end
    object qrUsuarioSupervisor: TStringField
      FieldName = 'Supervisor'
      Origin = 'DBNMSCOMEX.Usuarios.Supervisor'
      Size = 10
    end
    object qrUsuarioAcessa_PARAFAT: TSmallintField
      FieldName = 'Acessa_PARAFAT'
      Origin = 'DBNMSCOMEX.Usuarios.Acessa_PARAFAT'
    end
    object qrUsuarioDesconto_Faturamento: TSmallintField
      FieldName = 'Desconto_Faturamento'
      Origin = 'DBNMSCOMEX.Usuarios.Desconto_Faturamento'
    end
    object qrUsuarioResponsavel: TSmallintField
      FieldName = 'Responsavel'
      Origin = 'DBNMSCOMEX.Usuarios.Responsavel'
    end
    object qrUsuarioDistribui_processoC: TSmallintField
      FieldName = 'Distribui_processoC'
      Origin = 'DBNMSCOMEX.Usuarios.Distribui_processoC'
    end
    object qrUsuarioResponsavelC: TSmallintField
      FieldName = 'ResponsavelC'
      Origin = 'DBNMSCOMEX.Usuarios.ResponsavelC'
    end
    object qrUsuarioSupervisorC: TStringField
      FieldName = 'SupervisorC'
      Origin = 'DBNMSCOMEX.Usuarios.SupervisorC'
      Size = 10
    end
    object qrUsuarioSetor: TStringField
      FieldName = 'Setor'
      Origin = 'DBNMSCOMEX.Usuarios.Setor'
      Size = 4
    end
  end
  object qrFornec: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT F.*'
      
        'FROM Parametros AS P INNER JOIN Fornecedores AS F ON P.Filial = ' +
        'F.Filial AND P.Empresa = F.Empresa')
    Left = 272
    object qrFornecEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Fornecedores.Empresa'
      Size = 4
    end
    object qrFornecFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Fornecedores.Filial'
      Size = 4
    end
    object qrFornecCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Fornecedores.Codigo'
      Size = 4
    end
    object qrFornecRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Fornecedores.Razao_Social'
      Size = 60
    end
    object qrFornecPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Fornecedores.Pais'
      Size = 3
    end
    object qrFornecCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Fornecedores.CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object qrFornecCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Fornecedores.CGC_CPF'
      Size = 10
    end
    object qrFornecTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Origin = 'DBNMSCOMEX.Fornecedores.Tipo_Importador'
      Size = 1
    end
    object qrFornecEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Fornecedores.Endereco'
      Size = 40
    end
    object qrFornecNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Fornecedores.Numero'
      Size = 6
    end
    object qrFornecComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Fornecedores.Complemento'
      Size = 21
    end
    object qrFornecBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Fornecedores.Bairro'
      Size = 25
    end
    object qrFornecCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Fornecedores.Cidade'
      Size = 25
    end
    object qrFornecCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Fornecedores.CEP'
      Size = 10
    end
    object qrFornecUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Fornecedores.UF'
      Size = 2
    end
    object qrFornecEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Fornecedores.Estado'
      Size = 25
    end
    object qrFornecInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Fornecedores.Inscricao_Estadual'
      Size = 15
    end
    object qrFornecBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Fornecedores.Banco'
      Size = 5
    end
    object qrFornecAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Fornecedores.Agencia'
      Size = 5
    end
    object qrFornecConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Fornecedores.Conta_Corrente'
      Size = 8
    end
    object qrFornecConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
      Origin = 'DBNMSCOMEX.Fornecedores.Conta_Corrente_Registro'
    end
    object qrFornecConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
      Origin = 'DBNMSCOMEX.Fornecedores.Conta_Corrente_Deposito'
    end
    object qrFornecTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Fornecedores.Telefone'
      Size = 15
    end
  end
  object qrStatus: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Status_Patrimonio')
    Left = 312
    object qrStatuscodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Status_Patrimonio.codigo'
      Size = 4
    end
    object qrStatusdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Status_Patrimonio.descricao'
      Size = 50
    end
  end
  object dsSub: TDataSource
    DataSet = qrSub
    Left = 160
    Top = 16
  end
  object dsSetor: TDataSource
    DataSet = qrSetor
    Left = 200
    Top = 16
  end
  object dsUsuario: TDataSource
    DataSet = qrUsuario
    Left = 240
    Top = 16
  end
  object dsFornec: TDataSource
    DataSet = qrFornec
    Left = 280
    Top = 16
  end
  object dsStatus: TDataSource
    DataSet = qrStatus
    Left = 320
    Top = 16
  end
  object tbSub: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Descricao'
    MasterFields = 'codigo'
    MasterSource = dsTipo
    TableName = 'Sub_Tipo_Patrimonio'
    Left = 152
    object tbSubTipo_patrimonio: TStringField
      FieldName = 'Tipo_patrimonio'
      Required = True
      Size = 4
    end
    object tbSubcodigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 4
    end
    object tbSubDescricao: TStringField
      FieldName = 'Descricao'
      Size = 70
    end
  end
  object qrDelPatri: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 56
  end
  object tbPatri: TTable
    BeforePost = tbPatriBeforePost
    AfterPost = tbPatriAfterPost
    BeforeDelete = tbPatriBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Plaqueta'
    MasterFields = 'Empresa;Filial;Plaqueta'
    MasterSource = dsPatrimonio
    TableName = 'Patrimonio'
    Left = 352
    object tbPatriEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbPatriFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbPatriPlaqueta: TStringField
      FieldName = 'Plaqueta'
      Required = True
      Size = 6
    end
    object tbPatriDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object tbPatriTipo_Patrimonio: TStringField
      FieldName = 'Tipo_Patrimonio'
      Size = 4
    end
    object tbPatriSub_Tipo_Patrimonio: TStringField
      FieldName = 'Sub_Tipo_Patrimonio'
      Size = 4
    end
    object tbPatriSetor: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object tbPatriUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object tbPatriNserie: TStringField
      FieldName = 'Nserie'
      Size = 50
    end
    object tbPatriValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object tbPatriFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 4
    end
    object tbPatriNfiscal_entrada: TStringField
      FieldName = 'Nfiscal_entrada'
    end
    object tbPatriIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
    object tbPatriPREDE: TStringField
      FieldName = 'PREDE'
      Size = 2
    end
    object tbPatriStatus_Patrimonio: TStringField
      FieldName = 'Status_Patrimonio'
      Size = 4
    end
    object tbPatriOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object tbPatriDetalhe: TStringField
      FieldName = 'Detalhe'
      Size = 50
    end
    object tbPatriPlaqueta2: TStringField
      FieldName = 'Plaqueta2'
      Size = 6
    end
  end
  object dsTPatrimonio: TDataSource
    DataSet = tbPatri
    Left = 368
    Top = 16
  end
  object qrUltiPatri: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Cast(Max(Plaqueta) as REAL) + 1 as Patri '
      'FROM Patrimonio'
      'WHERE Plaqueta NOT LIKE '#39'x%'#39' '
      'AND Plaqueta NOT LIKE '#39'D%'#39
      'GROUP BY Empresa, Filial')
    Left = 400
    object qrUltiPatriPatri: TFloatField
      FieldName = 'Patri'
    end
  end
  object qrSub: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Sub_Tipo_Patrimonio'
      'where Tipo_Patrimonio = :tipo_patrimonio')
    Left = 149
    Top = 45
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo_patrimonio'
        ParamType = ptInput
      end>
  end
end
