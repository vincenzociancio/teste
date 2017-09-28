object frmControle_ADE_Deferido: TfrmControle_ADE_Deferido
  Left = 254
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle ADE Deferido'
  ClientHeight = 551
  ClientWidth = 759
  Color = clBtnFace
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
    Top = 532
    Width = 759
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object sbControle: TScrollBox
    Left = 671
    Top = 0
    Width = 88
    Height = 532
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 1
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
      Top = 379
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Kind = bkClose
    end
    object btnAbrir: TBitBtn
      Left = 8
      Top = 192
      Width = 75
      Height = 25
      Hint = 'Abre pdf selecionado'
      Caption = 'Abrir PDF'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnAbrirClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888888888888888888000000000008888800333333333088880B0333333333
        08880FB03333333330880BFB0333333333080FBFB000000000000BFBFBFBFB08
        88880FBFBFBFBF0888880BFB0000000888888000888888880008888888888888
        8008888888880888080888888888800088888888888888888888}
    end
    object btnEmail: TBitBtn
      Left = 8
      Top = 224
      Width = 75
      Height = 25
      Caption = 'Enviar E-mail'
      TabOrder = 7
      OnClick = btnEmailClick
    end
    object btnFinalizar: TBitBtn
      Left = 9
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Finalizar'
      TabOrder = 8
      OnClick = btnFinalizarClick
      Kind = bkNo
    end
    object btnRelatorio: TBitBtn
      Left = 8
      Top = 336
      Width = 75
      Height = 25
      Caption = 'Relatório'
      TabOrder = 9
      OnClick = btnRelatorioClick
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
    object btnOpen: TBitBtn
      Left = 8
      Top = 283
      Width = 75
      Height = 25
      Caption = 'Abrir'
      ModalResult = 1
      TabOrder = 10
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
    Width = 671
    Height = 532
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object gridMain: TDBGrid
      Left = 1
      Top = 287
      Width = 669
      Height = 244
      Align = alBottom
      DataSource = dtsADE_Deferido
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
          FieldName = 'Razao_Social'
          Title.Caption = 'Cliente'
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Embarcacao'
          Title.Caption = 'Embarcação'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_VECTO_ADE'
          Title.Caption = 'Data de Vencimento ADE'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_Processo'
          Title.Caption = 'Nº Processo'
          Width = 86
          Visible = True
        end>
    end
    object pnlText: TPanel
      Left = 1
      Top = 1
      Width = 669
      Height = 163
      Align = alClient
      Color = 10514464
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 16
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
      object Label2: TLabel
        Left = 416
        Top = 16
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 64
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
      object Label4: TLabel
        Left = 416
        Top = 64
        Width = 122
        Height = 13
        Caption = 'Data de Vencimento ADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 112
        Width = 37
        Height = 13
        Caption = 'Nº ADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 88
        Top = 112
        Width = 94
        Height = 13
        Caption = 'Data da Publicação'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 264
        Top = 112
        Width = 40
        Height = 13
        Caption = 'Contrato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 528
        Top = 112
        Width = 59
        Height = 13
        Caption = 'Nº Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtCliente: TDBLookupComboBox
        Left = 16
        Top = 32
        Width = 393
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Razao_Social'
        ListSource = dtsImportador
        TabOrder = 0
        OnCloseUp = edtClienteCloseUp
      end
      object edtCNPJ: TEdit
        Left = 416
        Top = 32
        Width = 129
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object edtDT_VECTO_ADE: TMaskEdit
        Left = 416
        Top = 80
        Width = 129
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
      end
      object edtEmbarcacao: TEdit
        Left = 16
        Top = 80
        Width = 345
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object btnBuscarLocal: TBitBtn
        Left = 368
        Top = 80
        Width = 41
        Height = 22
        Caption = '...'
        TabOrder = 4
        OnClick = btnBuscarLocalClick
      end
      object edtNumExecutivo: TEdit
        Left = 16
        Top = 128
        Width = 65
        Height = 21
        MaxLength = 3
        TabOrder = 5
      end
      object edtDTPublic: TMaskEdit
        Left = 88
        Top = 128
        Width = 97
        Height = 21
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 6
        Text = '  /  /    '
      end
      object pnlStatus: TPanel
        Left = 548
        Top = 31
        Width = 117
        Height = 69
        BevelInner = bvRaised
        Caption = 'Status: Aberto'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object chkVencido: TCheckBox
        Left = 192
        Top = 129
        Width = 65
        Height = 17
        Caption = 'Vencido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object edtContrato: TEdit
        Left = 264
        Top = 128
        Width = 257
        Height = 21
        TabOrder = 9
      end
      object edtProcessoMS2000: TMaskEdit
        Left = 528
        Top = 128
        Width = 129
        Height = 21
        EditMask = '99999/99;1;_'
        MaxLength = 8
        TabOrder = 10
        Text = '     /  '
      end
    end
    object pnlLocalizar: TPanel
      Left = 1
      Top = 260
      Width = 669
      Height = 27
      Align = alBottom
      BevelInner = bvLowered
      Color = 16777134
      TabOrder = 2
      object Label12: TLabel
        Left = 16
        Top = 6
        Width = 66
        Height = 13
        Caption = 'Localizar por: '
      end
      object edtLocalizar: TEdit
        Left = 219
        Top = 4
        Width = 328
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
      object edtOp: TComboBox
        Left = 88
        Top = 4
        Width = 129
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
          'Embarcação')
      end
    end
    object pnlAnexo: TPanel
      Left = 1
      Top = 164
      Width = 669
      Height = 96
      Align = alBottom
      Color = clGrayText
      TabOrder = 3
      object StaticText1: TStaticText
        Left = 1
        Top = 1
        Width = 667
        Height = 17
        Align = alTop
        Alignment = taCenter
        Caption = 'Arquivos anexos'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object gridAnexo: TDBGrid
        Left = 1
        Top = 18
        Width = 644
        Height = 77
        Align = alClient
        DataSource = dtsAnexos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descrição do anexo'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Caminho'
            Title.Caption = 'Caminho do anexo'
            Width = 419
            Visible = True
          end>
      end
      object ToolBar1: TToolBar
        Left = 645
        Top = 18
        Width = 23
        Height = 77
        Align = alRight
        AutoSize = True
        Caption = 'ToolBar1'
        Color = clScrollBar
        DisabledImages = img
        Flat = True
        Images = img
        ParentColor = False
        TabOrder = 2
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Hint = 'Novo anexo'
          Caption = 'ToolButton1'
          ImageIndex = 0
          ParentShowHint = False
          Wrap = True
          ShowHint = True
          OnClick = ToolButton1Click
        end
        object ToolButton3: TToolButton
          Left = 0
          Top = 22
          Hint = 'Editar anexo'
          Caption = 'ToolButton3'
          ImageIndex = 4
          ParentShowHint = False
          Wrap = True
          ShowHint = True
          OnClick = ToolButton3Click
        end
        object ToolButton2: TToolButton
          Left = 0
          Top = 44
          Hint = 'Excluir anexo'
          Caption = 'ToolButton2'
          ImageIndex = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton2Click
        end
      end
    end
  end
  object pnlEmbarcacao: TPanel
    Left = 189
    Top = 12
    Width = 381
    Height = 187
    BevelInner = bvRaised
    BevelWidth = 3
    TabOrder = 3
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
          FieldName = 'Descricao'
          Title.Caption = 'Embarcação'
          Visible = True
        end>
    end
  end
  object pnlNovoAnexo: TPanel
    Left = 167
    Top = 208
    Width = 425
    Height = 137
    BevelInner = bvRaised
    BevelWidth = 3
    TabOrder = 4
    Visible = False
    object Label8: TLabel
      Left = 16
      Top = 40
      Width = 48
      Height = 13
      Caption = 'Descrição'
    end
    object Label9: TLabel
      Left = 16
      Top = 64
      Width = 41
      Height = 13
      Caption = 'Caminho'
    end
    object SpeedButton1: TSpeedButton
      Left = 363
      Top = 63
      Width = 23
      Height = 22
      Hint = 'Salvar .pdf'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 387
      Top = 63
      Width = 23
      Height = 22
      Hint = 'Limpar caminho'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object edtDescricao: TEdit
      Left = 72
      Top = 32
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edtCaminho: TEdit
      Left = 72
      Top = 64
      Width = 289
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 6
      Width = 413
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSingle
      Caption = 'Inclusão de novo anexo'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 131
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      ModalResult = 1
      TabOrder = 3
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 211
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object qryExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 88
    Top = 16
  end
  object qryADE_Deferido: TQuery
    AfterScroll = qryADE_DeferidoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      '  PK_ADED'
      ' ,FK_Importador'
      ' ,Embarcacao'
      ' ,Cast( DT_VECTO_ADE as DateTime ) as "DT_VECTO_ADE"'
      ' ,Razao_Social'
      ' ,Cast( DT_Publicacao as DateTime ) as "DT_Publicacao"'
      ' ,Num_ADE_Executivo'
      ' ,Path_PDF'
      ' ,Finalizado'
      ' ,Vencido'
      ' ,Num_Contrato'
      ' ,Num_Processo'
      'from'
      ' Controle_ADE_Deferido'
      ' left join Importadores on ( FK_Importador = Codigo)'
      'where '
      ' Excluido <> 1'
      'Order by'
      ' Razao_Social, Embarcacao')
    Left = 249
    Top = 353
    object qryADE_DeferidoPK_ADED: TAutoIncField
      FieldName = 'PK_ADED'
    end
    object qryADE_DeferidoFK_Importador: TStringField
      FieldName = 'FK_Importador'
      FixedChar = True
      Size = 4
    end
    object qryADE_DeferidoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 50
    end
    object qryADE_DeferidoDT_VECTO_ADE: TDateTimeField
      FieldName = 'DT_VECTO_ADE'
    end
    object qryADE_DeferidoRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryADE_DeferidoDT_Publicacao: TDateTimeField
      FieldName = 'DT_Publicacao'
    end
    object qryADE_DeferidoNum_ADE_Executivo: TStringField
      FieldName = 'Num_ADE_Executivo'
      FixedChar = True
      Size = 3
    end
    object qryADE_DeferidoPath_PDF: TStringField
      FieldName = 'Path_PDF'
      FixedChar = True
      Size = 200
    end
    object qryADE_DeferidoFinalizado: TBooleanField
      FieldName = 'Finalizado'
    end
    object qryADE_DeferidoVencido: TBooleanField
      FieldName = 'Vencido'
    end
    object qryADE_DeferidoNum_Contrato: TStringField
      FieldName = 'Num_Contrato'
      FixedChar = True
    end
    object qryADE_DeferidoNum_Processo: TStringField
      FieldName = 'Num_Processo'
      FixedChar = True
      Size = 8
    end
  end
  object dtsImportador: TDataSource
    DataSet = qryImportador
    Left = 161
    Top = 17
  end
  object dtsADE_Deferido: TDataSource
    DataSet = qryADE_Deferido
    Left = 544
    Top = 408
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
    Left = 41
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Importador'
        ParamType = ptUnknown
      end>
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into  Controle_ADE_Deferido'
      ' (FK_Importador'
      ',Embarcacao'
      ',DT_VECTO_ADE'
      ',DT_Publicacao'
      ',Num_ADE_Executivo'
      ',Vencido'
      ',Num_Contrato'
      ',Num_Processo)'
      ''
      'values'
      ''
      ' (:FK_Importador'
      ',:Embarcacao'
      ',Cast(:DT_VECTO_ADE as Date )'
      ',Cast(:DT_Publicacao as Date )'
      ',:Num_ADE_Executivo'
      ',:Vencido'
      ',:Num_Contrato'
      ',:Num_Processo)')
    Left = 72
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Embarcacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DT_VECTO_ADE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_Publicacao'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Num_ADE_Executivo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vencido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Num_Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Num_Processo'
        ParamType = ptUnknown
      end>
  end
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update  Controle_ADE_Deferido set'
      ' FK_Importador =:FK_Importador,'
      ' Embarcacao =:Embarcacao,'
      ' DT_VECTO_ADE=Cast(:DT_VECTO_ADE as Date),'
      ' DT_Publicacao =Cast(:DT_Publicacao as Date),'
      ' Num_ADE_Executivo=:Num_ADE_Executivo,'
      ' Vencido=:Vencido, '
      ' Num_Contrato=:Num_Contrato, '
      ' Num_Processo=:Num_Processo'
      'where'
      ' PK_ADED=:PK_ADED')
    Left = 592
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Embarcacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DT_VECTO_ADE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_Publicacao'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Num_ADE_Executivo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Vencido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Num_Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Num_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_ADED'
        ParamType = ptUnknown
      end>
  end
  object qryImportador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' Codigo'
      ',Razao_Social'
      ',CNPJ_CPF_COMPLETO     '
      'from'
      ' Importadores'
      'where '
      ' Codigo not like '#39'X%'#39' and Codigo not like '#39'A%'#39
      'order by'
      ' Razao_Social'
      '')
    Left = 201
    Top = 17
  end
  object dtsLocais: TDataSource
    DataSet = qryLocais
    Left = 97
    Top = 73
  end
  object OP: TOpenDialog
    FileName = '*.pdf'
    Filter = '*.pdf'
    Left = 265
    Top = 49
  end
  object qryEmailAuto: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Email_auto'
      
        '(Programa, Assunto, Titulo, De, Para, CC, Body, Anexo, Data, Hor' +
        'a)'
      'values'
      
        '(:Programa, :Assunto, :Titulo, :De, :Para, :CC, :Body, :Anexo, G' +
        'ETDATE(), GETDATE()) ')
    Left = 336
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Programa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Assunto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'De'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Para'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Body'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Anexo'
        ParamType = ptUnknown
      end>
  end
  object qryAnexos: TQuery
    AfterScroll = qryAnexosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    DataSource = dtsADE_Deferido
    SQL.Strings = (
      'select '
      '*'
      'from'
      ' Controle_ADE_Deferido_Anexo'
      'where '
      ' FK_ADED=:PK_ADED'
      ' And Excluido <> 1')
    Left = 441
    Top = 210
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'PK_ADED'
        ParamType = ptUnknown
      end>
    object qryAnexosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Controle_ADE_Deferido_Anexo.Descricao'
      FixedChar = True
      Size = 30
    end
    object qryAnexosCaminho: TStringField
      FieldName = 'Caminho'
      Origin = 'DBNMSCOMEX.Controle_ADE_Deferido_Anexo.Caminho'
      FixedChar = True
      Size = 255
    end
    object qryAnexosPK_Anexo: TAutoIncField
      FieldName = 'PK_Anexo'
      Origin = 'DBNMSCOMEX.Controle_ADE_Deferido_Anexo.PK_Anexo'
    end
    object qryAnexosFK_ADED: TIntegerField
      FieldName = 'FK_ADED'
      Origin = 'DBNMSCOMEX.Controle_ADE_Deferido_Anexo.FK_ADED'
    end
  end
  object dtsAnexos: TDataSource
    DataSet = qryAnexos
    Left = 345
    Top = 202
  end
  object img: TImageList
    Left = 321
    Top = 9
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000007F7F7F007F7F7F00FFFFFF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000FFFFFF007F7F7F000000
      00007F7F7F007F7F7F00000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F007F7F7F007F7F7F000000
      0000000000000000000000000000FFFFFF007F7F7F00FFFFFF00000000000000
      00000000000000000000FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000FFFFFF000000
      0000FFFFFF007F7F7F00000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      0000000000000000000000000000FFFFFF00FFFFFF007F7F7F00FFFFFF007F7F
      7F007F7F7F00FFFFFF00000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      00007F7F7F0000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F
      7F000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F007F7F7F00FFFFFF00FFFF
      FF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      000000000000FFFFFF00FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000007F7F7F007F7F7F007F7F7F000000
      0000FFFFFF00FFFFFF007F7F7F007F7F7F00000000007F7F7F00000000000000
      00007F7F7F007F7F7F00000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F00000000007F7F7F0000000000000000000000
      000000000000FFFFFF00FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000007F7F7F000000000000000000FFFFFF00FFFF
      FF007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00007F7F7F00000000007F7F7F00FFFFFF00000000007F7F7F007F7F7F000000
      00007F7F7F00FFFFFF00000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F00000000007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      00000000000000000000FFFFFF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00FFFFFF000000000000000000000000000000000000FFFF0000FFFF000000
      00007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF007F7F7F007F7F7F007F7F
      7F007F7F7F0000FFFF0000FFFF0000000000000000007F7F7F007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F007F7F7F00000000000000000000000000000000000000
      0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF007F7F
      7F00FFFFFF00000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F00000000000000000000000000FFFFFF00FFFFFF007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000FFFFFF007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF0000000000FFFFFF000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF00000000007F7F7F007F7F7F007F7F7F007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF007F7F7F0000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF00000000007F7F7F007F7F7F007F7F
      7F00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      7F00FFFFFF000000000000000000000000000000000000000000000000000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F7F00FFFFFF007F7F
      7F00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF000000000000000000000000007F7F7F00FFFFFF007F7F7F007F7F
      7F00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00000000007F7F
      7F007F7F7F00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00BFBFBF00BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F00FFFFFF000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF00000000000000
      00007F7F7F007F7F7F00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF0000000000000000007F7F7F007F7F7F000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000007F7F7F007F7F7F00000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F0000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC00FC0000000000FC00906800000000
      200000920000000000001E3C0000000000001C520000000000001E0200000000
      00001C16000000000000180E000000000000001800000000000010B200000000
      E000E17800000000F800FAC000000000F000F49200000000E001E0F100000000
      C403C40300000000EC07EC0700000000FF7ECF3CE00FE00790018001E00FE547
      C003C003E00FE007E003E7F3E00FE007E003E7F3E00FE007E003E7F3E00FE007
      E00387F0E00FC005000107F0A00BA00380008780C007C007E007E707E00FE007
      E00FE727E00FE003E00FE703C007C003E027E021C007C003C073C030C007C007
      9E799E79F83FF81F7EFE7EFEF83FF83F00000000000000000000000000000000
      000000000000}
  end
  object qryInsertAnexo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_ADE_Deferido_Anexo'
      '(Descricao, Caminho, FK_ADED)'
      'values'
      '(:Descricao, :Caminho, :FK_ADED)')
    Left = 48
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Caminho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_ADED'
        ParamType = ptUnknown
      end>
  end
  object qryUpdateAnexo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update '
      ' Controle_ADE_Deferido_Anexo'
      'set '
      ' Descricao=:Descricao, Caminho=:Caminho'
      'where'
      ' PK_Anexo=:PK_Anexo')
    Left = 185
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Caminho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_Anexo'
        ParamType = ptUnknown
      end>
  end
end
