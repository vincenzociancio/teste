object frmCadastroPropostas: TfrmCadastroPropostas
  Left = 215
  Top = 112
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Propostas'
  ClientHeight = 636
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 333
    Width = 28
    Height = 13
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 567
    Top = 333
    Width = 45
    Height = 13
    Caption = 'Contato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 703
    Top = 333
    Width = 31
    Height = 13
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 897
    Top = 333
    Width = 66
    Height = 13
    Caption = 'Aprovação:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 3
    Top = 431
    Width = 69
    Height = 13
    Caption = 'Observação'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 78
    Top = 333
    Width = 58
    Height = 13
    Caption = 'Nº Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 163
    Top = 332
    Width = 40
    Height = 13
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgContratos: TDBGrid
    Left = 2
    Top = 96
    Width = 758
    Height = 232
    DataSource = dscontratos_cadastrados_financeiro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgContratosDrawColumnCell
    OnTitleClick = dbgContratosTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'numero_contrato'
        Title.Caption = 'Número'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nro_cliente'
        Title.Caption = 'Nº Cliente '
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente'
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 276
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'contato'
        Title.Caption = 'Contato'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 215
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'Email'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_aprovacao'
        Title.Caption = 'Data Aprovação'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Vigência Inicial'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Vigência Final'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'utilizacao_de_sistema'
        Title.Caption = 'Utilização de Sistema'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'movimentacao_de_repetro'
        Title.Caption = 'Movimentação de Repetro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 154
        Visible = True
      end>
  end
  object dbgArquivos: TDBGrid
    Left = 763
    Top = 96
    Width = 201
    Height = 203
    DataSource = dsContratoUpload
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 19
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Arquivo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 970
    Height = 73
    Align = alTop
    Color = clInfoBk
    TabOrder = 17
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 953
      Height = 57
      Caption = ' Pesquisar por '
      TabOrder = 0
      object Label8: TLabel
        Left = 9
        Top = 30
        Width = 37
        Height = 13
        Caption = 'Número'
      end
      object Label9: TLabel
        Left = 241
        Top = 30
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label10: TLabel
        Left = 121
        Top = 30
        Width = 47
        Height = 13
        Caption = 'Nº Cliente'
      end
      object edtProcesso: TMaskEdit
        Left = 54
        Top = 24
        Width = 57
        Height = 21
        EditMask = '!#####/##;1;_'
        MaxLength = 8
        TabOrder = 0
        Text = '     /  '
        OnChange = edtProcessoChange
      end
      object edtCliente: TEdit
        Left = 279
        Top = 24
        Width = 410
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = edtClienteChange
      end
      object edtNrCliente: TMaskEdit
        Left = 174
        Top = 24
        Width = 57
        Height = 21
        TabOrder = 1
        OnChange = edtNrClienteChange
      end
    end
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 73
    Width = 970
    Height = 17
    Align = alTop
    Alignment = taCenter
    Caption = 'Informações do contrato'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 20
  end
  object btnAlterar: TBitBtn
    Left = 82
    Top = 607
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 12
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
  object btnCancelar: TBitBtn
    Left = 240
    Top = 607
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 14
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
  object btnSalvar: TBitBtn
    Left = 161
    Top = 607
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 13
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
  object btnIncluir: TBitBtn
    Left = 3
    Top = 607
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 11
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
  object btnSair: TBitBtn
    Left = 889
    Top = 607
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 16
    OnClick = btnFecharClick
    Kind = bkClose
  end
  object txtData: TDBEdit
    Left = 3
    Top = 348
    Width = 72
    Height = 21
    DataField = 'data'
    DataSource = dscontratos_cadastrados_financeiro
    TabOrder = 1
  end
  object txtContato: TDBEdit
    Left = 567
    Top = 348
    Width = 135
    Height = 21
    CharCase = ecUpperCase
    DataField = 'contato'
    DataSource = dscontratos_cadastrados_financeiro
    TabOrder = 4
  end
  object txtEmail: TDBEdit
    Left = 703
    Top = 348
    Width = 193
    Height = 21
    DataField = 'email'
    DataSource = dscontratos_cadastrados_financeiro
    TabOrder = 5
    OnKeyPress = txtEmailKeyPress
  end
  object txtAprovacao: TDBEdit
    Left = 897
    Top = 348
    Width = 70
    Height = 21
    DataField = 'data_aprovacao'
    DataSource = dscontratos_cadastrados_financeiro
    TabOrder = 6
    OnExit = txtAprovacaoExit
    OnKeyPress = txtAprovacaoKeyPress
  end
  object txtObs: TDBMemo
    Left = 3
    Top = 448
    Width = 964
    Height = 98
    DataField = 'observacao'
    DataSource = dscontratos_cadastrados_financeiro
    TabOrder = 10
  end
  object btnAbrir: TBitBtn
    Left = 867
    Top = 304
    Width = 98
    Height = 25
    Caption = 'A&brir Arquivo'
    TabOrder = 0
    OnClick = btnAbrirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object btnAtivarImport: TBitBtn
    Left = 472
    Top = 607
    Width = 169
    Height = 25
    Caption = 'Ativar o Importador'
    TabOrder = 15
    OnClick = btnAtivarImportClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555000050000005555544F00BFBFBF0555544F0BFBF0000055544F0FBFBFBFB
      F05544F0BFBF0000000544F0F000FBFBF00544F0B0B000000F000000F0F000FB
      FB0F555500BFBFBFB0F455555500FBFB0F44555555550000F44455555555550F
      4444555555555550044455555555555550045555555555555550}
  end
  object pnlUpload: TPanel
    Left = 0
    Top = 553
    Width = 970
    Height = 50
    Color = clInfoBk
    TabOrder = 21
    object gbUpload: TGroupBox
      Left = 8
      Top = 0
      Width = 953
      Height = 48
      Caption = ' Upload de Arquivo '
      TabOrder = 0
      object btnBuscar: TSpeedButton
        Left = 539
        Top = 18
        Width = 23
        Height = 22
        Hint = 'Salvar .pdf'
        Caption = '...'
        ParentShowHint = False
        ShowHint = True
        OnClick = btnBuscarClick
      end
      object btnLimpar: TSpeedButton
        Left = 563
        Top = 18
        Width = 23
        Height = 22
        Hint = 'Limpar caminho'
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
        OnClick = btnLimparClick
      end
      object txtUploadArquivo: TEdit
        Left = 9
        Top = 19
        Width = 528
        Height = 21
        TabOrder = 0
      end
      object btnUpload: TBitBtn
        Left = 592
        Top = 18
        Width = 139
        Height = 22
        Caption = 'Realizar Upload'
        TabOrder = 1
        OnClick = btnUploadClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
          5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
          335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
          C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
          CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
          C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
          CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
          5555555775FFFF77555555555C4CCC5555555555577777555555}
        NumGlyphs = 2
      end
    end
  end
  object txtNrCliente: TDBEdit
    Left = 78
    Top = 348
    Width = 83
    Height = 21
    DataField = 'nro_cliente'
    DataSource = dscontratos_cadastrados_financeiro
    TabOrder = 2
  end
  object cbMovimentacaoDeRepetro: TDBCheckBox
    Left = 196
    Top = 406
    Width = 175
    Height = 17
    Caption = 'Movimentação de Repetro'
    DataField = 'movimentacao_de_repetro'
    DataSource = dscontratos_cadastrados_financeiro
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object cbUtilizacaoDoSistema: TDBCheckBox
    Left = 196
    Top = 386
    Width = 146
    Height = 17
    Caption = 'Utilização de Sistema'
    DataField = 'utilizacao_de_sistema'
    DataSource = dscontratos_cadastrados_financeiro
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object gbVigencia: TGroupBox
    Left = 5
    Top = 377
    Width = 180
    Height = 47
    Caption = ' Vigência '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Label11: TLabel
      Left = 85
      Top = 23
      Width = 8
      Height = 13
      Caption = 'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtVigInicial: TDBEdit
      Left = 10
      Top = 18
      Width = 69
      Height = 21
      DataField = 'data_vigencia_inicial'
      DataSource = dscontratos_cadastrados_financeiro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = txtVigInicialExit
      OnKeyPress = txtVigInicialKeyPress
    end
    object txtVigFinal: TDBEdit
      Left = 98
      Top = 18
      Width = 70
      Height = 21
      DataField = 'data_vigencia_final'
      DataSource = dscontratos_cadastrados_financeiro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = txtVigFinalExit
      OnKeyPress = txtVigFinalKeyPress
    end
  end
  object cmbImport: TDBLookupComboBox
    Left = 163
    Top = 348
    Width = 405
    Height = 21
    DataField = 'cod_importador'
    DataSource = dscontratos_cadastrados_financeiro
    KeyField = 'Codigo'
    ListField = 'Razao_Social'
    ListSource = dsImport
    TabOrder = 3
  end
  object dsContratoUpload: TDataSource
    DataSet = qContratoUpload
    Left = 896
    Top = 150
  end
  object qContratoUpload: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from '
      'contratos_cadastrados_upload where fk_contrato =:pkContrato')
    Left = 800
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pkContrato'
        ParamType = ptInput
      end>
    object qContratoUploadfk_contrato: TIntegerField
      FieldName = 'fk_contrato'
    end
    object qContratoUploadArquivo: TStringField
      FieldName = 'Arquivo'
      FixedChar = True
      Size = 50
    end
  end
  object OP: TOpenDialog
    FileName = '*.pdf'
    Filter = '*.pdf|*.pdf'
    Title = 'Selecionar'
    Left = 905
    Top = 217
  end
  object qryParametro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Numerador_Documentos'
      'from '
      ' Parametros')
    Left = 64
    Top = 185
    object qryParametroNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Origin = 'DBNMSCOMEX.Parametros.Numerador_Documentos'
      FixedChar = True
      Size = 8
    end
  end
  object qryUpdateN: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update parametros set Numerador_Documentos=:NewNumero')
    Left = 144
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NewNumero'
        ParamType = ptUnknown
      end>
  end
  object qInsUpload: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO contratos_cadastrados_upload'
      '           (fk_contrato'
      '           ,Arquivo, codigo)'
      '     VALUES'
      '           (:pfk_contrato'
      '           ,:pArquivo'
      '           ,:pcodigo)')
    Left = 224
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pfk_contrato'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pArquivo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcodigo'
        ParamType = ptInput
      end>
  end
  object qryDelErro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE FROM contratos_cadastrados_upload'
      
        '      WHERE fk_contrato =:pfk_contrato and Arquivo =:pArquivo an' +
        'd codigo =:pCodigo')
    Left = 304
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pfk_contrato'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pArquivo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
  end
  object tbcontratos_cadastrados_financeiro: TTable
    AfterScroll = tbcontratos_cadastrados_financeiroAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'data'
    TableName = 'contratos_cadastrados_financeiro'
    Left = 544
    Top = 144
    object tbcontratos_cadastrados_financeironumero_contrato: TStringField
      FieldName = 'numero_contrato'
      FixedChar = True
      Size = 8
    end
    object tbcontratos_cadastrados_financeiropk_contrato: TAutoIncField
      FieldName = 'pk_contrato'
    end
    object tbcontratos_cadastrados_financeirodata: TDateTimeField
      FieldName = 'data'
    end
    object tbcontratos_cadastrados_financeironro_cliente: TStringField
      FieldName = 'nro_cliente'
      FixedChar = True
      Size = 10
    end
    object tbcontratos_cadastrados_financeirocliente: TStringField
      FieldName = 'cliente'
      FixedChar = True
      Size = 250
    end
    object tbcontratos_cadastrados_financeirocod_importador: TStringField
      FieldName = 'cod_importador'
      FixedChar = True
      Size = 4
    end
    object tbcontratos_cadastrados_financeirocontato: TStringField
      FieldName = 'contato'
      FixedChar = True
      Size = 250
    end
    object tbcontratos_cadastrados_financeiroemail: TStringField
      FieldName = 'email'
      FixedChar = True
      Size = 80
    end
    object tbcontratos_cadastrados_financeirodata_aprovacao: TDateTimeField
      FieldName = 'data_aprovacao'
    end
    object tbcontratos_cadastrados_financeirodata_vigencia_inicial: TDateTimeField
      FieldName = 'data_vigencia_inicial'
    end
    object tbcontratos_cadastrados_financeirodata_vigencia_final: TDateTimeField
      FieldName = 'data_vigencia_final'
    end
    object tbcontratos_cadastrados_financeiroobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object tbcontratos_cadastrados_financeiroutilizacao_de_sistema: TBooleanField
      FieldName = 'utilizacao_de_sistema'
    end
    object tbcontratos_cadastrados_financeiromovimentacao_de_repetro: TBooleanField
      FieldName = 'movimentacao_de_repetro'
    end
  end
  object dscontratos_cadastrados_financeiro: TDataSource
    DataSet = tbcontratos_cadastrados_financeiro
    Left = 546
    Top = 209
  end
  object qNumero_Proposta: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT  top 1 CAST(SUBSTRING(numero_contrato, 1, 5) AS INTEGER) ' +
        '+ 1 AS '#39'PROXIMO_CONTADOR'#39', '
      
        'LEN(CAST(SUBSTRING(numero_contrato, 1, 5) AS INTEGER) + 1) AS '#39'D' +
        'ECIMAL'#39','
      'DATEPART(year, data) AS '#39'ANO_REGISTRO'#39' '
      'FROM contratos_cadastrados_financeiro'
      
        'WHERE DATA = (SELECT MAX(DATA) AS '#39'DATA'#39' from contratos_cadastra' +
        'dos_financeiro)'
      'order by numero_contrato desc')
    Left = 784
    Top = 480
    object qNumero_PropostaPROXIMO_CONTADOR: TIntegerField
      FieldName = 'PROXIMO_CONTADOR'
    end
    object qNumero_PropostaDECIMAL: TIntegerField
      FieldName = 'DECIMAL'
    end
    object qNumero_PropostaANO_REGISTRO: TIntegerField
      FieldName = 'ANO_REGISTRO'
    end
  end
  object qContrato: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select * from contratos_cadastrados_financeiro where numero_cont' +
        'rato =:pContrato')
    Left = 880
    Top = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'pContrato'
        ParamType = ptInput
      end>
    object qContratonumero_contrato: TStringField
      FieldName = 'numero_contrato'
      FixedChar = True
      Size = 8
    end
    object qContratopk_contrato: TAutoIncField
      FieldName = 'pk_contrato'
    end
    object qContratodata: TDateTimeField
      FieldName = 'data'
    end
    object qContratocliente: TStringField
      FieldName = 'cliente'
      FixedChar = True
      Size = 250
    end
    object qContratocontato: TStringField
      FieldName = 'contato'
      FixedChar = True
      Size = 250
    end
    object qContratoemail: TStringField
      FieldName = 'email'
      FixedChar = True
      Size = 80
    end
    object qContratodata_aprovacao: TDateTimeField
      FieldName = 'data_aprovacao'
    end
    object qContratoobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
  end
  object qrUpdtImportador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'Update Importadores set Ativo = 1, fk_contrato_financ =:pfk_cont' +
        'rato_financ where Codigo =:pImp ')
    Left = 680
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pfk_contrato_financ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pImp'
        ParamType = ptInput
      end>
  end
  object dsImport: TDataSource
    DataSet = qrImport
    Left = 416
    Top = 472
  end
  object qrImport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Codigo, Razao_Social, CNPJ_CPF_COMPLETO,' +
        ' CGC_CPF, Tipo_Importador, Endereco, Numero, Complemento, Bairro' +
        ', Cidade, CEP, UF, Estado, Inscricao_Estadual'
      '  FROM Importadores'
      ' WHERE Ativo = 1 AND ((CGC_CPF Is Not Null) OR (CGC_CPF <> '#39#39'))'
      'ORDER BY Razao_Social')
    Left = 354
    Top = 472
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
    object qrImportCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
  end
end
