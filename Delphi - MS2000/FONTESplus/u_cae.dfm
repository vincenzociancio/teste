object f_CAE: Tf_CAE
  Left = 299
  Top = 191
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CAE'
  ClientHeight = 331
  ClientWidth = 649
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
  object pnlMenu: TPanel
    Left = 544
    Top = 0
    Width = 105
    Height = 331
    Align = alRight
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 2
    object Bevel4: TBevel
      Left = 24
      Top = 281
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel3: TBevel
      Left = 24
      Top = 200
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel1: TBevel
      Left = 24
      Top = 118
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 6
      Top = 16
      Width = 3
      Height = 313
      Shape = bsLeftLine
    end
    object btnNovo: TBitBtn
      Left = 22
      Top = 13
      Width = 75
      Height = 25
      Hint = 'Novo CAE'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 22
      Top = 48
      Width = 75
      Height = 25
      Hint = 'Alterar dados do CAE'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btnExcluir: TBitBtn
      Left = 22
      Top = 83
      Width = 75
      Height = 25
      Hint = 'Excluir CAE'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object btnImprimir: TBitBtn
      Left = 22
      Top = 129
      Width = 75
      Height = 26
      Hint = 'Imprimir dados do CAE'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnImprimirClick
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
    object btnLocalizar: TBitBtn
      Left = 22
      Top = 164
      Width = 75
      Height = 25
      Hint = 'Localizar um Produto'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnLocalizarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
    end
    object btnGravar: TBitBtn
      Left = 22
      Top = 211
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
    object btnCancelar: TBitBtn
      Left = 22
      Top = 246
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnCancelarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnSair: TBitBtn
      Left = 22
      Top = 292
      Width = 75
      Height = 25
      Hint = 'Sair do Cadastro de CAE'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 544
    Height = 331
    Align = alClient
    BevelOuter = bvNone
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 286
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object Label2: TLabel
      Left = 78
      Top = 286
      Width = 48
      Height = 13
      Caption = 'Descrição'
    end
    object dbgCAE: TDBGrid
      Left = 7
      Top = 11
      Width = 529
      Height = 273
      DataSource = dsStatus
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'Código'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 444
          Visible = True
        end>
    end
    object dbedtDesc: TDBEdit
      Left = 77
      Top = 300
      Width = 460
      Height = 21
      DataField = 'Descricao'
      DataSource = dsStatus
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbedtCod: TDBEdit
      Left = 8
      Top = 300
      Width = 70
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsStatus
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlLocCAE: TPanel
    Left = 600
    Top = 48
    Width = 569
    Height = 257
    TabOrder = 0
    Visible = False
    object Label17: TLabel
      Left = 12
      Top = 38
      Width = 147
      Height = 16
      Caption = 'Código ou Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 567
      Height = 27
      Align = alTop
      Caption = 'Localiza CAE'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object meLocCAE: TMaskEdit
      Left = 192
      Top = 36
      Width = 337
      Height = 21
      TabOrder = 1
      OnChange = meLocCAEChange
      OnEnter = meLocCAEChange
    end
    object dbGrdUniMed: TDBGrid
      Left = 8
      Top = 72
      Width = 545
      Height = 133
      DataSource = dsLocCAE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Código'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descrição'
          Width = 500
          Visible = True
        end>
    end
    object btnLocUniMedOk: TBitBtn
      Left = 392
      Top = 220
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 3
      OnClick = btnLocUniMedOkClick
      Kind = bkOK
    end
    object btnLocUniMedCanc: TBitBtn
      Left = 478
      Top = 220
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 4
      OnClick = btnLocUniMedCancClick
      Kind = bkCancel
    end
  end
  object t_CAE: TTable
    AutoCalcFields = False
    AfterOpen = t_CAEAfterScroll
    AfterPost = t_CAEAfterPost
    BeforeDelete = t_CAEBeforeDelete
    AfterScroll = t_CAEAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'codigo'
    TableName = 'CAE'
    Left = 176
    object t_CAEcodigo: TStringField
      FieldName = 'codigo'
      Size = 15
    end
    object t_CAEdescricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
  object dsStatus: TDataSource
    DataSet = t_CAE
    Left = 184
    Top = 16
  end
  object q_Cae: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT I.CAE'
      
        'FROM Parametros AS PA INNER JOIN Importadores AS I ON PA.Filial ' +
        '= I.Filial AND PA.Empresa = I.Empresa'
      'WHERE I.CAE = :cae')
    Left = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'cae'
        ParamType = ptUnknown
      end>
    object q_CaeCAE: TStringField
      FieldName = 'CAE'
      Origin = 'DBNMSCOMEX.Importadores.CAE'
      Size = 15
    end
  end
  object q_Teste: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO'
      'FROM CAE'
      'WHERE CODIGO=:cod')
    Left = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object q_TesteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.CAE.codigo'
      Size = 15
    end
  end
  object qrLocCAE: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM CAE'
      'WHERE CODIGO Like :cod OR DESCRICAO Like :desc')
    Left = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocCAECODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.CAE.codigo'
      Size = 15
    end
    object qrLocCAEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.CAE.descricao'
      Size = 255
    end
  end
  object dsLocCAE: TDataSource
    DataSet = qrLocCAE
    Left = 328
    Top = 16
  end
end
