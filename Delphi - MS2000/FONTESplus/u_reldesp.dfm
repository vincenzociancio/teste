object f_reldesp: Tf_reldesp
  Left = 149
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relatório de Despesas - Plano de Contas'
  ClientHeight = 354
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 169
    Top = 102
    Width = 15
    Height = 13
    Caption = 'de:'
  end
  object Label6: TLabel
    Left = 260
    Top = 102
    Width = 15
    Height = 13
    Caption = 'até'
  end
  object Label1: TLabel
    Left = 16
    Top = 102
    Width = 149
    Height = 13
    Caption = 'Despesas ocorridas no Período'
  end
  object b_imprime: TBitBtn
    Left = 224
    Top = 323
    Width = 89
    Height = 25
    Caption = 'Imprime'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = b_imprimeClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 320
    Top = 323
    Width = 89
    Height = 25
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object me_dataini: TMaskEdit
    Left = 190
    Top = 94
    Width = 65
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '01/01/2000'
  end
  object me_datafin: TMaskEdit
    Left = 282
    Top = 94
    Width = 65
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object rg_tipo: TRadioGroup
    Left = 8
    Top = 126
    Width = 401
    Height = 37
    Caption = 'Tipo de Relatório'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Sintético'
      'Analítico')
    TabOrder = 3
    OnClick = rg_tipoClick
  end
  object gb_ana: TGroupBox
    Left = 8
    Top = 170
    Width = 401
    Height = 145
    Caption = 'Analítico por Plano de Contas'
    Enabled = False
    TabOrder = 4
    object cb_todos: TCheckBox
      Left = 268
      Top = 28
      Width = 53
      Height = 17
      Caption = 'Todos'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cb_todosClick
    end
    object dblc_plano: TDBLookupComboBox
      Left = 8
      Top = 24
      Width = 253
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = ds_plano
      TabOrder = 1
      OnClick = dblc_planoClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 5
    Width = 401
    Height = 81
    DataSource = ds_qemp
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
        FieldName = 'Razao_Social'
        Title.Caption = 'Empresa'
        Visible = True
      end>
  end
  object ds_plano: TDataSource
    DataSet = q_plano2
    Left = 8
    Top = 269
  end
  object q_plano: TQuery
    AfterScroll = q_planoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    SQL.Strings = (
      'SELECT Plano_Contas.Descricao, Plano_Contas.Codigo'
      'FROM Plano_Contas'
      'ORDER BY Plano_Contas.Descricao;')
    Left = 40
    Top = 269
    object q_planoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Plano_Contas.Descricao'
      Size = 50
    end
    object q_planoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Plano_Contas.Codigo'
      Size = 8
    end
  end
  object q_desp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT despesas_mensais_temp.usuario_temp, despesas_mensais_temp' +
        '.Cliente, despesas_mensais_temp.Plano, despesas_mensais_temp.Dat' +
        'a, despesas_mensais_temp.Empresa, despesas_mensais_temp.Filial, ' +
        'despesas_mensais_temp.ccorrente, despesas_mensais_temp.Tipo, des' +
        'pesas_mensais_temp.Descricao, despesas_mensais_temp.Doc, despesa' +
        's_mensais_temp.Historico, despesas_mensais_temp.Usuario, despesa' +
        's_mensais_temp.Conta_Corrente, despesas_mensais_temp.valor, desp' +
        'esas_mensais_temp.obs, despesas_mensais_temp.Numerario'
      'FROM despesas_mensais_temp'
      
        'WHERE (((despesas_mensais_temp.usuario_temp)=:qusu) AND ((despes' +
        'as_mensais_temp.Cliente)=:qemp) AND ((despesas_mensais_temp.Plan' +
        'o)=:qplano) AND ( ((despesas_mensais_temp.Numerario)=:qNUM) OR (' +
        'despesas_mensais_temp.Numerario IS NULL) ) AND ((despesas_mensai' +
        's_temp.Data)>=:qdataini And (despesas_mensais_temp.Data)<=:qdata' +
        'fin))'
      
        'ORDER BY despesas_mensais_temp.Plano, despesas_mensais_temp.Nume' +
        'rario, despesas_mensais_temp.Data;')
    Left = 120
    Top = 269
    ParamData = <
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'MM'
      end
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '0000'
      end
      item
        DataType = ftString
        Name = 'qplano'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qNUM'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 37165d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 37194d
      end>
    object q_despusuario_temp: TStringField
      FieldName = 'usuario_temp'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.usuario_temp'
      Size = 255
    end
    object q_despCliente: TStringField
      FieldName = 'Cliente'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Cliente'
      Size = 4
    end
    object q_despPlano: TStringField
      FieldName = 'Plano'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Plano'
      Size = 8
    end
    object q_despData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Data'
    end
    object q_despEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Empresa'
      Size = 4
    end
    object q_despFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Filial'
      Size = 4
    end
    object q_despccorrente: TIntegerField
      FieldName = 'ccorrente'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.ccorrente'
    end
    object q_despTipo: TIntegerField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Tipo'
    end
    object q_despDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Descricao'
      Size = 45
    end
    object q_despDoc: TStringField
      FieldName = 'Doc'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Doc'
      Size = 15
    end
    object q_despHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Historico'
      Size = 255
    end
    object q_despUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Usuario'
      Size = 10
    end
    object q_despConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Conta_Corrente'
      Size = 8
    end
    object q_despvalor: TFloatField
      FieldName = 'valor'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.valor'
    end
    object q_despobs: TStringField
      FieldName = 'obs'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.obs'
      Size = 50
    end
    object q_despNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Numerario'
      Size = 4
    end
  end
  object q_plano2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    SQL.Strings = (
      'SELECT Plano_Contas.Descricao, Plano_Contas.Codigo'
      'FROM Plano_Contas'
      'ORDER BY Plano_Contas.Descricao;')
    Left = 8
    Top = 229
    object q_plano2Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Plano_Contas.Descricao'
      Size = 50
    end
    object q_plano2Codigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Plano_Contas.Codigo'
      Size = 8
    end
  end
  object q_deldespm: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM despesas_mensais_temp'
      'WHERE (((despesas_mensais_temp.usuario_temp)=:qusu));')
    Left = 184
    Top = 181
    ParamData = <
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'mm'
      end>
  end
  object q_incdespm: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO despesas_mensais_temp ( usuario_temp, Cliente, Plano' +
        ', Data, Empresa, Filial, ccorrente, Tipo, Descricao, Doc, Histor' +
        'ico, Usuario, Conta_Corrente, valor, obs, Numerario )'
      
        'SELECT     :QUSU AS usuario_temp, Movimentacao_Contas_Correntes.' +
        'Cliente, Plano_Contas.Codigo AS Plano, Movimentacao_Contas_Corre' +
        'ntes.Data, '
      
        '                      Movimentacao_Contas_Correntes.Empresa, Mov' +
        'imentacao_Contas_Correntes.Filial, Movimentacao_Contas_Correntes' +
        '.Codigo AS ccorrente, '
      
        '                      Movimentacao_Contas_Correntes.Tipo, Tipos_' +
        'Lancamento_Ccorrente.Descricao, Movimentacao_Contas_Correntes.Do' +
        'c, '
      
        '                      Movimentacao_Contas_Correntes.Historico, M' +
        'ovimentacao_Contas_Correntes.Usuario, Contas_Correntes.Conta_Cor' +
        'rente, '
      
        '                      Numerarios_Processos.Valor_Contabilizado A' +
        'S valor, Numerarios_Processos.Detalhe AS obs, Numerarios_Process' +
        'os.Numerario'
      'FROM         Numerarios_Processos LEFT OUTER JOIN'
      
        '                      Tipos_Numerario ON Numerarios_Processos.Nu' +
        'merario = Tipos_Numerario.Codigo INNER JOIN'
      
        '                      Movimentacao_Contas_Correntes ON Numerario' +
        's_Processos.Codigo_mov = Movimentacao_Contas_Correntes.Codigo_Mo' +
        'v AND '
      
        '                      Numerarios_Processos.Conta_Corrente = Movi' +
        'mentacao_Contas_Correntes.Codigo LEFT OUTER JOIN'
      
        '                      Tipos_Lancamento_Ccorrente ON Movimentacao' +
        '_Contas_Correntes.Tipo = Tipos_Lancamento_Ccorrente.Codigo INNER' +
        ' JOIN'
      
        '                      Contas_Correntes ON Movimentacao_Contas_Co' +
        'rrentes.Codigo = Contas_Correntes.Codigo LEFT OUTER JOIN'
      
        '                      Plano_Contas ON Tipos_Numerario.Plano_cont' +
        'as = Plano_Contas.Codigo'
      
        'WHERE ((Movimentacao_Contas_Correntes.Data>=:qdataini) And (Movi' +
        'mentacao_Contas_Correntes.Data<=:qdatafin) AND (Tipos_Lancamento' +
        '_Ccorrente.Positivo=0))'
      
        'ORDER BY Movimentacao_Contas_Correntes.Cliente, Plano_Contas.Cod' +
        'igo, Movimentacao_Contas_Correntes.Data;'
      '')
    Left = 224
    Top = 181
    ParamData = <
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'mm'
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 36526d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 55153d
      end>
  end
  object q_emp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.Razao_Social'
      
        'FROM Parametros INNER JOIN Importadores ON (Parametros.Filial = ' +
        'Importadores.Filial) AND (Parametros.Empresa = Importadores.Empr' +
        'esa)'
      'WHERE (((Importadores.Codigo) Like '#39'00'#39'+'#39'%'#39'));')
    Left = 96
    Top = 8
    object q_empEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object q_empFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object q_empCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object q_empRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
  end
  object ds_qemp: TDataSource
    DataSet = q_emp
    Left = 104
    Top = 61
  end
  object q_incdespm2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO despesas_mensais_temp ( usuario_temp, Cliente, Plano' +
        ', Data, Empresa, Filial, ccorrente, Tipo, Descricao, Doc, Histor' +
        'ico, Usuario, Conta_Corrente, valor, obs )'
      
        'SELECT :qusu  AS usuario_temp, mcc.Cliente, Plano_Contas.Codigo ' +
        'AS Plano, mcc.Data, mcc.Empresa, mcc.Filial, mcc.Codigo AS ccorr' +
        'ente, mcc.Tipo, Tipos_Lancamento_Ccorrente.Descricao, mcc.Doc, m' +
        'cc.Historico, mcc.Usuario, Contas_Correntes.Conta_Corrente, ([Va' +
        'lor]*(-1)) AS qvalor, Case when [mcc].[data_apuracao_cpmf_inicia' +
        'l] Is Not Null then "Apuração: de "+Cast([mcc].[data_apuracao_cp' +
        'mf_inicial]as varchar)+" à "+Cast([mcc].[data_apuracao_cpmf_fina' +
        'l]as varchar) end AS obs'
      
        'FROM ((Movimentacao_Contas_Correntes AS mcc LEFT JOIN Tipos_Lanc' +
        'amento_Ccorrente ON mcc.Tipo = Tipos_Lancamento_Ccorrente.Codigo' +
        ') LEFT JOIN Contas_Correntes ON mcc.Codigo = Contas_Correntes.Co' +
        'digo) LEFT JOIN Plano_Contas ON mcc.Plano_Contas = Plano_Contas.' +
        'Codigo'
      
        'WHERE (((Plano_Contas.Codigo) Is Not Null And (Plano_Contas.Codi' +
        'go)<>"") AND ((mcc.Plano_Contas) Is Not Null And (mcc.Plano_Cont' +
        'as)<>"") AND ((Tipos_Lancamento_Ccorrente.Positivo)=0))'
      'ORDER BY mcc.Cliente, Plano_Contas.Codigo, mcc.Data;')
    Left = 304
    Top = 234
    ParamData = <
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'MM'
      end>
  end
  object Q_despA: TQuery
    AfterScroll = Q_despAAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT despesas_mensais_temp.Numerario, Tipos_Numerario.Descrica' +
        'o'
      
        'FROM despesas_mensais_temp LEFT JOIN Tipos_Numerario ON despesas' +
        '_mensais_temp.Numerario = Tipos_Numerario.Codigo'
      
        'WHERE (((despesas_mensais_temp.usuario_temp)=:qusu) AND ((despes' +
        'as_mensais_temp.Cliente)=:qemp) AND ((despesas_mensais_temp.Plan' +
        'o)=:qplano) AND ((despesas_mensais_temp.Data)>=:qdataini And (de' +
        'spesas_mensais_temp.Data)<=:qdatafin))'
      
        'GROUP BY despesas_mensais_temp.Numerario, Tipos_Numerario.Descri' +
        'cao'
      'ORDER BY Tipos_Numerario.Descricao;'
      '')
    Left = 80
    Top = 269
    ParamData = <
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'MM'
      end
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '0000'
      end
      item
        DataType = ftString
        Name = 'qplano'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 37165d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 37194d
      end>
    object Q_despANumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.despesas_mensais_temp.Numerario'
      Size = 4
    end
    object Q_despADescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
  end
end
