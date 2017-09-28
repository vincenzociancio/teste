object f_nfservicos: Tf_nfservicos
  Left = 278
  Top = 167
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    'Notas Fiscais de Serviços / RPS - Registro Provisório de Serviço' +
    's'
  ClientHeight = 547
  ClientWidth = 776
  Color = clGray
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 679
    Top = 0
    Width = 97
    Height = 547
    Align = alRight
    Color = 10514464
    TabOrder = 1
    Visible = False
    object btnNovo: TBitBtn
      Left = 6
      Top = 16
      Width = 88
      Height = 25
      Caption = '&Nova'
      ParentShowHint = False
      ShowHint = True
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
    object btnExcluir: TBitBtn
      Left = 6
      Top = 80
      Width = 88
      Height = 25
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
      Left = 6
      Top = 304
      Width = 88
      Height = 25
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object btnImprimir: TBitBtn
      Left = 6
      Top = 368
      Width = 88
      Height = 25
      Caption = 'Imprimir NF'
      Enabled = False
      TabOrder = 8
      Visible = False
      OnClick = btnImprimirClick
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
    object btnAlterar: TBitBtn
      Left = 6
      Top = 48
      Width = 88
      Height = 25
      Caption = '&Alterar'
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
    object btnPSNF: TBitBtn
      Left = 6
      Top = 336
      Width = 88
      Height = 25
      Caption = 'Proc.&SNF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnPSNFClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object btnSalvar: TBitBtn
      Left = 6
      Top = 160
      Width = 88
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 3
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
      Left = 6
      Top = 192
      Width = 88
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 4
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
      Left = 6
      Top = 516
      Width = 88
      Height = 25
      Caption = '&Fechar'
      TabOrder = 9
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnItens: TBitBtn
      Tag = 8
      Left = 6
      Top = 272
      Width = 88
      Height = 25
      Hint = 'Itens da Nota Fiscal de Serviço'
      Caption = '&Itens'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnItensClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888888888888888888800008888
        88888888777777780000888888888880000000780000888888888840FBFBF078
        0000888888888480000000880000888888884888888888880000887777748888
        77777778000080000007777000000078000080FFFF044440FBFBF07800008000
        0008788000000088000088888884878888888888000088888888487877777778
        0000888888888480000000780000888888888840FBFBF0780000888888888880
        0000008800008888888888888888888800008888888888888888888800008888
        88888888888888880000}
    end
    object btnHabCanc: TBitBtn
      Left = 6
      Top = 112
      Width = 88
      Height = 25
      Hint = 'Cancelar Nota Fiscal de Serviço'
      BiDiMode = bdLeftToRight
      Caption = '&Cancelar'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnHabCancClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      Spacing = 2
    end
    object btnProc: TBitBtn
      Left = 6
      Top = 483
      Width = 88
      Height = 25
      Caption = '&Proc.Receb.'
      TabOrder = 11
      OnClick = btnProcClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object B_IMPRPS: TBitBtn
      Left = 7
      Top = 400
      Width = 88
      Height = 25
      Caption = 'Imprimir RPS'
      TabOrder = 12
      OnClick = B_IMPRPSClick
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
    object BitBtn3: TBitBtn
      Left = 6
      Top = 451
      Width = 88
      Height = 25
      Caption = 'RPS / NF-e'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 547
    Align = alLeft
    Caption = 'pnlPrincipal'
    Color = clTeal
    TabOrder = 0
    Visible = False
    object pnlP1: TPanel
      Left = 1
      Top = 69
      Width = 677
      Height = 70
      Align = alTop
      Color = 10514464
      TabOrder = 0
      object Label20: TLabel
        Left = 255
        Top = 6
        Width = 107
        Height = 13
        Caption = 'Natureza dos Serviços'
        FocusControl = dbEdtNatureza
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 299
        Top = 27
        Width = 63
        Height = 13
        Caption = 'Código Fiscal'
        FocusControl = dbEdtCodFiscal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 8
        Top = 7
        Width = 22
        Height = 13
        Caption = 'RPS'
        FocusControl = dbEdtNatureza
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 9
        Top = 31
        Width = 44
        Height = 13
        Caption = 'Processo'
        FocusControl = dbEdtNatureza
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 245
        Top = 51
        Width = 117
        Height = 13
        Caption = 'Condição de Pagamento'
        FocusControl = dbEdtNatureza
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 510
        Top = 28
        Width = 80
        Height = 13
        Caption = 'Data de Emissão'
        FocusControl = dbEdtDtEmissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblHabCanc: TLabel
        Left = 48
        Top = 51
        Width = 82
        Height = 16
        Caption = 'lblHabCanc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 8
        Top = 51
        Width = 33
        Height = 13
        Caption = 'Status:'
        FocusControl = dbEdtNatureza
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 489
        Top = 48
        Width = 106
        Height = 13
        Caption = 'Data Recebimento'
        FocusControl = dbEdtDtRecebe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 147
        Top = 7
        Width = 25
        Height = 13
        Caption = 'Nfs-e'
        FocusControl = dbEdtNatureza
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbEdtNatureza: TDBEdit
        Left = 364
        Top = 3
        Width = 309
        Height = 21
        DataField = 'Nat_Serv'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 3
        OnKeyPress = dbEdtNaturezaKeyPress
      end
      object dbEdtCodFiscal: TDBEdit
        Left = 364
        Top = 24
        Width = 91
        Height = 21
        DataField = 'Codigo_Fiscal'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 4
        OnKeyPress = dbEdtCodFiscalKeyPress
      end
      object dbEdtCondPag: TDBEdit
        Left = 364
        Top = 45
        Width = 91
        Height = 21
        DataField = 'Cond_Pagto'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 6
        OnKeyPress = dbEdtCondPagKeyPress
      end
      object dbEdtProc: TDBEdit
        Left = 56
        Top = 27
        Width = 73
        Height = 21
        DataField = 'Processo'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 2
        OnKeyPress = dbEdtProcKeyPress
      end
      object dbEdtDtEmissao: TDBEdit
        Left = 598
        Top = 24
        Width = 75
        Height = 21
        DataField = 'Data_emissao'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 5
        OnChange = dbEdtDtEmissaoChange
        OnKeyPress = dbEdtDtEmissaoKeyPress
      end
      object dbEdtNFS: TDBEdit
        Left = 32
        Top = 3
        Width = 73
        Height = 21
        DataField = 'NFiscal'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 1
        OnKeyPress = dbEdtNFSKeyPress
      end
      object dbLcbNFS: TDBLookupComboBox
        Left = 48
        Top = 3
        Width = 89
        Height = 21
        KeyField = 'NFiscal'
        ListField = 'NFiscal'
        ListSource = dsNFS
        TabOrder = 0
      end
      object dbEdtDtRecebe: TDBEdit
        Left = 598
        Top = 44
        Width = 75
        Height = 21
        DataField = 'Data_Recebimento'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 7
        OnChange = dbEdtDtEmissaoChange
        OnKeyPress = dbEdtDtEmissaoKeyPress
      end
      object b_varios: TBitBtn
        Left = 133
        Top = 27
        Width = 84
        Height = 23
        Hint = 'Gerar Nota Fiscal de Serviço Unificada de vários processos'
        Caption = 'Unificada'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = b_variosClick
        Kind = bkAll
      end
      object DBEdit18: TDBEdit
        Left = 176
        Top = 3
        Width = 67
        Height = 21
        DataField = 'NFiscal_e'
        DataSource = dsNFS
        Enabled = False
        TabOrder = 9
        OnKeyPress = dbEdtNFSKeyPress
      end
    end
    object pnlP3: TPanel
      Left = 1
      Top = 299
      Width = 677
      Height = 107
      Align = alBottom
      Color = 10514464
      TabOrder = 4
      object DBGrid1: TDBGrid
        Left = 8
        Top = 1
        Width = 665
        Height = 93
        Hint = 'CTRL+DELETE para excluir Item'
        DataSource = dsNFSDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Unidade'
            Title.Caption = 'Unid.'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Caption = 'Quant.'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Discriminação dos Serviços'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_unitario'
            Title.Caption = 'Preço Unitário'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_total'
            Title.Caption = 'Valor R$'
            Width = 75
            Visible = True
          end>
      end
    end
    object pnlP4: TPanel
      Left = 1
      Top = 406
      Width = 677
      Height = 68
      Align = alBottom
      Color = 10514464
      Enabled = False
      TabOrder = 2
      object Label14: TLabel
        Left = 8
        Top = 48
        Width = 497
        Height = 14
        Caption = 
          'O IMPOSTO SOBRE SERVIÇOS FOI CALCULADO PELA ALÍQUOTA DE         ' +
          ' % DE ACORDO COM A LEI.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 499
        Top = 8
        Width = 88
        Height = 13
        Caption = 'Valor dos Serviços'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 540
        Top = 28
        Width = 47
        Height = 13
        Caption = '( + ) I.S.S.'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 541
        Top = 48
        Width = 46
        Height = 13
        Caption = 'Sub Total'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object me_iss: TMaskEdit
        Left = 592
        Top = 24
        Width = 81
        Height = 21
        TabOrder = 0
      end
      object me_subtotal: TMaskEdit
        Left = 592
        Top = 44
        Width = 81
        Height = 21
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 345
        Top = 40
        Width = 27
        Height = 21
        DataField = 'Percentual_ISS'
        DataSource = dsNFS
        TabOrder = 2
        OnKeyPress = DBEdit14KeyPress
      end
      object dbEdtValServico: TDBEdit
        Left = 592
        Top = 3
        Width = 81
        Height = 21
        DataField = 'ValServico'
        DataSource = dsNFS
        TabOrder = 3
      end
    end
    object pnlP5: TPanel
      Left = 1
      Top = 474
      Width = 677
      Height = 72
      Align = alBottom
      Color = 10514464
      Enabled = False
      TabOrder = 3
      object Label13: TLabel
        Left = 8
        Top = 9
        Width = 491
        Height = 14
        Caption = 
          'O IMPOSTO SOBRE A RENDA FOI CALCULADO PELA ALÍQUOTA DE          ' +
          '% DE ACORDO COM A LEI.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 526
        Top = 8
        Width = 59
        Height = 13
        Caption = '( - ) I. Renda'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 534
        Top = 52
        Width = 51
        Height = 13
        Caption = 'Valor Total'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 546
        Top = 30
        Width = 39
        Height = 13
        Caption = '( - ) PCC'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 8
        Top = 29
        Width = 491
        Height = 14
        Caption = 
          'O IMPOSTO SOBRE A RENDA FOI CALCULADO PELA ALÍQUOTA DE          ' +
          '% DE ACORDO COM A LEI.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object me_irrf: TMaskEdit
        Left = 592
        Top = 4
        Width = 81
        Height = 21
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 339
        Top = 5
        Width = 27
        Height = 21
        DataField = 'Percentual_IRRF'
        DataSource = dsNFS
        TabOrder = 1
        OnKeyPress = DBEdit15KeyPress
      end
      object dbEdtValTot: TDBEdit
        Left = 592
        Top = 48
        Width = 81
        Height = 21
        DataField = 'Vatotnota'
        DataSource = dsNFS
        TabOrder = 2
      end
      object me_pcc: TMaskEdit
        Left = 592
        Top = 26
        Width = 81
        Height = 21
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 339
        Top = 25
        Width = 27
        Height = 21
        DataField = 'Percentual_PCC'
        DataSource = dsNFS
        TabOrder = 4
        OnKeyPress = DBEdit12KeyPress
      end
    end
    object pnlP2: TPanel
      Left = 1
      Top = 139
      Width = 677
      Height = 160
      Align = alBottom
      Color = 10514464
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 675
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Usuário dos Serviços'
        Color = 10514464
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 3
        Width = 63
        Height = 13
        Caption = 'Razão Social'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 39
        Width = 46
        Height = 13
        Caption = 'Endereço'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 336
        Top = 39
        Width = 37
        Height = 13
        Caption = 'Número'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 376
        Top = 39
        Width = 64
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 504
        Top = 39
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 75
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 296
        Top = 75
        Width = 33
        Height = 13
        Caption = 'Estado'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 576
        Top = 75
        Width = 14
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 600
        Top = 75
        Width = 21
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 456
        Top = 3
        Width = 58
        Height = 13
        Caption = 'CNPJ / CPF'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 10
        Top = 119
        Width = 64
        Height = 13
        Caption = 'Insc.Estadual'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 10
        Top = 142
        Width = 68
        Height = 13
        Caption = 'Insc.Municipal'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 319
        Top = 142
        Width = 81
        Height = 13
        Caption = 'Email Rec NFS-e'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 356
        Top = 123
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 17
        Width = 449
        Height = 21
        DataField = 'Razao_Social'
        DataSource = dsNFS
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 53
        Width = 329
        Height = 21
        DataField = 'Endereco'
        DataSource = dsNFS
        TabOrder = 2
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 336
        Top = 53
        Width = 40
        Height = 21
        DataField = 'Numero'
        DataSource = dsNFS
        TabOrder = 3
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 376
        Top = 53
        Width = 129
        Height = 21
        DataField = 'Complemento'
        DataSource = dsNFS
        TabOrder = 4
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 504
        Top = 53
        Width = 169
        Height = 21
        DataField = 'Bairro'
        DataSource = dsNFS
        TabOrder = 5
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 89
        Width = 289
        Height = 21
        DataField = 'Cidade'
        DataSource = dsNFS
        TabOrder = 6
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 296
        Top = 89
        Width = 281
        Height = 21
        DataField = 'Estado'
        DataSource = dsNFS
        TabOrder = 7
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 576
        Top = 89
        Width = 25
        Height = 21
        DataField = 'UF'
        DataSource = dsNFS
        TabOrder = 8
        OnKeyPress = DBEdit8KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 600
        Top = 89
        Width = 73
        Height = 21
        DataField = 'CEP'
        DataSource = dsNFS
        TabOrder = 9
        OnKeyPress = DBEdit9KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 456
        Top = 17
        Width = 217
        Height = 21
        DataField = 'CGC_CPF'
        DataSource = dsNFS
        TabOrder = 1
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 84
        Top = 113
        Width = 129
        Height = 21
        DataField = 'Inscricao_Estadual'
        DataSource = dsNFS
        TabOrder = 10
        OnKeyPress = DBEdit11KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 84
        Top = 137
        Width = 129
        Height = 21
        DataField = 'Inscricao_Municipal'
        DataSource = dsNFS
        TabOrder = 11
        OnKeyPress = DBEdit11KeyPress
      end
      object DBEdit16: TDBEdit
        Left = 404
        Top = 137
        Width = 269
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsNFS
        TabOrder = 13
        OnKeyPress = DBEdit11KeyPress
      end
      object DBEdit17: TDBEdit
        Left = 404
        Top = 115
        Width = 149
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsNFS
        TabOrder = 12
        OnKeyPress = DBEdit11KeyPress
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 677
      Height = 68
      Align = alTop
      Color = 10514464
      TabOrder = 5
      object DBGrid3: TDBGrid
        Left = 8
        Top = 5
        Width = 665
        Height = 60
        DataSource = ds_qremp
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Razao_Social'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Filial'
            Width = 203
            Visible = True
          end>
      end
    end
  end
  object pnlLocNF: TPanel
    Left = 105
    Top = 527
    Width = 504
    Height = 382
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object Label35: TLabel
      Left = 120
      Top = 331
      Width = 25
      Height = 13
      Caption = 'Nfs-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 14
      Top = 331
      Width = 22
      Height = 13
      Caption = 'RPS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel9: TPanel
      Left = 6
      Top = 6
      Width = 492
      Height = 27
      Align = alTop
      Caption = 'Informa RPS'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid5: TDBGrid
      Left = 13
      Top = 89
      Width = 475
      Height = 234
      DataSource = dsNfse
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NFiscal'
          Title.Alignment = taCenter
          Title.Caption = 'Rps'
          Width = 228
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NFiscal_e'
          Title.Alignment = taCenter
          Title.Caption = 'Nfs-e'
          Width = 221
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 38
      Width = 252
      Height = 45
      Caption = ' Localizar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object ed_loc: TMaskEdit
        Left = 171
        Top = 15
        Width = 65
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 2
        OnChange = ed_locChange
        OnKeyPress = ed_locKeyPress
      end
      object rbRps1: TRadioButton
        Left = 13
        Top = 19
        Width = 64
        Height = 17
        Caption = 'RPS'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbRps1Click
      end
      object rbNfe1: TRadioButton
        Left = 80
        Top = 19
        Width = 57
        Height = 17
        Caption = 'Nfs-e'
        TabOrder = 1
        OnClick = rbRps1Click
      end
    end
    object dbedRps: TDBEdit
      Left = 13
      Top = 347
      Width = 100
      Height = 21
      DataField = 'NFiscal'
      DataSource = dsNfse
      Enabled = False
      TabOrder = 3
    end
    object btnFecharPnlRps: TBitBtn
      Left = 416
      Top = 344
      Width = 73
      Height = 24
      Caption = '&Fechar'
      TabOrder = 7
      OnClick = pnlProcExit
      Kind = bkCancel
    end
    object btnAlterarPnlRps: TBitBtn
      Left = 232
      Top = 344
      Width = 63
      Height = 24
      Caption = '&Alterar'
      TabOrder = 5
      OnClick = btnAlterarPnlRpsClick
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
    object btnSalvarPnlRps: TBitBtn
      Left = 302
      Top = 344
      Width = 63
      Height = 24
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 6
      OnClick = btnSalvarPnlRpsClick
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
    object edNfse: TEdit
      Left = 120
      Top = 347
      Width = 100
      Height = 21
      Enabled = False
      TabOrder = 4
      OnKeyPress = dbedNfeKeyPress
    end
  end
  object pnlProcSNF: TPanel
    Left = 585
    Top = 228
    Width = 568
    Height = 229
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    OnExit = btnOkPNFSClick
    object Label27: TLabel
      Left = 16
      Top = 328
      Width = 3
      Height = 13
      Caption = ' '
    end
    object Panel11: TPanel
      Left = 6
      Top = 6
      Width = 556
      Height = 27
      Align = alTop
      Caption = 'Processos sem Notas Fiscais de Serviços'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 40
      Width = 529
      Height = 273
      DataSource = dsProSNF
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
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
          Title.Caption = 'Processo'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Razão Social do Importador'
          Width = 374
          Visible = True
        end>
    end
    object btnOkPNFS: TBitBtn
      Left = 472
      Top = 320
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 2
      OnClick = btnOkPNFSClick
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
  object pnlItens: TPanel
    Left = 49
    Top = 152
    Width = 689
    Height = 249
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Label28: TLabel
      Left = 16
      Top = 160
      Width = 25
      Height = 13
      Caption = 'Unid.'
    end
    object Label29: TLabel
      Left = 56
      Top = 160
      Width = 32
      Height = 13
      Caption = 'Quant.'
    end
    object Label30: TLabel
      Left = 96
      Top = 160
      Width = 130
      Height = 13
      Caption = 'Discriminação dos Serviços'
    end
    object Label31: TLabel
      Left = 496
      Top = 160
      Width = 67
      Height = 13
      Caption = 'Preço Unitário'
    end
    object Label32: TLabel
      Left = 584
      Top = 160
      Width = 41
      Height = 13
      Caption = 'Valor R$'
    end
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 677
      Height = 27
      Align = alTop
      Caption = 
        'Itens da Nota Fiscal de Serviço / RPS - Registro Provisório de S' +
        'erviços'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object dbGrdItens: TDBGrid
      Left = 12
      Top = 40
      Width = 665
      Height = 113
      Hint = 'CTRL+DELETE para excluir Item'
      DataSource = dsNFSDet
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Unidade'
          Title.Caption = 'Unid.'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Caption = 'Quant.'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Discriminação dos Serviços'
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_unitario'
          Title.Caption = 'Preço Unitário'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_total'
          Title.Caption = 'Valor R$'
          Width = 75
          Visible = True
        end>
    end
    object dbEdtUnid: TDBEdit
      Left = 16
      Top = 176
      Width = 41
      Height = 21
      DataField = 'Unidade'
      DataSource = dsNFSDet
      Enabled = False
      TabOrder = 1
      OnKeyPress = dbEdtUnidKeyPress
    end
    object dbEdtQuant: TDBEdit
      Left = 56
      Top = 176
      Width = 41
      Height = 21
      DataField = 'Quantidade'
      DataSource = dsNFSDet
      Enabled = False
      TabOrder = 2
      OnKeyPress = dbEdtQuantKeyPress
    end
    object dbEdtDisc: TDBEdit
      Left = 96
      Top = 176
      Width = 401
      Height = 21
      DataField = 'Descricao'
      DataSource = dsNFSDet
      Enabled = False
      TabOrder = 3
    end
    object dbEdtUnit: TDBEdit
      Left = 496
      Top = 176
      Width = 89
      Height = 21
      DataField = 'Valor_unitario'
      DataSource = dsNFSDet
      Enabled = False
      TabOrder = 4
      OnKeyPress = dbEdtUnitKeyPress
    end
    object dbEdtVal: TDBEdit
      Left = 584
      Top = 176
      Width = 89
      Height = 21
      DataField = 'Valor_total'
      DataSource = dsNFSDet
      Enabled = False
      TabOrder = 5
    end
    object btnNovoItens: TBitBtn
      Left = 16
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 6
      OnClick = btnNovoItensClick
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
    object btnAlterarItens: TBitBtn
      Left = 96
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 7
      OnClick = btnAlterarItensClick
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
    object btnExcluirItens: TBitBtn
      Left = 176
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 8
      OnClick = btnExcluirItensClick
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
    object btnSalvarItens: TBitBtn
      Left = 344
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 9
      OnClick = btnSalvarItensClick
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
    object btnCancelarItens: TBitBtn
      Left = 424
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 10
      OnClick = btnCancelarItensClick
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
    object btnFecharItens: TBitBtn
      Left = 592
      Top = 208
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 11
      OnClick = btnFecharItensClick
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
  object p_locpro: TPanel
    Left = 544
    Top = 64
    Width = 673
    Height = 241
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 5
    Visible = False
    object Panel4: TPanel
      Left = 6
      Top = 6
      Width = 661
      Height = 27
      Align = alTop
      Caption = 'Localiza Notas Fiscais de Serviços'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object bb_oklocpro: TBitBtn
      Left = 256
      Top = 208
      Width = 88
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 0
      OnClick = bb_oklocproClick
      Kind = bkOK
    end
    object bb_cancellocpro: TBitBtn
      Left = 352
      Top = 208
      Width = 88
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bb_cancellocproClick
      Kind = bkCancel
    end
    object DBGrid4: TDBGrid
      Left = 16
      Top = 80
      Width = 641
      Height = 124
      DataSource = dslocpro
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NFiscal_e'
          Title.Caption = 'NF-e'
          Width = 48
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Processo'
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NFiscal'
          Title.Caption = 'RPS'
          Width = 46
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_emissao'
          Title.Caption = 'Dt.Emissão'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cancelada'
          Title.Caption = 'Status'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 252
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vatotnota'
          Title.Caption = 'Valor'
          Visible = True
        end>
    end
    object gbLocalizar: TGroupBox
      Left = 16
      Top = 37
      Width = 369
      Height = 41
      Caption = ' Localizar '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object edtLoc: TMaskEdit
        Left = 291
        Top = 14
        Width = 65
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 3
        OnChange = me_processoChange
      end
      object rbRps: TRadioButton
        Left = 109
        Top = 18
        Width = 89
        Height = 17
        Caption = 'RPS'
        TabOrder = 0
        OnClick = rbProcessoClick
      end
      object rbProcesso: TRadioButton
        Left = 18
        Top = 18
        Width = 76
        Height = 17
        Caption = 'Processo'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rbProcessoClick
      end
      object rbNfe: TRadioButton
        Left = 192
        Top = 18
        Width = 91
        Height = 17
        Caption = 'NF-e'
        TabOrder = 2
        OnClick = rbProcessoClick
      end
    end
  end
  object pnlProc: TPanel
    Left = 720
    Top = 160
    Width = 345
    Height = 129
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 6
    Visible = False
    OnExit = pnlProcExit
    object Label37: TLabel
      Left = 15
      Top = 49
      Width = 144
      Height = 13
      Caption = 'Período de Emissao: de  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_dataini: TLabel
      Left = 234
      Top = 46
      Width = 19
      Height = 13
      Caption = 'até'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 6
      Top = 6
      Width = 333
      Height = 27
      Align = alTop
      Caption = 'Processar Recebimento'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 84
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 176
      Top = 84
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = pnlProcExit
      Kind = bkCancel
    end
    object me_dini: TMaskEdit
      Left = 162
      Top = 43
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object me_dfin: TMaskEdit
      Left = 261
      Top = 43
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
    end
  end
  object p_nova: TPanel
    Left = 56
    Top = 400
    Width = 281
    Height = 129
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 7
    Visible = False
    OnExit = p_novaExit
    object Label39: TLabel
      Left = 31
      Top = 41
      Width = 220
      Height = 13
      Caption = 'Verifique e confirme próxima NF / RPS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel6: TPanel
      Left = 6
      Top = 6
      Width = 269
      Height = 27
      Align = alTop
      Caption = 'Nova NOTA FISCAL / RPS'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object b_nova: TBitBtn
      Left = 64
      Top = 92
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = b_novaClick
      Kind = bkOK
    end
    object BitBtn4: TBitBtn
      Left = 152
      Top = 92
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = p_novaExit
      Kind = bkCancel
    end
    object me_novanf: TMaskEdit
      Left = 106
      Top = 59
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object p_varios: TPanel
    Left = 72
    Top = 176
    Width = 585
    Height = 276
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 8
    Visible = False
    object Label43: TLabel
      Left = 16
      Top = 46
      Width = 113
      Height = 13
      Caption = 'Digite o Nº do Processo'
      FocusControl = dbEdtNatureza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ME_PROVARIOS: TMaskEdit
      Left = 136
      Top = 42
      Width = 73
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnChange = ME_PROVARIOSChange
    end
    object Panel7: TPanel
      Left = 6
      Top = 6
      Width = 573
      Height = 27
      Align = alTop
      Caption = 'Seleciona Processos insere na Nota Fiscal Serviço / RPS'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid6: TDBGrid
      Left = 16
      Top = 99
      Width = 553
      Height = 132
      DataSource = DS_NFPROD
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PROCESSO'
          Title.Caption = 'Ref MS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_Cliente'
          Title.Caption = 'Ref Empresa'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMPRESA'
          Title.Caption = 'Empresa'
          Width = 191
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_PROCESSO'
          Title.Caption = 'Tipo Processo'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_DECLARACAO_IMP'
          Title.Caption = 'DI'
          Width = 79
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 6
      Top = 74
      Width = 572
      Height = 23
      Caption = 'Processos Selecionados'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object exclui_varios: TBitBtn
      Left = 196
      Top = 240
      Width = 88
      Height = 25
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = exclui_variosClick
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
    object fecha_varios: TBitBtn
      Left = 298
      Top = 239
      Width = 75
      Height = 26
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = fecha_variosClick
      Kind = bkCancel
    end
    object b_prodetalhe: TButton
      Left = 496
      Top = 240
      Width = 75
      Height = 25
      Caption = 'b_prodetalhe'
      TabOrder = 6
      Visible = False
      OnClick = b_prodetalheClick
    end
    object btnAdicionarMedicao: TBitBtn
      Tag = 8
      Left = 218
      Top = 38
      Width = 123
      Height = 25
      Hint = 'Adicionar Medição'
      Caption = '&Adicionar Medição'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnAdicionarMedicaoClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888888888888888888800008888
        88888888777777780000888888888880000000780000888888888840FBFBF078
        0000888888888480000000880000888888884888888888880000887777748888
        77777778000080000007777000000078000080FFFF044440FBFBF07800008000
        0008788000000088000088888884878888888888000088888888487877777778
        0000888888888480000000780000888888888840FBFBF0780000888888888880
        0000008800008888888888888888888800008888888888888888888800008888
        88888888888888880000}
    end
  end
  object pnl_Medicoes: TPanel
    Left = 175
    Top = 24
    Width = 504
    Height = 519
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 9
    Visible = False
    object lblImportador: TLabel
      Left = 97
      Top = 616
      Width = 3
      Height = 13
    end
    object Label26: TLabel
      Left = 32
      Top = 187
      Width = 75
      Height = 16
      Caption = 'Processos'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel10: TPanel
      Left = 6
      Top = 6
      Width = 492
      Height = 27
      Align = alTop
      Caption = 'Medições'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object dbgridItensMedicao: TDBGrid
      Left = 13
      Top = 212
      Width = 475
      Height = 264
      TabStop = False
      DataSource = dsControle_Medicao_Itens
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Processo'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 368
          Visible = True
        end>
    end
    object dbgridMedicao: TDBGrid
      Left = 13
      Top = 41
      Width = 475
      Height = 132
      Hint = 'Dê dois cliques para adicionar a medição'
      TabStop = False
      DataSource = dsControle_Medicao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgridMedicaoDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Medicao'
          Title.Caption = 'Data'
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Status'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Local_Inventario'
          Title.Caption = 'Embarcação'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Grupo'
          Title.Caption = 'Cliente'
          Width = 224
          Visible = True
        end>
    end
    object btnFecharPnlMedicao: TBitBtn
      Left = 414
      Top = 482
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnFecharPnlMedicaoClick
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
  object tbParamNFS: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_qremp
    TableName = 'Parametros_NF_Servicos'
    Left = 736
    Top = 488
    object tbParamNFSEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbParamNFSFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbParamNFSUltima_NF: TStringField
      FieldName = 'Ultima_NF'
      Size = 6
    end
    object tbParamNFSNat_Serv: TStringField
      FieldName = 'Nat_Serv'
      Size = 50
    end
    object tbParamNFSCodigo_Fiscal: TStringField
      FieldName = 'Codigo_Fiscal'
      Size = 50
    end
    object tbParamNFSPercentual_ISS: TFloatField
      FieldName = 'Percentual_ISS'
    end
    object tbParamNFSPercentual_IRRF: TFloatField
      FieldName = 'Percentual_IRRF'
    end
    object tbParamNFSPercentual_PCC: TFloatField
      FieldName = 'Percentual_PCC'
    end
  end
  object dsParamNFS: TDataSource
    DataSet = tbParamNFS
    Left = 1064
    Top = 648
  end
  object tbNFS: TTable
    AutoCalcFields = False
    BeforeInsert = tbNFSBeforeEdit
    BeforeEdit = tbNFSBeforeEdit
    AfterPost = tbNFSAfterPost
    AfterCancel = tbNFSAfterPost
    BeforeDelete = tbNFSBeforeDelete
    AfterScroll = tbNFSAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;NFiscal'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_qremp
    TableName = 'Notas_Fiscais_Servicos'
    Left = 680
    Top = 488
    object tbNFSEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbNFSFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbNFSNFiscal: TStringField
      FieldName = 'NFiscal'
      OnSetText = tbNFSNFiscalSetText
      FixedChar = True
      Size = 6
    end
    object tbNFSProcesso: TStringField
      FieldName = 'Processo'
      OnSetText = tbNFSProcessoSetText
      FixedChar = True
      Size = 8
    end
    object tbNFSImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object tbNFSRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object tbNFSCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 18
    end
    object tbNFSEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object tbNFSNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object tbNFSComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object tbNFSBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object tbNFSCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object tbNFSCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object tbNFSUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object tbNFSEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object tbNFSInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object tbNFSCond_Pagto: TStringField
      FieldName = 'Cond_Pagto'
      FixedChar = True
      Size = 50
    end
    object tbNFSNat_Serv: TStringField
      FieldName = 'Nat_Serv'
      FixedChar = True
      Size = 50
    end
    object tbNFSCodigo_Fiscal: TStringField
      FieldName = 'Codigo_Fiscal'
      FixedChar = True
      Size = 50
    end
    object tbNFSData_emissao: TDateTimeField
      FieldName = 'Data_emissao'
    end
    object tbNFSPercentual_ISS: TFloatField
      FieldName = 'Percentual_ISS'
      OnSetText = tbNFSPercentual_ISSSetText
    end
    object tbNFSPercentual_IRRF: TFloatField
      FieldName = 'Percentual_IRRF'
      OnSetText = tbNFSPercentual_IRRFSetText
    end
    object tbNFSPercentual_PCC: TFloatField
      FieldName = 'Percentual_PCC'
    end
    object tbNFSVatotnota: TFloatField
      FieldName = 'Vatotnota'
    end
    object tbNFSCancelada: TIntegerField
      FieldName = 'Cancelada'
    end
    object tbNFSValservico: TFloatField
      FieldName = 'Valservico'
    end
    object tbNFSData_Recebimento: TDateTimeField
      FieldName = 'Data_Recebimento'
    end
    object tbNFSLOTE_RPS: TStringField
      FieldName = 'LOTE_RPS'
      FixedChar = True
      Size = 100
    end
    object tbNFSInscricao_Municipal: TStringField
      FieldName = 'Inscricao_Municipal'
      FixedChar = True
      Size = 15
    end
    object tbNFSEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 80
    end
    object tbNFSTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 15
    end
    object tbNFSNFiscal_e: TStringField
      FieldName = 'NFiscal_e'
      Size = 15
    end
  end
  object dsNFS: TDataSource
    DataSet = tbNFS
    Left = 952
    Top = 648
  end
  object tbNFSDet: TTable
    AutoCalcFields = False
    AfterOpen = tbNFSDetAfterOpen
    AfterPost = tbNFSDetAfterPost
    BeforeDelete = tbNFSDetBeforeDelete
    AfterDelete = tbNFSDetAfterPost
    AfterScroll = tbNFSDetAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;NFiscal;reg'
    MasterFields = 'Empresa;Filial;NFiscal'
    MasterSource = dsNFS
    TableName = 'Notas_Fiscais_Servicos_Detalhes'
    Left = 1048
    Top = 488
    object tbNFSDetEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbNFSDetFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbNFSDetNFiscal: TStringField
      FieldName = 'NFiscal'
      Size = 6
    end
    object tbNFSDetreg: TAutoIncField
      FieldName = 'reg'
    end
    object tbNFSDetUnidade: TStringField
      FieldName = 'Unidade'
      Size = 10
    end
    object tbNFSDetQuantidade: TStringField
      FieldName = 'Quantidade'
      OnSetText = tbNFSDetQuantidadeSetText
      Size = 6
    end
    object tbNFSDetDescricao: TStringField
      FieldName = 'Descricao'
      Size = 70
    end
    object tbNFSDetValor_unitario: TFloatField
      FieldName = 'Valor_unitario'
      OnSetText = tbNFSDetValor_unitarioSetText
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
    end
    object tbNFSDetValor_total: TFloatField
      FieldName = 'Valor_total'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '0.00'
    end
  end
  object dsNFSDet: TDataSource
    DataSet = tbNFSDet
    Left = 888
    Top = 584
  end
  object qrImport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Importadores'
      'WHERE Empresa = :emp AND Filial = :filial AND Codigo = :cod')
    Left = 784
    Top = 72
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
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrImportEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrImportFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      FixedChar = True
      Size = 4
    end
    object qrImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrImportPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Importadores.Pais'
      FixedChar = True
      Size = 3
    end
    object qrImportCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object qrImportCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Importadores.CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object qrImportTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Origin = 'DBNMSCOMEX.Importadores.Tipo_Importador'
      FixedChar = True
      Size = 1
    end
    object qrImportEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Importadores.Endereco'
      FixedChar = True
      Size = 40
    end
    object qrImportNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Importadores.Numero'
      FixedChar = True
      Size = 6
    end
    object qrImportComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Importadores.Complemento'
      FixedChar = True
      Size = 21
    end
    object qrImportBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Importadores.Bairro'
      FixedChar = True
      Size = 25
    end
    object qrImportCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      FixedChar = True
      Size = 25
    end
    object qrImportCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Importadores.CEP'
      FixedChar = True
      Size = 10
    end
    object qrImportUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Importadores.UF'
      FixedChar = True
      Size = 2
    end
    object qrImportEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Importadores.Estado'
      FixedChar = True
      Size = 25
    end
    object qrImportInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Importadores.Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object qrImportBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Importadores.Banco'
      FixedChar = True
      Size = 5
    end
    object qrImportAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Importadores.Agencia'
      FixedChar = True
      Size = 5
    end
    object qrImportConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object qrImportConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Registro'
    end
    object qrImportConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Deposito'
    end
    object qrImportlink: TStringField
      FieldName = 'link'
      Origin = 'DBNMSCOMEX.Importadores.link'
      FixedChar = True
      Size = 50
    end
    object qrImportCAE: TStringField
      FieldName = 'CAE'
      Origin = 'DBNMSCOMEX.Importadores.CAE'
      FixedChar = True
      Size = 15
    end
    object qrImportTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Importadores.Telefone'
      FixedChar = True
      Size = 15
    end
    object qrImportAtivo: TIntegerField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Importadores.Ativo'
    end
    object qrImportAcesso_WEB_MS: TIntegerField
      FieldName = 'Acesso_WEB_MS'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_MS'
    end
    object qrImportAcesso_WEB_CLI: TIntegerField
      FieldName = 'Acesso_WEB_CLI'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_CLI'
    end
    object qrImportAcesso_WEB_REC: TIntegerField
      FieldName = 'Acesso_WEB_REC'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_REC'
    end
    object qrImportBASE_ICMS: TIntegerField
      FieldName = 'BASE_ICMS'
      Origin = 'DBNMSCOMEX.Importadores.BASE_ICMS'
    end
    object qrImportMOV_REPETRO: TIntegerField
      FieldName = 'MOV_REPETRO'
      Origin = 'DBNMSCOMEX.Importadores.MOV_REPETRO'
    end
    object qrImportInscricao_Municipal: TStringField
      FieldName = 'Inscricao_Municipal'
      Origin = 'DBNMSCOMEX.Importadores.Inscricao_Municipal'
      FixedChar = True
      Size = 15
    end
    object qrImportEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'DBNMSCOMEX.Importadores.EMAIL'
      FixedChar = True
      Size = 80
    end
    object qrImportFATURA_ISS: TIntegerField
      FieldName = 'FATURA_ISS'
      Origin = 'DBNMSCOMEX.Importadores.FATURA_ISS'
    end
    object qrImportEMAIL_MONITORACAO: TStringField
      FieldName = 'EMAIL_MONITORACAO'
      Origin = 'DBNMSCOMEX.Importadores.EMAIL_MONITORACAO'
      FixedChar = True
      Size = 80
    end
  end
  object qrNum: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Numerario, Valor_Registrado'
      'FROM Numerarios_Processos'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Numerario = '#39'HONO'#39)
    Left = 840
    Top = 72
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
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrNumNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      Size = 4
    end
    object qrNumValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Registrado'
    end
  end
  object t_contratos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato'
    MasterFields = 'Empresa;Filial;Importador;Contrato'
    TableName = 'Contratos'
    Left = 1105
    Top = 488
    object t_contratosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_contratosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_contratosImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object t_contratosContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object t_contratosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_contratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object t_contratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object t_contratosTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object ds_contratos: TDataSource
    DataSet = t_contratos
    Left = 1136
    Top = 584
  end
  object t_conhecimento: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Código'
    TableName = 'Conhecimento_Processo'
    Left = 808
    Top = 488
    object t_conhecimentoEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_conhecimentoFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_conhecimentoProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_conhecimentoVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
    object t_conhecimentoMultimodal: TIntegerField
      FieldName = 'Multimodal'
    end
    object t_conhecimentoPLaca: TStringField
      FieldName = 'PLaca'
      FixedChar = True
      Size = 15
    end
    object t_conhecimentoLacre: TStringField
      FieldName = 'Lacre'
      FixedChar = True
      Size = 15
    end
    object t_conhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object t_conhecimentoTransportador: TStringField
      FieldName = 'Transportador'
      FixedChar = True
      Size = 4
    end
    object t_conhecimentoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      FixedChar = True
      Size = 2
    end
    object t_conhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object t_conhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object t_conhecimentoLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 50
    end
    object t_conhecimentoData: TDateTimeField
      FieldName = 'Data'
    end
    object t_conhecimentoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      FixedChar = True
      Size = 1
    end
    object t_conhecimentoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      FixedChar = True
      Size = 1
    end
    object t_conhecimentoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object t_conhecimentoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      FixedChar = True
      Size = 50
    end
    object t_conhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object t_conhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object t_conhecimentoAgente: TStringField
      FieldName = 'Agente'
      FixedChar = True
      Size = 30
    end
    object t_conhecimentoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      FixedChar = True
      Size = 3
    end
    object t_conhecimentoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object t_conhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object t_conhecimentoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      FixedChar = True
      Size = 7
    end
    object t_conhecimentoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      FixedChar = True
      Size = 3
    end
    object t_conhecimentoArmazem: TStringField
      FieldName = 'Armazem'
      FixedChar = True
      Size = 30
    end
    object t_conhecimentoOperacao_FUNDAP: TIntegerField
      FieldName = 'Operacao_FUNDAP'
    end
    object t_conhecimentoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      FixedChar = True
      Size = 18
    end
    object t_conhecimentoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      FixedChar = True
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
      FixedChar = True
      Size = 3
    end
    object t_conhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object t_conhecimentoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      FixedChar = True
      Size = 3
    end
    object t_conhecimentoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
    object t_conhecimentoUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object t_conhecimentoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object ds_conhecimento: TDataSource
    DataSet = t_conhecimento
    Left = 808
    Top = 648
  end
  object t_tipodoccarga: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'via;codigo'
    MasterFields = 'Via;Tipodoccarga'
    MasterSource = ds_conhecimento
    TableName = 'Tipo_Doc_Carga'
    Left = 888
    Top = 488
    object t_tipodoccargavia: TStringField
      FieldName = 'via'
      Size = 1
    end
    object t_tipodoccargacodigo: TStringField
      FieldName = 'codigo'
      Size = 2
    end
    object t_tipodoccargadescricao: TStringField
      FieldName = 'descricao'
      Size = 25
    end
  end
  object ds_tipodoccarga: TDataSource
    DataSet = t_tipodoccarga
    Left = 808
    Top = 584
  end
  object t_tipodocchegada: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'codigo'
    MasterFields = 'Tipomanifesto'
    MasterSource = ds_conhecimento
    TableName = 'Tipo_Doc_Chegada'
    Left = 972
    Top = 488
    object t_tipodocchegadacodigo: TStringField
      FieldName = 'codigo'
      Size = 1
    end
    object t_tipodocchegadadescricao: TStringField
      FieldName = 'descricao'
      Size = 25
    end
  end
  object ds_tipodocchegada: TDataSource
    DataSet = t_tipodocchegada
    Left = 888
    Top = 648
  end
  object psd_printer: TPrinterSetupDialog
    Left = 48
    Top = 376
  end
  object qrProSNF: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT DISTINCT Processos.Codigo, Processos.Data, Importadores.[' +
        'Razao_Social]'
      
        'FROM (Processos LEFT JOIN Notas_Fiscais_Servicos ON Processos.Co' +
        'digo = Notas_Fiscais_Servicos.Processo) INNER JOIN Importadores ' +
        'ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Fil' +
        'ial = Importadores.Filial) AND (Processos.Importador = Importado' +
        'res.Codigo)'
      
        'WHERE (((Notas_Fiscais_Servicos.Processo) Is Null) AND ((Process' +
        'os.Empresa)=:qempresa) AND ((Processos.Filial)=:qfilia))'
      'ORDER BY Processos.Data;')
    Left = 952
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilia'
        ParamType = ptUnknown
        Value = 'RJO'
      end>
  end
  object dsProSNF: TDataSource
    DataSet = qrProSNF
    Left = 952
    Top = 584
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 840
    Top = 16
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
  object dsParam: TDataSource
    DataSet = qrParam
    Left = 1136
    Top = 648
  end
  object qrDelNFSDet: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM Notas_Fiscais_Servicos_Detalhes'
      'WHERE Empresa = :emp AND Filial = :filial AND NFiscal = :nf')
    Left = 784
    Top = 128
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
        Name = 'nf'
        ParamType = ptUnknown
      end>
  end
  object qrProc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Processos.Codigo AS Cod, Processos.Codigo_Cliente AS ' +
        'CodCli, Processos.Importador, Processos.NR_DECLARACAO_IMP, Proce' +
        'ssos.Contrato, '
      
        '                      Processos.Local_Inventario, Importadores.F' +
        'ATURA_ISS, Processos.Data'
      'FROM         Processos INNER JOIN'
      
        '                      Importadores ON Processos.Importador = Imp' +
        'ortadores.Codigo'
      
        'WHERE Processos.Empresa = :emp AND Processos.Filial = :filial AN' +
        'D Processos.Codigo = :cod')
    Left = 728
    Top = 72
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
        Name = 'cod'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qrProcCod: TStringField
      FieldName = 'Cod'
      Size = 8
    end
    object qrProcCodCli: TStringField
      FieldName = 'CodCli'
      Size = 30
    end
    object qrProcImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrProcNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object qrProcContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object qrProcLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object qrProcFATURA_ISS: TIntegerField
      FieldName = 'FATURA_ISS'
      Origin = 'DBNMSCOMEX.Importadores.FATURA_ISS'
    end
    object qrProcData: TDateTimeField
      FieldName = 'Data'
    end
  end
  object qrLocais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Descricao'
      'FROM Locais_Inventario'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Importador = :imp ' +
        'AND Contrato = :cont AND Local = :loc')
    Left = 896
    Top = 72
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
        Name = 'cont'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'loc'
        ParamType = ptUnknown
      end>
    object qrLocaisDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Descricao'
      Size = 250
    end
  end
  object qrTestaNFS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT NFiscal'
      'FROM Notas_Fiscais_Servicos'
      'WHERE Empresa = :emp AND Filial = :filial AND NFiscal <> :nf'
      'ORDER BY cast(NFiscal as integer) DESC')
    Left = 1072
    Top = 72
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
        Name = 'nf'
        ParamType = ptUnknown
      end>
    object qrTestaNFSNFiscal: TStringField
      FieldName = 'NFiscal'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.NFiscal'
      Size = 6
    end
  end
  object qrAltNFSDet: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE notas_Fiscais_Servicos_Detalhes'
      'SET NFiscal = :novaNF'
      'WHERE Empresa = :emp AND Filial = :filial AND NFiscal = :nf')
    Left = 728
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'novaNF'
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
        Name = 'nf'
        ParamType = ptUnknown
      end>
  end
  object qrSomaItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(Valor_total) AS SomaValor_total'
      'FROM Notas_Fiscais_Servicos_Detalhes'
      'GROUP BY Empresa, Filial, NFiscal'
      'HAVING Empresa = :emp AND Filial = :filial AND NFiscal = :nf')
    Left = 1136
    Top = 72
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
        Name = 'nf'
        ParamType = ptUnknown
      end>
    object qrSomaItensSomaValor_total: TFloatField
      FieldName = 'SomaValor_total'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Detalhes.Valor_total'
    end
  end
  object alNF: TActionList
    Left = 16
    Top = 376
    object SomaItens: TAction
      Caption = 'Soma Itens da Nota Fiscal de Serviço'
      OnExecute = SomaItensExecute
    end
    object HabCanc: TAction
      Caption = 'Habilitar e Cancelar Nota Fiscal de Serviço'
      OnExecute = HabCancExecute
    end
  end
  object ilHabCanc: TImageList
    Left = 80
    Top = 376
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F000000007F0000007F
      0000007F0000007F00007F000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000000000007F7F7F00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF000000000000000000000000007F7F7F00FFFF
      FF007F7F7F00000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF007F7F7F000000000000000000000000007F7F7F007F7F7F007F7F
      7F000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000000000000000000000007F7F
      7F0000000000000000000000000000000000FFFFFF007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000BFBFBF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F00FFFFFF0000000000000000000000
      0000000000000000000000000000FFFFFF007F7F7F0000000000000000000000
      0000000000000000000000000000000000007F0000007F007F00FF00FF007F00
      7F0000000000FFFFFF00FFFF0000FFFFFF000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00007F7F7F000000000000000000000000007F7F7F00FFFFFF00000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000007F000000FF00FF007F007F00FF00
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007F000000000000000000
      000000000000000000000000000000FF000000000000BFBFBF007F7F7F00FFFF
      FF00000000000000000000FF0000007F0000007F00000000000000000000FFFF
      FF007F7F7F007F7F7F00000000000000000000000000BFBFBF007F7F7F00FFFF
      FF0000000000000000000000FF0000007F0000007F000000000000000000FFFF
      FF007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F0000007F007F00FF00FF007F00
      7F0000000000FFFFFF00FFFF0000FFFFFF00FFFF00007F000000000000000000
      00000000000000000000000000000000000000FF000000000000000000000000
      0000000000000000000000FF0000007F000000000000BFBFBF000000000000FF
      00000000000000FF0000007F000000FF0000007F0000007F00000000000000FF
      0000000000007F7F7F00000000000000000000000000BFBFBF00000000000000
      FF00000000000000FF0000007F000000FF0000007F0000007F00000000000000
      FF00000000007F7F7F0000000000000000007F000000FF00FF007F007F00FF00
      FF0000000000FFFF0000FFFFFF00FFFF0000FFFFFF007F000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF0000007F0000007F0000007F00007F00
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FF000000FF000000FF000000FF0000007F000000000000FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000FF000000FF000000FF000000FF0000007F0000000000FFFF
      FF00000000007F7F7F000000000000000000FFFF00007F000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF0000007F0000007F0000007F
      00007F0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000000000FF
      000000000000FFFFFF0000FF000000FF0000007F000000FF00000000000000FF
      000000000000BFBFBF00000000000000000000000000FFFFFF00000000000000
      FF0000000000FFFFFF000000FF000000FF0000007F000000FF00000000000000
      FF0000000000BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000007F0000007F
      0000007F00007F00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF0000000000000000007F7F7F00FFFFFF0000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FF00000000000000000000FFFF
      FF007F7F7F00BFBFBF00000000000000000000000000FFFFFF007F7F7F00FFFF
      FF000000000000000000FFFFFF00FFFFFF000000FF000000000000000000FFFF
      FF007F7F7F00BFBFBF000000000000000000000000000000000000FF0000007F
      0000007F0000007F00007F000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF0000000000000000007F7F7F00FFFFFF0000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000007F7F7F00FFFFFF00000000000000
      000000000000000000007F7F7F00FFFFFF0000000000000000007F7F7F000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000FFFFFF00BFBF
      BF0000000000FFFFFF000000FF00FFFFFF000000FF00FFFFFF0000000000BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00000000007F7F7F00FFFFFF00000000000000
      000000000000000000007F7F7F00FFFFFF00FFFFFF007F7F7F00000000000000
      0000000000007F7F7F00FFFFFF0000000000000000007F7F7F00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF007F7F7F000000000000000000000000007F7F7F00BFBFBF00BFBF
      BF00000000000000000000000000000000007F7F7F0000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      000000000000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF00BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00F8DFFFF83FF83FDFFFD7BD
      E00FE00FFFFFFFFFC007C007D7BDD7BD8003800300000000800380030000DFFF
      00010001FFFFFFFF000100010000000000010001DFFFDFFF00010001FFFF0000
      00010001FFFFFFFF80038003FFFFFFFF8003800300000000C007C007FFFFFFFF
      E00FE00F00000000F83FF83F0000000000000000000000000000000000000000
      000000000000}
  end
  object qr_emp: TQuery
    AfterScroll = qr_empAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Filiais.Codigo_Empresa AS empresa, Filiais.Codigo_Filial ' +
        'AS filial, Empresas.Razao_Social, Filiais.Descricao'
      
        'FROM Empresas INNER JOIN Filiais ON Empresas.Codigo = Filiais.Co' +
        'digo_Empresa'
      
        'GROUP BY Filiais.Codigo_Empresa, Filiais.Codigo_Filial, Empresas' +
        '.Razao_Social, Filiais.Descricao'
      'ORDER BY Filiais.Codigo_Empresa, Filiais.Codigo_Filial;')
    Left = 729
    Top = 15
    object qr_empempresa: TStringField
      FieldName = 'empresa'
      Origin = 'DBNMSCOMEX.Filiais.Codigo_Empresa'
      Size = 4
    end
    object qr_empfilial: TStringField
      FieldName = 'filial'
      Origin = 'DBNMSCOMEX.Filiais.Codigo_Filial'
      Size = 4
    end
    object qr_empRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Empresas.Razao_Social'
      Size = 70
    end
    object qr_empDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Filiais.Descricao'
      Size = 50
    end
  end
  object ds_qremp: TDataSource
    DataSet = qr_emp
    Left = 1008
    Top = 648
  end
  object qrImportNFS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Notas_Fiscais_Servicos_Importadores'
      'WHERE Empresa = :emp AND Filial = :filial AND Codigo = :cod')
    Left = 1008
    Top = 72
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
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '31'
      end>
    object qrImportNFSEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrImportNFSFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Filial'
      FixedChar = True
      Size = 4
    end
    object qrImportNFSCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrImportNFSREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.REG'
    end
    object qrImportNFSRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrImportNFSPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Pais'
      FixedChar = True
      Size = 3
    end
    object qrImportNFSCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object qrImportNFSCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object qrImportNFSEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Endereco'
      FixedChar = True
      Size = 40
    end
    object qrImportNFSNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Numero'
      FixedChar = True
      Size = 6
    end
    object qrImportNFSComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Complemento'
      FixedChar = True
      Size = 21
    end
    object qrImportNFSBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Bairro'
      FixedChar = True
      Size = 25
    end
    object qrImportNFSCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Cidade'
      FixedChar = True
      Size = 25
    end
    object qrImportNFSCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.CEP'
      FixedChar = True
      Size = 10
    end
    object qrImportNFSUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.UF'
      FixedChar = True
      Size = 2
    end
    object qrImportNFSEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Estado'
      FixedChar = True
      Size = 25
    end
    object qrImportNFSInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 
        'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Inscricao_Estadua' +
        'l'
      FixedChar = True
      Size = 15
    end
    object qrImportNFSTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Telefone'
      FixedChar = True
      Size = 15
    end
    object qrImportNFSInscricao_Municipal: TStringField
      FieldName = 'Inscricao_Municipal'
      Origin = 
        'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.Inscricao_Municip' +
        'al'
      FixedChar = True
      Size = 15
    end
    object qrImportNFSEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos_Importadores.EMAIL'
      FixedChar = True
      Size = 80
    end
  end
  object qlocpro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT NFS.NFISCAL, '
      '       CASE NFS.PROCESSO WHEN :qpro '
      '         then NFS.PROCESSO'
      '         else NFSP.PROCESSO'
      '       END AS PROCESSO,                                     '
      
        '         NFSP.NFISCAL, NFS.Data_emissao, NFS.Razao_Social, NFS.V' +
        'atotnota, NFS.NFiscal_e, NFS.Cancelada                     '
      
        '  FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVIC' +
        'OS_PROCESSOS NFSP '
      
        '    ON NFS.NFISCAL = NFSP.NFISCAL                               ' +
        '                  '
      ' WHERE NFS.PROCESSO = :qpro OR NFSP.PROCESSO = :qpro')
    Left = 840
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '00044/01'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
      end>
    object qlocproNFiscal: TStringField
      FieldName = 'NFiscal'
      FixedChar = True
      Size = 6
    end
    object qlocproNFiscal_e: TStringField
      FieldName = 'NFiscal_e'
    end
    object qlocproData_emissao: TDateTimeField
      FieldName = 'Data_emissao'
    end
    object qlocproProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qlocproRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qlocproVatotnota: TFloatField
      FieldName = 'Vatotnota'
    end
    object qlocproCancelada: TIntegerField
      FieldName = 'Cancelada'
      OnGetText = qlocproCanceladaGetText
    end
  end
  object dslocpro: TDataSource
    DataSet = qlocpro
    Left = 1008
    Top = 584
  end
  object qproc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Notas_Fiscais_Servicos.NFiscal, Notas_Fiscais_Servicos.Pr' +
        'ocesso, Notas_Fiscais_Servicos.Data_emissao, Notas_Fiscais_Servi' +
        'cos.Data_Recebimento'
      'FROM Notas_Fiscais_Servicos'
      
        'WHERE (((Notas_Fiscais_Servicos.Data_emissao)>=:dtini And (Notas' +
        '_Fiscais_Servicos.Data_emissao)<=:dtfin))'
      'ORDER BY Notas_Fiscais_Servicos.NFiscal')
    Left = 896
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dtini'
        ParamType = ptUnknown
        Value = 39661d
      end
      item
        DataType = ftDateTime
        Name = 'dtfin'
        ParamType = ptUnknown
        Value = '31/08/2008'
      end>
    object qprocNFiscal: TStringField
      FieldName = 'NFiscal'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.NFiscal'
      Size = 6
    end
    object qprocProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.Processo'
      Size = 8
    end
    object qprocData_emissao: TDateTimeField
      FieldName = 'Data_emissao'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.Data_emissao'
    end
    object qprocData_Recebimento: TDateTimeField
      FieldName = 'Data_Recebimento'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.Data_Recebimento'
    end
  end
  object qNFS01: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE Notas_Fiscais_Servicos SET Data_Recebimento = [CP].[DATA_' +
        'CREDITO]'
      'FROM Notas_Fiscais_Servicos AS NFS'
      'INNER JOIN Processos ON Processos.Codigo = NFS.Processo '
      
        'INNER JOIN Creditos_Processos AS CP ON Processos.Codigo = CP.Pro' +
        'cesso '
      
        'INNER JOIN Numerarios_Processos AS NP ON Processos.Codigo = NP.P' +
        'rocesso  '
      
        'WHERE (((NFS.Data_Recebimento) Is Null) AND ((CP.Credito)="SB") ' +
        'AND ((NP.Numerario)="HONO") AND ((NFS.Cancelada)=0) AND ((NFS.Da' +
        'ta_emissao)>=:dtini And (NFS.Data_emissao)<=:dtfin));')
    Left = 952
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dtini'
        ParamType = ptUnknown
        Value = '01/08/2008'
      end
      item
        DataType = ftDateTime
        Name = 'dtfin'
        ParamType = ptUnknown
        Value = '01/08/2008'
      end>
  end
  object qNFS02: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Notas_Fiscais_Servicos'
      'SET Data_Recebimento = [DATA_EMISSAO]'
      'FROM Notas_Fiscais_Servicos AS NFS'
      'INNER JOIN Processos ON Processos.COdigo = NFS.Processo '
      
        'WHERE (((NFS.Data_Recebimento) Is Null) AND ((Processos.Faturado' +
        ')=1) AND ((0+([processos].[Saldo_Faturamento]))>0) AND ((NFS.Can' +
        'celada)=0) AND ((NFS.Data_emissao)>=:dtini And (NFS.Data_emissao' +
        ')<=:dtfin));')
    Left = 1000
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dtini'
        ParamType = ptUnknown
        Value = '01/08/2008'
      end
      item
        DataType = ftDateTime
        Name = 'dtfin'
        ParamType = ptUnknown
        Value = '01/08/2008'
      end>
  end
  object qupprod: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 784
    Top = 16
  end
  object qselprod: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select NFSP.PROCESSO, NFSP.nfiscal, NFS.cancelada               ' +
        '                   '
      
        '  from Notas_Fiscais_Servicos_Processos NFSP INNER JOIN Notas_Fi' +
        'scais_Servicos NFS '
      
        '    ON NFSP.NFISCAL = NFS.NFiscal                               ' +
        '                   '
      'where NFSP.Processo='#39'01216/06'#39)
    Left = 1048
    Top = 16
    object qselprodprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object qselprodnfiscal: TStringField
      FieldName = 'nfiscal'
      FixedChar = True
      Size = 6
    end
    object qselprodcancelada: TIntegerField
      FieldName = 'cancelada'
    end
  end
  object QNFPROD: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Notas_Fiscais_Servicos_Processos.NFISCAL, Notas_Fisca' +
        'is_Servicos_Processos.PROCESSO, Importadores.Razao_Social AS EMP' +
        'RESA, '
      
        '                      Tipos_de_Processos.DESCRICAO AS TIPO_PROCE' +
        'SSO, Processos.NR_DECLARACAO_IMP, Processos.Codigo_Cliente'
      'FROM         Notas_Fiscais_Servicos_Processos INNER JOIN'
      
        '                      Processos ON Notas_Fiscais_Servicos_Proces' +
        'sos.PROCESSO = Processos.Codigo INNER JOIN'
      
        '                      Importadores ON Processos.Importador = Imp' +
        'ortadores.Codigo INNER JOIN'
      
        '                      Tipos_de_Processos ON Processos.Tipo = Tip' +
        'os_de_Processos.CODIGO'
      'WHERE     (Notas_Fiscais_Servicos_Processos.NFISCAL = :QNF)'
      'ORDER BY Notas_Fiscais_Servicos_Processos.PROCESSO')
    Left = 1096
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'QNF'
        ParamType = ptUnknown
        Value = '015788'
      end>
    object QNFPRODNFISCAL: TStringField
      FieldName = 'NFISCAL'
      FixedChar = True
      Size = 6
    end
    object QNFPRODPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 8
    end
    object QNFPRODEMPRESA: TStringField
      FieldName = 'EMPRESA'
      FixedChar = True
      Size = 60
    end
    object QNFPRODTIPO_PROCESSO: TStringField
      FieldName = 'TIPO_PROCESSO'
      FixedChar = True
      Size = 100
    end
    object QNFPRODNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object QNFPRODCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
  end
  object DS_NFPROD: TDataSource
    DataSet = QNFPROD
    Left = 1064
    Top = 584
  end
  object q_Aux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 898
    Top = 129
  end
  object T_processos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial'
    TableName = 'Processos'
    Left = 681
    Top = 550
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
    object T_processosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object T_processosaguardando_medicao: TIntegerField
      FieldName = 'aguardando_medicao'
    end
    object T_processosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object T_processosFaturado: TIntegerField
      FieldName = 'Faturado'
    end
    object T_processosFechado: TIntegerField
      FieldName = 'Fechado'
    end
  end
  object dsNfse: TDataSource
    DataSet = qryNfse
    Left = 1064
    Top = 728
  end
  object T_Rps: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;NFiscal'
    MasterFields = 'Empresa;Filial;NFiscal'
    MasterSource = dsNfse
    TableName = 'Notas_Fiscais_Servicos'
    Left = 1136
    Top = 728
    object T_RpsEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_RpsFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object T_RpsNFiscal: TStringField
      FieldName = 'NFiscal'
      Size = 6
    end
    object T_RpsNFiscal_e: TStringField
      FieldName = 'NFiscal_e'
      Size = 15
    end
  end
  object qryNfse: TQuery
    AfterScroll = qryNfseAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, NFiscal, NFiscal_e FROM Notas_' +
        'Fiscais_Servicos ORDER BY NFiscal DESC')
    Left = 1010
    Top = 729
    object qryNfseEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qryNfseFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qryNfseNFiscal: TStringField
      FieldName = 'NFiscal'
      Size = 6
    end
    object qryNfseNFiscal_e: TStringField
      FieldName = 'NFiscal_e'
      Size = 15
    end
  end
  object qAtuProcessoVisaoGeral: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Processos_Visao_Geral set Atualizado = 0 where processo =' +
        ':pProcesso')
    Left = 984
    Top = 129
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
  end
  object dsControle_Medicao: TDataSource
    DataSet = qrControle_Medicao
    Left = 800
    Top = 730
  end
  object qrControle_Medicao_Itens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CMI.*, I.Razao_Social'
      '  FROM Controle_Medicao_Itens CMI INNER JOIN Importadores I'
      '    ON CMI.Importador = I.Codigo'
      ' WHERE CMI.Codigo_Controle = :pCodigo_Controle'
      'ORDER BY CMI.Processo')
    Left = 1104
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodigo_Controle'
        ParamType = ptUnknown
      end>
    object qrControle_Medicao_ItensCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrControle_Medicao_ItensCodigo_Controle: TIntegerField
      FieldName = 'Codigo_Controle'
    end
    object qrControle_Medicao_ItensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrControle_Medicao_ItensRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object qrControle_Medicao_ItensImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
  end
  object dsControle_Medicao_Itens: TDataSource
    DataSet = qrControle_Medicao_Itens
    Left = 920
    Top = 730
  end
  object qrControle_Medicao: TQuery
    AfterScroll = qrControle_MedicaoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT *, (SELECT TOP 1 NOME_GRUPO FROM Importadores_Agrupados W' +
        'HERE Codigo_AGRUPADO = Controle_Medicao.Importador_Agrupado) AS ' +
        'Nome_Grupo'
      '  FROM Controle_Medicao'
      ' WHERE Status = '#39'1'#39
      'ORDER BY Data_Medicao')
    Left = 1103
    Top = 136
    object qrControle_MedicaoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrControle_MedicaoImportador_Agrupado: TStringField
      FieldName = 'Importador_Agrupado'
      Size = 4
    end
    object qrControle_MedicaoLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 50
    end
    object qrControle_MedicaoData_Medicao: TDateTimeField
      FieldName = 'Data_Medicao'
    end
    object qrControle_MedicaoStatus: TIntegerField
      FieldName = 'Status'
      OnGetText = qrControle_MedicaoStatusGetText
    end
    object qrControle_MedicaoNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 50
    end
  end
end
