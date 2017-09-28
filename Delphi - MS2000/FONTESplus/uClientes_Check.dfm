object frmClientes_Check: TfrmClientes_Check
  Left = 304
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Clientes Check'
  ClientHeight = 370
  ClientWidth = 862
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gridAll: TDBGrid
    Left = 0
    Top = 25
    Width = 401
    Height = 304
    Align = alLeft
    DataSource = dtsAll
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end>
  end
  object pnl1: TPanel
    Left = 0
    Top = 329
    Width = 862
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnGravar: TBitBtn
      Left = 648
      Top = 8
      Width = 99
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = btnGravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btnFechar: TBitBtn
      Left = 752
      Top = 8
      Width = 99
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      Kind = bkClose
    end
    object btnTipoProcesso: TBitBtn
      Left = 544
      Top = 8
      Width = 99
      Height = 25
      Caption = 'Tipos de processo'
      TabOrder = 2
      OnClick = btnTipoProcessoClick
    end
  end
  object gridCheck: TDBGrid
    Left = 462
    Top = 25
    Width = 400
    Height = 304
    Align = alRight
    DataSource = dtsTmp
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 25
    Align = alTop
    Color = clGrayText
    TabOrder = 3
    object Label1: TLabel
      Left = 136
      Top = 8
      Width = 101
      Height = 13
      Caption = 'Todos os clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 608
      Top = 8
      Width = 126
      Height = 13
      Caption = 'Clientes Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 401
    Top = 25
    Width = 61
    Height = 304
    Align = alClient
    TabOrder = 4
    object btnRight: TBitBtn
      Left = 5
      Top = 123
      Width = 52
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnRightClick
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
    object btnLeft: TBitBtn
      Left = 5
      Top = 155
      Width = 52
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnLeftClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 112
    Top = 56
    Width = 665
    Height = 241
    BevelInner = bvRaised
    BevelWidth = 2
    TabOrder = 5
    Visible = False
    object StaticText1: TStaticText
      Left = 4
      Top = 4
      Width = 657
      Height = 17
      Align = alTop
      Caption = 'Tipos de processos'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 21
      Width = 309
      Height = 175
      Align = alLeft
      DataSource = dtsTp1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 352
      Top = 21
      Width = 309
      Height = 175
      Align = alRight
      DataSource = dtsTp2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel4: TPanel
      Left = 4
      Top = 196
      Width = 657
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object BitBtn3: TBitBtn
        Left = 576
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 496
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
    object BitBtn1: TBitBtn
      Left = 316
      Top = 80
      Width = 33
      Height = 25
      Caption = '>>'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 316
      Top = 112
      Width = 33
      Height = 25
      Caption = '<<'
      TabOrder = 5
      OnClick = BitBtn2Click
    end
  end
  object dtsAll: TDataSource
    DataSet = cdsAll
    Left = 152
    Top = 72
  end
  object dtsTmp: TDataSource
    DataSet = Tmp
    Left = 704
    Top = 136
  end
  object qryAll: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Codigo as '#39'Codigo'#39', Razao_Social as '#39'Nome'#39
      'from importadores i'
      'where '
      
        'Not Exists(select * from FollowUp_Check_Clientes f where f.fk_im' +
        'portador = i.Codigo and f.fk_usuario=:Usuario)'
      'And Ativo = 1 '
      'order by Razao_Social')
    Left = 88
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    object qryAllCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qryAllNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 250
    end
  end
  object qryCheck: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select i.Codigo, i.Razao_Social as '#39'Nome'#39
      'from FollowUp_Check_Clientes f'
      'inner join Importadores i on (i.Codigo = f.fk_importador)'
      'where fk_usuario=:Usuario')
    Left = 784
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object Tmp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 648
    Top = 96
    Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E0006436F64
      69676F0100490000000100055749445448020002000400044E6F6D6501004900
      0000010005574944544802000200FA000000}
    object TmpCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object TmpNome: TStringField
      FieldName = 'Nome'
      Size = 250
    end
  end
  object cdsAll: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 176
    Top = 136
    Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E0006436F64
      69676F0100490000000100055749445448020002000400044E6F6D6501004900
      0000010005574944544802000200FA000000}
    object cdsAllCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object cdsAllNome: TStringField
      FieldName = 'Nome'
      Size = 250
    end
  end
  object qryGravar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into FollowUp_Check_Clientes'
      '(FK_Importador, FK_Usuario)'
      'values'
      '(:FK_Importador, :FK_Usuario)')
    Left = 424
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryDelete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from FollowUp_Check_Clientes'
      'where fk_usuario=:usuario')
    Left = 616
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
  end
  object qryTp1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Codigo as '#39'Codigo'#39', DESCRICAO as '#39'Nome'#39
      'from Tipos_de_Processos T'
      'where '
      
        'Not Exists(select * from FollowUp_Check_Tipo_Processo f where f.' +
        'FK_Tipo_Processo = T.Codigo and f.fk_usuario=:Usuario)'
      'And Ativo = 1 '
      'order by DESCRICAO')
    Left = 152
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    object qryTp1Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qryTp1Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 250
    end
  end
  object dtsTp1: TDataSource
    DataSet = cdsTp1
    Left = 88
    Top = 312
  end
  object cdsTp1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 120
    Top = 272
    Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E0006436F64
      69676F0100490000000100055749445448020002000400044E6F6D6501004900
      0000010005574944544802000200FA000000}
    object cdsTp1Codigo: TStringField
      DisplayWidth = 9
      FieldName = 'Codigo'
      Size = 4
    end
    object cdsTp1Nome: TStringField
      DisplayWidth = 300
      FieldName = 'Nome'
      Size = 250
    end
  end
  object dtsTp2: TDataSource
    DataSet = cdsTp2
    Left = 464
    Top = 328
  end
  object cdsTp2: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 504
    Top = 304
    Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E0006436F64
      69676F0100490000000100055749445448020002000400044E6F6D6501004900
      0000010005574944544802000200FA000000}
    object cdsTp2Codigo: TStringField
      DisplayWidth = 8
      FieldName = 'Codigo'
      Size = 4
    end
    object cdsTp2Nome: TStringField
      DisplayWidth = 300
      FieldName = 'Nome'
      Size = 250
    end
  end
  object qryTp2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select T.Codigo, T.DESCRICAO as '#39'Nome'#39
      'from FollowUp_Check_Tipo_Processo f'
      
        'inner join Tipos_de_Processos T on (T.Codigo = f.FK_Tipo_Process' +
        'o)'
      'where f.fk_usuario=:Usuario')
    Left = 568
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryDel2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from FollowUp_Check_Tipo_Processo'
      'where fk_usuario=:usuario')
    Left = 296
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
  end
  object qryGrava2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into FollowUp_Check_Tipo_Processo'
      '(FK_Tipo_Processo, FK_Usuario)'
      'values'
      '(:FK_Tipo_Processo, :FK_Usuario)')
    Left = 344
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Tipo_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Usuario'
        ParamType = ptUnknown
      end>
  end
end
