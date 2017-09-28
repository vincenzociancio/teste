object F_ctrlTransmittal: TF_ctrlTransmittal
  Left = 510
  Top = 188
  BorderStyle = bsSingle
  Caption = 'Controle de Transmittal'
  ClientHeight = 377
  ClientWidth = 762
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
  object pnlPrinc: TPanel
    Left = 0
    Top = 25
    Width = 762
    Height = 352
    Align = alClient
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 8
    Color = 10514464
    TabOrder = 0
    object pnlMenu: TPanel
      Left = 8
      Top = 305
      Width = 746
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object btnIncluir: TBitBtn
        Left = 19
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Incluir Transmittal'
        Caption = 'Novo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnIncluirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
      object btnAlterar: TBitBtn
        Left = 91
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Alterar dados do Transmittal'
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
        Left = 163
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Excluir Transmittal'
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
      object btnLocalizar: TBitBtn
        Left = 248
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Localizar Transmittal'
        Caption = '&Localizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
      object btnFiltrar: TBitBtn
        Left = 320
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Filtrar Transmittal'
        Caption = '&Filtrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnFiltrarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333FF3FF3333333333CC30003333333333773777333333333C33
          3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
          33003377333337F33377333333333C333300333F333337F33377339333333C33
          3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
          330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
          330077F377F337F33377993399333C33330077FF773337F33377399993333C33
          33333777733337F333FF333333333C33300033333333373FF7773333333333CC
          3000333333333377377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnRelatorio: TBitBtn
        Left = 587
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Imprime Relatório Sintético ou Analítico dos Transmittals'
        Caption = '&Relatório'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = btnRelatorioClick
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
      object BitBtn1: TBitBtn
        Left = 499
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Imprimir Itens do Transmittal Selecionado'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BitBtn1Click
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
      object btnItem: TBitBtn
        Left = 414
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Visualizar Itens do Transmittal Selecionado'
        Caption = '&Itens'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnItemClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
      end
      object btnSair_Item: TBitBtn
        Left = 659
        Top = 12
        Width = 70
        Height = 25
        Hint = 'Sair'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Kind = bkClose
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 8
      Width = 746
      Height = 297
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object mmFiltro: TMemo
        Left = 0
        Top = 249
        Width = 746
        Height = 48
        TabStop = False
        Align = alBottom
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'TRANSMITTAL FILTRADO POR:')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
        Visible = False
      end
      object dbGrdPatri: TDBGrid
        Left = 0
        Top = 0
        Width = 746
        Height = 249
        Align = alClient
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dsTrans
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
            Title.Caption = 'Nº'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Title.Caption = 'Data Envio'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Importador_nome'
            Title.Caption = 'Importador'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'destinatario_nome'
            Title.Caption = 'Destinatario'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinacao'
            Width = 293
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Completo'
            Title.Caption = 'Remetente'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Setor'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Receptor'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Recebimento'
            Title.Caption = 'Data Recebimento'
            Width = 97
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 746
        Height = 249
        Align = alClient
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dsTrans
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            Title.Caption = 'Nº'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Title.Caption = 'Data Envio'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Importador_nome'
            Title.Caption = 'Importador'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'destinatario_nome'
            Title.Caption = 'Destinatario'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinacao'
            Width = 293
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Completo'
            Title.Caption = 'Remetente'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Setor'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Receptor'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Recebimento'
            Title.Caption = 'Data Recebimento'
            Width = 97
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 746
        Height = 249
        Align = alClient
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dsTrans
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'Nº'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Title.Caption = 'Data Envio'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Importador_nome'
            Title.Caption = 'Importador'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'destinatario_nome'
            Title.Caption = 'Destinatario'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinacao'
            Width = 293
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Completo'
            Title.Caption = 'Remetente'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Setor'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Receptor'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Recebimento'
            Title.Caption = 'Data Recebimento'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'processo'
            Title.Caption = 'Processo'
            Visible = True
          end>
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Transmittal'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 762
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Controle de Transmittal'
      Color = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlLoc: TPanel
    Left = 169
    Top = 67
    Width = 369
    Height = 30
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object rgLoc: TRadioGroup
      Left = 16
      Top = 40
      Width = 337
      Height = 97
      Caption = ' Localizar por '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Número'
        'Data'
        'Importador'
        'Destinatário'
        'Remetente'
        'Setor'
        'Destinação'
        'Processo')
      TabOrder = 0
    end
    object edtLoc: TEdit
      Left = 16
      Top = 144
      Width = 337
      Height = 21
      TabOrder = 1
    end
    object btnOkLoc: TBitBtn
      Left = 103
      Top = 176
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 2
      OnClick = btnOkLocClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancLoc: TBitBtn
      Left = 183
      Top = 176
      Width = 75
      Height = 25
      Hint = 'Cancela o filtro dos dados'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnCancLocClick
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
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 359
      Height = 24
      Align = alTop
      Caption = 'Localização de Transmittal'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlImprime: TPanel
    Left = 192
    Top = 109
    Width = 369
    Height = 156
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 7
    Visible = False
    object rgImpr: TRadioGroup
      Left = 16
      Top = 40
      Width = 337
      Height = 57
      Caption = 'Opções'
      ItemIndex = 0
      Items.Strings = (
        'Relatório Sintético'
        'Relatório Analítico')
      TabOrder = 0
    end
    object BitBtn11: TBitBtn
      Left = 103
      Top = 112
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 1
      OnClick = BitBtn11Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn12: TBitBtn
      Left = 191
      Top = 112
      Width = 75
      Height = 25
      Hint = 'Cancela o filtro dos dados'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn12Click
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
    object Panel13: TPanel
      Left = 5
      Top = 5
      Width = 359
      Height = 24
      Align = alTop
      Caption = 'Imprime Relatório de Transmittal'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object pnlFiltrar: TPanel
    Left = 96
    Top = -16
    Width = 369
    Height = 361
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object Label11: TLabel
      Left = 16
      Top = 293
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label12: TLabel
      Left = 120
      Top = 293
      Width = 19
      Height = 13
      Caption = 'Até:'
    end
    object btnOkFiltrar: TBitBtn
      Left = 103
      Top = 323
      Width = 75
      Height = 25
      Hint = 'Filtrar dados'
      Caption = '&Ok'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnOkFiltrarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object dblcb3: TDBLookupComboBox
      Left = 16
      Top = 48
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'codigo'
      ListField = 'Descricao'
      ListFieldIndex = 1
      ListSource = dsSetor
      TabOrder = 0
    end
    object dblcb4: TDBLookupComboBox
      Left = 16
      Top = 96
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListFieldIndex = 1
      ListSource = dsUsuario
      TabOrder = 1
    end
    object edtValDe: TEdit
      Left = 40
      Top = 289
      Width = 64
      Height = 21
      BiDiMode = bdRightToLeft
      Enabled = False
      MaxLength = 10
      ParentBiDiMode = False
      TabOrder = 2
    end
    object edtValAte: TEdit
      Left = 144
      Top = 289
      Width = 64
      Height = 21
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 3
    end
    object cbSet: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Setor:'
      TabOrder = 5
      OnClick = cbSetClick
    end
    object cbRem: TCheckBox
      Left = 16
      Top = 80
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Remetente:'
      TabOrder = 6
      OnClick = cbRemClick
    end
    object cbDat: TCheckBox
      Left = 16
      Top = 273
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Data:'
      TabOrder = 7
      OnClick = cbDatClick
    end
    object btnCancFiltrar: TBitBtn
      Left = 183
      Top = 323
      Width = 75
      Height = 25
      Hint = 'Cancela o filtro dos dados'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnCancFiltrarClick
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
    object Panel7: TPanel
      Left = 5
      Top = 5
      Width = 359
      Height = 24
      Align = alTop
      Caption = 'Filtrar Transmittal'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object cbDes: TCheckBox
      Left = 16
      Top = 128
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Destinatário:'
      TabOrder = 10
      OnClick = cbDesClick
    end
    object cbimp: TCheckBox
      Left = 16
      Top = 224
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Importador:'
      TabOrder = 11
      OnClick = cbimpClick
    end
    object cbdestinacao: TCheckBox
      Left = 16
      Top = 176
      Width = 97
      Height = 16
      TabStop = False
      Caption = 'Destinação'
      TabOrder = 12
      OnClick = cbdestinacaoClick
    end
    object edtDestinacao: TEdit
      Left = 16
      Top = 193
      Width = 337
      Height = 21
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 13
    end
    object edtImport: TEdit
      Left = 16
      Top = 241
      Width = 337
      Height = 21
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 14
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 16
      Top = 144
      Width = 337
      Height = 21
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'destinatario'
      ListFieldIndex = 1
      ListSource = dsDestinatario
      TabOrder = 15
    end
  end
  object pnlItens: TPanel
    Left = 24
    Top = 8
    Width = 729
    Height = 241
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label34: TLabel
      Left = 15
      Top = 192
      Width = 44
      Height = 13
      Caption = 'Processo'
    end
    object Panel9: TPanel
      Left = 5
      Top = 5
      Width = 719
      Height = 22
      Align = alTop
      Caption = 'Descrição dos Itens'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 77
      Width = 196
      Height = 113
      DataSource = dsItens
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sequencial'
          Title.Alignment = taCenter
          Title.Caption = 'Nº'
          Width = 49
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Title.Caption = ' Quantity'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Remarks'
          Title.Caption = ' Remarks'
          Visible = True
        end>
    end
    object BitBtn4: TBitBtn
      Left = 312
      Top = 200
      Width = 75
      Height = 25
      Hint = 'Incluir patrimônio'
      Caption = 'Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 392
      Top = 200
      Width = 75
      Height = 25
      Hint = 'Alterar dados do patrimônio'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn5Click
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
    object BitBtn6: TBitBtn
      Left = 472
      Top = 200
      Width = 75
      Height = 25
      Hint = 'Excluir patrimônio'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn6Click
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
    object btnSair: TBitBtn
      Left = 564
      Top = 200
      Width = 75
      Height = 25
      Hint = 'Sair do Controle de Patrimônio'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnSairClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object DBMemo1: TDBMemo
      Left = 200
      Top = 77
      Width = 523
      Height = 113
      DataField = 'Descricao'
      DataSource = dsItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel16: TPanel
      Left = 5
      Top = 27
      Width = 719
      Height = 41
      Align = alTop
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 7
      object Label25: TLabel
        Left = 5
        Top = 2
        Width = 51
        Height = 13
        Caption = 'Transmittal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 63
        Top = 2
        Width = 23
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 131
        Top = 2
        Width = 56
        Height = 13
        Caption = 'Destinatário'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 412
        Top = 2
        Width = 50
        Height = 13
        Caption = 'Importador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit13: TDBEdit
        Left = 5
        Top = 15
        Width = 57
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Codigo'
        DataSource = dsTrans
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 63
        Top = 15
        Width = 65
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Data'
        DataSource = dsTrans
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 1
      end
      object DBEdit19: TDBEdit
        Left = 129
        Top = 15
        Width = 280
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'destinatario_nome'
        DataSource = dsTrans
        ParentBiDiMode = False
        TabOrder = 2
      end
      object DBEdit20: TDBEdit
        Left = 409
        Top = 15
        Width = 304
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Importador_nome'
        DataSource = dsTrans
        ParentBiDiMode = False
        TabOrder = 3
      end
    end
    object e_proc: TEdit
      Left = 14
      Top = 204
      Width = 59
      Height = 21
      TabOrder = 8
    end
    object b_linhas: TBitBtn
      Left = 80
      Top = 200
      Width = 169
      Height = 25
      Hint = 'Incluir patrimônio'
      Caption = 'Linhas Padrão Faturamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = b_linhasClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
  end
  object Panel11: TPanel
    Left = 39
    Top = 129
    Width = 697
    Height = 80
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 5
    Visible = False
    object Label13: TLabel
      Left = 581
      Top = 80
      Width = 39
      Height = 13
      Caption = 'Quantity'
    end
    object Label14: TLabel
      Left = 624
      Top = 80
      Width = 42
      Height = 13
      Caption = 'Remarks'
    end
    object Label15: TLabel
      Left = 56
      Top = 80
      Width = 20
      Height = 13
      Caption = 'Item'
    end
    object Label5: TLabel
      Left = 11
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Número'
    end
    object Panel12: TPanel
      Left = 5
      Top = 5
      Width = 687
      Height = 24
      Align = alTop
      Caption = 'Inclusão de Itens'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
      Left = 235
      Top = 176
      Width = 75
      Height = 25
      Hint = 'Confirmar inclusão do patrimônio'
      Caption = '&Confirmar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn9Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn10: TBitBtn
      Left = 323
      Top = 176
      Width = 75
      Height = 25
      Hint = 'Cancelar inclusão do patrimônio'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn10Click
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
    object DBEdit4: TDBEdit
      Left = 581
      Top = 96
      Width = 41
      Height = 21
      DataField = 'Quantidade'
      DataSource = dsItens2
      MaxLength = 10
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 624
      Top = 96
      Width = 65
      Height = 21
      DataField = 'Remarks'
      DataSource = dsItens2
      TabOrder = 3
    end
    object DBMemo3: TDBMemo
      Left = 56
      Top = 96
      Width = 523
      Height = 73
      DataField = 'Descricao'
      DataSource = dsItens2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBMemo3KeyPress
      OnKeyUp = DBMemo3KeyUp
    end
    object DBEdit8: TDBEdit
      Left = 11
      Top = 96
      Width = 41
      Height = 21
      DataField = 'Sequencial'
      DataSource = dsItens2
      MaxLength = 10
      TabOrder = 0
    end
    object Panel14: TPanel
      Left = 5
      Top = 29
      Width = 687
      Height = 44
      Align = alTop
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 7
      object Label6: TLabel
        Left = 5
        Top = 2
        Width = 51
        Height = 13
        Caption = 'Transmittal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 63
        Top = 2
        Width = 23
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 131
        Top = 2
        Width = 56
        Height = 13
        Caption = 'Destinatário'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 372
        Top = 2
        Width = 50
        Height = 13
        Caption = 'Importador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit9: TDBEdit
        Left = 5
        Top = 15
        Width = 57
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Codigo'
        DataSource = dsTrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 63
        Top = 15
        Width = 65
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Data'
        DataSource = dsTrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 129
        Top = 15
        Width = 239
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'destinatario_nome'
        DataSource = dsTrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 369
        Top = 15
        Width = 312
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Razao_Social'
        DataSource = dsTrans
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object Panel8: TPanel
    Left = 48
    Top = 18
    Width = 697
    Height = 231
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 6
    Visible = False
    object Label10: TLabel
      Left = 578
      Top = 80
      Width = 39
      Height = 13
      Caption = 'Quantity'
    end
    object Label16: TLabel
      Left = 621
      Top = 80
      Width = 42
      Height = 13
      Caption = 'Remarks'
    end
    object Label9: TLabel
      Left = 56
      Top = 80
      Width = 20
      Height = 13
      Caption = 'Item'
    end
    object Label20: TLabel
      Left = 11
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Número'
    end
    object BitBtn7: TBitBtn
      Left = 235
      Top = 184
      Width = 75
      Height = 25
      Hint = 'Confirmar inclusão do patrimônio'
      Caption = '&Salvar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn7Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn8: TBitBtn
      Left = 323
      Top = 184
      Width = 75
      Height = 25
      Hint = 'Cancelar inclusão do patrimônio'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn8Click
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
    object Panel10: TPanel
      Left = 5
      Top = 5
      Width = 687
      Height = 23
      Align = alTop
      Caption = 'Alteração de Itens'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 578
      Top = 96
      Width = 41
      Height = 24
      DataField = 'Quantidade'
      DataSource = dsItens2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 621
      Top = 96
      Width = 65
      Height = 24
      DataField = 'Remarks'
      DataSource = dsItens2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBMemo2: TDBMemo
      Left = 54
      Top = 96
      Width = 523
      Height = 73
      DataField = 'Descricao'
      DataSource = dsItens2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBMemo2KeyPress
      OnKeyUp = DBMemo2KeyUp
    end
    object dbeditnum: TDBEdit
      Left = 11
      Top = 96
      Width = 41
      Height = 24
      DataField = 'Sequencial'
      DataSource = dsItens2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
    object Panel15: TPanel
      Left = 5
      Top = 28
      Width = 687
      Height = 41
      Align = alTop
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 7
      object Label21: TLabel
        Left = 5
        Top = 2
        Width = 51
        Height = 13
        Caption = 'Transmittal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 63
        Top = 2
        Width = 23
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 131
        Top = 2
        Width = 56
        Height = 13
        Caption = 'Destinatário'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 372
        Top = 2
        Width = 50
        Height = 13
        Caption = 'Importador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit14: TDBEdit
        Left = 5
        Top = 15
        Width = 57
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Codigo'
        DataSource = dsTrans
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 63
        Top = 15
        Width = 65
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Data'
        DataSource = dsTrans
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 1
      end
      object DBEdit16: TDBEdit
        Left = 129
        Top = 15
        Width = 239
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'destinatario_nome'
        DataSource = dsTrans
        ParentBiDiMode = False
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Left = 369
        Top = 15
        Width = 311
        Height = 21
        BiDiMode = bdRightToLeft
        Color = clSilver
        DataField = 'Importador_nome'
        DataSource = dsTrans
        ParentBiDiMode = False
        TabOrder = 3
      end
    end
  end
  object pnlAlterar: TPanel
    Left = 312
    Top = 11
    Width = 305
    Height = 360
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 9
    Visible = False
    object Label36: TLabel
      Left = 21
      Top = 225
      Width = 82
      Height = 13
      Caption = 'N° do processo : '
    end
    object lblProcesso: TLabel
      Left = 104
      Top = 227
      Width = 3
      Height = 13
    end
    object BitBtn2: TBitBtn
      Left = 67
      Top = 321
      Width = 75
      Height = 25
      Hint = 'Confirmar inclusão do patrimônio'
      Caption = '&Salvar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 147
      Top = 321
      Width = 75
      Height = 25
      Hint = 'Cancelar inclusão do patrimônio'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn3Click
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
    object Panel4: TPanel
      Left = 5
      Top = 5
      Width = 295
      Height = 24
      Align = alTop
      Caption = 'Alteração de Transmittal'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 249
      Width = 265
      Height = 65
      Caption = ' Recebimento '
      TabOrder = 2
      object Label33: TLabel
        Left = 16
        Top = 18
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label32: TLabel
        Left = 88
        Top = 18
        Width = 44
        Height = 13
        Caption = 'Receptor'
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 34
        Width = 73
        Height = 21
        DataField = 'Data_recebimento'
        DataSource = dsTtransmittal
        MaxLength = 10
        TabOrder = 0
      end
      object DBEdit24: TDBEdit
        Left = 88
        Top = 34
        Width = 169
        Height = 21
        DataField = 'Receptor'
        DataSource = dsTtransmittal
        TabOrder = 1
      end
    end
    object Panel17: TPanel
      Left = 5
      Top = 29
      Width = 295
      Height = 193
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 11
        Top = 6
        Width = 51
        Height = 13
        Caption = 'Transmittal'
      end
      object Label2: TLabel
        Left = 75
        Top = 6
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label3: TLabel
        Left = 11
        Top = 86
        Width = 50
        Height = 13
        Caption = 'Importador'
      end
      object Label4: TLabel
        Left = 11
        Top = 46
        Width = 56
        Height = 13
        Caption = 'Destinatário'
      end
      object SpeedButton2: TSpeedButton
        Left = 270
        Top = 102
        Width = 23
        Height = 22
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
        OnClick = SpeedButton2Click
      end
      object Label30: TLabel
        Left = 11
        Top = 150
        Width = 54
        Height = 13
        Caption = 'Destinação'
      end
      object Label31: TLabel
        Left = 147
        Top = 6
        Width = 95
        Height = 13
        Caption = 'Setor do Remetente'
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 11
        Top = 102
        Width = 257
        Height = 21
        DataField = 'Importador'
        DataSource = dsTtransmittal
        KeyField = 'Codigo'
        ListField = 'Codigo; Razao_Social'
        ListFieldIndex = 1
        ListSource = dsImport
        TabOrder = 0
        OnClick = DBLookupComboBox2Click
      end
      object DBEdit1: TDBEdit
        Left = 11
        Top = 22
        Width = 57
        Height = 21
        DataField = 'Codigo'
        DataSource = dsTtransmittal
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 75
        Top = 22
        Width = 65
        Height = 21
        DataField = 'Data'
        DataSource = dsTtransmittal
        MaxLength = 10
        TabOrder = 2
      end
      object DBEdit21: TDBEdit
        Left = 11
        Top = 126
        Width = 257
        Height = 21
        DataField = 'Importador_nome'
        DataSource = dsTtransmittal
        Enabled = False
        TabOrder = 3
      end
      object DBEdit23: TDBEdit
        Left = 11
        Top = 165
        Width = 257
        Height = 21
        DataField = 'Destinacao'
        DataSource = dsTtransmittal
        TabOrder = 4
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 147
        Top = 22
        Width = 121
        Height = 21
        DataField = 'Setor'
        DataSource = dsTtransmittal
        KeyField = 'Codigo'
        ListField = 'descricao'
        ListSource = dsSetor
        TabOrder = 5
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 11
        Top = 62
        Width = 257
        Height = 21
        DataField = 'destinatario'
        DataSource = dsTtransmittal
        KeyField = 'Codigo'
        ListField = 'Destinatario'
        ListFieldIndex = 1
        ListSource = dsDestinatario
        TabOrder = 6
      end
    end
  end
  object pnlIncluir: TPanel
    Left = 360
    Top = 56
    Width = 321
    Height = 297
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 8
    Visible = False
    object Label7: TLabel
      Left = 16
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Transmittal'
    end
    object Label8: TLabel
      Left = 80
      Top = 40
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object lblImportador: TLabel
      Left = 16
      Top = 120
      Width = 50
      Height = 13
      Caption = 'Importador'
    end
    object lblDestinatario: TLabel
      Left = 16
      Top = 80
      Width = 56
      Height = 13
      Caption = 'Destinatário'
    end
    object lblSetor: TLabel
      Left = 152
      Top = 40
      Width = 95
      Height = 13
      Caption = 'Setor do Remetente'
    end
    object Label29: TLabel
      Left = 16
      Top = 184
      Width = 54
      Height = 13
      Caption = 'Destinação'
    end
    object SpeedButton1: TSpeedButton
      Left = 288
      Top = 136
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label35: TLabel
      Left = 20
      Top = 229
      Width = 79
      Height = 13
      Caption = 'N° do processo  '
    end
    object btnOkInc: TBitBtn
      Left = 75
      Top = 258
      Width = 75
      Height = 25
      Hint = 'Confirmar inclusão do patrimônio'
      Caption = 'C&onfirmar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnOkIncClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object dbLcbImport: TDBLookupComboBox
      Left = 16
      Top = 136
      Width = 273
      Height = 21
      DataField = 'Importador'
      DataSource = dsTtransmittal
      KeyField = 'Codigo'
      ListField = 'Codigo; Razao_Social'
      ListFieldIndex = 1
      ListSource = dsImport
      TabOrder = 4
      OnClick = dbLcbImportClick
    end
    object btnCancInc: TBitBtn
      Left = 155
      Top = 258
      Width = 75
      Height = 25
      Hint = 'Cancelar inclusão do patrimônio'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btnCancIncClick
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
    object Panel1: TPanel
      Left = 5
      Top = 5
      Width = 311
      Height = 24
      Align = alTop
      Caption = 'Inclusão de Transmittal'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object dbEdtTransmittal: TDBEdit
      Left = 16
      Top = 56
      Width = 57
      Height = 21
      Color = clSilver
      DataField = 'Codigo'
      DataSource = dsTtransmittal
      Enabled = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 152
      Top = 56
      Width = 137
      Height = 21
      DataField = 'Setor'
      DataSource = dsTtransmittal
      KeyField = 'Codigo'
      ListField = 'descricao'
      ListSource = dsSetor
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 80
      Top = 56
      Width = 65
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object edtImportDesc: TDBEdit
      Left = 16
      Top = 160
      Width = 273
      Height = 21
      DataField = 'Importador_nome'
      DataSource = dsTtransmittal
      TabOrder = 5
    end
    object DBEdit22: TDBEdit
      Left = 16
      Top = 200
      Width = 273
      Height = 21
      DataField = 'Destinacao'
      DataSource = dsTtransmittal
      TabOrder = 6
    end
    object dblcbDestinatario: TDBLookupComboBox
      Left = 16
      Top = 96
      Width = 273
      Height = 21
      DataField = 'Destinatario'
      DataSource = dsTtransmittal
      KeyField = 'Codigo'
      ListField = 'destinatario'
      ListFieldIndex = 1
      ListSource = dsDestinatario
      TabOrder = 3
    end
    object dbedProcesso: TDBEdit
      Left = 100
      Top = 228
      Width = 85
      Height = 21
      DataField = 'processo'
      DataSource = dsTtransmittal
      TabOrder = 10
      OnChange = dbedProcessoChange
    end
  end
  object qrTrans: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT T.*, I.Razao_Social, S.descricao, I.Razao_Social, U.Nome_' +
        'Completo, Destinatario.Destinatario as destinatario_nome'
      
        'FROM ((((Transmittal AS T LEFT JOIN Setores AS S ON T.Setor = S.' +
        'codigo) LEFT JOIN Importadores AS I ON (T.Empresa = I.Empresa) A' +
        'ND (T.Filial = I.Filial) AND (T.Importador = I.Codigo)) LEFT JOI' +
        'N Parametros AS P ON (T.Empresa = P.Empresa) AND (T.Filial = P.F' +
        'ilial)) LEFT JOIN Usuarios AS U ON (T.Empresa = U.Empresa) AND (' +
        'T.Filial = U.Filial) AND (T.Remetente = U.Usuario)) LEFT JOIN De' +
        'stinatario ON T.Destinatario = Destinatario.Codigo'
      ''
      ''
      ''
      ''
      ''
      ''
      'ORDER BY T.Data, T.Codigo')
    Left = 24
    Top = 436
    object qrTransEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrTransFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrTransCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrTransData: TDateTimeField
      FieldName = 'Data'
    end
    object qrTransImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qrTransImportador_nome: TStringField
      FieldName = 'Importador_nome'
      FixedChar = True
      Size = 100
    end
    object qrTransDestinatario: TIntegerField
      FieldName = 'Destinatario'
    end
    object qrTransDestinacao: TStringField
      FieldName = 'Destinacao'
      FixedChar = True
      Size = 100
    end
    object qrTransSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object qrTransRemetente: TStringField
      FieldName = 'Remetente'
      FixedChar = True
      Size = 10
    end
    object qrTransDestinatarioold: TStringField
      FieldName = 'Destinatarioold'
      FixedChar = True
      Size = 100
    end
    object qrTransData_Recebimento: TDateTimeField
      FieldName = 'Data_Recebimento'
    end
    object qrTransReceptor: TStringField
      FieldName = 'Receptor'
      FixedChar = True
      Size = 50
    end
    object qrTransRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrTransdescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 50
    end
    object qrTransRazao_Social_1: TStringField
      FieldName = 'Razao_Social_1'
      FixedChar = True
      Size = 60
    end
    object qrTransNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrTransdestinatario_nome: TStringField
      FieldName = 'destinatario_nome'
      FixedChar = True
      Size = 255
    end
    object qrTransprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
  end
  object dsTrans: TDataSource
    DataSet = qrTrans
    Left = 1024
    Top = 408
  end
  object tbTransmittal: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Transmittal'
    Left = 656
    Top = 448
    object tbTransmittalEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbTransmittalFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbTransmittalCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object tbTransmittalData: TDateTimeField
      FieldName = 'Data'
    end
    object tbTransmittalImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object tbTransmittalImportador_nome: TStringField
      FieldName = 'Importador_nome'
      FixedChar = True
      Size = 100
    end
    object tbTransmittalDestinatario: TIntegerField
      FieldName = 'Destinatario'
    end
    object tbTransmittalDestinacao: TStringField
      FieldName = 'Destinacao'
      FixedChar = True
      Size = 100
    end
    object tbTransmittalSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object tbTransmittalRemetente: TStringField
      FieldName = 'Remetente'
      FixedChar = True
      Size = 10
    end
    object tbTransmittalDestinatarioold: TStringField
      FieldName = 'Destinatarioold'
      FixedChar = True
      Size = 100
    end
    object tbTransmittalData_Recebimento: TDateTimeField
      FieldName = 'Data_Recebimento'
    end
    object tbTransmittalReceptor: TStringField
      FieldName = 'Receptor'
      FixedChar = True
      Size = 50
    end
    object tbTransmittalprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
  end
  object dsTtransmittal: TDataSource
    DataSet = tbTransmittal
    Left = 1024
    Top = 472
  end
  object qrUsuario: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT U.*'
      
        'FROM Parametros AS P INNER JOIN Usuarios AS U ON P.Filial = U.Fi' +
        'lial AND P.Empresa = U.Empresa')
    Left = 288
    Top = 440
    object qrUsuarioEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Usuarios.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrUsuarioFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Usuarios.Filial'
      FixedChar = True
      Size = 4
    end
    object qrUsuarioUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qrUsuarioSenha: TStringField
      FieldName = 'Senha'
      Origin = 'DBNMSCOMEX.Usuarios.Senha'
      FixedChar = True
      Size = 10
    end
    object qrUsuarioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrUsuarioDiretorio_SISCOMEX: TStringField
      FieldName = 'Diretorio_SISCOMEX'
      Origin = 'DBNMSCOMEX.Usuarios.Diretorio_SISCOMEX'
      FixedChar = True
      Size = 50
    end
    object qrUsuarioNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel'
      FixedChar = True
      Size = 4
    end
    object qrUsuarioNivel_ccorrente: TStringField
      FieldName = 'Nivel_ccorrente'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel_ccorrente'
      FixedChar = True
      Size = 4
    end
    object qrUsuarioData_validade_senha: TDateTimeField
      FieldName = 'Data_validade_senha'
      Origin = 'DBNMSCOMEX.Usuarios.Data_validade_senha'
    end
    object qrUsuarioEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      FixedChar = True
      Size = 50
    end
    object qrUsuarioEmail_Sol_Num: TSmallintField
      FieldName = 'Email_Sol_Num'
      Origin = 'DBNMSCOMEX.Usuarios.Email_Sol_Num'
    end
    object qrUsuarioEmail_aviso_oper: TSmallintField
      FieldName = 'Email_aviso_oper'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_oper'
    end
    object qrUsuarioEmail_aviso_finan: TSmallintField
      FieldName = 'Email_aviso_finan'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_finan'
    end
    object qrUsuarioEmail_aviso_diretoria: TSmallintField
      FieldName = 'Email_aviso_diretoria'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_diretoria'
    end
    object qrUsuarioEmail_aviso_sistema: TSmallintField
      FieldName = 'Email_aviso_sistema'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_sistema'
    end
    object qrUsuarioDistribui_processo: TSmallintField
      FieldName = 'Distribui_processo'
      Origin = 'DBNMSCOMEX.Usuarios.Distribui_processo'
    end
    object qrUsuarioAbre_processos: TSmallintField
      FieldName = 'Abre_processos'
      Origin = 'DBNMSCOMEX.Usuarios.Abre_processos'
    end
    object qrUsuarioEdita_eventos: TSmallintField
      FieldName = 'Edita_eventos'
      Origin = 'DBNMSCOMEX.Usuarios.Edita_eventos'
    end
    object qrUsuarioDigitalizador: TSmallintField
      FieldName = 'Digitalizador'
      Origin = 'DBNMSCOMEX.Usuarios.Digitalizador'
    end
    object qrUsuarioTraduz_Classifica: TSmallintField
      FieldName = 'Traduz_Classifica'
      Origin = 'DBNMSCOMEX.Usuarios.Traduz_Classifica'
    end
    object qrUsuarioInativa_Cliente: TSmallintField
      FieldName = 'Inativa_Cliente'
      Origin = 'DBNMSCOMEX.Usuarios.Inativa_Cliente'
    end
    object qrUsuarioEdita_cliente_inativo: TSmallintField
      FieldName = 'Edita_cliente_inativo'
      Origin = 'DBNMSCOMEX.Usuarios.Edita_cliente_inativo'
    end
    object qrUsuarioFecha_Processo: TSmallintField
      FieldName = 'Fecha_Processo'
      Origin = 'DBNMSCOMEX.Usuarios.Fecha_Processo'
    end
    object qrUsuarioEdita_Processo_Fechado: TSmallintField
      FieldName = 'Edita_Processo_Fechado'
      Origin = 'DBNMSCOMEX.Usuarios.Edita_Processo_Fechado'
    end
    object qrUsuarioAcessa_Patrimonio: TSmallintField
      FieldName = 'Acessa_Patrimonio'
      Origin = 'DBNMSCOMEX.Usuarios.Acessa_Patrimonio'
    end
    object qrUsuarioSupervisor: TStringField
      FieldName = 'Supervisor'
      Origin = 'DBNMSCOMEX.Usuarios.Supervisor'
      FixedChar = True
      Size = 10
    end
    object qrUsuarioAcessa_PARAFAT: TSmallintField
      FieldName = 'Acessa_PARAFAT'
      Origin = 'DBNMSCOMEX.Usuarios.Acessa_PARAFAT'
    end
    object qrUsuarioDesconto_Faturamento: TSmallintField
      FieldName = 'Desconto_Faturamento'
      Origin = 'DBNMSCOMEX.Usuarios.Desconto_Faturamento'
    end
    object qrUsuarioResponsavel: TSmallintField
      FieldName = 'Responsavel'
      Origin = 'DBNMSCOMEX.Usuarios.Responsavel'
    end
    object qrUsuarioDistribui_processoC: TSmallintField
      FieldName = 'Distribui_processoC'
      Origin = 'DBNMSCOMEX.Usuarios.Distribui_processoC'
    end
    object qrUsuarioResponsavelC: TSmallintField
      FieldName = 'ResponsavelC'
      Origin = 'DBNMSCOMEX.Usuarios.ResponsavelC'
    end
    object qrUsuarioSupervisorC: TStringField
      FieldName = 'SupervisorC'
      Origin = 'DBNMSCOMEX.Usuarios.SupervisorC'
      FixedChar = True
      Size = 10
    end
    object qrUsuarioSetor: TStringField
      FieldName = 'Setor'
      Origin = 'DBNMSCOMEX.Usuarios.Setor'
      FixedChar = True
      Size = 4
    end
  end
  object dsUsuario: TDataSource
    DataSet = qrUsuario
    Left = 1024
    Top = 536
  end
  object dsSetor: TDataSource
    DataSet = qrSetor
    Left = 1160
    Top = 408
  end
  object qrSetor: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Setores'
      'WHERE Excluido <> 1')
    Left = 144
    Top = 440
    object qrSetorcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Setores.codigo'
      FixedChar = True
      Size = 4
    end
    object qrSetordescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Setores.descricao'
      FixedChar = True
      Size = 50
    end
  end
  object qrItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TI.*'
      'FROM Transmittal_itens AS TI'
      'WHERE (((TI.Codigo)=:cod))'
      'ORDER BY TI.Sequencial;')
    Left = 88
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qrItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Transmittal_itens.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrItensFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Transmittal_itens.Filial'
      FixedChar = True
      Size = 4
    end
    object qrItensCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Transmittal_itens.Codigo'
      FixedChar = True
      Size = 8
    end
    object qrItensSequencial: TIntegerField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.Transmittal_itens.Sequencial'
    end
    object qrItensDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Transmittal_itens.Descricao'
      BlobType = ftMemo
    end
    object qrItensQuantidade: TIntegerField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Transmittal_itens.Quantidade'
    end
    object qrItensRemarks: TStringField
      FieldName = 'Remarks'
      Origin = 'DBNMSCOMEX.Transmittal_itens.Remarks'
      FixedChar = True
      Size = 10
    end
  end
  object dsItens: TDataSource
    DataSet = qrItens
    Left = 1096
    Top = 472
  end
  object tbEdtItens: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo;Sequencial'
    TableName = 'Transmittal_itens'
    Left = 653
    Top = 500
    object tbEdtItensEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbEdtItensFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbEdtItensCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object tbEdtItensSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object tbEdtItensDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object tbEdtItensQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object tbEdtItensRemarks: TStringField
      FieldName = 'Remarks'
      FixedChar = True
      Size = 10
    end
  end
  object dsItens2: TDataSource
    DataSet = tbEdtItens
    Left = 1160
    Top = 472
  end
  object qrDel: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM Transmittal_itens'
      'WHERE Codigo = :cod'
      '')
    Left = 24
    Top = 496
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
  end
  object qrParametros: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Parametros.Numerador_transmittal'
      'FROM Parametros')
    Left = 208
    Top = 496
    object qrParametrosNumerador_transmittal: TStringField
      FieldName = 'Numerador_transmittal'
      FixedChar = True
      Size = 8
    end
  end
  object tbParametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 560
    Top = 448
    object tbParametrosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbParametrosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbParametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      FixedChar = True
      Size = 8
    end
    object tbParametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      FixedChar = True
      Size = 8
    end
    object tbParametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      FixedChar = True
      Size = 30
    end
    object tbParametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      FixedChar = True
      Size = 30
    end
    object tbParametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      FixedChar = True
      Size = 16
    end
    object tbParametrosHost: TStringField
      FieldName = 'Host'
      FixedChar = True
      Size = 15
    end
    object tbParametrosVersao: TStringField
      FieldName = 'Versao'
      FixedChar = True
      Size = 50
    end
    object tbParametroskeycrypt: TStringField
      FieldName = 'keycrypt'
      FixedChar = True
      Size = 255
    end
    object tbParametrosHost_smtp: TStringField
      FieldName = 'Host_smtp'
      FixedChar = True
      Size = 15
    end
    object tbParametrosPorta_smtp: TSmallintField
      FieldName = 'Porta_smtp'
    end
    object tbParametrosUsuario_smtp: TStringField
      FieldName = 'Usuario_smtp'
      FixedChar = True
      Size = 30
    end
    object tbParametrosSenha_smtp: TStringField
      FieldName = 'Senha_smtp'
      FixedChar = True
      Size = 16
    end
    object tbParametrosNumerador_Transmittal: TStringField
      FieldName = 'Numerador_Transmittal'
      FixedChar = True
      Size = 8
    end
    object tbParametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      FixedChar = True
      Size = 100
    end
    object tbParametrosAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object tbParametrosAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object tbParametrosAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object tbParametrosAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object tbParametrosNumerador_Sol_Cheques: TStringField
      FieldName = 'Numerador_Sol_Cheques'
      FixedChar = True
      Size = 50
    end
    object tbParametrosNumerador_Sol_Reg: TStringField
      FieldName = 'Numerador_Sol_Reg'
      FixedChar = True
      Size = 50
    end
    object tbParametrosNumerador_Sol_Tracla: TStringField
      FieldName = 'Numerador_Sol_Tracla'
      FixedChar = True
      Size = 50
    end
  end
  object tbedtitensAux: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo;Sequencial'
    TableName = 'Transmittal_itens'
    Left = 557
    Top = 500
    object tbedtitensAuxEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbedtitensAuxFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbedtitensAuxCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object tbedtitensAuxSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object tbedtitensAuxDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object tbedtitensAuxQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object tbedtitensAuxRemarks: TStringField
      FieldName = 'Remarks'
      FixedChar = True
      Size = 10
    end
  end
  object qrImport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.Razao_Social'
      'FROM Importadores'
      
        'WHERE Importadores.Empresa Like :Emp AND Importadores.Filial Lik' +
        'e :Fil'
      'ORDER BY Importadores.Razao_Social')
    Left = 360
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'Emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Fil'
        ParamType = ptUnknown
      end>
    object qrImportEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrImportFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      FixedChar = True
      Size = 4
    end
    object qrImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
  end
  object dsImport: TDataSource
    DataSet = qrImport
    Left = 1096
    Top = 408
  end
  object qrDestinatario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT codigo, destinatario'
      'FROM Destinatario'
      'ORDER BY destinatario, codigo')
    Left = 287
    Top = 496
    object qrDestinatariocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qrDestinatariodestinatario: TStringField
      FieldName = 'destinatario'
      FixedChar = True
      Size = 255
    end
  end
  object dsDestinatario: TDataSource
    DataSet = qrDestinatario
    Left = 1095
    Top = 536
  end
  object q_pro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Codigo, Processos.Tipo, Notas_Fiscais_Servicos.' +
        'NFiscal, Processos.NR_DECLARACAO_IMP AS DI, Conhecimento_Process' +
        'o.Numerodoccarga, Conhecimento_Processo.Numeromaster, Conhecimen' +
        'to_Processo.Numeromanifesto, Conhecimento_Processo.Codigo_Presen' +
        'ca_Carga,  Processos.DDE,  Processos.Codigo_Cliente, Processos.N' +
        'umero_TR'
      
        'FROM (Processos LEFT JOIN Conhecimento_Processo ON Processos.Cod' +
        'igo = Conhecimento_Processo.Processo) LEFT JOIN Notas_Fiscais_Se' +
        'rvicos ON Processos.Codigo = Notas_Fiscais_Servicos.Processo'
      'WHERE (((Processos.Codigo)=:qpro));')
    Left = 88
    Top = 496
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '03859/08'
      end>
    object q_proCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object q_proTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object q_proNFiscal: TStringField
      FieldName = 'NFiscal'
      FixedChar = True
      Size = 6
    end
    object q_proDI: TStringField
      FieldName = 'DI'
      FixedChar = True
      Size = 10
    end
    object q_proNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object q_proNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object q_proNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object q_proCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      FixedChar = True
      Size = 50
    end
    object q_proDDE: TStringField
      FieldName = 'DDE'
      Size = 30
    end
    object q_proCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
    end
    object q_proNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
  end
  object q_fat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Faturas.Processo, Faturas.Codigo AS Fatura'
      'FROM Faturas'
      'WHERE (((Faturas.Processo)=:qpro))'
      'ORDER BY Faturas.Codigo;')
    Left = 208
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_fatProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Faturas.Processo'
      FixedChar = True
      Size = 8
    end
    object q_fatFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      FixedChar = True
      Size = 30
    end
  end
  object q_delit: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM Transmittal_itens'
      'WHERE (((Transmittal_itens.Codigo)=:qpro))')
    Left = 144
    Top = 496
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
      end>
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Codigo_Cliente AS refcli, Im' +
        'portadores.Razao_Social AS Cliente, TAB_TIPO_DECLARACAO.Descrica' +
        'o AS tipodecla, Tipos_de_Processos.DESCRICAO AS tipopro, Contrat' +
        'os.Descricao AS qcontrato, Locais_Inventario.Descricao AS qlocal' +
        ', Importadores.CNPJ_CPF_COMPLETO AS qcnpj, Processos.Fechado, Im' +
        'portadores.ATIVO, Processos.Importador, Processos.Responsavel_em' +
        'presa,  Processos.Responsavel_empresac,'
      'Processos.Tipo'
      
        'FROM (((((Parametros INNER JOIN Processos ON (Parametros.Empresa' +
        ' = Processos.Empresa) AND (Parametros.Filial = Processos.Filial)' +
        ') LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Em' +
        'presa) AND (Processos.Filial = Importadores.Filial) AND (Process' +
        'os.Importador = Importadores.Codigo)) LEFT JOIN Tipos_de_Process' +
        'os ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TAB_' +
        'TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARAC' +
        'AO.Codigo) LEFT JOIN Contratos ON (Processos.Empresa = Contratos' +
        '.Empresa) AND (Processos.Filial = Contratos.Filial) AND (Process' +
        'os.Importador = Contratos.Importador) AND (Processos.Contrato = ' +
        'Contratos.Contrato)) LEFT JOIN Locais_Inventario ON (Processos.E' +
        'mpresa = Locais_Inventario.Empresa) AND (Processos.Filial = Loca' +
        'is_Inventario.Filial) AND (Processos.Importador = Locais_Inventa' +
        'rio.Importador) AND (Processos.Contrato = Locais_Inventario.Cont' +
        'rato) AND (Processos.Local_Inventario = Locais_Inventario.Local)'
      'where Processos.Codigo=:Processo'
      'ORDER BY Processos.Codigo;')
    Left = 352
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosrefcli: TStringField
      FieldName = 'refcli'
      Size = 60
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object qrProcessostipodecla: TStringField
      FieldName = 'tipodecla'
      Size = 120
    end
    object qrProcessostipopro: TStringField
      FieldName = 'tipopro'
      Size = 35
    end
    object qrProcessosqcontrato: TStringField
      FieldName = 'qcontrato'
      Size = 50
    end
    object qrProcessosqlocal: TStringField
      FieldName = 'qlocal'
      Size = 250
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      Size = 14
    end
    object qrProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object qrProcessosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrProcessosResponsavel_empresa: TStringField
      FieldName = 'Responsavel_empresa'
      Size = 10
    end
    object qrProcessosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      Size = 10
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
  end
end
