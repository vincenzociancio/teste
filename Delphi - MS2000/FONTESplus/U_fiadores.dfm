object F_fiadores: TF_fiadores
  Left = 203
  Top = 157
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fiadores'
  ClientHeight = 258
  ClientWidth = 628
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
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
    Width = 628
    Height = 258
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label13: TLabel
      Left = 72
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Razão Social'
      FocusControl = edtRazao
    end
    object Label14: TLabel
      Left = 408
      Top = 16
      Width = 47
      Height = 13
      Caption = 'CGC/CPF'
      FocusControl = edtCnpj
    end
    object Label15: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Endereço'
      FocusControl = edtEnder
    end
    object Label16: TLabel
      Left = 8
      Top = 96
      Width = 27
      Height = 13
      Caption = 'Bairro'
    end
    object Label17: TLabel
      Left = 271
      Top = 96
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = edtCidade
    end
    object Label18: TLabel
      Left = 8
      Top = 136
      Width = 21
      Height = 13
      Caption = 'CEP'
      FocusControl = edtCep
    end
    object Label19: TLabel
      Left = 72
      Top = 136
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label20: TLabel
      Left = 272
      Top = 176
      Width = 87
      Height = 13
      Caption = 'Inscrição Estadual'
      FocusControl = edtInsc
    end
    object Label21: TLabel
      Left = 8
      Top = 176
      Width = 22
      Height = 13
      Caption = 'País'
    end
    object Label22: TLabel
      Left = 352
      Top = 56
      Width = 37
      Height = 13
      Caption = 'Número'
    end
    object Label23: TLabel
      Left = 392
      Top = 56
      Width = 64
      Height = 13
      Caption = 'Complemento'
      FocusControl = edtComple
    end
    object Label24: TLabel
      Left = 272
      Top = 136
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = edtEstado
    end
    object Label25: TLabel
      Left = 8
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object Bevel1: TBevel
      Left = 532
      Top = 3
      Width = 9
      Height = 250
      Shape = bsLeftLine
    end
    object Label1: TLabel
      Left = 8
      Top = 216
      Width = 50
      Height = 13
      Caption = 'Importador'
    end
    object edtRazao: TDBEdit
      Left = 73
      Top = 32
      Width = 335
      Height = 21
      DataField = 'Razao_Social'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtCnpj: TDBEdit
      Left = 408
      Top = 32
      Width = 112
      Height = 21
      DataField = 'CGC_CPF'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edtCnpjKeyPress
    end
    object edtEnder: TDBEdit
      Left = 8
      Top = 72
      Width = 344
      Height = 21
      DataField = 'Endereco'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtCidade: TDBEdit
      Left = 272
      Top = 112
      Width = 249
      Height = 21
      DataField = 'Cidade'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtCep: TDBEdit
      Left = 8
      Top = 152
      Width = 65
      Height = 21
      DataField = 'CEP'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edtCepKeyPress
    end
    object edtInsc: TDBEdit
      Left = 272
      Top = 192
      Width = 94
      Height = 21
      DataField = 'Inscricao_Estadual'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnKeyPress = edtInscKeyPress
    end
    object edtComple: TDBEdit
      Left = 392
      Top = 72
      Width = 130
      Height = 21
      DataField = 'Complemento'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtEstado: TDBEdit
      Left = 272
      Top = 152
      Width = 249
      Height = 21
      DataField = 'Estado'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object cmbPais: TDBLookupComboBox
      Left = 8
      Top = 192
      Width = 264
      Height = 21
      DataField = 'Pais'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsPais
      ParentFont = False
      TabOrder = 10
    end
    object cmbUF: TDBLookupComboBox
      Left = 73
      Top = 152
      Width = 199
      Height = 21
      DataField = 'UF'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dsUF
      ParentFont = False
      TabOrder = 8
    end
    object btnNovo: TBitBtn
      Left = 544
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Novo Fiador'
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
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
    object btnExcluir: TBitBtn
      Left = 544
      Top = 57
      Width = 75
      Height = 25
      Hint = 'Excluir Fiador'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
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
      Left = 544
      Top = 30
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Fiador'
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
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
    object btnGravar: TBitBtn
      Left = 544
      Top = 95
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
      TabOrder = 16
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
      Left = 544
      Top = 122
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
      TabOrder = 17
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
    object edtNum: TDBEdit
      Left = 352
      Top = 72
      Width = 40
      Height = 21
      DataField = 'Numero'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtBairro: TDBEdit
      Left = 8
      Top = 112
      Width = 264
      Height = 21
      DataField = 'Bairro'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btnLocalizar: TBitBtn
      Left = 544
      Top = 160
      Width = 75
      Height = 25
      Hint = 'Localizar um Fiador'
      Caption = '&Localizar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
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
    object btnImprimir: TBitBtn
      Left = 544
      Top = 187
      Width = 75
      Height = 25
      Hint = 'Imprimir dados do Fiador'
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
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
    object btnFechar: TBitBtn
      Left = 544
      Top = 226
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Fiadores'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object edtCod: TDBEdit
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'Codigo'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object cmbimportador: TDBLookupComboBox
      Left = 8
      Top = 232
      Width = 264
      Height = 21
      DataField = 'Importador'
      DataSource = dsFiadores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = ds_importadores
      ParentFont = False
      TabOrder = 12
    end
  end
  object pnlLocalizar: TPanel
    Left = 576
    Top = 20
    Width = 473
    Height = 229
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BiDiMode = bdLeftToRight
    BorderWidth = 1
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    object Label26: TLabel
      Left = 16
      Top = 34
      Width = 66
      Height = 13
      Caption = 'Razão Social:'
    end
    object dblcbLoc: TDBLookupComboBox
      Left = 184
      Top = 28
      Width = 217
      Height = 21
      DataField = 'Codigo'
      DataSource = dsLocalizar
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsFiadores
      TabOrder = 3
      Visible = False
    end
    object btnOK: TBitBtn
      Left = 171
      Top = 187
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = btnOKClick
      Kind = bkOK
    end
    object edtLocalizar: TEdit
      Left = 16
      Top = 48
      Width = 385
      Height = 21
      TabOrder = 0
      OnChange = edtLocalizarChange
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 72
      Width = 385
      Height = 109
      DataSource = dsLocalizar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGC_CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Importador'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 5
      Top = 5
      Width = 463
      Height = 24
      Align = alTop
      Caption = 'Localizar Fiador'
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
  object dsFiadores: TDataSource
    DataSet = t_Fiadores
    Left = 184
    Top = 16
  end
  object dsPais: TDataSource
    DataSet = q_Pais
    Left = 232
    Top = 16
  end
  object dsUF: TDataSource
    DataSet = q_UF
    Left = 280
    Top = 16
  end
  object t_Fiadores: TTable
    AfterOpen = t_FiadoresAfterScroll
    AfterScroll = t_FiadoresAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Fiadores'
    Left = 168
    object t_FiadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_FiadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_FiadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object t_FiadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object t_FiadoresPais: TStringField
      FieldName = 'Pais'
      Size = 3
    end
    object t_FiadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 18
    end
    object t_FiadoresEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object t_FiadoresNumero: TStringField
      FieldName = 'Numero'
      Size = 6
    end
    object t_FiadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object t_FiadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object t_FiadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object t_FiadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object t_FiadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object t_FiadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object t_FiadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Size = 15
    end
    object t_FiadoresImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
  end
  object dsLocalizar: TDataSource
    DataSet = q_Localizar
    Left = 376
    Top = 16
  end
  object dsFatura: TDataSource
    Left = 424
    Top = 16
  end
  object dsQFiadores: TDataSource
    Left = 328
    Top = 16
  end
  object q_Pais: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_PAIS')
    Left = 216
    object q_PaisCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_PAIS.CODIGO'
      Size = 3
    end
    object q_PaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_PAIS.DESCRICAO'
      Size = 120
    end
  end
  object q_UF: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM TAB_UF')
    Left = 264
    object q_UFCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.TAB_UF.Codigo'
      Size = 2
    end
    object q_UFDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.TAB_UF.Descricao'
      Size = 120
    end
  end
  object q_Localizar: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Codigo, Razao_Social, CGC_CPF, Importado' +
        'r'
      'FROM Fiadores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'RJO'
      end>
    object q_LocalizarEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Fiadores.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_LocalizarFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Fiadores.Filial'
      FixedChar = True
      Size = 4
    end
    object q_LocalizarCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Fiadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object q_LocalizarRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Fiadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_LocalizarCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Fiadores.CGC_CPF'
      FixedChar = True
      Size = 18
    end
    object q_LocalizarImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Fiadores.Importador'
      FixedChar = True
      Size = 4
    end
  end
  object q_Fiadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo AS Cod FROM Fiadores'
      'GROUP BY Codigo, Empresa, Filial'
      'HAVING Empresa = :emp AND Filial = :filial'
      'ORDER BY Cast(Codigo as integer) DESC')
    Left = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
    object q_FiadoresCod: TStringField
      FieldName = 'Cod'
      FixedChar = True
      Size = 4
    end
  end
  object q_Processo: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CNPJ_fiador_GAR'
      'FROM  Processos'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Importador = :imp ' +
        'AND CNPJ_fiador_GAR = :fiad')
    Left = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fiad'
        ParamType = ptUnknown
      end>
    object q_ProcessoCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Origin = 'DBNMSCOMEX.Processos.CNPJ_fiador_GAR'
      Size = 18
    end
  end
  object q_importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social, CNPJ_CPF_COMPLETO'
      'FROM Importadores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 456
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
  end
  object ds_importadores: TDataSource
    DataSet = q_importadores
    Left = 472
    Top = 16
  end
end
