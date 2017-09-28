object f_contasp: Tf_contasp
  Left = 28
  Top = 77
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 434
  ClientWidth = 705
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 344
    Width = 705
    Height = 45
    Align = alBottom
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 2
    object btnIncluir: TBitBtn
      Left = 24
      Top = 12
      Width = 81
      Height = 25
      Hint = 'Novo Importador'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnIncluirClick
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
    object btnExcluir: TBitBtn
      Left = 200
      Top = 12
      Width = 81
      Height = 25
      Hint = 'Excluir Importador'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = False
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
    object btnAlterar: TBitBtn
      Left = 112
      Top = 12
      Width = 81
      Height = 25
      Hint = 'Alterar dados do Importador'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = False
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
    object btnSalvar: TBitBtn
      Left = 512
      Top = 12
      Width = 81
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 5
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
      Left = 600
      Top = 12
      Width = 81
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 6
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
    object btnPagamentos: TBitBtn
      Left = 304
      Top = 12
      Width = 89
      Height = 25
      Hint = 'Localizar um Importador'
      Caption = '&Pagamentos'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = btnPagamentosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnCorrecoes: TBitBtn
      Left = 400
      Top = 12
      Width = 89
      Height = 25
      Hint = 'Localizar um Importador'
      Caption = '&Correções'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      OnClick = btnCorrecoesClick
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
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 209
    Align = alClient
    Color = 10514464
    TabOrder = 0
    object dbGrdContas: TDBGrid
      Left = 16
      Top = 16
      Width = 673
      Height = 182
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsContasPag
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
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
          FieldName = 'Data_Emissao'
          Title.Caption = 'Data Emissão'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Vencimento'
          Title.Caption = 'Data Vencimento'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qDias'
          Title.Caption = 'Dias'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StatusVenc'
          Title.Caption = 'Status Vencimento'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StatusPag'
          Title.Caption = 'Status Pagamento'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Historico'
          Title.Caption = 'Histórico'
          Visible = True
        end>
    end
  end
  object pnlCampos: TPanel
    Left = 0
    Top = 209
    Width = 705
    Height = 135
    Align = alBottom
    Color = 10514464
    Enabled = False
    TabOrder = 1
    object Label3: TLabel
      Left = 144
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 48
      Width = 41
      Height = 13
      Caption = 'Histórico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Código'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 328
      Top = 88
      Width = 39
      Height = 13
      Caption = 'Emissão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 400
      Top = 88
      Width = 56
      Height = 13
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 472
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 584
      Top = 88
      Width = 27
      Height = 13
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 88
      Width = 73
      Height = 13
      Caption = 'Plano de Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbLcbFornec: TDBLookupComboBox
      Left = 144
      Top = 24
      Width = 545
      Height = 21
      DataField = 'Fornecedor'
      DataSource = dsContas
      KeyField = 'Codigo'
      ListField = 'Codigo;Razao_Social'
      ListFieldIndex = 1
      ListSource = dsFornec
      TabOrder = 1
    end
    object dbLcbPlano: TDBLookupComboBox
      Left = 16
      Top = 104
      Width = 305
      Height = 21
      DataField = 'Plano_contas'
      DataSource = dsContas
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsPlano
      TabOrder = 3
    end
    object dbEdtCod: TDBEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      DataField = 'Codigo'
      DataSource = dsContas
      TabOrder = 0
      OnKeyPress = dbEdtCodKeyPress
    end
    object dbEdtHist: TDBEdit
      Left = 16
      Top = 64
      Width = 673
      Height = 21
      DataField = 'Historico'
      DataSource = dsContas
      TabOrder = 2
    end
    object dbEdtEmissao: TDBEdit
      Left = 328
      Top = 104
      Width = 65
      Height = 21
      DataField = 'Data_Emissao'
      DataSource = dsContas
      TabOrder = 4
      OnChange = dbEdtEmissaoChange
    end
    object dbEdtVenc: TDBEdit
      Left = 400
      Top = 104
      Width = 65
      Height = 21
      DataField = 'Data_Vencimento'
      DataSource = dsContas
      TabOrder = 5
      OnChange = dbEdtVencChange
    end
    object dbEdtValor: TDBEdit
      Left = 472
      Top = 104
      Width = 105
      Height = 21
      DataField = 'Valor'
      DataSource = dsContas
      TabOrder = 6
    end
    object dbEdtSaldo: TDBEdit
      Left = 584
      Top = 104
      Width = 105
      Height = 21
      DataField = 'Saldo'
      DataSource = dsContas
      Enabled = False
      ReadOnly = True
      TabOrder = 7
    end
  end
  object pnlOpcoes: TPanel
    Left = 0
    Top = 389
    Width = 705
    Height = 45
    Align = alBottom
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 3
    object btnLocalizar: TBitBtn
      Left = 152
      Top = 12
      Width = 89
      Height = 25
      Hint = 'Localizar um Importador'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
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
      Left = 248
      Top = 12
      Width = 89
      Height = 25
      Hint = 'Localizar um Importador'
      Caption = 'Fil&trar'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
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
    object btnImprimir: TBitBtn
      Left = 344
      Top = 12
      Width = 89
      Height = 25
      Hint = 'Localizar um Importador'
      Caption = '&Relatório'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
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
    object btnFechar: TBitBtn
      Left = 600
      Top = 12
      Width = 81
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnFecharClick
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
  object pnlPagamento: TPanel
    Left = 16
    Top = 112
    Width = 521
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Panel8: TPanel
      Left = 6
      Top = 6
      Width = 509
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pagamentos'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object dbGrdPagamento: TDBGrid
      Left = 16
      Top = 48
      Width = 489
      Height = 169
      DataSource = dsPagamentos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Data_Registro'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Detalhe'
          Width = 295
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Contabilizado'
          Width = 92
          Visible = True
        end>
    end
    object btnOkPag: TBitBtn
      Left = 224
      Top = 224
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 1
      OnClick = btnOkPagClick
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
  end
  object pnlLocalizar: TPanel
    Left = 16
    Top = 152
    Width = 521
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 6
    Visible = False
    object Label13: TLabel
      Left = 16
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object Label14: TLabel
      Left = 184
      Top = 40
      Width = 39
      Height = 13
      Caption = 'Emissão'
    end
    object Label15: TLabel
      Left = 256
      Top = 40
      Width = 56
      Height = 13
      Caption = 'Vencimento'
    end
    object Label16: TLabel
      Left = 328
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label17: TLabel
      Left = 16
      Top = 80
      Width = 73
      Height = 13
      Caption = 'Contas a Pagar'
    end
    object Panel1: TPanel
      Left = 6
      Top = 6
      Width = 509
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Localizar'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object edtLocCod: TEdit
      Left = 16
      Top = 56
      Width = 161
      Height = 21
      TabOrder = 0
    end
    object meLocEmissao: TMaskEdit
      Left = 184
      Top = 56
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object meLocVenc: TMaskEdit
      Left = 256
      Top = 56
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object meLocValor: TMaskEdit
      Left = 328
      Top = 56
      Width = 89
      Height = 21
      TabOrder = 3
    end
    object btnLocLocalizar: TBitBtn
      Left = 424
      Top = 52
      Width = 75
      Height = 25
      Caption = '&Localizar'
      TabOrder = 4
      OnClick = btnLocLocalizarClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000007777777000000070FFFFFFF07777700000000070F7
        7777F07777000000000070F77777F07770007000000070F77780008700077000
        000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
        08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
        EFEFFF0770777000000077780000000708777000000077770077777807777000
        0000777770077700777770000000777777800087777770000000777777777777
        777770000000}
    end
    object dbGrdLoc: TDBGrid
      Left = 16
      Top = 96
      Width = 489
      Height = 120
      DataSource = dsLocContas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Emissao'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Vencimento'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Historico'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 59
          Visible = True
        end>
    end
    object btnOkLoc: TBitBtn
      Left = 176
      Top = 224
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 6
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
    object btnCancelarLoc: TBitBtn
      Left = 272
      Top = 224
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 7
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
  end
  object pnlFiltrar: TPanel
    Left = 16
    Top = 200
    Width = 521
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 7
    Visible = False
    object Label18: TLabel
      Left = 16
      Top = 88
      Width = 39
      Height = 13
      Caption = 'Emissão'
    end
    object Label19: TLabel
      Left = 88
      Top = 88
      Width = 56
      Height = 13
      Caption = 'Vencimento'
    end
    object Label20: TLabel
      Left = 160
      Top = 88
      Width = 67
      Height = 13
      Caption = 'Dias à Vencer'
    end
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 509
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Filtrar'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object cbFiltFornec: TCheckBox
      Left = 16
      Top = 48
      Width = 145
      Height = 17
      Caption = 'Todos os Fornecedores'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbFiltFornecClick
    end
    object dbLcbFiltFornec: TDBLookupComboBox
      Left = 16
      Top = 64
      Width = 489
      Height = 21
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Codigo;Razao_Social'
      ListFieldIndex = 1
      ListSource = dsFiltFornec
      TabOrder = 1
    end
    object rgFiltVenc: TRadioGroup
      Left = 16
      Top = 136
      Width = 241
      Height = 57
      Caption = ' Status do Vencimento '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'À Vencer'
        'Vence Hoje'
        'Vencida')
      TabOrder = 5
    end
    object rgFiltPag: TRadioGroup
      Left = 264
      Top = 136
      Width = 241
      Height = 57
      Caption = ' Status do Pagamento '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Em Aberto'
        'Pago')
      TabOrder = 6
    end
    object meFiltEmissao: TMaskEdit
      Left = 16
      Top = 104
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object meFiltVenc: TMaskEdit
      Left = 88
      Top = 104
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object edtFiltDias: TEdit
      Left = 160
      Top = 104
      Width = 73
      Height = 21
      TabOrder = 4
      OnKeyPress = edtFiltDiasKeyPress
    end
    object btnCancelarFilt: TBitBtn
      Left = 272
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = btnCancelarFiltClick
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
    object btnOkFilt: TBitBtn
      Left = 176
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Filtrar'
      TabOrder = 7
      OnClick = btnOkFiltClick
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
  end
  object pnlRelatorio: TPanel
    Left = 16
    Top = 248
    Width = 529
    Height = 33
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 8
    Visible = False
    object cbOrdenaPlano: TCheckBox
      Left = 352
      Top = 80
      Width = 153
      Height = 17
      Caption = 'Ordenar por Plano de Conta'
      TabOrder = 3
      OnClick = cbRelPlanoClick
    end
    object Panel3: TPanel
      Left = 6
      Top = 6
      Width = 517
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Relatório'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object cbRelFornec: TCheckBox
      Left = 16
      Top = 40
      Width = 145
      Height = 17
      Caption = 'Todos os Fornecedores'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbRelFornecClick
    end
    object dbLcbRelFornec: TDBLookupComboBox
      Left = 16
      Top = 56
      Width = 489
      Height = 21
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Codigo;Razao_Social'
      ListFieldIndex = 1
      ListSource = dsFiltFornec
      TabOrder = 1
    end
    object rgRelPag: TRadioGroup
      Left = 264
      Top = 176
      Width = 241
      Height = 57
      Caption = ' Status do Pagamento '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Em Aberto'
        'Pago')
      TabOrder = 8
    end
    object rgRelVenc: TRadioGroup
      Left = 16
      Top = 176
      Width = 241
      Height = 57
      Caption = ' Status do Vencimento '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'À Vencer'
        'Vence Hoje'
        'Vencida')
      TabOrder = 7
    end
    object gbRelEmissao: TGroupBox
      Left = 16
      Top = 120
      Width = 241
      Height = 49
      Caption = ' Emissão '
      TabOrder = 5
      object Label21: TLabel
        Left = 112
        Top = 24
        Width = 21
        Height = 13
        Caption = 'ATÉ'
      end
      object meRelEmissaoDe: TMaskEdit
        Left = 32
        Top = 20
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object meRelEmissaoAte: TMaskEdit
        Left = 144
        Top = 20
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object gbRelVenc: TGroupBox
      Left = 264
      Top = 120
      Width = 241
      Height = 49
      Caption = ' Vencimento '
      TabOrder = 6
      object Label22: TLabel
        Left = 112
        Top = 24
        Width = 21
        Height = 13
        Caption = 'ATÉ'
      end
      object meRelVencDe: TMaskEdit
        Left = 32
        Top = 20
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object meRelVencAte: TMaskEdit
        Left = 144
        Top = 20
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object gbDesmembra: TGroupBox
      Left = 16
      Top = 240
      Width = 241
      Height = 41
      Caption = ' Desmembrar '
      TabOrder = 9
      object cbRelPag: TCheckBox
        Left = 16
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Pagamentos'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object cbRelCorre: TCheckBox
        Left = 128
        Top = 16
        Width = 69
        Height = 17
        Caption = 'Correções'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object btnImprimirRel: TBitBtn
      Left = 296
      Top = 252
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 10
      OnClick = btnImprimirRelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object btnCancelarRel: TBitBtn
      Left = 400
      Top = 252
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 11
      OnClick = btnCancelarRelClick
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
    object cbRelPlano: TCheckBox
      Left = 16
      Top = 80
      Width = 145
      Height = 17
      Caption = 'Todos os Planos de Conta'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = cbRelPlanoClick
    end
    object dbLcbRelPlano: TDBLookupComboBox
      Left = 16
      Top = 96
      Width = 489
      Height = 21
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsRelPlano
      TabOrder = 4
    end
  end
  object pnlCorrecao: TPanel
    Left = 16
    Top = 72
    Width = 521
    Height = 33
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 5
    Visible = False
    object Label9: TLabel
      Left = 16
      Top = 160
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label10: TLabel
      Left = 168
      Top = 160
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label11: TLabel
      Left = 240
      Top = 160
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label12: TLabel
      Left = 312
      Top = 160
      Width = 58
      Height = 13
      Caption = 'Observação'
    end
    object dbGrdCorrecoes: TDBGrid
      Left = 16
      Top = 40
      Width = 489
      Height = 113
      DataSource = dsCorrecoes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'registro'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs'
          Width = 231
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 6
      Top = 6
      Width = 509
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Correções'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object dbLcbTipo: TDBLookupComboBox
      Left = 16
      Top = 176
      Width = 145
      Height = 21
      DataField = 'Tipo_Correcao'
      DataSource = dsCorrecoes
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsTipo
      TabOrder = 1
    end
    object dbEdtData: TDBEdit
      Left = 168
      Top = 176
      Width = 65
      Height = 21
      DataField = 'Data'
      DataSource = dsCorrecoes
      Enabled = False
      TabOrder = 2
    end
    object dbEdtVal: TDBEdit
      Left = 240
      Top = 176
      Width = 65
      Height = 21
      DataField = 'Valor'
      DataSource = dsCorrecoes
      Enabled = False
      TabOrder = 3
    end
    object dbEdtObs: TDBEdit
      Left = 312
      Top = 176
      Width = 193
      Height = 21
      DataField = 'obs'
      DataSource = dsCorrecoes
      Enabled = False
      TabOrder = 4
    end
    object btnIncluirCorre: TBitBtn
      Left = 16
      Top = 212
      Width = 75
      Height = 25
      Hint = 'Novo Importador'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      OnClick = btnIncluirCorreClick
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
    object btnAlterarCorre: TBitBtn
      Left = 96
      Top = 212
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Importador'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 6
      OnClick = btnAlterarCorreClick
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
    object btnExcluirCorre: TBitBtn
      Left = 176
      Top = 212
      Width = 75
      Height = 25
      Hint = 'Excluir Importador'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
      OnClick = btnExcluirCorreClick
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
    object btnSalvarCorre: TBitBtn
      Left = 264
      Top = 212
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 8
      OnClick = btnSalvarCorreClick
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
    object btnCancelarCorre: TBitBtn
      Left = 344
      Top = 212
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 9
      OnClick = btnCancelarCorreClick
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
    object btnFecharCorre: TBitBtn
      Left = 432
      Top = 212
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 10
      OnClick = btnFecharCorreClick
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
  object tbContasPag: TTable
    AutoCalcFields = False
    AfterInsert = tbContasPagAfterInsert
    AfterEdit = tbContasPagAfterInsert
    AfterPost = tbContasPagAfterPost
    AfterCancel = tbContasPagAfterPost
    BeforeDelete = tbContasPagBeforeDelete
    AfterScroll = tbContasPagAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Codigo'
    MasterFields = 'Empresa;Filial;Fornecedor;Codigo'
    MasterSource = dsContasPag
    TableName = 'Contas_Pagar'
    Left = 144
    Top = 40
    object tbContasPagEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbContasPagFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbContasPagFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 4
    end
    object tbContasPagCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tbContasPagData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object tbContasPagData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object tbContasPagHistorico: TStringField
      FieldName = 'Historico'
      Size = 120
    end
    object tbContasPagPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
    object tbContasPagSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object tbContasPagValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object dsContas: TDataSource
    DataSet = tbContasPag
    Left = 160
    Top = 56
  end
  object qrContasPag: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Codigo, Fornecedor, Data_Emissao, Data_V' +
        'encimento, Historico, Saldo, Valor, DATEDIFF(DAY,data_vencimento' +
        ',GETDATE())AS qDias, CASE WHEN DATEDIFF(DAY,data_vencimento,GETD' +
        'ATE()) = 0 THEN '#39'Venceu Hoje'#39' WHEN  DATEDIFF(DAY,data_vencimento' +
        ',GETDATE()) < 0 THEN '#39'à Vencer'#39' WHEN DATEDIFF(DAY,data_venciment' +
        'o,GETDATE()) > 0 THEN '#39'Vencida'#39' END AS StatusVenc, CASE saldo WH' +
        'EN 0 THEN '#39'Pago'#39' ELSE '#39'em aberto'#39' END AS StatusPag, Plano_contas' +
        ' '
      'FROM Contas_Pagar WHERE Empresa = :emp AND Filial = :filial'
      ''
      'ORDER BY qDias desc')
    Left = 96
    Top = 40
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
    object qrContasPagEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrContasPagFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrContasPagCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object qrContasPagFornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object qrContasPagData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object qrContasPagData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object qrContasPagHistorico: TStringField
      FieldName = 'Historico'
      FixedChar = True
      Size = 120
    end
    object qrContasPagSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object qrContasPagValor: TFloatField
      FieldName = 'Valor'
    end
    object qrContasPagqDias: TIntegerField
      FieldName = 'qDias'
    end
    object qrContasPagStatusVenc: TStringField
      FieldName = 'StatusVenc'
      FixedChar = True
      Size = 11
    end
    object qrContasPagStatusPag: TStringField
      FieldName = 'StatusPag'
      FixedChar = True
      Size = 9
    end
    object qrContasPagPlano_contas: TStringField
      FieldName = 'Plano_contas'
      FixedChar = True
      Size = 8
    end
  end
  object dsContasPag: TDataSource
    DataSet = qrContasPag
    Left = 112
    Top = 56
  end
  object qrFornec: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Fornecedores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 192
    Top = 40
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
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 64
    Top = 40
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
  object dsFornec: TDataSource
    DataSet = qrFornec
    Left = 208
    Top = 56
  end
  object qrPlano: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Plano_Contas'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Descricao')
    Left = 248
    Top = 40
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
    object qrPlanoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Plano_Contas.Empresa'
      Size = 4
    end
    object qrPlanoFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Plano_Contas.Filial'
      Size = 4
    end
    object qrPlanoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Plano_Contas.Codigo'
      Size = 8
    end
    object qrPlanoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Plano_Contas.Descricao'
      Size = 50
    end
  end
  object dsPlano: TDataSource
    DataSet = qrPlano
    Left = 264
    Top = 56
  end
  object alContas: TActionList
    Left = 32
    Top = 40
    object acCalculaSaldo: TAction
      Caption = 'acCalculaSaldo'
      OnExecute = acCalculaSaldoExecute
    end
  end
  object qrLocCorrecoes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(C.Valor) AS ValorTot, T.positivo'
      
        'FROM Contas_Pagar_Correcoes AS C INNER JOIN Contas_Pagar_Tipos_C' +
        'orrecoes AS T ON C.Tipo_Correcao = T.Codigo'
      
        'WHERE C.Empresa = :emp AND C.Filial = :filial AND C.Fornecedor =' +
        ' :fornec AND C.Codigo = :cod'
      'GROUP BY C.Empresa, T.positivo')
    Left = 288
    Top = 40
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
        Name = 'fornec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrLocCorrecoesValorTot: TFloatField
      FieldName = 'ValorTot'
      Origin = 'DBNMSCOMEX.Contas_Pagar_Correcoes.Valor'
    end
    object qrLocCorrecoespositivo: TSmallintField
      FieldName = 'positivo'
      Origin = 'DBNMSCOMEX.Contas_Pagar_Tipos_Correcoes.positivo'
    end
  end
  object qrLocPagamentos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(Valor_Contabilizado) AS ValorTot'
      'FROM Numerarios_Processos'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Fornecedor = :forn' +
        'ec AND Codigo = :cod'
      'GROUP BY Empresa'
      '')
    Left = 320
    Top = 40
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
        Name = 'fornec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrLocPagamentosValorTot: TFloatField
      FieldName = 'ValorTot'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
  end
  object tbCorrecoes: TTable
    AfterOpen = tbCorrecoesAfterScroll
    AfterInsert = tbCorrecoesAfterInsert
    AfterEdit = tbCorrecoesAfterInsert
    BeforePost = tbCorrecoesBeforePost
    AfterCancel = tbCorrecoesBeforePost
    AfterScroll = tbCorrecoesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Codigo'
    MasterFields = 'Empresa;Filial;Fornecedor;Codigo'
    MasterSource = dsContas
    TableName = 'Contas_Pagar_Correcoes'
    Left = 360
    Top = 40
    object tbCorrecoesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbCorrecoesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbCorrecoesFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 4
    end
    object tbCorrecoesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tbCorrecoesregistro: TAutoIncField
      FieldName = 'registro'
    end
    object tbCorrecoesTipo_Correcao: TStringField
      FieldName = 'Tipo_Correcao'
      Size = 4
    end
    object tbCorrecoesData: TDateTimeField
      FieldName = 'Data'
    end
    object tbCorrecoesValor: TFloatField
      FieldName = 'Valor'
    end
    object tbCorrecoesobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
  end
  object dsCorrecoes: TDataSource
    DataSet = tbCorrecoes
    Left = 376
    Top = 56
  end
  object qrTipo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Contas_Pagar_Tipos_Correcoes'
      'ORDER BY Descricao')
    Left = 408
    Top = 40
    object qrTipoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Pagar_Tipos_Correcoes.Codigo'
      Size = 4
    end
    object qrTipoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contas_Pagar_Tipos_Correcoes.Descricao'
      Size = 50
    end
    object qrTipopositivo: TSmallintField
      FieldName = 'positivo'
      Origin = 'DBNMSCOMEX.Contas_Pagar_Tipos_Correcoes.positivo'
    end
  end
  object dsTipo: TDataSource
    DataSet = qrTipo
    Left = 424
    Top = 56
  end
  object qrPagamentos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT  N.Detalhe, N.Data_Registro, N.Valor_Contabilizado'
      
        'FROM Contas_Pagar AS C INNER JOIN Numerarios_Processos AS N ON (' +
        'C.Codigo = N.Codigo) AND (C.Fornecedor = N.Fornecedor) AND (C.Fi' +
        'lial = N.Filial) AND (C.Empresa = N.Empresa)'
      
        'WHERE C.Empresa = :emp AND C.Filial = :filial AND C.Fornecedor =' +
        ' :fornec AND C.Codigo = :conta'
      'ORDER BY N.Data_Registro')
    Left = 456
    Top = 40
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
        Name = 'fornec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object qrPagamentosDetalhe: TStringField
      FieldName = 'Detalhe'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Detalhe'
      Size = 50
    end
    object qrPagamentosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Registro'
    end
    object qrPagamentosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
  end
  object dsPagamentos: TDataSource
    DataSet = qrPagamentos
    Left = 472
    Top = 56
  end
  object qrLocContas: TQuery
    AfterOpen = qrLocContasAfterScroll
    AfterScroll = qrLocContasAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Left = 504
    Top = 40
    object qrLocContasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Empresa'
      Size = 4
    end
    object qrLocContasFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Filial'
      Size = 4
    end
    object qrLocContasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Codigo'
      Size = 15
    end
    object qrLocContasFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Fornecedor'
      Size = 4
    end
    object qrLocContasData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Data_Emissao'
    end
    object qrLocContasData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Data_Vencimento'
    end
    object qrLocContasHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Historico'
      Size = 120
    end
    object qrLocContasSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Saldo'
    end
    object qrLocContasValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Valor'
    end
    object qrLocContasPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Plano_contas'
      Size = 8
    end
  end
  object dsLocContas: TDataSource
    DataSet = qrLocContas
    Left = 520
    Top = 56
  end
  object qrFiltFornec: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Fornecedores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social'
      '')
    Left = 552
    Top = 40
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
    object qrFiltFornecEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Fornecedores.Empresa'
      Size = 4
    end
    object qrFiltFornecFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Fornecedores.Filial'
      Size = 4
    end
    object qrFiltFornecCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Fornecedores.Codigo'
      Size = 4
    end
    object qrFiltFornecRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Fornecedores.Razao_Social'
      Size = 60
    end
    object qrFiltFornecPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Fornecedores.Pais'
      Size = 3
    end
    object qrFiltFornecCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Fornecedores.CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object qrFiltFornecCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Fornecedores.CGC_CPF'
      Size = 10
    end
    object qrFiltFornecTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Origin = 'DBNMSCOMEX.Fornecedores.Tipo_Importador'
      Size = 1
    end
    object qrFiltFornecEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Fornecedores.Endereco'
      Size = 40
    end
    object qrFiltFornecNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Fornecedores.Numero'
      Size = 6
    end
    object qrFiltFornecComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Fornecedores.Complemento'
      Size = 21
    end
    object qrFiltFornecBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Fornecedores.Bairro'
      Size = 25
    end
    object qrFiltFornecCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Fornecedores.Cidade'
      Size = 25
    end
    object qrFiltFornecCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Fornecedores.CEP'
      Size = 10
    end
    object qrFiltFornecUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Fornecedores.UF'
      Size = 2
    end
    object qrFiltFornecEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Fornecedores.Estado'
      Size = 25
    end
    object qrFiltFornecInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Fornecedores.Inscricao_Estadual'
      Size = 15
    end
    object qrFiltFornecBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Fornecedores.Banco'
      Size = 5
    end
    object qrFiltFornecAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Fornecedores.Agencia'
      Size = 5
    end
    object qrFiltFornecConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Fornecedores.Conta_Corrente'
      Size = 8
    end
    object qrFiltFornecConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
      Origin = 'DBNMSCOMEX.Fornecedores.Conta_Corrente_Registro'
    end
    object qrFiltFornecConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
      Origin = 'DBNMSCOMEX.Fornecedores.Conta_Corrente_Deposito'
    end
    object qrFiltFornecTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Fornecedores.Telefone'
      Size = 15
    end
  end
  object dsFiltFornec: TDataSource
    DataSet = qrFiltFornec
    Left = 568
    Top = 56
  end
  object qrRelPlano: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Plano_Contas'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Descricao')
    Left = 600
    Top = 40
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
    object qrRelPlanoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Plano_Contas.Empresa'
      Size = 4
    end
    object qrRelPlanoFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Plano_Contas.Filial'
      Size = 4
    end
    object qrRelPlanoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Plano_Contas.Codigo'
      Size = 8
    end
    object qrRelPlanoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Plano_Contas.Descricao'
      Size = 50
    end
  end
  object dsRelPlano: TDataSource
    DataSet = qrRelPlano
    Left = 616
    Top = 56
  end
  object qrVerificaConta: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Fornecedor'
      'FROM Contas_Pagar'
      'WHERE Empresa = :emp AND Filial = :filial'
      'AND Fornecedor = :fornec'
      'AND Codigo = :cod')
    Left = 648
    Top = 40
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
        Name = 'fornec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '*'
      end>
    object qrVerificaContaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Codigo'
      Size = 15
    end
    object qrVerificaContaFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Fornecedor'
      Size = 4
    end
  end
end
