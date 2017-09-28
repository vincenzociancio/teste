object F_proTR: TF_proTR
  Left = 151
  Top = 185
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'TR - Termos de Responsabilidade'
  ClientHeight = 440
  ClientWidth = 824
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 824
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 824
    Height = 361
    Align = alClient
    Color = 10514464
    Enabled = False
    TabOrder = 1
    Visible = False
    object Label195: TLabel
      Left = 16
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Número TR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label196: TLabel
      Left = 128
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Vigência Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label198: TLabel
      Left = 376
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Procurador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label199: TLabel
      Left = 376
      Top = 96
      Width = 77
      Height = 13
      Caption = 'Nome do Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label200: TLabel
      Left = 656
      Top = 96
      Width = 54
      Height = 13
      Caption = 'Agência Nº'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label201: TLabel
      Left = 728
      Top = 96
      Width = 66
      Height = 13
      Caption = 'Data depósito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label202: TLabel
      Left = 376
      Top = 136
      Width = 74
      Height = 13
      Caption = 'Nome do Título'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label203: TLabel
      Left = 656
      Top = 136
      Width = 42
      Height = 13
      Caption = 'Números'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label204: TLabel
      Left = 376
      Top = 184
      Width = 101
      Height = 13
      Caption = 'Nome da Seguradora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label205: TLabel
      Left = 376
      Top = 208
      Width = 90
      Height = 13
      Caption = 'Número da Apólice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label206: TLabel
      Left = 376
      Top = 224
      Width = 75
      Height = 13
      Caption = 'Nome do Fiador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label207: TLabel
      Left = 376
      Top = 264
      Width = 99
      Height = 13
      Caption = 'CNPJ/CPF do Fiador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label249: TLabel
      Left = 216
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Vigência Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpaProcurador: TSpeedButton
      Left = 792
      Top = 24
      Width = 25
      Height = 22
      Hint = 'Limpa Procurador'
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
      OnClick = sbLimpaProcuradorClick
    end
    object sbLimpaFiador: TSpeedButton
      Left = 792
      Top = 240
      Width = 25
      Height = 22
      Hint = 'Limpa Procurador'
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
      OnClick = sbLimpaFiadorClick
    end
    object Label1: TLabel
      Left = 376
      Top = 304
      Width = 93
      Height = 13
      Caption = 'Endereço do Fiador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 376
      Top = 48
      Width = 61
      Height = 13
      Caption = 'Procurador 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpaProcurador2: TSpeedButton
      Left = 792
      Top = 64
      Width = 25
      Height = 22
      Hint = 'Limpa Procurador'
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
      OnClick = sbLimpaProcurador2Click
    end
    object btnView: TSpeedButton
      Left = 96
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Visualização sem mascara'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
        330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
        830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
        F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnViewClick
    end
    object rgGarantia: TRadioGroup
      Left = 16
      Top = 52
      Width = 353
      Height = 109
      Caption = ' Modalidade da Garantia '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        '0. Sem garantia'
        '1. Depósito em dinheiro'
        '2. Caução de títulos da dívida pública federal'
        '3. Seguro aduaneiro'
        '4. Fiança idônea')
      ParentFont = False
      TabOrder = 4
    end
    object dbLcbProcurador: TDBLookupComboBox
      Left = 376
      Top = 24
      Width = 417
      Height = 21
      DataField = 'Procurador'
      DataSource = dsProcessos
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsProcurador
      TabOrder = 2
    end
    object dbEdtDtEntrada: TDBEdit
      Left = 128
      Top = 24
      Width = 81
      Height = 21
      DataField = 'Data_Entrada_TR'
      DataSource = dsProcessos
      TabOrder = 0
      OnChange = dbEdtDtEntradaChange
      OnExit = dbEdtDtEntradaChange
    end
    object dbEdtDtVenc: TDBEdit
      Left = 216
      Top = 24
      Width = 81
      Height = 21
      DataField = 'Data_vencimento_TR'
      DataSource = dsProcessos
      TabOrder = 1
      OnChange = dbEdtDtVencChange
      OnExit = dbEdtDtVencChange
    end
    object dbEdtNomeBanco: TDBEdit
      Left = 376
      Top = 112
      Width = 273
      Height = 21
      DataField = 'Nome_banco_GAR'
      DataSource = dsProcessos
      TabOrder = 5
    end
    object dbEdtAgencia: TDBEdit
      Left = 656
      Top = 112
      Width = 65
      Height = 21
      DataField = 'Agencia_GAR'
      DataSource = dsProcessos
      TabOrder = 6
    end
    object dbEdtDtDeposito: TDBEdit
      Left = 728
      Top = 112
      Width = 89
      Height = 21
      DataField = 'Data_deposito_GAR'
      DataSource = dsProcessos
      TabOrder = 7
      OnChange = dbEdtDtDepositoChange
      OnExit = dbEdtDtDepositoChange
    end
    object dbEdtNomeTitulo: TDBEdit
      Left = 376
      Top = 152
      Width = 273
      Height = 21
      DataField = 'Nome_titulo_GAR'
      DataSource = dsProcessos
      TabOrder = 8
    end
    object dbEdtNumero: TDBEdit
      Left = 656
      Top = 152
      Width = 161
      Height = 21
      DataField = 'numeros_titulos_GAR'
      DataSource = dsProcessos
      TabOrder = 9
    end
    object dbEdtNomeSeg: TDBEdit
      Left = 480
      Top = 176
      Width = 337
      Height = 21
      DataField = 'Nome_seguradora_GAR'
      DataSource = dsProcessos
      TabOrder = 10
    end
    object dbEdtNumApolice: TDBEdit
      Left = 480
      Top = 200
      Width = 337
      Height = 21
      DataField = 'apolice_GAR'
      DataSource = dsProcessos
      TabOrder = 11
    end
    object dbEdtCNPJFiador: TDBEdit
      Left = 376
      Top = 280
      Width = 121
      Height = 21
      DataField = 'CNPJ_fiador_GAR'
      DataSource = dsProcessos
      ReadOnly = True
      TabOrder = 13
    end
    object pnlAtualizar: TPanel
      Left = 16
      Top = 168
      Width = 353
      Height = 182
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 10514464
      TabOrder = 15
      Visible = False
      object Label273: TLabel
        Left = 8
        Top = 8
        Width = 78
        Height = 13
        Caption = 'Valor FOB (US$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label274: TLabel
        Left = 176
        Top = 8
        Width = 73
        Height = 13
        Caption = 'Valor CIF (US$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label275: TLabel
        Left = 8
        Top = 51
        Width = 131
        Height = 13
        Caption = 'Imposto de Importação (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label276: TLabel
        Left = 176
        Top = 51
        Width = 36
        Height = 13
        Caption = 'IPI (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label277: TLabel
        Left = 8
        Top = 137
        Width = 112
        Height = 13
        Caption = 'Total dos Impostos (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 7
        Top = 94
        Width = 40
        Height = 13
        Caption = 'PIS (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 176
        Top = 94
        Width = 62
        Height = 13
        Caption = 'COFINS (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnAtualizar: TBitBtn
        Left = 176
        Top = 151
        Width = 129
        Height = 25
        Caption = 'Atualizar &Valores'
        TabOrder = 0
        OnClick = btnAtualizarClick
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        NumGlyphs = 2
      end
      object edtValFOB: TEdit
        Left = 8
        Top = 24
        Width = 160
        Height = 21
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 1
      end
      object edtValCIF: TEdit
        Left = 176
        Top = 24
        Width = 160
        Height = 21
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 2
      end
      object edtImposto: TEdit
        Left = 8
        Top = 67
        Width = 160
        Height = 21
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 3
      end
      object edtIPI: TEdit
        Left = 176
        Top = 67
        Width = 152
        Height = 21
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 4
      end
      object edtTotal: TEdit
        Left = 8
        Top = 153
        Width = 160
        Height = 21
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 5
      end
      object edtPIS: TEdit
        Left = 7
        Top = 110
        Width = 160
        Height = 21
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 6
      end
      object edtCOFINS: TEdit
        Left = 176
        Top = 110
        Width = 152
        Height = 21
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 7
      end
    end
    object dbLcbFiador: TDBLookupComboBox
      Left = 376
      Top = 240
      Width = 417
      Height = 21
      DataField = 'CNPJ_fiador_GAR'
      DataSource = dsProcessos
      KeyField = 'CGC_CPF'
      ListField = 'Razao_Social'
      ListSource = dsFiador
      TabOrder = 12
      OnClick = dbLcbFiadorClick
    end
    object dbEdtEnderFiador: TDBEdit
      Left = 376
      Top = 320
      Width = 441
      Height = 21
      DataField = 'endereco_fiador_GAR'
      DataSource = dsProcessos
      TabOrder = 14
    end
    object dbLcbProcurador2: TDBLookupComboBox
      Left = 376
      Top = 64
      Width = 417
      Height = 21
      DataField = 'Procurador2'
      DataSource = dsProcessos
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsProcurador2
      TabOrder = 3
    end
    object edtNumTR: TMaskEdit
      Left = 16
      Top = 24
      Width = 77
      Height = 21
      EditMask = '!#######/##;1;_'
      MaxLength = 10
      TabOrder = 16
      Text = '       /  '
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 394
    Width = 824
    Height = 46
    Align = alBottom
    Color = 10514464
    TabOrder = 2
    Visible = False
    object btnAlterar: TBitBtn
      Left = 8
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
      Left = 93
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = btnSalvarClick
      Kind = bkOK
    end
    object btnCancelar: TBitBtn
      Left = 170
      Top = 12
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      ModalResult = 2
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
      Left = 741
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnImprimeTR: TBitBtn
      Left = 256
      Top = 12
      Width = 149
      Height = 25
      Caption = '&Imprime FRENTE do TR'
      TabOrder = 3
      OnClick = btnImprimeTRClick
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
    object btnImprimeVerso: TBitBtn
      Left = 409
      Top = 12
      Width = 141
      Height = 25
      Caption = '&Imprime VERSO do TR'
      TabOrder = 4
      OnClick = btnImprimeVersoClick
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
    object btnFrenteVerso: TBitBtn
      Left = 553
      Top = 12
      Width = 95
      Height = 25
      Caption = '&Frente/Verso'
      TabOrder = 6
      OnClick = btnFrenteVersoClick
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
    object btnFollowTR: TBitBtn
      Left = 655
      Top = 12
      Width = 79
      Height = 25
      Hint = 'Follow TR Arquivado'
      Caption = 'Follow TR'
      Enabled = False
      TabOrder = 7
      OnClick = btnFollowTRClick
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
  end
  object pnlTRVerso: TPanel
    Left = 400
    Top = 544
    Width = 673
    Height = 297
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 14
      Top = 114
      Width = 63
      Height = 13
      Caption = 'Observações'
    end
    object Label3: TLabel
      Left = 14
      Top = 36
      Width = 30
      Height = 13
      Caption = 'Termo'
    end
    object btnOKVerso: TBitBtn
      Left = 248
      Top = 264
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = btnOKVersoClick
      Kind = bkOK
    end
    object btnCancelarVerso: TBitBtn
      Left = 344
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = btnCancelarVersoClick
      Kind = bkCancel
    end
    object dbMemoVerso: TDBMemo
      Left = 12
      Top = 128
      Width = 645
      Height = 129
      DataField = 'Observacoes'
      DataSource = dsObsTR
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 661
      Height = 27
      Align = alTop
      Caption = 'Observações do Verso do Termo de Responsabilidade'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object memoTermo: TMemo
      Left = 13
      Top = 51
      Width = 228
      Height = 57
      TabOrder = 4
    end
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Codigo_Cliente AS refcli, Pr' +
        'ocessos.Importador, Importadores.Razao_Social AS Cliente, TAB_TI' +
        'PO_DECLARACAO.Descricao AS tipodecla, Tipos_de_Processos.DESCRIC' +
        'AO AS tipopro, Contratos.Descricao AS qcontrato, Locais_Inventar' +
        'io.Descricao AS qlocal, Importadores.CNPJ_CPF_COMPLETO AS qcnpj,' +
        ' Processos.Fechado, Importadores.ATIVO, Processos.Responsavel_em' +
        'presa,  Processos.Responsavel_empresac '
      
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
      'where Processos.codigo=:Processo'
      'ORDER BY Processos.Codigo')
    Left = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
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
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
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
    object qrProcessosResponsavel_empresa: TStringField
      FieldName = 'Responsavel_empresa'
      Size = 10
    end
    object qrProcessosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      Size = 10
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 224
    Top = 16
  end
  object tbProcessos: TTable
    AutoCalcFields = False
    AfterPost = tbProcessosAfterPost
    AfterScroll = tbProcessosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Importador <> '#39'0000'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Processos'
    UpdateMode = upWhereChanged
    Left = 256
    object tbProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbProcessosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbProcessosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object tbProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object tbProcessosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object tbProcessosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
    object tbProcessosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object tbProcessosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object tbProcessosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object tbProcessosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object tbProcessosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object tbProcessosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      FixedChar = True
      Size = 10
    end
    object tbProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object tbProcessosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      FixedChar = True
      Size = 8
    end
    object tbProcessosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      FixedChar = True
      Size = 8
    end
    object tbProcessosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object tbProcessosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object tbProcessosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object tbProcessosCanal: TStringField
      FieldName = 'Canal'
      FixedChar = True
      Size = 1
    end
    object tbProcessosFiscal: TStringField
      FieldName = 'Fiscal'
      FixedChar = True
    end
    object tbProcessosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 3
    end
    object tbProcessosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object tbProcessosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      FixedChar = True
      Size = 1
    end
    object tbProcessosIN_MOEDA_UNICA: TIntegerField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object tbProcessosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object tbProcessosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      FixedChar = True
      Size = 1
    end
    object tbProcessosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      FixedChar = True
    end
    object tbProcessosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object tbProcessosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object tbProcessosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      FixedChar = True
      Size = 4
    end
    object tbProcessosProcurador: TStringField
      FieldName = 'Procurador'
      FixedChar = True
      Size = 4
    end
    object tbProcessosNumero_TR: TStringField
      FieldName = 'Numero_TR'
      FixedChar = True
    end
    object tbProcessosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object tbProcessosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object tbProcessosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object tbProcessosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object tbProcessosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object tbProcessosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      FixedChar = True
      Size = 1
    end
    object tbProcessosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      FixedChar = True
      Size = 50
    end
    object tbProcessosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      FixedChar = True
      Size = 5
    end
    object tbProcessosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object tbProcessosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      FixedChar = True
      Size = 50
    end
    object tbProcessosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      FixedChar = True
      Size = 50
    end
    object tbProcessosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      FixedChar = True
      Size = 50
    end
    object tbProcessosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
      FixedChar = True
      Size = 50
    end
    object tbProcessosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      FixedChar = True
      Size = 50
    end
    object tbProcessosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      FixedChar = True
      Size = 18
    end
    object tbProcessosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      FixedChar = True
      Size = 200
    end
    object tbProcessosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object tbProcessosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object tbProcessosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object tbProcessosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object tbProcessosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      FixedChar = True
      Size = 10
    end
    object tbProcessosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object tbProcessosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      FixedChar = True
      Size = 8
    end
    object tbProcessosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      FixedChar = True
      Size = 10
    end
    object tbProcessosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      FixedChar = True
      Size = 10
    end
    object tbProcessosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      FixedChar = True
      Size = 8
    end
    object tbProcessosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      FixedChar = True
      Size = 8
    end
    object tbProcessosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      FixedChar = True
      Size = 8
    end
    object tbProcessosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object tbProcessosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object tbProcessosCanalC: TStringField
      FieldName = 'CanalC'
      FixedChar = True
      Size = 1
    end
    object tbProcessosFiscalC: TStringField
      FieldName = 'FiscalC'
      FixedChar = True
    end
    object tbProcessosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      FixedChar = True
      Size = 1
    end
    object tbProcessosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object tbProcessosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object tbProcessosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object tbProcessosident_meio1: TStringField
      FieldName = 'ident_meio1'
      FixedChar = True
      Size = 100
    end
    object tbProcessosident_meio2: TStringField
      FieldName = 'ident_meio2'
      FixedChar = True
      Size = 100
    end
    object tbProcessosCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object tbProcessosCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object tbProcessosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object tbProcessosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object tbProcessosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      FixedChar = True
      Size = 5
    end
    object tbProcessosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object tbProcessosUrgente: TIntegerField
      FieldName = 'Urgente'
    end
    object tbProcessosconsolidado: TIntegerField
      FieldName = 'consolidado'
    end
    object tbProcessosPag_proporcional: TIntegerField
      FieldName = 'Pag_proporcional'
    end
    object tbProcessosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object tbProcessosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object tbProcessosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object tbProcessosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object tbProcessosDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 30
    end
    object tbProcessosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      FixedChar = True
      Size = 30
    end
    object tbProcessosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object tbProcessosFaturado: TIntegerField
      FieldName = 'Faturado'
    end
    object tbProcessosFechado: TIntegerField
      FieldName = 'Fechado'
    end
    object tbProcessosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      FixedChar = True
      Size = 4
    end
    object tbProcessosProcurador2: TStringField
      FieldName = 'Procurador2'
      FixedChar = True
      Size = 4
    end
    object tbProcessosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object tbProcessosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object tbProcessosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      FixedChar = True
      Size = 100
    end
    object tbProcessosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      FixedChar = True
      Size = 10
    end
    object tbProcessosvinc_processo: TIntegerField
      FieldName = 'vinc_processo'
    end
    object tbProcessosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      FixedChar = True
      Size = 8
    end
    object tbProcessossem_nfs: TIntegerField
      FieldName = 'sem_nfs'
    end
  end
  object dsProcessos: TDataSource
    DataSet = tbProcessos
    Left = 272
    Top = 16
  end
  object tbObsTR: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Observacoes_verso_TR'
    Left = 400
    object tbObsTREmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbObsTRFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbObsTRCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object tbObsTRObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
  end
  object dsObsTR: TDataSource
    DataSet = tbObsTR
    Left = 416
    Top = 16
  end
  object qrProcurador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Procuradores'
      'WHERE  Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 304
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
    object qrProcuradorEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Procuradores.Empresa'
      Size = 4
    end
    object qrProcuradorFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Procuradores.Filial'
      Size = 4
    end
    object qrProcuradorCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Procuradores.Codigo'
      Size = 4
    end
    object qrProcuradorRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Procuradores.Razao_Social'
      Size = 60
    end
    object qrProcuradorPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Procuradores.Pais'
      Size = 3
    end
    object qrProcuradorCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Procuradores.CGC_CPF'
      Size = 18
    end
    object qrProcuradorEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Procuradores.Endereco'
      Size = 40
    end
    object qrProcuradorNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Procuradores.Numero'
      Size = 6
    end
    object qrProcuradorComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Procuradores.Complemento'
      Size = 21
    end
    object qrProcuradorBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Procuradores.Bairro'
      Size = 25
    end
    object qrProcuradorCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Procuradores.Cidade'
      Size = 25
    end
    object qrProcuradorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Procuradores.CEP'
      Size = 10
    end
    object qrProcuradorUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Procuradores.UF'
      Size = 2
    end
    object qrProcuradorEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Procuradores.Estado'
      Size = 25
    end
    object qrProcuradorInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Procuradores.Inscricao_Estadual'
      Size = 15
    end
    object qrProcuradorRegistro: TStringField
      FieldName = 'Registro'
      Origin = 'DBNMSCOMEX.Procuradores.Registro'
      Size = 15
    end
    object qrProcuradorTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Procuradores.Telefone'
      Size = 15
    end
    object qrProcuradorexibe_complementares: TSmallintField
      FieldName = 'exibe_complementares'
      Origin = 'DBNMSCOMEX.Procuradores.exibe_complementares'
    end
  end
  object dsProcurador: TDataSource
    DataSet = qrProcurador
    Left = 320
    Top = 16
  end
  object qrFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Faturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo =:proc')
    Left = 448
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
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrFaturasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Faturas.Empresa'
      Size = 4
    end
    object qrFaturasFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Faturas.Filial'
      Size = 4
    end
    object qrFaturasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Faturas.Processo'
      Size = 8
    end
    object qrFaturasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      Size = 30
    end
    object qrFaturasExportador: TStringField
      FieldName = 'Exportador'
      Origin = 'DBNMSCOMEX.Faturas.Exportador'
      Size = 4
    end
    object qrFaturasIncoterm: TStringField
      FieldName = 'Incoterm'
      Origin = 'DBNMSCOMEX.Faturas.Incoterm'
      Size = 3
    end
    object qrFaturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      Origin = 'DBNMSCOMEX.Faturas.Vinculacao'
      Size = 1
    end
    object qrFaturasCondicao: TStringField
      FieldName = 'Condicao'
      Origin = 'DBNMSCOMEX.Faturas.Condicao'
      Size = 50
    end
    object qrFaturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
      Origin = 'DBNMSCOMEX.Faturas.Valor_Total'
    end
    object qrFaturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
      Origin = 'DBNMSCOMEX.Faturas.Peso_Total'
    end
    object qrFaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
      Origin = 'DBNMSCOMEX.Faturas.Peso_Total_Acertado'
    end
    object qrFaturasAcrescimos_Reducoes: TSmallintField
      FieldName = 'Acrescimos_Reducoes'
      Origin = 'DBNMSCOMEX.Faturas.Acrescimos_Reducoes'
    end
    object qrFaturasMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'DBNMSCOMEX.Faturas.Moeda'
      Size = 3
    end
    object qrFaturasCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      Origin = 'DBNMSCOMEX.Faturas.Cobertura_Cambial'
      Size = 1
    end
    object qrFaturasMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      Origin = 'DBNMSCOMEX.Faturas.Motivo_Sem_Cobertura'
      Size = 2
    end
    object qrFaturasModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      Origin = 'DBNMSCOMEX.Faturas.Modalidade_de_Pagamento'
      Size = 2
    end
    object qrFaturasInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      Origin = 'DBNMSCOMEX.Faturas.Instituicao_Financiadora'
      Size = 2
    end
    object qrFaturasTipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      Origin = 'DBNMSCOMEX.Faturas.Tipo_Parcela'
      Size = 1
    end
    object qrFaturasNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      Origin = 'DBNMSCOMEX.Faturas.Numero_de_parcelas'
      Size = 3
    end
    object qrFaturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Origin = 'DBNMSCOMEX.Faturas.Periodicidade'
      Size = 3
    end
    object qrFaturasValor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
      Origin = 'DBNMSCOMEX.Faturas.Valor_das_Parcelas'
    end
    object qrFaturasIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      Origin = 'DBNMSCOMEX.Faturas.Indicador_Periodicidade'
      Size = 1
    end
    object qrFaturasTaxa_de_Juros: TSmallintField
      FieldName = 'Taxa_de_Juros'
      Origin = 'DBNMSCOMEX.Faturas.Taxa_de_Juros'
    end
    object qrFaturasCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      Origin = 'DBNMSCOMEX.Faturas.Codigo_Taxa_de_Juros'
      Size = 4
    end
    object qrFaturasValor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
      Origin = 'DBNMSCOMEX.Faturas.Valor_Taxa_de_Juros'
    end
    object qrFaturasROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      Origin = 'DBNMSCOMEX.Faturas.ROF_BACEN'
      Size = 8
    end
    object qrFaturasPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
      Origin = 'DBNMSCOMEX.Faturas.Percentual_ROF'
    end
    object qrFaturasDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
      Origin = 'DBNMSCOMEX.Faturas.DT_PREV_PAG_CAMBIO'
    end
    object qrFaturasDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
      Origin = 'DBNMSCOMEX.Faturas.DT_PAG_CAMBIO'
    end
    object qrFaturasSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      Origin = 'DBNMSCOMEX.Faturas.STATUS_CAMBIO'
      Size = 1
    end
    object qrFaturasCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      Origin = 'DBNMSCOMEX.Faturas.CONTRATO_CAMBIO'
      Size = 10
    end
    object qrFaturasSALDO_CAMBIO: TFloatField
      FieldName = 'SALDO_CAMBIO'
      Origin = 'DBNMSCOMEX.Faturas.SALDO_CAMBIO'
    end
    object qrFaturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
      Origin = 'DBNMSCOMEX.Faturas.DtEmissao'
    end
    object qrFaturasPeso_Libra: TSmallintField
      FieldName = 'Peso_Libra'
      Origin = 'DBNMSCOMEX.Faturas.Peso_Libra'
    end
  end
  object qrTaxaConv: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Processos_Taxas_Conversao'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 480
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
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrTaxaConvEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Empresa'
      Size = 4
    end
    object qrTaxaConvFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Filial'
      Size = 4
    end
    object qrTaxaConvProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Processo'
      Size = 8
    end
    object qrTaxaConvMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Moeda'
      Size = 3
    end
    object qrTaxaConvTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversao'
    end
    object qrTaxaConvTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversaoc'
    end
  end
  object qrConhecimento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Numerodoccarga, Numeromaster, URF_Despacho'
      'FROM Conhecimento_Processo'
      'WHERE Empresa = :emp AND Filial = :fil AND Processo = :pro')
    Left = 512
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
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrConhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Numerodoccarga'
      Size = 18
    end
    object qrConhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Numeromaster'
      Size = 18
    end
    object qrConhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.URF_Despacho'
      Size = 7
    end
  end
  object qrFiador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Fiadores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Fiadores.Razao_Social;')
    Left = 544
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
    object qrFiadorEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Fiadores.Empresa'
      Size = 4
    end
    object qrFiadorFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Fiadores.Filial'
      Size = 4
    end
    object qrFiadorCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Fiadores.Codigo'
      Size = 4
    end
    object qrFiadorRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Fiadores.Razao_Social'
      Size = 60
    end
    object qrFiadorPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Fiadores.Pais'
      Size = 3
    end
    object qrFiadorCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Fiadores.CGC_CPF'
      Size = 18
    end
    object qrFiadorEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Fiadores.Endereco'
      Size = 40
    end
    object qrFiadorNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Fiadores.Numero'
      Size = 6
    end
    object qrFiadorComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Fiadores.Complemento'
      Size = 21
    end
    object qrFiadorBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Fiadores.Bairro'
      Size = 25
    end
    object qrFiadorCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Fiadores.Cidade'
      Size = 25
    end
    object qrFiadorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Fiadores.CEP'
      Size = 10
    end
    object qrFiadorUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Fiadores.UF'
      Size = 2
    end
    object qrFiadorEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Fiadores.Estado'
      Size = 25
    end
    object qrFiadorInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Fiadores.Inscricao_Estadual'
      Size = 15
    end
    object qrFiadorImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Fiadores.Importador'
      Size = 4
    end
  end
  object dsFiador: TDataSource
    DataSet = qrFiador
    Left = 560
    Top = 16
  end
  object tbDoc: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Processo;Tipo_Doc;Sub_Tipo_Doc'
    TableName = 'Documentos'
    Left = 592
    object tbDocEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbDocFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbDocImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object tbDocProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object tbDocTipo_Doc: TStringField
      FieldName = 'Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object tbDocSub_Tipo_Doc: TStringField
      FieldName = 'Sub_Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object tbDocNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      FixedChar = True
      Size = 30
    end
    object tbDocPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object tbDocCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 11
    end
    object tbDocArquivo: TStringField
      FieldName = 'Arquivo'
      FixedChar = True
      Size = 11
    end
    object tbDocftp: TIntegerField
      FieldName = 'ftp'
    end
    object tbDocVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object tbDocVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object tbDocObservacoes: TStringField
      FieldName = 'Observacoes'
      FixedChar = True
      Size = 255
    end
    object tbDocContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object tbDocLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 4
    end
    object tbDocData_inclusao: TDateTimeField
      FieldName = 'Data_inclusao'
    end
    object tbDocData_baixa: TDateTimeField
      FieldName = 'Data_baixa'
    end
    object tbDocData_renovacao: TDateTimeField
      FieldName = 'Data_renovacao'
    end
    object tbDocStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object tbDocData_envio: TDateTimeField
      FieldName = 'Data_envio'
    end
    object tbDocusuario_dig: TStringField
      FieldName = 'usuario_dig'
      FixedChar = True
      Size = 10
    end
  end
  object tbParam: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 624
    object tbParamEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object tbParamFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object tbParamNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object tbParamNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object tbParamEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object tbParamUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object tbParamSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object tbParamHost: TStringField
      FieldName = 'Host'
      Size = 15
    end
    object tbParamVersao: TStringField
      FieldName = 'Versao'
      Size = 50
    end
    object tbParamkeycrypt: TStringField
      FieldName = 'keycrypt'
      Size = 255
    end
    object tbParamHost_smtp: TStringField
      FieldName = 'Host_smtp'
      Size = 15
    end
    object tbParamPorta_smtp: TSmallintField
      FieldName = 'Porta_smtp'
    end
    object tbParamUsuario_smtp: TStringField
      FieldName = 'Usuario_smtp'
      Size = 30
    end
    object tbParamSenha_smtp: TStringField
      FieldName = 'Senha_smtp'
      Size = 16
    end
    object tbParamNumerador_Transmittal: TStringField
      FieldName = 'Numerador_Transmittal'
      Size = 8
    end
    object tbParamPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Size = 100
    end
    object tbParamAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object tbParamAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object tbParamAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object tbParamAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object tbParamNumerador_Sol_Cheques: TStringField
      FieldName = 'Numerador_Sol_Cheques'
      Size = 50
    end
    object tbParamNumerador_Sol_Reg: TStringField
      FieldName = 'Numerador_Sol_Reg'
      Size = 50
    end
    object tbParamNumerador_Sol_Tracla: TStringField
      FieldName = 'Numerador_Sol_Tracla'
      Size = 50
    end
  end
  object qrProcurador2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Procuradores'
      'WHERE  Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 352
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
    object qrProcurador2Empresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Procuradores.Empresa'
      Size = 4
    end
    object qrProcurador2Filial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Procuradores.Filial'
      Size = 4
    end
    object qrProcurador2Codigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Procuradores.Codigo'
      Size = 4
    end
    object qrProcurador2Razao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Procuradores.Razao_Social'
      Size = 60
    end
    object qrProcurador2Pais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Procuradores.Pais'
      Size = 3
    end
    object qrProcurador2CGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Procuradores.CGC_CPF'
      Size = 18
    end
    object qrProcurador2Endereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Procuradores.Endereco'
      Size = 40
    end
    object qrProcurador2Numero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Procuradores.Numero'
      Size = 6
    end
    object qrProcurador2Complemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Procuradores.Complemento'
      Size = 21
    end
    object qrProcurador2Bairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Procuradores.Bairro'
      Size = 25
    end
    object qrProcurador2Cidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Procuradores.Cidade'
      Size = 25
    end
    object qrProcurador2CEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Procuradores.CEP'
      Size = 10
    end
    object qrProcurador2UF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Procuradores.UF'
      Size = 2
    end
    object qrProcurador2Estado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Procuradores.Estado'
      Size = 25
    end
    object qrProcurador2Inscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Procuradores.Inscricao_Estadual'
      Size = 15
    end
    object qrProcurador2Registro: TStringField
      FieldName = 'Registro'
      Origin = 'DBNMSCOMEX.Procuradores.Registro'
      Size = 15
    end
    object qrProcurador2Telefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Procuradores.Telefone'
      Size = 15
    end
    object qrProcurador2exibe_complementares: TSmallintField
      FieldName = 'exibe_complementares'
      Origin = 'DBNMSCOMEX.Procuradores.exibe_complementares'
    end
  end
  object dsProcurador2: TDataSource
    DataSet = qrProcurador2
    Left = 368
    Top = 16
  end
  object t_propis: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Processo = 1'
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Processo;Adicao'
    TableName = 'Processos_ADICOES_ICMS_PIS_COFINS'
    Left = 600
    Top = 41
    object t_propisEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object t_propisFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object t_propisProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object t_propisAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object t_propisNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object t_propisVA: TFloatField
      FieldName = 'VA'
    end
    object t_propisOT: TFloatField
      FieldName = 'OT'
    end
    object t_propisDA: TFloatField
      FieldName = 'DA'
    end
    object t_propisAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object t_propisAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object t_propisAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object t_propisAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object t_propisAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object t_propisAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object t_propisBASEC_PISCOFINS: TFloatField
      FieldName = 'BASEC_PISCOFINS'
    end
    object t_propisBASEC_ICMS: TFloatField
      FieldName = 'BASEC_ICMS'
    end
    object t_propisVALOR_II: TFloatField
      FieldName = 'VALOR_II'
    end
    object t_propisVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object t_propisVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object t_propisVALOR_ICMS_EXTRA: TFloatField
      FieldName = 'VALOR_ICMS_EXTRA'
    end
    object t_propisVALOR_PIS_PASEP: TFloatField
      FieldName = 'VALOR_PIS_PASEP'
    end
    object t_propisVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object t_propisPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object t_propisVA_proporcional: TFloatField
      FieldName = 'VA_proporcional'
    end
    object t_propisAliq_NCM_II_proporcional: TFloatField
      FieldName = 'Aliq_NCM_II_proporcional'
    end
    object t_propisAliq_NCM_IPI_proporcional: TFloatField
      FieldName = 'Aliq_NCM_IPI_proporcional'
    end
    object t_propisFOB: TFloatField
      FieldName = 'FOB'
    end
  end
  object q_piscofinstrib: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.A' +
        'dicao, Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_IPI, TAB_REG_TRIBUTARIO.DESCRICAO'
      
        'FROM Tributacao_Item_Fatura INNER JOIN TAB_REG_TRIBUTARIO ON Tri' +
        'butacao_Item_Fatura.Regime_Tributacao_II = TAB_REG_TRIBUTARIO.CO' +
        'DIGO'
      
        'GROUP BY Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura' +
        '.Adicao, Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao' +
        '_Item_Fatura.Regime_Tributacao_IPI, TAB_REG_TRIBUTARIO.DESCRICAO'
      'HAVING (((Tributacao_Item_Fatura.Processo)=:qpro))'
      'ORDER BY Tributacao_Item_Fatura.Adicao;')
    Left = 632
    Top = 41
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '01132/04'
      end>
    object q_piscofinstribProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      Size = 8
    end
    object q_piscofinstribAdicao: TStringField
      FieldName = 'Adicao'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Adicao'
      Size = 3
    end
    object q_piscofinstribRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_II'
      Size = 1
    end
    object q_piscofinstribRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_IPI'
      Size = 1
    end
    object q_piscofinstribDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_REG_TRIBUTARIO.DESCRICAO'
      Size = 120
    end
  end
  object q_UpdateDoc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 720
  end
  object qDocumentoScaneado: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Arquivo from Documentos  where Processo =:pProc'
      'AND Tipo_doc ="PROC" AND Sub_Tipo_Doc ="11"'
      'and Numero_Doc :pNumDoc')
    Left = 208
    Top = 97
    ParamData = <
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pNumDoc'
        ParamType = ptUnknown
      end>
    object qDocumentoScaneadoArquivo: TStringField
      FieldName = 'Arquivo'
      Origin = 'DBNMSCOMEX.Documentos.Arquivo'
      FixedChar = True
      Size = 11
    end
  end
end
