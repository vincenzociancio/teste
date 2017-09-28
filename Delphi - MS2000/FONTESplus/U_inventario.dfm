object f_inventario: Tf_inventario
  Left = 15
  Top = 83
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Inventários'
  ClientHeight = 404
  ClientWidth = 763
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
  object l_atualiza: TLabel
    Left = 88
    Top = 384
    Width = 3
    Height = 13
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 46
    Align = alTop
    Color = clTeal
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 50
      Height = 13
      Caption = 'Importador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 291
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Contrato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 524
      Top = 2
      Width = 91
      Height = 13
      Caption = 'Local de Inventário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 17
      Width = 281
      Height = 19
      DataSource = ds_importadores
      Options = [dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Razão Social'
          Width = 250
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 292
      Top = 17
      Width = 229
      Height = 19
      DataSource = ds_contratos
      Options = [dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 250
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 524
      Top = 17
      Width = 229
      Height = 19
      DataSource = ds_locais
      Options = [dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 250
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 46
    Width = 763
    Height = 24
    Align = alTop
    Caption = 'Inventário'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBG_inventario: TDBGrid
    Left = 0
    Top = 70
    Width = 763
    Height = 143
    Align = alTop
    DataSource = ds_inventario
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_serie'
        Title.Caption = 'Número de Série'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descrição'
        Width = 475
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 213
    Width = 763
    Height = 26
    Align = alTop
    Caption = 'Movimentações por Item de Inventário'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBG_movporitem: TDBGrid
    Left = 0
    Top = 239
    Width = 763
    Height = 133
    Align = alTop
    DataSource = ds_qmovporitem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Data_movimentacao'
        Title.Caption = 'Data'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADICAO'
        Title.Caption = 'Adição'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Seq_Adicao'
        Title.Caption = 'Seq'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RE'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo_ADM'
        Title.Caption = 'Processo Adm.'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Protocolo_Processo_ADM'
        Title.Caption = 'Protocolo Proc. Adm.'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fatura'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Forma'
        Title.Caption = 'Forma de Admissão / Extinção'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tipodecl'
        Title.Caption = 'Tipo de Declaração'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipopro'
        Title.Caption = 'Tipo de Processo'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Importador_Transf'
        Title.Caption = 'Importador Transf.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contrato_Transf'
        Title.Caption = 'Contrato Transf.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local_Transf'
        Title.Caption = 'Local Transf.'
        Visible = True
      end>
  end
  object b_fecha: TBitBtn
    Left = 684
    Top = 378
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 5
    OnClick = b_fechaClick
    Kind = bkCancel
  end
  object b_atualiza: TBitBtn
    Left = 4
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Atualiza'
    TabOrder = 6
    OnClick = b_atualizaClick
    Kind = bkOK
  end
  object T_parametros: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 140
    Top = 40
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 148
    Top = 44
  end
  object T_importadores: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Importadores'
    Left = 180
    Top = 40
    object T_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_importadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_importadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_importadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_importadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_importadoresTipoImportador: TStringField
      FieldName = 'Tipo Importador'
      Size = 1
    end
    object T_importadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_importadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_importadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_importadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_importadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_importadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
    object T_importadoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object T_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object T_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
  end
  object ds_importadores: TDataSource
    DataSet = T_importadores
    Left = 180
    Top = 44
  end
  object T_contratos: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_importadores
    TableName = 'Contratos'
    Left = 212
    Top = 40
    object T_contratosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_contratosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_contratosImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_contratosContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_contratosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_contratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object T_contratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
  end
  object ds_contratos: TDataSource
    DataSet = T_contratos
    Left = 220
    Top = 44
  end
  object T_locais: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato'
    MasterFields = 'Empresa;Filial;Importador;Contrato'
    MasterSource = ds_contratos
    TableName = 'Locais_Inventario'
    Left = 256
    Top = 40
    object T_locaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_locaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_locaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_locaisContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_locaisLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_locaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_locaisTipo_local: TStringField
      FieldName = 'Tipo_local'
      Size = 4
    end
  end
  object ds_locais: TDataSource
    DataSet = T_locais
    Left = 260
    Top = 44
  end
  object T_inventario: TTable
    Active = True
    AfterScroll = T_inventarioAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Local'
    MasterFields = 'Empresa;Filial;Importador;Contrato;Local'
    MasterSource = ds_locais
    TableName = 'Inventario'
    Left = 296
    Top = 38
    object T_inventarioEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_inventarioFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_inventarioImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_inventarioContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_inventarioLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_inventarioProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 15
    end
    object T_inventarioNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_inventarioSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_inventarioDescrio: TStringField
      FieldName = 'Descrição'
      Size = 120
    end
  end
  object ds_inventario: TDataSource
    DataSet = T_inventario
    Left = 300
    Top = 44
  end
  object Q_atumovinvent: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Importador' +
        ', Processos.Contrato, Processos.Local_Inventario, Processos.Tipo' +
        '_Declaração, Processos.Código, Processos.NR_DECL_IMP_MICRO, Proc' +
        'essos.NR_DECLARACAO_IMP, Tributacao_Item_Fatura.fatura as qfatur' +
        'a,Tributacao_Item_Fatura.Adicao, Tributacao_Item_Fatura.Seq_Adic' +
        'ao, Processos.DT_REGISTRO_DI, ItensFaturas.Produto, ItensFaturas' +
        '.Numero_serie, Sum(Tributacao_Item_Fatura.Quantidade) AS SomaDeQ' +
        'uantidade, Processos.Tipo_Declaração, Processos.Tipo, Tributacao' +
        '_Item_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Regime' +
        '_Tributacao_IPI'
      
        'FROM (Processos INNER JOIN ItensFaturas ON (Processos.Código = I' +
        'tensFaturas.Processo) AND (Processos.Filial = ItensFaturas.Filia' +
        'l) AND (Processos.Empresa = ItensFaturas.Empresa)) INNER JOIN Tr' +
        'ibutacao_Item_Fatura ON (ItensFaturas.Sequencial = Tributacao_It' +
        'em_Fatura.Sequencial_Item) AND (ItensFaturas.Fatura = Tributacao' +
        '_Item_Fatura.Fatura) AND (ItensFaturas.Processo = Tributacao_Ite' +
        'm_Fatura.Processo) AND (ItensFaturas.Filial = Tributacao_Item_Fa' +
        'tura.Filial) AND (ItensFaturas.Empresa = Tributacao_Item_Fatura.' +
        'Empresa)'
      
        'GROUP BY Processos.Empresa, Processos.Filial, Processos.Importad' +
        'or, Processos.Contrato, Processos.Local_Inventario, Processos.Ti' +
        'po_Declaração, Processos.Código, Processos.NR_DECL_IMP_MICRO, Pr' +
        'ocessos.NR_DECLARACAO_IMP,Tributacao_Item_Fatura.fatura, Tributa' +
        'cao_Item_Fatura.Adicao, Tributacao_Item_Fatura.Seq_Adicao, Proce' +
        'ssos.DT_REGISTRO_DI, ItensFaturas.Produto, ItensFaturas.Numero_s' +
        'erie, Processos.Tipo_Declaração, Processos.Tipo, Tributacao_Item' +
        '_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Regime_Trib' +
        'utacao_IPI'
      
        'HAVING (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:' +
        'Filial) AND ((Processos.Importador)=:Importador) AND ((Processos' +
        '.Contrato)=:Contrato) AND ((Processos.Local_Inventario)=:Local) ' +
        'AND ((Processos.Tipo_Declaração)="12" Or (Processos.Tipo_Declara' +
        'ção)="05") AND ((Processos.NR_DECLARACAO_IMP)<>'#39#39'));')
    Left = 373
    Top = 37
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
        Name = 'Importador'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Contrato'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Local'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_atumovinventEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object Q_atumovinventFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object Q_atumovinventImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object Q_atumovinventContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object Q_atumovinventLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object Q_atumovinventExpr1005: TStringField
      FieldName = 'Expr1005'
      Size = 2
    end
    object Q_atumovinventCdigo: TStringField
      FieldName = 'Código'
      Size = 8
    end
    object Q_atumovinventNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_atumovinventNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object Q_atumovinventAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object Q_atumovinventSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object Q_atumovinventDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object Q_atumovinventProduto: TStringField
      FieldName = 'Produto'
      Size = 15
    end
    object Q_atumovinventNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object Q_atumovinventSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object Q_atumovinventTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object Q_atumovinventTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object Q_atumovinventRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object Q_atumovinventRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object Q_atumovinventqfatura: TStringField
      FieldName = 'qfatura'
      Size = 15
    end
  end
  object ds_atumovinvent: TDataSource
    DataSet = Q_atumovinvent
    Left = 376
    Top = 44
  end
  object DS_produtos: TDataSource
    DataSet = T_produtos
    Left = 548
    Top = 40
  end
  object T_produtos: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    TableName = 'Produtos'
    Left = 564
    Top = 52
    object T_produtosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_produtosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_produtosCdigo: TStringField
      FieldName = 'Código'
      Size = 15
    end
    object T_produtosDescrio: TStringField
      FieldName = 'Descrição'
      Size = 120
    end
    object T_produtosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object T_produtosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_produtosFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object T_produtosUnidade: TStringField
      FieldName = 'Unidade'
      Size = 4
    end
    object T_produtosPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object T_produtosValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object T_produtosMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
  end
  object T_inv: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Local;Produto;Numero_serie'
    TableName = 'Inventario'
    Left = 440
    Top = 40
    object T_invEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_invFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_invImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_invContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_invLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_invProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 15
    end
    object T_invNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_invSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_invDescrio: TStringField
      FieldName = 'Descrição'
      Size = 120
    end
  end
  object ds_inv: TDataSource
    DataSet = T_inv
    Left = 460
    Top = 52
  end
  object T_movinv: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 
      'Importador;Contrato;Local;Produto;Numero_serie;Processo;Fatura;D' +
      'I;ADICAO;Seq_Adicao'
    TableName = 'Movimentacao_Inventario'
    Left = 500
    Top = 40
    object T_movinvMovimento: TAutoIncField
      FieldName = 'Movimento'
    end
    object T_movinvEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_movinvFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_movinvImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_movinvContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_movinvLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_movinvProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 15
    end
    object T_movinvNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_movinvProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object T_movinvDI: TStringField
      FieldName = 'DI'
      Size = 10
    end
    object T_movinvADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 3
    end
    object T_movinvSeq_Adicao: TStringField
      FieldName = 'Seq_Adicao'
      Size = 2
    end
    object T_movinvData_movimentacao: TDateTimeField
      FieldName = 'Data_movimentacao'
    end
    object T_movinvDDE: TStringField
      FieldName = 'DDE'
      Size = 11
    end
    object T_movinvRE: TStringField
      FieldName = 'RE'
      Size = 12
    end
    object T_movinvProcesso_ADM: TStringField
      FieldName = 'Processo_ADM'
    end
    object T_movinvProtocolo_Processo_ADM: TStringField
      FieldName = 'Protocolo_Processo_ADM'
    end
    object T_movinvFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object T_movinvImportador_Transf: TStringField
      FieldName = 'Importador_Transf'
      Size = 4
    end
    object T_movinvContrato_Transf: TStringField
      FieldName = 'Contrato_Transf'
      Size = 8
    end
    object T_movinvLocal_Transf: TStringField
      FieldName = 'Local_Transf'
      Size = 4
    end
    object T_movinvTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object T_movinvForma_Admissao: TStringField
      FieldName = 'Forma_Admissao'
      Size = 2
    end
    object T_movinvTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object T_movinvQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_movinvSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object ds_movinv: TDataSource
    DataSet = T_movinv
    Left = 508
    Top = 48
  end
  object q_movporitem: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Inventario.Data_movimentacao, Movimentacao_I' +
        'nventario.DI, Movimentacao_Inventario.ADICAO, Movimentacao_Inven' +
        'tario.Seq_Adicao, Movimentacao_Inventario.DDE, Movimentacao_Inve' +
        'ntario.RE, Movimentacao_Inventario.Processo_ADM, Movimentacao_In' +
        'ventario.Protocolo_Processo_ADM, Movimentacao_Inventario.Fatura,' +
        ' Movimentacao_Inventario.Quantidade, Forma_Admissao.Descricao AS' +
        ' Forma, TAB_TIPO_DECLARACAO.Descricao AS Tipodecl, Movimentacao_' +
        'Inventario.Processo, Tipos_de_Processos.DESCRICAO AS tipopro, Mo' +
        'vimentacao_Inventario.Importador_Transf, Movimentacao_Inventario' +
        '.Contrato_Transf, Movimentacao_Inventario.Local_Transf'
      
        'FROM ((Movimentacao_Inventario LEFT JOIN Forma_Admissao ON Movim' +
        'entacao_Inventario.Forma_Admissao = Forma_Admissao.Codigo) LEFT ' +
        'JOIN TAB_TIPO_DECLARACAO ON Movimentacao_Inventario.Tipo_Declara' +
        'ção = TAB_TIPO_DECLARACAO.Codigo) LEFT JOIN Tipos_de_Processos O' +
        'N Movimentacao_Inventario.Tipo = Tipos_de_Processos.CODIGO'
      
        'WHERE (((Movimentacao_Inventario.Empresa)=:empresa) AND ((Movime' +
        'ntacao_Inventario.Filial)=:filial) AND ((Movimentacao_Inventario' +
        '.Importador)=:imp) AND ((Movimentacao_Inventario.Contrato)=:cont' +
        'r) AND ((Movimentacao_Inventario.Local)=:loc) AND ((Movimentacao' +
        '_Inventario.Produto) =:pro) AND ((Movimentacao_Inventario.Numero' +
        '_serie)=:nserie))'
      
        'GROUP BY Movimentacao_Inventario.Data_movimentacao, Movimentacao' +
        '_Inventario.DI, Movimentacao_Inventario.ADICAO, Movimentacao_Inv' +
        'entario.Seq_Adicao, Movimentacao_Inventario.DDE, Movimentacao_In' +
        'ventario.RE, Movimentacao_Inventario.Processo_ADM, Movimentacao_' +
        'Inventario.Protocolo_Processo_ADM, Movimentacao_Inventario.Fatur' +
        'a, Movimentacao_Inventario.Quantidade, Forma_Admissao.Descricao,' +
        ' TAB_TIPO_DECLARACAO.Descricao, Movimentacao_Inventario.Processo' +
        ', Tipos_de_Processos.DESCRICAO, Movimentacao_Inventario.Importad' +
        'or_Transf, Movimentacao_Inventario.Contrato_Transf, Movimentacao' +
        '_Inventario.Local_Transf'
      'ORDER BY Movimentacao_Inventario.Data_movimentacao;')
    Left = 628
    Top = 46
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'contr'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'loc'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
        Value = '7700101308*'
      end
      item
        DataType = ftString
        Name = 'nserie'
        ParamType = ptUnknown
        Value = '.'
      end>
    object q_movporitemData_movimentacao: TDateTimeField
      FieldName = 'Data_movimentacao'
    end
    object q_movporitemDI: TStringField
      FieldName = 'DI'
      Size = 10
    end
    object q_movporitemADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 3
    end
    object q_movporitemSeq_Adicao: TStringField
      FieldName = 'Seq_Adicao'
      Size = 2
    end
    object q_movporitemDDE: TStringField
      FieldName = 'DDE'
      Size = 11
    end
    object q_movporitemRE: TStringField
      FieldName = 'RE'
      Size = 12
    end
    object q_movporitemProcesso_ADM: TStringField
      FieldName = 'Processo_ADM'
    end
    object q_movporitemProtocolo_Processo_ADM: TStringField
      FieldName = 'Protocolo_Processo_ADM'
    end
    object q_movporitemFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object q_movporitemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_movporitemForma: TStringField
      FieldName = 'Forma'
      Size = 120
    end
    object q_movporitemTipodecl: TStringField
      FieldName = 'Tipodecl'
      Size = 120
    end
    object q_movporitemProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_movporitemtipopro: TStringField
      FieldName = 'tipopro'
      Size = 35
    end
    object q_movporitemImportador_Transf: TStringField
      FieldName = 'Importador_Transf'
      Size = 4
    end
    object q_movporitemContrato_Transf: TStringField
      FieldName = 'Contrato_Transf'
      Size = 8
    end
    object q_movporitemLocal_Transf: TStringField
      FieldName = 'Local_Transf'
      Size = 4
    end
  end
  object ds_qmovporitem: TDataSource
    DataSet = q_movporitem
    Left = 644
    Top = 60
  end
end
