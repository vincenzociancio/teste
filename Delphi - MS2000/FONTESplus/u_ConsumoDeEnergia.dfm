object frmConsumoDeEnergia: TfrmConsumoDeEnergia
  Left = 439
  Top = 137
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Indicador : Consumo de Energia'
  ClientHeight = 477
  ClientWidth = 777
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
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = -2
    Top = 21
    Width = 780
    Height = 51
    BorderStyle = bsNone
    ColCount = 12
    FixedColor = clActiveBorder
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object StringGrid2: TStringGrid
    Left = -2
    Top = 90
    Width = 780
    Height = 51
    BorderStyle = bsNone
    ColCount = 12
    FixedColor = clActiveBorder
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 2
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object StringGrid3: TStringGrid
    Left = -2
    Top = 160
    Width = 782
    Height = 51
    ColCount = 12
    FixedColor = clActiveBorder
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 3
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object StringGrid4: TStringGrid
    Left = -2
    Top = 231
    Width = 782
    Height = 51
    ColCount = 12
    FixedColor = clActiveBorder
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 4
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object StringGrid5: TStringGrid
    Left = -2
    Top = 301
    Width = 782
    Height = 51
    ColCount = 12
    FixedColor = clActiveBorder
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 5
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object btnIncluir: TBitBtn
    Left = 0
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 6
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
    Left = 96
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 7
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
  object btnSair: TBitBtn
    Left = 701
    Top = 446
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 8
    OnClick = btnSairClick
    Kind = bkClose
  end
  object btnSalvar: TBitBtn
    Left = 188
    Top = 448
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
  object Panel1: TPanel
    Left = -3
    Top = 0
    Width = 782
    Height = 21
    BevelOuter = bvNone
    Caption = 'Contas de luz Rua Conselheiro Saraiva Kw/h'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Panel2: TPanel
    Left = -4
    Top = 70
    Width = 782
    Height = 21
    BevelOuter = bvNone
    Caption = 'Contas de luz Rua Dom Gerardo KW/h'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object Panel3: TPanel
    Left = -3
    Top = 140
    Width = 782
    Height = 21
    BevelOuter = bvNone
    Caption = 'Conta total de luz MS Logística KW/h'
    Color = cl3DDkShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object Panel4: TPanel
    Left = -2
    Top = 211
    Width = 782
    Height = 21
    BevelOuter = bvNone
    Caption = 'Total de Horas Trabalhadas'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object Panel5: TPanel
    Left = -2
    Top = 281
    Width = 782
    Height = 21
    BevelOuter = bvNone
    Caption = 'Relação Consumo energia x Efetivo'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object btnCancelar: TBitBtn
    Left = 275
    Top = 448
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 352
    Width = 777
    Height = 74
    Caption = 'Entrada de Informações'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    object Label1: TLabel
      Left = 14
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Ano (YYYY)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 109
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Mês (MM)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 208
      Top = 24
      Width = 165
      Height = 13
      Caption = 'Rua Luz Conselheiro Saraiva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 431
      Top = 24
      Width = 126
      Height = 13
      Caption = 'Rua Luz Dom Gerardo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 606
      Top = 24
      Width = 41
      Height = 13
      Caption = 'Efetivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtAno: TEdit
      Left = 13
      Top = 46
      Width = 73
      Height = 21
      TabOrder = 0
      OnChange = txtAnoChange
    end
    object txtMes: TEdit
      Left = 109
      Top = 46
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object txtContaCS: TEdit
      Left = 207
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object txtContaDG: TEdit
      Left = 431
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object txtEfetivo: TEdit
      Left = 607
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 4
    end
  end
  object qConsumoDeEnergia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Consumo_Energia  where ano =:pAno')
    Left = 720
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pAno'
        ParamType = ptInput
      end>
    object qConsumoDeEnergiapk_id: TAutoIncField
      FieldName = 'pk_id'
    end
    object qConsumoDeEnergiaano: TIntegerField
      FieldName = 'ano'
    end
    object qConsumoDeEnergiames: TIntegerField
      FieldName = 'mes'
    end
    object qConsumoDeEnergiaconta_luz_cs: TFloatField
      FieldName = 'conta_luz_cs'
    end
    object qConsumoDeEnergiaconta_lus_dg: TFloatField
      FieldName = 'conta_lus_dg'
    end
    object qConsumoDeEnergiaefetivo_mensal: TIntegerField
      FieldName = 'efetivo_mensal'
    end
  end
  object qRetornaMes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Consumo_Energia  where ano =:pAno and mes =:pMes')
    Left = 24
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pAno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pMes'
        ParamType = ptInput
      end>
    object qRetornaMesPK_ID: TAutoIncField
      FieldName = 'PK_ID'
    end
    object qRetornaMesAno: TIntegerField
      FieldName = 'Ano'
    end
    object qRetornaMesMes: TIntegerField
      FieldName = 'Mes'
    end
    object qRetornaMesConta_Luz_CS: TFloatField
      FieldName = 'Conta_Luz_CS'
    end
    object qRetornaMesConta_Lus_DG: TFloatField
      FieldName = 'Conta_Lus_DG'
    end
    object qRetornaMesEfetivo_Mensal: TIntegerField
      FieldName = 'Efetivo_Mensal'
    end
  end
  object qInsereConsumo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [Consumo_Energia]'
      '           ([ano]'
      '           ,[mes]'
      '           ,[conta_luz_cs]'
      '           ,[conta_lus_dg]'
      '           ,[efetivo_mensal])'
      '     VALUES'
      '           (:pAno,'
      '            :pMes,'
      '            :pConta_luz_cs,'
      '            :pConta_lus_dg,'
      '            :pEfetivo_mensal)')
    Left = 24
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pAno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pMes'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pConta_luz_cs'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pConta_lus_dg'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pEfetivo_mensal'
        ParamType = ptInput
      end>
  end
  object qAlteraConsumo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Consumo_Energia'
      '   SET Ano =:pAno'
      '      ,Mes =:pMes'
      '      ,Conta_Luz_CS =:pConta_Luz_CS'
      '      ,Conta_Lus_DG =:pConta_Lus_DG'
      '      ,Efetivo_Mensal =:pEfetivo_Mensal'
      ' WHERE pk_id =:pPk_id')
    Left = 24
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pAno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pMes'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pConta_Luz_CS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pConta_Lus_DG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pEfetivo_Mensal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pPk_id'
        ParamType = ptInput
      end>
  end
  object qConsumoPorMes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Consumo_Energia  where ano =:pAno and mes =:pMes')
    Left = 688
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'pAno'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pMes'
        ParamType = ptInput
      end>
    object qConsumoPorMesPK_ID: TAutoIncField
      FieldName = 'PK_ID'
    end
    object qConsumoPorMesAno: TIntegerField
      FieldName = 'Ano'
    end
    object qConsumoPorMesMes: TIntegerField
      FieldName = 'Mes'
    end
    object qConsumoPorMesConta_Luz_CS: TFloatField
      FieldName = 'Conta_Luz_CS'
    end
    object qConsumoPorMesConta_Lus_DG: TFloatField
      FieldName = 'Conta_Lus_DG'
    end
    object qConsumoPorMesEfetivo_Mensal: TIntegerField
      FieldName = 'Efetivo_Mensal'
    end
  end
end
