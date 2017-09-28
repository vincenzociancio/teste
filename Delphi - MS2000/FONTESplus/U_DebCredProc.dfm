object F_DebCredProc: TF_DebCredProc
  Left = 199
  Top = 154
  ActiveControl = edCodCliente
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relatório Débito/Crédito por Processo'
  ClientHeight = 408
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 421
    Height = 408
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object Label2: TLabel
      Left = 54
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object btnRel: TBitBtn
      Left = 164
      Top = 373
      Width = 75
      Height = 25
      Caption = '&Relatório'
      TabOrder = 0
      OnClick = btnRelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object btnSair: TBitBtn
      Left = 332
      Top = 373
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = btnSairClick
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
    object cb_saldos: TCheckBox
      Left = 248
      Top = 349
      Width = 153
      Height = 17
      Caption = 'Somente Saldos em aberto'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 286
      Width = 265
      Height = 57
      Caption = ' Período de abertura dos Processos '
      Enabled = False
      TabOrder = 3
      object Label3: TLabel
        Left = 8
        Top = 36
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label4: TLabel
        Left = 136
        Top = 36
        Width = 19
        Height = 13
        Caption = 'Até:'
      end
      object dtpPerDe: TDateTimePicker
        Left = 32
        Top = 28
        Width = 97
        Height = 21
        CalAlignment = dtaLeft
        Date = 32874.5217380787
        Time = 32874.5217380787
        ShowCheckbox = True
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 0
      end
      object dtpPerAte: TDateTimePicker
        Left = 160
        Top = 28
        Width = 97
        Height = 21
        CalAlignment = dtaLeft
        Date = 37193.5230844907
        Time = 37193.5230844907
        ShowCheckbox = True
        Checked = False
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
        OnExit = dtpPerAteExit
      end
    end
    object GroupBox3: TGroupBox
      Left = 288
      Top = 286
      Width = 113
      Height = 57
      Caption = ' Posição em '
      Enabled = False
      TabOrder = 4
      object Label6: TLabel
        Left = 8
        Top = 36
        Width = 17
        Height = 13
        Caption = 'De:'
        Enabled = False
        Visible = False
      end
      object dtpperate2: TDateTimePicker
        Left = 8
        Top = 28
        Width = 97
        Height = 21
        CalAlignment = dtaLeft
        Date = 37193.5230844907
        Time = 37193.5230844907
        ShowCheckbox = True
        Checked = False
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        MinDate = 32874
        ParseInput = False
        TabOrder = 0
      end
    end
    object btnPlanilha: TBitBtn
      Left = 248
      Top = 373
      Width = 75
      Height = 25
      Hint = 'Gera uma planilha do Excel'
      Caption = '&Planilha'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnPlanilhaClick
    end
    object dbTipoDec: TDBGrid
      Left = 6
      Top = 48
      Width = 409
      Height = 93
      DataSource = dsImport
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'Código'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Cliente'
          Width = 337
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 6
      Top = 167
      Width = 405
      Height = 109
      TabOrder = 7
      object DBGrid3: TDBGrid
        Left = 1
        Top = 18
        Width = 403
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
            Width = 300
            Visible = True
          end>
      end
      object cb_status: TCheckBox
        Left = 100
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
        Width = 403
        Height = 17
        Align = alTop
        Caption = 'Status dos Processos'
        Color = clTeal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object cb_cli: TCheckBox
      Left = 120
      Top = 145
      Width = 204
      Height = 17
      Caption = 'Seleciona todos os Clientes'
      TabOrder = 8
      OnClick = cb_cliClick
    end
    object cb_totlan: TCheckBox
      Left = 16
      Top = 349
      Width = 153
      Height = 17
      Caption = 'Todos os Lançamentos'
      TabOrder = 9
      OnClick = cb_totlanClick
    end
    object edCodCliente: TEdit
      Left = 6
      Top = 23
      Width = 45
      Height = 21
      MaxLength = 4
      TabOrder = 10
      OnChange = edCodClienteChange
    end
    object edNomeCliente: TEdit
      Left = 55
      Top = 23
      Width = 360
      Height = 21
      TabOrder = 11
      OnChange = edNomeClienteChange
    end
  end
  object pnlGerando: TPanel
    Left = 400
    Top = 56
    Width = 405
    Height = 182
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 0
    Visible = False
    object Label8: TLabel
      Left = 6
      Top = 6
      Width = 393
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Gerando Planilha . . . '
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object rePlanilha: TRichEdit
      Left = 11
      Top = 32
      Width = 382
      Height = 105
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
      OnChange = rePlanilhaChange
    end
    object btnOk: TBitBtn
      Left = 166
      Top = 144
      Width = 75
      Height = 25
      Caption = '&OK'
      Enabled = False
      TabOrder = 1
      OnClick = btnOkClick
      Kind = bkOK
    end
  end
  object dsImport: TDataSource
    DataSet = QImport
    Left = 16
    Top = 80
  end
  object QImport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Codigo, I.Razao_Social, I.Empresa, I.Filial, cnpj_cpf_c' +
        'ompleto'
      
        'FROM Parametros AS P INNER JOIN Importadores AS I ON P.Filial = ' +
        'I.Filial AND P.Empresa = I.Empresa'
      'ORDER BY I.Razao_Social')
    Left = 72
    Top = 185
    object QImportCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object QImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object QImportEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object QImportFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object QImportcnpj_cpf_completo: TStringField
      FieldName = 'cnpj_cpf_completo'
      FixedChar = True
      Size = 14
    end
  end
  object QProc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    SQL.Strings = (
      
        'SELECT I.Codigo, I.Razao_Social AS Importador, P.Codigo AS Cod, ' +
        'P.Data, P.Codigo_Cliente AS Cliente, S.DESCRICAO AS Status, P.St' +
        'atus AS codstatus'
      
        'FROM (Importadores AS I LEFT JOIN Processos AS P ON (I.Empresa =' +
        ' P.Empresa) AND (I.Filial = P.Filial) AND (I.Codigo = P.Importad' +
        'or)) LEFT JOIN Tipos_status_processos AS S ON P.Status = S.CODIG' +
        'O'
      
        'GROUP BY I.Codigo, I.Razao_Social, P.Codigo, P.Data, P.Codigo_Cl' +
        'iente, S.DESCRICAO, P.Status'
      
        'HAVING P.Data >= cast(:dtDe as datetime) AND P.Data <= cast(:dtA' +
        'te as datetime) AND (I.Codigo like :Import) and (P.Status Like :' +
        'qstat)'
      'ORDER BY I.Razao_Social, P.Data, P.Status;')
    Left = 192
    Top = 185
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dtDe'
        ParamType = ptUnknown
        Value = 2d
      end
      item
        DataType = ftDateTime
        Name = 'dtAte'
        ParamType = ptUnknown
        Value = 55153d
      end
      item
        DataType = ftString
        Name = 'Import'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'qstat'
        ParamType = ptUnknown
        Value = '*'
      end>
    object QProcCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object QProcImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 60
    end
    object QProcCod: TStringField
      FieldName = 'Cod'
      FixedChar = True
      Size = 8
    end
    object QProcData: TDateTimeField
      FieldName = 'Data'
    end
    object QProcCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 60
    end
    object QProcStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 100
    end
    object QProccodstatus: TStringField
      FieldName = 'codstatus'
      FixedChar = True
      Size = 3
    end
  end
  object QDeb: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Processo, Sum(Valor_Registrado) AS Debito'
      'FROM Numerarios_Processos'
      'WHERE Data_Registro >= :qdtini'
      'AND Data_Registro <= :qdtfin'
      'AND Empresa = :emp AND Filial = :filial'
      'GROUP BY Processo'
      'ORDER BY Processo')
    Left = 232
    Top = 185
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'qdtini'
        ParamType = ptUnknown
        Value = 37622d
      end
      item
        DataType = ftDateTime
        Name = 'qdtfin'
        ParamType = ptUnknown
        Value = 37622d
      end
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
    object QDebProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      Size = 8
    end
    object QDebDebito: TFloatField
      FieldName = 'Debito'
      DisplayFormat = '###,###,##0.00;(-###,###,##0.00)'
    end
  end
  object QCred: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Processo, Valor, Credito'
      'FROM Creditos_Processos '
      'WHERE Data_Credito >= :qdtini'
      'AND Data_Credito <= :qdtfin'
      'AND Processo = :proc'
      'AND Empresa = :emp'
      'AND Filial = :filial')
    Left = 272
    Top = 185
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'qdtini'
        ParamType = ptUnknown
        Value = 37622d
      end
      item
        DataType = ftDateTime
        Name = 'qdtfin'
        ParamType = ptUnknown
        Value = 37622d
      end
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end
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
    object QCredProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Processo'
      Size = 8
    end
    object QCredValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Valor'
    end
    object QCredCredito: TStringField
      FieldName = 'Credito'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Credito'
      Size = 4
    end
  end
  object dsProc: TDataSource
    DataSet = QProc
    Left = 128
    Top = 80
  end
  object dsDeb: TDataSource
    DataSet = QDeb
    Left = 184
    Top = 80
  end
  object dsCred: TDataSource
    DataSet = QCred
    Left = 240
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Planilha do Excel (*.xls)|*.xls|Todos os Arquivos (*.*)|*.'
    InitialDir = 'C:\Meus documentos'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 304
    Top = 80
  end
  object qr_Bak: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT I.Codigo, I.Razao_Social AS Importador'
      
        'FROM Parametros AS PA INNER JOIN (Importadores AS I INNER JOIN P' +
        'rocessos AS P ON (I.Empresa = P.Empresa) AND (I.Filial = P.Filia' +
        'l) AND (I.Codigo = P.Importador)) ON (PA.Empresa = I.Empresa) AN' +
        'D (PA.Filial = I.Filial)'
      'GROUP BY I.Codigo, I.Razao_Social'
      
        'HAVING (((I.Codigo) Like :Import) AND ((Max(P.Data))>=Cast(:dtDe' +
        ' as datetime) And (Max(P.Data))<=Cast(:dtAte as datetime)))'
      'ORDER BY I.Razao_Social')
    Left = 24
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'Import'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dtDe'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dtAte'
        ParamType = ptUnknown
      end>
    object qr_BakCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qr_BakImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 60
    end
  end
  object ds_tipospro: TDataSource
    DataSet = Q_TIPOSPRO
    Left = 72
    Top = 80
  end
  object Q_TIPOSPRO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Tipos_status_processos ORDER BY codigo')
    Left = 131
    Top = 186
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
  end
end
