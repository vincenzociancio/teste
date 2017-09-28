object F_prelfollowup: TF_prelfollowup
  Left = 41
  Top = 55
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Follow Up - Acompanhamento de Processos'
  ClientHeight = 441
  ClientWidth = 649
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
  object b_imprime: TBitBtn
    Left = 331
    Top = 413
    Width = 312
    Height = 25
    Caption = 'Imprime'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = b_imprimeClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888F8800000000000888808888888880808800000000000008080888888BBB88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
  end
  object rg_opcao: TRadioGroup
    Left = 0
    Top = 0
    Width = 649
    Height = 47
    Align = alTop
    Caption = 'Relatório de Acompanhamento de Processos'
    Color = 10514464
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 1
    Items.Strings = (
      'Analítico ( 1 Processo por página )'
      'Sintético ( vários processos por página )')
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 47
    Width = 649
    Height = 29
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 5
      Top = 13
      Width = 156
      Height = 13
      Caption = 'Data de Abertura dos Processos:'
    end
    object Label5: TLabel
      Left = 180
      Top = 13
      Width = 15
      Height = 13
      Caption = 'de '
    end
    object Label6: TLabel
      Left = 272
      Top = 13
      Width = 15
      Height = 13
      Caption = 'até'
    end
    object Label2: TLabel
      Left = 444
      Top = 13
      Width = 101
      Height = 13
      Caption = 'Processo Específico:'
    end
    object me_dataini: TMaskEdit
      Left = 200
      Top = 5
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '01/01/2000'
    end
    object me_datafin: TMaskEdit
      Left = 296
      Top = 5
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object edt_processo: TEdit
      Left = 550
      Top = 5
      Width = 89
      Height = 21
      TabOrder = 2
      OnChange = edt_processoChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 107
    Width = 325
    Height = 222
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 18
      Width = 323
      Height = 183
      Align = alTop
      BiDiMode = bdLeftToRight
      DataSource = ds_importadores
      Options = [dgAlwaysShowSelection]
      ParentBiDiMode = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 300
          Visible = True
        end>
    end
    object cb_imp: TCheckBox
      Left = 32
      Top = 204
      Width = 263
      Height = 16
      Caption = 'Imprime todos os Processos do Cliente selecionado'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cb_impClick
      OnEnter = cb_impClick
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 323
      Height = 17
      Align = alTop
      Caption = 'Clientes'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 325
    Top = 107
    Width = 325
    Height = 107
    TabOrder = 4
    object DBGrid3: TDBGrid
      Left = 1
      Top = 18
      Width = 323
      Height = 69
      Align = alTop
      DataSource = ds_status
      Options = [dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 300
          Visible = True
        end>
    end
    object cb_status: TCheckBox
      Left = 70
      Top = 89
      Width = 204
      Height = 17
      Caption = 'Imprime todos os Status de Processos'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 323
      Height = 17
      Align = alTop
      Caption = 'Status dos Processos'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 325
    Top = 214
    Width = 325
    Height = 89
    TabOrder = 5
    object DBGrid4: TDBGrid
      Left = 1
      Top = 18
      Width = 323
      Height = 52
      Align = alTop
      DataSource = ds_sitfis
      Options = [dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end>
    end
    object cb_sitfis: TCheckBox
      Left = 77
      Top = 72
      Width = 175
      Height = 16
      Caption = 'Imprime todas Situações Fiscais'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 323
      Height = 17
      Align = alTop
      Caption = 'Situação Fiscal dos Processos'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 329
    Width = 325
    Height = 110
    TabOrder = 7
    object DBGrid2: TDBGrid
      Left = 1
      Top = 18
      Width = 323
      Height = 69
      Align = alTop
      DataSource = ds_locais
      Options = [dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Visible = True
        end>
    end
    object cb_loc: TCheckBox
      Left = 76
      Top = 91
      Width = 197
      Height = 16
      Caption = 'Imprime todos Locais de Inventário'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 323
      Height = 17
      Align = alTop
      Caption = 'Locais de Inventário'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 76
    Width = 649
    Height = 29
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 13
      Width = 181
      Height = 13
      Caption = 'Data em que ocorreu o Desembaraço:'
    end
    object Label3: TLabel
      Left = 192
      Top = 13
      Width = 15
      Height = 13
      Caption = 'de '
    end
    object Label7: TLabel
      Left = 284
      Top = 13
      Width = 15
      Height = 13
      Caption = 'até'
    end
    object me_dini: TMaskEdit
      Left = 212
      Top = 5
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object me_dfin: TMaskEdit
      Left = 308
      Top = 5
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object Panel11: TPanel
    Left = 324
    Top = 303
    Width = 325
    Height = 107
    TabOrder = 8
    object DBGrid5: TDBGrid
      Left = 1
      Top = 18
      Width = 323
      Height = 69
      Align = alTop
      DataSource = ds_tipospro
      Options = [dgAlwaysShowSelection]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end>
    end
    object cb_tipospro: TCheckBox
      Left = 70
      Top = 89
      Width = 204
      Height = 17
      Caption = 'Imprime todos os Tipos de Processos'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Panel12: TPanel
      Left = 1
      Top = 1
      Width = 323
      Height = 17
      Align = alTop
      Caption = 'Tipos de Processos'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object T_parametros: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 80
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
    Left = 84
    Top = 36
  end
  object T_processos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    FieldDefs = <
      item
        Name = 'Empresa'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Filial'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Codigo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Data'
        DataType = ftDateTime
      end
      item
        Name = 'Importador'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Codigo_Cliente'
        Attributes = [faFixed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Tipo_Declaracao'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Tipo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Contrato'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Local_Inventario'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NR_DECL_IMP_MICRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NR_DECL_IMP_PROT'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NR_DECLARACAO_IMP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT_PROCESSAMENTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DT_TRANSMISSAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DT_REGISTRO_DI'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DT_DESEMBARACO'
        DataType = ftDateTime
      end
      item
        Name = 'DT_DISTRIBUICAO'
        DataType = ftDateTime
      end
      item
        Name = 'Canal'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Fiscal'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Status'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'COD_SIT'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CD_MOTIVO_TRANS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IN_MOEDA_UNICA'
        DataType = ftSmallint
      end
      item
        Name = 'TX_INFO_COMPL'
        DataType = ftMemo
      end
      item
        Name = 'CD_TIPO_PGTO_TRIB'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Numero_RCR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Data_Entrada_RCR'
        DataType = ftDateTime
      end
      item
        Name = 'Data_Aprovacao_RCR'
        DataType = ftDateTime
      end
      item
        Name = 'Fundamentacao_RCR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Procurador'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Numero_TR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Data_Entrada_TR'
        DataType = ftDateTime
      end
      item
        Name = 'Data_vencimento_TR'
        DataType = ftDateTime
      end
      item
        Name = 'Data_Aprovacao_TR'
        DataType = ftDateTime
      end
      item
        Name = 'Data_Baixa_TR'
        DataType = ftDateTime
      end
      item
        Name = 'Data_CI'
        DataType = ftDateTime
      end
      item
        Name = 'Tipo_Garantia'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Nome_banco_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Agencia_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Data_deposito_GAR'
        DataType = ftDateTime
      end
      item
        Name = 'Nome_titulo_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'numeros_titulos_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Nome_seguradora_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'apolice_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nome_fiador_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ_fiador_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 18
      end
      item
        Name = 'endereco_fiador_GAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Quantidade_LI'
        DataType = ftFloat
      end
      item
        Name = 'Valor_FOB'
        DataType = ftFloat
      end
      item
        Name = 'Valor_CIF'
        DataType = ftFloat
      end
      item
        Name = 'Responsavel_Empresa'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Responsavel_Importador'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Saldo_Faturamento'
        DataType = ftFloat
      end
      item
        Name = 'NR_DECL_IMP_MICROC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NR_DECL_IMP_PROTC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NR_DECLARACAO_IMPC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT_PROCESSAMENTOC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DT_TRANSMISSAOC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DT_REGISTRO_DIC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DT_DESEMBARACOC'
        DataType = ftDateTime
      end
      item
        Name = 'DT_DISTRIBUICAOC'
        DataType = ftDateTime
      end
      item
        Name = 'CanalC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FiscalC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COD_SITC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Data_CIC'
        DataType = ftDateTime
      end
      item
        Name = 'Valor_FOBC'
        DataType = ftFloat
      end
      item
        Name = 'Valor_CIFC'
        DataType = ftFloat
      end
      item
        Name = 'ident_meio1'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ident_meio2'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Codevento'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Codobs'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Obs_especifica'
        Attributes = [faFixed]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'Data_ufollowup'
        DataType = ftDateTime
      end
      item
        Name = 'Hora_ufollowup'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Data_liberacao'
        DataType = ftDateTime
      end
      item
        Name = 'Urgente'
        DataType = ftSmallint
      end
      item
        Name = 'consolidado'
        DataType = ftSmallint
      end
      item
        Name = 'Pag_proporcional'
        DataType = ftSmallint
      end
      item
        Name = 'TR_VAL_FOB_US'
        DataType = ftFloat
      end
      item
        Name = 'TR_VAL_CIF_US'
        DataType = ftFloat
      end
      item
        Name = 'TR_VAL_II'
        DataType = ftFloat
      end
      item
        Name = 'TR_VAL_IPI'
        DataType = ftFloat
      end
      item
        Name = 'DDE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Processo_Adm'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Proc_Adm_Data_Entrada'
        DataType = ftDateTime
      end
      item
        Name = 'Faturado'
        DataType = ftSmallint
      end
      item
        Name = 'Fechado'
        DataType = ftSmallint
      end
      item
        Name = 'Centro_Custo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Procurador2'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TR_VAL_PIS'
        DataType = ftFloat
      end
      item
        Name = 'TR_VAL_COFINS'
        DataType = ftFloat
      end
      item
        Name = 'RCR_LOCAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Responsavel_EmpresaC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'vinc_processo'
        DataType = ftSmallint
      end
      item
        Name = 'proc_vinc'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end>
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    StoreDefs = True
    TableName = 'Processos'
    Left = 192
    Top = 65532
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
    Left = 220
    Top = 8
  end
  object ds_importadores: TDataSource
    DataSet = q_importadores
    Left = 148
    Top = 12
  end
  object T_status: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'Tipos_status_processos'
    Left = 276
    Top = 12
    object T_statusCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object T_statusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object ds_status: TDataSource
    DataSet = T_status
    Left = 300
    Top = 24
  end
  object t_sitfis: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'Tipos_situacao_fiscal'
    Left = 332
    Top = 65528
    object t_sitfisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 1
    end
    object t_sitfisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object ds_sitfis: TDataSource
    DataSet = t_sitfis
    Left = 348
    Top = 8
  end
  object t_locais: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Local'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_importadores
    TableName = 'Locais_Inventario'
    Left = 400
    object t_locaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_locaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_locaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object t_locaisContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object t_locaisLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object t_locaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object t_locaisTipo_local: TStringField
      FieldName = 'Tipo_local'
      Size = 4
    end
    object t_locaisProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 25
    end
    object t_locaisCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object t_locaisUnidade_Jur: TStringField
      FieldName = 'Unidade_Jur'
      Size = 7
    end
    object t_locaisFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object t_locaisFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
    object t_locaisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 4
    end
    object t_locaisAtivo: TSmallintField
      FieldName = 'Ativo'
    end
  end
  object ds_locais: TDataSource
    DataSet = t_locais
    Left = 416
    Top = 16
  end
  object q_importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.* from Importadores order by Importadores.Ra' +
        'zao_Social')
    Left = 152
    Top = 40
    object q_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object q_importadoresFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object q_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object q_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object q_importadoresPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Importadores.Pais'
      Size = 3
    end
    object q_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object q_importadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Importadores.CGC_CPF'
      Size = 10
    end
    object q_importadoresTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Origin = 'DBNMSCOMEX.Importadores.Tipo_Importador'
      Size = 1
    end
    object q_importadoresEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Importadores.Endereco'
      Size = 40
    end
    object q_importadoresNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Importadores.Numero'
      Size = 6
    end
    object q_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Importadores.Complemento'
      Size = 21
    end
    object q_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Importadores.Bairro'
      Size = 25
    end
    object q_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      Size = 25
    end
    object q_importadoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Importadores.CEP'
      Size = 10
    end
    object q_importadoresUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Importadores.UF'
      Size = 2
    end
    object q_importadoresEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Importadores.Estado'
      Size = 25
    end
    object q_importadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Importadores.Inscricao_Estadual'
      Size = 15
    end
    object q_importadoresBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Importadores.Banco'
      Size = 5
    end
    object q_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Importadores.Agencia'
      Size = 5
    end
    object q_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente'
      Size = 8
    end
    object q_importadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Registro'
    end
    object q_importadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Deposito'
    end
    object q_importadoreslink: TStringField
      FieldName = 'link'
      Origin = 'DBNMSCOMEX.Importadores.link'
      Size = 50
    end
    object q_importadoresCAE: TStringField
      FieldName = 'CAE'
      Origin = 'DBNMSCOMEX.Importadores.CAE'
      Size = 15
    end
    object q_importadoresTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Importadores.Telefone'
      Size = 15
    end
    object q_importadoresAtivo: TSmallintField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Importadores.Ativo'
    end
    object q_importadoresAcesso_WEB_MS: TSmallintField
      FieldName = 'Acesso_WEB_MS'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_MS'
    end
    object q_importadoresAcesso_WEB_CLI: TSmallintField
      FieldName = 'Acesso_WEB_CLI'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_CLI'
    end
    object q_importadoresAcesso_WEB_REC: TSmallintField
      FieldName = 'Acesso_WEB_REC'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_REC'
    end
    object q_importadoresBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      Origin = 'DBNMSCOMEX.Importadores.BASE_ICMS'
    end
  end
  object ds_tipospro: TDataSource
    DataSet = Q_TIPOSPRO
    Left = 464
    Top = 4
  end
  object Q_TIPOSPRO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM TIPOS_DE_PROCESSOS ORDER BY DESCRICAO')
    Left = 488
    Top = 24
    object Q_TIPOSPROCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.CODIGO'
      Size = 2
    end
    object Q_TIPOSPRODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.DESCRICAO'
      Size = 35
    end
    object Q_TIPOSPROAtivo: TSmallintField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.Ativo'
    end
    object Q_TIPOSPROResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.Responsavel_EmpresaC'
      Size = 10
    end
    object Q_TIPOSPROResponsavel_EmpresaO: TStringField
      FieldName = 'Responsavel_EmpresaO'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.Responsavel_EmpresaO'
      Size = 10
    end
    object Q_TIPOSPROResponsavel_EmpresaF: TStringField
      FieldName = 'Responsavel_EmpresaF'
      Origin = 'DBNMSCOMEX.Tipos_de_Processos.Responsavel_EmpresaF'
      Size = 10
    end
  end
end
