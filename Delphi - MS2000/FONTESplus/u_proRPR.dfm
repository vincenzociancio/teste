object F_proRPR: TF_proRPR
  Left = 209
  Top = 201
  BorderStyle = bsSingle
  Caption = 
    'RPR - Requerimento de Prorrogação do Regime de Admissão Temporár' +
    'ia'
  ClientHeight = 346
  ClientWidth = 736
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 10
      Top = 10
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
      Top = 6
      Width = 65
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnChange = ME_nossarefChange
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 300
    Width = 736
    Height = 46
    Align = alBottom
    Color = 10514464
    TabOrder = 1
    Visible = False
    object btnSair: TBitBtn
      Left = 616
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnImprimirRPR: TBitBtn
      Left = 432
      Top = 12
      Width = 113
      Height = 25
      Caption = '&Imprimir RPR'
      TabOrder = 1
      OnClick = btnImprimirRPRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object btnExcluir: TBitBtn
      Left = 336
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 736
    Height = 267
    Align = alClient
    Color = 10514464
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 524
      Top = 235
      Width = 34
      Height = 16
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 92
      Height = 16
      Caption = 'Itens do RPR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbGrdRPR: TDBGrid
      Left = 16
      Top = 24
      Width = 673
      Height = 201
      DataSource = dsRCRTemp
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Produto'
          Width = 452
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 77
          Visible = True
        end>
    end
    object dbEdtTotal: TDBEdit
      Left = 560
      Top = 232
      Width = 121
      Height = 21
      DataField = 'ValorTotal'
      DataSource = dsTotal
      TabOrder = 1
    end
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Codigo_Cliente AS refcli, Im' +
        'portadores.Codigo, Importadores.Razao_Social AS Cliente, TAB_TIP' +
        'O_DECLARACAO.Descricao AS tipodecla, Tipos_de_Processos.DESCRICA' +
        'O AS tipopro, Contratos.Descricao AS qcontrato, Locais_Inventari' +
        'o.Descricao AS qlocal, Processos.Numero_RCR, Processos.NR_DECLAR' +
        'ACAO_IMP, Contratos.Tipo, Filiais.Descricao AS qfilial, Processo' +
        's.Fechado, Importadores.ATIVO, Processos.Importador, Importadore' +
        's.CNPJ_CPF_COMPLETO AS qcnpj'
      
        'FROM ((((((Parametros INNER JOIN Processos ON (Parametros.Filial' +
        ' = Processos.Filial) AND (Parametros.Empresa = Processos.Empresa' +
        ')) LEFT JOIN Importadores ON (Processos.Importador = Importadore' +
        's.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Proc' +
        'essos.Empresa = Importadores.Empresa)) LEFT JOIN Tipos_de_Proces' +
        'sos ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TAB' +
        '_TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARA' +
        'CAO.Codigo) LEFT JOIN Contratos ON (Processos.Contrato = Contrat' +
        'os.Contrato) AND (Processos.Importador = Contratos.Importador) A' +
        'ND (Processos.Filial = Contratos.Filial) AND (Processos.Empresa ' +
        '= Contratos.Empresa)) LEFT JOIN Locais_Inventario ON (Processos.' +
        'Local_Inventario = Locais_Inventario.Local) AND (Processos.Contr' +
        'ato = Locais_Inventario.Contrato) AND (Processos.Importador = Lo' +
        'cais_Inventario.Importador) AND (Processos.Filial = Locais_Inven' +
        'tario.Filial) AND (Processos.Empresa = Locais_Inventario.Empresa' +
        ')) INNER JOIN Filiais ON (Parametros.Filial = Filiais.Codigo_Fil' +
        'ial) AND (Parametros.Empresa = Filiais.Codigo_Empresa)'
      'ORDER BY Processos.Codigo;')
    Left = 208
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
    object qrProcessosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
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
    object qrProcessosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object qrProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object qrProcessosqfilial: TStringField
      FieldName = 'qfilial'
      Size = 50
    end
    object qrProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object qrProcessosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      Size = 14
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 224
    Top = 16
  end
  object qrItensRPR: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Codigo, P.Tipo_Declaracao AS tdecla, IFA.NCM, IFA.Produ' +
        'to, IFA.PO, Max(IFA.Descricao_Produto) AS [desc], IFA.Fatura, IF' +
        'A.Pagina, IFA.Sequencial, Sum(TIF.Quantidade) AS SomaDeQuantidad' +
        'e, Sum(IFA.Valor_Aduaneiro) AS SomaDeValor_Aduaneiro, TIF.Regime' +
        '_Tributacao_II, TIF.Regime_Tributacao_IPI, TIF.Prazo_permanencia' +
        ', Sum(IFA.Valor_mercadoria) AS SomaDevalortotal'
      
        'FROM (Processos AS P INNER JOIN ItensFaturas AS IFA ON (P.Codigo' +
        ' = IFA.Processo) AND (P.Filial = IFA.Filial) AND (P.Empresa = IF' +
        'A.Empresa)) INNER JOIN Tributacao_Item_Fatura AS TIF ON (IFA.Seq' +
        'uencial = TIF.Sequencial_Item) AND (IFA.Fatura = TIF.Fatura) AND' +
        ' (IFA.Processo = TIF.Processo) AND (IFA.Filial = TIF.Filial) AND' +
        ' (IFA.Empresa = TIF.Empresa)'
      
        'GROUP BY P.Codigo, P.Tipo_Declaracao, IFA.NCM, IFA.Produto, IFA.' +
        'PO, IFA.Fatura, IFA.Pagina, IFA.Sequencial, TIF.Regime_Tributaca' +
        'o_II, TIF.Regime_Tributacao_IPI, TIF.Prazo_permanencia, P.Empres' +
        'a, P.Filial'
      
        'HAVING P.Codigo = :processo AND P.Empresa = :emp AND P.Filial = ' +
        ':filial'
      
        'AND P.Tipo_Declaracao IN ("12","05") AND ((TIF.Regime_Tributacao' +
        '_II = "5" AND TIF.Regime_Tributacao_IPI = "5") OR TIF.Prazo_perm' +
        'anencia <> 0)'
      'ORDER BY IFA.Fatura, IFA.Pagina, IFA.Sequencial;')
    Left = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
      end
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
    object qrItensRPRCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object qrItensRPRtdecla: TStringField
      FieldName = 'tdecla'
      Size = 2
    end
    object qrItensRPRNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object qrItensRPRProduto: TStringField
      FieldName = 'Produto'
      Size = 25
    end
    object qrItensRPRPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
    object qrItensRPRdesc: TMemoField
      FieldName = 'desc'
      BlobType = ftMemo
    end
    object qrItensRPRFatura: TStringField
      FieldName = 'Fatura'
      Size = 30
    end
    object qrItensRPRPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object qrItensRPRSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object qrItensRPRSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object qrItensRPRSomaDeValor_Aduaneiro: TFloatField
      FieldName = 'SomaDeValor_Aduaneiro'
    end
    object qrItensRPRRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object qrItensRPRRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object qrItensRPRPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object qrItensRPRSomaDevalortotal: TFloatField
      FieldName = 'SomaDevalortotal'
    end
  end
  object qrDelRPRTemp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM RPRtemp'
      'WHERE Processo = :pro'
      '')
    Left = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
  end
  object qrInsertRPRTemp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO RPRtemp ( Processo, Sequencial, NCM, Descricao_Produ' +
        'to, Fatura, Pagina, Quantidade, Valor )'
      'SELECT '
      ':pro,'
      ':seq,'
      ':ncm,'
      ':dec,'
      ':fat,'
      ':pag,'
      ':qtd,'
      ':val')
    Left = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ncm'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pag'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'val'
        ParamType = ptUnknown
      end>
  end
  object alRCR: TActionList
    Left = 672
    object acTempRPR: TAction
      Caption = 'acTempRPR'
      OnExecute = acTempRPRExecute
    end
  end
  object qrRPRTemp: TQuery
    AutoCalcFields = False
    AfterOpen = qrRPRTempAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pag' +
        'ina, Quantidade, Valor'
      'FROM RPRtemp'
      'WHERE Processo = :qproc'
      'ORDER BY Val(Sequencial)')
    Left = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'qproc'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qrRPRTempProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrRPRTempSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object qrRPRTempNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object qrRPRTempDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object qrRPRTempFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object qrRPRTempPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object qrRPRTempQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qrRPRTempValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object dsRCRTemp: TDataSource
    DataSet = qrRPRTemp
    Left = 432
    Top = 16
  end
  object qrFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Processo, Codigo, Moeda'
      'FROM Faturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 504
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
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrFaturasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Faturas.Processo'
      Size = 8
    end
    object qrFaturasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      Size = 30
    end
    object qrFaturasMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'DBNMSCOMEX.Faturas.Moeda'
      Size = 3
    end
  end
  object dsItens: TDataSource
    DataSet = qrItensRPR
    Left = 320
    Top = 16
  end
  object qrCambio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos_Taxas_Conversao.Processo, Processos_Taxas_Conve' +
        'rsao.Moeda, Processos_Taxas_Conversao.Taxa_conversao'
      'FROM Processos_Taxas_Conversao'
      'WHERE (((Processos_Taxas_Conversao.Processo)=:qpro));')
    Left = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02348/07'
      end>
    object qrCambioProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Processo'
      Size = 8
    end
    object qrCambioMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Moeda'
      Size = 3
    end
    object qrCambioTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversao'
    end
  end
  object qrTotal: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT SUM (Valor)  AS ValorTotal'
      'FROM RPRTemp'
      'WHERE Processo = :proc'
      '')
    Left = 584
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrTotalValorTotal: TFloatField
      FieldName = 'ValorTotal'
      Origin = 'DBNMSCOMEX.RPRtemp.Valor'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsTotal: TDataSource
    DataSet = qrTotal
    Left = 600
    Top = 16
  end
end
