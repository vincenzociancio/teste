object F_ContSoftware: TF_ContSoftware
  Left = 30
  Top = 64
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Software'
  ClientHeight = 427
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrinc: TPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 427
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object dbgrPatrimonio: TDBGrid
      Left = 0
      Top = 23
      Width = 712
      Height = 164
      Align = alTop
      DataSource = dsPatrimonio
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
          FieldName = 'DescI'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Completo'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'detalhe'
          Title.Caption = 'Detalhe'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Plaqueta'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IP'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREDE'
          Title.Caption = 'P.Rede'
          Width = 45
          Visible = True
        end>
    end
    object pnlMenu: TPanel
      Left = 0
      Top = 392
      Width = 712
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object btnIncluir: TBitBtn
        Left = 131
        Top = 5
        Width = 75
        Height = 25
        Hint = 'Incluir software'
        Caption = '&Incluir'
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
        Left = 219
        Top = 5
        Width = 75
        Height = 25
        Hint = 'Alterar dados do software'
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
        Left = 307
        Top = 5
        Width = 75
        Height = 25
        Hint = 'Excluir software'
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
      object btnRelatorio: TBitBtn
        Left = 395
        Top = 5
        Width = 75
        Height = 25
        Hint = 'Relatório de softwares'
        Caption = '&Relatório'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
      object btnSair: TBitBtn
        Left = 483
        Top = 5
        Width = 75
        Height = 25
        Hint = 'Sair do Controle de Software'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnSairClick
        Kind = bkClose
      end
    end
    object dbgrSoftware: TDBGrid
      Left = 0
      Top = 245
      Width = 712
      Height = 147
      Align = alBottom
      DataSource = dsContSoftware
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
          FieldName = 'descricao'
          Width = 504
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Licenca'
          Width = 267
          Visible = True
        end>
    end
    object btnEditar: TBitBtn
      Left = 1
      Top = 192
      Width = 75
      Height = 25
      Hint = 'Alterar dados do software'
      Caption = 'E&ditar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = btnEditarClick
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
    object Panel1: TPanel
      Left = 0
      Top = 219
      Width = 712
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'SOFTWARES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 708
        Height = 3
        Shape = bsTopLine
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 712
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Caption = 'CONTROLE DE SOFTWARES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object pnlIncluir: TPanel
    Left = 84
    Top = 48
    Width = 521
    Height = 193
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 1
    Visible = False
    object Label4: TLabel
      Left = 170
      Top = 24
      Width = 171
      Height = 20
      Caption = 'Inclusão de Software'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 48
      Width = 51
      Height = 13
      Caption = 'Descrição:'
    end
    object Label17: TLabel
      Left = 16
      Top = 96
      Width = 41
      Height = 13
      Caption = 'Licença:'
    end
    object btnOkInc: TBitBtn
      Left = 179
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Confirmar inclusão do software'
      Caption = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object dblcbDesc: TDBLookupComboBox
      Left = 16
      Top = 64
      Width = 489
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListFieldIndex = 1
      ListSource = dsSoftware
      TabOrder = 0
    end
    object btnCancInc: TBitBtn
      Left = 267
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Cancelar inclusão do software'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnCancIncClick
      Kind = bkCancel
    end
    object edtLicenca: TEdit
      Left = 16
      Top = 112
      Width = 249
      Height = 21
      TabOrder = 1
    end
  end
  object pnlAlterar: TPanel
    Left = 144
    Top = 116
    Width = 521
    Height = 193
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object Label20: TLabel
      Left = 162
      Top = 24
      Width = 180
      Height = 20
      Caption = 'Alteração do Software'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 16
      Top = 96
      Width = 41
      Height = 13
      Caption = 'Licença:'
    end
    object Label22: TLabel
      Left = 16
      Top = 48
      Width = 51
      Height = 13
      Caption = 'Descrição:'
    end
    object btnOkAlt: TBitBtn
      Left = 179
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Confirmar alteração do software'
      Caption = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnOkAltClick
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
    object dblcbDescAlt: TDBLookupComboBox
      Left = 16
      Top = 64
      Width = 489
      Height = 21
      DataField = 'Software'
      DataSource = dsTContSoftware
      KeyField = 'codigo'
      ListField = 'descricao'
      ListFieldIndex = 1
      ListSource = dsSoftware
      TabOrder = 0
    end
    object btnCancAlt: TBitBtn
      Left = 267
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Cancelar alteração do software'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnCancAltClick
      Kind = bkCancel
    end
    object dbedtLicenca: TDBEdit
      Left = 16
      Top = 112
      Width = 249
      Height = 21
      DataField = 'Licenca'
      DataSource = dsTContSoftware
      TabOrder = 1
    end
  end
  object pnlEditar: TPanel
    Left = 143
    Top = 48
    Width = 521
    Height = 193
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label19: TLabel
      Left = 170
      Top = 24
      Width = 171
      Height = 20
      Caption = 'Edição do Patrimônio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 16
      Top = 48
      Width = 52
      Height = 13
      Caption = 'Patrimônio:'
    end
    object Label33: TLabel
      Left = 88
      Top = 48
      Width = 51
      Height = 13
      Caption = 'Descrição:'
    end
    object Label39: TLabel
      Left = 136
      Top = 96
      Width = 75
      Height = 13
      Caption = 'Ponto de Rede:'
    end
    object Label34: TLabel
      Left = 16
      Top = 96
      Width = 13
      Height = 13
      Caption = 'IP:'
    end
    object btnOkEdit: TBitBtn
      Left = 179
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Confirmar alteração do patrimônio'
      Caption = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnOkEditClick
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
    object btnCancEdit: TBitBtn
      Left = 267
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Cancelar alteração do patrimônio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnCancEditClick
      Kind = bkCancel
    end
    object dbedtPlaqueta: TDBEdit
      Left = 16
      Top = 64
      Width = 65
      Height = 21
      TabStop = False
      Color = clInactiveCaptionText
      DataField = 'Plaqueta'
      DataSource = dsTPatrimonio
      ReadOnly = True
      TabOrder = 4
    end
    object dbedtDesc: TDBEdit
      Left = 88
      Top = 64
      Width = 417
      Height = 21
      TabStop = False
      Color = clInactiveCaptionText
      DataField = 'Descricao'
      DataSource = dsTPatrimonio
      ReadOnly = True
      TabOrder = 5
    end
    object dbedtPRede: TDBEdit
      Left = 136
      Top = 112
      Width = 73
      Height = 21
      DataField = 'PREDE'
      DataSource = dsTPatrimonio
      MaxLength = 3
      TabOrder = 1
    end
    object dbedtIP: TDBEdit
      Left = 16
      Top = 112
      Width = 113
      Height = 21
      DataField = 'IP'
      DataSource = dsTPatrimonio
      TabOrder = 0
    end
  end
  object pnlRel: TPanel
    Left = 247
    Top = 136
    Width = 314
    Height = 193
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 89
      Top = 24
      Width = 138
      Height = 20
      Caption = 'Tipo de Relatório'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnOkRel: TBitBtn
      Left = 74
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Confirmar alteração do patrimônio'
      Caption = 'Confirmar'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnOkRelClick
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
    object btnCancRel: TBitBtn
      Left = 162
      Top = 144
      Width = 75
      Height = 25
      Hint = 'Cancelar alteração do patrimônio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnCancRelClick
      Kind = bkCancel
    end
    object rgRel: TRadioGroup
      Left = 20
      Top = 48
      Width = 273
      Height = 81
      ItemIndex = 0
      Items.Strings = (
        'Softwares de cada computador por setor'
        'IP e ponto de rede de cada computador por setor')
      TabOrder = 2
    end
  end
  object dsPatrimonio: TDataSource
    DataSet = QPatrimonio
    Left = 16
    Top = 16
  end
  object QPatrimonio: TQuery
    AutoCalcFields = False
    AfterScroll = QPatrimonioAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Empresa, P.Filial, P.Setor, S.descricao AS DescI, P.Usu' +
        'ario, U.Nome_Completo, P.Plaqueta, P.Descricao, P.IP, P.PREDE, P' +
        '.detalhe'
      
        'FROM ((Parametros AS PA INNER JOIN Patrimonio AS P ON (PA.Empres' +
        'a = P.Empresa) AND (PA.Filial = P.Filial)) LEFT JOIN Usuarios AS' +
        ' U ON P.Usuario = U.Usuario) INNER JOIN Setores AS S ON P.Setor ' +
        '= S.codigo'
      
        'WHERE (((P.Tipo_Patrimonio)="INFO") AND ((P.Sub_Tipo_Patrimonio)' +
        '="COM") AND ((P.Status_Patrimonio)="0"))'
      'ORDER BY P.Setor, P.Usuario;')
    Left = 8
    object QPatrimonioEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object QPatrimonioFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object QPatrimonioSetor: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object QPatrimonioDescI: TStringField
      FieldName = 'DescI'
      Size = 50
    end
    object QPatrimonioUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object QPatrimonioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Size = 45
    end
    object QPatrimonioPlaqueta: TStringField
      FieldName = 'Plaqueta'
      Size = 6
    end
    object QPatrimonioDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object QPatrimonioIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
    object QPatrimonioPREDE: TStringField
      FieldName = 'PREDE'
      Size = 2
    end
    object QPatrimoniodetalhe: TStringField
      FieldName = 'detalhe'
      Size = 50
    end
  end
  object QSoftwares: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT S.*'
      'FROM Softwares AS S'
      'WHERE not Exists (SELECT C.Software'
      'FROM Controle_Softwares AS C'
      
        'WHERE C.Software = S.Codigo AND C.Plaqueta = :Plaq) or S.Codigo ' +
        '= :Soft')
    Left = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'Plaq'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Soft'
        ParamType = ptUnknown
      end>
    object QSoftwarescodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 4
    end
    object QSoftwaresdescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 50
    end
  end
  object dsTContSoftware: TDataSource
    DataSet = TContSoftware
    Left = 184
    Top = 16
  end
  object dsSoftware: TDataSource
    DataSet = QSoftwares
    Left = 248
  end
  object TContSoftware: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Plaqueta;Software'
    MasterFields = 'Empresa;Filial;Plaqueta;Software'
    MasterSource = dsContSoftware
    TableName = 'Controle_Softwares'
    Left = 176
    object TContSoftwareEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object TContSoftwareFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object TContSoftwarePlaqueta: TStringField
      FieldName = 'Plaqueta'
      Required = True
    end
    object TContSoftwareSoftware: TStringField
      FieldName = 'Software'
      Size = 4
    end
    object TContSoftwareLicenca: TStringField
      FieldName = 'Licenca'
      Size = 100
    end
  end
  object QExec: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 96
  end
  object TPatrimonio: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Plaqueta'
    MasterFields = 'Empresa;Filial;Plaqueta'
    MasterSource = dsPatrimonio
    TableName = 'Patrimonio'
    Left = 48
    object TPatrimonioEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object TPatrimonioFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object TPatrimonioPlaqueta: TStringField
      FieldName = 'Plaqueta'
      Required = True
      Size = 6
    end
    object TPatrimonioDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object TPatrimonioTipo_Patrimonio: TStringField
      FieldName = 'Tipo_Patrimonio'
      Size = 4
    end
    object TPatrimonioSub_Tipo_Patrimonio: TStringField
      FieldName = 'Sub_Tipo_Patrimonio'
      Size = 4
    end
    object TPatrimonioSetor: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object TPatrimonioUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object TPatrimonioNserie: TStringField
      FieldName = 'Nserie'
      Size = 50
    end
    object TPatrimonioValor: TFloatField
      FieldName = 'Valor'
    end
    object TPatrimonioFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 4
    end
    object TPatrimonioNfiscal_entrada: TStringField
      FieldName = 'Nfiscal_entrada'
    end
    object TPatrimonioIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
    object TPatrimonioPREDE: TStringField
      FieldName = 'PREDE'
      Size = 2
    end
    object TPatrimonioStatus_Patrimonio: TStringField
      FieldName = 'Status_Patrimonio'
      Size = 4
    end
    object TPatrimonioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object TPatrimonioDetalhe: TStringField
      FieldName = 'Detalhe'
      Size = 50
    end
    object TPatrimonioPlaqueta2: TStringField
      FieldName = 'Plaqueta2'
      Size = 6
    end
  end
  object dsTPatrimonio: TDataSource
    DataSet = TPatrimonio
    Left = 56
    Top = 16
  end
  object QContSoftware: TQuery
    AfterScroll = QContSoftwareAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT C.Empresa, C.Filial, C.Plaqueta, C.Software, Softwares.de' +
        'scricao, C.Licenca'
      
        'FROM Controle_Softwares AS C INNER JOIN Softwares ON C.Software ' +
        '= Softwares.codigo'
      'WHERE C.Plaqueta= :Plaq')
    Left = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'Plaq'
        ParamType = ptUnknown
      end>
    object QContSoftwareEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Controle_Softwares.Empresa'
      FixedChar = True
      Size = 4
    end
    object QContSoftwareFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Controle_Softwares.Filial'
      FixedChar = True
      Size = 4
    end
    object QContSoftwarePlaqueta: TStringField
      FieldName = 'Plaqueta'
      Origin = 'DBNMSCOMEX.Controle_Softwares.Plaqueta'
      FixedChar = True
    end
    object QContSoftwareSoftware: TStringField
      FieldName = 'Software'
      Origin = 'DBNMSCOMEX.Controle_Softwares.Software'
      FixedChar = True
      Size = 4
    end
    object QContSoftwaredescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Softwares.descricao'
      FixedChar = True
      Size = 50
    end
    object QContSoftwareLicenca: TStringField
      FieldName = 'Licenca'
      Origin = 'DBNMSCOMEX.Controle_Softwares.Licenca'
      FixedChar = True
      Size = 100
    end
  end
  object dsContSoftware: TDataSource
    DataSet = QContSoftware
    Left = 144
    Top = 16
  end
  object QSetor: TQuery
    AfterScroll = QSetorAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Setores.codigo, Setores.descricao'
      
        'FROM Setores INNER JOIN Patrimonio ON Setores.codigo = Patrimoni' +
        'o.Setor'
      
        'GROUP BY Setores.codigo, Setores.descricao, Patrimonio.Tipo_Patr' +
        'imonio, Patrimonio.Sub_Tipo_Patrimonio, Patrimonio.Status_Patrim' +
        'onio'
      
        'HAVING (((Patrimonio.Tipo_Patrimonio)="INFO") AND ((Patrimonio.S' +
        'ub_Tipo_Patrimonio)="COM") AND ((Patrimonio.Status_Patrimonio)="' +
        '0"))'
      'ORDER BY Setores.descricao;')
    Left = 280
    object QSetorcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Setores.codigo'
      Size = 4
    end
    object QSetordescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Setores.descricao'
      Size = 50
    end
  end
  object dsSetor: TDataSource
    DataSet = QSetor
    Left = 288
    Top = 16
  end
end
