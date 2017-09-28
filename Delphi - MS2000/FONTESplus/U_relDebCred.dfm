object F_relDebCred: TF_relDebCred
  Left = 219
  Top = 164
  Width = 443
  Height = 328
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relatório de Débito e Crédito'
  Color = clNavy
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
    Width = 435
    Height = 301
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 0
    object L_dataini: TLabel
      Left = 235
      Top = 179
      Width = 77
      Height = 13
      Caption = 'Período Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 121
      Top = 179
      Width = 84
      Height = 13
      Caption = 'Período Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 129
      Top = 218
      Width = 176
      Height = 13
      Caption = '(Em branco mostra visão geral)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 82
      Top = 41
      Width = 40
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 80
      Top = 120
      Width = 117
      Height = 13
      Caption = 'Locais de Inventário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 80
      Top = 80
      Width = 55
      Height = 13
      Caption = 'Contratos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 182
      Top = 248
      Width = 78
      Height = 23
      Caption = 'Planilha Excel'
      ModalResult = 1
      TabOrder = 5
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object me_dini: TMaskEdit
      Left = 129
      Top = 192
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
    end
    object me_dfin: TMaskEdit
      Left = 240
      Top = 192
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object dblcbCli: TDBLookupComboBox
      Left = 80
      Top = 56
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListFieldIndex = 1
      ListSource = dsImport
      TabOrder = 6
    end
    object cbCli: TCheckBox
      Left = 16
      Top = 58
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = cbCliClick
    end
    object dblcbcon: TDBLookupComboBox
      Left = 80
      Top = 96
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Contrato'
      ListField = 'Descricao'
      ListSource = ds_contratos
      TabOrder = 7
    end
    object cbcon: TCheckBox
      Left = 16
      Top = 98
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = cbconClick
    end
    object cbloc: TCheckBox
      Left = 16
      Top = 138
      Width = 55
      Height = 17
      Caption = 'Todos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = cblocClick
    end
    object dblcbloc: TDBLookupComboBox
      Left = 80
      Top = 136
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Contrato'
      ListField = 'Descricao'
      ListSource = ds_locais
      TabOrder = 8
    end
    object pnlGerando: TPanel
      Left = 165
      Top = 59
      Width = 405
      Height = 182
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 5
      BorderWidth = 1
      Color = clSilver
      TabOrder = 9
      Visible = False
      object Label4: TLabel
        Left = 6
        Top = 6
        Width = 393
        Height = 20
        Align = alTop
        Alignment = taCenter
        Caption = 'Gerando Planilha . . . '
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object rtPlanilha: TRichEdit
        Left = 11
        Top = 32
        Width = 382
        Height = 105
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
        OnChange = rtPlanilhaChange
      end
      object BitBtn2: TBitBtn
        Left = 166
        Top = 144
        Width = 75
        Height = 25
        Caption = '&OK'
        Enabled = False
        TabOrder = 1
        OnClick = BitBtn2Click
        Kind = bkOK
      end
    end
    object Edit1: TEdit
      Left = 215
      Top = 5
      Width = 55
      Height = 21
      TabOrder = 10
    end
    object cbprocesso: TCheckBox
      Left = 140
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = cbprocessoClick
    end
  end
  object q_Import: TQuery
    AfterScroll = q_ImportAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Empresa, I.Filial, I.Codigo, I.Razao_Social, I.CNPJ_CPF' +
        '_COMPLETO, I.CGC_CPF'
      'FROM Importadores AS I'
      'WHERE I.Empresa Like :emp'
      'AND I.Filial Like :fil'
      'ORDER BY I.Razao_Social'
      '')
    Left = 48
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
    object q_ImportEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_ImportFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      FixedChar = True
      Size = 4
    end
    object q_ImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object q_ImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_ImportCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object q_ImportCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Importadores.CGC_CPF'
      FixedChar = True
      Size = 10
    end
  end
  object dsImport: TDataSource
    DataSet = q_Import
    Left = 56
    Top = 8
  end
  object ds_locais: TDataSource
    DataSet = qrLocais
    Left = 136
    Top = 8
  end
  object ds_contratos: TDataSource
    AutoEdit = False
    DataSet = qrContratos
    Left = 96
    Top = 8
  end
  object qrLocais: TQuery
    AfterScroll = qrLocaisAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT LI.Empresa, LI.Filial, LI.Contrato, LI.Importador, LI.Des' +
        'cricao, LI.Local'
      'FROM Locais_Inventario AS LI'
      'WHERE LI.Empresa Like :emp '
      'AND LI.Filial Like :fil '
      'AND LI.Importador Like :imp'
      'AND LI.Contrato Like :con')
    Left = 128
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
        Name = 'imp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'con'
        ParamType = ptUnknown
      end>
    object qrLocaisEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Empresa'
      Size = 4
    end
    object qrLocaisFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Filial'
      Size = 4
    end
    object qrLocaisContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Contrato'
      Size = 8
    end
    object qrLocaisImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Importador'
      Size = 4
    end
    object qrLocaisDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Descricao'
      Size = 250
    end
    object qrLocaisLocal: TStringField
      FieldName = 'Local'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Local'
      Size = 4
    end
  end
  object qrContratos: TQuery
    AfterScroll = qrContratosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Contratos.Empresa, Contratos.Filial, Contratos.Importador' +
        ', Contratos.Contrato, Contratos.Descricao, Contratos.Vigencia_in' +
        'icial, Contratos.Vigencia_final, Contratos.Tipo, Contratos.Data_' +
        'Baixa, Contratos.Data_prorrogacao'
      'FROM Contratos'
      'WHERE Contratos.Empresa Like :emp'
      'AND Contratos.Filial Like :fil'
      'AND Contratos.Importador Like :imp')
    Left = 88
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
        Name = 'imp'
        ParamType = ptUnknown
      end>
    object qrContratosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Contratos.Empresa'
      Size = 4
    end
    object qrContratosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Contratos.Filial'
      Size = 4
    end
    object qrContratosImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Contratos.Importador'
      Size = 4
    end
    object qrContratosContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'DBNMSCOMEX.Contratos.Contrato'
      Size = 8
    end
    object qrContratosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contratos.Descricao'
      Size = 50
    end
    object qrContratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
      Origin = 'DBNMSCOMEX.Contratos.Vigencia_inicial'
    end
    object qrContratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
      Origin = 'DBNMSCOMEX.Contratos.Vigencia_final'
    end
    object qrContratosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Contratos.Tipo'
      Size = 1
    end
    object qrContratosData_Baixa: TDateTimeField
      FieldName = 'Data_Baixa'
      Origin = 'DBNMSCOMEX.Contratos.Data_Baixa'
    end
    object qrContratosData_prorrogacao: TDateTimeField
      FieldName = 'Data_prorrogacao'
      Origin = 'DBNMSCOMEX.Contratos.Data_prorrogacao'
    end
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 16
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
  object qrPlanilha: TQuery
    AfterScroll = qrPlanilhaAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Codigo AS CodMS, P.Data, P.Codigo_Cliente AS CodCli, P.' +
        'Local_Inventario, P.Contrato, I.Codigo'
      
        'FROM Importadores AS I LEFT JOIN ((Processos AS P LEFT JOIN Nume' +
        'rarios_Processos AS NP ON (P.Codigo = NP.Processo) AND (P.Filial' +
        ' = NP.Filial) AND (P.Empresa = NP.Empresa)) LEFT JOIN Creditos_P' +
        'rocessos AS CP ON (P.Codigo = CP.Processo) AND (P.Filial = CP.Fi' +
        'lial) AND (P.Empresa = CP.Empresa)) ON (I.Codigo = P.Importador)' +
        ' AND (I.Filial = P.Filial) AND (I.Empresa = P.Empresa)'
      'WHERE I.[CNPJ_CPF_COMPLETO] Like :cpf '
      'AND ( (NP.Data_Registro BETWEEN :perini AND :perfin) '
      
        '          OR (CP.Data_Credito BETWEEN :perini AND :perfin) ) And' +
        ' I.Empresa Like :emp And I.Filial Like :fil '
      ''
      ''
      ''
      
        'GROUP BY P.Codigo, P.Data, P.Codigo_Cliente, P.Local_Inventario,' +
        ' P.Contrato, I.Codigo'
      'ORDER BY P.Contrato, P.Local_Inventario, P.Data'
      '')
    Left = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'cpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'perini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'perfin'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'perini'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'perfin'
        ParamType = ptUnknown
      end
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
    object qrPlanilhaCodMS: TStringField
      FieldName = 'CodMS'
      Size = 8
    end
    object qrPlanilhaData: TDateTimeField
      FieldName = 'Data'
    end
    object qrPlanilhaCodCli: TStringField
      FieldName = 'CodCli'
      Size = 30
    end
    object qrPlanilhaLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 255
    end
    object qrPlanilhaContrato: TStringField
      FieldName = 'Contrato'
      Size = 255
    end
    object qrPlanilhaCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
  end
  object qrDeb: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Empresa, I.Filial, N.Data_Registro, N.Detalhe, P.Codigo' +
        ', T.Descricao, N.Valor_Registrado, I.CNPJ_CPF_COMPLETO, P.Codigo' +
        ', I.CGC_CPF'
      
        'FROM ((Importadores AS I LEFT JOIN Processos AS P ON (I.Codigo =' +
        ' P.Importador) AND (I.Filial = P.Filial) AND (I.Empresa = P.Empr' +
        'esa)) LEFT JOIN Numerarios_Processos AS N ON (P.Codigo = N.Proce' +
        'sso) AND (P.Filial = N.Filial) AND (P.Empresa = N.Empresa)) LEFT' +
        ' JOIN Tipos_Numerario AS T ON (N.Numerario = T.Codigo) AND (N.Fi' +
        'lial = T.Filial) AND (N.Empresa = T.Empresa)'
      'WHERE I.[CNPJ_CPF_COMPLETO] Like :cnpj '
      'AND P.Codigo Like :cod '
      'AND N.Data_Registro Is Not Null'
      ''
      ''
      ''
      'ORDER BY N.Data_Registro, P.Codigo ')
    Left = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrDebData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object qrDebDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrDebValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
  end
  object qrCred: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Empresa, I.Filial, I.[CNPJ_CPF_COMPLETO] , I.CGC_CPF, C' +
        'P.Data_Credito, P.Codigo, T.Descricao, CP.Valor'
      
        'FROM ((Importadores AS I LEFT JOIN Processos AS P ON I.Empresa =' +
        ' P.Empresa AND I.Filial = P.Filial'
      
        'AND I.Codigo = P.Importador) LEFT JOIN Creditos_Processos AS CP ' +
        'ON P.Codigo = CP.Processo'
      
        'AND P.Filial = CP.Filial AND P.Empresa = CP.Empresa) LEFT JOIN T' +
        'ipos_creditos AS T'
      
        'ON CP.Credito = T.Codigo AND CP.Filial = T.Filial AND CP.Empresa' +
        ' = T.Empresa '
      'WHERE I.CNPJ_CPF_COMPLETO Like :cnpj'
      'AND P.Codigo Like :cod '
      'AND CP.Data_Credito Is Not Null'
      ''
      ''
      ''
      'ORDER BY CP.Data_Credito, P.Codigo')
    Left = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrCredData_Credito: TDateTimeField
      FieldName = 'Data_Credito'
    end
    object qrCredDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrCredValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object qrDescLoc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Local, Descricao, Contrato'
      'FROM Locais_Inventario'
      'WHERE Local Like :loc '
      'AND Contrato Like :cont'
      ' ')
    Left = 16
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'loc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptUnknown
      end>
    object qrDescLocLocal: TStringField
      FieldName = 'Local'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Local'
      Size = 4
    end
    object qrDescLocDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Locais_Inventario.Descricao'
      Size = 250
    end
  end
  object qrDescCon: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Contrato, Descricao, Importador, Vigencia_inicial, Vigenc' +
        'ia_final, Data_Baixa, Data_prorrogacao'
      'FROM Contratos'
      'WHERE Contrato Like :con AND Importador Like :imp')
    Left = 56
    Top = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'con'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end>
    object qrDescConContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'DBNMSCOMEX.Contratos.Contrato'
      Size = 8
    end
    object qrDescConDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contratos.Descricao'
      Size = 50
    end
    object qrDescConImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Contratos.Importador'
      Size = 4
    end
    object qrDescConVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
      Origin = 'DBNMSCOMEX.Contratos.Vigencia_inicial'
    end
    object qrDescConVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
      Origin = 'DBNMSCOMEX.Contratos.Vigencia_final'
    end
    object qrDescConData_Baixa: TDateTimeField
      FieldName = 'Data_Baixa'
      Origin = 'DBNMSCOMEX.Contratos.Data_Baixa'
    end
    object qrDescConData_prorrogacao: TDateTimeField
      FieldName = 'Data_prorrogacao'
      Origin = 'DBNMSCOMEX.Contratos.Data_prorrogacao'
    end
  end
end
