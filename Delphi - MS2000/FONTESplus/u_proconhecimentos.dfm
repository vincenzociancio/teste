object F_proConhecimentos: TF_proConhecimentos
  Left = 263
  Top = 237
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Conhecimentos de Transportes'
  ClientHeight = 331
  ClientWidth = 756
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
    Width = 756
    Height = 256
    Align = alClient
    Color = 10514464
    Enabled = False
    TabOrder = 2
    Visible = False
    object Label76: TLabel
      Left = 264
      Top = 16
      Width = 66
      Height = 13
      Caption = 'Transportador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label83: TLabel
      Left = 16
      Top = 64
      Width = 120
      Height = 13
      Caption = 'Embarcação / Nº do Vôo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 84
      Height = 13
      Caption = 'Via de Transporte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 432
      Top = 64
      Width = 128
      Height = 13
      Caption = 'Tipo Documento de  Carga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 112
      Width = 95
      Height = 13
      Caption = 'Identificação House'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 224
      Top = 112
      Width = 96
      Height = 13
      Caption = 'Identificação Master'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 432
      Top = 112
      Width = 46
      Height = 13
      Caption = 'Utilização'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 160
      Width = 150
      Height = 13
      Caption = 'Local de Embarque / Postagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 344
      Top = 160
      Width = 23
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 432
      Top = 159
      Width = 27
      Height = 13
      Caption = 'Placa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 576
      Top = 159
      Width = 27
      Height = 13
      Caption = 'Lacre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpaTransp: TSpeedButton
      Left = 688
      Top = 32
      Width = 25
      Height = 22
      Hint = 'Limpa o Transportador'
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
      OnClick = sbLimpaTranspClick
    end
    object sbLimpaTipo: TSpeedButton
      Left = 688
      Top = 80
      Width = 25
      Height = 22
      Hint = 'Limpa o Tipo de Documento de Carga'
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
      OnClick = sbLimpaTipoClick
    end
    object sbLimpaUtil: TSpeedButton
      Left = 688
      Top = 128
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
      ShowHint = True
      OnClick = sbLimpaUtilClick
    end
    object Label10: TLabel
      Left = 16
      Top = 264
      Width = 35
      Height = 13
      Caption = 'Volume'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sbLimpaVolume: TSpeedButton
      Left = 280
      Top = 280
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
      ShowHint = True
      Visible = False
      OnClick = sbLimpaVolumeClick
    end
    object Label11: TLabel
      Left = 312
      Top = 263
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label12: TLabel
      Left = 344
      Top = 64
      Width = 47
      Height = 13
      Caption = 'Data ETA'
      FocusControl = edtDTETA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblBandeira: TLabel
      Left = 18
      Top = 206
      Width = 42
      Height = 13
      Caption = 'Bandeira'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpaBandeira: TSpeedButton
      Left = 296
      Top = 220
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
      ShowHint = True
      OnClick = sbLimpaBandeiraClick
    end
    object Label15: TLabel
      Left = 347
      Top = 206
      Width = 97
      Height = 13
      Caption = 'Autorização Marinha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbLcbVia: TDBLookupComboBox
      Left = 40
      Top = 32
      Width = 217
      Height = 21
      DataField = 'Via'
      DataSource = dsConhecimentos
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dsVia
      TabOrder = 1
      OnClick = dbLcbViaClick
    end
    object dbLcbTransp: TDBLookupComboBox
      Left = 304
      Top = 32
      Width = 385
      Height = 21
      DataField = 'Transportador'
      DataSource = dsConhecimentos
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsTransportadores
      TabOrder = 3
    end
    object dbEdtEmbarcacao: TDBEdit
      Left = 16
      Top = 80
      Width = 321
      Height = 21
      DataField = 'Embarcacao'
      DataSource = dsConhecimentos
      TabOrder = 4
    end
    object dbLcbTipo: TDBLookupComboBox
      Left = 456
      Top = 80
      Width = 233
      Height = 21
      DataField = 'Tipodoccarga'
      DataSource = dsConhecimentos
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = dsTipoDocCarga
      TabOrder = 6
    end
    object dbEdtNumDocCarga: TDBEdit
      Left = 16
      Top = 128
      Width = 201
      Height = 21
      DataField = 'Numerodoccarga'
      DataSource = dsConhecimentos
      TabOrder = 7
      OnChange = dbEdtNumDocCargaChange
      OnExit = dbEdtNumDocCargaExit
      OnKeyPress = dbEdtNumDocCargaKeyPress
    end
    object dbEdtNumMaster: TDBEdit
      Left = 224
      Top = 128
      Width = 201
      Height = 21
      DataField = 'Numeromaster'
      DataSource = dsConhecimentos
      TabOrder = 8
      OnExit = dbEdtNumMasterExit
      OnKeyPress = dbEdtNumDocCargaKeyPress
    end
    object dbLcbUtil: TDBLookupComboBox
      Left = 456
      Top = 128
      Width = 233
      Height = 21
      DataField = 'Utilizacao'
      DataSource = dsConhecimentos
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsUtilizacao
      TabOrder = 10
    end
    object dbEdtLocal: TDBEdit
      Left = 16
      Top = 176
      Width = 321
      Height = 21
      DataField = 'Local'
      DataSource = dsConhecimentos
      TabOrder = 11
    end
    object dbEdtData: TDBEdit
      Left = 344
      Top = 176
      Width = 81
      Height = 21
      DataField = 'Data'
      DataSource = dsConhecimentos
      TabOrder = 12
      OnChange = dbEdtDataChange
      OnExit = dbEdtDataChange
    end
    object dbEdtPlaca: TDBEdit
      Left = 432
      Top = 175
      Width = 137
      Height = 21
      DataField = 'PLaca'
      DataSource = dsConhecimentos
      TabOrder = 13
    end
    object dbEdtLacre: TDBEdit
      Left = 576
      Top = 175
      Width = 137
      Height = 21
      DataField = 'Lacre'
      DataSource = dsConhecimentos
      TabOrder = 14
    end
    object dbEdtVia: TDBEdit
      Left = 16
      Top = 32
      Width = 25
      Height = 21
      DataField = 'Via'
      DataSource = dsConhecimentos
      TabOrder = 0
      OnExit = dbLcbViaClick
    end
    object dbEdtTransp: TDBEdit
      Left = 264
      Top = 32
      Width = 41
      Height = 21
      DataField = 'Transportador'
      DataSource = dsConhecimentos
      TabOrder = 2
    end
    object dbEdtTipo: TDBEdit
      Left = 432
      Top = 80
      Width = 25
      Height = 21
      DataField = 'Tipodoccarga'
      DataSource = dsConhecimentos
      TabOrder = 5
    end
    object dbEdtUtil: TDBEdit
      Left = 432
      Top = 128
      Width = 25
      Height = 21
      DataField = 'Utilizacao'
      DataSource = dsConhecimentos
      TabOrder = 9
    end
    object dbcbVolume: TDBLookupComboBox
      Left = 40
      Top = 280
      Width = 241
      Height = 21
      Hint = 'Volume referente ao Conhecimento'
      DataField = 'Unidade'
      DataSource = dsConhecimentos
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dsUnidade
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      Visible = False
    end
    object dbEdtCodVol: TDBEdit
      Left = 16
      Top = 280
      Width = 25
      Height = 21
      DataField = 'Unidade'
      DataSource = dsConhecimentos
      TabOrder = 17
      Visible = False
    end
    object dbEdtQuantidade: TDBEdit
      Left = 312
      Top = 279
      Width = 113
      Height = 21
      Hint = 'Quantidade referente ao Volume do Conhecimento'
      DataField = 'Quantidade'
      DataSource = dsConhecimentos
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Visible = False
    end
    object CbMultimodal: TCheckBox
      Left = 130
      Top = 15
      Width = 129
      Height = 17
      Caption = 'Transporte Multimodal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object edtDTETA: TDBEdit
      Left = 344
      Top = 80
      Width = 81
      Height = 21
      DataField = 'DT_ETA'
      DataSource = dsConhecimentos
      TabOrder = 19
      OnChange = edtDTETAChange
      OnExit = edtDTETAChange
    end
    object dbEditBandeira: TDBEdit
      Left = 16
      Top = 220
      Width = 41
      Height = 21
      DataField = 'Bandeira'
      DataSource = dsConhecimentos
      TabOrder = 20
    end
    object dbLcbBandeira: TDBLookupComboBox
      Left = 57
      Top = 220
      Width = 238
      Height = 21
      DataField = 'Bandeira'
      DataSource = dsConhecimentos
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = dsBandeira
      TabOrder = 21
    end
    object dbEdtAutoMarinha: TDBEdit
      Left = 345
      Top = 221
      Width = 229
      Height = 21
      DataField = 'Autorizacao_Marinha'
      DataSource = dsConhecimentos
      TabOrder = 22
      OnChange = dbEdtDataChange
      OnExit = dbEdtDataChange
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 756
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
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 289
    Width = 756
    Height = 42
    Align = alBottom
    Color = 10514464
    TabOrder = 1
    Visible = False
    object btnAlterar: TBitBtn
      Left = 16
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
      Left = 280
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
      Left = 376
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
      Left = 632
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Tipo, Processos.Codigo_Clien' +
        'te AS refcli, Importadores.Razao_Social AS Cliente, TAB_TIPO_DEC' +
        'LARACAO.Descricao AS tipodecla, Tipos_de_Processos.DESCRICAO AS ' +
        'tipopro, Contratos.Descricao AS qcontrato, Locais_Inventario.Des' +
        'cricao AS qlocal, Importadores.CNPJ_CPF_COMPLETO AS qcnpj, Proce' +
        'ssos.Fechado, Importadores.ATIVO, Processos.Importador, Processo' +
        's.Responsavel_empresa,  Processos.Responsavel_empresac,'
      'Processos.Tipo, Processos.Status'
      
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
      'where Processos.Codigo=:Processo'
      'ORDER BY Processos.Codigo;')
    Left = 88
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosrefcli: TStringField
      FieldName = 'refcli'
      Size = 60
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object qrProcessostipodecla: TStringField
      FieldName = 'tipodecla'
      Size = 120
    end
    object qrProcessostipopro: TStringField
      FieldName = 'tipopro'
      Size = 35
    end
    object qrProcessosqcontrato: TStringField
      FieldName = 'qcontrato'
      Size = 50
    end
    object qrProcessosqlocal: TStringField
      FieldName = 'qlocal'
      Size = 250
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
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
      Size = 4
    end
    object qrProcessosResponsavel_empresa: TStringField
      FieldName = 'Responsavel_empresa'
      Size = 10
    end
    object qrProcessosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      Size = 10
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrProcessosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 3
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 88
    Top = 416
  end
  object tbConhecimentos: TTable
    AutoCalcFields = False
    AfterPost = tbConhecimentosAfterPost
    AfterScroll = tbConhecimentosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Conhecimento_Processo'
    Left = 176
    Top = 352
    object tbConhecimentosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbConhecimentosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbConhecimentosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbConhecimentosVia: TStringField
      FieldName = 'Via'
      Size = 1
    end
    object tbConhecimentosMultimodal: TSmallintField
      FieldName = 'Multimodal'
    end
    object tbConhecimentosPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object tbConhecimentosLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object tbConhecimentosEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object tbConhecimentosTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object tbConhecimentosTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object tbConhecimentosNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object tbConhecimentosNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object tbConhecimentosLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object tbConhecimentosData: TDateTimeField
      FieldName = 'Data'
    end
    object tbConhecimentosUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object tbConhecimentosTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object tbConhecimentosNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object tbConhecimentosCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 50
    end
    object tbConhecimentosPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object tbConhecimentosPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object tbConhecimentosAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object tbConhecimentosPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object tbConhecimentosURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object tbConhecimentosData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object tbConhecimentosURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object tbConhecimentosData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object tbConhecimentosRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object tbConhecimentosSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object tbConhecimentosArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object tbConhecimentosOperacao_FUNDAP: TSmallintField
      FieldName = 'Operacao_FUNDAP'
    end
    object tbConhecimentosContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object tbConhecimentosMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object tbConhecimentosFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object tbConhecimentosFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object tbConhecimentosFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object tbConhecimentosMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object tbConhecimentosValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object tbConhecimentosMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object tbConhecimentosValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
    object tbConhecimentosUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object tbConhecimentosQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object tbConhecimentosDT_ETA: TDateTimeField
      FieldName = 'DT_ETA'
    end
    object tbConhecimentosBandeira: TStringField
      FieldName = 'Bandeira'
      FixedChar = True
      Size = 5
    end
    object tbConhecimentosAutorizacao_Marinha: TStringField
      FieldName = 'Autorizacao_Marinha'
      FixedChar = True
      Size = 15
    end
  end
  object dsConhecimentos: TDataSource
    DataSet = tbConhecimentos
    Left = 176
    Top = 416
  end
  object dsVia: TDataSource
    DataSet = qrVia
    Left = 272
    Top = 424
  end
  object dsTransportadores: TDataSource
    DataSet = qrTransportadores
    Left = 344
    Top = 416
  end
  object dsTipoDocCarga: TDataSource
    DataSet = qrTipoDocCarga
    Left = 432
    Top = 416
  end
  object dsUtilizacao: TDataSource
    DataSet = qrUtilizacao
    Left = 528
    Top = 416
  end
  object qrVia: TQuery
    AfterOpen = qrViaAfterOpen
    AfterScroll = qrViaAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao, SIGLA'
      'FROM TAB_VIA_TRANSPORTE'
      'ORDER BY Descricao')
    Left = 272
    Top = 352
    object qrViaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.TAB_VIA_TRANSPORTE.Codigo'
      Size = 1
    end
    object qrViaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.TAB_VIA_TRANSPORTE.Descricao'
      Size = 120
    end
    object qrViaSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'DBNMSCOMEX.TAB_VIA_TRANSPORTE.SIGLA'
      Size = 4
    end
  end
  object qrTransportadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social'
      'FROM Transportadores'
      'WHERE Empresa = :emp AND Filial = :fil'
      'ORDER BY Razao_Social')
    Left = 344
    Top = 352
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
    object qrTransportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Transportadores.Codigo'
      Size = 4
    end
    object qrTransportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Transportadores.Razao_Social'
      Size = 60
    end
  end
  object qrTipoDocCarga: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    SQL.Strings = (
      'SELECT via, codigo, descricao'
      'FROM Tipo_Doc_Carga'
      'ORDER BY descricao')
    Left = 528
    Top = 352
    object qrTipoDocCargavia: TStringField
      FieldName = 'via'
      Origin = 'DBNMSCOMEX.Tipo_Doc_Carga.via'
      Size = 1
    end
    object qrTipoDocCargacodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Tipo_Doc_Carga.codigo'
      Size = 2
    end
    object qrTipoDocCargadescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Tipo_Doc_Carga.descricao'
      Size = 25
    end
  end
  object qrUtilizacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM Tipo_Utilizacao'
      'ORDER BY DESCRICAO')
    Left = 440
    Top = 352
    object qrUtilizacaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.Tipo_Utilizacao.CODIGO'
      Size = 1
    end
    object qrUtilizacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.Tipo_Utilizacao.DESCRICAO'
      Size = 25
    end
  end
  object alAtuTabelas: TActionList
    Left = 560
    Top = 1
    object acAtuTabelas: TAction
      Caption = 'acAtuTabelas'
      OnExecute = acAtuTabelasExecute
    end
  end
  object qrUnidade: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao, Abrev FROM TAB_UNID_MEDIDA')
    Left = 616
    Top = 352
    object qrUnidadeCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrUnidadeDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
    object qrUnidadeAbrev: TStringField
      FieldName = 'Abrev'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.ABREV'
      Size = 4
    end
  end
  object dsUnidade: TDataSource
    DataSet = qrUnidade
    Left = 616
    Top = 416
  end
  object q_verconhecimento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select processo,Numerodoccarga,Numeromaster,p.Status from Conhec' +
        'imento_Processo as c  '
      'inner join Processos as p  on c.Processo = p.Codigo'
      'where(Numerodoccarga=:qnum)'
      
        'and Processo<>:qpro and tipodoccarga =:qtipodoccarga and p.Statu' +
        's < '#39'4'#39' ')
    Left = 776
    Top = 353
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = 'nao'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '01216/06'
      end
      item
        DataType = ftUnknown
        Name = 'qtipodoccarga'
        ParamType = ptUnknown
      end>
    object q_verconhecimentoprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object q_verconhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object q_verconhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
  end
  object qAtualizaStatus: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE processos set Status ="01" where Codigo =:pCodigo ')
    Left = 688
    Top = 353
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
  end
  object qAtuProcessoVisaoGeral: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Processos_Visao_Geral set Atualizado = 0 where processo =' +
        ':pProcesso')
    Left = 904
    Top = 353
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
  end
  object qrUpdateTipo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Processos set Tipo =:tipo where Codigo =:processo ')
    Left = 1016
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
  object qrBandeira: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select codigo, descricao '
      'from TAB_PAIS '
      'order by DESCRICAO')
    Left = 456
    Top = 489
    object qrBandeiracodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 3
    end
    object qrBandeiradescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 120
    end
  end
  object dsBandeira: TDataSource
    DataSet = qrBandeira
    Left = 456
    Top = 553
  end
end
