object F_RCR_OBS_ESP: TF_RCR_OBS_ESP
  Left = 357
  Top = 161
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastrar Observações Específicas'
  ClientHeight = 410
  ClientWidth = 610
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbControle: TScrollBox
    Left = 522
    Top = 0
    Width = 88
    Height = 391
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Hint = 'Novo Produto'
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
      Left = 8
      Top = 56
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Produto'
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
      Left = 8
      Top = 88
      Width = 75
      Height = 25
      Hint = 'Excluir Produto'
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
      Left = 8
      Top = 120
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
      Left = 8
      Top = 160
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
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
    object btnFechar: TBitBtn
      Left = 9
      Top = 195
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Kind = bkClose
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 391
    Width = 610
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 522
    Height = 391
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object gridMain: TDBGrid
      Left = 1
      Top = 136
      Width = 520
      Height = 254
      Align = alBottom
      BorderStyle = bsNone
      DataSource = dsOBSESP
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = '_OBS'
          Title.Caption = 'Observações'
          Width = 499
          Visible = True
        end>
    end
    object pnlText: TPanel
      Left = 1
      Top = 1
      Width = 520
      Height = 135
      Align = alClient
      Color = 10514464
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 175
        Height = 13
        Caption = 'Descrição da observação específica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object mmObs: TMemo
        Left = 8
        Top = 24
        Width = 505
        Height = 105
        MaxLength = 279
        TabOrder = 0
      end
    end
  end
  object qryObsEsp: TQuery
    AfterScroll = qryObsEspAfterScroll
    OnCalcFields = qryObsEspCalcFields
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' PK_OBS ,'
      ' DESC_OBS'
      'from'
      'TB_RCR_OBS_ESPECIFICA'
      'where'
      ' Excluido = 0')
    Left = 456
    Top = 280
    object qryObsEspPK_OBS: TSmallintField
      FieldName = 'PK_OBS'
    end
    object qryObsEsp_OBS: TStringField
      FieldKind = fkCalculated
      FieldName = '_OBS'
      Size = 500
      Calculated = True
    end
    object qryObsEspDESC_OBS: TStringField
      FieldName = 'DESC_OBS'
      Origin = 'DBNMSCOMEX.TB_RCR_OBS_ESPECIFICA.DESC_OBS'
      FixedChar = True
      Size = 255
    end
  end
  object dsOBSESP: TDataSource
    DataSet = qryObsEsp
    Left = 424
    Top = 296
  end
  object qryExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 136
    Top = 184
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into TB_RCR_OBS_ESPECIFICA'
      '(DESC_OBS)'
      'values'
      '(:DESC_OBS)')
    Left = 96
    Top = 184
    ParamData = <
      item
        DataType = ftMemo
        Name = 'DESC_OBS'
        ParamType = ptInput
      end>
  end
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update TB_RCR_OBS_ESPECIFICA '
      'set DESC_OBS=:DESC_OBS'
      'where'
      ' PK_OBS =:PK_OBS')
    Left = 56
    Top = 184
    ParamData = <
      item
        DataType = ftMemo
        Name = 'DESC_OBS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PK_OBS'
        ParamType = ptInput
      end>
  end
end
