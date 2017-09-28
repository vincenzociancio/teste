object f_PlaProcKoyo: Tf_PlaProcKoyo
  Left = 126
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Planilha de Processo da Koyo'
  ClientHeight = 207
  ClientWidth = 368
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 368
    Height = 207
    Align = alClient
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 1
    object L_dataini: TLabel
      Left = 203
      Top = 59
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
      Left = 89
      Top = 59
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
      Left = 97
      Top = 98
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
    object BitBtn1: TBitBtn
      Left = 150
      Top = 140
      Width = 78
      Height = 23
      Caption = 'Planilha Excel'
      ModalResult = 1
      TabOrder = 2
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object edtPerIni: TMaskEdit
      Left = 97
      Top = 72
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edtPerFin: TMaskEdit
      Left = 208
      Top = 72
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object pnlGerando: TPanel
    Left = 340
    Top = 12
    Width = 341
    Height = 182
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    Color = clSilver
    TabOrder = 0
    Visible = False
    object Label4: TLabel
      Left = 6
      Top = 6
      Width = 329
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
    object reInfo: TRichEdit
      Left = 11
      Top = 32
      Width = 318
      Height = 105
      Anchors = [akLeft, akTop, akRight, akBottom]
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
    end
    object BitBtn2: TBitBtn
      Left = 134
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
  object qrPlanilha: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Codigo, I.Razao_Social, PRO.Codigo, PRO.Codigo_Cliente,' +
        ' PRO.Tipo, CP.Agente, TVT.Codigo AS CodVia, TVT.Descricao AS Via' +
        ', PRO.Responsavel_Empresa, CP.Numeromaster, CP.Numerodoccarga, C' +
        'P.Embarcacao, T1.Razao_Social AS Cia, TDC.descricao AS DocChegad' +
        'a, CP.Data_Chegada_URF_Cheg, PRO.NR_DECLARACAO_IMP, PRO.DDE, PRO' +
        '.DT_REGISTRO_DI, C.CODIGO AS CodCanal, C.DESCRICAO AS Canal, PRO' +
        '.Fiscal, PRO.DT_DESEMBARACO, PRO.Data_liberacao, T2.Razao_Social' +
        ' AS Carregamento, CP.Frete_Prepaid, CP.Frete_Collect, CP.Frete_T' +
        'er_Nac, PTC2.Taxa_conversao AS TxFrete, CP.Valor_Seguro, PTC1.Ta' +
        'xa_conversao AS TxSeguro'
      
        'FROM (((((((((Importadores AS I INNER JOIN Processos AS PRO ON (' +
        'I.Codigo = PRO.Importador) AND (I.Filial = PRO.Filial) AND (I.Em' +
        'presa = PRO.Empresa)) LEFT JOIN Conhecimento_Processo AS CP ON (' +
        'PRO.Codigo = CP.Processo) AND (PRO.Filial = CP.Filial) AND (PRO.' +
        'Empresa = CP.Empresa)) LEFT JOIN TAB_VIA_TRANSPORTE AS TVT ON CP' +
        '.Via = TVT.Codigo) LEFT JOIN Transportadores AS T1 ON (CP.Transp' +
        'ortador = T1.Codigo) AND (CP.Filial = T1.Filial) AND (CP.Empresa' +
        ' = T1.Empresa)) LEFT JOIN Tipo_Doc_Chegada AS TDC ON CP.Tipomani' +
        'festo = TDC.codigo) LEFT JOIN Canais AS C ON PRO.Canal = C.CODIG' +
        'O) LEFT JOIN Processos_ALC AS PALC ON (PRO.Codigo = PALC.Process' +
        'o) AND (PRO.Filial = PALC.Filial) AND (PRO.Empresa = PALC.Empres' +
        'a)) LEFT JOIN Transportadores AS T2 ON (PALC.Transportador = T2.' +
        'Codigo) AND (PALC.Filial = T2.Filial) AND (PALC.Empresa = T2.Emp' +
        'resa)) LEFT JOIN Processos_Taxas_Conversao AS PTC2 ON (CP.Proces' +
        'so = PTC2.Processo) AND (CP.Moeda_Frete = PTC2.Moeda) AND (CP.Fi' +
        'lial = PTC2.Filial) AND (CP.Empresa = PTC2.Empresa)) LEFT JOIN P' +
        'rocessos_Taxas_Conversao AS PTC1 ON (CP.Moeda_Seguro = PTC1.Moed' +
        'a) AND (CP.Processo = PTC1.Processo) AND (CP.Filial = PTC1.Filia' +
        'l) AND (CP.Empresa = PTC1.Empresa)'
      
        'WHERE I.Empresa = :emp AND I.Filial = :filial AND PRO.Data Betwe' +
        'en :dtIni And :dtFin'
      'AND I.CNPJ_CPF_COMPLETO = '#39'02638940000136'#39
      'ORDER BY PRO.Data, PRO.Codigo')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'dtIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'dtFin'
        ParamType = ptUnknown
      end>
    object qrPlanilhaCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrPlanilhaRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrPlanilhaCodigo_1: TStringField
      FieldName = 'Codigo_1'
      FixedChar = True
      Size = 8
    end
    object qrPlanilhaCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
    object qrPlanilhaTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrPlanilhaAgente: TStringField
      FieldName = 'Agente'
      FixedChar = True
      Size = 30
    end
    object qrPlanilhaCodVia: TStringField
      FieldName = 'CodVia'
      FixedChar = True
      Size = 1
    end
    object qrPlanilhaVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 120
    end
    object qrPlanilhaResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object qrPlanilhaNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object qrPlanilhaNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object qrPlanilhaEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object qrPlanilhaCia: TStringField
      FieldName = 'Cia'
      FixedChar = True
      Size = 60
    end
    object qrPlanilhaDocChegada: TStringField
      FieldName = 'DocChegada'
      FixedChar = True
      Size = 25
    end
    object qrPlanilhaData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrPlanilhaNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object qrPlanilhaDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 30
    end
    object qrPlanilhaDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object qrPlanilhaCodCanal: TStringField
      FieldName = 'CodCanal'
      FixedChar = True
      Size = 1
    end
    object qrPlanilhaCanal: TStringField
      FieldName = 'Canal'
      FixedChar = True
      Size = 50
    end
    object qrPlanilhaFiscal: TStringField
      FieldName = 'Fiscal'
      FixedChar = True
    end
    object qrPlanilhaDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object qrPlanilhaData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object qrPlanilhaCarregamento: TStringField
      FieldName = 'Carregamento'
      FixedChar = True
      Size = 60
    end
    object qrPlanilhaFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object qrPlanilhaFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object qrPlanilhaFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object qrPlanilhaTxFrete: TFloatField
      FieldName = 'TxFrete'
    end
    object qrPlanilhaValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object qrPlanilhaTxSeguro: TFloatField
      FieldName = 'TxSeguro'
    end
  end
  object qrFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo'
      'FROM Faturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 104
    Top = 8
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrFaturasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      Size = 30
    end
  end
  object qrNumerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT DISTINCT Numerario, Valor_Registrado'
      'FROM Numerarios_Processos'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 136
    Top = 8
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrNumerariosNumerario: TStringField
      FieldName = 'Numerario'
      Size = 4
    end
    object qrNumerariosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
  end
  object qrTransport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT DISTINCT E.Razao_Social'
      
        'FROM Faturas AS F INNER JOIN Exportadores AS E ON (F.Exportador ' +
        '= [E].Codigo) AND (F.Filial = [E].Filial) AND (F.Empresa = [E].E' +
        'mpresa)'
      
        'WHERE F.Empresa = :emp AND F.Filial = :filial AND F.Processo = :' +
        'proc')
    Left = 72
    Top = 8
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrTransportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
  end
  object qrParametros: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 8
    Top = 8
    object qrParametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros.Empresa'
      Size = 4
    end
    object qrParametrosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros.Filial'
      Size = 4
    end
  end
end
