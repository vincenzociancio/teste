object f_notasdebito: Tf_notasdebito
  Left = 218
  Top = 253
  ActiveControl = edFiltroProcesso
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Notas de D�bito'
  ClientHeight = 361
  ClientWidth = 827
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
    Height = 360
    TabOrder = 0
    object Label1: TLabel
      Left = 74
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
      Left = 139
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
      Left = 197
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
    object Label9: TLabel
      Left = 4
      Top = 262
      Width = 67
      Height = 13
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 232
      Top = 262
      Width = 101
      Height = 13
      Caption = 'Valor por Extenso'
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
      Width = 46
      Height = 13
      Caption = 'N� Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 728
      Top = 218
      Width = 64
      Height = 13
      Caption = 'Requisi��o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 4
      Top = 307
      Width = 58
      Height = 13
      Caption = 'Descri��o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 572
      Top = 306
      Width = 89
      Height = 13
      Caption = 'C�digo Planilha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 84
      Top = 262
      Width = 47
      Height = 13
      Caption = 'Emiss�o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 132
      Top = 7
      Width = 89
      Height = 13
      Caption = 'Busca por Nota'
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
          FieldName = 'Nota'
          Title.Caption = 'N� Nota'
          Width = 45
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
          Width = 284
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Requisicao'
          Title.Caption = 'Requisi��o'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Vencimento'
          Title.Alignment = taCenter
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Emissao'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss�o'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Extenso'
          Title.Caption = 'Valor por Extenso'
          Width = 378
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri��o'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 732
      Top = 51
      Width = 85
      Height = 163
      Color = 10514464
      TabOrder = 3
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
      TabOrder = 0
      OnChange = edFiltroProcessoChange
    end
    object b_impnota: TBitBtn
      Left = 680
      Top = 317
      Width = 136
      Height = 25
      Caption = 'Imprimir Nota'
      TabOrder = 14
      OnClick = b_impnotaClick
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
    object edNNota: TDBEdit
      Left = 4
      Top = 233
      Width = 67
      Height = 21
      DataField = 'Nota'
      DataSource = DataSource1
      TabOrder = 4
    end
    object edProcesso: TDBEdit
      Left = 74
      Top = 233
      Width = 63
      Height = 21
      DataField = 'Processo'
      DataSource = DataSource1
      TabOrder = 5
      OnChange = edProcessoChange
    end
    object edCliente: TDBEdit
      Left = 139
      Top = 233
      Width = 582
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Cliente'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 6
    end
    object edValor: TDBEdit
      Left = 165
      Top = 276
      Width = 62
      Height = 21
      DataField = 'Valor'
      DataSource = DataSource1
      TabOrder = 10
      OnKeyPress = edValorKeyPress
    end
    object edVencimento: TDBEdit
      Left = 4
      Top = 276
      Width = 77
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Vencimento'
      DataSource = DataSource1
      TabOrder = 8
    end
    object edValorExtenso: TDBEdit
      Left = 232
      Top = 276
      Width = 585
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_Extenso'
      DataSource = DataSource1
      TabOrder = 11
    end
    object edRequisicao: TDBEdit
      Left = 726
      Top = 233
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Requisicao'
      DataSource = DataSource1
      TabOrder = 7
    end
    object edDescricao: TDBEdit
      Left = 4
      Top = 321
      Width = 565
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Descricao'
      DataSource = DataSource1
      TabOrder = 12
    end
    object edCodigo_Planilha: TDBEdit
      Left = 572
      Top = 321
      Width = 101
      Height = 21
      DataField = 'Codigo_Planilha'
      DataSource = DataSource1
      TabOrder = 13
    end
    object edEmissao: TDBEdit
      Left = 84
      Top = 276
      Width = 77
      Height = 21
      DataField = 'Emissao'
      DataSource = DataSource1
      MaxLength = 10
      TabOrder = 9
    end
    object edFiltroNota: TEdit
      Left = 132
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
      OnChange = edFiltroNotaChange
    end
  end
  object t_faturamento_notas_debito: TTable
    AutoCalcFields = False
    AfterScroll = t_faturamento_notas_debitoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Data'
    TableName = 'Faturamento_Notas_Debito'
    Left = 162
    Top = 99
    object t_faturamento_notas_debitoNota: TStringField
      FieldName = 'Nota'
      Size = 8
    end
    object t_faturamento_notas_debitoCodigo_Planilha: TStringField
      FieldName = 'Codigo_Planilha'
      Size = 8
    end
    object t_faturamento_notas_debitoProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object t_faturamento_notas_debitoCliente: TStringField
      FieldName = 'Cliente'
      Size = 250
    end
    object t_faturamento_notas_debitoData: TDateTimeField
      FieldName = 'Data'
    end
    object t_faturamento_notas_debitoRequisicao: TStringField
      FieldName = 'Requisicao'
      Size = 15
    end
    object t_faturamento_notas_debitoValor: TFloatField
      FieldName = 'Valor'
    end
    object t_faturamento_notas_debitoValor_Extenso: TStringField
      FieldName = 'Valor_Extenso'
      Size = 250
    end
    object t_faturamento_notas_debitoVencimento: TStringField
      FieldName = 'Vencimento'
      Size = 50
    end
    object t_faturamento_notas_debitoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object t_faturamento_notas_debitoEmissao: TDateTimeField
      FieldName = 'Emissao'
    end
  end
  object DataSource1: TDataSource
    DataSet = t_faturamento_notas_debito
    Left = 60
    Top = 100
  end
end