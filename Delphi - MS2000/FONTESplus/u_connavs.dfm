object f_connavs: Tf_connavs
  Left = 214
  Top = 192
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle Chegada de Navios'
  ClientHeight = 363
  ClientWidth = 682
  Color = 10514464
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 363
    Align = alClient
    Color = 10514464
    TabOrder = 0
    object Bevel2: TBevel
      Left = 8
      Top = 240
      Width = 577
      Height = 113
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 19
      Top = 249
      Width = 28
      Height = 13
      Caption = 'Navio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 297
      Width = 74
      Height = 13
      Caption = 'Data Embarque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 115
      Top = 297
      Width = 47
      Height = 13
      Caption = 'Data ETA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 217
      Top = 249
      Width = 40
      Height = 13
      Caption = 'Terminal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 417
      Top = 249
      Width = 30
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbTerminais: TDBLookupComboBox
      Left = 219
      Top = 266
      Width = 188
      Height = 21
      KeyField = 'PK_TERMINAL'
      ListField = 'NOME_TERMINAL'
      ListSource = dtsTerminais
      TabOrder = 3
      Visible = False
    end
    object cbNavios: TDBLookupComboBox
      Left = 19
      Top = 266
      Width = 188
      Height = 21
      KeyField = 'PK_NAVIO'
      ListField = 'NOME_NAVIO'
      ListSource = dtsNavios
      TabOrder = 2
      Visible = False
    end
    object EdtNavio: TEdit
      Left = 19
      Top = 267
      Width = 188
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object EdtTerminal: TEdit
      Left = 219
      Top = 267
      Width = 188
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 577
      Height = 201
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME_NAVIO'
          Title.Alignment = taCenter
          Title.Caption = 'Navio'
          Width = 117
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOME_TERMINAL'
          Title.Alignment = taCenter
          Title.Caption = 'Terminal'
          Width = 118
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Width = 138
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DT_EMBARQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Data Embarque'
          Width = 89
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DT_ETA'
          Title.Alignment = taCenter
          Title.Caption = 'Data Eta'
          Width = 83
          Visible = True
        end>
    end
    object edDtEmbarque: TMaskEdit
      Left = 19
      Top = 314
      Width = 72
      Height = 21
      Enabled = False
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 7
      Text = '  /  /    '
    end
    object edDtETA: TMaskEdit
      Left = 115
      Top = 314
      Width = 72
      Height = 21
      Enabled = False
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 8
      Text = '  /  /    '
    end
    object cbStatus: TComboBox
      Left = 417
      Top = 266
      Width = 162
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 6
      Items.Strings = (
        'AGUARDANDO CHEGADA'
        'CHEGADA DO NAVIO'
        'TRANSBORDO')
    end
    object ckTodos: TCheckBox
      Left = 8
      Top = 8
      Width = 177
      Height = 17
      Caption = 'Exibir todos os navios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ckTodosClick
    end
  end
  object sbControle: TScrollBox
    Left = 594
    Top = 0
    Width = 88
    Height = 363
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 1
    object Bevel3: TBevel
      Left = 9
      Top = 104
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel4: TBevel
      Left = 9
      Top = 181
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel1: TBevel
      Left = 9
      Top = 284
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object btnGravar: TBitBtn
      Left = 6
      Top = 114
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
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
    object btnIncluir: TBitBtn
      Left = 7
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    object btnAlterar: TBitBtn
      Left = 7
      Top = 40
      Width = 75
      Height = 25
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
      Left = 7
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
    object btnCancelar: TBitBtn
      Left = 7
      Top = 147
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
    object btnNavios: TBitBtn
      Left = 7
      Top = 198
      Width = 75
      Height = 25
      Hint = 'Cadastrar Navios'
      Cancel = True
      Caption = '&Navios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnNaviosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnTerminais: TBitBtn
      Left = 7
      Top = 245
      Width = 75
      Height = 25
      Hint = 'Cadastrar Terminais'
      Cancel = True
      Caption = '&Terminais'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnTerminaisClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnSair: TBitBtn
      Left = 7
      Top = 301
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Kind = bkClose
    end
  end
  object qrChegadaNavios: TQuery
    AfterScroll = qrChegadaNaviosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' C.PK_NAVIO_CHEGADA,'
      ' C.FK_NAVIO,'
      ' N.NOME_NAVIO, '
      ' C.FK_TERMINAL,'
      ' T.NOME_TERMINAL, '
      ' C.STATUS,'
      ' C.DT_EMBARQUE, '
      ' C.DT_ETA,'
      ' C.EXCLUIDO'
      'FROM '
      ' Controle_Navios_Chegada C '
      ' INNER JOIN Controle_Navios N ON C.FK_NAVIO = N.PK_NAVIO '
      
        ' INNER JOIN Controle_Navios_Terminal T ON C.FK_TERMINAL = T.PK_T' +
        'ERMINAL                                  '
      'WHERE '
      ' (STATUS <> '#39'TRANSBORDO'#39') '
      ' And C.EXCLUIDO = 0 '
      
        ' And Not( DATEDIFF(day,cast(C.DT_ETA as date),cast(GETDATE() as ' +
        'date))+1 > 15 '
      ' and STATUS ='#39'CHEGADA DO NAVIO'#39')'
      'ORDER BY '
      ' C.DT_ETA')
    Left = 520
    Top = 112
    object qrChegadaNaviosPK_NAVIO_CHEGADA: TIntegerField
      FieldName = 'PK_NAVIO_CHEGADA'
    end
    object qrChegadaNaviosFK_NAVIO: TIntegerField
      FieldName = 'FK_NAVIO'
    end
    object qrChegadaNaviosNOME_NAVIO: TStringField
      FieldName = 'NOME_NAVIO'
      FixedChar = True
      Size = 255
    end
    object qrChegadaNaviosFK_TERMINAL: TIntegerField
      FieldName = 'FK_TERMINAL'
    end
    object qrChegadaNaviosNOME_TERMINAL: TStringField
      FieldName = 'NOME_TERMINAL'
      FixedChar = True
      Size = 255
    end
    object qrChegadaNaviosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 50
    end
    object qrChegadaNaviosDT_EMBARQUE: TDateTimeField
      FieldName = 'DT_EMBARQUE'
    end
    object qrChegadaNaviosDT_ETA: TDateTimeField
      FieldName = 'DT_ETA'
    end
    object qrChegadaNaviosEXCLUIDO: TBooleanField
      FieldName = 'EXCLUIDO'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrChegadaNavios
    Left = 520
    Top = 56
  end
  object tbNavios: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'EXCLUIDO = 0'
    IndexFieldNames = 'NOME_NAVIO'
    TableName = 'Controle_Navios'
    Left = 288
    Top = 56
    object tbNaviosPK_NAVIO: TIntegerField
      FieldName = 'PK_NAVIO'
    end
    object tbNaviosNOME_NAVIO: TStringField
      FieldName = 'NOME_NAVIO'
      FixedChar = True
      Size = 255
    end
    object tbNaviosEXCLUIDO: TBooleanField
      FieldName = 'EXCLUIDO'
    end
  end
  object tbTerminais: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'EXCLUIDO = 0'
    IndexFieldNames = 'NOME_TERMINAL'
    TableName = 'Controle_Navios_Terminal'
    Left = 288
    Top = 120
    object tbTerminaisPK_TERMINAL: TIntegerField
      FieldName = 'PK_TERMINAL'
    end
    object tbTerminaisNOME_TERMINAL: TStringField
      FieldName = 'NOME_TERMINAL'
      FixedChar = True
      Size = 255
    end
    object tbTerminaisEXCLUIDO: TBooleanField
      FieldName = 'EXCLUIDO'
    end
  end
  object QryAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '')
    Left = 432
    Top = 112
  end
  object QryAux2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '')
    Left = 432
    Top = 168
  end
  object QryDeterminaID: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT MAX(PK_NAVIO_CHEGADA) FROM CONTROLE_NAVIOS_CHEGADA')
    Left = 432
    Top = 56
  end
  object dtsNavios: TDataSource
    DataSet = tbNavios
    Left = 352
    Top = 56
  end
  object dtsTerminais: TDataSource
    DataSet = tbTerminais
    Left = 352
    Top = 120
  end
end
