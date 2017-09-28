object f_Traduz: Tf_Traduz
  Left = 33
  Top = 84
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Traduz Tabelas'
  ClientHeight = 415
  ClientWidth = 721
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
    Width = 721
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    object Label2: TLabel
      Left = 368
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Inglês:'
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 51
      Height = 13
      Caption = 'Português:'
    end
    object lblTab: TLabel
      Left = 112
      Top = 8
      Width = 62
      Height = 13
      Caption = '<TABELA>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 103
      Height = 13
      Caption = 'Tradução da Tabela: '
    end
    object dbGrPor: TDBGrid
      Left = 8
      Top = 48
      Width = 345
      Height = 219
      DataSource = dsPor
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CodP'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescP'
          Width = 265
          Visible = True
        end>
    end
    object dbGrIng: TDBGrid
      Left = 368
      Top = 48
      Width = 345
      Height = 219
      TabStop = False
      DataSource = dsIng
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CodI'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescI'
          Width = 265
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 280
      Width = 345
      Height = 65
      Caption = ' Português '
      TabOrder = 2
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Código:'
      end
      object Label5: TLabel
        Left = 80
        Top = 16
        Width = 51
        Height = 13
        Caption = 'Descrição:'
      end
      object dbEdtCodPor: TDBEdit
        Left = 8
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        Color = clInactiveCaptionText
        DataField = 'CodP'
        DataSource = dsPor
        ReadOnly = True
        TabOrder = 0
      end
      object dbEdtDescPor: TDBEdit
        Left = 80
        Top = 32
        Width = 257
        Height = 21
        TabStop = False
        Color = clInactiveCaptionText
        DataField = 'DescP'
        DataSource = dsPor
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 368
      Top = 280
      Width = 345
      Height = 65
      Caption = ' Inglês '
      TabOrder = 3
      object Label6: TLabel
        Left = 8
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Código:'
      end
      object Label7: TLabel
        Left = 80
        Top = 16
        Width = 51
        Height = 13
        Caption = 'Descrição:'
      end
      object dbEdtCodIng: TDBEdit
        Left = 8
        Top = 32
        Width = 65
        Height = 21
        TabStop = False
        Color = clInactiveCaptionText
        DataField = 'CodI'
        DataSource = dsIng
        ReadOnly = True
        TabOrder = 0
      end
      object dbEdtDescIng: TEdit
        Left = 80
        Top = 32
        Width = 257
        Height = 21
        TabOrder = 1
      end
    end
    object btnTraduz: TBitBtn
      Left = 191
      Top = 352
      Width = 75
      Height = 49
      Hint = 'Salva a tradução do item da tabela selecionado'
      Caption = '&Traduzir'
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnTraduzClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnNova: TBitBtn
      Left = 367
      Top = 352
      Width = 75
      Height = 49
      Hint = 'Selecionar Nova Tabela'
      Cancel = True
      Caption = '&Nova Tabela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnNovaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnSair: TBitBtn
      Left = 455
      Top = 352
      Width = 75
      Height = 49
      Hint = 'Sair'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Kind = bkClose
      Layout = blGlyphTop
    end
    object btnLocalizar: TBitBtn
      Left = 279
      Top = 352
      Width = 75
      Height = 49
      Hint = 'Localizar próximo item sem tradução'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Layout = blGlyphTop
    end
  end
  object pnlTab: TPanel
    Left = 128
    Top = 24
    Width = 441
    Height = 297
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    TabOrder = 1
    object rgTab: TRadioGroup
      Left = 16
      Top = 16
      Width = 409
      Height = 233
      Caption = ' TABELAS '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Canais'
        'Tipo de Declaração'
        'Via Transporte'
        'Tipo de Documento Chegada'
        'Tipo de Utilização'
        'Tipos de Cargas'
        'Tipos de Processos'
        'Tipos de Locais de Inventario'
        'Tipos de Situação Fiscal'
        'Tipos de Status do Processos'
        'Eventos'
        'Observações de Eventos'
        'Sub-Tipo de Documentos'
        'Unidade de Medida'
        'Tipo de Documento de Carga'
        'Tipo de Documentos'
        'Tipos de Créditos'
        'Tipos de Movimentação da Repetro'
        'Tipos de Numerários'
        'Tipos de Status do Documento')
      TabOrder = 0
    end
    object btnOK: TBitBtn
      Left = 183
      Top = 256
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 1
      OnClick = btnOKClick
      Kind = bkOK
    end
  end
  object Q_Traduz: TQuery
    AfterScroll = Q_TraduzAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Left = 224
    object Q_TraduzCodP: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CodP'
    end
    object Q_TraduzDescP: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'DescP'
    end
    object Q_TraduzCodI: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CodI'
    end
    object Q_TraduzDescI: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'DescI'
    end
    object Q_TraduzAux: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo'
    end
    object Q_TraduzAux2: TStringField
      FieldName = 'Descricao'
    end
    object Q_TraduzBol: TIntegerField
      FieldName = 'Bol'
    end
    object Q_TraduzBol2: TIntegerField
      FieldName = 'Bol2'
    end
  end
  object dsPor: TDataSource
    DataSet = Q_Traduz
    Left = 320
    Top = 16
  end
  object dsIng: TDataSource
    DataSet = Q_Traduz
    Left = 680
    Top = 16
  end
  object Q_Exec: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 256
    object StringField1: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CodP'
    end
    object StringField2: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'DescP'
    end
    object StringField3: TStringField
      DisplayLabel = 'Código'
      FieldName = 'CodI'
    end
    object StringField4: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'DescI'
    end
  end
end
