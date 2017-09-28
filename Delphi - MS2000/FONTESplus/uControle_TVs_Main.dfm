object frmControle_TVs_Main: TfrmControle_TVs_Main
  Left = 146
  Top = 167
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de TV'#39's'
  ClientHeight = 453
  ClientWidth = 688
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 434
    Width = 688
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object ScrollBox1: TScrollBox
    Left = 600
    Top = 0
    Width = 88
    Height = 434
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 1
    object btnFechar: TBitBtn
      Left = 9
      Top = 131
      Width = 75
      Height = 32
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Kind = bkClose
    end
    object btnAtualizar: TBitBtn
      Left = 8
      Top = 88
      Width = 75
      Height = 32
      Caption = 'Atualizar'
      TabOrder = 1
      OnClick = btnAtualizarClick
    end
    object btnTV: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 32
      Caption = 'TV'#39's'
      TabOrder = 2
      OnClick = btnTVClick
    end
    object btnImportadores: TBitBtn
      Left = 8
      Top = 52
      Width = 75
      Height = 32
      Caption = 'Importadores'
      TabOrder = 3
      OnClick = btnImportadoresClick
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 434
    Align = alClient
    Color = clScrollBar
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 1
      Top = 153
      Width = 598
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 598
      Height = 152
      Align = alTop
      TabOrder = 0
      object StaticText1: TStaticText
        Left = 1
        Top = 1
        Width = 596
        Height = 17
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSingle
        Caption = 'Lista de TV'#39's'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object grdTVs: TDBGrid
        Left = 1
        Top = 18
        Width = 596
        Height = 133
        Align = alClient
        BorderStyle = bsNone
        DataSource = dtsTV
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdTVsDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Computador'
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clBlue
            Expanded = False
            FieldName = 'Exibir_Todos_Importadores'
            Width = 130
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clBlue
            Expanded = False
            FieldName = 'Inativo'
            Title.Alignment = taCenter
            Width = 65
            Visible = True
          end>
      end
    end
    object StaticText2: TStaticText
      Left = 1
      Top = 156
      Width = 598
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSingle
      Caption = 'Lista de Importadores'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object gridImportadores: TDBGrid
      Left = 4
      Top = 177
      Width = 591
      Height = 252
      BorderStyle = bsNone
      DataSource = dtsTV_Importadores
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = gridImportadoresDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Color = clBlue
          Expanded = False
          FieldName = 'Exibir'
          Title.Alignment = taCenter
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 411
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Width = 112
          Visible = True
        end>
    end
  end
  object qryTV: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' PK_TV'
      ' ,Descricao'
      ' ,Computador'
      ' ,Exibir_Todos_Importadores'
      ' ,Inativo'
      'from '
      '  Controle_TVs'
      'order by'
      '  Descricao'
      '  ')
    Left = 89
    Top = 73
    object qryTVDescricao: TStringField
      DisplayLabel = 'Descrição da TV'
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Controle_TVs.Descricao'
      FixedChar = True
      Size = 30
    end
    object qryTVComputador: TStringField
      FieldName = 'Computador'
      Origin = 'DBNMSCOMEX.Controle_TVs.Computador'
      FixedChar = True
      Size = 30
    end
    object qryTVExibir_Todos_Importadores: TBooleanField
      DisplayLabel = 'Exibir Todos Importadores'
      FieldName = 'Exibir_Todos_Importadores'
      Origin = 'DBNMSCOMEX.Controle_TVs.Exibir_Todos_Importadores'
      OnGetText = qryTVExibir_Todos_ImportadoresGetText
    end
    object qryTVInativo: TBooleanField
      FieldName = 'Inativo'
      Origin = 'DBNMSCOMEX.Controle_TVs.Inativo'
      OnGetText = qryTVInativoGetText
    end
    object qryTVPK_TV: TAutoIncField
      FieldName = 'PK_TV'
      Origin = 'DBNMSCOMEX.Controle_TVs.PK_TV'
    end
  end
  object dtsTV: TDataSource
    DataSet = qryTV
    Left = 17
    Top = 73
  end
  object qryTV_Importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    DataSource = dtsTV
    SQL.Strings = (
      'select'
      '  PK_TVs_Importadores'
      '  ,FK_Importador'
      '  ,FK_TV'
      '  ,Exibir'
      '  ,Razao_Social'
      '  ,CNPJ_CPF_COMPLETO'
      'from   '
      '  Controle_TVs_Importadores'
      '  inner join Importadores on ( FK_Importador = Codigo )'
      'where Ativo = 1 and FK_TV=:PK_TV'
      'order by'
      '  Razao_Social'
      '')
    Left = 408
    Top = 264
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PK_TV'
        ParamType = ptUnknown
      end>
    object qryTV_ImportadoresExibir: TBooleanField
      FieldName = 'Exibir'
      Origin = 'DBNMSCOMEX.Controle_TVs_Importadores.Exibir'
      OnGetText = qryTV_ImportadoresExibirGetText
    end
    object qryTV_ImportadoresRazao_Social: TStringField
      DisplayLabel = 'Importador'
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryTV_ImportadoresCNPJ_CPF_COMPLETO: TStringField
      DisplayLabel = 'CNPJ do Importador'
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      EditMask = '99\.999\.999\/9999\-99;0'
      FixedChar = True
      Size = 14
    end
  end
  object dtsTV_Importadores: TDataSource
    DataSet = qryTV_Importadores
    Left = 336
    Top = 264
  end
  object qryImportadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      '  Codigo'
      '  ,Razao_Social'
      '  ,CNPJ_CPF_COMPLETO'
      'from'
      '  Importadores'
      'where '
      '   Ativo = 1')
    Left = 208
    Top = 296
    object qryImportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qryImportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryImportadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object qryInsertCliente: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_TVs_Importadores'
      '( FK_Importador, FK_TV, Exibir )'
      'values'
      '( :FK_Importador, :FK_TV, :Exibir )'
      '')
    Left = 368
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_TV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Exibir'
        ParamType = ptUnknown
      end>
  end
end
