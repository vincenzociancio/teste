object F_prodesembaraco: TF_prodesembaraco
  Left = 23
  Top = 54
  Width = 753
  Height = 496
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Desembaraço de Processos'
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
  object p_processo1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 33
    Align = alTop
    Color = clTeal
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 12
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
      Top = 4
      Width = 65
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnChange = ME_nossarefChange
    end
  end
  object p_processo2: TPanel
    Left = 0
    Top = 33
    Width = 745
    Height = 436
    Align = alClient
    Color = clGray
    TabOrder = 1
    Visible = False
  end
  object q_processos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Código AS ' +
        'Processo, Processos.Data, Processos.Código_Cliente AS refcli, Im' +
        'portadores.[Razão Social] AS Cliente, TAB_TIPO_DECLARACAO.Descri' +
        'cao AS tipodecla, Tipos_de_Processos.DESCRICAO AS tipopro, Contr' +
        'atos.Descricao AS qcontrato, Locais_Inventario.Descricao AS qloc' +
        'al'
      
        'FROM (((((Parametros INNER JOIN Processos ON (Parametros.Empresa' +
        ' = Processos.Empresa) AND (Parametros.Filial = Processos.Filial)' +
        ') LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Em' +
        'presa) AND (Processos.Filial = Importadores.Filial) AND (Process' +
        'os.Importador = Importadores.Codigo)) LEFT JOIN Tipos_de_Process' +
        'os ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TAB_' +
        'TIPO_DECLARACAO ON Processos.Tipo_Declaração = TAB_TIPO_DECLARAC' +
        'AO.Codigo) LEFT JOIN Contratos ON (Processos.Empresa = Contratos' +
        '.Empresa) AND (Processos.Filial = Contratos.Filial) AND (Process' +
        'os.Importador = Contratos.Importador) AND (Processos.Contrato = ' +
        'Contratos.Contrato)) LEFT JOIN Locais_Inventario ON (Processos.E' +
        'mpresa = Locais_Inventario.Empresa) AND (Processos.Filial = Loca' +
        'is_Inventario.Filial) AND (Processos.Importador = Locais_Inventa' +
        'rio.Importador) AND (Processos.Contrato = Locais_Inventario.Cont' +
        'rato) AND (Processos.Local_Inventario = Locais_Inventario.Local)'
      'ORDER BY Processos.Código;')
    Left = 416
    Top = 51
    object q_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_processosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_processosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object q_processosrefcli: TStringField
      FieldName = 'refcli'
      Size = 30
    end
    object q_processosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object q_processostipodecla: TStringField
      FieldName = 'tipodecla'
      Size = 120
    end
    object q_processostipopro: TStringField
      FieldName = 'tipopro'
      Size = 35
    end
    object q_processosqcontrato: TStringField
      FieldName = 'qcontrato'
      Size = 50
    end
    object q_processosqlocal: TStringField
      FieldName = 'qlocal'
      Size = 250
    end
  end
  object ds_qprocessos: TDataSource
    DataSet = q_processos
    Left = 416
    Top = 80
  end
end
