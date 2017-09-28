object f_FerGrev: Tf_FerGrev
  Left = 396
  Top = 202
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Greves/Feriados'
  ClientHeight = 311
  ClientWidth = 713
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBase: TPanel
    Left = 0
    Top = 0
    Width = 611
    Height = 311
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlGrid: TPanel
      Left = 0
      Top = 57
      Width = 611
      Height = 254
      Align = alClient
      BevelOuter = bvNone
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 9
        Top = 190
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label2: TLabel
        Left = 81
        Top = 190
        Width = 48
        Height = 13
        Caption = 'Descrição'
      end
      object dbgFerGrev: TDBGrid
        Left = 9
        Top = 5
        Width = 600
        Height = 183
        DataSource = dsFerGrev
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBackground
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 464
            Visible = True
          end>
      end
      object dbEdtData: TDBEdit
        Left = 9
        Top = 205
        Width = 73
        Height = 21
        DataField = 'Data'
        DataSource = dsFerGrev
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbEdtDesc: TDBEdit
        Left = 81
        Top = 205
        Width = 360
        Height = 21
        DataField = 'Descricao'
        DataSource = dsFerGrev
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = dbEdtDescEnter
        OnExit = dbEdtDescExit
        OnKeyPress = dbEdtDescKeyPress
      end
      object chkAtivos: TCheckBox
        Left = 11
        Top = 232
        Width = 198
        Height = 17
        Caption = 'Somente Greves e Feriados ativos?'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = chkAtivosClick
      end
      object dbrgAtivo: TDBRadioGroup
        Left = 450
        Top = 199
        Width = 135
        Height = 38
        Caption = '  Ativo'
        Columns = 2
        DataField = 'Ativo'
        DataSource = dsFerGrev
        Enabled = False
        Items.Strings = (
          'Sim '
          'Não')
        TabOrder = 4
        Values.Strings = (
          '1'
          '0')
      end
    end
    object pnlCheck: TPanel
      Left = 0
      Top = 0
      Width = 611
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Filtro: TLabel
        Left = 25
        Top = 10
        Width = 22
        Height = 13
        Caption = 'Filtro'
      end
      object lblData: TLabel
        Left = 465
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object rgFerGrev: TRadioGroup
        Left = 25
        Top = 22
        Width = 153
        Height = 33
        BiDiMode = bdLeftToRight
        Columns = 2
        Items.Strings = (
          'Greves '
          'Feriados')
        ParentBiDiMode = False
        TabOrder = 0
        TabStop = True
        OnClick = rgFerGrevClick
      end
      object edtData: TEdit
        Left = 464
        Top = 29
        Width = 105
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = edtDataChange
        OnKeyPress = edtDataKeyPress
      end
    end
  end
  object pnlMenu: TPanel
    Left = 611
    Top = 0
    Width = 102
    Height = 311
    Align = alRight
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 1
    object Bevel1: TBevel
      Left = 20
      Top = 85
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 5
      Top = 10
      Width = 3
      Height = 286
      Shape = bsLeftLine
    end
    object Bevel3: TBevel
      Left = 20
      Top = 166
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object btnNovo: TBitBtn
      Left = 18
      Top = 22
      Width = 75
      Height = 25
      Hint = 'Novo CAE'
      Caption = '&Novo'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Left = 18
      Top = 56
      Width = 75
      Height = 25
      Hint = 'Alterar dados do CAE'
      Caption = '&Alterar'
      Enabled = False
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
    object btnGravar: TBitBtn
      Left = 18
      Top = 97
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      Left = 18
      Top = 131
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Left = 18
      Top = 177
      Width = 75
      Height = 25
      Hint = 'Sair do Cadastro de CAE'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object pnlObs: TPanel
    Left = 136
    Top = 93
    Width = 377
    Height = 145
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    OnEnter = dbEdtDescEnter
    OnExit = dbEdtDescExit
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 115
      Height = 13
      Caption = 'Observações de Evento'
    end
    object dbLcbObs: TDBLookupListBox
      Left = 8
      Top = 24
      Width = 361
      Height = 108
      DataField = 'CodObservacao'
      DataSource = dsFerGrev
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListSource = dsObs
      ParentFont = False
      TabOrder = 0
      OnEnter = dbEdtDescEnter
      OnExit = dbEdtDescExit
    end
  end
  object qrParametro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 64
    Top = 176
    object qrParametroEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros.Empresa'
      Size = 4
    end
    object qrParametroFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros.Filial'
      Size = 4
    end
  end
  object dsFerGrev: TDataSource
    DataSet = tbFerGrev
    Left = 64
    Top = 120
  end
  object q_Teste: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Data'
      'FROM Tabela'
      'WHERE Data = :dat-- AND Filial = :filial')
    Left = 152
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dat--'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
  end
  object qrFollowUp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Data, Codevento'
      'FROM Followup '
      'WHERE Data = :dat AND Codevento = :cod')
    Left = 344
    Top = 192
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrFollowUpData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Followup.Data'
    end
    object qrFollowUpCodevento: TStringField
      FieldName = 'Codevento'
      Origin = 'DBNMSCOMEX.Followup.Codevento'
      Size = 4
    end
  end
  object qrObs: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *  FROM Obs_Eventos'
      'WHERE Evento = '#39'55'#39
      'ORDER BY Descricao')
    UpdateMode = upWhereChanged
    Left = 456
    Top = 136
    object qrObsEvento: TStringField
      FieldName = 'Evento'
      Origin = 'DBNMSCOMEX.Obs_Eventos.Evento'
      FixedChar = True
      Size = 4
    end
    object qrObsCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Obs_Eventos.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrObsDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Obs_Eventos.Descricao'
      FixedChar = True
      Size = 120
    end
    object qrObsAtivo: TSmallintField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Obs_Eventos.Ativo'
    end
  end
  object dsObs: TDataSource
    DataSet = qrObs
    Left = 528
    Top = 104
  end
  object qrIncObs: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Obs_Eventos (Evento, Codigo, Descricao)'
      'SELECT Evento, MAX(Codigo)+1 AS NovoCodigo, :desc'
      'FROM Obs_Eventos'
      'WHERE Evento = '#39'55'#39
      'GROUP BY Evento'
      '')
    Left = 152
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
      end>
  end
  object qrIncObsIng: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Obs_Eventos_Ing (Evento, Codigo, Descricao)'
      'SELECT '#39'55'#39', :cod, :desc')
    Left = 48
    Top = 528
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
      end>
    object StringField3: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object StringField4: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object qrLocFerGreves: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ''
      'select * from Feriados')
    Left = 560
    Top = 209
    object qrLocFerGrevesData: TDateTimeField
      FieldName = 'Data'
    end
    object qrLocFerGrevesDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object qrLocFerGrevesFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrLocFerGrevesCodObservacao: TStringField
      FieldName = 'CodObservacao'
      FixedChar = True
      Size = 4
    end
    object qrLocFerGrevesAtivo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object dsLocGreves: TDataSource
    DataSet = qrLocFerGreves
    Left = 552
    Top = 169
  end
  object tbFerGrev: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'dbo.Greves'
    Left = 328
    Top = 113
    object tbFerGrevData: TDateTimeField
      FieldName = 'Data'
    end
    object tbFerGrevDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object tbFerGrevFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object tbFerGrevCodObservacao: TStringField
      FieldName = 'CodObservacao'
      Size = 4
    end
    object tbFerGrevAtivo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object qrUpdateFerGre: TQuery
    Left = 224
    Top = 157
  end
end
