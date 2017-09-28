object frmADR: TfrmADR
  Left = 201
  Top = 157
  Width = 755
  Height = 449
  Caption = 'ADR - Aviso Automático de DI'#39's Registradas'
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
    Width = 747
    Height = 32
    Align = alTop
    Caption = 'ADR - Aviso Automático de DI'#39's Registradas'
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
    Width = 747
    Height = 383
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 16
    Caption = 'ADR'
    TabOrder = 1
    object reProcessa: TRichEdit
      Left = 16
      Top = 16
      Width = 715
      Height = 351
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
  object reArqDI: TRichEdit
    Left = 496
    Top = 336
    Width = 209
    Height = 41
    Lines.Strings = (
      'DADOS DA DI SERÃO INSERIDAS AQUI'
      'PARA SEREM SALVAS EM ARQUIVO')
    PlainText = True
    TabOrder = 2
    Visible = False
    WantTabs = True
  end
  object DB_MSCOMEX: TDatabase
    AliasName = 'A_MS2000'
    DatabaseName = 'DBNMSCOMEX'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    Left = 48
    Top = 64
  end
  object tbProRegImp: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Processos_registro_impostos'
    Left = 608
    Top = 64
    object tbProRegImpEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbProRegImpFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbProRegImpProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object tbProRegImpBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object tbProRegImpAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object tbProRegImpConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object tbProRegImpII: TFloatField
      FieldName = 'II'
    end
    object tbProRegImpIPI: TFloatField
      FieldName = 'IPI'
    end
    object tbProRegImpTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object tbProRegImpBancoc: TStringField
      FieldName = 'Bancoc'
      FixedChar = True
      Size = 5
    end
    object tbProRegImpAgenciac: TStringField
      FieldName = 'Agenciac'
      FixedChar = True
      Size = 5
    end
    object tbProRegImpConta_Correntec: TStringField
      FieldName = 'Conta_Correntec'
      FixedChar = True
      Size = 8
    end
    object tbProRegImpIIc: TFloatField
      FieldName = 'IIc'
    end
    object tbProRegImpIPIc: TFloatField
      FieldName = 'IPIc'
    end
    object tbProRegImpTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object tbProRegImpEnviou_adcc: TIntegerField
      FieldName = 'Enviou_adcc'
    end
    object tbProRegImpEnviou_adcc_c: TIntegerField
      FieldName = 'Enviou_adcc_c'
    end
    object tbProRegImpEnviou_adr: TIntegerField
      FieldName = 'Enviou_adr'
    end
    object tbProRegImpEnviou_adr_c: TIntegerField
      FieldName = 'Enviou_adr_c'
    end
  end
  object qrADR: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Codigo, I.CGC_CPF ,I.Razao_Social AS cliente, P.Codigo ' +
        'AS ref_ms, P.Codigo_Cliente AS ref_empresa, P.NR_DECLARACAO_IMP ' +
        'AS di, P.DT_REGISTRO_DI AS dt_reg, U.Nome_Completo AS resp_ms, U' +
        '.Email AS email_resp_ms, P.NR_DECLARACAO_IMPC AS dic, P.DT_REGIS' +
        'TRO_DIC AS dt_regc, [E].Razao_Social AS ms, F.Descricao AS qfili' +
        'al, PRI.Banco, PRI.Agencia, PRI.Conta_Corrente, PRI.II, PRI.IPI,' +
        ' PRI.Taxa_SISCOMEX, PRI.Bancoc, PRI.Agenciac, PRI.Conta_Corrente' +
        'c, PRI.IIc, PRI.IPIc, PRI.Taxa_SISCOMEXc, PRI.Enviou_adcc, PRI.E' +
        'nviou_adcc_c, PRI.Enviou_adr, PRI.Enviou_adr_c, C.Descricao AS q' +
        'contrato, LI.Descricao AS qlocal, P.Tipo, TP.DESCRICAO AS qtipo,' +
        ' P.Tipo_Declaracao AS qtipodecl, TTD.Descricao AS qdecl, P.Pag_p' +
        'roporcional, US.Nome_Completo AS NomeSupervisor, US.Email AS Ema' +
        'ilSupervisor'
      
        'FROM (((((((((Processos AS P INNER JOIN Usuarios AS U ON (P.Resp' +
        'onsavel_Empresa = U.Usuario) AND (P.Filial = U.Filial) AND (P.Em' +
        'presa = U.Empresa)) INNER JOIN Importadores AS I ON (P.Importado' +
        'r = I.Codigo) AND (P.Filial = I.Filial) AND (P.Empresa = I.Empre' +
        'sa)) INNER JOIN Filiais AS F ON (P.Filial = F.Codigo_Filial) AND' +
        ' (P.Empresa = F.Codigo_Empresa)) INNER JOIN Empresas AS E ON P.E' +
        'mpresa = [E].Codigo) INNER JOIN Processos_registro_impostos AS P' +
        'RI ON (P.Empresa = PRI.Empresa) AND (P.Filial = PRI.Filial) AND ' +
        '(P.Codigo = PRI.Processo)) INNER JOIN Contratos AS C ON (P.Empre' +
        'sa = C.Empresa) AND (P.Filial = C.Filial) AND (P.Importador = C.' +
        'Importador) AND (P.Contrato = C.Contrato)) INNER JOIN Locais_Inv' +
        'entario AS LI ON (P.Empresa = LI.Empresa) AND (P.Filial = LI.Fil' +
        'ial) AND (P.Importador = LI.Importador) AND (P.Contrato = LI.Con' +
        'trato) AND (P.Local_Inventario = LI.Local)) INNER JOIN Tipos_de_' +
        'Processos AS TP ON P.Tipo = TP.CODIGO) INNER JOIN TAB_TIPO_DECLA' +
        'RACAO AS TTD ON P.Tipo_Declaracao = TTD.Codigo) LEFT JOIN Usuari' +
        'os AS US ON (U.Supervisor = US.Usuario) AND (U.Filial = US.Filia' +
        'l) AND (U.Empresa = US.Empresa)'
      'WHERE P.Empresa = :emp AND P.Filial = :filial  '
      
        'AND  ( (P.NR_DECLARACAO_IMP Is Not Null) AND (PRI.Enviou_adr=0) ' +
        'AND (P.Tipo In ("1","11","12","13")) ) OR ( (P.NR_DECLARACAO_IMP' +
        'C Is Not Null) AND (PRI.Enviou_adr_c=0) AND (P.Tipo In ("1","11"' +
        ',"12","13")) )'
      
        'GROUP BY I.Codigo, I.CGC_CPF ,I.Razao_Social, P.Codigo, P.Codigo' +
        '_Cliente, P.NR_DECLARACAO_IMP, P.DT_REGISTRO_DI, U.Nome_Completo' +
        ', U.Email, P.NR_DECLARACAO_IMPC, P.DT_REGISTRO_DIC, [E].Razao_So' +
        'cial, F.Descricao, PRI.Banco, PRI.Agencia, PRI.Conta_Corrente, P' +
        'RI.II, PRI.IPI, PRI.Taxa_SISCOMEX, PRI.Bancoc, PRI.Agenciac, PRI' +
        '.Conta_Correntec, PRI.IIc, PRI.IPIc, PRI.Taxa_SISCOMEXc, PRI.Env' +
        'iou_adcc, PRI.Enviou_adcc_c, PRI.Enviou_adr, PRI.Enviou_adr_c, C' +
        '.Descricao, LI.Descricao, P.Tipo, TP.DESCRICAO, P.Tipo_Declaraca' +
        'o, TTD.Descricao, P.Pag_proporcional, US.Nome_Completo, US.Email'
      'ORDER BY I.Razao_Social, P.Codigo'
      '')
    Left = 272
    Top = 120
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
    object qrADRCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrADRcliente: TStringField
      FieldName = 'cliente'
      FixedChar = True
      Size = 60
    end
    object qrADRref_ms: TStringField
      FieldName = 'ref_ms'
      FixedChar = True
      Size = 8
    end
    object qrADRref_empresa: TStringField
      FieldName = 'ref_empresa'
      FixedChar = True
      Size = 60
    end
    object qrADRdi: TStringField
      FieldName = 'di'
      FixedChar = True
      Size = 10
    end
    object qrADRdt_reg: TStringField
      FieldName = 'dt_reg'
      FixedChar = True
      Size = 8
    end
    object qrADRresp_ms: TStringField
      FieldName = 'resp_ms'
      FixedChar = True
      Size = 45
    end
    object qrADRemail_resp_ms: TStringField
      FieldName = 'email_resp_ms'
      FixedChar = True
      Size = 50
    end
    object qrADRdic: TStringField
      FieldName = 'dic'
      FixedChar = True
      Size = 10
    end
    object qrADRdt_regc: TStringField
      FieldName = 'dt_regc'
      FixedChar = True
      Size = 8
    end
    object qrADRms: TStringField
      FieldName = 'ms'
      FixedChar = True
      Size = 70
    end
    object qrADRqfilial: TStringField
      FieldName = 'qfilial'
      FixedChar = True
      Size = 50
    end
    object qrADRBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object qrADRAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object qrADRConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object qrADRII: TFloatField
      FieldName = 'II'
    end
    object qrADRIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrADRTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object qrADRBancoc: TStringField
      FieldName = 'Bancoc'
      FixedChar = True
      Size = 5
    end
    object qrADRAgenciac: TStringField
      FieldName = 'Agenciac'
      FixedChar = True
      Size = 5
    end
    object qrADRConta_Correntec: TStringField
      FieldName = 'Conta_Correntec'
      FixedChar = True
      Size = 8
    end
    object qrADRIIc: TFloatField
      FieldName = 'IIc'
    end
    object qrADRIPIc: TFloatField
      FieldName = 'IPIc'
    end
    object qrADRTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object qrADREnviou_adcc: TIntegerField
      FieldName = 'Enviou_adcc'
    end
    object qrADREnviou_adcc_c: TIntegerField
      FieldName = 'Enviou_adcc_c'
    end
    object qrADREnviou_adr: TIntegerField
      FieldName = 'Enviou_adr'
    end
    object qrADREnviou_adr_c: TIntegerField
      FieldName = 'Enviou_adr_c'
    end
    object qrADRqcontrato: TStringField
      FieldName = 'qcontrato'
      FixedChar = True
      Size = 50
    end
    object qrADRqlocal: TStringField
      FieldName = 'qlocal'
      FixedChar = True
      Size = 250
    end
    object qrADRTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrADRqtipo: TStringField
      FieldName = 'qtipo'
      FixedChar = True
      Size = 35
    end
    object qrADRqtipodecl: TStringField
      FieldName = 'qtipodecl'
      FixedChar = True
      Size = 2
    end
    object qrADRqdecl: TStringField
      FieldName = 'qdecl'
      FixedChar = True
      Size = 120
    end
    object qrADRPag_proporcional: TIntegerField
      FieldName = 'Pag_proporcional'
    end
    object qrADRNomeSupervisor: TStringField
      FieldName = 'NomeSupervisor'
      FixedChar = True
      Size = 45
    end
    object qrADREmailSupervisor: TStringField
      FieldName = 'EmailSupervisor'
      FixedChar = True
      Size = 50
    end
    object qrADRCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
  end
  object qrItens: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.NR_DECLARACAO_IMP AS DI, Cast([Adicao] as integer) AS v' +
        'ad, Cast([Seq_Adicao] as integer) AS vseq, PTC.Taxa_conversao, F' +
        '.Incoterm, TM.DESCRICAO AS qmoeda, TIF.Adicao, TIF.Seq_Adicao, S' +
        'um(IFA.Peso_Total_Acertado) AS SomaDePeso_Total_Acertado, IFA.Va' +
        'lor_Aduaneiro AS FOB, [Valor_Aduaneiro]*PTC.taxa_conversao AS FO' +
        'B_em_reais, [Valor_Aduaneiro]+(Sum([Rateio_Frete_prepaid]*IFA.qu' +
        'antidade)+Sum([Rateio_Frete_collect]*IFA.quantidade)-Sum([Rateio' +
        '_Frete_ternac]*IFA.quantidade))+Sum([Rateio_Seguro]*IFA.quantida' +
        'de) AS CIF, ([Valor_Aduaneiro]+(Sum([Rateio_Frete_prepaid]*IFA.q' +
        'uantidade)+Sum([Rateio_Frete_collect]*IFA.quantidade)-Sum([Ratei' +
        'o_Frete_ternac]*IFA.quantidade))+Sum([Rateio_Seguro]*IFA.quantid' +
        'ade))*PTC.taxa_conversao AS CIF_em_reas, IFA.Valor_mercadoria, I' +
        'FA.[Valor_Unitario] AS Valunit, IFA.[Valor_Total] AS Valtot, IFA' +
        '.Peso_Unitario_Acertado AS pesounit, IFA.Peso_Total_Acertado AS ' +
        'pesototal, Sum(IFA.VMLE) AS SomaDeVMLE, IFA.Produto, Substring([' +
        'Descricao_Produto],1,255) AS qDescricao_Produto, IFA.Quantidade,' +
        ' IFA.NCM, IFA.Destaque_NCM, IFA.NALADI, Sum([Rateio_Frete_prepai' +
        'd]*IFA.quantidade) AS freteprepaid, Sum([Rateio_Frete_prepaid]*I' +
        'FA.quantidade)*PTC.taxa_conversao AS freteprepaid_em_reais, Sum(' +
        '[Rateio_Frete_collect]*IFA.quantidade) AS fretecollect, Sum([Rat' +
        'eio_Frete_collect]*IFA.quantidade)*PTC.taxa_conversao AS freteco' +
        'llect_em_reais, Sum([Rateio_Frete_ternac]*IFA.quantidade) AS fre' +
        'teternac, Sum([Rateio_Frete_ternac]*IFA.quantidade)*PTC.taxa_con' +
        'versao AS freteternac_em_reais, Sum([Rateio_Seguro]*IFA.quantida' +
        'de) AS seguro, Sum([Rateio_Seguro]*IFA.quantidade)*PTC.taxa_conv' +
        'ersao AS seguro_em_reais, TRT.DESCRICAO AS Regime_tri, TIF.Aliq_' +
        'NCM_II, TIF.Regime_Tributacao_II, TIF.Regime_Tributacao_IPI, TIF' +
        '.Aliq_NCM_IPI, TIF.Valor_II_a_recolher, [Valor_II_a_recolher]*PT' +
        'C.taxa_conversao AS Valor_II_a_recolher_em_reais, TIF.Valor_IPI_' +
        'a_recolher, TIF.Valor_IPI_a_recolher*PTC.taxa_conversao AS Valor' +
        '_IPI_a_recolher_em_reais, IFA.VMLE AS fob2, IFA.VMLE*PTC.taxa_co' +
        'nversao AS FOB_em_reais2, TIF.Ato_Concessorio'
      
        'FROM (((((Processos AS P INNER JOIN Faturas AS F ON (P.Codigo = ' +
        'F.Processo) AND (P.Filial = F.Filial) AND (P.Empresa = F.Empresa' +
        ')) INNER JOIN Processos_Taxas_Conversao AS PTC ON (F.Moeda = PTC' +
        '.Moeda) AND (F.Processo = PTC.Processo) AND (F.Filial = PTC.Fili' +
        'al) AND (F.Empresa = PTC.Empresa)) INNER JOIN ItensFaturas AS IF' +
        'A ON (F.Codigo = IFA.Fatura) AND (F.Processo = IFA.Processo) AND' +
        ' (F.Filial = IFA.Filial) AND (F.Empresa = IFA.Empresa)) INNER JO' +
        'IN Tributacao_Item_Fatura AS TIF ON (IFA.Sequencial = TIF.Sequen' +
        'cial_Item) AND (IFA.Fatura = TIF.Fatura) AND (IFA.Processo = TIF' +
        '.Processo) AND (IFA.Filial = TIF.Filial) AND (IFA.Empresa = TIF.' +
        'Empresa)) INNER JOIN TAB_REG_TRIBUTARIO AS TRT ON TIF.Regime_Tri' +
        'butacao_II = TRT.CODIGO) INNER JOIN TAB_MOEDA AS TM ON PTC.Moeda' +
        ' = TM.CODIGO'
      'WHERE P.Empresa = :p1 AND P.Filial = :p2 AND P.Codigo = :proc'
      
        'GROUP BY P.NR_DECLARACAO_IMP, Cast([Adicao] as integer), Cast([S' +
        'eq_Adicao] as integer), PTC.Taxa_conversao, F.Incoterm, TM.DESCR' +
        'ICAO, TIF.Adicao, TIF.Seq_Adicao, IFA.Valor_Aduaneiro, [Valor_Ad' +
        'uaneiro]*PTC.taxa_conversao, IFA.Valor_mercadoria, IFA.[Valor_Un' +
        'itario], IFA.[Valor_Total], IFA.Peso_Unitario_Acertado, IFA.Peso' +
        '_Total_Acertado, IFA.Produto, Substring([Descricao_Produto],1,25' +
        '5), IFA.Quantidade, IFA.NCM, IFA.Destaque_NCM, IFA.NALADI, TRT.D' +
        'ESCRICAO, TIF.Aliq_NCM_II, TIF.Regime_Tributacao_II, TIF.Regime_' +
        'Tributacao_IPI, TIF.Aliq_NCM_IPI, TIF.Valor_II_a_recolher, [Valo' +
        'r_II_a_recolher]*PTC.taxa_conversao, TIF.Valor_IPI_a_recolher, T' +
        'IF.Valor_IPI_a_recolher*PTC.taxa_conversao, IFA.VMLE, IFA.VMLE*P' +
        'TC.taxa_conversao, TIF.Ato_Concessorio'
      
        'ORDER BY P.NR_DECLARACAO_IMP, Cast([Adicao] as integer), Cast([S' +
        'eq_Adicao] as integer);')
    Left = 416
    Top = 64
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
      end
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
        Value = '00004/08'
      end>
    object qrItensDI: TStringField
      FieldName = 'DI'
      FixedChar = True
      Size = 10
    end
    object qrItensvad: TIntegerField
      FieldName = 'vad'
    end
    object qrItensvseq: TIntegerField
      FieldName = 'vseq'
    end
    object qrItensTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object qrItensIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object qrItensqmoeda: TStringField
      FieldName = 'qmoeda'
      FixedChar = True
      Size = 120
    end
    object qrItensAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object qrItensSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object qrItensSomaDePeso_Total_Acertado: TFloatField
      FieldName = 'SomaDePeso_Total_Acertado'
    end
    object qrItensFOB: TFloatField
      FieldName = 'FOB'
    end
    object qrItensFOB_em_reais: TFloatField
      FieldName = 'FOB_em_reais'
    end
    object qrItensCIF: TFloatField
      FieldName = 'CIF'
    end
    object qrItensCIF_em_reas: TFloatField
      FieldName = 'CIF_em_reas'
    end
    object qrItensValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object qrItensValunit: TFloatField
      FieldName = 'Valunit'
    end
    object qrItensValtot: TFloatField
      FieldName = 'Valtot'
    end
    object qrItenspesounit: TFloatField
      FieldName = 'pesounit'
    end
    object qrItenspesototal: TFloatField
      FieldName = 'pesototal'
    end
    object qrItensSomaDeVMLE: TFloatField
      FieldName = 'SomaDeVMLE'
    end
    object qrItensProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 25
    end
    object qrItensqDescricao_Produto: TMemoField
      FieldName = 'qDescricao_Produto'
      BlobType = ftMemo
    end
    object qrItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qrItensNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object qrItensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object qrItensNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object qrItensfreteprepaid: TFloatField
      FieldName = 'freteprepaid'
    end
    object qrItensfreteprepaid_em_reais: TFloatField
      FieldName = 'freteprepaid_em_reais'
    end
    object qrItensfretecollect: TFloatField
      FieldName = 'fretecollect'
    end
    object qrItensfretecollect_em_reais: TFloatField
      FieldName = 'fretecollect_em_reais'
    end
    object qrItensfreteternac: TFloatField
      FieldName = 'freteternac'
    end
    object qrItensfreteternac_em_reais: TFloatField
      FieldName = 'freteternac_em_reais'
    end
    object qrItensseguro: TFloatField
      FieldName = 'seguro'
    end
    object qrItensseguro_em_reais: TFloatField
      FieldName = 'seguro_em_reais'
    end
    object qrItensRegime_tri: TStringField
      FieldName = 'Regime_tri'
      FixedChar = True
      Size = 120
    end
    object qrItensAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object qrItensRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object qrItensRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object qrItensAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object qrItensValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object qrItensValor_II_a_recolher_em_reais: TFloatField
      FieldName = 'Valor_II_a_recolher_em_reais'
    end
    object qrItensValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object qrItensValor_IPI_a_recolher_em_reais: TFloatField
      FieldName = 'Valor_IPI_a_recolher_em_reais'
    end
    object qrItensfob2: TFloatField
      FieldName = 'fob2'
    end
    object qrItensFOB_em_reais2: TFloatField
      FieldName = 'FOB_em_reais2'
    end
    object qrItensAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
  end
  object qrConhecimento: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT TAB_VIA_TRANSPORTE.Descricao AS qtransporte, Transportado' +
        'res.Razao_Social AS qtransportador, C.Embarcacao AS qembarcacao,' +
        ' C.Local AS qlocal, C.Data AS qdataembarque, C.Numerodoccarga AS' +
        ' qconhecimento, Tipo_Doc_Carga.descricao AS qtipo, C.Numeromaste' +
        'r AS qmaster, Tipo_Utilizacao.DESCRICAO AS qutilizacao, TAB_PAIS' +
        '.DESCRICAO AS qpaisprocedencia, TAB_URF.DESCRICAO AS qurfentrada' +
        ', C.Data_Chegada_URF_Cheg AS qdataurfchegada, TAB_MOEDA.DESCRICA' +
        'O AS qmoedafrete, C.Frete_Prepaid, C.Frete_Collect, C.Frete_Ter_' +
        'Nac, TAB_MOEDA_1.DESCRICAO AS qmoedaseguro, C.Valor_Seguro, C.Pe' +
        'so_Liquido, C.Peso_Bruto, TAB_URF_1.DESCRICAO AS qurfdespacho, T' +
        'AB_REC_ALFANDEGADO_1.DESCRICAO AS qrecinto, TAB_RECINTO_SETORES_' +
        'IMPORTACAO.Nome AS qsetor, C.Data_Chegada_URF_Desp AS qdatadespa' +
        'cho, C.Numeromanifesto AS qdocentrada, Tipo_Doc_Chegada.descrica' +
        'o AS qtipodocentrada, C.Codigo_Presenca_Carga AS qpresencacarga'
      
        'FROM ((((((((((((Conhecimento_Processo AS C LEFT JOIN TAB_VIA_TR' +
        'ANSPORTE ON C.Via = TAB_VIA_TRANSPORTE.Codigo) LEFT JOIN Transpo' +
        'rtadores ON (C.Transportador = Transportadores.Codigo) AND (C.Fi' +
        'lial = Transportadores.Filial) AND (C.Empresa = Transportadores.' +
        'Empresa)) LEFT JOIN Tipo_Utilizacao ON C.Utilizacao = Tipo_Utili' +
        'zacao.CODIGO) LEFT JOIN Tipo_Doc_Carga ON (C.Tipodoccarga = Tipo' +
        '_Doc_Carga.codigo) AND (C.Via = Tipo_Doc_Carga.via)) LEFT JOIN T' +
        'AB_PAIS ON C.Pais_Procedencia = TAB_PAIS.CODIGO) LEFT JOIN TAB_R' +
        'EC_ALFANDEGADO ON C.URF_chegada = TAB_REC_ALFANDEGADO.CODIGO) LE' +
        'FT JOIN TAB_MOEDA ON C.Moeda_Frete = TAB_MOEDA.CODIGO) LEFT JOIN' +
        ' TAB_MOEDA AS TAB_MOEDA_1 ON C.Moeda_Seguro = TAB_MOEDA_1.CODIGO' +
        ') LEFT JOIN TAB_URF ON C.URF_chegada = TAB_URF.CODIGO) LEFT JOIN' +
        ' TAB_URF AS TAB_URF_1 ON C.URF_Despacho = TAB_URF_1.CODIGO) LEFT' +
        ' JOIN TAB_RECINTO_SETORES_IMPORTACAO ON (C.Setor_Alfandegario = ' +
        'TAB_RECINTO_SETORES_IMPORTACAO.Setor) AND (C.Recinto_Alfandegari' +
        'o = TAB_RECINTO_SETORES_IMPORTACAO.Recinto) AND (C.URF_Despacho ' +
        '= TAB_RECINTO_SETORES_IMPORTACAO.Orgao)) LEFT JOIN TAB_REC_ALFAN' +
        'DEGADO AS TAB_REC_ALFANDEGADO_1 ON C.Recinto_Alfandegario = TAB_' +
        'REC_ALFANDEGADO_1.CODIGO) LEFT JOIN Tipo_Doc_Chegada ON C.Tipoma' +
        'nifesto = Tipo_Doc_Chegada.codigo'
      
        'WHERE C.Empresa = :emp AND C.Filial = :filial AND C.Processo = :' +
        'proc')
    Left = 344
    Top = 120
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
    object qrConhecimentoqtransporte: TStringField
      FieldName = 'qtransporte'
      Size = 120
    end
    object qrConhecimentoqtransportador: TStringField
      FieldName = 'qtransportador'
      Size = 60
    end
    object qrConhecimentoqembarcacao: TStringField
      FieldName = 'qembarcacao'
      Size = 30
    end
    object qrConhecimentoqlocal: TStringField
      FieldName = 'qlocal'
      Size = 50
    end
    object qrConhecimentoqdataembarque: TDateTimeField
      FieldName = 'qdataembarque'
    end
    object qrConhecimentoqconhecimento: TStringField
      FieldName = 'qconhecimento'
      Size = 18
    end
    object qrConhecimentoqtipo: TStringField
      FieldName = 'qtipo'
      Size = 25
    end
    object qrConhecimentoqmaster: TStringField
      FieldName = 'qmaster'
      Size = 18
    end
    object qrConhecimentoqutilizacao: TStringField
      FieldName = 'qutilizacao'
      Size = 25
    end
    object qrConhecimentoqpaisprocedencia: TStringField
      FieldName = 'qpaisprocedencia'
      Size = 120
    end
    object qrConhecimentoqurfentrada: TStringField
      FieldName = 'qurfentrada'
      Size = 120
    end
    object qrConhecimentoqdataurfchegada: TDateTimeField
      FieldName = 'qdataurfchegada'
    end
    object qrConhecimentoqmoedafrete: TStringField
      FieldName = 'qmoedafrete'
      Size = 120
    end
    object qrConhecimentoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object qrConhecimentoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object qrConhecimentoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object qrConhecimentoqmoedaseguro: TStringField
      FieldName = 'qmoedaseguro'
      Size = 120
    end
    object qrConhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object qrConhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object qrConhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object qrConhecimentoqurfdespacho: TStringField
      FieldName = 'qurfdespacho'
      Size = 120
    end
    object qrConhecimentoqrecinto: TStringField
      FieldName = 'qrecinto'
      Size = 120
    end
    object qrConhecimentoqsetor: TStringField
      FieldName = 'qsetor'
      Size = 30
    end
    object qrConhecimentoqdatadespacho: TDateTimeField
      FieldName = 'qdatadespacho'
    end
    object qrConhecimentoqdocentrada: TStringField
      FieldName = 'qdocentrada'
      Size = 15
    end
    object qrConhecimentoqtipodocentrada: TStringField
      FieldName = 'qtipodocentrada'
      Size = 25
    end
    object qrConhecimentoqpresencacarga: TStringField
      FieldName = 'qpresencacarga'
      Size = 50
    end
  end
  object qrTaxas: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PTC.Processo, PTC.Moeda, TM.DESCRICAO, PTC.Taxa_conversao' +
        ', PTC.Taxa_conversaoc'
      
        'FROM Processos_Taxas_Conversao AS PTC INNER JOIN TAB_MOEDA AS TM' +
        ' ON PTC.Moeda = TM.CODIGO'
      
        'WHERE PTC.Empresa = :emp AND PTC.Filial = :filial AND PTC.Proces' +
        'so = :proc')
    Left = 304
    Top = 64
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
    object qrTaxasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Processo'
      Size = 8
    end
    object qrTaxasMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Moeda'
      Size = 3
    end
    object qrTaxasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      Size = 120
    end
    object qrTaxasTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversao'
    end
    object qrTaxasTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversaoc'
    end
  end
  object qrEmbalagem: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TipoEmbalagem, DescricaoEmbalagem, Quantidade'
      'FROM Embalagem_Processo'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 480
    Top = 64
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
    object qrEmbalagemTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.TipoEmbalagem'
      Size = 2
    end
    object qrEmbalagemDescricaoEmbalagem: TStringField
      FieldName = 'DescricaoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.DescricaoEmbalagem'
      Size = 50
    end
    object qrEmbalagemQuantidade: TStringField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Quantidade'
      Size = 5
    end
  end
  object qrFaturas: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT F.Processo AS q_pro, F.Codigo AS q_fat, F.Incoterm AS q_i' +
        'nc, [E].Razao_Social AS q_exp, [E].Endereco AS q_end, [E].Comple' +
        'mento AS q_com, [E].Bairro AS q_bai, [E].Cidade AS q_cid, [E].Es' +
        'tado AS q_est, TM.DESCRICAO AS q_moe, F.Valor_Total AS q_val, TM' +
        '.CODIGO AS Moeda'
      
        'FROM (Faturas AS F LEFT JOIN Exportadores AS E ON (F.Empresa = [' +
        'E].Empresa) AND (F.Filial = [E].Filial) AND (F.Exportador = [E].' +
        'Codigo)) LEFT JOIN TAB_MOEDA AS TM ON F.Moeda = TM.CODIGO'
      
        'WHERE F.Empresa = :emp AND F.Filial = :filial AND F.Processo = :' +
        'proc')
    Left = 360
    Top = 64
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
    object qrFaturasq_pro: TStringField
      FieldName = 'q_pro'
      Size = 8
    end
    object qrFaturasq_fat: TStringField
      FieldName = 'q_fat'
      Size = 30
    end
    object qrFaturasq_inc: TStringField
      FieldName = 'q_inc'
      Size = 3
    end
    object qrFaturasq_exp: TStringField
      FieldName = 'q_exp'
      Size = 60
    end
    object qrFaturasq_end: TStringField
      FieldName = 'q_end'
      Size = 40
    end
    object qrFaturasq_com: TStringField
      FieldName = 'q_com'
      Size = 21
    end
    object qrFaturasq_bai: TStringField
      FieldName = 'q_bai'
      Size = 25
    end
    object qrFaturasq_cid: TStringField
      FieldName = 'q_cid'
      Size = 25
    end
    object qrFaturasq_est: TStringField
      FieldName = 'q_est'
      Size = 25
    end
    object qrFaturasq_moe: TStringField
      FieldName = 'q_moe'
      Size = 120
    end
    object qrFaturasq_val: TFloatField
      FieldName = 'q_val'
    end
    object qrFaturasMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
  end
  object qrICMS: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerario, Data_Registro, Valor_Registrado, Valor_Contabi' +
        'lizado, Contabilizado'
      'FROM Numerarios_Processos'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc A' +
        'ND Numerario In ("ICMS","FECP") AND Contabilizado = "SIM"')
    Left = 552
    Top = 64
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
    object qrICMSNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      Size = 4
    end
    object qrICMSData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Registro'
    end
    object qrICMSValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Registrado'
    end
    object qrICMSValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
    object qrICMSContabilizado: TStringField
      FieldName = 'Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Contabilizado'
      Size = 3
    end
  end
  object qrUsuariosFinan: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Email, nome_completo'
      '   FROM Usuarios'
      
        'WHERE Ativo = 1 AND Email_aviso_finan = 1 AND Empresa = :emp AND' +
        ' Filial = :filial')
    Left = 136
    Top = 120
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
    object qrUsuariosFinanEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrUsuariosFinannome_completo: TStringField
      FieldName = 'nome_completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
  end
  object alADR: TActionList
    Left = 112
    Top = 64
    object acInicializa: TAction
      Caption = 'Iniciar o ADR'
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
    object acGeraDI: TAction
      Caption = 'acGeraDI'
      OnExecute = acGeraDIExecute
    end
    object acGeraDIConsumo: TAction
      Caption = 'acGeraDIConsumo'
      OnExecute = acGeraDIConsumoExecute
    end
    object acVerificaEnvios: TAction
      Caption = 'acVerificaEnvios'
      OnExecute = acVerificaEnviosExecute
    end
    object acEnviaEmail: TAction
      Caption = 'acEnviaEmail'
      OnExecute = acEnviaEmailExecute
    end
    object acEnviarCC: TAction
      Caption = 'acEnviarCC'
      OnExecute = acEnviarCCExecute
    end
    object acFinaliza: TAction
      Caption = 'Finaliza o ADR'
      OnExecute = acFinalizaExecute
    end
  end
  object qrParametros: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, PATH_SERVER'
      'FROM Parametros')
    Left = 168
    Top = 64
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
    object qrParametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Origin = 'DBNMSCOMEX.Parametros.PATH_SERVER'
      Size = 100
    end
  end
  object tbEmailAuto: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Email_Auto'
    Left = 240
    Top = 64
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
  object qrUsuariosOper: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Email, nome_completo'
      'FROM Usuarios'
      
        'WHERE Email_aviso_oper = 1 AND Empresa = :emp AND Filial = :fili' +
        'al')
    Left = 48
    Top = 120
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
    object qrUsuariosOperEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrUsuariosOpernome_completo: TStringField
      FieldName = 'nome_completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
  end
  object qrEmailAviso: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Emails_avisos'
      'WHERE ATIVO = 1 AND Empresa = :emp AND Filial = :filial'
      'AND Importador = :imp AND Tipo = '#39'ADR'#39)
    Left = 216
    Top = 120
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
        Name = 'imp'
        ParamType = ptUnknown
      end>
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
    object qrEmailAvisoHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
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
    object qrEmailAvisoParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
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
  object qrArrumaADR: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Tributacao_Item_Fatura SET Seq_Adicao = 0'
      'WHERE Seq_Adicao Is Null')
    Left = 680
    Top = 64
  end
  object tmIniciar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmIniciarTimer
    Left = 48
    Top = 216
  end
  object Q_ICMS_TRATA: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.T' +
        'ratamento_Tributario'
      'FROM Tributacao_Item_Fatura'
      
        'WHERE (((Tributacao_Item_Fatura.Processo)=:QPRO) AND ((Tributaca' +
        'o_Item_Fatura.Tratamento_Tributario)="" Or (Tributacao_Item_Fatu' +
        'ra.Tratamento_Tributario) Is Null));')
    Left = 440
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'QPRO'
        ParamType = ptUnknown
        Value = '01216/06'
      end>
    object Q_ICMS_TRATAProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      Size = 8
    end
    object Q_ICMS_TRATATratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Tratamento_Tributario'
      Size = 1
    end
  end
  object qrEmailAviso_Plataforma: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Emails_avisos'
      
        'WHERE ativo = 1 and Tipo = :tipo AND Plataforma = :pla AND Impor' +
        'tador = :imp'
      '')
    Left = 520
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pla'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'imp'
        ParamType = ptUnknown
      end>
    object qrEmailAviso_PlataformaEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrEmailAviso_PlataformaNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrEmailAviso_PlataformaParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrEmailAviso_PlataformaHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
    object qrEmailAviso_PlataformaPlataforma: TStringField
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Emails_avisos.Plataforma'
      FixedChar = True
      Size = 100
    end
    object qrEmailAviso_PlataformaEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Emails_avisos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrEmailAviso_PlataformaFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Emails_avisos.Filial'
      FixedChar = True
      Size = 4
    end
    object qrEmailAviso_PlataformaImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Importador'
      FixedChar = True
      Size = 4
    end
    object qrEmailAviso_PlataformaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Tipo'
      FixedChar = True
      Size = 8
    end
    object qrEmailAviso_PlataformaPara: TBooleanField
      FieldName = 'Para'
      Origin = 'DBNMSCOMEX.Emails_avisos.Para'
    end
    object qrEmailAviso_PlataformaCc: TBooleanField
      FieldName = 'Cc'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cc'
    end
    object qrEmailAviso_PlataformaCCo: TBooleanField
      FieldName = 'CCo'
      Origin = 'DBNMSCOMEX.Emails_avisos.CCo'
    end
    object qrEmailAviso_PlataformaAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Ativo'
    end
  end
  object qrPlataforma: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        ' select top 1 pl.Plataforma from  Faturas as F left join Platafo' +
        'rmas as pl on F.FK_Plataforma = pl.PK_Plataforma '
      ' where Processo = :proc'
      ' ')
    Left = 680
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptInput
      end>
    object qrPlataformaPlataforma: TStringField
      FieldName = 'Plataforma'
      FixedChar = True
      Size = 30
    end
  end
end
