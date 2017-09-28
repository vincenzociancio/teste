object f_fundICMS: Tf_fundICMS
  Left = 267
  Top = 169
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fundamento Legal ICMS'
  ClientHeight = 351
  ClientWidth = 634
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 351
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 527
      Height = 284
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel2'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 16
        Top = 8
        Width = 130
        Height = 13
        Caption = 'Tratamento Tributário ICMS'
      end
      object dbgStatus: TDBGrid
        Left = 16
        Top = 54
        Width = 497
        Height = 227
        DataSource = dsFundamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
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
            Width = 43
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
            Width = 421
            Visible = True
          end>
      end
      object dbcbTratICMS: TDBLookupComboBox
        Left = 16
        Top = 24
        Width = 497
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsTratamento
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 285
      Width = 527
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 64
        Top = 12
        Width = 48
        Height = 13
        Caption = 'Descrição'
      end
      object Label1: TLabel
        Left = 16
        Top = 12
        Width = 33
        Height = 13
        Caption = 'Código'
      end
      object dbedtDesc: TDBEdit
        Left = 64
        Top = 28
        Width = 449
        Height = 21
        DataField = 'Descricao'
        DataSource = dsFundamento
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
        Left = 16
        Top = 28
        Width = 41
        Height = 21
        DataField = 'Codigo'
        DataSource = dsFundamento
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 529
    Top = 0
    Width = 105
    Height = 351
    Align = alRight
    Color = 10514464
    TabOrder = 1
    object Bevel3: TBevel
      Left = 16
      Top = 168
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel1: TBevel
      Left = 16
      Top = 264
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object btnSair: TBitBtn
      Left = 16
      Top = 280
      Width = 75
      Height = 25
      Hint = 'Sair do Cadastro de Status de Processos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnNovo: TBitBtn
      Left = 16
      Top = 48
      Width = 75
      Height = 25
      Hint = 'Novo Status de Processos'
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
      Left = 16
      Top = 88
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Status de Processos'
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
      Left = 16
      Top = 128
      Width = 75
      Height = 25
      Hint = 'Excluir Status de Processos'
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
    object btnGravar: TBitBtn
      Left = 16
      Top = 184
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Left = 16
      Top = 224
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
      TabOrder = 4
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
  end
  object tbTratamento: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'codigo'
    TableName = 'Tratamento_Tributario_ICMS'
    Left = 152
    object tbTratamentocodigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 1
    end
    object tbTratamentodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dsTratamento: TDataSource
    DataSet = tbTratamento
    Left = 168
    Top = 16
  end
  object qrTribut: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT T.Tratamento_Tributario, T.Fundamento_Legal'
      
        'FROM Parametros AS P INNER JOIN Tributacao_Item_Fatura AS T ON P' +
        '.Filial = T.Filial AND P.Empresa = T.Empresa'
      'WHERE T.Tratamento_Tributario = :trat'
      'AND T.Fundamento_Legal = :Fund'
      ''
      '')
    Left = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'trat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Fund'
        ParamType = ptUnknown
      end>
    object qrTributTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Tratamento_Tributario'
      Size = 1
    end
    object qrTributFundamento_Legal: TStringField
      FieldName = 'Fundamento_Legal'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Fundamento_Legal'
      Size = 2
    end
  end
  object dsFundamento: TDataSource
    DataSet = tbFundamento
    Left = 216
    Top = 16
  end
  object tbFundamento: TTable
    AfterOpen = tbFundamentoAfterScroll
    AfterPost = tbFundamentoAfterPost
    BeforeDelete = tbFundamentoBeforeDelete
    AfterScroll = tbFundamentoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Tratamento_Tributario'
    MasterFields = 'CODIGO'
    MasterSource = dsTratamento
    TableName = 'Fundamento_Legal_ICMS'
    Left = 200
    object tbFundamentoTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      Size = 1
    end
    object tbFundamentocodigo: TStringField
      FieldName = 'codigo'
      Size = 2
    end
    object tbFundamentodescricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
  end
end
