object f_custos: Tf_custos
  Left = 310
  Top = 209
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Custos por Processo'
  ClientHeight = 323
  ClientWidth = 581
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
    Width = 581
    Height = 33
    Align = alTop
    Color = clTeal
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
    object lblRotuloCNPJ: TLabel
      Left = 259
      Top = 13
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
      Left = 296
      Top = 13
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
    object btnLocalizar: TSpeedButton
      Left = 215
      Top = 8
      Width = 30
      Height = 21
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
        330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
        830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
        F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
      OnClick = btnLocalizarClick
    end
    object me_nossaref: TMaskEdit
      Left = 148
      Top = 8
      Width = 65
      Height = 21
      EditMask = '!99999/99;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
    end
  end
  object b1: TButton
    Left = 467
    Top = 7
    Width = 113
    Height = 25
    Caption = 'Reprocessa Unitários'
    TabOrder = 1
    Visible = False
    OnClick = b1Click
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 581
    Height = 290
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 212
      Width = 66
      Height = 13
      Caption = 'Tipo de Custo'
    end
    object Label2: TLabel
      Left = 270
      Top = 212
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label3: TLabel
      Left = 362
      Top = 212
      Width = 30
      Height = 13
      Caption = 'Fatura'
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 579
      Height = 208
      Align = alTop
      DataSource = ds_custos
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
          FieldName = 'Tipo_Custo'
          Title.Caption = 'Tipo Custo'
          Width = 246
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fatura'
          Visible = True
        end>
    end
    object DBLC_TIPO: TDBLookupComboBox
      Left = 5
      Top = 228
      Width = 259
      Height = 21
      DataField = 'Tipo_Custo'
      DataSource = ds_custos
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = ds_tiposcustos
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 265
      Top = 228
      Width = 88
      Height = 21
      DataField = 'Valor'
      DataSource = ds_custos
      TabOrder = 2
    end
    object b_novo: TBitBtn
      Left = 8
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
      OnClick = b_novoClick
    end
    object b_grava: TBitBtn
      Left = 88
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Grava'
      TabOrder = 4
      OnClick = b_gravaClick
    end
    object b_exclui: TBitBtn
      Left = 166
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Exclui'
      TabOrder = 5
      OnClick = b_excluiClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 358
      Top = 228
      Width = 195
      Height = 21
      DataField = 'Fatura'
      DataSource = ds_custos
      KeyField = 'Codigo'
      ListField = 'Codigo'
      ListSource = ds_faturas
      TabOrder = 6
    end
  end
  object T_parametros: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 248
    Top = 130
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object T_parametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object T_parametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object T_parametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object T_parametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object T_parametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object T_parametrosHost: TStringField
      FieldName = 'Host'
      Size = 15
    end
    object T_parametrosVersao: TStringField
      FieldName = 'Versao'
      Size = 50
    end
    object T_parametroskeycrypt: TStringField
      FieldName = 'keycrypt'
      Size = 255
    end
    object T_parametrosHost_smtp: TStringField
      FieldName = 'Host_smtp'
      Size = 15
    end
    object T_parametrosPorta_smtp: TSmallintField
      FieldName = 'Porta_smtp'
    end
    object T_parametrosUsuario_smtp: TStringField
      FieldName = 'Usuario_smtp'
      Size = 30
    end
    object T_parametrosSenha_smtp: TStringField
      FieldName = 'Senha_smtp'
      Size = 16
    end
    object T_parametrosNumerador_Transmittal: TStringField
      FieldName = 'Numerador_Transmittal'
      Size = 8
    end
    object T_parametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Size = 100
    end
    object T_parametrosAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object T_parametrosAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object T_parametrosAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object T_parametrosAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object T_parametrosNumerador_Sol_Cheques: TStringField
      FieldName = 'Numerador_Sol_Cheques'
      Size = 50
    end
    object T_parametrosNumerador_Sol_Reg: TStringField
      FieldName = 'Numerador_Sol_Reg'
      Size = 50
    end
    object T_parametrosNumerador_Sol_Tracla: TStringField
      FieldName = 'Numerador_Sol_Tracla'
      Size = 50
    end
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 256
    Top = 162
  end
  object T_processos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Processos'
    Left = 284
    Top = 130
    object T_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_processosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_processosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object T_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object T_processosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_processosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      Size = 60
    end
    object T_processosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
    object T_processosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object T_processosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object T_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object T_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object T_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object T_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object T_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object T_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object T_processosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object T_processosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object T_processosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object T_processosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object T_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object T_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object T_processosIN_MOEDA_UNICA: TSmallintField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object T_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object T_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object T_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object T_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object T_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object T_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object T_processosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object T_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object T_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object T_processosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object T_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object T_processosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object T_processosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object T_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object T_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 50
    end
    object T_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object T_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object T_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 50
    end
    object T_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object T_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 50
    end
    object T_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object T_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 50
    end
    object T_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 18
    end
    object T_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 200
    end
    object T_processosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object T_processosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object T_processosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object T_processosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object T_processosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      Size = 10
    end
    object T_processosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object T_processosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      Size = 8
    end
    object T_processosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      Size = 10
    end
    object T_processosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object T_processosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      Size = 8
    end
    object T_processosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      Size = 8
    end
    object T_processosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      Size = 8
    end
    object T_processosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object T_processosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object T_processosCanalC: TStringField
      FieldName = 'CanalC'
      Size = 1
    end
    object T_processosFiscalC: TStringField
      FieldName = 'FiscalC'
    end
    object T_processosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      Size = 1
    end
    object T_processosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object T_processosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object T_processosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object T_processosident_meio1: TStringField
      FieldName = 'ident_meio1'
      Size = 100
    end
    object T_processosident_meio2: TStringField
      FieldName = 'ident_meio2'
      Size = 100
    end
    object T_processosCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object T_processosCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object T_processosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object T_processosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object T_processosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      Size = 5
    end
    object T_processosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object T_processosUrgente: TSmallintField
      FieldName = 'Urgente'
    end
    object T_processosconsolidado: TSmallintField
      FieldName = 'consolidado'
    end
    object T_processosPag_proporcional: TSmallintField
      FieldName = 'Pag_proporcional'
    end
    object T_processosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object T_processosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object T_processosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object T_processosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object T_processosDDE: TStringField
      FieldName = 'DDE'
      Size = 30
    end
    object T_processosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 30
    end
    object T_processosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object T_processosFaturado: TSmallintField
      FieldName = 'Faturado'
    end
    object T_processosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object T_processosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 4
    end
    object T_processosProcurador2: TStringField
      FieldName = 'Procurador2'
      Size = 4
    end
    object T_processosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object T_processosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object T_processosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      Size = 100
    end
    object T_processosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      Size = 10
    end
    object T_processosvinc_processo: TSmallintField
      FieldName = 'vinc_processo'
    end
    object T_processosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      Size = 8
    end
  end
  object ds_processos: TDataSource
    DataSet = T_processos
    Left = 284
    Top = 166
  end
  object T_custos: TTable
    AutoCalcFields = False
    AfterPost = T_custosAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Custos_Processos'
    Left = 312
    Top = 130
    object T_custosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_custosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_custosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_custosTipo_Custo: TStringField
      FieldName = 'Tipo_Custo'
      Size = 4
    end
    object T_custosreg: TAutoIncField
      FieldName = 'reg'
    end
    object T_custosValor: TFloatField
      FieldName = 'Valor'
    end
    object T_custosFatura: TStringField
      FieldName = 'Fatura'
      Size = 30
    end
  end
  object ds_custos: TDataSource
    DataSet = T_custos
    Left = 312
    Top = 166
  end
  object T_tiposcustos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Tipos_Custos'
    Left = 340
    Top = 130
    object T_tiposcustosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_tiposcustosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_tiposcustosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_tiposcustosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_tiposcustosrateio: TStringField
      FieldName = 'rateio'
      Size = 5
    end
  end
  object ds_tiposcustos: TDataSource
    DataSet = T_tiposcustos
    Left = 340
    Top = 174
  end
  object T_unitarios: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial;Tipo_Custo;reg'
    TableName = 'Custos_Unitarios'
    Left = 376
    Top = 130
    object T_unitariosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_unitariosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_unitariosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_unitariosFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 30
    end
    object T_unitariosSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object T_unitariosTipo_Custo: TStringField
      FieldName = 'Tipo_Custo'
      Size = 4
    end
    object T_unitariosreg: TIntegerField
      FieldName = 'reg'
    end
    object T_unitariosValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object ds_unitarios: TDataSource
    DataSet = T_unitarios
    Left = 368
    Top = 174
  end
  object T_itensfaturas: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'ItensFaturas'
    Left = 396
    Top = 122
    object T_itensfaturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_itensfaturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_itensfaturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_itensfaturasFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 30
    end
    object T_itensfaturasSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object T_itensfaturasPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object T_itensfaturasProduto: TStringField
      FieldName = 'Produto'
      Size = 25
    end
    object T_itensfaturasDescricao_Produto: TMemoField
      FieldName = 'Descricao_Produto'
      BlobType = ftMemo
    end
    object T_itensfaturasFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object T_itensfaturasNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object T_itensfaturasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object T_itensfaturasUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object T_itensfaturasDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object T_itensfaturasNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object T_itensfaturasReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object T_itensfaturasNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_itensfaturasReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      Size = 15
    end
    object T_itensfaturasPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
    object T_itensfaturasSeqpo: TStringField
      FieldName = 'Seqpo'
      Size = 5
    end
    object T_itensfaturasQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_itensfaturasValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object T_itensfaturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object T_itensfaturasPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object T_itensfaturasPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object T_itensfaturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object T_itensfaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object T_itensfaturasSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object T_itensfaturasRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object T_itensfaturasRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object T_itensfaturasRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object T_itensfaturasRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object T_itensfaturasRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object T_itensfaturasRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object T_itensfaturasRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object T_itensfaturasRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object T_itensfaturasRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object T_itensfaturasRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object T_itensfaturasRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object T_itensfaturasRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object T_itensfaturasRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object T_itensfaturasRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object T_itensfaturasRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object T_itensfaturasRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object T_itensfaturasRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object T_itensfaturasRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object T_itensfaturasRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object T_itensfaturasRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object T_itensfaturasValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object T_itensfaturasValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object T_itensfaturasVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object T_itensfaturasBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object T_itensfaturasAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object T_itensfaturasCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object T_itensfaturasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object T_itensfaturasFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object T_itensfaturasFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
    object T_itensfaturasContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object T_itensfaturasLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object T_itensfaturasRateio_Taxa_Siscomex: TFloatField
      FieldName = 'Rateio_Taxa_Siscomex'
    end
    object T_itensfaturasDescricao_Produto_ing: TMemoField
      FieldName = 'Descricao_Produto_ing'
      BlobType = ftMemo
    end
    object T_itensfaturasCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      Size = 25
    end
    object T_itensfaturasSequencial_Produto: TIntegerField
      FieldName = 'Sequencial_Produto'
    end
  end
  object ds_itensfaturas: TDataSource
    DataSet = T_itensfaturas
    Left = 396
    Top = 174
  end
  object T_faturas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Faturas'
    Left = 424
    Top = 122
    object T_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_faturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_faturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_faturasCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 30
    end
    object T_faturasExportador: TStringField
      FieldName = 'Exportador'
      Size = 4
    end
    object T_faturasIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object T_faturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      Size = 1
    end
    object T_faturasCondicao: TStringField
      FieldName = 'Condicao'
      Size = 50
    end
    object T_faturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object T_faturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object T_faturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object T_faturasAcrescimos_Reducoes: TSmallintField
      FieldName = 'Acrescimos_Reducoes'
    end
    object T_faturasMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_faturasCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      Size = 1
    end
    object T_faturasMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      Size = 2
    end
    object T_faturasModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      Size = 2
    end
    object T_faturasInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      Size = 2
    end
    object T_faturasTipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      Size = 1
    end
    object T_faturasNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      Size = 3
    end
    object T_faturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 3
    end
    object T_faturasValor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
    end
    object T_faturasIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      Size = 1
    end
    object T_faturasTaxa_de_Juros: TSmallintField
      FieldName = 'Taxa_de_Juros'
    end
    object T_faturasCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      Size = 4
    end
    object T_faturasValor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
    end
    object T_faturasROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      Size = 8
    end
    object T_faturasPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
    end
    object T_faturasDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object T_faturasSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      Size = 1
    end
    object T_faturasCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      Size = 10
    end
    object T_faturasSALDO_CAMBIO: TFloatField
      FieldName = 'SALDO_CAMBIO'
    end
    object T_faturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object T_faturasPeso_Libra: TSmallintField
      FieldName = 'Peso_Libra'
    end
  end
  object ds_faturas: TDataSource
    DataSet = T_faturas
    Left = 424
    Top = 174
  end
  object T_conhecimento: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Conhecimento_Processo'
    Left = 452
    Top = 138
    object T_conhecimentoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_conhecimentoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_conhecimentoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_conhecimentoVia: TStringField
      FieldName = 'Via'
      Size = 1
    end
    object T_conhecimentoMultimodal: TSmallintField
      FieldName = 'Multimodal'
    end
    object T_conhecimentoPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object T_conhecimentoLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object T_conhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object T_conhecimentoTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object T_conhecimentoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object T_conhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object T_conhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object T_conhecimentoLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object T_conhecimentoData: TDateTimeField
      FieldName = 'Data'
    end
    object T_conhecimentoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object T_conhecimentoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object T_conhecimentoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object T_conhecimentoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 50
    end
    object T_conhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object T_conhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object T_conhecimentoAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object T_conhecimentoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object T_conhecimentoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object T_conhecimentoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object T_conhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object T_conhecimentoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object T_conhecimentoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object T_conhecimentoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object T_conhecimentoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object T_conhecimentoOperacao_FUNDAP: TSmallintField
      FieldName = 'Operacao_FUNDAP'
    end
    object T_conhecimentoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object T_conhecimentoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object T_conhecimentoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object T_conhecimentoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object T_conhecimentoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object T_conhecimentoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object T_conhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object T_conhecimentoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object T_conhecimentoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
    object T_conhecimentoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object T_conhecimentoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object ds_conhecimento: TDataSource
    DataSet = T_conhecimento
    Left = 452
    Top = 182
  end
  object T_taxa: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Moeda'
    TableName = 'Processos_Taxas_Conversao'
    Left = 480
    Top = 138
    object T_taxaEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_taxaFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_taxaProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_taxaMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_taxaTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object T_taxaTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
  end
  object ds_taxa: TDataSource
    DataSet = T_taxa
    Left = 480
    Top = 171
  end
  object q_CNPJ: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Importadores.CNPJ_CPF_COMPLETO from Processos'
      
        'Inner join Importadores on Processos.Importador = Importadores.c' +
        'odigo'
      'where Processos.Codigo = :pCodigo')
    Left = 392
    Top = 1
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
