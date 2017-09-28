object f_followaut: Tf_followaut
  Left = 210
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Geração de Follow Up Automático'
  ClientHeight = 166
  ClientWidth = 463
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object l_pro: TLabel
    Left = 4
    Top = 124
    Width = 453
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = 'Aguarde...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Memo1: TMemo
    Left = 4
    Top = 5
    Width = 453
    Height = 68
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Atenção ! Esta opção cria Follow Up para processos '
      'de '
      '"Prorrogação de TR" e "Baixa de TR" repetindo o '
      'último '
      'Follow informado para a data atual.'
      '')
    ParentFont = False
    TabOrder = 0
  end
  object b_probai: TBitBtn
    Left = 100
    Top = 86
    Width = 117
    Height = 25
    Hint = 
      'Gera Follow Up automático para processos de Prorrogação e Baixa ' +
      'de TR'
    Caption = 'Gera Follow Up '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = b_probaiClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
  end
  object b_cancela: TBitBtn
    Left = 232
    Top = 86
    Width = 117
    Height = 25
    Caption = 'Cancela'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = b_cancelaClick
    Kind = bkCancel
  end
  object t_probai: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'tipo = '#39'8'#39' or tipo='#39'BT'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Código'
    TableName = 'Processos'
    Left = 176
    object t_probaiEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_probaiFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_probaiCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 8
    end
    object t_probaiData: TDateTimeField
      FieldName = 'Data'
    end
    object t_probaiImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object t_probaiCdigo_Cliente: TStringField
      FieldName = 'Código_Cliente'
      Size = 15
    end
    object t_probaiTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object t_probaiTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object t_probaiContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object t_probaiLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object t_probaiNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_probaiNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object t_probaiNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object t_probaiDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object t_probaiDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object t_probaiDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object t_probaiDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object t_probaiDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object t_probaiCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object t_probaiFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object t_probaiStatus: TStringField
      FieldName = 'Status'
      Size = 2
    end
    object t_probaiCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object t_probaiCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object t_probaiIN_MOEDA_UNICA: TBooleanField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object t_probaiTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object t_probaiCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object t_probaiNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object t_probaiData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object t_probaiData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object t_probaiFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object t_probaiProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object t_probaiNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object t_probaiData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object t_probaiData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object t_probaiData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object t_probaiData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object t_probaiData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object t_probaiTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object t_probaiNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 50
    end
    object t_probaiAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object t_probaiData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object t_probaiNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 50
    end
    object t_probainumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object t_probaiNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 50
    end
    object t_probaiapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object t_probainome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 50
    end
    object t_probaiCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 18
    end
    object t_probaiendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 100
    end
    object t_probaiQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object t_probaiValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object t_probaiValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object t_probaiResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object t_probaiResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      Size = 10
    end
    object t_probaiSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object t_probaiNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      Size = 8
    end
    object t_probaiNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      Size = 10
    end
    object t_probaiNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object t_probaiDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      Size = 8
    end
    object t_probaiDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      Size = 8
    end
    object t_probaiDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      Size = 8
    end
    object t_probaiDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object t_probaiDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object t_probaiCanalC: TStringField
      FieldName = 'CanalC'
      Size = 1
    end
    object t_probaiFiscalC: TStringField
      FieldName = 'FiscalC'
    end
    object t_probaiCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      Size = 1
    end
    object t_probaiData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object t_probaiValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object t_probaiValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object t_probaiident_meio1: TStringField
      FieldName = 'ident_meio1'
      Size = 100
    end
    object t_probaiident_meio2: TStringField
      FieldName = 'ident_meio2'
      Size = 100
    end
  end
  object T_followup: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Data;Hora'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = ds_probai
    TableName = 'FollowUp'
    UpdateMode = upWhereChanged
    Left = 204
    object T_followupEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_followupFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_followupProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_followupSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object T_followupCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object T_followupCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object T_followupObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object T_followupData: TDateTimeField
      FieldName = 'Data'
    end
    object T_followupHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object T_followuplink: TStringField
      FieldName = 'link'
      Size = 8
    end
    object T_followupData_final: TDateTimeField
      FieldName = 'Data_final'
    end
    object T_followupHora_final: TStringField
      FieldName = 'Hora_final'
      Size = 5
    end
    object T_followupDuracao: TIntegerField
      FieldName = 'Duracao'
    end
    object T_followupUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object ds_probai: TDataSource
    DataSet = t_probai
    Left = 176
    Top = 16
  end
  object ds_followup: TDataSource
    DataSet = T_followup
    Left = 204
    Top = 16
  end
end
