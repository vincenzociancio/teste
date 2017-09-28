object f_distribuiC: Tf_distribuiC
  Left = 212
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Distribuição Comercial de Processos'
  ClientHeight = 401
  ClientWidth = 730
  Color = 10514464
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
  object Label3: TLabel
    Left = 472
    Top = 8
    Width = 180
    Height = 13
    Caption = 'Processos em Andamento por Usuário'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 126
    Top = 72
    Width = 86
    Height = 13
    Caption = 'Localiza Processo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 97
    Width = 458
    Height = 264
    Color = 10514464
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 70
      Width = 81
      Height = 13
      Caption = 'Responsável MS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 111
      Width = 97
      Height = 13
      Caption = 'Responsável Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Cliente :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 56
      Top = 16
      Width = 369
      Height = 17
      DataField = 'Razao_Social'
      DataSource = ds_imp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 40
      Width = 50
      Height = 13
      Caption = 'Processo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 64
      Top = 40
      Width = 369
      Height = 17
      DataField = 'Codigo'
      DataSource = ds_processos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 86
      Width = 441
      Height = 21
      DataField = 'Responsavel_EmpresaC'
      DataSource = ds_processos
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = ds_usu
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 8
      Top = 128
      Width = 441
      Height = 21
      DataField = 'Responsavel_Importador'
      DataSource = ds_processos
      KeyField = 'Nome'
      ListField = 'Nome_completo'
      ListSource = ds_resp
      TabOrder = 1
    end
    object b_ok: TBitBtn
      Left = 372
      Top = 160
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
      OnClick = b_okClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBCANCEL: TBitBtn
      Left = 292
      Top = 160
      Width = 75
      Height = 25
      TabOrder = 3
      OnClick = BBCANCELClick
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 472
    Top = 24
    Width = 249
    Height = 369
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 247
      Height = 363
      Align = alTop
      DataSource = ds_contapro
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome_Completo'
          Title.Alignment = taCenter
          Title.Caption = 'Usuário'
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContarDeCodigo'
          Title.Alignment = taCenter
          Title.Caption = 'QTD'
          Width = 29
          Visible = True
        end>
    end
  end
  object e_proc: TEdit
    Left = 217
    Top = 66
    Width = 81
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = e_procChange
  end
  object bb_atualiza: TBitBtn
    Left = 658
    Top = 4
    Width = 66
    Height = 19
    Caption = 'Atualiza'
    TabOrder = 3
    OnClick = bb_atualizaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF33339993707399933333773337F3777FF3399933000339
      9933377333777F3377F3399333707333993337733337333337FF993333333333
      399377F33333F333377F993333303333399377F33337FF333373993333707333
      333377F333777F333333993333101333333377F333777F3FFFFF993333000399
      999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
      99933773FF777F3F777F339993707399999333773F373F77777F333999999999
      3393333777333777337333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object ds_imp: TDataSource
    AutoEdit = False
    DataSet = t_imp
    Left = 69
    Top = 33
  end
  object q_contapro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Nome_Completo, Usuarios.Usuario, Count(Processos' +
        '.Codigo) AS ContarDeCodigo'
      
        'FROM Usuarios LEFT JOIN Processos ON Usuarios.Usuario = Processo' +
        's.Responsavel_Empresac'
      'WHERE (((Usuarios.Nivel)>'#39'0'#39') AND ((Processos.Status)<'#39'1'#39'))'
      'GROUP BY Usuarios.Nome_Completo, Usuarios.Usuario'
      'ORDER BY Count(Processos.Codigo);')
    Left = 336
    Top = 16
    object q_contaproNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object q_contaproUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object q_contaproContarDeCodigo: TIntegerField
      FieldName = 'ContarDeCodigo'
    end
  end
  object ds_contapro: TDataSource
    DataSet = q_contapro
    Left = 376
    Top = 16
  end
  object t_processos: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Processos'
    Left = 104
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
    object t_processosIN_MOEDA_UNICA: TSmallintField
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
    object t_processosUrgente: TSmallintField
      FieldName = 'Urgente'
    end
    object t_processosconsolidado: TSmallintField
      FieldName = 'consolidado'
    end
    object t_processosPag_proporcional: TSmallintField
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
    object t_processosFaturado: TSmallintField
      FieldName = 'Faturado'
    end
    object t_processosFechado: TSmallintField
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
    object t_processosvinc_processo: TSmallintField
      FieldName = 'vinc_processo'
    end
    object t_processosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      FixedChar = True
      Size = 8
    end
  end
  object ds_processos: TDataSource
    DataSet = t_processos
    Left = 105
    Top = 32
  end
  object ds_resp: TDataSource
    DataSet = q_resp
    Left = 152
    Top = 32
  end
  object t_imp: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Importador'
    MasterSource = ds_processos
    TableName = 'Importadores'
    Left = 69
    object t_impEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_impFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_impCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object t_impRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object t_impPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object t_impCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object t_impCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object t_impTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      FixedChar = True
      Size = 1
    end
    object t_impEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object t_impNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object t_impComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object t_impBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object t_impCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object t_impCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object t_impUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object t_impEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object t_impInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object t_impBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object t_impAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object t_impConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object t_impConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object t_impConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object t_implink: TStringField
      FieldName = 'link'
      FixedChar = True
      Size = 50
    end
    object t_impCAE: TStringField
      FieldName = 'CAE'
      FixedChar = True
      Size = 15
    end
    object t_impTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 15
    end
    object t_impAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object t_impAcesso_WEB_MS: TSmallintField
      FieldName = 'Acesso_WEB_MS'
    end
    object t_impAcesso_WEB_CLI: TSmallintField
      FieldName = 'Acesso_WEB_CLI'
    end
    object t_impAcesso_WEB_REC: TSmallintField
      FieldName = 'Acesso_WEB_REC'
    end
    object t_impBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
  end
  object q_usu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Usuario, Usuarios.Nome_Completo, Usuarios.Nivel,' +
        ' Usuarios.ResponsavelC'
      'FROM Usuarios'
      'WHERE (((Usuarios.Nivel)>"0") AND ((Usuarios.ResponsavelC)=1))'
      'ORDER BY Usuarios.Nome_Completo')
    Left = 192
    object q_usuUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object q_usuNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object q_usuNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel'
      FixedChar = True
      Size = 4
    end
    object q_usuResponsavelC: TSmallintField
      FieldName = 'ResponsavelC'
      Origin = 'DBNMSCOMEX.Usuarios.ResponsavelC'
    end
  end
  object ds_usu: TDataSource
    DataSet = q_usu
    Left = 192
    Top = 32
  end
  object q_resp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Responsaveis_por_Importador')
    Left = 152
  end
end
