object f_movcarga: Tf_movcarga
  Left = 21
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimentação Carga/Descarga'
  ClientHeight = 412
  ClientWidth = 695
  Color = clTeal
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
  object Panel5: TPanel
    Left = 0
    Top = 380
    Width = 695
    Height = 32
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel6: TPanel
    Left = 0
    Top = 1
    Width = 337
    Height = 365
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 335
      Height = 33
      Align = alTop
      Caption = 'Faturas'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 34
      Width = 335
      Height = 292
      Align = alTop
      BiDiMode = bdLeftToRight
      Color = clWhite
      DataSource = ds_faturas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Fatura'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Boleto'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vencimento'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 326
      Width = 335
      Height = 36
      Align = alTop
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object btnNovo: TBitBtn
        Left = 6
        Top = 5
        Width = 76
        Height = 25
        Hint = 'Nova Movimentação'
        Caption = '&Incluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object btnExcluir: TBitBtn
        Left = 171
        Top = 5
        Width = 76
        Height = 25
        Hint = 'Exclui Movimentação'
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
        Left = 89
        Top = 5
        Width = 76
        Height = 25
        Hint = 'Alterar uma Movimentação'
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
      object btnLocalizar: TBitBtn
        Left = 253
        Top = 5
        Width = 76
        Height = 25
        Hint = 'Localizar uma Movimentação'
        Caption = '&Localizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
    end
  end
  object p_itens: TPanel
    Left = 339
    Top = 2
    Width = 357
    Height = 364
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 355
      Height = 33
      Align = alTop
      Caption = 'Itens da Fatura'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 34
      Width = 355
      Height = 290
      Align = alTop
      BiDiMode = bdLeftToRight
      Color = clWhite
      DataSource = ds_itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Processo'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DI'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTA'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 324
      Width = 355
      Height = 36
      Align = alTop
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object b_incluiitens: TBitBtn
        Left = 30
        Top = 5
        Width = 76
        Height = 25
        Hint = 'Nova Movimentação'
        Caption = '&Incluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = b_incluiitensClick
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
      object BitBtn2: TBitBtn
        Left = 115
        Top = 5
        Width = 76
        Height = 25
        Hint = 'Exclui Movimentação'
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
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
      object b_regrava: TBitBtn
        Left = 263
        Top = 5
        Width = 76
        Height = 25
        Hint = 'Exclui Movimentação'
        Caption = '&Regravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = b_regravaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF33339993707399933333773337F3777FF3399933000339
          9933377333777F3377F3399333707333993337733337333337FF993333333333
          399377F33333F333377F993333303333399377F33337FF333373993333707333
          333377F333777F333333993333101333333377F333777F3FFFFF993333000399
          999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
          99933773FF777F3F777F339993707399999333773F373F77777F333999999999
          3393333777333777337333333999993333333333377777333333}
        NumGlyphs = 2
      end
    end
  end
  object p_localizar: TPanel
    Left = 224
    Top = 46
    Width = 233
    Height = 31
    BevelWidth = 4
    TabOrder = 4
    Visible = False
    OnExit = b_fechalocClick
    object Label1: TLabel
      Left = 16
      Top = 184
      Width = 61
      Height = 13
      Caption = 'Pesquisa por'
    end
    object Label2: TLabel
      Left = 4
      Top = 4
      Width = 225
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Localizar Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rg_localiza: TRadioGroup
      Left = 56
      Top = 32
      Width = 121
      Height = 145
      Caption = 'Localizar por: '
      ItemIndex = 0
      Items.Strings = (
        'Fatura'
        'Boleto'
        'Vencimento'
        'Valor')
      TabOrder = 0
    end
    object e_chave: TEdit
      Left = 16
      Top = 200
      Width = 201
      Height = 21
      TabOrder = 1
    end
    object b_okloc: TBitBtn
      Left = 32
      Top = 232
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = b_oklocClick
      Kind = bkOK
    end
    object b_fechaloc: TBitBtn
      Left = 128
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = b_fechalocClick
      Kind = bkCancel
    end
  end
  object p_incluir: TPanel
    Left = 123
    Top = 88
    Width = 474
    Height = 29
    BevelWidth = 4
    TabOrder = 3
    Visible = False
    OnExit = b_fechaincluiClick
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Fatura'
    end
    object l_titulo: TLabel
      Left = 4
      Top = 4
      Width = 466
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Inclusão de Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 54
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label6: TLabel
      Left = 100
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Boleto'
    end
    object Label9: TLabel
      Left = 340
      Top = 80
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label4: TLabel
      Left = 180
      Top = 80
      Width = 56
      Height = 13
      Caption = 'Vencimento'
    end
    object Label10: TLabel
      Left = 260
      Top = 80
      Width = 24
      Height = 13
      Caption = 'Peso'
    end
    object b_gravainclui: TBitBtn
      Left = 152
      Top = 140
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 7
      OnClick = b_gravaincluiClick
      Kind = bkOK
    end
    object b_fechainclui: TBitBtn
      Left = 236
      Top = 140
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 8
      OnClick = b_fechaincluiClick
      Kind = bkCancel
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 100
      Width = 77
      Height = 21
      DataField = 'Fatura'
      DataSource = ds_faturas
      TabOrder = 1
      Visible = False
    end
    object dbl_fornecedores: TDBLookupComboBox
      Left = 16
      Top = 48
      Width = 441
      Height = 21
      DataField = 'Fornecedor'
      DataSource = ds_faturas
      KeyField = 'Codigo'
      ListField = 'Razão Social'
      ListFieldIndex = 1
      ListSource = ds_fornecedores
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 336
      Top = 96
      Width = 121
      Height = 21
      DataField = 'Valor'
      DataSource = ds_faturas
      TabOrder = 6
    end
    object e_fatura: TEdit
      Left = 16
      Top = 96
      Width = 77
      Height = 21
      TabOrder = 2
      OnExit = e_faturaExit
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 96
      Width = 77
      Height = 21
      DataField = 'Boleto'
      DataSource = ds_faturas
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 176
      Top = 96
      Width = 77
      Height = 21
      DataField = 'Vencimento'
      DataSource = ds_faturas
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 256
      Top = 96
      Width = 77
      Height = 21
      DataField = 'Peso'
      DataSource = ds_faturas
      TabOrder = 5
    end
  end
  object p_incluiritens: TPanel
    Left = 228
    Top = 42
    Width = 233
    Height = 267
    BevelWidth = 4
    TabOrder = 5
    Visible = False
    object Label7: TLabel
      Left = 16
      Top = 184
      Width = 46
      Height = 13
      Caption = 'Incluir por'
    end
    object Label8: TLabel
      Left = 4
      Top = 4
      Width = 225
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Incluir Itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rg_localiza2: TRadioGroup
      Left = 56
      Top = 32
      Width = 121
      Height = 145
      Caption = 'Localizar por: '
      ItemIndex = 0
      Items.Strings = (
        'DTA'
        'DI'
        'PROCESSO')
      TabOrder = 0
    end
    object e_chave2: TEdit
      Left = 16
      Top = 200
      Width = 201
      Height = 21
      TabOrder = 1
    end
    object b_okitens: TBitBtn
      Left = 32
      Top = 232
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = b_okitensClick
      Kind = bkOK
    end
    object b_cancelaitens: TBitBtn
      Left = 128
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = b_cancelaitensClick
      Kind = bkCancel
    end
  end
  object t_parametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 28
    Top = 65528
    object t_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object t_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object t_parametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object t_parametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object t_parametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object t_parametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object t_parametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object t_parametrosHost: TStringField
      FieldName = 'Host'
      Size = 15
    end
    object t_parametrosVersao: TStringField
      FieldName = 'Versao'
      Size = 50
    end
  end
  object ds_parametros: TDataSource
    DataSet = t_parametros
    Left = 28
  end
  object t_faturas: TTable
    AfterScroll = t_faturasAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Fatura'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Faturas_mov'
    Left = 64
    Top = 65528
    object t_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_faturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_faturasFornecedor: TStringField
      FieldName = 'Fornecedor'
      Required = True
      Size = 4
    end
    object t_faturasFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object t_faturasBoleto: TStringField
      FieldName = 'Boleto'
      Size = 15
    end
    object t_faturasVencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object t_faturasPeso: TFloatField
      FieldName = 'Peso'
      DisplayFormat = '###,###,##0.00'
    end
    object t_faturasValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
    object t_faturasConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object t_faturasCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object t_faturasDoc_contabil: TStringField
      FieldName = 'Doc_contabil'
      Size = 15
    end
  end
  object ds_faturas: TDataSource
    DataSet = t_faturas
    Left = 60
    Top = 65532
  end
  object t_itens: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Fatura;reg'
    MasterFields = 'Empresa;Filial;Fornecedor;Fatura'
    MasterSource = ds_faturas
    TableName = 'Itens_Faturas_Mov'
    Left = 88
    Top = 65528
    object t_itensEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_itensFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_itensFornecedor: TStringField
      FieldName = 'Fornecedor'
      Required = True
      Size = 4
    end
    object t_itensFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object t_itensreg: TAutoIncField
      FieldName = 'reg'
    end
    object t_itensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object t_itensDI: TStringField
      FieldName = 'DI'
      Size = 10
    end
    object t_itensDTA: TStringField
      FieldName = 'DTA'
      Size = 15
    end
    object t_itensPeso: TFloatField
      FieldName = 'Peso'
      DisplayFormat = '###,###,##0.00'
    end
    object t_itensValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object ds_itens: TDataSource
    DataSet = t_itens
    Left = 88
    Top = 8
  end
  object t_fornecedores: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Fornecedores'
    Left = 121
    Top = 65530
    object t_fornecedoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_fornecedoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_fornecedoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object t_fornecedoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object t_fornecedoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object t_fornecedoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object t_fornecedoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 10
    end
    object t_fornecedoresTipoImportador: TStringField
      FieldName = 'Tipo Importador'
      Size = 1
    end
    object t_fornecedoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object t_fornecedoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object t_fornecedoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object t_fornecedoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object t_fornecedoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object t_fornecedoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object t_fornecedoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object t_fornecedoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object t_fornecedoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
    object t_fornecedoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object t_fornecedoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object t_fornecedoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object t_fornecedoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object t_fornecedoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
  end
  object ds_fornecedores: TDataSource
    DataSet = t_fornecedores
    Left = 120
    Top = 4
  end
  object t_faturas2: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Fatura'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Faturas_mov'
    Left = 240
    Top = 65524
    object StringField1: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'Fornecedor'
      Required = True
      Size = 4
    end
    object StringField4: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'Boleto'
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Vencimento'
    end
    object FloatField1: TFloatField
      FieldName = 'Peso'
    end
    object FloatField2: TFloatField
      FieldName = 'Valor'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object StringField6: TStringField
      FieldName = 'Doc_contabil'
      Size = 15
    end
  end
  object q_processos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Código AS qprocesso, Importadores.[Razão Social' +
        '] AS qcliente, Processos.NR_DECLARACAO_IMP AS qdi, Processos.NR_' +
        'DECLARACAO_IMPC AS qdic, Conhecimento_Processo.Numeromanifesto A' +
        'S qdta, Conhecimento_Processo.Peso_Liquido AS qpeso'
      
        'FROM ((Parametros INNER JOIN Processos ON (Parametros.Filial = P' +
        'rocessos.Filial) AND (Parametros.Empresa = Processos.Empresa)) L' +
        'EFT JOIN Conhecimento_Processo ON (Processos.Código = Conhecimen' +
        'to_Processo.Processo) AND (Processos.Filial = Conhecimento_Proce' +
        'sso.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empre' +
        'sa)) LEFT JOIN Importadores ON (Processos.Importador = Importado' +
        'res.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Pr' +
        'ocessos.Empresa = Importadores.Empresa);')
    Left = 337
    Top = 10
    object q_processosqprocesso: TStringField
      FieldName = 'qprocesso'
      Size = 8
    end
    object q_processosqcliente: TStringField
      FieldName = 'qcliente'
      Size = 60
    end
    object q_processosqdi: TStringField
      FieldName = 'qdi'
      Size = 10
    end
    object q_processosqdta: TStringField
      FieldName = 'qdta'
      Size = 15
    end
    object q_processosqpeso: TFloatField
      FieldName = 'qpeso'
    end
    object q_processosqdic: TStringField
      FieldName = 'qdic'
      Size = 10
    end
  end
end
