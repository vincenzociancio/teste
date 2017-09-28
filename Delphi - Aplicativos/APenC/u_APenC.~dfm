object frmAPenC: TfrmAPenC
  Left = 513
  Top = 224
  Width = 727
  Height = 443
  Caption = 'APenC - Monitoração de Pendências Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 32
    Align = alTop
    Caption = 'APENC - Monitoração de Pendências de Clientes'
    Color = 80517440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlLog: TPanel
    Left = 0
    Top = 32
    Width = 719
    Height = 377
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 16
    Caption = 'APEN'
    TabOrder = 1
    object reProcessa: TRichEdit
      Left = 16
      Top = 16
      Width = 687
      Height = 345
      Align = alClient
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
      OnChange = reProcessaChange
    end
  end
  object DB_MSCOMEX: TDatabase
    AliasName = 'A_MS2000'
    DatabaseName = 'DBNMSCOMEX'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    Left = 8
    Top = 8
  end
  object qrProcessos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Codigo = '#39'02356/13'#39
    SQL.Strings = (
      
        'SELECT P.Status, P.FATURADO, P.Codigo, convert(varchar, P.Data, ' +
        '103) as Data, P.Importador, I.CGC_CPF,P.Codigo_Cliente, P.Tipo_D' +
        'eclaracao, '
      
        'P.Tipo, P.Contrato, P.Local_Inventario, P.NR_DECL_IMP_MICRO, P.N' +
        'R_DECL_IMP_PROT, P.NR_DECLARACAO_IMP, '
      
        'P.DT_PROCESSAMENTO, P.DT_TRANSMISSAO, P.DT_REGISTRO_DI, P.DT_DES' +
        'EMBARACO, P.DT_DISTRIBUICAO, P.Canal, '
      'P.Fiscal, P.COD_SIT, P.CD_MOTIVO_TRANS, P.IN_MOEDA_UNICA, '
      
        'Cast(P.TX_INFO_COMPL as varchar(500)) as TX_INFO_COMPL, P.CD_TIP' +
        'O_PGTO_TRIB, P.Numero_RCR, '
      
        'P.Data_Entrada_RCR, P.Data_Aprovacao_RCR, P.Fundamentacao_RCR, P' +
        '.Procurador, P.Numero_TR, '
      
        'P.Data_Entrada_TR, P.Data_vencimento_TR, P.Data_Aprovacao_TR, P.' +
        'Data_Baixa_TR, P.Data_CI, '
      
        'P.Tipo_Garantia, P.Nome_banco_GAR, P.Agencia_GAR, P.Data_deposit' +
        'o_GAR, P.Nome_titulo_GAR, '
      
        'P.numeros_titulos_GAR, P.Nome_seguradora_GAR, P.apolice_GAR, P.n' +
        'ome_fiador_GAR, P.CNPJ_fiador_GAR, '
      
        'P.endereco_fiador_GAR, P.Quantidade_LI, P.Valor_FOB, P.Valor_CIF' +
        ', P.Responsavel_Importador, P.Saldo_Faturamento, P.NR_DECL_IMP_M' +
        'ICROC, P.NR_DECL_IMP_PROTC, P.NR_DECLARACAO_IMPC, P.DT_PROCESSAM' +
        'ENTOC, P.DT_TRANSMISSAOC, P.DT_REGISTRO_DIC, P.DT_DESEMBARACOC, ' +
        'P.DT_DISTRIBUICAOC, P.CanalC, P.FiscalC, P.COD_SITC, P.Data_CIC,' +
        ' P.Valor_FOBC, P.Valor_CIFC, P.ident_meio1, P.ident_meio2, P.Cod' +
        'evento, P.Codobs, P.Obs_especifica, P.Data_ufollowup, P.Hora_ufo' +
        'llowup, P.Data_liberacao, P.Urgente, P.consolidado, P.Pag_propor' +
        'cional, I.[Razao_Social], TP.DESCRICAO AS DescI, TD.Descricao AS' +
        ' DescII, TSP.DESCRICAO AS DescIII, U.Email, C.Processo AS Conhec' +
        'imentoProcesso, C.Via, C.Embarcacao, C.Transportador, C.Tipodocc' +
        'arga, C.Numerodoccarga, C.Numeromaster, C.Utilizacao, C.Tipomani' +
        'festo, C.Numeromanifesto, C.Codigo_Presenca_Carga, C.Local, C.Da' +
        'ta AS DataConhecimento, C.Peso_Bruto, C.Peso_Liquido, C.Pais_Pro' +
        'cedencia, C.URF_chegada, C.Data_Chegada_URF_Cheg, C.URF_Despacho' +
        ', C.Data_Chegada_URF_Desp, C.Recinto_Alfandegario, C.Setor_Alfan' +
        'degario, C.Frete_Prepaid, C.Frete_Collect, C.Frete_Ter_Nac, C.Mo' +
        'eda_Frete, C.Valor_Seguro, C.Moeda_Seguro, PRI.Processo AS Proce' +
        'ssoRegImp, PRI.Banco, PRI.Agencia, PRI.Conta_Corrente, PRI.Taxa_' +
        'SISCOMEX, PRI.Bancoc, PRI.Agenciac, PRI.Conta_Correntec, PRI.Tax' +
        'a_SISCOMEXc, P.Responsavel_EmpresaC, P.Responsavel_Empresa, Cont' +
        'role_Pastas.Usuario, P.SEM_NFS,'
      
        '(SELECT TOP 1 Numero_Rat FROM RAT WHERE Fk_Processo = P.Codigo O' +
        'RDER BY ID DESC) AS Numero_RAT'
      
        'FROM ((((((((Processos AS P LEFT JOIN Importadores AS I ON (P.Im' +
        'portador = I.Codigo) AND (P.Filial = I.Filial) AND (P.Empresa = ' +
        'I.Empresa)) LEFT JOIN Tipos_de_Processos AS TP ON P.Tipo = TP.CO' +
        'DIGO) LEFT JOIN TAB_TIPO_DECLARACAO AS TD ON P.Tipo_Declaracao =' +
        ' TD.Codigo) LEFT JOIN Tipos_status_processos AS TSP ON P.Status ' +
        '= TSP.CODIGO) LEFT JOIN Controle_Pastas AS CP ON (P.Codigo = CP.' +
        'Processo) AND (P.Filial = CP.Filial) AND (P.Empresa = CP.Empresa' +
        ')) LEFT JOIN Usuarios AS U ON (CP.Usuario = U.Usuario) AND (CP.F' +
        'ilial = U.Filial) AND (CP.Empresa = U.Empresa)) LEFT JOIN Conhec' +
        'imento_Processo AS C ON (P.Codigo = C.Processo) AND (P.Filial = ' +
        'C.Filial) AND (P.Empresa = C.Empresa)) LEFT JOIN Processos_regis' +
        'tro_impostos AS PRI ON (P.Empresa = PRI.Empresa) AND (P.Filial =' +
        ' PRI.Filial) AND (P.Codigo = PRI.Processo)) LEFT JOIN Controle_P' +
        'astas ON P.Codigo = Controle_Pastas.Processo'
      'WHERE '
      '(P.Status<>'#39'4'#39') '
      'AND ((P.Data>='#39'1/1/2010'#39') Or (P.Data Is Null)) '
      'AND (P.Codigo LIKE '#39'%/%'#39')'
      'AND (P.Importador=:qimportador)'
      'ORDER BY P.Status, P.Data;')
    Left = 72
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'qimportador'
        ParamType = ptInput
      end>
    object qrProcessosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 3
    end
    object qrProcessosFATURADO: TIntegerField
      FieldName = 'FATURADO'
    end
    object qrProcessosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qrProcessosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
    object qrProcessosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrProcessosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object qrProcessosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object qrProcessosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object qrProcessosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      FixedChar = True
      Size = 10
    end
    object qrProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object qrProcessosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      FixedChar = True
      Size = 8
    end
    object qrProcessosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      FixedChar = True
      Size = 8
    end
    object qrProcessosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object qrProcessosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object qrProcessosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object qrProcessosCanal: TStringField
      FieldName = 'Canal'
      FixedChar = True
      Size = 1
    end
    object qrProcessosFiscal: TStringField
      FieldName = 'Fiscal'
      FixedChar = True
    end
    object qrProcessosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object qrProcessosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      FixedChar = True
      Size = 1
    end
    object qrProcessosIN_MOEDA_UNICA: TIntegerField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object qrProcessosTX_INFO_COMPL: TStringField
      FieldName = 'TX_INFO_COMPL'
      FixedChar = True
      Size = 255
    end
    object qrProcessosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      FixedChar = True
      Size = 1
    end
    object qrProcessosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      FixedChar = True
    end
    object qrProcessosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object qrProcessosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object qrProcessosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      FixedChar = True
      Size = 4
    end
    object qrProcessosProcurador: TStringField
      FieldName = 'Procurador'
      FixedChar = True
      Size = 4
    end
    object qrProcessosNumero_TR: TStringField
      FieldName = 'Numero_TR'
      FixedChar = True
    end
    object qrProcessosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object qrProcessosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object qrProcessosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object qrProcessosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object qrProcessosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object qrProcessosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      FixedChar = True
      Size = 1
    end
    object qrProcessosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      FixedChar = True
      Size = 50
    end
    object qrProcessosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      FixedChar = True
      Size = 5
    end
    object qrProcessosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object qrProcessosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      FixedChar = True
      Size = 50
    end
    object qrProcessosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      FixedChar = True
      Size = 50
    end
    object qrProcessosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      FixedChar = True
      Size = 50
    end
    object qrProcessosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
      FixedChar = True
    end
    object qrProcessosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      FixedChar = True
      Size = 50
    end
    object qrProcessosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      FixedChar = True
      Size = 18
    end
    object qrProcessosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      FixedChar = True
      Size = 200
    end
    object qrProcessosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object qrProcessosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object qrProcessosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object qrProcessosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      FixedChar = True
      Size = 10
    end
    object qrProcessosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object qrProcessosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      FixedChar = True
      Size = 8
    end
    object qrProcessosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      FixedChar = True
      Size = 10
    end
    object qrProcessosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      FixedChar = True
      Size = 10
    end
    object qrProcessosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      FixedChar = True
      Size = 8
    end
    object qrProcessosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      FixedChar = True
      Size = 8
    end
    object qrProcessosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      FixedChar = True
      Size = 8
    end
    object qrProcessosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object qrProcessosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object qrProcessosCanalC: TStringField
      FieldName = 'CanalC'
      FixedChar = True
      Size = 1
    end
    object qrProcessosFiscalC: TStringField
      FieldName = 'FiscalC'
      FixedChar = True
    end
    object qrProcessosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      FixedChar = True
      Size = 1
    end
    object qrProcessosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object qrProcessosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object qrProcessosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object qrProcessosident_meio1: TStringField
      FieldName = 'ident_meio1'
      FixedChar = True
      Size = 100
    end
    object qrProcessosident_meio2: TStringField
      FieldName = 'ident_meio2'
      FixedChar = True
      Size = 100
    end
    object qrProcessosCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object qrProcessosCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object qrProcessosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object qrProcessosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object qrProcessosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      FixedChar = True
      Size = 5
    end
    object qrProcessosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object qrProcessosUrgente: TIntegerField
      FieldName = 'Urgente'
    end
    object qrProcessosconsolidado: TIntegerField
      FieldName = 'consolidado'
    end
    object qrProcessosPag_proporcional: TIntegerField
      FieldName = 'Pag_proporcional'
    end
    object qrProcessosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrProcessosDescI: TStringField
      FieldName = 'DescI'
      FixedChar = True
      Size = 35
    end
    object qrProcessosDescII: TStringField
      FieldName = 'DescII'
      FixedChar = True
      Size = 120
    end
    object qrProcessosDescIII: TStringField
      FieldName = 'DescIII'
      FixedChar = True
      Size = 100
    end
    object qrProcessosEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
    object qrProcessosConhecimentoProcesso: TStringField
      FieldName = 'ConhecimentoProcesso'
      FixedChar = True
      Size = 8
    end
    object qrProcessosVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
    object qrProcessosEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object qrProcessosTransportador: TStringField
      FieldName = 'Transportador'
      FixedChar = True
      Size = 4
    end
    object qrProcessosTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      FixedChar = True
      Size = 2
    end
    object qrProcessosNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object qrProcessosNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object qrProcessosUtilizacao: TStringField
      FieldName = 'Utilizacao'
      FixedChar = True
      Size = 1
    end
    object qrProcessosTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      FixedChar = True
      Size = 1
    end
    object qrProcessosNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object qrProcessosCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      FixedChar = True
      Size = 50
    end
    object qrProcessosLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 50
    end
    object qrProcessosDataConhecimento: TDateTimeField
      FieldName = 'DataConhecimento'
    end
    object qrProcessosPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object qrProcessosPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object qrProcessosPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      FixedChar = True
      Size = 3
    end
    object qrProcessosURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object qrProcessosData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrProcessosURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object qrProcessosData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object qrProcessosRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      FixedChar = True
      Size = 7
    end
    object qrProcessosSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      FixedChar = True
      Size = 3
    end
    object qrProcessosFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object qrProcessosFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object qrProcessosFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object qrProcessosMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      FixedChar = True
      Size = 3
    end
    object qrProcessosValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object qrProcessosMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      FixedChar = True
      Size = 3
    end
    object qrProcessosProcessoRegImp: TStringField
      FieldName = 'ProcessoRegImp'
      FixedChar = True
      Size = 8
    end
    object qrProcessosBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object qrProcessosAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object qrProcessosConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object qrProcessosTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object qrProcessosBancoc: TStringField
      FieldName = 'Bancoc'
      FixedChar = True
      Size = 5
    end
    object qrProcessosAgenciac: TStringField
      FieldName = 'Agenciac'
      FixedChar = True
      Size = 5
    end
    object qrProcessosConta_Correntec: TStringField
      FieldName = 'Conta_Correntec'
      FixedChar = True
      Size = 8
    end
    object qrProcessosTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object qrProcessosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      FixedChar = True
      Size = 10
    end
    object qrProcessosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object qrProcessosUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qrProcessosSEM_NFS: TIntegerField
      FieldName = 'SEM_NFS'
    end
    object qrProcessosCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object qrProcessosData: TStringField
      FieldName = 'Data'
      FixedChar = True
      Size = 30
    end
    object qrProcessosNumero_RAT: TStringField
      FieldName = 'Numero_RAT'
      FixedChar = True
      Size = 25
    end
  end
  object alAPen: TActionList
    Left = 40
    Top = 8
    object acInicializa: TAction
      Caption = 'Iniciar o APen'
      Checked = True
      OnExecute = acInicializaExecute
    end
    object acGeraEmail: TAction
      Caption = 'acGeraEmail'
      OnExecute = acGeraEmailExecute
    end
    object acProcessa: TAction
      Caption = 'acProcessa'
      OnExecute = acProcessaExecute
    end
    object acVerificaDoc: TAction
      Caption = 'acVerificaDoc'
    end
    object acEnviaEmail: TAction
      Caption = 'acEnviaEmail'
      OnExecute = acEnviaEmailExecute
    end
    object acFinaliza: TAction
      Caption = 'Finaliza o APen'
      OnExecute = acFinalizaExecute
    end
  end
  object qrParametros: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 72
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
  object qrUsuarios: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Email, nome_completo'
      'FROM Usuarios'
      
        'WHERE Email_aviso_oper = 1 AND Empresa = :emp AND Filial = :fili' +
        'al')
    Left = 136
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
      end>
    object qrUsuariosEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrUsuariosnome_completo: TStringField
      FieldName = 'nome_completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
  end
  object tbEmailAuto: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Email_Auto'
    Left = 104
    Top = 8
    object tbEmailAutoCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object tbEmailAutoPrograma: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 5
    end
    object tbEmailAutoAssunto: TStringField
      FieldName = 'Assunto'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoTitulo: TStringField
      FieldName = 'Titulo'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoDe: TStringField
      FieldName = 'De'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoPara: TStringField
      FieldName = 'Para'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCCO: TStringField
      FieldName = 'CCO'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoBody: TMemoField
      FieldName = 'Body'
      BlobType = ftMemo
    end
    object tbEmailAutoAnexo: TStringField
      FieldName = 'Anexo'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoHTML: TIntegerField
      FieldName = 'HTML'
    end
    object tbEmailAutoData: TDateTimeField
      FieldName = 'Data'
    end
    object tbEmailAutoHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  object qrFatura: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo'
      'FROM Faturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 104
    Top = 48
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
    object qrFaturaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      FixedChar = True
      Size = 30
    end
  end
  object qrProcRegImp: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Processos_registro_impostos'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 136
    Top = 48
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
    object qrProcRegImpEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrProcRegImpFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Filial'
      FixedChar = True
      Size = 4
    end
    object qrProcRegImpProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Processo'
      FixedChar = True
      Size = 8
    end
    object qrProcRegImpBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Banco'
      FixedChar = True
      Size = 5
    end
    object qrProcRegImpAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Agencia'
      FixedChar = True
      Size = 5
    end
    object qrProcRegImpConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object qrProcRegImpII: TFloatField
      FieldName = 'II'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.II'
    end
    object qrProcRegImpIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.IPI'
    end
    object qrProcRegImpTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Taxa_SISCOMEX'
    end
    object qrProcRegImpBancoc: TStringField
      FieldName = 'Bancoc'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Bancoc'
      FixedChar = True
      Size = 5
    end
    object qrProcRegImpAgenciac: TStringField
      FieldName = 'Agenciac'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Agenciac'
      FixedChar = True
      Size = 5
    end
    object qrProcRegImpConta_Correntec: TStringField
      FieldName = 'Conta_Correntec'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Conta_Correntec'
      FixedChar = True
      Size = 8
    end
    object qrProcRegImpIIc: TFloatField
      FieldName = 'IIc'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.IIc'
    end
    object qrProcRegImpIPIc: TFloatField
      FieldName = 'IPIc'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.IPIc'
    end
    object qrProcRegImpTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Taxa_SISCOMEXc'
    end
    object qrProcRegImpEnviou_adcc: TIntegerField
      FieldName = 'Enviou_adcc'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Enviou_adcc'
    end
    object qrProcRegImpEnviou_adcc_c: TIntegerField
      FieldName = 'Enviou_adcc_c'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Enviou_adcc_c'
    end
    object qrProcRegImpEnviou_adr: TIntegerField
      FieldName = 'Enviou_adr'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Enviou_adr'
    end
    object qrProcRegImpEnviou_adr_c: TIntegerField
      FieldName = 'Enviou_adr_c'
      Origin = 'DBNMSCOMEX.Processos_registro_impostos.Enviou_adr_c'
    end
  end
  object qrFollow: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     F.Data, F.Hora, F.Codevento, E.Descricao, Obs_Eventos' +
        '.Descricao AS DESC_OBS'
      'FROM         Followup AS F LEFT OUTER JOIN'
      
        '                      Obs_Eventos ON F.Codevento = Obs_Eventos.E' +
        'vento AND F.Codobs = Obs_Eventos.Codigo LEFT OUTER JOIN'
      '                      Eventos AS E ON F.Codevento = E.Codigo'
      'WHERE     (F.Processo = :proc)'
      'ORDER BY F.Data, F.Hora')
    Left = 232
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrFollowData: TDateTimeField
      FieldName = 'Data'
    end
    object qrFollowHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 5
    end
    object qrFollowCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object qrFollowDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
    object qrFollowDESC_OBS: TStringField
      FieldName = 'DESC_OBS'
      FixedChar = True
      Size = 120
    end
  end
  object qrItens: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sequencial'
      'FROM ItensFaturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 168
    Top = 48
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
    object qrItensSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Sequencial'
      Size = 4
    end
  end
  object qrTribut: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sequencial'
      'FROM Tributacao_Item_Fatura'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 200
    Top = 48
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
    object qrTributSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Sequencial'
      Size = 4
    end
  end
  object tmIniciar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmIniciarTimer
    Left = 200
    Top = 8
  end
  object qrListaDoc: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT D.Processo, D.Sub_Tipo_Doc, D.Numero_Doc, D.Data_inclusao' +
        ', S.Descricao, D.Codigo'
      
        'FROM Documentos AS D LEFT JOIN Sub_Tipo_Documentos AS S ON D.Tip' +
        'o_Doc = S.Tipo_doc AND D.Sub_Tipo_Doc = S.codigo'
      'WHERE D.Tipo_Doc = "PROC"'
      'AND D.Processo = :proc'
      'AND D.Pagina = 1'
      
        'GROUP BY D.Processo, D.Sub_Tipo_Doc, D.Numero_Doc, D.Data_inclus' +
        'ao, S.Descricao, D.Empresa, D.Filial, D.Codigo')
    Left = 296
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qrListaDocProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Documentos.Processo'
      Size = 8
    end
    object qrListaDocSub_Tipo_Doc: TStringField
      FieldName = 'Sub_Tipo_Doc'
      Origin = 'DBNMSCOMEX.Documentos.Sub_Tipo_Doc'
      Size = 4
    end
    object qrListaDocNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      Origin = 'DBNMSCOMEX.Documentos.Numero_Doc'
    end
    object qrListaDocData_inclusao: TDateTimeField
      FieldName = 'Data_inclusao'
      Origin = 'DBNMSCOMEX.Documentos.Data_inclusao'
    end
    object qrListaDocDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Sub_Tipo_Documentos.Descricao'
      Size = 70
    end
    object qrListaDocCodigo: TStringField
      DisplayWidth = 11
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Documentos.Codigo'
      Size = 11
    end
  end
  object qrListaProc: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Importador, P.Codigo AS CodPro, F.Codigo AS CodFat, C.N' +
        'umerodoccarga, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.Nume' +
        'ro_RCR, P.Numero_TR, P.Tipo, TP.DESCRICAO, U1.Email AS Responsav' +
        'el, Case When U2.Email Is Not Null Then U2.Email Else U2.Nome_Co' +
        'mpleto End AS LocalPasta,'
      'P.DT_DESEMBARACO, P.DT_DESEMBARACOC, C.Data_Chegada_URF_Cheg,'
      
        '(SELECT TOP 1 Numero_Rat FROM RAT WHERE Fk_Processo = P.Codigo O' +
        'RDER BY ID DESC) AS Numero_RAT'
      
        'FROM (((((Processos AS P LEFT JOIN Faturas AS F ON (P.Codigo = F' +
        '.Processo) AND (P.Filial = F.Filial) AND (P.Empresa = F.Empresa)' +
        ') LEFT JOIN Conhecimento_Processo AS C ON (P.Codigo = C.Processo' +
        ') AND (P.Filial = C.Filial) AND (P.Empresa = C.Empresa)) LEFT JO' +
        'IN Tipos_de_Processos AS TP ON P.Tipo = TP.CODIGO) LEFT JOIN Usu' +
        'arios AS U1 ON (P.Empresa = U1.Empresa) AND (P.Filial = U1.Filia' +
        'l) AND (P.Responsavel_Empresa = U1.Usuario)) LEFT JOIN Controle_' +
        'Pastas AS CP ON (P.Empresa = CP.Empresa) AND (P.Filial = CP.Fili' +
        'al) AND (P.Codigo = CP.Processo)) LEFT JOIN Usuarios AS U2 ON (C' +
        'P.Empresa = U2.Empresa) AND (CP.Filial = U2.Filial) AND (CP.Usua' +
        'rio = U2.Usuario)'
      'WHERE  Year(Cast(P.Data as DATE)) >= 2003 AND P.Codigo=:qpro '
      'ORDER BY P.Data DESC , P.Codigo;')
    Left = 264
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02783/08'
      end>
    object qrListaProcImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrListaProcCodPro: TStringField
      FieldName = 'CodPro'
      Size = 8
    end
    object qrListaProcCodFat: TStringField
      FieldName = 'CodFat'
      Size = 30
    end
    object qrListaProcNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object qrListaProcNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object qrListaProcNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object qrListaProcNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object qrListaProcNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object qrListaProcTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object qrListaProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object qrListaProcResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object qrListaProcLocalPasta: TStringField
      FieldName = 'LocalPasta'
      Size = 255
    end
    object qrListaProcDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object qrListaProcDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object qrListaProcData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrListaProcNumero_RAT: TStringField
      FieldName = 'Numero_RAT'
      FixedChar = True
      Size = 25
    end
  end
  object Q_UP: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Usuarios_APEN ( Usuario, Data, Hora, OK, NAO, TOTAL,' +
        ' PERCENTUAL )'
      
        'SELECT :qusu AS Expr1, Cast(GetDate() AS Date) AS Expr2, Cast(Ge' +
        'tDate() AS Time) AS Expr3, :qOK AS Expr4, :qNAO AS Expr5, :qTOTA' +
        'L AS Expr6, :qPERC AS Expr7')
    Left = 296
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'MM'
      end
      item
        DataType = ftInteger
        Name = 'qOK'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'qNAO'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'qTOTAL'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'qPERC'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_nfs: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Notas_Fiscais_Servicos.NFiscal, Notas_Fiscais_Servicos.Pr' +
        'ocesso, Notas_Fiscais_Servicos.Cancelada, Notas_Fiscais_Servicos' +
        '.Data_emissao'
      'FROM Notas_Fiscais_Servicos'
      'WHERE (((Notas_Fiscais_Servicos.Cancelada)=0))'
      'ORDER BY Notas_Fiscais_Servicos.Processo;')
    Left = 112
    Top = 128
    object q_nfsNFiscal: TStringField
      FieldName = 'NFiscal'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.NFiscal'
      FixedChar = True
      Size = 6
    end
    object q_nfsProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.Processo'
      FixedChar = True
      Size = 8
    end
    object q_nfsCancelada: TIntegerField
      FieldName = 'Cancelada'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.Cancelada'
    end
    object q_nfsData_emissao: TDateTimeField
      FieldName = 'Data_emissao'
      Origin = 'DBNMSCOMEX.Notas_Fiscais_Servicos.Data_emissao'
    end
  end
  object q_log_aplicativo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Aplicativo, Chave, Data_Processamento'
      'FROM Log_Aplicativo'
      'WHERE Aplicativo = :P1'
      'AND Chave = :P2')
    Left = 56
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'P1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2'
        ParamType = ptUnknown
      end>
    object q_log_aplicativoAplicativo: TStringField
      FieldName = 'Aplicativo'
      Origin = 'DBNMSCOMEX.Log_Aplicativo.Aplicativo'
      Size = 50
    end
    object q_log_aplicativoChave: TStringField
      FieldName = 'Chave'
      Origin = 'DBNMSCOMEX.Log_Aplicativo.Chave'
      Size = 50
    end
    object q_log_aplicativoData_Processamento: TStringField
      FieldName = 'Data_Processamento'
      Origin = 'DBNMSCOMEX.Log_Aplicativo.Data_Processamento'
      Size = 10
    end
  end
  object q_log_aplicativo_adicionar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Log_Aplicativo (Aplicativo, Chave)'
      'Values (:P1, :P2)')
    Left = 88
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'P1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2'
        ParamType = ptUnknown
      end>
  end
  object q_log_aplicativo_atualizar_data: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Log_Aplicativo'
      'SET Data_Processamento = :P1'
      'WHERE Aplicativo = :P2'
      'AND Chave = :P3')
    Left = 120
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'P1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P3'
        ParamType = ptUnknown
      end>
  end
  object q_log_aplicativo_atualizar_finalizar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Log_Aplicativo'
      'SET Data_Processamento = :P1'
      'WHERE Aplicativo = :P2')
    Left = 152
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P2'
        ParamType = ptUnknown
      end>
  end
  object q_tot_resumo_insert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO apen_temp'
      '(totOkGeral, totErroGeral, totProcGeral,Data, Hora)'
      'VALUES '
      
        '(:p1, :p2, :p3, CAST(GETDATE() AS DATE), CAST(GETDATE() AS TIME)' +
        ')')
    Left = 216
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'p3'
        ParamType = ptUnknown
      end>
  end
  object q_tot_resumo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select TotOkGeral, TotErroGeral, TotProcGeral from apen_temp')
    Left = 248
    Top = 184
    object q_tot_resumoTotOkGeral: TIntegerField
      FieldName = 'TotOkGeral'
      Origin = 'DBNMSCOMEX.apen_temp.TotOkGeral'
    end
    object q_tot_resumoTotErroGeral: TIntegerField
      FieldName = 'TotErroGeral'
      Origin = 'DBNMSCOMEX.apen_temp.TotErroGeral'
    end
    object q_tot_resumoTotProcGeral: TIntegerField
      FieldName = 'TotProcGeral'
      Origin = 'DBNMSCOMEX.apen_temp.TotProcGeral'
    end
  end
  object q_tot_resumo_delete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from apen_temp')
    Left = 280
    Top = 184
  end
  object qrClientes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Codigo, Razao_Social, EMAIL_MONITORACAO from Importadores'
      'where Ativo = 1 '
      'and  not Codigo '
      '--= ('#39'294'#39') '
      
        'in ('#39'2'#39','#39'239'#39','#39'53'#39','#39'252'#39','#39'265'#39','#39'271'#39','#39'295'#39','#39'296'#39','#39'297'#39','#39'298'#39','#39'22' +
        '6'#39','#39'302'#39','#39'303'#39','#39'104'#39','#39'177'#39','#39'253'#39','#39'306'#39','#39'325'#39','#39'326'#39','#39'327'#39','#39'328'#39','#39 +
        '329'#39','#39'353'#39','#39'98'#39','#39'182'#39','#39'97'#39') '
      'order by Razao_Social'
      '')
    Left = 632
    Top = 64
    object qrClientesCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrClientesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrClientesEMAIL_MONITORACAO: TStringField
      FieldName = 'EMAIL_MONITORACAO'
      FixedChar = True
      Size = 80
    end
  end
  object qrEmailAuto: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Email_auto'
      '           (Programa'
      '           ,Assunto'
      '           ,Titulo'
      '           ,De'
      '           ,Para'
      '           ,CC'
      '           ,CCO'
      '           ,Body'
      '           ,Anexo'
      '           ,HTML'
      '           ,Data'
      '           ,Hora)'
      '     VALUES'
      '           (:Programa,'
      '           :Assunto,'
      '           :Titulo,'
      '           :De,'
      '           :Para,'
      '           :CC, '
      '           :CCO,'
      '           :Body,'
      '           :Anexo,'
      '           :HTML,'
      '           :Data,'
      '           :Hora)')
    Left = 608
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'Programa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Assunto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Titulo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'De'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Para'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'Body'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Anexo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'HTML'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Hora'
        ParamType = ptInput
      end>
  end
  object qrPorImp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Codigo, Razao_Social, EMAIL_MONITORACAO from Importadores'
      'where Ativo = 1  and Apenc_Liberado = '#39'1'#39' order by Razao_Social')
    Left = 408
    Top = 88
    object qrPorImpCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrPorImpRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qrPorImpEMAIL_MONITORACAO: TStringField
      FieldName = 'EMAIL_MONITORACAO'
      Origin = 'DBNMSCOMEX.Importadores.EMAIL_MONITORACAO'
      FixedChar = True
      Size = 80
    end
  end
  object qrUpdatePorImp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Importadores set apenc_liberado = '#39'0'#39' where Apenc_Liberad' +
        'o = '#39'1'#39' ')
    Left = 488
    Top = 104
  end
  object qrCarga: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select * from Followup where Codevento = '#39'72'#39' and Processo = :Pr' +
        'ocesso')
    Left = 576
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
  end
  object qrApenc_Pendencias: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT  Processo'
      '      ,Pendencia'
      '      ,Descricao'
      '  FROM Apenc_Pendencias'
      'where processo = :Proc')
    Left = 512
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Proc'
        ParamType = ptUnknown
      end>
  end
  object qrUpApenc_Pendencias: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Apenc_Pendencias'
      '   SET Pendencia = :Valor '
      '      ,Descricao = :OBS'
      ' WHERE Processo = :codigo')
    Left = 392
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object qrInsertApenc_Pendencias: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Apenc_Pendencias'
      '           (Processo'
      '           ,Pendencia'
      '           ,Descricao)'
      '     VALUES'
      '           (:Cod'
      '           ,:Pendencia'
      '           ,:Desc)'
      '')
    Left = 528
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pendencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Desc'
        ParamType = ptUnknown
      end>
  end
  object qrDeleteApenc_Pendencias: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE FROM Apenc_Pendencias'
      'WHERE Processo = :qProc ')
    Left = 328
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'qProc'
        ParamType = ptUnknown
      end>
  end
  object qrInsertLogApenc_Pendencias: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Apenc_Pendencias_Log'
      '           (Processo'
      '           ,Descricao'
      '           ,Data)'
      '     VALUES'
      '           (:Cod'
      '           ,:Desc'
      '           ,:Data)'
      '')
    Left = 128
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Desc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end>
  end
  object qrEmailAviso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      '   FROM Emails_avisos'
      
        'WHERE Ativo = 1 AND Empresa = :emp AND Filial = :filial AND Tipo' +
        ' = :tipo')
    Left = 416
    Top = 184
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
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qrEmailAvisoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Emails_avisos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrEmailAvisoFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Emails_avisos.Filial'
      FixedChar = True
      Size = 4
    end
    object qrEmailAvisoImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Importador'
      FixedChar = True
      Size = 4
    end
    object qrEmailAvisoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Tipo'
      FixedChar = True
      Size = 8
    end
    object qrEmailAvisoEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrEmailAvisoNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrEmailAvisoParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrEmailAvisoHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
    object qrEmailAvisoPlataforma: TStringField
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Emails_avisos.Plataforma'
      FixedChar = True
      Size = 100
    end
    object qrEmailAvisoPara: TBooleanField
      FieldName = 'Para'
      Origin = 'DBNMSCOMEX.Emails_avisos.Para'
    end
    object qrEmailAvisoCc: TBooleanField
      FieldName = 'Cc'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cc'
    end
    object qrEmailAvisoCCo: TBooleanField
      FieldName = 'CCo'
      Origin = 'DBNMSCOMEX.Emails_avisos.CCo'
    end
    object qrEmailAvisoAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Ativo'
    end
  end
end
