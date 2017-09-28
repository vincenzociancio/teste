object f_pendencias: Tf_pendencias
  Left = 193
  Top = 106
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pendências'
  ClientHeight = 396
  ClientWidth = 585
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
  object re_pendencias: TRichEdit
    Left = 0
    Top = 33
    Width = 585
    Height = 363
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 33
    Align = alTop
    Caption = 'Análise das Pendências'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 80
    Top = 156
    Width = 397
    Height = 65
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 395
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Aguarde verificando seus processos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object g_processa: TGauge
      Left = 16
      Top = 24
      Width = 365
      Height = 28
      Progress = 0
    end
  end
  object Panel3: TPanel
    Left = 376
    Top = 40
    Width = 189
    Height = 81
    TabOrder = 3
    object Shape1: TShape
      Left = 13
      Top = 31
      Width = 25
      Height = 9
      Brush.Color = clBlue
    end
    object Label2: TLabel
      Left = 43
      Top = 27
      Width = 67
      Height = 13
      Caption = 'Processos OK'
    end
    object Label3: TLabel
      Left = 43
      Top = 43
      Width = 112
      Height = 13
      Caption = 'Informações Pendentes'
    end
    object Label4: TLabel
      Left = 43
      Top = 59
      Width = 139
      Height = 13
      Caption = 'Informações Complementares'
    end
    object Shape2: TShape
      Left = 13
      Top = 46
      Width = 25
      Height = 9
      Brush.Color = clMaroon
    end
    object Shape3: TShape
      Left = 13
      Top = 61
      Width = 25
      Height = 9
      Brush.Color = clTeal
    end
    object Label5: TLabel
      Left = 1
      Top = 1
      Width = 187
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Legenda'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object q_processos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Controle_Pastas.Empresa, Controle_Pastas.Filial, Controle' +
        '_Pastas.Processo, Controle_Pastas.Usuario'
      'FROM Controle_Pastas'
      
        'WHERE (((Controle_Pastas.Empresa)=:qempresa) AND ((Controle_Past' +
        'as.Filial)=:qfilial) AND ((Controle_Pastas.Usuario)=:qusuario))'
      'ORDER BY Controle_Pastas.Processo;')
    Left = 152
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qusuario'
        ParamType = ptUnknown
        Value = 'ODILMA'
      end>
    object q_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Empresa'
      Size = 4
    end
    object q_processosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Filial'
      Size = 4
    end
    object q_processosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Processo'
      Size = 8
    end
    object q_processosUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Usuario'
      Size = 10
    end
  end
  object ds_qprocessos: TDataSource
    DataSet = q_processos
    Left = 152
    Top = 228
  end
  object t_processos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = ds_qprocessos
    TableName = 'Processos'
    Left = 180
    Top = 200
    object t_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_processosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_processosCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 8
    end
    object t_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object t_processosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object t_processosCdigo_Cliente: TStringField
      FieldName = 'Código_Cliente'
      Size = 15
    end
    object t_processosTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object t_processosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object t_processosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object t_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object t_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object t_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object t_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object t_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object t_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object t_processosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object t_processosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object t_processosStatus: TStringField
      FieldName = 'Status'
      Size = 2
    end
    object t_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object t_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object t_processosIN_MOEDA_UNICA: TBooleanField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object t_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object t_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object t_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object t_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object t_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object t_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object t_processosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object t_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object t_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object t_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object t_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object t_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 25
    end
    object t_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object t_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object t_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 25
    end
    object t_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object t_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 25
    end
    object t_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object t_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 25
    end
    object t_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 14
    end
    object t_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 50
    end
    object t_processosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object t_processosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object t_processosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
  end
  object ds_processos: TDataSource
    DataSet = t_processos
    Left = 180
    Top = 228
  end
  object t_conhecimento: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = ds_processos
    TableName = 'Conhecimento_Processo'
    Left = 208
    Top = 200
    object t_conhecimentoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_conhecimentoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_conhecimentoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_conhecimentoVia: TStringField
      FieldName = 'Via'
      Size = 2
    end
    object t_conhecimentoMultimodal: TBooleanField
      FieldName = 'Multimodal'
    end
    object t_conhecimentoPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object t_conhecimentoLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object t_conhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object t_conhecimentoTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object t_conhecimentoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object t_conhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object t_conhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object t_conhecimentoLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object t_conhecimentoData: TDateTimeField
      FieldName = 'Data'
    end
    object t_conhecimentoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object t_conhecimentoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object t_conhecimentoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object t_conhecimentoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 25
    end
    object t_conhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object t_conhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object t_conhecimentoAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object t_conhecimentoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object t_conhecimentoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object t_conhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object t_conhecimentoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object t_conhecimentoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object t_conhecimentoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object t_conhecimentoOperacao_FUNDAP: TBooleanField
      FieldName = 'Operacao_FUNDAP'
    end
    object t_conhecimentoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object t_conhecimentoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object t_conhecimentoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object t_conhecimentoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object t_conhecimentoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object t_conhecimentoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object t_conhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object t_conhecimentoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object t_conhecimentoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
  end
  object ds_conhecimento: TDataSource
    DataSet = t_conhecimento
    Left = 208
    Top = 228
  end
  object t_faturas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = ds_processos
    TableName = 'Faturas'
    Left = 236
    Top = 200
    object t_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_faturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_faturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_faturasCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 15
    end
    object t_faturasExportador: TStringField
      FieldName = 'Exportador'
      Size = 4
    end
    object t_faturasIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object t_faturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      Size = 1
    end
    object t_faturasCondio: TStringField
      FieldName = 'Condição'
      Size = 50
    end
    object t_faturasValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object t_faturasPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object t_faturasPesoTotal_Acertado: TFloatField
      FieldName = 'Peso Total_Acertado'
    end
    object t_faturasAcrescimos_Reducoes: TBooleanField
      FieldName = 'Acrescimos_Reducoes'
    end
    object t_faturasMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object t_faturasCoberturaCambial: TStringField
      FieldName = 'Cobertura Cambial'
      Size = 1
    end
    object t_faturasMotivoSemCobertura: TStringField
      FieldName = 'Motivo Sem Cobertura'
      Size = 2
    end
    object t_faturasModalidadedePagamento: TStringField
      FieldName = 'Modalidade de Pagamento'
      Size = 2
    end
    object t_faturasInstituicaoFinanciadora: TStringField
      FieldName = 'Instituicao Financiadora'
      Size = 2
    end
    object t_faturasTipoParcela: TStringField
      FieldName = 'Tipo Parcela'
      Size = 1
    end
    object t_faturasNumerodeparcelas: TStringField
      FieldName = 'Numero de parcelas'
      Size = 3
    end
    object t_faturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 3
    end
    object t_faturasValordasParcelas: TFloatField
      FieldName = 'Valor das Parcelas'
    end
    object t_faturasIndicadorPeriodicidade: TStringField
      FieldName = 'Indicador Periodicidade'
      Size = 1
    end
    object t_faturasTaxadeJuros: TBooleanField
      FieldName = 'Taxa de Juros'
    end
    object t_faturasCodigoTaxadeJuros: TStringField
      FieldName = 'Codigo Taxa de Juros'
      Size = 4
    end
    object t_faturasValorTaxadeJuros: TFloatField
      FieldName = 'Valor Taxa de Juros'
    end
    object t_faturasROFBACEN: TStringField
      FieldName = 'ROF BACEN'
      Size = 8
    end
    object t_faturasPercentualROF: TFloatField
      FieldName = 'Percentual ROF'
    end
  end
  object ds_faturas: TDataSource
    DataSet = t_faturas
    Left = 236
    Top = 228
  end
  object t_itensfaturas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura'
    MasterFields = 'Empresa;Filial;Processo;Código'
    MasterSource = ds_faturas
    TableName = 'ItensFaturas'
    Left = 264
    Top = 200
    object t_itensfaturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_itensfaturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_itensfaturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_itensfaturasFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object t_itensfaturasSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object t_itensfaturasPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object t_itensfaturasProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 25
    end
    object t_itensfaturasDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object t_itensfaturasFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object t_itensfaturasNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object t_itensfaturasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object t_itensfaturasUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object t_itensfaturasDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object t_itensfaturasNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object t_itensfaturasReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object t_itensfaturasNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object t_itensfaturasPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object t_itensfaturasQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object t_itensfaturasValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object t_itensfaturasValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object t_itensfaturasPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object t_itensfaturasPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object t_itensfaturasPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object t_itensfaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object t_itensfaturasSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object t_itensfaturasRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object t_itensfaturasRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object t_itensfaturasRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object t_itensfaturasRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object t_itensfaturasRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object t_itensfaturasRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object t_itensfaturasRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object t_itensfaturasRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object t_itensfaturasRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object t_itensfaturasRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object t_itensfaturasRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object t_itensfaturasRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object t_itensfaturasRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object t_itensfaturasRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object t_itensfaturasRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object t_itensfaturasRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object t_itensfaturasRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object t_itensfaturasRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object t_itensfaturasRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object t_itensfaturasRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object t_itensfaturasValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object t_itensfaturasValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object t_itensfaturasVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object t_itensfaturasBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object t_itensfaturasAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object t_itensfaturasCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object t_itensfaturasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object t_itensfaturasFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object t_itensfaturasFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
  end
  object ds_itensfaturas: TDataSource
    DataSet = t_itensfaturas
    Left = 264
    Top = 228
  end
  object t_tributacao: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial_Item'
    MasterFields = 'Empresa;Filial;Processo;Fatura;Sequencial'
    MasterSource = ds_itensfaturas
    TableName = 'Tributacao_Item_Fatura'
    Left = 292
    Top = 200
    object t_tributacaoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_tributacaoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_tributacaoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_tributacaoFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object t_tributacaoSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      Required = True
      Size = 4
    end
    object t_tributacaoSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object t_tributacaoCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
    object t_tributacaoAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
    end
    object t_tributacaoMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      Size = 2
    end
    object t_tributacaoCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object t_tributacaoCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object t_tributacaoIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object t_tributacaoIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object t_tributacaoCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object t_tributacaoACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      Size = 3
    end
    object t_tributacaoNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      Size = 5
    end
    object t_tributacaoALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object t_tributacaoRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object t_tributacaoAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object t_tributacaoValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object t_tributacaoValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object t_tributacaoFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Size = 2
    end
    object t_tributacaoNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object t_tributacaoRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object t_tributacaoBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object t_tributacaoAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object t_tributacaoValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object t_tributacaoValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object t_tributacaoNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Size = 5
    end
    object t_tributacaoPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object t_tributacaoPercentual_EX: TFloatField
      FieldName = 'Percentual_EX'
    end
    object t_tributacaoPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object t_tributacaoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object t_tributacaoAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object t_tributacaoSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object t_tributacaoDDE: TStringField
      FieldName = 'DDE'
      Size = 15
    end
    object t_tributacaoRE: TStringField
      FieldName = 'RE'
      Size = 15
    end
  end
  object ds_tributacao: TDataSource
    DataSet = t_tributacao
    Left = 292
    Top = 228
  end
  object t_followup: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = ds_processos
    TableName = 'FollowUp'
    Left = 320
    Top = 200
    object t_followupEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_followupFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_followupProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_followupSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object t_followupCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object t_followupCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object t_followupObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object t_followupData: TDateTimeField
      FieldName = 'Data'
    end
    object t_followupHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object t_followuplink: TStringField
      FieldName = 'link'
      Size = 8
    end
    object t_followupData_final: TDateTimeField
      FieldName = 'Data_final'
    end
    object t_followupHora_final: TStringField
      FieldName = 'Hora_final'
      Size = 5
    end
    object t_followupDuracao: TIntegerField
      FieldName = 'Duracao'
    end
    object t_followupUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object ds_followup: TDataSource
    DataSet = t_followup
    Left = 320
    Top = 228
  end
end
