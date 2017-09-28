object frmControle_TVs_Importador: TfrmControle_TVs_Importador
  Left = 198
  Top = 185
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Importadores'
  ClientHeight = 453
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbControle: TScrollBox
    Left = 600
    Top = 0
    Width = 88
    Height = 434
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 0
    object btnGravar: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 32
      Hint = 'Gravar'
      Caption = '&Gravar'
      ParentShowHint = False
      ShowHint = True
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
      Left = 8
      Top = 59
      Width = 75
      Height = 32
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Kind = bkClose
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 434
    Width = 688
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 434
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object pnlText: TPanel
      Left = 1
      Top = 1
      Width = 598
      Height = 64
      Align = alTop
      Color = 10514464
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 80
        Height = 13
        Caption = 'Descrição da TV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 264
        Top = 8
        Width = 57
        Height = 13
        Caption = 'Computador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtDescricao: TEdit
        Left = 16
        Top = 24
        Width = 241
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object edtComputador: TEdit
        Left = 261
        Top = 24
        Width = 225
        Height = 21
        Enabled = False
        TabOrder = 1
      end
    end
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 1
      Top = 117
      Width = 598
      Height = 316
      Align = alClient
      ColCount = 1
      DataSource = dtsTmp
      PanelHeight = 26
      PanelWidth = 582
      TabOrder = 1
      RowCount = 12
      SelectedColor = clLime
      object DBCheckBox1: TDBCheckBox
        Left = 516
        Top = 4
        Width = 50
        Height = 17
        Caption = 'Exibir'
        DataField = 'Exibir'
        DataSource = dtsTmp
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 2
        Width = 118
        Height = 21
        DataField = 'CNPJ'
        DataSource = dtsTmp
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 124
        Top = 2
        Width = 369
        Height = 21
        DataField = 'Importador'
        DataSource = dtsTmp
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 92
      Width = 598
      Height = 25
      Align = alTop
      BevelInner = bvLowered
      Color = clNavy
      TabOrder = 2
      object Label3: TLabel
        Left = 126
        Top = 7
        Width = 61
        Height = 13
        Caption = 'Importador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 4
        Top = 7
        Width = 32
        Height = 13
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 504
        Top = 7
        Width = 70
        Height = 13
        Caption = 'Exibir na TV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlLocalizar: TPanel
      Left = 1
      Top = 65
      Width = 598
      Height = 27
      Align = alTop
      BevelInner = bvLowered
      Color = 16777134
      TabOrder = 3
      object Label12: TLabel
        Left = 16
        Top = 6
        Width = 98
        Height = 13
        Caption = 'Localizar Importador '
      end
      object edtLocalizar: TEdit
        Left = 123
        Top = 4
        Width = 366
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtLocalizarChange
      end
    end
  end
  object dtsTmp: TDataSource
    DataSet = cdsTmp
    Left = 329
    Top = 209
  end
  object cdsTmp: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'PK'
        DataType = ftInteger
      end
      item
        Name = 'Importador'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Exibir'
        DataType = ftBoolean
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    StoreDefs = True
    Left = 145
    Top = 193
    object cdsTmpPK: TIntegerField
      FieldName = 'PK'
    end
    object cdsTmpImportador: TStringField
      FieldName = 'Importador'
      Size = 50
    end
    object cdsTmpExibir: TBooleanField
      FieldName = 'Exibir'
    end
    object cdsTmpCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99\.999\.999\/9999\-99;0'
    end
  end
  object DataSetProvider: TDataSetProvider
    DataSet = cdsTmp
    Constraints = True
    ResolveToDataSet = True
    Exported = False
    Left = 233
    Top = 177
  end
  object qryImportadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
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
      'where Ativo = 1 and FK_TV=:FK_TV'
      'order by'
      '  Razao_Social')
    Left = 457
    Top = 193
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FK_TV'
        ParamType = ptInput
        Value = '1'
      end>
    object qryImportadoresPK_TVs_Importadores: TAutoIncField
      FieldName = 'PK_TVs_Importadores'
      Origin = 'DBNMSCOMEX.Controle_TVs_Importadores.PK_TVs_Importadores'
    end
    object qryImportadoresFK_Importador: TStringField
      FieldName = 'FK_Importador'
      Origin = 'DBNMSCOMEX.Controle_TVs_Importadores.FK_Importador'
      FixedChar = True
      Size = 4
    end
    object qryImportadoresFK_TV: TIntegerField
      FieldName = 'FK_TV'
      Origin = 'DBNMSCOMEX.Controle_TVs_Importadores.FK_TV'
    end
    object qryImportadoresExibir: TBooleanField
      FieldName = 'Exibir'
      Origin = 'DBNMSCOMEX.Controle_TVs_Importadores.Exibir'
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
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 288
    Top = 272
  end
end
