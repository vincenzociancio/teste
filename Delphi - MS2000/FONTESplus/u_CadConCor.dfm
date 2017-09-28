object f_CadConCor: Tf_CadConCor
  Left = 25
  Top = 117
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Contas Correntes'
  ClientHeight = 325
  ClientWidth = 743
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 248
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label1: TLabel
      Left = 324
      Top = 248
      Width = 20
      Height = 13
      Caption = 'Filial'
    end
    object Label3: TLabel
      Left = 562
      Top = 283
      Width = 71
      Height = 13
      Caption = 'Conta Corrente'
    end
    object Label4: TLabel
      Left = 117
      Top = 283
      Width = 48
      Height = 13
      Caption = 'Descrição'
    end
    object Label5: TLabel
      Left = 507
      Top = 283
      Width = 39
      Height = 13
      Caption = 'Agencia'
    end
    object Label6: TLabel
      Left = 456
      Top = 283
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object dbgCC: TDBGrid
      Left = 8
      Top = 8
      Width = 626
      Height = 236
      DataSource = dsCombo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'QEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 348
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QFILIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco_Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Agencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Conta_Corrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nivel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end>
    end
    object dbeDesc: TDBEdit
      Left = 119
      Top = 297
      Width = 321
      Height = 21
      DataField = 'Descricao'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbeCC: TDBEdit
      Left = 563
      Top = 297
      Width = 71
      Height = 21
      DataField = 'Conta_Corrente'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dbeAgenc: TDBEdit
      Left = 507
      Top = 297
      Width = 41
      Height = 21
      DataField = 'Agencia'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dbeBanco: TDBEdit
      Left = 456
      Top = 297
      Width = 32
      Height = 21
      DataField = 'Banco'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object pnlMenu: TPanel
      Left = 638
      Top = 0
      Width = 105
      Height = 325
      Align = alRight
      BevelOuter = bvNone
      Color = 10514464
      TabOrder = 8
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
        Left = 8
        Top = 7
        Width = 2
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Left = 24
        Top = 48
        Width = 73
        Height = 25
        Hint = 'Alterar dados do CAE'
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = btnSairClick
        Kind = bkClose
      end
    end
    object dbrgBancoCaixa: TDBRadioGroup
      Left = 7
      Top = 284
      Width = 100
      Height = 34
      Caption = ' Banco ou Caixa '
      Columns = 2
      DataField = 'Banco_Caixa'
      DataSource = DataSource1
      Enabled = False
      Items.Strings = (
        ''
        '')
      TabOrder = 3
      Values.Strings = (
        'B'
        'C')
    end
    object dblcbEmp: TDBLookupComboBox
      Left = 7
      Top = 261
      Width = 310
      Height = 21
      DataField = 'Empresacc'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsEmpresas
      ParentFont = False
      TabOrder = 1
      OnExit = dblcbEmpExit
    end
    object dblcbFiliais: TDBLookupComboBox
      Left = 325
      Top = 261
      Width = 310
      Height = 21
      DataField = 'Filialcc'
      DataSource = DataSource1
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo_Filial'
      ListField = 'Descricao'
      ListSource = dsFiliais
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlLocCC: TPanel
    Left = 32
    Top = 56
    Width = 481
    Height = 257
    TabOrder = 1
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
      Width = 479
      Height = 27
      Align = alTop
      Caption = 'Localiza Conta Corrente'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object meLocCC: TMaskEdit
      Left = 176
      Top = 36
      Width = 293
      Height = 21
      TabOrder = 1
      OnChange = meLocCCChange
    end
    object dbGrdCC: TDBGrid
      Left = 51
      Top = 64
      Width = 385
      Height = 147
      DataSource = dsLocCC
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
          FieldName = 'Conta_Corrente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Visible = True
        end>
    end
    object btnLocUniMedOk: TBitBtn
      Left = 308
      Top = 218
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 3
      OnClick = btnLocUniMedOkClick
      Kind = bkOK
    end
    object btnLocUniMedCanc: TBitBtn
      Left = 394
      Top = 218
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 4
      OnClick = btnLocUniMedCancClick
      Kind = bkCancel
    end
  end
  object pnlImpr: TPanel
    Left = 136
    Top = 16
    Width = 377
    Height = 41
    TabOrder = 2
    Visible = False
    object Label7: TLabel
      Left = 17
      Top = 38
      Width = 63
      Height = 16
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 17
      Top = 104
      Width = 35
      Height = 16
      Caption = 'Filial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 375
      Height = 27
      Align = alTop
      Caption = 'Impressão de Contas Correntes'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 196
      Top = 218
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 282
      Top = 218
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 2
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object cbIS: TCheckBox
      Left = 25
      Top = 160
      Width = 97
      Height = 17
      Caption = 'Imprime Saldos'
      TabOrder = 3
    end
    object cbTF: TCheckBox
      Left = 24
      Top = 184
      Width = 97
      Height = 17
      Caption = 'Totaliza ao Final'
      TabOrder = 4
    end
    object cbTodF: TCheckBox
      Left = 304
      Top = 103
      Width = 54
      Height = 17
      Caption = 'Todas'
      TabOrder = 5
      OnClick = cbTodFClick
    end
    object cbTodE: TCheckBox
      Left = 304
      Top = 39
      Width = 54
      Height = 17
      Caption = 'Todas'
      TabOrder = 6
      OnClick = cbTodEClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 56
      Width = 345
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsEmpresas
      TabOrder = 7
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 120
      Width = 345
      Height = 21
      KeyField = 'Codigo_Filial'
      ListField = 'Descricao'
      ListSource = dsFiliais
      TabOrder = 8
    end
  end
  object qrLocCC: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Contas_Correntes'
      'WHERE Conta_Corrente Like :cc OR Descricao Like :desc')
    Left = 544
    ParamData = <
      item
        DataType = ftString
        Name = 'cc'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocCCEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Empresa'
      Size = 4
    end
    object qrLocCCFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Filial'
      Size = 4
    end
    object qrLocCCCodigo: TAutoIncField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Codigo'
    end
    object qrLocCCBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Banco_Caixa'
      Size = 1
    end
    object qrLocCCDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Descricao'
      Size = 45
    end
    object qrLocCCBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Banco'
      Size = 5
    end
    object qrLocCCAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Agencia'
      Size = 5
    end
    object qrLocCCConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Conta_Corrente'
      Size = 8
    end
    object qrLocCCSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Saldo'
    end
    object qrLocCCNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Nivel'
      Size = 4
    end
    object qrLocCCData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Data'
    end
    object qrLocCCEmpresacc: TStringField
      FieldName = 'Empresacc'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Empresacc'
      Size = 4
    end
    object qrLocCCFilialcc: TStringField
      FieldName = 'Filialcc'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Filialcc'
      Size = 4
    end
    object qrLocCCASCAA: TSmallintField
      FieldName = 'ASCAA'
      Origin = 'DBNMSCOMEX.Contas_Correntes.ASCAA'
    end
  end
  object dsLocCC: TDataSource
    DataSet = qrLocCC
    Left = 552
    Top = 32
  end
  object qrCombo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Contas_Correntes.Empresa, Contas_Correntes.Filial, Contas' +
        '_Correntes.Codigo, Contas_Correntes.Banco_Caixa, Contas_Corrente' +
        's.Banco, Contas_Correntes.Agencia, Contas_Correntes.Conta_Corren' +
        'te, Contas_Correntes.Saldo, Contas_Correntes.Nivel, Contas_Corre' +
        'ntes.Data, Empresas.Razao_Social AS QEMPRESA, Filiais.Descricao ' +
        'AS QFILIAL, Contas_Correntes.Descricao'
      
        'FROM (Contas_Correntes LEFT JOIN Empresas ON Contas_Correntes.Em' +
        'presacc = Empresas.Codigo) LEFT JOIN Filiais ON (Contas_Corrente' +
        's.Filialcc = Filiais.Codigo_Filial) AND (Contas_Correntes.Empres' +
        'acc = Filiais.Codigo_Empresa)'
      'ORDER BY Empresas.Razao_Social, Filiais.Descricao')
    Left = 248
    object qrComboEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrComboFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrComboCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object qrComboBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      Size = 1
    end
    object qrComboBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object qrComboAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object qrComboConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object qrComboSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object qrComboNivel: TStringField
      FieldName = 'Nivel'
      Size = 4
    end
    object qrComboData: TDateTimeField
      FieldName = 'Data'
    end
    object qrComboQEMPRESA: TStringField
      FieldName = 'QEMPRESA'
      Size = 70
    end
    object qrComboQFILIAL: TStringField
      FieldName = 'QFILIAL'
      Size = 50
    end
    object qrComboDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
  end
  object dsCombo: TDataSource
    DataSet = qrCombo
    Left = 240
    Top = 40
  end
  object dsEmpresas: TDataSource
    DataSet = qrEmpresas
    Left = 288
    Top = 40
  end
  object dsFiliais: TDataSource
    DataSet = tbFiliais
    Left = 328
    Top = 32
  end
  object qrEmpresas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Empresas')
    Left = 288
    object qrEmpresasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Empresas.Codigo'
      Size = 4
    end
    object qrEmpresasRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Empresas.Razao_Social'
      Size = 70
    end
  end
  object tbCC: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = dsCombo
    TableName = 'Contas_Correntes'
    Left = 200
    object tbCCEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbCCFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbCCBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      FixedChar = True
      Size = 1
    end
    object tbCCDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object tbCCBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object tbCCAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object tbCCConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object tbCCSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object tbCCNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object tbCCData: TDateTimeField
      FieldName = 'Data'
    end
    object tbCCEmpresacc: TStringField
      FieldName = 'Empresacc'
      FixedChar = True
      Size = 4
    end
    object tbCCFilialcc: TStringField
      FieldName = 'Filialcc'
      FixedChar = True
      Size = 4
    end
    object tbCCASCAA: TSmallintField
      FieldName = 'ASCAA'
    end
    object tbCCCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
  end
  object DataSource1: TDataSource
    DataSet = tbCC
    Left = 192
    Top = 40
  end
  object tbFiliais: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo_Empresa'
    MasterFields = 'Codigo'
    MasterSource = dsEmpresas
    TableName = 'Filiais'
    Left = 328
    object tbFiliaisCodigo_Empresa: TStringField
      FieldName = 'Codigo_Empresa'
      Size = 4
    end
    object tbFiliaisCodigo_Filial: TStringField
      FieldName = 'Codigo_Filial'
      Size = 4
    end
    object tbFiliaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object tbFiliaisEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object tbFiliaisNumero: TStringField
      FieldName = 'Numero'
      Size = 6
    end
    object tbFiliaisComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object tbFiliaisBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object tbFiliaisCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object tbFiliaisUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object tbFiliaisCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object tbFiliaisTelefone: TStringField
      FieldName = 'Telefone'
      Size = 40
    end
    object tbFiliaisFax: TStringField
      FieldName = 'Fax'
      Size = 40
    end
  end
  object qrExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Conta' +
        's_Correntes.Filial, Movimentacao_Contas_Correntes.Codigo'
      'FROM Movimentacao_Contas_Correntes'
      'WHERE Movimentacao_Contas_Correntes.Empresa Like :emp '
      'AND Movimentacao_Contas_Correntes.Filial Like :fil '
      'AND Movimentacao_Contas_Correntes.Codigo Like :cod')
    Left = 384
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
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrExcluirEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Empresa'
      Size = 4
    end
    object qrExcluirFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Filial'
      Size = 4
    end
    object qrExcluirCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Codigo'
    end
  end
end
