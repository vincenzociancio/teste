object f_ParamContab: Tf_ParamContab
  Left = 17
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Parâmetros de Contabilização'
  ClientHeight = 364
  ClientWidth = 711
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 226
    Align = alClient
    Color = 10514464
    TabOrder = 0
    object dbGrdParamContab: TDBGrid
      Left = 16
      Top = 16
      Width = 681
      Height = 193
      DataSource = dsQrParamContab
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
          FieldName = 'Importador'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numerario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescNum'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Credito'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescCred'
          Width = 250
          Visible = True
        end>
    end
  end
  object pnlCampos: TPanel
    Left = 0
    Top = 226
    Width = 711
    Height = 93
    Align = alBottom
    Color = 10514464
    Enabled = False
    TabOrder = 1
    object Label3: TLabel
      Left = 72
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Razão Social'
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
      Width = 48
      Height = 13
      Caption = 'Numerário'
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
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 72
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 360
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Crédito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 416
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbLcbCliente: TDBLookupComboBox
      Left = 72
      Top = 24
      Width = 625
      Height = 21
      DataField = 'Importador'
      DataSource = dsTbParamContab
      KeyField = 'Codigo'
      ListField = 'Codigo;Razao_Social'
      ListFieldIndex = 1
      ListSource = dsImport
      TabOrder = 1
    end
    object dbLcbDescNum: TDBLookupComboBox
      Left = 72
      Top = 64
      Width = 281
      Height = 21
      DataField = 'Numerario'
      DataSource = dsTbParamContab
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsTiposNum
      TabOrder = 3
    end
    object dbEdtCod: TDBEdit
      Left = 16
      Top = 24
      Width = 49
      Height = 21
      TabStop = False
      DataField = 'Importador'
      DataSource = dsTbParamContab
      Enabled = False
      TabOrder = 0
    end
    object dbEdtCodNum: TDBEdit
      Left = 16
      Top = 64
      Width = 49
      Height = 21
      TabStop = False
      DataField = 'Numerario'
      DataSource = dsTbParamContab
      Enabled = False
      TabOrder = 2
    end
    object dbLcbDescCred: TDBLookupComboBox
      Left = 416
      Top = 64
      Width = 281
      Height = 21
      DataField = 'Credito'
      DataSource = dsTbParamContab
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsTiposCred
      TabOrder = 5
    end
    object dbEdtCodCred: TDBEdit
      Left = 360
      Top = 64
      Width = 49
      Height = 21
      TabStop = False
      DataField = 'Credito'
      DataSource = dsTbParamContab
      Enabled = False
      TabOrder = 4
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 319
    Width = 711
    Height = 45
    Align = alBottom
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 2
    object btnFechar: TBitBtn
      Left = 608
      Top = 12
      Width = 81
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
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
    object btnIncluir: TBitBtn
      Left = 24
      Top = 12
      Width = 81
      Height = 25
      Hint = 'Novo Parâmetro'
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
    object btnAlterar: TBitBtn
      Left = 112
      Top = 12
      Width = 81
      Height = 25
      Hint = 'Alterar dados do Parâmetro'
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
    object btnExcluir: TBitBtn
      Left = 200
      Top = 12
      Width = 81
      Height = 25
      Hint = 'Excluir Parâmetro'
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
    object btnSalvar: TBitBtn
      Left = 360
      Top = 12
      Width = 81
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
      Left = 455
      Top = 12
      Width = 81
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
  end
  object qrParam: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 24
    Top = 56
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
  object qrParamContab: TQuery
    AutoCalcFields = False
    AfterOpen = qrParamContabAfterOpen
    AfterScroll = qrParamContabAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PC.Empresa, PC.Filial, PC.Importador, I.Razao_Social, PC.' +
        'Numerario, TN.Descricao AS DescNum, PC.Credito, TC.Descricao AS ' +
        'DescCred'
      
        'FROM ((Parametros_Contabilizacao AS PC INNER JOIN Importadores A' +
        'S I ON (PC.Importador = I.Codigo) AND (PC.Filial = I.Filial) AND' +
        ' (PC.Empresa = I.Empresa)) INNER JOIN Tipos_Numerario AS TN ON (' +
        'PC.Numerario = TN.Codigo) AND (PC.Filial = TN.Filial) AND (PC.Em' +
        'presa = TN.Empresa)) LEFT JOIN Tipos_creditos AS TC ON (PC.Credi' +
        'to = TC.Codigo) AND (PC.Filial = TC.Filial) AND (PC.Empresa = TC' +
        '.Empresa)'
      'WHERE PC.Empresa = :emp AND PC.Filial = :filial'
      'ORDER BY I.Razao_Social, PC.Numerario')
    Left = 56
    Top = 56
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
    object qrParamContabEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrParamContabFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrParamContabImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrParamContabRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object qrParamContabNumerario: TStringField
      FieldName = 'Numerario'
      Size = 4
    end
    object qrParamContabDescNum: TStringField
      FieldName = 'DescNum'
      Size = 50
    end
    object qrParamContabCredito: TStringField
      FieldName = 'Credito'
      Size = 4
    end
    object qrParamContabDescCred: TStringField
      FieldName = 'DescCred'
      Size = 50
    end
  end
  object dsQrParamContab: TDataSource
    DataSet = qrParamContab
    Left = 24
    Top = 96
  end
  object tbParamContab: TTable
    AutoCalcFields = False
    BeforeInsert = tbParamContabBeforeInsert
    BeforeEdit = tbParamContabBeforeInsert
    AfterPost = tbParamContabAfterPost
    AfterCancel = qrParamContabAfterOpen
    BeforeDelete = tbParamContabBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Numerario'
    TableName = 'Parametros_Contabilizacao'
    Left = 104
    Top = 56
    object tbParamContabEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbParamContabFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbParamContabImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object tbParamContabNumerario: TStringField
      FieldName = 'Numerario'
      Required = True
      Size = 4
    end
    object tbParamContabCredito: TStringField
      FieldName = 'Credito'
      Required = True
      Size = 4
    end
  end
  object dsTbParamContab: TDataSource
    DataSet = tbParamContab
    Left = 96
    Top = 96
  end
  object qrImport: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social'
      'FROM Importadores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 160
    Top = 224
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
    object qrImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object qrImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
  end
  object dsImport: TDataSource
    DataSet = qrImport
    Left = 176
    Top = 240
  end
  object qrTiposNum: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM Tipos_Numerario'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Descricao')
    Left = 144
    Top = 264
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
    object qrTiposNumCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
    object qrTiposNumDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
  end
  object dsTiposNum: TDataSource
    DataSet = qrTiposNum
    Left = 160
    Top = 280
  end
  object qrTiposCred: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM Tipos_creditos'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Descricao')
    Left = 488
    Top = 264
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
    object qrTiposCredCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_creditos.Codigo'
      Size = 4
    end
    object qrTiposCredDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_creditos.Descricao'
      Size = 50
    end
  end
  object dsTiposCred: TDataSource
    DataSet = qrTiposCred
    Left = 504
    Top = 280
  end
end
