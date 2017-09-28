object f_conato: Tf_conato
  Left = 200
  Top = 119
  BorderStyle = bsNone
  Caption = 'Consulta de Atos Concessórios'
  ClientHeight = 417
  ClientWidth = 737
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
  object Label9: TLabel
    Left = 0
    Top = 93
    Width = 737
    Height = 19
    Align = alTop
    Alignment = taCenter
    Caption = 'Importações / Exportações'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 0
    Top = 253
    Width = 737
    Height = 19
    Align = alTop
    Alignment = taCenter
    Caption = 'Totais por Beneficiário / Solidário'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 93
    Align = alTop
    Color = clTeal
    TabOrder = 0
    OnEnter = Panel1Enter
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Número do Ato'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 46
      Width = 33
      Height = 13
      Caption = 'Moeda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 160
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Descrição'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 231
      Top = 46
      Width = 105
      Height = 13
      Caption = 'Valor das Importações'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 348
      Top = 45
      Width = 106
      Height = 13
      Caption = 'Valor das Exportações'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 469
      Top = 46
      Width = 27
      Height = 13
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 583
      Top = 7
      Width = 71
      Height = 13
      Caption = 'Vigência Inicial'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 663
      Top = 7
      Width = 66
      Height = 13
      Caption = 'Vigência Final'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit8: TDBEdit
      Left = 7
      Top = 60
      Width = 214
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_moeda
      Enabled = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 160
      Top = 21
      Width = 417
      Height = 21
      DataField = 'Descricao'
      DataSource = ds_atos
      Enabled = False
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 231
      Top = 60
      Width = 105
      Height = 21
      DataField = 'Valor_imp'
      DataSource = ds_atos
      Enabled = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 347
      Top = 60
      Width = 109
      Height = 21
      DataField = 'Valor_exp'
      DataSource = ds_atos
      Enabled = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 582
      Top = 21
      Width = 73
      Height = 21
      DataField = 'Vigencia_inicial'
      DataSource = ds_atos
      Enabled = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 659
      Top = 21
      Width = 73
      Height = 21
      DataField = 'Vigencia_final'
      DataSource = ds_atos
      Enabled = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 468
      Top = 60
      Width = 109
      Height = 21
      DataField = 'Saldo'
      DataSource = ds_atos
      Enabled = False
      TabOrder = 6
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 21
      Width = 152
      Height = 21
      DataSource = ds_atos
      Options = []
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColumnMoved = DBGrid1ColumnMoved
      Columns = <
        item
          Expanded = False
          FieldName = 'Numero'
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 625
      Top = 57
      Width = 75
      Height = 25
      Caption = 'Consulta'
      TabOrder = 8
      OnClick = DBC_num_atoChange
    end
  end
  object DBG_importa: TDBGrid
    Left = 0
    Top = 112
    Width = 737
    Height = 141
    Align = alTop
    DataSource = ds_qimporta
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_Produto'
        Title.Caption = 'Descrição Produto'
        Width = 407
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Aduaneiro'
        Title.Caption = 'Valor Aduaneiro'
        Visible = True
      end>
  end
  object DBG_tot: TDBGrid
    Left = 0
    Top = 272
    Width = 737
    Height = 141
    Align = alTop
    DataSource = ds_qtotal
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Importador'
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Tipo de Concessão'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_imp'
        Title.Caption = 'Valor das Importações'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SomaDeValor_Aduaneiro'
        Title.Caption = 'Valor Importado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qsaldo'
        Title.Caption = 'Saldo'
        Width = 93
        Visible = True
      end>
  end
  object T_parametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 256
    Top = 160
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
  object T_atos: TTable
    AutoCalcFields = False
    BeforeScroll = T_atosBeforeScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Atos_concessorios'
    Left = 268
    Top = 172
    object T_atosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_atosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_atosNumero: TStringField
      FieldName = 'Numero'
    end
    object T_atosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_atosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object T_atosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object T_atosMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_atosValor_imp: TFloatField
      FieldName = 'Valor_imp'
    end
    object T_atosValor_impc: TFloatField
      FieldName = 'Valor_impc'
    end
    object T_atosValor_imps: TFloatField
      FieldName = 'Valor_imps'
    end
    object T_atosValor_exp: TFloatField
      FieldName = 'Valor_exp'
    end
    object T_atosSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_atosSaldoC: TFloatField
      FieldName = 'SaldoC'
    end
    object T_atosSaldoS: TFloatField
      FieldName = 'SaldoS'
    end
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 292
    Top = 196
  end
  object ds_atos: TDataSource
    DataSet = T_atos
    Left = 304
    Top = 208
  end
  object T_moeda: TTable
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    MasterFields = 'Moeda'
    MasterSource = ds_atos
    TableName = 'TAB_MOEDA'
    Left = 376
    Top = 108
    object T_moedaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object T_moedaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object ds_moeda: TDataSource
    DataSet = T_moeda
    Left = 396
    Top = 136
  end
  object Q_importa: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.Prod' +
        'uto, cast(ItensFaturas.Descricao_Produto as varchar(200)) as qde' +
        'sc, ItensFaturas.NCM, Tributacao_Item_Fatura.Quantidade, ItensFa' +
        'turas.Valor_Aduaneiro'
      
        'FROM ((((Tributacao_Item_Fatura INNER JOIN ItensFaturas ON (Trib' +
        'utacao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AN' +
        'D (Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tri' +
        'butacao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tribu' +
        'tacao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_' +
        'Item_Fatura.Empresa = ItensFaturas.Empresa)) INNER JOIN Processo' +
        's ON (Tributacao_Item_Fatura.Processo = Processos.Codigo) AND (T' +
        'ributacao_Item_Fatura.Filial = Processos.Filial) AND (Tributacao' +
        '_Item_Fatura.Empresa = Processos.Empresa)) INNER JOIN Importador' +
        'es ON (Processos.Importador = Importadores.Codigo) AND (Processo' +
        's.Filial = Importadores.Filial) AND (Processos.Empresa = Importa' +
        'dores.Empresa)) INNER JOIN Atos_Importador ON (Tributacao_Item_F' +
        'atura.Ato_Concessorio = Atos_Importador.Numero) AND (Processos.I' +
        'mportador = Atos_Importador.Importador) AND (Processos.Filial = ' +
        'Atos_Importador.Filial) AND (Processos.Empresa = Atos_Importador' +
        '.Empresa)) INNER JOIN Atos_tipos_benefic ON Atos_Importador.Tipo' +
        ' = Atos_tipos_benefic.codigo'
      
        'GROUP BY Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.Pr' +
        'oduto, ItensFaturas.Descricao_Produto, ItensFaturas.NCM, Tributa' +
        'cao_Item_Fatura.Quantidade, ItensFaturas.Valor_Aduaneiro'
      'HAVING Tributacao_Item_Fatura.Ato_Concessorio = :ato')
    Left = 356
    Top = 196
    ParamData = <
      item
        DataType = ftString
        Name = 'ato'
        ParamType = ptUnknown
      end>
    object Q_importaAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
    object Q_importaProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 25
    end
    object Q_importaqdesc: TStringField
      FieldName = 'qdesc'
      FixedChar = True
      Size = 200
    end
    object Q_importaNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object Q_importaQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object Q_importaValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
  end
  object ds_qimporta: TDataSource
    DataSet = Q_importa
    Left = 368
    Top = 208
  end
  object Q_total: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Ato_Concessorio, Importadores.Raza' +
        'o_Social, Atos_tipos_benefic.descricao, Atos_Importador.Valor_im' +
        'p, Sum(ItensFaturas.Valor_Aduaneiro) AS SomaDeValor_Aduaneiro, [' +
        'atos_importador].[valor_imp]-sum([itensfaturas].[valor_aduaneiro' +
        ']) AS qsaldo'
      
        'FROM ((((Tributacao_Item_Fatura INNER JOIN ItensFaturas ON (Trib' +
        'utacao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AN' +
        'D (Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tri' +
        'butacao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tribu' +
        'tacao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_' +
        'Item_Fatura.Empresa = ItensFaturas.Empresa)) INNER JOIN Processo' +
        's ON (Tributacao_Item_Fatura.Processo = Processos.Codigo) AND (T' +
        'ributacao_Item_Fatura.Filial = Processos.Filial) AND (Tributacao' +
        '_Item_Fatura.Empresa = Processos.Empresa)) INNER JOIN Importador' +
        'es ON (Processos.Importador = Importadores.Codigo) AND (Processo' +
        's.Filial = Importadores.Filial) AND (Processos.Empresa = Importa' +
        'dores.Empresa)) INNER JOIN Atos_Importador ON (Tributacao_Item_F' +
        'atura.Ato_Concessorio = Atos_Importador.Numero) AND (Processos.I' +
        'mportador = Atos_Importador.Importador) AND (Processos.Filial = ' +
        'Atos_Importador.Filial) AND (Processos.Empresa = Atos_Importador' +
        '.Empresa)) INNER JOIN Atos_tipos_benefic ON Atos_Importador.Tipo' +
        ' = Atos_tipos_benefic.codigo'
      
        'GROUP BY Tributacao_Item_Fatura.Ato_Concessorio, Importadores.Ra' +
        'zao_Social, Atos_tipos_benefic.descricao, Atos_Importador.Valor_' +
        'imp'
      'HAVING (((Tributacao_Item_Fatura.Ato_Concessorio)=:qnum));')
    Left = 508
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '16284990001362'
      end>
    object Q_totalAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
    end
    object Q_totalRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object Q_totaldescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Q_totalValor_imp: TFloatField
      FieldName = 'Valor_imp'
    end
    object Q_totalSomaDeValor_Aduaneiro: TFloatField
      FieldName = 'SomaDeValor_Aduaneiro'
    end
    object Q_totalqsaldo: TFloatField
      FieldName = 'qsaldo'
    end
  end
  object ds_qtotal: TDataSource
    DataSet = Q_total
    Left = 516
    Top = 224
  end
  object q_atos_update: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Atos_concessorios'
      'SET saldo = :p1'
      'WHERE numero = :p2')
    Left = 576
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end>
  end
end
