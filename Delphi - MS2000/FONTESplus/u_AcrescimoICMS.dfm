object frmAcrescimoICMS: TfrmAcrescimoICMS
  Left = 331
  Top = 145
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Acrescimo ICMS'
  ClientHeight = 419
  ClientWidth = 807
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 807
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 807
    Height = 386
    Align = alClient
    Color = 10514464
    TabOrder = 1
    object Label35: TLabel
      Left = 312
      Top = 64
      Width = 174
      Height = 13
      Caption = 'Incluir Valor de Acréscimo (R$) ICMS'
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
      Width = 117
      Height = 13
      Caption = 'Tipo de Acréscimo ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 460
      Top = 16
      Width = 93
      Height = 13
      Caption = 'Acréscimo do ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 467
      Top = 296
      Width = 143
      Height = 13
      Caption = 'Valor do Acréscimo (R$) ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 650
      Top = 297
      Width = 146
      Height = 13
      Caption = 'Soma do Acréscimo (R$) ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object meValor: TMaskEdit
      Left = 312
      Top = 80
      Width = 121
      Height = 21
      MaxLength = 16
      TabOrder = 1
      OnChange = meValorChange
      OnKeyPress = meValorKeyPress
    end
    object btnIncluir: TBitBtn
      Left = 334
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
      Left = 333
      Top = 147
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
      DataSource = dsAcrescimosICMS
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
          FieldName = 'CD_ACRESC_ICMS'
          Title.Caption = 'Código'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descrição'
          Visible = True
        end>
    end
    object dbGrdAcrescimo: TDBGrid
      Left = 460
      Top = 32
      Width = 337
      Height = 257
      DataSource = dsAcrescimosICMSInc
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
          FieldName = 'CD_ACRESC_ICMS'
          Title.Caption = 'Código'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descrição'
          Visible = True
        end>
    end
    object pnlBaixo: TPanel
      Left = 1
      Top = 339
      Width = 805
      Height = 46
      Align = alBottom
      Color = 10514464
      TabOrder = 5
      object btnSair: TBitBtn
        Left = 716
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
    object DBEdit1: TDBEdit
      Left = 466
      Top = 312
      Width = 121
      Height = 21
      DataField = 'vl_acrescimo'
      DataSource = dsVL_ACRESCIMO
      Enabled = False
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 676
      Top = 312
      Width = 121
      Height = 21
      DataField = 'soma_acrescimo'
      DataSource = dsTOTAL_VL_ACRESCIMO
      Enabled = False
      TabOrder = 7
    end
  end
  object qAcrescimosICMS: TQuery
    AfterOpen = qAcrescimosICMSAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select CD.CD_ACRESC_ICMS, CD.DESCRICAO from dbo.Acrescimos_ICMS_' +
        'CD as CD'
      'where NOT EXISTS (SELECT * FROM Acrescimos_ICMS AS A'
      
        'WHERE A.Processo =:pProcesso AND A.Fatura =:pFatura AND CD.CD_AC' +
        'RESC_ICMS = A.CD_ACRESC_ICMS)')
    Left = 336
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFatura'
        ParamType = ptInput
      end>
    object qAcrescimosICMSCD_ACRESC_ICMS: TAutoIncField
      FieldName = 'CD_ACRESC_ICMS'
    end
    object qAcrescimosICMSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 100
    end
  end
  object dsAcrescimosICMS: TDataSource
    DataSet = qAcrescimosICMS
    Left = 336
    Top = 49
  end
  object dsAcrescimosICMSInc: TDataSource
    DataSet = qAcrescimosICMInc
    Left = 504
    Top = 49
  end
  object qAcrescimosICMInc: TQuery
    AfterOpen = qAcrescimosICMIncAfterOpen
    AfterScroll = qAcrescimosICMIncAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select CD.CD_ACRESC_ICMS, CD.DESCRICAO from dbo.Acrescimos_ICMS_' +
        'CD as CD'
      'where EXISTS (SELECT * FROM Acrescimos_ICMS AS A'
      
        'WHERE A.Processo =:pProcesso AND A.Fatura =:pFatura AND CD.CD_AC' +
        'RESC_ICMS = A.CD_ACRESC_ICMS)')
    Left = 504
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFatura'
        ParamType = ptInput
      end>
    object qAcrescimosICMIncCD_ACRESC_ICMS: TAutoIncField
      FieldName = 'CD_ACRESC_ICMS'
    end
    object qAcrescimosICMIncDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 100
    end
  end
  object qIncluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Acrescimos_ICMS '
      'select :Processo, :Fatura, :cd_acresc_ICMS, :vl_acrescimo')
    Left = 656
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Fatura'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'cd_acresc_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'vl_acrescimo'
        ParamType = ptInput
      end>
  end
  object qExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'delete Acrescimos_ICMS where PROCESSO =:Processo and Fatura =:Fa' +
        'tura and CD_ACRESC_ICMS =:CD_ACRESC_ICMS')
    Left = 616
    Top = 49
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Fatura'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CD_ACRESC_ICMS'
        ParamType = ptInput
      end>
  end
  object qVL_ACRESCIMO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select vl_acrescimo FROM Acrescimos_ICMS where Processo =:pProce' +
        'sso and FATURA =:pFatura and CD_ACRESC_ICMS =:pCD_ACRESC_ICMS')
    Left = 400
    Top = 329
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFatura'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCD_ACRESC_ICMS'
        ParamType = ptInput
      end>
    object qVL_ACRESCIMOvl_acrescimo: TFloatField
      FieldName = 'vl_acrescimo'
    end
  end
  object dsVL_ACRESCIMO: TDataSource
    DataSet = qVL_ACRESCIMO
    Left = 401
    Top = 368
  end
  object qTOTAL_VL_ACRESCIMO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT SUM(vl_acrescimo)  as soma_acrescimo FROM Acrescimos_ICMS' +
        ' where processo=:pProcesso and FATURA=:pFatura')
    Left = 664
    Top = 329
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFatura'
        ParamType = ptInput
      end>
    object qTOTAL_VL_ACRESCIMOsoma_acrescimo: TFloatField
      FieldName = 'soma_acrescimo'
    end
  end
  object dsTOTAL_VL_ACRESCIMO: TDataSource
    DataSet = qTOTAL_VL_ACRESCIMO
    Left = 665
    Top = 368
  end
  object qVerificaSeMaritimoOuAereo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select  VL_ACRESCIMO from Acrescimos_ICMS where PROCESSO =:pProc' +
        'esso and CD_ACRESC_ICMS =:pCod and FATURA=:pFatura')
    Left = 160
    Top = 337
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pCod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFatura'
        ParamType = ptInput
      end>
    object qVerificaSeMaritimoOuAereoVL_ACRESCIMO: TFloatField
      FieldName = 'VL_ACRESCIMO'
    end
  end
end
