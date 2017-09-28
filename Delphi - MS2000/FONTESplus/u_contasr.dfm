object f_contasr: Tf_contasr
  Left = 261
  Top = 222
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas a Receber'
  ClientHeight = 516
  ClientWidth = 803
  Color = clSilver
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 41
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 15
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
      Top = 11
      Width = 65
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
  end
  object p_venc: TPanel
    Left = 0
    Top = 41
    Width = 803
    Height = 75
    Align = alTop
    Color = clGray
    Enabled = False
    TabOrder = 1
    object Label4: TLabel
      Left = 10
      Top = 10
      Width = 45
      Height = 16
      Caption = 'Código'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 134
      Top = 10
      Width = 45
      Height = 16
      Caption = 'Cliente'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 198
      Top = 11
      Width = 459
      Height = 17
      DataField = 'Razao_Social'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 75
      Top = 11
      Width = 47
      Height = 17
      DataField = 'Importador'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 675
      Top = 10
      Width = 39
      Height = 16
      Caption = 'Status'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 42
      Width = 31
      Height = 16
      Caption = 'Nfs-e'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 75
      Top = 43
      Width = 47
      Height = 17
      DataField = 'NFiscal_e'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVencimento: TLabel
      Left = 727
      Top = 10
      Width = 5
      Height = 19
      Caption = '-'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 198
      Top = 43
      Width = 59
      Height = 17
      DataField = 'NFiscal'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 134
      Top = 42
      Width = 23
      Height = 16
      Caption = 'Rps'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object p_info: TPanel
    Left = 0
    Top = 115
    Width = 803
    Height = 358
    Color = 10514464
    Enabled = False
    TabOrder = 2
    object Label11: TLabel
      Left = 378
      Top = 306
      Width = 96
      Height = 20
      BiDiMode = bdRightToLeft
      Caption = 'Saldo Geral'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 610
      Top = 308
      Width = 5
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdRightToLeft
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 37
      Top = 18
      Width = 52
      Height = 16
      Caption = 'Emissão'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label20: TLabel
      Left = 173
      Top = 18
      Width = 76
      Height = 16
      Caption = 'Vencimento'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object sb_limpaformapagamento: TSpeedButton
      Left = 649
      Top = 17
      Width = 23
      Height = 21
      Hint = 'Limpa Forma de Pagamento'
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
      OnClick = sb_limpaformapagamentoClick
    end
    object Label22: TLabel
      Left = 335
      Top = 18
      Width = 138
      Height = 16
      Caption = 'Forma de Pagamento'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label27: TLabel
      Left = 37
      Top = 50
      Width = 52
      Height = 16
      Caption = 'Emissão'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label28: TLabel
      Left = 173
      Top = 50
      Width = 76
      Height = 16
      Caption = 'Vencimento'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label29: TLabel
      Left = 335
      Top = 50
      Width = 138
      Height = 16
      Caption = 'Forma de Pagamento'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object sb_limpaformapagamento2: TSpeedButton
      Left = 649
      Top = 49
      Width = 23
      Height = 21
      Hint = 'Limpa Forma de Pagamento'
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
      OnClick = sb_limpaformapagamento2Click
    end
    object Label30: TLabel
      Left = 37
      Top = 82
      Width = 52
      Height = 16
      Caption = 'Emissão'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label31: TLabel
      Left = 173
      Top = 82
      Width = 76
      Height = 16
      Caption = 'Vencimento'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label32: TLabel
      Left = 335
      Top = 82
      Width = 138
      Height = 16
      Caption = 'Forma de Pagamento'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object sb_limpaformapagamento3: TSpeedButton
      Left = 649
      Top = 81
      Width = 23
      Height = 21
      Hint = 'Limpa Forma de Pagamento'
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
      OnClick = sb_limpaformapagamento3Click
    end
    object Label33: TLabel
      Left = 10
      Top = 17
      Width = 15
      Height = 19
      Caption = '1ª'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label34: TLabel
      Left = 10
      Top = 49
      Width = 15
      Height = 19
      Caption = '2ª'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label35: TLabel
      Left = 10
      Top = 81
      Width = 15
      Height = 19
      Caption = '3ª'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label37: TLabel
      Left = 682
      Top = 82
      Width = 34
      Height = 16
      Caption = 'Valor'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label38: TLabel
      Left = 682
      Top = 50
      Width = 34
      Height = 16
      Caption = 'Valor'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label39: TLabel
      Left = 682
      Top = 18
      Width = 34
      Height = 16
      Caption = 'Valor'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 32
      Top = 152
      Width = 272
      Height = 177
      TabOrder = 0
      object Label15: TLabel
        Left = 64
        Top = 23
        Width = 88
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Valor dos Serviços'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label16: TLabel
        Left = 97
        Top = 45
        Width = 55
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'I.S.S. (+5%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 106
        Top = 68
        Width = 46
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 97
        Top = 104
        Width = 55
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'I. R. (-1,5%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label36: TLabel
        Left = 90
        Top = 126
        Width = 62
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'PCC (-4,65%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label19: TLabel
        Left = 74
        Top = 149
        Width = 79
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Valor Total (Líq.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object dbEdtValServico: TDBEdit
        Left = 175
        Top = 16
        Width = 81
        Height = 21
        DataField = 'Total_Servico'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 0
      end
      object me_vlrliq: TMaskEdit
        Left = 175
        Top = 145
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 87
        Width = 268
        Height = 7
        TabOrder = 2
      end
      object dbEdtISS: TDBEdit
        Left = 175
        Top = 38
        Width = 81
        Height = 21
        DataField = 'ISS'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 3
      end
      object dbEdtPCC: TDBEdit
        Left = 175
        Top = 123
        Width = 81
        Height = 21
        DataField = 'PCC'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 4
      end
      object dbEdtIR: TDBEdit
        Left = 175
        Top = 101
        Width = 81
        Height = 21
        DataField = 'IR'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 5
      end
      object me_subtotal: TMaskEdit
        Left = 175
        Top = 60
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 6
      end
    end
    object GroupBox2: TGroupBox
      Left = 336
      Top = 152
      Width = 336
      Height = 129
      TabOrder = 1
      object Label8: TLabel
        Left = 49
        Top = 23
        Width = 65
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Adiantamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 67
        Top = 45
        Width = 47
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Despesas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 18
        Top = 68
        Width = 97
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Saldo das Despesas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 275
        Top = 68
        Width = 5
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 275
        Top = 23
        Width = 5
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 275
        Top = 45
        Width = 5
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 28
        Top = 106
        Width = 87
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Saldo Balanceado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 275
        Top = 106
        Width = 5
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 2
        Top = 87
        Width = 333
        Height = 7
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 33
      Top = 137
      Width = 271
      Height = 22
      Color = clGray
      TabOrder = 2
      object Label6: TLabel
        Left = 13
        Top = 2
        Width = 69
        Height = 16
        Caption = 'Honorários'
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 337
      Top = 137
      Width = 336
      Height = 22
      Color = clGray
      TabOrder = 3
      object Label7: TLabel
        Left = 13
        Top = 2
        Width = 248
        Height = 16
        Caption = 'Valores das Despesas e Adiantamentos'
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object med_emissao: TDBEdit
      Left = 95
      Top = 16
      Width = 68
      Height = 21
      DataField = 'Emissao_Faturamento'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 4
      OnKeyPress = med_vencimentoKeyPress
    end
    object med_vencimento: TDBEdit
      Left = 255
      Top = 16
      Width = 68
      Height = 21
      DataField = 'Vencimento_Faturamento'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 5
      OnKeyPress = med_vencimentoKeyPress
    end
    object dblcFormaPagamento: TDBLookupComboBox
      Left = 481
      Top = 16
      Width = 167
      Height = 21
      DataField = 'Forma_Pag_Faturamento'
      DataSource = DataSource2
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource3
      TabOrder = 6
    end
    object med_emissao2: TDBEdit
      Left = 95
      Top = 48
      Width = 68
      Height = 21
      DataField = 'Emissao_Faturamento2'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 8
      OnKeyPress = med_vencimentoKeyPress
    end
    object med_vencimento2: TDBEdit
      Left = 255
      Top = 48
      Width = 68
      Height = 21
      DataField = 'Vencimento_Faturamento2'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 9
      OnKeyPress = med_vencimentoKeyPress
    end
    object dblcFormaPagamento2: TDBLookupComboBox
      Left = 481
      Top = 48
      Width = 167
      Height = 21
      DataField = 'Forma_Pag_Faturamento2'
      DataSource = DataSource2
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource3
      TabOrder = 10
    end
    object med_emissao3: TDBEdit
      Left = 95
      Top = 80
      Width = 68
      Height = 21
      DataField = 'Emissao_Faturamento3'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 12
      OnKeyPress = med_vencimentoKeyPress
    end
    object med_vencimento3: TDBEdit
      Left = 255
      Top = 80
      Width = 68
      Height = 21
      DataField = 'Vencimento_Faturamento3'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 13
      OnKeyPress = med_vencimentoKeyPress
    end
    object dblcFormaPagamento3: TDBLookupComboBox
      Left = 481
      Top = 80
      Width = 167
      Height = 21
      DataField = 'Forma_Pag_Faturamento3'
      DataSource = DataSource2
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource3
      TabOrder = 14
    end
    object med_Valor: TDBEdit
      Left = 725
      Top = 16
      Width = 68
      Height = 21
      DataField = 'Valor_Faturamento'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 7
      OnKeyPress = med_ValorKeyPress
    end
    object med_Valor2: TDBEdit
      Left = 725
      Top = 48
      Width = 68
      Height = 21
      DataField = 'Valor_Faturamento2'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 11
      OnKeyPress = med_ValorKeyPress
    end
    object med_Valor3: TDBEdit
      Left = 725
      Top = 80
      Width = 68
      Height = 21
      DataField = 'Valor_Faturamento3'
      DataSource = DataSource2
      MaxLength = 10
      TabOrder = 15
      OnKeyPress = med_ValorKeyPress
    end
  end
  object p_botoes: TPanel
    Left = 0
    Top = 472
    Width = 803
    Height = 44
    Align = alBottom
    Color = 10514464
    TabOrder = 3
    object btnAlterar: TBitBtn
      Left = 17
      Top = 10
      Width = 94
      Height = 25
      Caption = 'Incluir/Alterar'
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
      Left = 233
      Top = 10
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
      Left = 148
      Top = 10
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
      Left = 712
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object qryContasProc: TQuery
    AfterScroll = qryContasProcAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT P.Empresa, '
      '       P.Filial, '
      '       P.Codigo, '
      '       P.Importador, '
      '       I.Razao_Social, '
      '       ISNULL(NFS.NFiscal,NFSP.NFiscal) AS NFiscal,'
      '       NFS.NFiscal_e, '
      
        '       (SELECT Sum(Valor_Registrado) FROM Numerarios_Processos W' +
        'HERE Numerario = '#39'ISS'#39' AND Processo = :p1) AS ISS,'
      
        '       (SELECT Sum(Valor) FROM Creditos_Processos WHERE Credito ' +
        '= '#39'IRRF'#39' AND Processo = :p1) AS IR, '
      
        '  (SELECT Sum(Valor) FROM Creditos_Processos WHERE ((Credito = '#39 +
        'CCP'#39') OR (Credito = '#39'COFI'#39') OR (Credito = '#39'PIS'#39') OR (Credito = '#39 +
        'CSLL'#39')) AND Processo = :p1) AS PCC,       '
      
        '       (SELECT Sum(Valor) FROM Creditos_Processos WHERE Credito ' +
        '= '#39'SB'#39' AND Processo = :p1) AS Saldo_Balanceado,'
      
        '       (SELECT Sum(Valor_Registrado) FROM Numerarios_Processos W' +
        'HERE Numerario = '#39'HONO'#39' AND Processo = :p1) Total_Servico,      ' +
        '  '
      
        '       (SELECT Sum(Valor) FROM Creditos_Processos WHERE Credito ' +
        '= '#39'ADIA'#39' AND Processo = :p1) AS Adiantamento,'
      
        '  (SELECT Sum(Valor_Registrado) FROM Numerarios_Processos WHERE ' +
        'Contabilizado_cliente = 0 AND Numerario <> '#39'HONO'#39' AND Numerario ' +
        '<> '#39'ISS'#39' AND Processo = :p1) AS Despesas '
      '  FROM Processos P LEFT JOIN Notas_Fiscais_Servicos NFS'
      
        '    ON P.Codigo = NFS.Processo LEFT JOIN Notas_Fiscais_SERVICOS_' +
        'PROCESSOS NFSP                                                  ' +
        '    '
      '    ON P.Codigo = NFSP.PROCESSO INNER JOIN Importadores I '
      '    ON P.Importador = I.Codigo    '
      ' WHERE P.Codigo = :p1')
    Left = 662
    Top = 161
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object qryContasProcEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qryContasProcFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qryContasProcCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object qryContasProcNFiscal: TStringField
      FieldName = 'NFiscal'
      Size = 6
    end
    object qryContasProcNFiscal_e: TStringField
      FieldName = 'NFiscal_e'
      Size = 15
    end
    object qryContasProcImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qryContasProcRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object qryContasProcAdiantamento: TFloatField
      FieldName = 'Adiantamento'
    end
    object qryContasProcDespesas: TFloatField
      FieldName = 'Despesas'
    end
    object qryContasProcISS: TFloatField
      FieldName = 'ISS'
    end
    object qryContasProcIR: TFloatField
      FieldName = 'IR'
    end
    object qryContasProcPCC: TFloatField
      FieldName = 'PCC'
    end
    object qryContasProcTotal_Servico: TFloatField
      FieldName = 'Total_Servico'
    end
    object qryContasProcSaldo_Balanceado: TFloatField
      FieldName = 'Saldo_Balanceado'
    end
  end
  object DataSource1: TDataSource
    DataSet = qryContasProc
    Left = 752
    Top = 161
  end
  object T_processos: TTable
    AutoCalcFields = False
    AfterScroll = T_processosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = DataSource1
    TableName = 'Processos'
    UpdateMode = upWhereChanged
    Left = 665
    Top = 228
    object T_processosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_processosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_processosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object T_processosEmissao_Faturamento: TDateTimeField
      FieldName = 'Emissao_Faturamento'
    end
    object T_processosVencimento_Faturamento: TDateTimeField
      FieldName = 'Vencimento_Faturamento'
    end
    object T_processosForma_Pag_Faturamento: TIntegerField
      FieldName = 'Forma_Pag_Faturamento'
    end
    object T_processosEmissao_Faturamento2: TDateTimeField
      FieldName = 'Emissao_Faturamento2'
    end
    object T_processosVencimento_Faturamento2: TDateTimeField
      FieldName = 'Vencimento_Faturamento2'
    end
    object T_processosForma_Pag_Faturamento2: TIntegerField
      FieldName = 'Forma_Pag_Faturamento2'
    end
    object T_processosEmissao_Faturamento3: TDateTimeField
      FieldName = 'Emissao_Faturamento3'
    end
    object T_processosVencimento_Faturamento3: TDateTimeField
      FieldName = 'Vencimento_Faturamento3'
    end
    object T_processosForma_Pag_Faturamento3: TIntegerField
      FieldName = 'Forma_Pag_Faturamento3'
    end
    object T_processosValor_Faturamento: TFloatField
      FieldName = 'Valor_Faturamento'
    end
    object T_processosValor_Faturamento2: TFloatField
      FieldName = 'Valor_Faturamento2'
    end
    object T_processosValor_Faturamento3: TFloatField
      FieldName = 'Valor_Faturamento3'
    end
  end
  object DataSource2: TDataSource
    DataSet = T_processos
    Left = 754
    Top = 228
  end
  object DataSource3: TDataSource
    DataSet = qryFormaPag
    Left = 754
    Top = 300
  end
  object qryFormaPag: TQuery
    AfterScroll = qryContasProcAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO '
      '  FROM Forma_de_Pagamento')
    Left = 662
    Top = 305
    object qryFormaPagCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryFormaPagDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
end
