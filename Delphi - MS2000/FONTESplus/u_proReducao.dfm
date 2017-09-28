object F_proReducao: TF_proReducao
  Left = 214
  Top = 171
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Redução'
  ClientHeight = 427
  ClientWidth = 752
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 752
    Height = 348
    Align = alClient
    Color = 10514464
    TabOrder = 1
    object Label35: TLabel
      Left = 16
      Top = 296
      Width = 185
      Height = 13
      Caption = 'Valor de Redução na Moeda da Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 83
      Height = 13
      Caption = 'Tipo de Redução'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 400
      Top = 16
      Width = 92
      Height = 13
      Caption = 'Redução da Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object meValor: TMaskEdit
      Left = 16
      Top = 312
      Width = 121
      Height = 21
      MaxLength = 16
      TabOrder = 1
      OnChange = meValorChange
      OnExit = meValorChange
      OnKeyPress = meValorKeyPress
    end
    object btnIncluir: TBitBtn
      Left = 316
      Top = 112
      Width = 75
      Height = 25
      Caption = '&Incluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnIncluirClick
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
    object btnExcluir: TBitBtn
      Left = 316
      Top = 176
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnExcluirClick
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
    object dbGrdTipo: TDBGrid
      Left = 16
      Top = 32
      Width = 289
      Height = 257
      DataSource = dsTipos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          Title.Caption = 'Código'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição'
          Width = 218
          Visible = True
        end>
    end
    object dbGrdReducao: TDBGrid
      Left = 400
      Top = 32
      Width = 337
      Height = 257
      DataSource = dsReducoes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CD_MET_DEDUC_VALOR'
          Title.Caption = 'Código'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição'
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_MD_NEGOC_DEDUC'
          Title.Caption = 'Moeda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_DEDUCAO_MNEG'
          Title.Caption = 'Valor'
          Visible = True
        end>
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 10
      Width = 44
      Height = 13
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object l_cliente: TLabel
      Left = 296
      Top = 10
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 10
      Width = 30
      Height = 13
      Caption = 'Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ME_nossaref: TMaskEdit
      Left = 56
      Top = 6
      Width = 65
      Height = 21
      Enabled = False
      MaxLength = 8
      TabOrder = 0
    end
    object edtFatura: TEdit
      Left = 160
      Top = 6
      Width = 129
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 381
    Width = 752
    Height = 46
    Align = alBottom
    Color = 10514464
    TabOrder = 2
    object btnSair: TBitBtn
      Left = 664
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object qrTipos: TQuery
    AfterOpen = qrTiposAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT T.Codigo, T.Descricao'
      'FROM Tipos_Reducoes_Faturas AS T'
      'WHERE T.Incoterm = :inco AND NOT EXISTS (SELECT *'
      'FROM Deducoes_Faturas AS D'
      
        'WHERE D.Empresa = :emp AND D.Filial = :filial AND D.Processo = :' +
        'pro AND D.Fatura = :fat AND T.Codigo = D.CD_MET_DEDUC_VALOR)'
      'ORDER BY Cast(T.Codigo as real)')
    Left = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'inco'
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
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrTiposCodigo: TStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object qrTiposDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object dsTipos: TDataSource
    DataSet = qrTipos
    Left = 320
    Top = 16
  end
  object tbReducoes: TTable
    AutoCalcFields = False
    AfterOpen = tbReducoesAfterOpen
    AfterPost = tbReducoesAfterPost
    BeforeDelete = tbReducoesBeforeDelete
    AfterScroll = tbReducoesAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Deducoes_Faturas'
    Left = 352
    object tbReducoesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbReducoesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbReducoesProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbReducoesFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 30
    end
    object tbReducoesCD_MET_DEDUC_VALOR: TStringField
      FieldName = 'CD_MET_DEDUC_VALOR'
      Size = 3
    end
    object tbReducoesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object tbReducoesVL_DEDUCAO_MNEG: TFloatField
      FieldName = 'VL_DEDUCAO_MNEG'
    end
    object tbReducoesCD_MD_NEGOC_DEDUC: TStringField
      FieldName = 'CD_MD_NEGOC_DEDUC'
      Size = 3
    end
    object tbReducoesVL_DEDUCAO_MN: TFloatField
      FieldName = 'VL_DEDUCAO_MN'
    end
  end
  object dsReducoes: TDataSource
    DataSet = tbReducoes
    Left = 368
    Top = 16
  end
  object qrUpItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas'
      'SET'
      
        'Rateio_Deducoes = Cast(:rat1 * Peso_Unitario_Acertado as varchar' +
        ')'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat')
    Left = 448
    ParamData = <
      item
        DataType = ftFloat
        Name = 'rat1'
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
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
  end
  object qrReducoes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(VL_DEDUCAO_MNEG) AS SomaDeVL_DEDUCAO_MNEG'
      'FROM Deducoes_Faturas'
      'GROUP BY Empresa, Filial, Processo, Fatura'
      
        'HAVING Empresa = :emp AND Filial = :filial AND Processo = :pro A' +
        'ND Fatura = :fat')
    Left = 416
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrReducoesSomaDeVL_DEDUCAO_MNEG: TFloatField
      FieldName = 'SomaDeVL_DEDUCAO_MNEG'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.VL_DEDUCAO_MNEG'
    end
  end
  object alRateio: TActionList
    Left = 496
    object acRateio: TAction
      Caption = 'acRateio'
      OnExecute = acRateioExecute
    end
    object acAtuFatura: TAction
      Caption = 'acAtuFatura'
      OnExecute = acAtuFaturaExecute
    end
  end
  object qrSomaAcre: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(VL_ACRESCIMO_MOEDA) AS ValTot'
      'FROM Acrescimos_Faturas'
      'GROUP BY Empresa, Filial, Processo, Fatura'
      
        'HAVING Empresa = :emp AND Filial = :fil AND Processo = :pro AND ' +
        'Fatura = :fat')
    Left = 576
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fil'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrSomaAcreValTot: TFloatField
      FieldName = 'ValTot'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.VL_ACRESCIMO_MOEDA'
    end
  end
  object qrSomaRedu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(VL_DEDUCAO_MNEG) AS ValTot'
      'FROM Deducoes_Faturas'
      'GROUP BY Empresa, Filial, Processo, Fatura'
      
        'HAVING Empresa = :emp AND Filial = :fil AND Processo = :pro AND ' +
        'Fatura = :fat')
    Left = 608
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fil'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrSomaReduValTot: TFloatField
      FieldName = 'ValTot'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.VL_DEDUCAO_MNEG'
    end
  end
  object qrUpFatura: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Faturas SET [Valor_Total] = :val'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Codigo = :fat')
    Left = 640
    ParamData = <
      item
        DataType = ftFloat
        Name = 'val'
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
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
  end
  object qrSomaItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Fatura, Sum([Valor_Total]) AS ' +
        'SomaValorTotal, Sum([Peso_Total]) AS SomaPesoTotal, Sum(Peso_Tot' +
        'al_Acertado) AS SomaPesoAcertado'
      'FROM ItensFaturas'
      'GROUP BY Empresa, Filial, Processo, Fatura'
      
        'HAVING Empresa = :emp AND Filial = :filial AND Processo = :pro A' +
        'ND Fatura = :fat')
    UpdateMode = upWhereChanged
    Left = 544
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrSomaItensEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrSomaItensFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrSomaItensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrSomaItensFatura: TStringField
      FieldName = 'Fatura'
      Size = 30
    end
    object qrSomaItensSomaValorTotal: TFloatField
      FieldName = 'SomaValorTotal'
    end
    object qrSomaItensSomaPesoTotal: TFloatField
      FieldName = 'SomaPesoTotal'
    end
    object qrSomaItensSomaPesoAcertado: TFloatField
      FieldName = 'SomaPesoAcertado'
    end
  end
end
