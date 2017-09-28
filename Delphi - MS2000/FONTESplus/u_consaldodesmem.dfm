object f_consaldodesmem: Tf_consaldodesmem
  Left = 6
  Top = 45
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Valores Sem Desmembramento'
  ClientHeight = 474
  ClientWidth = 768
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 217
    Align = alTop
    Caption = 'f'
    TabOrder = 0
    object Label30: TLabel
      Left = 411
      Top = 8
      Width = 81
      Height = 13
      Caption = 'Contas Correntes'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Empresas'
    end
    object Label35: TLabel
      Left = 8
      Top = 137
      Width = 98
      Height = 13
      Caption = 'Tipo de Lançamento'
    end
    object dbGrdCC: TDBGrid
      Left = 408
      Top = 23
      Width = 353
      Height = 106
      DataSource = dsCC
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 365
          Visible = True
        end>
    end
    object cbCC: TCheckBox
      Left = 704
      Top = 6
      Width = 49
      Height = 17
      Caption = 'Todas'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = cbCCClick
    end
    object dbGrdImport: TDBGrid
      Left = 8
      Top = 24
      Width = 394
      Height = 105
      DataSource = dsImport
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 336
          Visible = True
        end>
    end
    object cbImport: TCheckBox
      Left = 296
      Top = 6
      Width = 65
      Height = 17
      Caption = 'Todas'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbImportClick
    end
    object cbLancamentos: TCheckBox
      Left = 197
      Top = 136
      Width = 57
      Height = 17
      Caption = 'Todos'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = cbLancamentosClick
    end
    object dbGrdLancamentos: TDBGrid
      Left = 8
      Top = 151
      Width = 241
      Height = 61
      DataSource = dsLancamento
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 220
          Visible = True
        end>
    end
    object rgTipos: TRadioGroup
      Left = 256
      Top = 136
      Width = 121
      Height = 73
      Caption = ' Tipos '
      ItemIndex = 2
      Items.Strings = (
        'Somente Débitos'
        'Somente Créditos'
        'Todos')
      TabOrder = 6
      OnClick = rgTiposClick
    end
    object GroupBox1: TGroupBox
      Left = 384
      Top = 144
      Width = 105
      Height = 65
      Caption = ' Período'
      TabOrder = 7
      object Label33: TLabel
        Left = 11
        Top = 21
        Width = 12
        Height = 13
        Caption = 'de'
      end
      object Label34: TLabel
        Left = 9
        Top = 45
        Width = 15
        Height = 13
        Caption = 'até'
      end
      object me_dataini: TMaskEdit
        Left = 27
        Top = 17
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object me_datafin: TMaskEdit
        Left = 27
        Top = 41
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object btnImprimir: TBitBtn
      Left = 667
      Top = 148
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 8
      OnClick = btnImprimirClick
      NumGlyphs = 2
    end
    object btnFechar: TBitBtn
      Left = 667
      Top = 179
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 9
      OnClick = btnFecharClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object rg_check: TRadioGroup
      Left = 495
      Top = 136
      Width = 162
      Height = 73
      Caption = 'Ver check Desmembramento'
      ItemIndex = 0
      Items.Strings = (
        'Somente MARCADOS'
        'Somente NÃO MARCADOS'
        'Todos')
      TabOrder = 10
      OnClick = rgTiposClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 224
    Width = 768
    Height = 250
    Align = alBottom
    TabOrder = 1
    object re_ext: TRichEdit
      Left = 3
      Top = 6
      Width = 761
      Height = 235
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Q_extrato: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Conta' +
        's_Correntes.Filial, Contas_Correntes.Descricao, Movimentacao_Con' +
        'tas_Correntes.Codigo, Movimentacao_Contas_Correntes.Data, Movime' +
        'ntacao_Contas_Correntes.Tipo, Movimentacao_Contas_Correntes.usua' +
        'rio as qusu, Tipos_Lancamento_Ccorrente.Descricao AS otipo, Movi' +
        'mentacao_Contas_Correntes.Doc, Movimentacao_Contas_Correntes.His' +
        'torico, Movimentacao_Contas_Correntes.Valor, Movimentacao_Contas' +
        '_Correntes.Cliente, Movimentacao_Contas_Correntes.Desmembra, Mov' +
        'imentacao_Contas_Correntes.Codigo_Mov, Tipos_Lancamento_Ccorrent' +
        'e.Positivo, Importadores.Razao_Social AS qimp'
      
        'FROM ((Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_' +
        'Ccorrente ON Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamen' +
        'to_Ccorrente.Codigo) LEFT JOIN Contas_Correntes ON (Movimentacao' +
        '_Contas_Correntes.Empresa = Contas_Correntes.Empresa) AND (Movim' +
        'entacao_Contas_Correntes.Filial = Contas_Correntes.Filial) AND (' +
        'Movimentacao_Contas_Correntes.Codigo = Contas_Correntes.Codigo))' +
        ' LEFT JOIN Importadores ON (Movimentacao_Contas_Correntes.Empres' +
        'a = Importadores.Empresa) AND (Movimentacao_Contas_Correntes.Fil' +
        'ial = Importadores.Filial) AND (Movimentacao_Contas_Correntes.Cl' +
        'iente = Importadores.Codigo)'
      
        'WHERE (((Movimentacao_Contas_Correntes.Codigo) Like :qconta) AND' +
        ' ((Movimentacao_Contas_Correntes.Data)>=:qdataini And (Movimenta' +
        'cao_Contas_Correntes.Data)<=:qdatafin) AND ((Movimentacao_Contas' +
        '_Correntes.Tipo) Like :qtipo) AND (((Movimentacao_Contas_Corrent' +
        'es.Cliente) Like :qcli) OR ((Movimentacao_Contas_Correntes.Clien' +
        'te) ="0000")) AND ((Tipos_Lancamento_Ccorrente.Positivo) Like :q' +
        'lan) AND (Importadores.Codigo Like :qimp OR Importadores.Codigo ' +
        'Like "0000")  AND Movimentacao_Contas_Correntes.Empresa = :qemp ' +
        'AND Movimentacao_Contas_Correntes.Filial = :qfilial AND Tipos_La' +
        'ncamento_Ccorrente.Positivo In (:qposT,:qposF))'
      'ORDER BY Movimentacao_Contas_Correntes.Data;')
    Left = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'qconta'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 36892d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 37256d
      end
      item
        DataType = ftString
        Name = 'qtipo'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'qcli'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'qlan'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
      end
      item
        DataType = ftBoolean
        Name = 'qposT'
        ParamType = ptUnknown
      end
      item
        DataType = ftBoolean
        Name = 'qposF'
        ParamType = ptUnknown
      end>
    object Q_extratoEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object Q_extratoFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object Q_extratoDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object Q_extratoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object Q_extratoData: TDateTimeField
      FieldName = 'Data'
    end
    object Q_extratoTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object Q_extratoqusu: TStringField
      FieldName = 'qusu'
      FixedChar = True
      Size = 10
    end
    object Q_extratootipo: TStringField
      FieldName = 'otipo'
      FixedChar = True
      Size = 45
    end
    object Q_extratoDoc: TStringField
      FieldName = 'Doc'
      FixedChar = True
      Size = 15
    end
    object Q_extratoHistorico: TStringField
      FieldName = 'Historico'
      FixedChar = True
      Size = 255
    end
    object Q_extratoValor: TFloatField
      FieldName = 'Valor'
    end
    object Q_extratoCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 4
    end
    object Q_extratoDesmembra: TIntegerField
      FieldName = 'Desmembra'
    end
    object Q_extratoCodigo_Mov: TAutoIncField
      FieldName = 'Codigo_Mov'
    end
    object Q_extratoPositivo: TIntegerField
      FieldName = 'Positivo'
    end
    object Q_extratoqimp: TStringField
      FieldName = 'qimp'
      FixedChar = True
      Size = 60
    end
  end
  object q_santerior: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(Valor) AS Saldoanterior'
      'FROM Movimentacao_Contas_Correntes'
      
        'WHERE Codigo Like :qconta AND Data >= :qdataini AND Data < :qdat' +
        'afin AND Empresa = :qemp AND Filial = :qfilial AND Cliente Like ' +
        ':qimp')
    Left = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'qconta'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 36892d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 37256d
      end
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '*'
      end>
    object q_santeriorSaldoanterior: TFloatField
      FieldName = 'Saldoanterior'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Valor'
    end
  end
  object ds_qextrato: TDataSource
    DataSet = Q_extrato
    Left = 208
    Top = 16
  end
  object qrCreditos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Creditos_Processos.Empresa, Creditos_Processos.Filial, Cr' +
        'editos_Processos.Conta_Corrente, Creditos_Processos.Codigo_mov, ' +
        'Creditos_Processos.Data_Credito, Creditos_Processos.Contabilizad' +
        'o, Creditos_Processos.Processo, Creditos_Processos.REG, Creditos' +
        '_Processos.Credito, Tipos_creditos.Descricao, Creditos_Processos' +
        '.Valor, Processos.Importador'
      
        'FROM (Parametros LEFT JOIN (Creditos_Processos LEFT JOIN Tipos_c' +
        'reditos ON (Creditos_Processos.Empresa = Tipos_creditos.Empresa)' +
        ' AND (Creditos_Processos.Filial = Tipos_creditos.Filial) AND (Cr' +
        'editos_Processos.Credito = Tipos_creditos.Codigo)) ON (Parametro' +
        's.Empresa = Creditos_Processos.Empresa) AND (Parametros.Filial =' +
        ' Creditos_Processos.Filial)) LEFT JOIN Processos ON (Creditos_Pr' +
        'ocessos.Processo = Processos.Codigo) AND (Creditos_Processos.Fil' +
        'ial = Processos.Filial) AND (Creditos_Processos.Empresa = Proces' +
        'sos.Empresa)'
      
        'WHERE (((Creditos_Processos.Conta_Corrente)=:qconta) AND ((Credi' +
        'tos_Processos.Codigo_mov)=:qmov) AND ((Creditos_Processos.Contab' +
        'ilizado)="SIM") AND ((Processos.Importador) Like :qimp));')
    Left = 304
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'qmov'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '0000'
      end>
    object qrCreditosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrCreditosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrCreditosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object qrCreditosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object qrCreditosData_Credito: TDateTimeField
      FieldName = 'Data_Credito'
    end
    object qrCreditosContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object qrCreditosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrCreditosREG: TAutoIncField
      FieldName = 'REG'
    end
    object qrCreditosCredito: TStringField
      FieldName = 'Credito'
      FixedChar = True
      Size = 4
    end
    object qrCreditosDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object qrCreditosValor: TFloatField
      FieldName = 'Valor'
    end
    object qrCreditosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
  end
  object ds_qcreditos: TDataSource
    DataSet = qrCreditos
    Left = 312
    Top = 72
  end
  object qrDebitos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Empresa, Numerarios_Processos.Filial' +
        ', Numerarios_Processos.Processo, Numerarios_Processos.REG, Numer' +
        'arios_Processos.Numerario, Numerarios_Processos.Usuario_Previsao' +
        ', Numerarios_Processos.Data_Previsao, Numerarios_Processos.Valor' +
        '_Previsao, Numerarios_Processos.Previsao_solicitada, Numerarios_' +
        'Processos.Ok_Previsao_financeiro, Numerarios_Processos.Usuario_F' +
        'inanceiro, Numerarios_Processos.Data_Registro, Numerarios_Proces' +
        'sos.Valor_Registrado, Numerarios_Processos.Valor_Contabilizado, ' +
        'Numerarios_Processos.Contabilizado, Numerarios_Processos.Usuario' +
        '_Contablizado, Numerarios_Processos.Conta_Corrente, Numerarios_P' +
        'rocessos.Codigo_mov, Numerarios_Processos.Detalhe, Tipos_Numerar' +
        'io.Descricao, Processos.Importador'
      
        'FROM (Numerarios_Processos LEFT JOIN Tipos_Numerario ON (Numerar' +
        'ios_Processos.Numerario = Tipos_Numerario.Codigo) AND (Numerario' +
        's_Processos.Filial = Tipos_Numerario.Filial) AND (Numerarios_Pro' +
        'cessos.Empresa = Tipos_Numerario.Empresa)) LEFT JOIN Processos O' +
        'N (Numerarios_Processos.Processo = Processos.Codigo) AND (Numera' +
        'rios_Processos.Filial = Processos.Filial) AND (Numerarios_Proces' +
        'sos.Empresa = Processos.Empresa)'
      
        'WHERE (((Numerarios_Processos.Contabilizado)="SIM") AND ((Numera' +
        'rios_Processos.Conta_Corrente)=:qconta) AND ((Numerarios_Process' +
        'os.Codigo_mov)=:qmov) AND ((Processos.Importador) Like :qimp));')
    Left = 360
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'qmov'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '0000'
      end>
    object qrDebitosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrDebitosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrDebitosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrDebitosREG: TAutoIncField
      FieldName = 'REG'
    end
    object qrDebitosNumerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object qrDebitosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object qrDebitosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object qrDebitosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object qrDebitosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object qrDebitosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object qrDebitosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object qrDebitosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object qrDebitosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object qrDebitosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object qrDebitosContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object qrDebitosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object qrDebitosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object qrDebitosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object qrDebitosDetalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object qrDebitosDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object qrDebitosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
  end
  object ds_qdebitos: TDataSource
    DataSet = qrDebitos
    Left = 368
    Top = 72
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 160
    object qrParamEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrParamFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros.Filial'
      FixedChar = True
      Size = 4
    end
  end
  object qrImport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social'
      'FROM Importadores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 56
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
    object qrImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
  end
  object dsImport: TDataSource
    DataSet = qrImport
    Left = 72
    Top = 16
  end
  object qrCC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao, Nivel'
      'FROM Contas_Correntes'
      'WHERE Empresa = :emp AND Filial = :filial  AND Nivel >=:qnivel')
    Left = 152
    Top = 72
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
        Name = 'qnivel'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qrCCCodigo: TAutoIncField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Codigo'
    end
    object qrCCDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Descricao'
      FixedChar = True
      Size = 45
    end
    object qrCCNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Nivel'
      FixedChar = True
      Size = 4
    end
  end
  object dsCC: TDataSource
    DataSet = qrCC
    Left = 160
    Top = 88
  end
  object qrLancamentos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao, Positivo'
      'FROM Tipos_Lancamento_Ccorrente')
    Left = 512
    object qrLancamentosCodigo: TAutoIncField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Lancamento_Ccorrente.Codigo'
    end
    object qrLancamentosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Lancamento_Ccorrente.Descricao'
      FixedChar = True
      Size = 45
    end
    object qrLancamentosPositivo: TIntegerField
      FieldName = 'Positivo'
      Origin = 'DBNMSCOMEX.Tipos_Lancamento_Ccorrente.Positivo'
    end
  end
  object dsLancamento: TDataSource
    DataSet = qrLancamentos
    Left = 528
    Top = 16
  end
end
