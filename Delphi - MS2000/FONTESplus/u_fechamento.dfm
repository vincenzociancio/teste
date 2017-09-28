object f_fechamento: Tf_fechamento
  Left = 276
  Top = 210
  ActiveControl = ME_nossaref
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fechamento de Processos'
  ClientHeight = 361
  ClientWidth = 632
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 632
    Height = 328
    Align = alClient
    Color = 10514464
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 20
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
    object lblRotuloCNPJ: TLabel
      Left = 202
      Top = 20
      Width = 36
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblCNPJ: TLabel
      Left = 239
      Top = 20
      Width = 67
      Height = 13
      Caption = 'xxxxxxxxxxx'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 39
      Width = 617
      Height = 285
      DataSource = dsProc
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Cliente'
          Width = 392
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FechadoSTR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Responsavel_Empresa'
          Title.Caption = 'Responsavel'
          Width = 78
          Visible = True
        end>
    end
    object ME_nossaref: TMaskEdit
      Left = 130
      Top = 12
      Width = 58
      Height = 21
      EditMask = '!99999/99;1;_'
      MaxLength = 8
      TabOrder = 1
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label2: TLabel
      Left = 354
      Top = 13
      Width = 272
      Height = 13
      Caption = 'DUPLO CLICK PARA FECHAR OU ABRIR PROCESSOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbAno: TComboBox
      Left = 8
      Top = 6
      Width = 58
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      OnChange = cbAnoChange
    end
  end
  object tbProcessos: TTable
    AutoCalcFields = False
    AfterPost = tbProcessosAfterPost
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Importador <> '#39'0000'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = dsProc
    TableName = 'Processos'
    UpdateMode = upWhereChanged
    Left = 504
    Top = 141
    object tbProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbProcessosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbProcessosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object tbProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object tbProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object tbProcessosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      Size = 60
    end
    object tbProcessosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
    object tbProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object tbProcessosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object tbProcessosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object tbProcessosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object tbProcessosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object tbProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object tbProcessosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object tbProcessosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object tbProcessosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object tbProcessosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object tbProcessosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object tbProcessosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object tbProcessosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object tbProcessosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object tbProcessosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object tbProcessosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object tbProcessosIN_MOEDA_UNICA: TSmallintField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object tbProcessosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object tbProcessosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object tbProcessosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object tbProcessosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object tbProcessosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object tbProcessosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object tbProcessosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object tbProcessosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object tbProcessosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object tbProcessosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object tbProcessosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object tbProcessosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object tbProcessosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object tbProcessosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object tbProcessosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 50
    end
    object tbProcessosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object tbProcessosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object tbProcessosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 50
    end
    object tbProcessosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object tbProcessosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 50
    end
    object tbProcessosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object tbProcessosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 50
    end
    object tbProcessosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 18
    end
    object tbProcessosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 200
    end
    object tbProcessosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object tbProcessosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object tbProcessosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object tbProcessosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object tbProcessosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      Size = 10
    end
    object tbProcessosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object tbProcessosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      Size = 8
    end
    object tbProcessosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      Size = 10
    end
    object tbProcessosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object tbProcessosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      Size = 8
    end
    object tbProcessosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      Size = 8
    end
    object tbProcessosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      Size = 8
    end
    object tbProcessosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object tbProcessosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object tbProcessosCanalC: TStringField
      FieldName = 'CanalC'
      Size = 1
    end
    object tbProcessosFiscalC: TStringField
      FieldName = 'FiscalC'
    end
    object tbProcessosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      Size = 1
    end
    object tbProcessosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object tbProcessosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object tbProcessosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object tbProcessosident_meio1: TStringField
      FieldName = 'ident_meio1'
      Size = 100
    end
    object tbProcessosident_meio2: TStringField
      FieldName = 'ident_meio2'
      Size = 100
    end
    object tbProcessosCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object tbProcessosCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object tbProcessosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object tbProcessosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object tbProcessosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      Size = 5
    end
    object tbProcessosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object tbProcessosUrgente: TSmallintField
      FieldName = 'Urgente'
    end
    object tbProcessosconsolidado: TSmallintField
      FieldName = 'consolidado'
    end
    object tbProcessosPag_proporcional: TSmallintField
      FieldName = 'Pag_proporcional'
    end
    object tbProcessosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object tbProcessosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object tbProcessosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object tbProcessosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object tbProcessosDDE: TStringField
      FieldName = 'DDE'
      Size = 30
    end
    object tbProcessosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 30
    end
    object tbProcessosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object tbProcessosFaturado: TSmallintField
      FieldName = 'Faturado'
    end
    object tbProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object tbProcessosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 4
    end
    object tbProcessosProcurador2: TStringField
      FieldName = 'Procurador2'
      Size = 4
    end
    object tbProcessosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object tbProcessosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object tbProcessosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      Size = 100
    end
    object tbProcessosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      Size = 10
    end
    object tbProcessosvinc_processo: TSmallintField
      FieldName = 'vinc_processo'
    end
    object tbProcessosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      Size = 8
    end
  end
  object dsProcessos: TDataSource
    DataSet = tbProcessos
    Left = 504
    Top = 221
  end
  object dsProc: TDataSource
    DataSet = qrProcessos
    Left = 432
    Top = 221
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Razao_Social AS Cliente, PRO.Data, PRO.Codig' +
        'o AS Processo, PRO.Fechado, case PRO.Fechado when 1 then '#39'Sim'#39' e' +
        'lse '#39'Não'#39' end as FechadoSTR,PRO.Responsavel_Empresa, Importadore' +
        's.Ativo, PRO.empresa, PRO.filial, PRO.CODIGO'
      
        'FROM (Parametros AS PAR LEFT JOIN Processos AS PRO ON (PAR.Filia' +
        'l = PRO.Filial) AND (PAR.Empresa = PRO.Empresa)) LEFT JOIN Impor' +
        'tadores ON (PRO.Empresa = Importadores.Empresa) AND (PRO.Filial ' +
        '= Importadores.Filial) AND (PRO.Importador = Importadores.Codigo' +
        ')'
      'ORDER BY Importadores.Razao_Social, PRO.Data, PRO.Codigo;')
    Left = 432
    Top = 141
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object qrProcessosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object qrProcessosAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object qrProcessosempresa: TStringField
      FieldName = 'empresa'
      Size = 4
    end
    object qrProcessosfilial: TStringField
      FieldName = 'filial'
      Size = 4
    end
    object qrProcessosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object qrProcessosFechadoSTR: TStringField
      FieldName = 'FechadoSTR'
      FixedChar = True
      Size = 3
    end
  end
  object q_CNPJ: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Importadores.CNPJ_CPF_COMPLETO from Processos'
      
        'Inner join Importadores on Processos.Importador = Importadores.c' +
        'odigo'
      'where Processos.Codigo = :pCodigo')
    Left = 576
    Top = 141
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    object q_CNPJCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
end
