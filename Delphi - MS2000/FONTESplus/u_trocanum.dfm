object f_trocanum: Tf_trocanum
  Left = 229
  Top = 194
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Troca Numeração de Processos'
  ClientHeight = 116
  ClientWidth = 313
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 138
    Height = 13
    Caption = 'Digite o Número do Processo'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 165
    Height = 13
    Caption = 'Digite o novo Número do Processo'
  end
  object Label3: TLabel
    Left = 0
    Top = 103
    Width = 313
    Height = 13
    Align = alBottom
    AutoSize = False
    Caption = 'Aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object me_proc1: TMaskEdit
    Left = 184
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object me_proc2: TMaskEdit
    Left = 184
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object b_altera: TBitBtn
    Left = 232
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Troca'
    TabOrder = 2
    OnClick = b_alteraClick
    Kind = bkOK
  end
  object t_parametros: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 8
    Top = 4
    object t_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object t_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object t_parametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
  end
  object ds_parametros: TDataSource
    DataSet = t_parametros
    Left = 16
    Top = 12
  end
  object t_processos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Processos'
    Left = 48
    Top = 4
    object t_processosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_processosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_processosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object t_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object t_processosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object t_processosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
    object t_processosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object t_processosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object t_processosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object t_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object t_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      FixedChar = True
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object t_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object t_processosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object t_processosCanal: TStringField
      FieldName = 'Canal'
      FixedChar = True
      Size = 1
    end
    object t_processosFiscal: TStringField
      FieldName = 'Fiscal'
      FixedChar = True
    end
    object t_processosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 3
    end
    object t_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object t_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      FixedChar = True
      Size = 1
    end
    object t_processosIN_MOEDA_UNICA: TIntegerField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object t_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object t_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      FixedChar = True
      Size = 1
    end
    object t_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      FixedChar = True
    end
    object t_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object t_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object t_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      FixedChar = True
      Size = 4
    end
    object t_processosProcurador: TStringField
      FieldName = 'Procurador'
      FixedChar = True
      Size = 4
    end
    object t_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
      FixedChar = True
    end
    object t_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object t_processosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object t_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object t_processosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object t_processosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object t_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      FixedChar = True
      Size = 1
    end
    object t_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      FixedChar = True
      Size = 5
    end
    object t_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object t_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
      FixedChar = True
    end
    object t_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      FixedChar = True
      Size = 18
    end
    object t_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      FixedChar = True
      Size = 200
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
    object t_processosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object t_processosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      FixedChar = True
      Size = 10
    end
    object t_processosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object t_processosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      FixedChar = True
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      FixedChar = True
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      FixedChar = True
      Size = 10
    end
    object t_processosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object t_processosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object t_processosCanalC: TStringField
      FieldName = 'CanalC'
      FixedChar = True
      Size = 1
    end
    object t_processosFiscalC: TStringField
      FieldName = 'FiscalC'
      FixedChar = True
    end
    object t_processosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      FixedChar = True
      Size = 1
    end
    object t_processosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object t_processosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object t_processosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object t_processosident_meio1: TStringField
      FieldName = 'ident_meio1'
      FixedChar = True
      Size = 100
    end
    object t_processosident_meio2: TStringField
      FieldName = 'ident_meio2'
      FixedChar = True
      Size = 100
    end
    object t_processosCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object t_processosCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object t_processosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object t_processosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object t_processosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      FixedChar = True
      Size = 5
    end
    object t_processosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object t_processosUrgente: TIntegerField
      FieldName = 'Urgente'
    end
    object t_processosconsolidado: TIntegerField
      FieldName = 'consolidado'
    end
    object t_processosPag_proporcional: TIntegerField
      FieldName = 'Pag_proporcional'
    end
    object t_processosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object t_processosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object t_processosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object t_processosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object t_processosDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 30
    end
    object t_processosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      FixedChar = True
      Size = 30
    end
    object t_processosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object t_processosFaturado: TIntegerField
      FieldName = 'Faturado'
    end
    object t_processosFechado: TIntegerField
      FieldName = 'Fechado'
    end
    object t_processosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      FixedChar = True
      Size = 4
    end
    object t_processosProcurador2: TStringField
      FieldName = 'Procurador2'
      FixedChar = True
      Size = 4
    end
    object t_processosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object t_processosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object t_processosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      FixedChar = True
      Size = 100
    end
    object t_processosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      FixedChar = True
      Size = 10
    end
    object t_processosvinc_processo: TIntegerField
      FieldName = 'vinc_processo'
    end
    object t_processosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      FixedChar = True
      Size = 8
    end
    object t_processossem_nfs: TIntegerField
      FieldName = 'sem_nfs'
    end
  end
  object ds_processos: TDataSource
    DataSet = t_processos
    Left = 64
    Top = 12
  end
  object Query1: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Processos SET Processos.Codigo = "teste45"'
      
        'WHERE (((Processos.Empresa)="1") AND ((Processos.Filial)="RJO") ' +
        'AND ((Processos.Codigo)="teste01"));')
    Left = 80
    Top = 4
  end
end
