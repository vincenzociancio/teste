object f_prodocinstru: Tf_prodocinstru
  Left = 330
  Top = 149
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Documentos de Instrução'
  ClientHeight = 313
  ClientWidth = 699
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label14: TLabel
      Left = 8
      Top = 12
      Width = 135
      Height = 13
      Caption = 'Digite o nº do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l_cliente: TLabel
      Left = 232
      Top = 10
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object me_nossaref: TMaskEdit
      Left = 148
      Top = 8
      Width = 77
      Height = 21
      TabOrder = 0
      OnChange = me_nossarefChange
      OnKeyPress = me_nossarefKeyPress
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 699
    Height = 280
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 697
      Height = 208
      Align = alTop
      DataSource = dsprodocs
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo de Documento'
          Width = 492
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR_DCTO_INSTRUCAO'
          Title.Alignment = taCenter
          Title.Caption = 'Nº do Documento'
          Width = 165
          Visible = True
        end>
    end
    object DBLC_TIPO: TDBLookupComboBox
      Left = 5
      Top = 215
      Width = 492
      Height = 21
      DataField = 'CD_TIPO_DCTO_INSTR'
      DataSource = dstprodocs
      KeyField = 'CODIGO'
      ListField = 'Descricao'
      ListSource = ds_tipos
      TabOrder = 1
      OnExit = b_gravaClick
    end
    object b_novo: TBitBtn
      Left = 240
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
      OnClick = b_novoClick
    end
    object b_grava: TBitBtn
      Left = 320
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Grava'
      TabOrder = 3
      OnClick = b_gravaClick
    end
    object b_exclui: TBitBtn
      Left = 398
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Exclui'
      TabOrder = 4
      OnClick = b_excluiClick
    end
    object DBEdit2: TDBEdit
      Left = 506
      Top = 214
      Width = 165
      Height = 21
      DataField = 'NR_DCTO_INSTRUCAO'
      DataSource = dstprodocs
      TabOrder = 5
      OnExit = b_gravaClick
    end
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Tipo, Processos.Codigo_Clien' +
        'te AS refcli, Importadores.Razao_Social AS Cliente, TAB_TIPO_DEC' +
        'LARACAO.Descricao AS tipodecla, Tipos_de_Processos.DESCRICAO AS ' +
        'tipopro, Contratos.Descricao AS qcontrato, Locais_Inventario.Des' +
        'cricao AS qlocal, Processos.Importador, Processos.responsavel_em' +
        'presa as qresp, Importadores.CGC_CPF, Importadores.CNPJ_CPF_COMP' +
        'LETO AS qcnpj, Processos.NR_DECLARACAO_IMP as qdi, Processos.Fec' +
        'hado, Importadores.ATIVO, Processos.Responsavel_empresa,  Proces' +
        'sos.Responsavel_empresac '
      
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
      'ORDER BY Processos.Codigo;')
    Left = 232
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
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrProcessosqresp: TStringField
      FieldName = 'qresp'
      Size = 10
    end
    object qrProcessosCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 10
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      Size = 14
    end
    object qrProcessosqdi: TStringField
      FieldName = 'qdi'
      Size = 10
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
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 232
    Top = 24
  end
  object q_tipos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT TAB_DOC_INSTRUCAO_DESPACHO.CODIGO, TAB_DOC_INSTRUCAO_DESP' +
        'ACHO.DESCRICAO'
      'FROM TAB_DOC_INSTRUCAO_DESPACHO'
      'ORDER BY TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO;')
    Left = 304
    object q_tiposCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_DOC_INSTRUCAO_DESPACHO.CODIGO'
      Size = 2
    end
    object q_tiposDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO'
      Size = 120
    end
  end
  object ds_tipos: TDataSource
    DataSet = q_tipos
    Left = 304
    Top = 24
  end
  object q_prodocs: TQuery
    AfterOpen = q_prodocsAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos_Docs_Instrucao.Empresa, Processos_Docs_Instruca' +
        'o.Filial, Processos_Docs_Instrucao.Processo, Processos_Docs_Inst' +
        'rucao.REG, TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO, Processos_Docs_' +
        'Instrucao.CD_TIPO_DCTO_INSTR, Processos_Docs_Instrucao.NR_DCTO_I' +
        'NSTRUCAO'
      
        'FROM Processos_Docs_Instrucao LEFT JOIN TAB_DOC_INSTRUCAO_DESPAC' +
        'HO ON Processos_Docs_Instrucao.CD_TIPO_DCTO_INSTR = TAB_DOC_INST' +
        'RUCAO_DESPACHO.CODIGO'
      'WHERE (((Processos_Docs_Instrucao.Processo)=:qpro))'
      'ORDER BY TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO;')
    Left = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02348/07'
      end>
    object q_prodocsEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_prodocsFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.Filial'
      FixedChar = True
      Size = 4
    end
    object q_prodocsProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.Processo'
      FixedChar = True
      Size = 8
    end
    object q_prodocsREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.REG'
    end
    object q_prodocsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_prodocsCD_TIPO_DCTO_INSTR: TStringField
      FieldName = 'CD_TIPO_DCTO_INSTR'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.CD_TIPO_DCTO_INSTR'
      FixedChar = True
      Size = 2
    end
    object q_prodocsNR_DCTO_INSTRUCAO: TStringField
      FieldName = 'NR_DCTO_INSTRUCAO'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.NR_DCTO_INSTRUCAO'
      FixedChar = True
      Size = 25
    end
  end
  object dsprodocs: TDataSource
    DataSet = q_prodocs
    Left = 264
    Top = 24
  end
  object t_prodocs: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;REG'
    MasterFields = 'Empresa;Filial;REG'
    MasterSource = dsprodocs
    TableName = 'Processos_Docs_Instrucao'
    Left = 264
    Top = 57
    object t_prodocsEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_prodocsFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_prodocsProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_prodocsREG: TAutoIncField
      FieldName = 'REG'
    end
    object t_prodocsNR_DCTO_INSTRUCAO: TStringField
      FieldName = 'NR_DCTO_INSTRUCAO'
      FixedChar = True
      Size = 25
    end
    object t_prodocsCD_TIPO_DCTO_INSTR: TStringField
      FieldName = 'CD_TIPO_DCTO_INSTR'
      FixedChar = True
      Size = 2
    end
    object t_prodocsNM_DCTO_INSTRUCAO: TStringField
      FieldName = 'NM_DCTO_INSTRUCAO'
      FixedChar = True
      Size = 60
    end
  end
  object dstprodocs: TDataSource
    DataSet = t_prodocs
    Left = 264
    Top = 81
  end
  object q_docsinstru: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, "01" AS cod_fat, "FATURA COM' +
        'ERCIAL" AS tipo_doc01, Tributacao_Item_Fatura.Fatura, "02" AS co' +
        'd_co, "CERTIFICADO DE ORIGEM" AS tipo_doc02, Tributacao_Item_Fat' +
        'ura.Certificado_Origem'
      
        'FROM Processos INNER JOIN Tributacao_Item_Fatura ON (Processos.E' +
        'mpresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filial =' +
        ' Tributacao_Item_Fatura.Filial) AND (Processos.Codigo = Tributac' +
        'ao_Item_Fatura.Processo)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Fat' +
        'ura, Tributacao_Item_Fatura.Certificado_Origem;')
    UpdateMode = upWhereChanged
    Left = 368
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_docsinstruNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_docsinstrucod_fat: TStringField
      FieldName = 'cod_fat'
      Size = 255
    end
    object q_docsinstrutipo_doc01: TStringField
      FieldName = 'tipo_doc01'
      Size = 255
    end
    object q_docsinstruFatura: TStringField
      FieldName = 'Fatura'
      Size = 30
    end
    object q_docsinstrucod_co: TStringField
      FieldName = 'cod_co'
      Size = 255
    end
    object q_docsinstrutipo_doc02: TStringField
      FieldName = 'tipo_doc02'
      Size = 255
    end
    object q_docsinstruCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
  end
  object q_prodocs_insert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Processos_Docs_Instrucao'
      '(Empresa, Filial, Processo)'
      'VALUES (:p1,:p2,:p3)')
    Left = 264
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        ParamType = ptUnknown
      end>
  end
  object q_prodocsDelete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from Processos_Docs_Instrucao'
      'where Processo = :p1'
      'and REG = :p2')
    Left = 296
    Top = 121
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end>
  end
end
