object frmControle_ADE_Andamento: TfrmControle_ADE_Andamento
  Left = 226
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle ADE Andamento'
  ClientHeight = 557
  ClientWidth = 717
  Color = 10514464
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
    Top = 538
    Width = 717
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object sbControle: TScrollBox
    Left = 629
    Top = 0
    Width = 88
    Height = 538
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 1
    object Bevel3: TBevel
      Left = 6
      Top = 192
      Width = 75
      Height = 9
      Shape = bsTopLine
    end
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
      Top = 128
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
      Top = 323
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Kind = bkClose
    end
    object btnCad_Fiscais: TBitBtn
      Left = 8
      Top = 208
      Width = 75
      Height = 50
      Hint = 'Cadastro de Fiscais'
      Caption = 'Fiscais'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnCad_FiscaisClick
    end
    object btnFinalizar: TBitBtn
      Left = 8
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Finalizar'
      TabOrder = 7
      OnClick = btnFinalizarClick
      Kind = bkNo
    end
    object btnOpen: TBitBtn
      Left = 8
      Top = 291
      Width = 75
      Height = 25
      Caption = 'Abrir'
      ModalResult = 1
      TabOrder = 8
      OnClick = btnOpenClick
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
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 538
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object gridMain: TDBGrid
      Left = 1
      Top = 336
      Width = 627
      Height = 201
      Align = alBottom
      DataSource = dtsControle_ADE_Andamento
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = gridMainTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FK_Processo'
          Title.Caption = 'Nº MS2000'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_Abertura_Processo'
          Title.Caption = 'Data Abertura Processo'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_Processo_Receita'
          Title.Caption = 'Nº Processo Receita'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Cliente'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Embarcacao'
          Title.Caption = 'Embarcação'
          Visible = True
        end>
    end
    object pnlText: TPanel
      Left = 1
      Top = 1
      Width = 627
      Height = 308
      Align = alClient
      Color = 10514464
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 157
        Width = 46
        Height = 13
        Caption = 'Tipo ADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 209
        Width = 30
        Height = 13
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 104
        Width = 27
        Height = 13
        Caption = 'Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 512
        Top = 104
        Width = 86
        Height = 13
        Caption = 'Data de Protocolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 344
        Top = 56
        Width = 60
        Height = 13
        Caption = 'Embarcação'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 344
        Top = 104
        Width = 154
        Height = 13
        Caption = 'Número do Processo na Receita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnLocais: TSpeedButton
        Left = 594
        Top = 72
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = btnLocaisClick
      end
      object Label13: TLabel
        Left = 16
        Top = 257
        Width = 37
        Height = 13
        Caption = 'ADE Nº'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 144
        Top = 257
        Width = 94
        Height = 13
        Caption = 'Data de Publicação'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnlNum_Processo_Pasta: TPanel
        Left = 16
        Top = 13
        Width = 601
        Height = 33
        BevelOuter = bvLowered
        Color = 4227327
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 148
          Height = 13
          Caption = 'Número do Processo (MS2000)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtProcessoMS2000: TMaskEdit
          Left = 168
          Top = 6
          Width = 73
          Height = 21
          EditMask = '99999/99;1;_'
          MaxLength = 8
          TabOrder = 0
          Text = '     /  '
          OnChange = edtProcessoMS2000Change
        end
        object btnBuscar: TBitBtn
          Left = 247
          Top = 4
          Width = 130
          Height = 25
          Caption = 'Buscar processo'
          TabOrder = 1
          OnClick = btnBuscarClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
            330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
            830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
            F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
        end
      end
      object edtStatus: TDBLookupComboBox
        Left = 16
        Top = 225
        Width = 313
        Height = 21
        KeyField = 'PK_Status'
        ListField = 'Descricao'
        ListSource = dtsStatus
        TabOrder = 4
        OnCloseUp = edtStatusCloseUp
        OnExit = edtStatusExit
      end
      object edtFiscal: TDBLookupComboBox
        Left = 16
        Top = 120
        Width = 313
        Height = 21
        KeyField = 'PK_Fiscais'
        ListField = 'Nome'
        ListSource = dtsFiscais
        TabOrder = 2
      end
      object edtTipoADE: TDBLookupComboBox
        Left = 16
        Top = 172
        Width = 313
        Height = 21
        KeyField = 'PK_Tipo'
        ListField = 'Descricao'
        ListSource = dtsTipo
        TabOrder = 1
      end
      object edtProcessoReceita: TMaskEdit
        Left = 344
        Top = 120
        Width = 161
        Height = 21
        EditMask = '99999.999999/9999-99;0;_'
        MaxLength = 20
        TabOrder = 3
      end
      object edtCliente: TEdit
        Left = 16
        Top = 72
        Width = 313
        Height = 21
        Enabled = False
        TabOrder = 5
      end
      object edtEmbarcacao: TEdit
        Left = 344
        Top = 72
        Width = 249
        Height = 21
        Enabled = False
        TabOrder = 6
      end
      object edtDataProtocolo: TMaskEdit
        Left = 512
        Top = 120
        Width = 105
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 7
        Text = '  /  /    '
      end
      object GroupBox1: TGroupBox
        Left = 344
        Top = 151
        Width = 273
        Height = 113
        Caption = ' Processo enviado à '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        object Label9: TLabel
          Left = 24
          Top = 80
          Width = 55
          Height = 13
          Caption = 'COANA Em'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 24
          Top = 54
          Width = 50
          Height = 13
          Caption = 'DITEC Em'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 24
          Top = 28
          Width = 51
          Height = 13
          Caption = 'DIANA Em'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtDT_COANA: TMaskEdit
          Left = 88
          Top = 80
          Width = 121
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object edtDT_DITEC: TMaskEdit
          Left = 88
          Top = 52
          Width = 121
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
        object edtDT_DIANA: TMaskEdit
          Left = 88
          Top = 24
          Width = 121
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 2
          Text = '  /  /    '
        end
      end
      object pnlEmbarcacao: TPanel
        Left = 123
        Top = 53
        Width = 381
        Height = 187
        BevelInner = bvRaised
        BevelWidth = 3
        TabOrder = 8
        Visible = False
        object Panel1: TPanel
          Left = 6
          Top = 6
          Width = 369
          Height = 27
          Align = alTop
          BevelInner = bvRaised
          Caption = 'Seleção de Embarcação'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btnCancelarEmb: TBitBtn
          Left = 193
          Top = 144
          Width = 75
          Height = 25
          Cancel = True
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btnCancelarEmbClick
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
        object btnConfirmar: TBitBtn
          Left = 113
          Top = 144
          Width = 75
          Height = 25
          Caption = 'Confirmar'
          Default = True
          TabOrder = 2
          OnClick = btnConfirmarClick
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
        object DBGrid1: TDBGrid
          Left = 6
          Top = 33
          Width = 369
          Height = 104
          Align = alTop
          DataSource = dtsLocais
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Caption = 'Embarcação'
              Visible = True
            end>
        end
      end
      object edtDTPlub: TMaskEdit
        Left = 144
        Top = 272
        Width = 113
        Height = 21
        Enabled = False
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 11
        Text = '  /  /    '
      end
      object edtADENum: TEdit
        Left = 16
        Top = 272
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 10
        OnKeyPress = edtADENumKeyPress
      end
      object pnlStatus: TPanel
        Left = 344
        Top = 268
        Width = 273
        Height = 33
        BevelInner = bvRaised
        Caption = 'Status: Aberto'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
    end
    object pnlLocalizar: TPanel
      Left = 1
      Top = 309
      Width = 627
      Height = 27
      Align = alBottom
      BevelInner = bvLowered
      Color = 16777134
      TabOrder = 2
      object Label12: TLabel
        Left = 16
        Top = 6
        Width = 63
        Height = 13
        Caption = 'Localizar por:'
      end
      object edtBuscaProcesso: TMaskEdit
        Left = 232
        Top = 3
        Width = 129
        Height = 21
        Color = clWhite
        EditMask = '99999.999999/9999-99;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnChange = edtBuscaProcessoChange
      end
      object edtOp: TComboBox
        Left = 84
        Top = 3
        Width = 145
        Height = 21
        Style = csDropDownList
        Color = 4227327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 1
        OnChange = edtOpChange
        Items.Strings = (
          'Cliente'
          'Nº Processo Receita'
          'Nº MS2000')
      end
      object edtBuscaCliente: TEdit
        Left = 232
        Top = 3
        Width = 385
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = edtBuscaClienteChange
      end
      object edtMS: TMaskEdit
        Left = 232
        Top = 3
        Width = 89
        Height = 21
        EditMask = '!#####/##;1;_'
        MaxLength = 8
        TabOrder = 3
        Text = '     /  '
        Visible = False
        OnChange = edtMSChange
      end
    end
  end
  object qryControle_ADE_Andamento: TQuery
    AfterScroll = qryControle_ADE_AndamentoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' C.PK_ADEA'
      ' ,C.FK_Importador'
      ' ,C.FK_Processo'
      
        ' ,Cast( C.DT_Abertura_Processo as DateTime ) as "DT_Abertura_Pro' +
        'cesso"'
      ' ,C.Num_Processo_Receita'
      ' ,C.FK_Fiscais'
      ' ,C.FK_Status'
      ' ,C.Embarcacao'
      ' ,L.Razao_Social'
      ' ,C.FK_Tipo'
      ' ,Cast( C.DT_COANA as DateTime ) as "DT_COANA"'
      ' ,Cast( C.DT_DITEC as DateTime ) as "DT_DITEC"'
      ' ,Cast( C.DT_DIANA as DateTime ) as "DT_DIANA"'
      
        ' ,Cast( C.DT_ADE_Plublicacao as DateTime ) as "DT_ADE_Plublicaca' +
        'o"'
      ' ,C.ADE_Num'
      ' ,C.Finalizado'
      'from'
      ' Controle_ADE_Andamento C'
      ' left join Importadores L on ( L.Codigo = C.FK_Importador )'
      'where '
      ' C.Excluido <> 1'
      'order by'
      ' C.PK_ADEA')
    Left = 225
    Top = 369
    object qryControle_ADE_AndamentoPK_ADEA: TAutoIncField
      FieldName = 'PK_ADEA'
    end
    object qryControle_ADE_AndamentoFK_Importador: TStringField
      FieldName = 'FK_Importador'
      FixedChar = True
      Size = 4
    end
    object qryControle_ADE_AndamentoFK_Processo: TStringField
      FieldName = 'FK_Processo'
      FixedChar = True
      Size = 8
    end
    object qryControle_ADE_AndamentoDT_Abertura_Processo: TDateTimeField
      FieldName = 'DT_Abertura_Processo'
    end
    object qryControle_ADE_AndamentoNum_Processo_Receita: TStringField
      FieldName = 'Num_Processo_Receita'
      FixedChar = True
    end
    object qryControle_ADE_AndamentoFK_Fiscais: TIntegerField
      FieldName = 'FK_Fiscais'
    end
    object qryControle_ADE_AndamentoFK_Status: TIntegerField
      FieldName = 'FK_Status'
    end
    object qryControle_ADE_AndamentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 50
    end
    object qryControle_ADE_AndamentoRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryControle_ADE_AndamentoFK_Tipo: TIntegerField
      FieldName = 'FK_Tipo'
    end
    object qryControle_ADE_AndamentoDT_COANA: TDateTimeField
      FieldName = 'DT_COANA'
    end
    object qryControle_ADE_AndamentoDT_DITEC: TDateTimeField
      FieldName = 'DT_DITEC'
    end
    object qryControle_ADE_AndamentoDT_DIANA: TDateTimeField
      FieldName = 'DT_DIANA'
    end
    object qryControle_ADE_AndamentoDT_ADE_Plublicacao: TDateTimeField
      FieldName = 'DT_ADE_Plublicacao'
    end
    object qryControle_ADE_AndamentoADE_Num: TIntegerField
      FieldName = 'ADE_Num'
    end
    object qryControle_ADE_AndamentoFinalizado: TBooleanField
      FieldName = 'Finalizado'
    end
  end
  object qryStatus: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' PK_Status'
      ' ,Descricao'
      'from '
      ' Controle_ADE_Status'
      'order by'
      ' Descricao')
    Left = 473
    Top = 169
  end
  object dtsControle_ADE_Andamento: TDataSource
    DataSet = qryControle_ADE_Andamento
    Left = 425
    Top = 401
  end
  object dtsStatus: TDataSource
    DataSet = qryStatus
    Left = 409
    Top = 177
  end
  object qryFiscais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' PK_Fiscais'
      ' ,Nome'
      ' ,Excluido'
      'from '
      ' Controle_ADE_Fiscais')
    Left = 241
    Top = 97
  end
  object dtsFiscais: TDataSource
    DataSet = qryFiscais
    Left = 41
    Top = 65
  end
  object qryBuscaProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' P.Codigo'
      ' ,P.Importador'
      ' ,i.Razao_Social'
      ' ,P.Local_Inventario  '
      ' ,P.Tipo'
      'from '
      ' Processos P'
      ' left join Importadores i on ( P.Importador = i.Codigo )'
      'where '
      ' P.Codigo =:Processo')
    Left = 73
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qryExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 24
    Top = 384
  end
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update  Controle_ADE_Andamento set'
      ' DT_Abertura_Processo =Cast(:DT_Abertura_Processo as Date),'
      ' Num_Processo_Receita=:Num_Processo_Receita,'
      ' FK_Fiscais=:FK_Fiscais,'
      ' FK_Status=:FK_Status,'
      ' Embarcacao=:Embarcacao,'
      ' FK_Tipo =:FK_Tipo,'
      ' DT_COANA =Cast(:DT_COANA as Date),'
      ' DT_DITEC =Cast(:DT_DITEC as Date),'
      ' DT_DIANA =Cast(:DT_DIANA as Date),'
      ' DT_ADE_Plublicacao =Cast(:DT_ADE_Plublicacao as Date),'
      ' ADE_Num =Cast(:ADE_Num as Integer)'
      'where'
      ' PK_ADEA=:PK_ADEA')
    Left = 80
    Top = 448
    ParamData = <
      item
        DataType = ftDate
        Name = 'DT_Abertura_Processo'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Num_Processo_Receita'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Fiscais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Embarcacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DT_COANA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_DITEC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_DIANA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_ADE_Plublicacao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ADE_Num'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PK_ADEA'
        ParamType = ptUnknown
      end>
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into  Controle_ADE_Andamento'
      ' (FK_Importador'
      ' ,FK_Processo'
      ' ,DT_Abertura_Processo'
      ' ,Num_Processo_Receita'
      ' ,FK_Fiscais'
      ' ,FK_Status'
      ' ,Embarcacao'
      ' ,FK_Tipo'
      ' ,DT_COANA'
      ' ,DT_DITEC'
      ' ,DT_DIANA'
      ' ,DT_ADE_Plublicacao'
      ' ,ADE_Num)'
      'values'
      ' (:FK_Importador'
      ' ,:FK_Processo'
      ' ,Cast(:DT_Abertura_Processo as Date)'
      ' ,:Num_Processo_Receita'
      ' ,:FK_Fiscais'
      ' ,:FK_Status'
      ' ,:Embarcacao'
      ' ,:FK_Tipo'
      ' ,Cast(:DT_COANA as Date)'
      ' ,Cast(:DT_DITEC as Date)'
      ' ,Cast(:DT_DIANA as Date)'
      ' ,Cast(:DT_ADE_Plublicacao as Date)'
      ' ,:ADE_Num)')
    Left = 88
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DT_Abertura_Processo'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Num_Processo_Receita'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Fiscais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Embarcacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DT_COANA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_DITEC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_DIANA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_ADE_Plublicacao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ADE_Num'
        ParamType = ptInput
      end>
  end
  object dtsTipo: TDataSource
    DataSet = qryTipo
    Left = 457
    Top = 49
  end
  object qryTipo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' PK_Tipo'
      ' ,Descricao'
      'from'
      ' Controle_ADE_Tipo'
      'order by'
      ' Descricao')
    Left = 425
    Top = 49
  end
  object qryLocais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Distinct(Descricao) as "Descricao"'
      'from'
      ' Locais_Inventario'
      'where'
      ' Importador=:Importador'
      ' ')
    Left = 561
    Top = 169
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Importador'
        ParamType = ptUnknown
      end>
  end
  object dtsLocais: TDataSource
    DataSet = qryLocais
    Left = 593
    Top = 169
  end
end
