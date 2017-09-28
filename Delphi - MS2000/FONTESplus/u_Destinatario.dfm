object f_destinatario: Tf_destinatario
  Left = 71
  Top = 122
  BorderStyle = bsNone
  Caption = 'Cadastro de Destinátario'
  ClientHeight = 220
  ClientWidth = 557
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 557
    Height = 220
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 464
      Top = 8
      Width = 9
      Height = 250
      Shape = bsLeftLine
    end
    object lblDestinatario: TLabel
      Left = 24
      Top = 168
      Width = 56
      Height = 13
      Caption = 'Destinatário'
    end
    object edtDestinatario: TEdit
      Left = 24
      Top = 184
      Width = 417
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object btnFechar: TBitBtn
      Left = 472
      Top = 184
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Exportadores'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object btnLocalizar: TBitBtn
      Left = 472
      Top = 152
      Width = 75
      Height = 25
      Hint = 'Localizar um Exportador'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object btnCancelar: TBitBtn
      Left = 472
      Top = 128
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
      TabOrder = 3
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
    object btnGravar: TBitBtn
      Left = 472
      Top = 96
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
    object btnExcluir: TBitBtn
      Left = 472
      Top = 64
      Width = 75
      Height = 25
      Hint = 'Excluir Exportador'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
    object btnAlterar: TBitBtn
      Left = 472
      Top = 40
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Exportador'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object btnNovo: TBitBtn
      Left = 472
      Top = 16
      Width = 75
      Height = 25
      Hint = 'Novo Exportador'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
    object dbGridDestinatario: TDBGrid
      Left = 24
      Top = 12
      Width = 417
      Height = 147
      DataSource = dsDestinatario
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'destinatario'
          Title.Caption = 'Destinatário'
          Width = 383
          Visible = True
        end>
    end
  end
  object pnlLocalizar: TPanel
    Left = 111
    Top = 12
    Width = 418
    Height = 221
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BiDiMode = bdLeftToRight
    BorderWidth = 1
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    object lblLocaliza: TLabel
      Left = 16
      Top = 34
      Width = 56
      Height = 13
      Caption = 'Destinatário'
    end
    object btnOK: TBitBtn
      Left = 171
      Top = 180
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
    object pnlLocaliza: TPanel
      Left = 5
      Top = 5
      Width = 408
      Height = 24
      Align = alTop
      Caption = 'Localizar Destinatário'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object dbGridLocaliza: TDBGrid
      Left = 8
      Top = 78
      Width = 401
      Height = 94
      DataSource = dsDestinatario
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'destinatario'
          Title.Caption = 'Destinatário'
          Width = 383
          Visible = True
        end>
    end
    object edtlocalizar: TEdit
      Left = 8
      Top = 48
      Width = 399
      Height = 21
      TabOrder = 3
      OnChange = edtlocalizarChange
      OnEnter = edtlocalizarChange
    end
  end
  object qrDestinatario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT codigo, destinatario'
      'FROM Destinatario'
      'ORDER BY destinatario, codigo')
    Left = 120
    Top = 8
    object qrDestinatariocodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Destinatario.Codigo'
    end
    object qrDestinatariodestinatario: TStringField
      FieldName = 'destinatario'
      Origin = 'DBNMSCOMEX.Destinatario.Destinatario'
      Size = 255
    end
  end
  object dsDestinatario: TDataSource
    DataSet = qrDestinatario
    Left = 152
    Top = 40
  end
  object tbDestinatario: TTable
    AfterPost = tbDestinatarioAfterPost
    BeforeDelete = tbDestinatarioBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Destinatario'
    Left = 184
    object tbDestinatarioCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tbDestinatarioDestinatario: TStringField
      FieldName = 'Destinatario'
      Size = 255
    end
  end
end
