object f_declorigem: Tf_declorigem
  Left = 272
  Top = 374
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Declarações de Origem'
  ClientHeight = 316
  ClientWidth = 826
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 2
    Top = 1
    Width = 823
    Height = 312
    TabOrder = 0
    object Label1: TLabel
      Left = 101
      Top = 218
      Width = 53
      Height = 13
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 168
      Top = 218
      Width = 40
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 4
      Top = 7
      Width = 114
      Height = 13
      Caption = 'Busca por Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 212
      Top = 262
      Width = 30
      Height = 13
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 4
      Top = 218
      Width = 84
      Height = 13
      Caption = 'Nº Declaração'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 92
      Top = 262
      Width = 47
      Height = 13
      Caption = 'Emissão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 4
      Top = 262
      Width = 25
      Height = 13
      Caption = 'Nf-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 50
      Width = 725
      Height = 165
      DataSource = DataSource1
      FixedColor = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Declaracao'
          Title.Caption = 'Nº Declaração'
          Width = 79
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Processo'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cliente'
          Width = 316
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nfe'
          Title.Caption = 'Nf-e'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Emissao'
          Title.Caption = 'Emissão'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taRightJustify
          Width = 79
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 732
      Top = 51
      Width = 85
      Height = 163
      Color = 10514464
      TabOrder = 0
      object b_incluir: TBitBtn
        Left = 4
        Top = 5
        Width = 79
        Height = 23
        Caption = 'Incluir'
        TabOrder = 0
        OnClick = b_incluirClick
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
      object b_alterar: TBitBtn
        Left = 4
        Top = 29
        Width = 79
        Height = 23
        Caption = 'Alterar'
        TabOrder = 1
        OnClick = b_alterarClick
        Kind = bkRetry
      end
      object b_salvar: TBitBtn
        Left = 4
        Top = 77
        Width = 79
        Height = 23
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 2
        OnClick = b_salvarClick
        Kind = bkAll
      end
      object b_excluir: TBitBtn
        Left = 4
        Top = 53
        Width = 79
        Height = 23
        Caption = 'Excluir '
        TabOrder = 3
        OnClick = b_excluirClick
        Kind = bkCancel
      end
      object b_cancelar: TBitBtn
        Left = 4
        Top = 101
        Width = 79
        Height = 23
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 4
        OnClick = b_cancelarClick
        Kind = bkCancel
      end
    end
    object edFiltroProcesso: TEdit
      Left = 4
      Top = 23
      Width = 117
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      OnChange = edFiltroProcessoChange
    end
    object b_impdecl: TBitBtn
      Left = 679
      Top = 276
      Width = 136
      Height = 25
      Caption = 'Imprimir Declaração'
      TabOrder = 9
      OnClick = b_impdeclClick
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
    object edNDeclaracao: TDBEdit
      Left = 4
      Top = 233
      Width = 93
      Height = 21
      DataField = 'Declaracao'
      DataSource = DataSource1
      TabOrder = 3
    end
    object edProcesso: TDBEdit
      Left = 101
      Top = 233
      Width = 63
      Height = 21
      DataField = 'Processo'
      DataSource = DataSource1
      TabOrder = 4
      OnChange = edProcessoChange
    end
    object edCliente: TDBEdit
      Left = 168
      Top = 233
      Width = 561
      Height = 21
      DataField = 'Cliente'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
    object edValor: TDBEdit
      Left = 180
      Top = 276
      Width = 62
      Height = 21
      DataField = 'Valor'
      DataSource = DataSource1
      TabOrder = 8
    end
    object edEmissao: TDBEdit
      Left = 92
      Top = 276
      Width = 85
      Height = 21
      DataField = 'Emissao'
      DataSource = DataSource1
      TabOrder = 7
    end
    object edNfe: TDBEdit
      Left = 4
      Top = 276
      Width = 85
      Height = 21
      DataField = 'Nfe'
      DataSource = DataSource1
      TabOrder = 6
      OnChange = edNfeChange
    end
  end
  object DataSource1: TDataSource
    DataSet = t_faturamento_declaracao_origem
    Left = 60
    Top = 108
  end
  object t_faturamento_declaracao_origem: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Declaracao'
    TableName = 'Faturamento_Declaracao_Origem'
    Left = 186
    Top = 107
    object t_faturamento_declaracao_origemDeclaracao: TStringField
      FieldName = 'Declaracao'
      Size = 8
    end
    object t_faturamento_declaracao_origemProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object t_faturamento_declaracao_origemCliente: TStringField
      FieldName = 'Cliente'
      Size = 250
    end
    object t_faturamento_declaracao_origemData: TDateTimeField
      FieldName = 'Data'
    end
    object t_faturamento_declaracao_origemNfe: TStringField
      FieldName = 'Nfe'
      Size = 15
    end
    object t_faturamento_declaracao_origemEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
    object t_faturamento_declaracao_origemValor: TFloatField
      FieldName = 'Valor'
    end
  end
end
