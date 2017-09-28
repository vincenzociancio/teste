object F_paramSolNum: TF_paramSolNum
  Left = 11
  Top = 51
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Parâmetros de Solicitação de Numerários'
  ClientHeight = 432
  ClientWidth = 748
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
  object Label1: TLabel
    Left = 0
    Top = 310
    Width = 748
    Height = 15
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Obs: Tipos de Numerários não parametrizados serão solicitados ao' +
      ' próprio Cliente'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 29
    Align = alTop
    Caption = 'Clientes'
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object cbAtivos: TCheckBox
      Left = 633
      Top = 8
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Somente Ativos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = cbAtivosClick
    end
  end
  object dbGrdClientes: TDBGrid
    Left = 0
    Top = 29
    Width = 748
    Height = 132
    Align = alTop
    DataSource = dsClientes
    Options = [dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Width = 520
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Width = 188
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 161
    Width = 748
    Height = 32
    Align = alTop
    Caption = 'Parâmetros de Solicitação de Numerários por Cliente'
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object dbGrdParamFat: TDBGrid
    Left = 0
    Top = 193
    Width = 748
    Height = 117
    Align = alTop
    DataSource = ds_param
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Tipo de Numerário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Empresa'
        Width = 406
        Visible = True
      end>
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 387
    Width = 748
    Height = 45
    Align = alBottom
    Alignment = taLeftJustify
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 4
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
  object pnlCampos: TPanel
    Left = 0
    Top = 328
    Width = 748
    Height = 59
    Align = alBottom
    Color = 10514464
    Enabled = False
    TabOrder = 5
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 87
      Height = 13
      Caption = 'Tipo de Numerário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 308
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbLcbDescNum: TDBLookupComboBox
      Left = 8
      Top = 24
      Width = 297
      Height = 21
      DataField = 'Numerario'
      DataSource = ds_t_param
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListFieldIndex = 1
      ListSource = ds_num
      TabOrder = 0
    end
    object dbLcbDescIMP: TDBLookupComboBox
      Left = 308
      Top = 24
      Width = 433
      Height = 21
      DataField = 'Importador2'
      DataSource = ds_t_param
      KeyField = 'Codigo'
      ListField = 'Razao_Social;cidade'
      ListFieldIndex = 1
      ListSource = ds_imp
      TabOrder = 1
    end
  end
  object qrClientes: TQuery
    AfterOpen = qrClientesAfterScroll
    AfterScroll = qrClientesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Codigo, Razao_Social, Cidade'
      'FROM Importadores'
      
        'WHERE Empresa = :emp AND Filial = :filial AND (Ativo = 1 OR Ativ' +
        'o = :ativo)'
      'ORDER BY Razao_Social')
    Left = 56
    Top = 8
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
        DataType = ftInteger
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    object qrClientesEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object qrClientesFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object qrClientesCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object qrClientesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object qrClientesCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      Size = 25
    end
  end
  object dsClientes: TDataSource
    DataSet = qrClientes
    Left = 72
    Top = 24
  end
  object t_paramsolnum: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Numerario'
    MasterFields = 'Empresa;Filial;Importador;Codigo'
    MasterSource = ds_param
    TableName = 'Parametros_Sol_Numerarios'
    Left = 256
    Top = 16
    object t_paramsolnumEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_paramsolnumFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_paramsolnumImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object t_paramsolnumNumerario: TStringField
      FieldName = 'Numerario'
      Required = True
      Size = 4
    end
    object t_paramsolnumImportador2: TStringField
      FieldName = 'Importador2'
      Required = True
      Size = 4
    end
  end
  object q_param: TQuery
    AfterOpen = q_paramAfterScroll
    AfterScroll = q_paramAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Parametros_Sol_Numerarios.Empresa, Parametros_Sol_Numerar' +
        'ios.Filial, Parametros_Sol_Numerarios.Importador, Parametros_Sol' +
        '_Numerarios.Importador2, Importadores.Razao_Social, Tipos_Numera' +
        'rio.Codigo, Tipos_Numerario.Descricao'
      
        'FROM (Parametros_Sol_Numerarios INNER JOIN Importadores ON Param' +
        'etros_Sol_Numerarios.Importador2 = Importadores.Codigo) INNER JO' +
        'IN Tipos_Numerario ON Parametros_Sol_Numerarios.Numerario = Tipo' +
        's_Numerario.Codigo'
      'WHERE (((Parametros_Sol_Numerarios.Importador)=:QIMP))'
      'ORDER BY Parametros_Sol_Numerarios.Importador2;')
    Left = 328
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'QIMP'
        ParamType = ptUnknown
        Value = '2'
      end>
    object q_paramEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_paramFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_paramImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object q_paramImportador2: TStringField
      FieldName = 'Importador2'
      Size = 4
    end
    object q_paramRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object q_paramCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_paramDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object ds_param: TDataSource
    DataSet = q_param
    Left = 352
    Top = 32
  end
  object ds_t_param: TDataSource
    DataSet = t_paramsolnum
    Left = 272
    Top = 24
  end
  object q_num: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tipos_Numerario.Empresa, Tipos_Numerario.Filial, Tipos_Nu' +
        'merario.Codigo, Tipos_Numerario.Descricao, Tipos_Numerario.Plano' +
        '_contas'
      'FROM Tipos_Numerario'
      'WHERE (((Tipos_Numerario.Plano_contas)="NUM"))'
      'ORDER BY Tipos_Numerario.Descricao;')
    Left = 448
    Top = 16
    object q_numEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Empresa'
      Size = 4
    end
    object q_numFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Filial'
      Size = 4
    end
    object q_numCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
    object q_numDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
    object q_numPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Plano_contas'
      Size = 8
    end
  end
  object q_imp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Codigo, Importadores.Razao_Social, Importado' +
        'res.Cidade, Importadores.CNPJ_CPF_COMPLETO'
      'FROM Importadores'
      'WHERE (((Importadores.Codigo)<>:qimp))'
      'ORDER BY Importadores.Razao_Social, Importadores.Cidade;')
    Left = 520
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '2'
      end>
    object q_impCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object q_impRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object q_impCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      Size = 25
    end
    object q_impCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      Size = 14
    end
  end
  object ds_num: TDataSource
    DataSet = q_num
    Left = 464
    Top = 40
  end
  object ds_imp: TDataSource
    DataSet = q_imp
    Left = 536
    Top = 32
  end
end
