object F_proItens: TF_proItens
  Left = 300
  Top = 153
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Itens da Fatura'
  ClientHeight = 559
  ClientWidth = 758
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
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 758
    Height = 496
    Align = alClient
    Color = 10514464
    TabOrder = 1
    object Label39: TLabel
      Left = 5
      Top = 170
      Width = 22
      Height = 13
      Caption = 'Pág.'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label40: TLabel
      Left = 8
      Top = 381
      Width = 24
      Height = 13
      Caption = 'NCM'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 42
      Top = 170
      Width = 22
      Height = 13
      Caption = 'Seq.'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label42: TLabel
      Left = 6
      Top = 215
      Width = 73
      Height = 13
      Caption = 'Código Produto'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label44: TLabel
      Left = 599
      Top = 382
      Width = 46
      Height = 13
      Caption = 'Destaque'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label171: TLabel
      Left = 674
      Top = 382
      Width = 39
      Height = 13
      Caption = 'NALADI'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 9
      Top = 416
      Width = 146
      Height = 13
      Caption = 'Unidade de Medida Estatística'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 250
      Width = 116
      Height = 13
      Caption = 'Descrição em Português'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 79
      Top = 170
      Width = 50
      Height = 13
      Caption = 'Fabricante'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 384
      Top = 416
      Width = 200
      Height = 13
      Caption = 'Unidade de Medida Comercializada'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label282: TLabel
      Left = 8
      Top = 451
      Width = 53
      Height = 13
      Caption = 'Ref.Projeto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 96
      Top = 451
      Width = 44
      Height = 13
      Caption = 'Ref.Emb.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label185: TLabel
      Left = 176
      Top = 451
      Width = 54
      Height = 13
      Caption = 'Nº de Série'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label188: TLabel
      Left = 256
      Top = 451
      Width = 15
      Height = 13
      Caption = 'PO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label285: TLabel
      Left = 336
      Top = 451
      Width = 37
      Height = 13
      Caption = 'Seq.PO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 416
      Top = 451
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 496
      Top = 451
      Width = 63
      Height = 13
      Caption = 'Valor Unitário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 576
      Top = 451
      Width = 63
      Height = 13
      Caption = 'Peso Unitário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLocProd: TSpeedButton
      Left = 85
      Top = 206
      Width = 24
      Height = 22
      Hint = 'Localizar Produtos'
      Enabled = False
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080F000888880F00080F000888880F0008000000080000
        000800F000000F00000800F000800F00000800F000800F000008800000000000
        0088880F00080F000888880000080000088888800088800088888880F08880F0
        888888800088800088888888888888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbLocProdClick
    end
    object sbCadProd: TSpeedButton
      Left = 109
      Top = 206
      Width = 25
      Height = 22
      Hint = 'Cadastrar Produto'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = sbCadProdClick
    end
    object Label6: TLabel
      Left = 6
      Top = 314
      Width = 96
      Height = 13
      Caption = 'Descrição em Inglês'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object sblocfab: TSpeedButton
      Left = 134
      Top = 166
      Width = 25
      Height = 22
      Hint = 'Localizar Fabricante'
      Enabled = False
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080F000888880F00080F000888880F0008000000080000
        000800F000000F00000800F000800F00000800F000800F000008800000000000
        0088880F00080F000888880000080000088888800088800088888880F08880F0
        888888800088800088888888888888888888}
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = sblocfabClick
    end
    object sbcadfab: TSpeedButton
      Left = 160
      Top = 166
      Width = 25
      Height = 22
      Hint = 'Cadastrar Fabricante'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = sbcadfabClick
    end
    object Label9: TLabel
      Left = 381
      Top = 215
      Width = 71
      Height = 13
      Caption = 'Part Number'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 660
      Top = 451
      Width = 51
      Height = 13
      Caption = 'Peso Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 591
      Top = 257
      Width = 151
      Height = 13
      Caption = 'Brasdrill - Item Admissível:'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbEdtUniMedComerc: TDBEdit
      Left = 384
      Top = 430
      Width = 25
      Height = 21
      DataField = 'Unidade'
      DataSource = dsitens
      Enabled = False
      TabOrder = 14
      OnKeyPress = dbEdtUniMedComercKeyPress
    end
    object dbEdtFabric: TDBEdit
      Left = 76
      Top = 183
      Width = 43
      Height = 21
      DataField = 'Fabricante'
      DataSource = dsitens
      Enabled = False
      TabOrder = 3
      OnKeyPress = dbEdtFabricKeyPress
    end
    object dbGrdItens: TDBGrid
      Left = 4
      Top = 4
      Width = 743
      Height = 162
      DataSource = dsQItens
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
          FieldName = 'Pagina'
          Title.Caption = 'Página'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequencial'
          Title.Caption = 'Seq.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo_produto'
          Title.Caption = 'Código Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Title.Caption = 'Part Number'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Destaque_NCM'
          Title.Caption = 'Destaque NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NALADI'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade_Medida_Estat'
          Title.Caption = 'Uni. Med. Estat.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia_projeto'
          Title.Caption = 'Ref. Projeto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Referencia'
          Title.Caption = 'Ref. Emb.'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_serie'
          Title.Caption = 'N® Série'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Seqpo'
          Title.Caption = 'Seq. PO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso_Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso_Unitario_Acertado'
          Title.Caption = 'Peso Unitário Acertardo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso_Total_Acertado'
          Title.Caption = 'Peso Total Acertado'
          Visible = True
        end>
    end
    object dbEdtPag: TDBEdit
      Left = 5
      Top = 183
      Width = 33
      Height = 21
      DataField = 'Pagina'
      DataSource = dsitens
      Enabled = False
      TabOrder = 1
      OnChange = dbEdtPagChange
      OnExit = dbEdtPagChange
      OnKeyPress = dbEdtPagKeyPress
    end
    object dbEdtRefProjeto: TDBEdit
      Left = 8
      Top = 464
      Width = 81
      Height = 21
      DataField = 'Referencia_projeto'
      DataSource = dsitens
      Enabled = False
      TabOrder = 16
      OnKeyPress = dbEdtRefProjetoKeyPress
    end
    object dbEdtRefEmb: TDBEdit
      Left = 96
      Top = 464
      Width = 73
      Height = 21
      DataField = 'Referencia'
      DataSource = dsitens
      Enabled = False
      TabOrder = 17
      OnKeyPress = dbEdtRefEmbKeyPress
    end
    object dbEdtNSerie: TDBEdit
      Left = 176
      Top = 464
      Width = 73
      Height = 21
      DataField = 'Numero_serie'
      DataSource = dsitens
      Enabled = False
      TabOrder = 18
      OnKeyPress = dbEdtNSerieKeyPress
    end
    object dbLcbUniMedComerc: TDBLookupComboBox
      Left = 410
      Top = 430
      Width = 338
      Height = 21
      DataField = 'Unidade'
      DataSource = dsitens
      Enabled = False
      KeyField = 'CODIGO'
      ListField = 'CODIGO;DESCRICAO;ABREV'
      ListFieldIndex = 1
      ListSource = dsUniMedComerc
      TabOrder = 15
      OnKeyPress = dbLcbUniMedComercKeyPress
    end
    object dbEdtSeq: TDBEdit
      Left = 41
      Top = 183
      Width = 33
      Height = 21
      DataField = 'Sequencial'
      DataSource = dsitens
      Enabled = False
      TabOrder = 2
      OnChange = dbEdtSeqChange
      OnExit = dbEdtSeqChange
      OnKeyPress = dbEdtSeqKeyPress
    end
    object dbEdtNALADI: TDBEdit
      Left = 674
      Top = 395
      Width = 73
      Height = 21
      DataField = 'NALADI'
      DataSource = dsitens
      Enabled = False
      TabOrder = 12
      OnKeyPress = dbEdtNALADIKeyPress
    end
    object dbLcbUniMedEstat: TDBLookupComboBox
      Left = 9
      Top = 430
      Width = 373
      Height = 21
      DataField = 'Unidade_Medida_Estat'
      DataSource = dsitens
      Enabled = False
      KeyField = 'CODIGO'
      ListField = 'CODIGO;DESCRICAO;ABREV'
      ListFieldIndex = 1
      ListSource = dsUniMedEstat
      TabOrder = 13
      OnKeyPress = dbLcbUniMedEstatKeyPress
    end
    object dbEdtPO: TDBEdit
      Left = 256
      Top = 464
      Width = 73
      Height = 21
      DataField = 'PO'
      DataSource = dsitens
      Enabled = False
      TabOrder = 19
      OnKeyPress = dbEdtPOKeyPress
    end
    object dbEdtSeqPO: TDBEdit
      Left = 336
      Top = 464
      Width = 73
      Height = 21
      DataField = 'Seqpo'
      DataSource = dsitens
      Enabled = False
      TabOrder = 20
      OnKeyPress = dbEdtSeqPOKeyPress
    end
    object dbEdtQtd: TDBEdit
      Left = 416
      Top = 464
      Width = 73
      Height = 21
      DataField = 'Quantidade'
      DataSource = dsitens
      Enabled = False
      TabOrder = 21
      OnExit = dbEdtQtdExit
      OnKeyPress = dbEdtQtdKeyPress
    end
    object dbEdtValUnit: TDBEdit
      Left = 496
      Top = 464
      Width = 73
      Height = 21
      DataField = 'Valor_Unitario'
      DataSource = dsitens
      Enabled = False
      TabOrder = 22
      OnKeyPress = dbEdtValUnitKeyPress
    end
    object dbLcbNCM: TDBLookupComboBox
      Left = 64
      Top = 395
      Width = 532
      Height = 21
      DataField = 'NCM'
      DataSource = dsitens
      Enabled = False
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsNCM
      TabOrder = 10
      OnExit = dbLcbNCMExit
      OnKeyPress = dbLcbNCMKeyPress
    end
    object dbEdtDestaque: TDBEdit
      Left = 599
      Top = 395
      Width = 73
      Height = 21
      DataField = 'Destaque_NCM'
      DataSource = dsitens
      Enabled = False
      TabOrder = 11
      OnKeyPress = dbEdtDestaqueKeyPress
    end
    object dbEdtcodigo: TDBEdit
      Left = 6
      Top = 228
      Width = 370
      Height = 21
      DataField = 'Codigo_Produto'
      DataSource = dsitens
      Enabled = False
      TabOrder = 5
    end
    object dbEdtNCM: TDBEdit
      Left = 8
      Top = 395
      Width = 57
      Height = 21
      DataField = 'NCM'
      DataSource = dsitens
      Enabled = False
      TabOrder = 9
      OnExit = dbLcbNCMExit
      OnKeyPress = dbEdtNCMKeyPress
    end
    object DBE_part: TDBEdit
      Left = 379
      Top = 228
      Width = 370
      Height = 21
      DataField = 'Produto'
      DataSource = dsitens
      Enabled = False
      TabOrder = 6
    end
    object dbLcbFabric: TDBLookupComboBox
      Left = 118
      Top = 183
      Width = 631
      Height = 21
      DataField = 'Fabricante'
      DataSource = dsitens
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsFabricantes
      TabOrder = 4
      OnKeyPress = dbLcbFabricKeyPress
    end
    object dbMemoDesc: TDBMemo
      Left = 6
      Top = 263
      Width = 569
      Height = 51
      DataField = 'Descricao_Produto'
      DataSource = dsitens
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dbMemoDescIng: TDBMemo
      Left = 5
      Top = 328
      Width = 569
      Height = 51
      DataField = 'Descricao_Produto_ing'
      DataSource = dsitens
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object pnlLocProdutos: TPanel
      Left = 759
      Top = 298
      Width = 649
      Height = 361
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 5
      BorderWidth = 1
      TabOrder = 23
      Visible = False
      OnExit = btnLocProCancClick
      object L_busca: TLabel
        Left = 16
        Top = 33
        Width = 241
        Height = 16
        Caption = 'Código, Part Number ou Descrição'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 18
        Top = 211
        Width = 99
        Height = 13
        Caption = 'Descrição Português'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 18
        Top = 267
        Width = 79
        Height = 13
        Caption = 'Descrição Inglês'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnLocProOk: TBitBtn
        Left = 256
        Top = 328
        Width = 75
        Height = 25
        Caption = '&OK'
        TabOrder = 3
        OnClick = btnLocProOkClick
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
      object dbGrdProdutos: TDBGrid
        Left = 16
        Top = 73
        Width = 625
        Height = 137
        DataSource = dsProdutos
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
            FieldName = 'Importador'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fabricante'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'Cód.Produto'
            Width = 158
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PART_NUMBER'
            Title.Caption = 'Part.Number'
            Width = 169
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destaque_NCM'
            Title.Caption = 'Destaque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NALADI'
            Visible = True
          end>
      end
      object meLocProdutos: TMaskEdit
        Left = 16
        Top = 50
        Width = 361
        Height = 21
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 6
        Top = 6
        Width = 637
        Height = 27
        Align = alTop
        Caption = 'Localiza Produto'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object btnLocProCanc: TBitBtn
        Left = 336
        Top = 328
        Width = 75
        Height = 25
        Caption = '&Cancela'
        TabOrder = 4
        OnClick = btnLocProCancClick
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
      object btnFiltrarProd: TBitBtn
        Left = 382
        Top = 47
        Width = 59
        Height = 25
        Caption = '&Filtrar'
        TabOrder = 1
        OnClick = btnFiltrarProdClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
          FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
          990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
          990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
          FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
          00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
          00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
          00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
          03FF33337FFF77777333333300000333333F3333777773333333}
        NumGlyphs = 2
      end
      object DBMemo1: TDBMemo
        Left = 18
        Top = 227
        Width = 569
        Height = 40
        DataField = 'Descricao'
        DataSource = dsProdutos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBMemo2: TDBMemo
        Left = 18
        Top = 281
        Width = 569
        Height = 45
        DataField = 'Descricao_ing'
        DataSource = dsProdutos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
    object EdtPsUnit: TEdit
      Left = 576
      Top = 464
      Width = 76
      Height = 21
      TabOrder = 24
      Text = '0'
      OnExit = EdtPsUnitExit
      OnKeyPress = EdtPsUnitKeyPress
    end
    object EdtPsTot: TEdit
      Left = 659
      Top = 464
      Width = 89
      Height = 21
      TabOrder = 25
      Text = '0'
      OnExit = EdtPsTotExit
      OnKeyPress = EdtPsTotKeyPress
    end
    object RB_Item_Admissivel_Sim: TRadioButton
      Left = 597
      Top = 272
      Width = 41
      Height = 17
      Caption = 'Sim'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object RB_Item_Admissivel_Nao: TRadioButton
      Left = 641
      Top = 273
      Width = 44
      Height = 17
      Caption = 'Não'
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      TabStop = True
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 10
      Width = 44
      Height = 13
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object l_cliente: TLabel
      Left = 296
      Top = 10
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 10
      Width = 30
      Height = 13
      Caption = 'Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ME_nossaref: TMaskEdit
      Left = 56
      Top = 6
      Width = 65
      Height = 21
      Enabled = False
      MaxLength = 8
      TabOrder = 0
    end
    object edtFatura: TEdit
      Left = 160
      Top = 6
      Width = 129
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 529
    Width = 758
    Height = 30
    Align = alBottom
    Color = 10514464
    TabOrder = 2
    object btnIncluir: TBitBtn
      Left = 17
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Novo'
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
      Left = 105
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Alterar'
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
      Left = 190
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Excluir'
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
    object btnSalvar: TBitBtn
      Left = 384
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 3
      OnClick = btnSalvarClick
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
    object btnCancelar: TBitBtn
      Left = 472
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
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
    object btnSair: TBitBtn
      Left = 664
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object pnllocfabricante: TPanel
    Left = 735
    Top = -93
    Width = 617
    Height = 283
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label8: TLabel
      Left = 16
      Top = 36
      Width = 94
      Height = 16
      Caption = 'Razão Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnlocfabcan: TBitBtn
      Left = 312
      Top = 235
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 3
      OnClick = btnlocfabcanClick
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
    object btnlocfabOK: TBitBtn
      Left = 232
      Top = 235
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = btnlocfabOKClick
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
    object Panel3: TPanel
      Left = 6
      Top = 6
      Width = 605
      Height = 27
      Align = alTop
      Caption = 'Localiza Fabricante'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object edtlocfab: TEdit
      Left = 16
      Top = 56
      Width = 361
      Height = 21
      TabOrder = 0
    end
    object btnfiltrarfab: TBitBtn
      Left = 382
      Top = 54
      Width = 59
      Height = 25
      Caption = '&Filtrar'
      TabOrder = 1
      OnClick = btnfiltrarfabClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
        00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
        00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
        03FF33337FFF77777333333300000333333F3333777773333333}
      NumGlyphs = 2
    end
    object dbglocfab: TDBGrid
      Left = 16
      Top = 85
      Width = 585
      Height = 129
      DataSource = dsqlocfab
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Razão Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEPAIS'
          Title.Caption = 'País'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereço'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Número'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGC/CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Inscrição Estadual'
          Visible = True
        end>
    end
  end
  object qrItens: TQuery
    AfterOpen = qrItensAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Fatura, Sequencial, Pagina, Pr' +
        'oduto, Fabricante, NCM, Unidade, Unidade_Medida_Estat, Destaque_' +
        'NCM, NALADI, Referencia, Numero_serie, Referencia_projeto, PO, S' +
        'eqpo, Quantidade, [Valor_Unitario], [Peso_Unitario], [Valor_Tota' +
        'l], [Peso_Total], Peso_Total_Acertado, Peso_Unitario_Acertado, c' +
        'odigo_produto, sequencial_produto, Item_Admissivel'
      'FROM ItensFaturas'
      'WHERE Sequencial <> '#39'XXX'#39
      
        'AND Empresa = :emp AND Filial = :filial AND Processo = :pro AND ' +
        'Fatura = :fat'
      'ORDER BY Cast(Sequencial as real)')
    Left = 256
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrItensEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrItensFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrItensProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrItensFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object qrItensSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object qrItensPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object qrItensProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 25
    end
    object qrItensFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 6
    end
    object qrItensNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object qrItensUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object qrItensUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object qrItensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object qrItensNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object qrItensReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object qrItensNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object qrItensReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object qrItensPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object qrItensSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object qrItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qrItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object qrItensPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object qrItensValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object qrItensPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object qrItensPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object qrItensPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object qrItenscodigo_produto: TStringField
      FieldName = 'codigo_produto'
      FixedChar = True
      Size = 25
    end
    object qrItenssequencial_produto: TIntegerField
      FieldName = 'sequencial_produto'
    end
    object qrItensItem_Admissivel: TIntegerField
      FieldName = 'Item_Admissivel'
    end
  end
  object dsQItens: TDataSource
    DataSet = qrItens
    Left = 272
    Top = 16
  end
  object qrNCM: TQuery
    DatabaseName = 'DBNTABSISCO'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, UNIDADE_MEDIDA'
      'FROM TAB_NCM'
      'ORDER BY DESCRICAO')
    Left = 504
    object qrNCMCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object qrNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object qrNCMUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Size = 4
    end
  end
  object dsNCM: TDataSource
    DataSet = qrNCM
    Left = 520
    Top = 16
  end
  object qrFabricantes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TAB_PAIS.DESCRICAO AS NOMEPAIS, *'
      
        'FROM [Fabricantes_Produtores] INNER JOIN TAB_PAIS ON [Fabricante' +
        's_Produtores].Pais = TAB_PAIS.CODIGO'
      
        'WHERE [Fabricantes_Produtores].Empresa = :emp AND [Fabricantes_P' +
        'rodutores].Filial = :filial AND ([Fabricantes_Produtores].[Razao' +
        '_Social] Is Not Null)'
      'ORDER BY [Razao_Social]')
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
      end>
    object qrFabricantesNOMEPAIS: TStringField
      FieldName = 'NOMEPAIS'
      FixedChar = True
      Size = 120
    end
    object qrFabricantesEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrFabricantesFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrFabricantesCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 6
    end
    object qrFabricantesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrFabricantesPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object qrFabricantesCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 18
    end
    object qrFabricantesEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object qrFabricantesNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object qrFabricantesComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object qrFabricantesBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object qrFabricantesCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object qrFabricantesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qrFabricantesUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qrFabricantesEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object qrFabricantesInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object qrFabricantesCODIGO_1: TStringField
      FieldName = 'CODIGO_1'
      FixedChar = True
      Size = 3
    end
    object qrFabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
  end
  object dsFabricantes: TDataSource
    DataSet = qrFabricantes
    Left = 424
    Top = 16
  end
  object qrDelTributacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM Tributacao_Item_Fatura'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat AND Sequencial_Item = :seq')
    Left = 680
    Top = 16
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end>
  end
  object qrUniMedComerc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, ABREV'
      'FROM TAB_UNID_MEDIDA'
      'ORDER BY DESCRICAO')
    Left = 560
    object qrUniMedComercCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrUniMedComercDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
    object qrUniMedComercABREV: TStringField
      FieldName = 'ABREV'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.ABREV'
      Size = 4
    end
  end
  object qrUniMedEstat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, ABREV'
      'FROM TAB_UNID_MEDIDA'
      'ORDER BY DESCRICAO')
    Left = 608
    object qrUniMedEstatCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrUniMedEstatDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
    object qrUniMedEstatABREV: TStringField
      FieldName = 'ABREV'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.ABREV'
      Size = 4
    end
  end
  object dsUniMedEstat: TDataSource
    DataSet = qrUniMedEstat
    Left = 624
    Top = 16
  end
  object dsUniMedComerc: TDataSource
    DataSet = qrUniMedComerc
    Left = 576
    Top = 16
  end
  object dsProdutos: TDataSource
    DataSet = qrLocProdutos
    Left = 368
    Top = 16
  end
  object qrSomaItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Fatura, Sum([Valor_Total]) AS ' +
        'SomaValorTotal, Sum([Peso_Total]) AS SomaPesoTotal, Sum(Peso_Tot' +
        'al_Acertado) AS SomaPesoAcertado'
      'FROM ItensFaturas'
      'GROUP BY Empresa, Filial, Processo, Fatura'
      
        'HAVING Empresa = :emp AND Filial = :filial AND Processo = :pro A' +
        'ND Fatura = :fat')
    UpdateMode = upWhereChanged
    Left = 720
    Top = 48
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrSomaItensEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrSomaItensFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrSomaItensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrSomaItensFatura: TStringField
      FieldName = 'Fatura'
      Size = 30
    end
    object qrSomaItensSomaValorTotal: TFloatField
      FieldName = 'SomaValorTotal'
    end
    object qrSomaItensSomaPesoTotal: TFloatField
      FieldName = 'SomaPesoTotal'
    end
    object qrSomaItensSomaPesoAcertado: TFloatField
      FieldName = 'SomaPesoAcertado'
    end
  end
  object qrUltimoItem: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sequencial, Pagina'
      'FROM ItensFaturas'
      'WHERE Sequencial <> '#39'XXX'#39
      
        'AND Empresa = :emp AND Filial = :filial AND Processo = :pro AND ' +
        'Fatura = :fat'
      'ORDER BY Cast(Sequencial as real) DESC')
    Left = 56
    Top = 120
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrUltimoItemSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object qrUltimoItemPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
  end
  object qrUpFatura: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Faturas'
      
        'SET Valor_Total = :valTot, Peso_Total = :psTot, Peso_Total_Acert' +
        'ado = :psTotAcertado'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Codigo = :fat')
    Left = 720
    Top = 80
    ParamData = <
      item
        DataType = ftFloat
        Name = 'valTot'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'psTot'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'psTotAcertado'
        ParamType = ptUnknown
      end
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
  end
  object alAtuValor: TActionList
    Left = 720
    object acAtuFatura: TAction
      Caption = 'Atualiza Fatura'
      OnExecute = acAtuFaturaExecute
    end
    object acRemanejar: TAction
      Caption = 'Remanejamento dos Itens'
      OnExecute = acRemanejarExecute
    end
    object acIncluirProduto: TAction
      Caption = 'acIncluirProduto'
    end
  end
  object qrUpItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas SET Sequencial = :val'
      'WHERE'
      'Empresa = :emp'
      'AND Filial = :fil'
      'AND Processo = :pro'
      'AND Fatura = :fat'
      'AND Sequencial = :seq')
    Left = 720
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end>
  end
  object qrTributacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Fatura, Sequencial_Item, Seque' +
        'ncial'
      'FROM Tributacao_Item_Fatura'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat AND Sequencial_Item = :seq')
    Left = 664
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end>
    object qrTributacaoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Empresa'
      Size = 4
    end
    object qrTributacaoFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Filial'
      Size = 4
    end
    object qrTributacaoProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      Size = 8
    end
    object qrTributacaoFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Fatura'
      Size = 30
    end
    object qrTributacaoSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Sequencial_Item'
      Size = 4
    end
    object qrTributacaoSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Sequencial'
      Size = 4
    end
  end
  object qrSomaAcre: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(VL_ACRESCIMO_MOEDA) AS valTot'
      'FROM Acrescimos_Faturas'
      
        'WHERE Empresa = :emp AND Filial = :fil AND Processo = :pro AND F' +
        'atura = :fat'
      'and cd_met_acres_valor <> :codAcres'
      'GROUP BY Empresa, Filial, Processo, Fatura')
    Left = 528
    Top = 112
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codAcres'
        ParamType = ptUnknown
      end>
    object qrSomaAcrevalTot: TFloatField
      FieldName = 'valTot'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.VL_ACRESCIMO_MOEDA'
    end
  end
  object qrSomaRedu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(VL_DEDUCAO_MNEG) AS valTot'
      'FROM Deducoes_Faturas'
      'GROUP BY Empresa, Filial, Processo, Fatura'
      
        'HAVING Empresa = :emp AND Filial = :fil AND Processo = :pro AND ' +
        'Fatura = :fat')
    Left = 688
    Top = 48
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrSomaReduvalTot: TFloatField
      FieldName = 'valTot'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.VL_DEDUCAO_MNEG'
    end
  end
  object qrSomaFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Sum([Peso_Total_Acertado]) AS ' +
        'SomaPesoAcertado'
      'FROM Faturas'
      'GROUP BY Empresa, Filial, Processo'
      'HAVING Empresa = :emp AND Filial = :filial AND Processo = :pro')
    UpdateMode = upWhereChanged
    Left = 688
    Top = 80
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
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrSomaFaturasEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrSomaFaturasFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrSomaFaturasProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrSomaFaturasSomaPesoAcertado: TFloatField
      FieldName = 'SomaPesoAcertado'
    end
  end
  object qrUpConhec: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Conhecimento_Processo SET Peso_Liquido = :psTotAcertado'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro')
    Left = 688
    Top = 112
    ParamData = <
      item
        DataType = ftFloat
        Name = 'psTotAcertado'
        ParamType = ptUnknown
      end
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
        Name = 'pro'
        ParamType = ptUnknown
      end>
  end
  object qrlocfabricante: TQuery
    AfterOpen = qrlocfabricanteAfterOpen
    AfterScroll = qrlocfabricanteAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TAB_PAIS.DESCRICAO AS NOMEPAIS, *'
      
        'FROM [Fabricantes_Produtores] INNER JOIN TAB_PAIS ON [Fabricante' +
        's_Produtores].Pais = TAB_PAIS.CODIGO'
      
        'WHERE [Fabricantes_Produtores].Empresa = :emp AND [Fabricantes_P' +
        'rodutores].Filial = :filial AND ([Fabricantes_Produtores].[Razao' +
        '_Social] like :qdesc)'
      'ORDER BY [Razao_Social]'
      '')
    Left = 152
    Top = 121
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
        Name = 'qdesc'
        ParamType = ptUnknown
        Value = 'a'
      end>
    object qrlocfabricanteNOMEPAIS: TStringField
      FieldName = 'NOMEPAIS'
      FixedChar = True
      Size = 120
    end
    object qrlocfabricanteEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrlocfabricanteFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrlocfabricanteCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 6
    end
    object qrlocfabricanteRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrlocfabricantePais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object qrlocfabricanteCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 18
    end
    object qrlocfabricanteEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object qrlocfabricanteNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object qrlocfabricanteComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object qrlocfabricanteBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object qrlocfabricanteCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object qrlocfabricanteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qrlocfabricanteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qrlocfabricanteEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object qrlocfabricanteInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object qrlocfabricanteCODIGO_1: TStringField
      FieldName = 'CODIGO_1'
      FixedChar = True
      Size = 3
    end
    object qrlocfabricanteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
  end
  object dsqlocfab: TDataSource
    DataSet = qrlocfabricante
    Left = 192
    Top = 128
  end
  object tbprodlog: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    TableName = 'Produtos_LOG'
    Left = 656
    Top = 136
    object tbprodlogEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbprodlogFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbprodlogCdigo: TStringField
      FieldName = 'Código'
      Size = 25
    end
    object tbprodlogDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
    end
    object tbprodlogUsuario_INCLUSAO: TStringField
      FieldName = 'Usuario_INCLUSAO'
      Size = 10
    end
    object tbprodlogDATA_ULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
    end
    object tbprodlogUsuario_ALTERACAO: TStringField
      FieldName = 'Usuario_ALTERACAO'
      Size = 10
    end
  end
  object qrLocProdutos: TQuery
    AutoCalcFields = False
    AfterOpen = qrLocProdutosAfterOpen
    AfterScroll = qrLocProdutosAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Produtosnew.REG, Produtosnew.CODIGO, Produtosnew.PART_NUM' +
        'BER, Produtosnew.Descricao, Produtosnew.Descricao_ing, Produtosn' +
        'ew.NCM, Produtosnew.Destaque_NCM, Produtosnew.NALADI, Produtosne' +
        'w.Unidade, Produtosnew.Unidade_Medida_Estat, Produtosnew.DATA_IN' +
        'CLUSAO, Produtosnew.Usuario_INCLUSAO, Produtosnew.DATA_ULTIMA_AL' +
        'TERACAO, Produtosnew.Usuario_ALTERACAO, Produtosnew.Revisado, Pr' +
        'odutosnew.Revisao_Data, Produtosnew.Revisao_Usuario, Produtosnew' +
        '.Revisao_OBS, Importadores.[Razao_Social] AS Importador, [Fabric' +
        'antes_Produtores].[Razao_Social] AS Fabricante, Produtosnew.Impo' +
        'rtador AS codimp, Produtosnew.Fabricante AS codfab'
      
        'FROM (Produtosnew LEFT JOIN Importadores ON Produtosnew.Importad' +
        'or = Importadores.Codigo) LEFT JOIN [Fabricantes_Produtores] ON ' +
        'Produtosnew.Fabricante = [Fabricantes_Produtores].Codigo'
      
        'WHERE ( ((Produtosnew.CODIGO Like :cod) OR (Produtosnew.PART_NUM' +
        'BER Like :part)  OR (Produtosnew.Descricao Like :desc) OR (Produ' +
        'tosnew.Descricao_ing Like :descing)) AND ((Produtosnew.Importado' +
        'r LIKE :imp) AND (Produtosnew.Fabricante LIKE :fab)) ) '
      'ORDER BY Produtosnew.CODIGO, Produtosnew.PART_NUMBER;'
      '')
    Left = 328
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'part'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'descIng'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'fab'
        ParamType = ptUnknown
        Value = '*'
      end>
    object qrLocProdutosREG: TAutoIncField
      FieldName = 'REG'
    end
    object qrLocProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 50
    end
    object qrLocProdutosPART_NUMBER: TStringField
      FieldName = 'PART_NUMBER'
      FixedChar = True
      Size = 50
    end
    object qrLocProdutosDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object qrLocProdutosDescricao_ing: TMemoField
      FieldName = 'Descricao_ing'
      BlobType = ftMemo
    end
    object qrLocProdutosNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object qrLocProdutosDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object qrLocProdutosNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object qrLocProdutosUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object qrLocProdutosUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object qrLocProdutosDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
    end
    object qrLocProdutosUsuario_INCLUSAO: TStringField
      FieldName = 'Usuario_INCLUSAO'
      FixedChar = True
      Size = 10
    end
    object qrLocProdutosDATA_ULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
    end
    object qrLocProdutosUsuario_ALTERACAO: TStringField
      FieldName = 'Usuario_ALTERACAO'
      FixedChar = True
      Size = 10
    end
    object qrLocProdutosRevisado: TIntegerField
      FieldName = 'Revisado'
    end
    object qrLocProdutosRevisao_Data: TDateTimeField
      FieldName = 'Revisao_Data'
    end
    object qrLocProdutosRevisao_Usuario: TStringField
      FieldName = 'Revisao_Usuario'
      FixedChar = True
      Size = 10
    end
    object qrLocProdutosRevisao_OBS: TMemoField
      FieldName = 'Revisao_OBS'
      BlobType = ftMemo
    end
    object qrLocProdutosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 60
    end
    object qrLocProdutosFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 60
    end
    object qrLocProdutoscodimp: TStringField
      FieldName = 'codimp'
      FixedChar = True
      Size = 4
    end
    object qrLocProdutoscodfab: TStringField
      FieldName = 'codfab'
      FixedChar = True
      Size = 6
    end
  end
  object tbitens: TTable
    AutoCalcFields = False
    AfterInsert = tbItensAfterEdit
    AfterEdit = tbItensAfterEdit
    AfterPost = tbItensAfterPost
    AfterCancel = qrItensAfterOpen
    BeforeDelete = tbItensBeforeDelete
    AfterScroll = tbItensAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    MasterFields = 'Empresa;Filial;Processo;Fatura;Sequencial'
    MasterSource = dsQItens
    TableName = 'ItensFaturas'
    Left = 312
    Top = 48
    object tbitensEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbitensFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbitensProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object tbitensFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object tbitensSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object tbitensPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object tbitensProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object tbitensDescricao_Produto: TMemoField
      FieldName = 'Descricao_Produto'
      BlobType = ftMemo
    end
    object tbitensFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 6
    end
    object tbitensNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object tbitensUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object tbitensUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object tbitensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object tbitensNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object tbitensReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object tbitensNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object tbitensReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object tbitensPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object tbitensSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object tbitensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object tbitensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object tbitensValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object tbitensPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object tbitensPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object tbitensPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object tbitensPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object tbitensSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object tbitensRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object tbitensRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object tbitensRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object tbitensRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object tbitensRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object tbitensRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object tbitensRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object tbitensRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object tbitensRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object tbitensRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object tbitensRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object tbitensRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object tbitensRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object tbitensRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object tbitensRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object tbitensRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object tbitensRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object tbitensRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object tbitensRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object tbitensRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object tbitensValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object tbitensValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object tbitensVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object tbitensBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object tbitensAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object tbitensCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object tbitensCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object tbitensFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      FixedChar = True
      Size = 100
    end
    object tbitensFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      FixedChar = True
      Size = 18
    end
    object tbitensContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object tbitensLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object tbitensRateio_Taxa_Siscomex: TFloatField
      FieldName = 'Rateio_Taxa_Siscomex'
    end
    object tbitensDescricao_Produto_ing: TMemoField
      FieldName = 'Descricao_Produto_ing'
      BlobType = ftMemo
    end
    object tbitensCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      FixedChar = True
      Size = 50
    end
    object tbitensSequencial_Produto: TIntegerField
      FieldName = 'Sequencial_Produto'
    end
    object tbitensItem_Admissivel: TIntegerField
      FieldName = 'Item_Admissivel'
    end
  end
  object dsitens: TDataSource
    DataSet = tbitens
    Left = 344
    Top = 72
  end
end
