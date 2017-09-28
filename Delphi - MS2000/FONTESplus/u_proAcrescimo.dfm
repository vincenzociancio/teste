object F_proAcrescimo: TF_proAcrescimo
  Left = 181
  Top = 204
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Acrescimo'
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
      Width = 190
      Height = 13
      Caption = 'Valor de Acréscimo na Moeda da Fatura'
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
      Width = 88
      Height = 13
      Caption = 'Tipo de Acréscimo'
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
      Width = 97
      Height = 13
      Caption = 'Acréscimo da Fatura'
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
    object dbGrdAcrescimo: TDBGrid
      Left = 400
      Top = 32
      Width = 337
      Height = 257
      DataSource = dsAcrescimos
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
          FieldName = 'CD_MET_ACRES_VALOR'
          Title.Caption = 'Código'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_MD_NEGOC_ACRES'
          Title.Caption = 'Moeda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_ACRESCIMO_MOEDA'
          Title.Caption = 'Valor'
          Width = 63
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
      'FROM Tipos_Acrescimos_Faturas AS T'
      'WHERE T.Incoterm = :inco AND NOT EXISTS (SELECT *'
      'FROM Acrescimos_Faturas AS A'
      
        'WHERE A.Empresa = :emp AND A.Filial = :filial AND A.Processo = :' +
        'pro AND A.Fatura = :fat AND T.Codigo = A.CD_MET_ACRES_VALOR)'
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
  object tbAcrescimos: TTable
    AutoCalcFields = False
    AfterOpen = tbAcrescimosAfterOpen
    AfterPost = tbAcrescimosAfterPost
    BeforeDelete = tbAcrescimosBeforeDelete
    AfterScroll = tbAcrescimosAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Acrescimos_Faturas'
    Left = 352
    object tbAcrescimosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbAcrescimosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbAcrescimosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbAcrescimosFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 30
    end
    object tbAcrescimosCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Size = 3
    end
    object tbAcrescimosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object tbAcrescimosVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object tbAcrescimosCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object tbAcrescimosVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
    end
  end
  object dsAcrescimos: TDataSource
    DataSet = tbAcrescimos
    Left = 368
    Top = 16
  end
  object qrUpItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas'
      'SET'
      
        'Rateio_Acrescimos = Cast(:rat1 * Peso_Unitario_Acertado as varch' +
        'ar),'
      
        'Rateio_Embalagem = Cast(:rat2 * Peso_Unitario_Acertado as varcha' +
        'r),'
      
        'Rateio_Frete_Interno_imp = Cast(:rat3 * Peso_Unitario_Acertado a' +
        's varchar),'
      
        'Rateio_Seguro_Interno = Cast(:rat4 * Peso_Unitario_Acertado as v' +
        'archar),'
      
        'Rateio_outras_import = Cast(:rat5 * Peso_Unitario_Acertado as va' +
        'rchar),'
      
        'Rateio_startup = Cast(:rat6 * Peso_Unitario_Acertado as varchar)' +
        ','
      
        'Rateio_jurosfin = Cast(:rat7 * Peso_Unitario_Acertado as varchar' +
        '),'
      
        'Rateio_montagem = Cast(:rat8 * Peso_Unitario_Acertado as varchar' +
        '),'
      
        'Rateio_Frete_Interno_exp = Cast(:rat9 * Peso_Unitario_Acertado a' +
        's varchar),'
      
        'Rateio_carga_exp = Cast(:rat10 * Peso_Unitario_Acertado as varch' +
        'ar),'
      
        'Rateio_outras_export = Cast(:rat11 * Peso_Unitario_Acertado as v' +
        'archar),'
      
        'Rateio_frete_fatura = Cast(:rat12 * Peso_Unitario_Acertado as va' +
        'rchar),'
      'Rateio_seguro_fatura = Cast(:rat13 * valor_unitario as varchar),'
      
        'Rateio_carga_imp = Cast(:rat14 * Peso_Unitario_Acertado as varch' +
        'ar)'
      
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
        DataType = ftFloat
        Name = 'rat2'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat3'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat4'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat5'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat6'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat7'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat8'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat9'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat10'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat11'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat12'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'rat13'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rat14'
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
  object qrAcrescimos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Acrescimos_Faturas'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat')
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
    object qrAcrescimosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Empresa'
      Size = 4
    end
    object qrAcrescimosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Filial'
      Size = 4
    end
    object qrAcrescimosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Processo'
      Size = 8
    end
    object qrAcrescimosFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Fatura'
      Size = 30
    end
    object qrAcrescimosCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.CD_MET_ACRES_VALOR'
      Size = 3
    end
    object qrAcrescimosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Descricao'
      Size = 50
    end
    object qrAcrescimosVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.VL_ACRESCIMO_MOEDA'
    end
    object qrAcrescimosCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object qrAcrescimosVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.VL_ACRESCIMO_MN'
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
      'UPDATE Faturas SET Valor_Total = :val'
      
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
      
        'SELECT Empresa, Filial, Processo, Fatura, Sum(Valor_Total) AS So' +
        'maValorTotal, Sum(Peso_Total) AS SomaPesoTotal, Sum(Peso_Total_A' +
        'certado) AS SomaPesoAcertado'
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
      Origin = 'DBNMSCOMEX.ItensFaturas.Empresa'
      Size = 4
    end
    object qrSomaItensFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Filial'
      Size = 4
    end
    object qrSomaItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.ItensFaturas.Processo'
      Size = 8
    end
    object qrSomaItensFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.ItensFaturas.Fatura'
      Size = 30
    end
    object qrSomaItensSomaValorTotal: TFloatField
      FieldName = 'SomaValorTotal'
      Origin = 'DBNMSCOMEX.ItensFaturas.Valor_Total'
    end
    object qrSomaItensSomaPesoTotal: TFloatField
      FieldName = 'SomaPesoTotal'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso_Total'
    end
    object qrSomaItensSomaPesoAcertado: TFloatField
      FieldName = 'SomaPesoAcertado'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso_Total_Acertado'
    end
  end
  object q_up2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas'
      'SET'
      'Rateio_Acrescimos = (Rateio_Embalagem+'
      'Rateio_Frete_Interno_imp +'
      'Rateio_Seguro_Interno +'
      'Rateio_outras_import +'
      'Rateio_startup +'
      'Rateio_jurosfin +'
      'Rateio_montagem +'
      'Rateio_Frete_Interno_exp +'
      'Rateio_carga_exp +'
      'Rateio_outras_export +'
      'Rateio_frete_fatura +'
      'Rateio_seguro_fatura + '
      'Rateio_carga_imp )'
      ''
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat')
    Left = 456
    Top = 32
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
  end
  object Query1: TQuery
    Left = 352
    Top = 249
  end
end
