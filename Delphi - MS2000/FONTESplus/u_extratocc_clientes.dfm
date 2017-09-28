object f_extratocc_clientes: Tf_extratocc_clientes
  Left = 184
  Top = 166
  BorderStyle = bsSingle
  Caption = 'Extrato Conta Corrente Clientes'
  ClientHeight = 254
  ClientWidth = 518
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
  object p_clientes: TPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 254
    Align = alClient
    BevelWidth = 4
    TabOrder = 0
    object Label41: TLabel
      Left = 4
      Top = 4
      Width = 510
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Extrato Conta Corrente de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel16: TPanel
      Left = 4
      Top = 24
      Width = 510
      Height = 173
      Hint = 'Imprimir em planilha Excel'
      Align = alTop
      TabOrder = 0
      object Label42: TLabel
        Left = 8
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Clientes'
      end
      object DBGrid7: TDBGrid
        Left = 10
        Top = 24
        Width = 489
        Height = 129
        DataSource = ds_qimportadores
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            Title.Caption = 'Razão Social'
            Width = 380
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpj_cpf_completo'
            Title.Caption = 'CNPJ / CPF'
            Visible = True
          end>
      end
    end
    object Panel17: TPanel
      Left = 4
      Top = 197
      Width = 510
      Height = 48
      Align = alTop
      TabOrder = 1
      object Label44: TLabel
        Left = 8
        Top = 20
        Width = 56
        Height = 13
        Caption = 'Período de '
      end
      object Label45: TLabel
        Left = 144
        Top = 24
        Width = 15
        Height = 13
        Caption = 'até'
      end
      object me_datainic: TMaskEdit
        Left = 72
        Top = 16
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object me_datafinc: TMaskEdit
        Left = 164
        Top = 16
        Width = 65
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnExit = me_datafincExit
      end
      object b_fechacliente: TBitBtn
        Left = 427
        Top = 14
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 4
        OnClick = b_fechaclienteClick
        Kind = bkCancel
      end
      object b_imprimecliente: TBitBtn
        Left = 345
        Top = 14
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 3
        OnClick = b_imprimeclienteClick
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
      object btnExcel: TBitBtn
        Left = 239
        Top = 14
        Width = 99
        Height = 25
        Caption = 'Planilha Excel'
        TabOrder = 2
        OnClick = btnExcelClick
        Glyph.Data = {
          62050000424D62050000000000003604000028000000110000000F0000000100
          0800000000002C01000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A60004040400080808000C0C0C0011111100161616001C1C1C00222222002929
          2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
          CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
          00000033330000336600003399000033CC000033FF0000660000006633000066
          6600006699000066CC000066FF00009900000099330000996600009999000099
          CC000099FF0000CC000000CC330000CC660000CC990000CCCC0000CCFF0000FF
          660000FF990000FFCC00330000003300330033006600330099003300CC003300
          FF00333300003333330033336600333399003333CC003333FF00336600003366
          330033666600336699003366CC003366FF003399000033993300339966003399
          99003399CC003399FF0033CC000033CC330033CC660033CC990033CCCC0033CC
          FF0033FF330033FF660033FF990033FFCC0033FFFF0066000000660033006600
          6600660099006600CC006600FF00663300006633330066336600663399006633
          CC006633FF00666600006666330066666600666699006666CC00669900006699
          330066996600669999006699CC006699FF0066CC000066CC330066CC990066CC
          CC0066CCFF0066FF000066FF330066FF990066FFCC00CC00FF00FF00CC009999
          000099339900990099009900CC009900000099333300990066009933CC009900
          FF00996600009966330099336600996699009966CC009933FF00999933009999
          6600999999009999CC009999FF0099CC000099CC330066CC660099CC990099CC
          CC0099CCFF0099FF000099FF330099CC660099FF990099FFCC0099FFFF00CC00
          000099003300CC006600CC009900CC00CC0099330000CC333300CC336600CC33
          9900CC33CC00CC33FF00CC660000CC66330099666600CC669900CC66CC009966
          FF00CC990000CC993300CC996600CC999900CC99CC00CC99FF00CCCC0000CCCC
          3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000CCFF330099FF6600CCFF
          9900CCFFCC00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
          6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
          CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
          0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
          9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
          A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
          DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
          0707070707070707070707000000070707070707070707070700000000000700
          0000000000000000000000000006060606000700000000F8F8F8F8F8F8F8F800
          06FEFEFF0007070000000700FE06060606060006FEFEFF000707070000000707
          00FE0606060006FEFEFF000600070700000007070700FE060006FEFEFF000000
          00070700000007070707000006FEFEFF00070707070707000000070707070006
          FEFEFF00000707070707070000000707070006FEFEFF0006F800070707070700
          000007070006FEFEFF00FE0606F80007070707000000070006FEFEFF000700FE
          0606F80007070700000000FFFFFFFF0007070700FEFEFEFE0007070000000000
          0000000707070707000000000007070000000707070707070707070707070707
          070707000000}
      end
    end
  end
  object q_extratoexcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE Extrato_temp'
      'FROM Extrato_temp'
      
        'Parametros INNER JOIN Extrato_temp ON (Parametros.Filial = Extra' +
        'to_temp.Filial) AND (Parametros.Empresa = Extrato_temp.Empresa)'
      'WHERE (((Extrato_temp.Cliente) Like :qcliente));')
    Left = 148
    Top = 22
    ParamData = <
      item
        DataType = ftString
        Name = 'qcliente'
        ParamType = ptUnknown
        Value = '*'
      end>
  end
  object q_extratomovi: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Extrato_temp ( Empresa, Filial, Cliente, Data, Histo' +
        'rico, Valor )'
      
        'SELECT Parametros.Empresa, Parametros.Filial, Importadores.Codig' +
        'o, Creditos_Processos.Data_Credito, ("Proc.: "+[processos].[codi' +
        'go]+" - Ref.: "+[processos].[codigo_cliente]+" - "+[tipos_credit' +
        'os].[descricao]) AS qhist, Creditos_Processos.Valor'
      
        'FROM (((Parametros INNER JOIN Importadores ON (Parametros.Filial' +
        ' = Importadores.Filial) AND (Parametros.Empresa = Importadores.E' +
        'mpresa)) INNER JOIN Processos ON (Importadores.Codigo = Processo' +
        's.Importador) AND (Importadores.Filial = Processos.Filial) AND (' +
        'Importadores.Empresa = Processos.Empresa)) INNER JOIN Creditos_P' +
        'rocessos ON (Processos.Codigo = Creditos_Processos.Processo) AND' +
        ' (Processos.Filial = Creditos_Processos.Filial) AND (Processos.E' +
        'mpresa = Creditos_Processos.Empresa)) INNER JOIN Tipos_creditos ' +
        'ON (Creditos_Processos.Credito = Tipos_creditos.Codigo) AND (Cre' +
        'ditos_Processos.Filial = Tipos_creditos.Filial) AND (Creditos_Pr' +
        'ocessos.Empresa = Tipos_creditos.Empresa)'
      'WHERE Importadores.Codigo Like :qcliente')
    Left = 164
    Top = 38
    ParamData = <
      item
        DataType = ftString
        Name = 'qcliente'
        ParamType = ptUnknown
        Value = '*'
      end>
  end
  object q_extratonumer: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Extrato_temp ( Empresa, Filial, Cliente, Historico, ' +
        'Data, Valor )'
      
        'SELECT Parametros.Empresa, Parametros.Filial, Importadores.Codig' +
        'o, ("Proc.: "+[processos].[codigo]+" - Ref.: "+[processos].[codi' +
        'go_cliente]+" - "+[tipos_numerario].[descricao]) AS qhist, Numer' +
        'arios_Processos.Data_Registro, ([Valor_registrado]*-1) AS qvalor'
      
        'FROM (((Parametros INNER JOIN Importadores ON (Parametros.Filial' +
        ' = Importadores.Filial) AND (Parametros.Empresa = Importadores.E' +
        'mpresa)) INNER JOIN Processos ON (Importadores.Codigo = Processo' +
        's.Importador) AND (Importadores.Filial = Processos.Filial) AND (' +
        'Importadores.Empresa = Processos.Empresa)) INNER JOIN Numerarios' +
        '_Processos ON (Processos.Codigo = Numerarios_Processos.Processo)' +
        ' AND (Processos.Filial = Numerarios_Processos.Filial) AND (Proce' +
        'ssos.Empresa = Numerarios_Processos.Empresa)) INNER JOIN Tipos_N' +
        'umerario ON (Numerarios_Processos.Numerario = Tipos_Numerario.Co' +
        'digo) AND (Numerarios_Processos.Filial = Tipos_Numerario.Filial)' +
        ' AND (Numerarios_Processos.Empresa = Tipos_Numerario.Empresa)'
      
        'WHERE Importadores.Codigo Like :qcliente and (Numerarios_Process' +
        'os.Data_Registro Is Not Null) and  numerarios_processos.Valor_re' +
        'gistrado<>0')
    Left = 184
    Top = 54
    ParamData = <
      item
        DataType = ftString
        Name = 'qcliente'
        ParamType = ptUnknown
        Value = '*'
      end>
  end
  object q_saldoanterior: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Extrato_temp.Cliente, Sum(Extrato_temp.Valor) AS saldoant' +
        'erior'
      
        'FROM Parametros INNER JOIN Extrato_temp ON (Parametros.Filial = ' +
        'Extrato_temp.Filial) AND (Parametros.Empresa = Extrato_temp.Empr' +
        'esa)'
      'WHERE (((Extrato_temp.Data)<:qdataini))'
      'GROUP BY Extrato_temp.Cliente'
      'HAVING (((Extrato_temp.Cliente) Like :qcliente));')
    Left = 204
    Top = 78
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 36892d
      end
      item
        DataType = ftString
        Name = 'qcliente'
        ParamType = ptUnknown
        Value = '*'
      end>
    object q_saldoanteriorCliente: TStringField
      FieldName = 'Cliente'
      Origin = 'DBNMSCOMEX.Extrato_temp.Cliente'
      Size = 4
    end
    object q_saldoanteriorsaldoanterior: TFloatField
      FieldName = 'saldoanterior'
      Origin = 'DBNMSCOMEX.Extrato_temp.Valor'
    end
  end
  object q_extratonoperiodo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Extrato_temp.Empresa, Extrato_temp.Filial, Extrato_temp.C' +
        'liente, Importadores.Razao_Social, Extrato_temp.Data, Extrato_te' +
        'mp.Historico, Extrato_temp.Valor, Extrato_temp.auto'
      
        'FROM (Parametros INNER JOIN Extrato_temp ON (Parametros.Filial =' +
        ' Extrato_temp.Filial) AND (Parametros.Empresa = Extrato_temp.Emp' +
        'resa)) INNER JOIN Importadores ON (Extrato_temp.Cliente = Import' +
        'adores.Codigo) AND (Extrato_temp.Filial = Importadores.Filial) A' +
        'ND (Extrato_temp.Empresa = Importadores.Empresa)'
      
        'GROUP BY Extrato_temp.Empresa, Extrato_temp.Filial, Extrato_temp' +
        '.Cliente, Importadores.Razao_Social, Extrato_temp.Data, Extrato_' +
        'temp.Historico, Extrato_temp.Valor, Extrato_temp.auto'
      
        'HAVING (((Extrato_temp.Cliente) Like :qcliente) AND ((Extrato_te' +
        'mp.Data)>=:qdataini And (Extrato_temp.Data)<=:qdatafin));')
    Left = 224
    Top = 94
    ParamData = <
      item
        DataType = ftString
        Name = 'qcliente'
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
      end>
    object q_extratonoperiodoEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_extratonoperiodoFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_extratonoperiodoCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 4
    end
    object q_extratonoperiodoRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_extratonoperiodoData: TDateTimeField
      FieldName = 'Data'
    end
    object q_extratonoperiodoHistorico: TStringField
      FieldName = 'Historico'
      FixedChar = True
      Size = 255
    end
    object q_extratonoperiodoValor: TFloatField
      FieldName = 'Valor'
    end
    object q_extratonoperiodoauto: TAutoIncField
      FieldName = 'auto'
    end
  end
  object q_saldoposterior: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Extrato_temp.Cliente, Sum(Extrato_temp.Valor) AS saldopos' +
        'terior'
      
        'FROM Parametros INNER JOIN Extrato_temp ON (Parametros.Filial = ' +
        'Extrato_temp.Filial) AND (Parametros.Empresa = Extrato_temp.Empr' +
        'esa)'
      'WHERE (((Extrato_temp.Data)>:qdatafin))'
      'GROUP BY Extrato_temp.Cliente'
      'HAVING (((Extrato_temp.Cliente) Like :qcliente));')
    Left = 244
    Top = 110
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = '31/12/2001'
      end
      item
        DataType = ftString
        Name = 'qcliente'
        ParamType = ptUnknown
        Value = '*'
      end>
    object q_saldoposteriorCliente: TStringField
      FieldName = 'Cliente'
      Origin = 'DBNMSCOMEX.Extrato_temp.Cliente'
      Size = 4
    end
    object q_saldoposteriorsaldoposterior: TFloatField
      FieldName = 'saldoposterior'
      Origin = 'DBNMSCOMEX.Extrato_temp.Valor'
    end
  end
  object q_importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Codigo <>'#39'0000'#39
    Filtered = True
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.Razao_Social, Importadores.cnpj_cpf_completo'
      
        'FROM Parametros INNER JOIN Importadores ON (Parametros.Filial = ' +
        'Importadores.Filial) AND (Parametros.Empresa = Importadores.Empr' +
        'esa)'
      'ORDER BY Importadores.Razao_Social;')
    Left = 88
    Top = 38
    object q_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_importadoresFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object q_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_importadorescnpj_cpf_completo: TStringField
      FieldName = 'cnpj_cpf_completo'
      FixedChar = True
      Size = 14
    end
  end
  object ds_qimportadores: TDataSource
    DataSet = q_importadores
    Left = 96
    Top = 52
  end
end
