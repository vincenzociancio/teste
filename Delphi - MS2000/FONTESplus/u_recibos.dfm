object f_recibos: Tf_recibos
  Left = 304
  Top = 336
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Recibos'
  ClientHeight = 314
  ClientWidth = 828
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 2
    Top = 1
    Width = 823
    Height = 308
    TabOrder = 0
    object Label1: TLabel
      Left = 2
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
      Left = 67
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
    object Label7: TLabel
      Left = 381
      Top = 218
      Width = 38
      Height = 13
      Caption = 'D�bito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 262
      Width = 53
      Height = 13
      Caption = 'Vlr. Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 81
      Top = 262
      Width = 39
      Height = 13
      Caption = '0,11 %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 127
      Top = 262
      Width = 133
      Height = 13
      Caption = 'Percentual por Extenso'
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
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Recibo'
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Processo'
          Width = 63
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
          FieldName = 'Debito'
          Title.Caption = 'D�bito'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Vlr. Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual_11'
          Title.Alignment = taRightJustify
          Title.Caption = '0,11 %'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual_Extenso'
          Title.Caption = 'Percentual Extenso'
          Width = 394
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
    object dblcdeb: TDBLookupComboBox
      Left = 381
      Top = 233
      Width = 349
      Height = 21
      DataField = 'Debito'
      DataSource = DataSource1
      Enabled = False
      KeyField = 'Descricao'
      ListField = 'Descricao'
      ListSource = ds_tiponum
      TabOrder = 6
    end
    object b_imprec: TBitBtn
      Left = 679
      Top = 277
      Width = 136
      Height = 25
      Caption = 'Imprimir Recibo'
      TabOrder = 2
      OnClick = b_imprecClick
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
    object edProcesso: TDBEdit
      Left = 2
      Top = 233
      Width = 63
      Height = 21
      DataField = 'Processo'
      DataSource = DataSource1
      TabOrder = 4
      OnChange = edProcessoExit
      OnKeyPress = edProcessoKeyPress
    end
    object edCliente: TDBEdit
      Left = 67
      Top = 233
      Width = 312
      Height = 21
      DataField = 'Cliente'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
    object edVlrTotal: TDBEdit
      Left = 4
      Top = 276
      Width = 62
      Height = 21
      DataField = 'Valor_Total'
      DataSource = DataSource1
      TabOrder = 7
      OnExit = edVlrTotalExit
      OnKeyPress = edVlrTotalKeyPress
    end
    object edPercentual: TDBEdit
      Left = 70
      Top = 276
      Width = 51
      Height = 21
      DataField = 'Percentual_11'
      DataSource = DataSource1
      TabOrder = 8
      OnKeyPress = edPercentualKeyPress
    end
    object edPercentualExtenso: TDBEdit
      Left = 127
      Top = 276
      Width = 528
      Height = 21
      DataField = 'Percentual_Extenso'
      DataSource = DataSource1
      TabOrder = 9
    end
  end
  object ds_tiponum: TDataSource
    DataSet = q_tiponum
    Left = 212
    Top = 100
  end
  object q_tiponum: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Tipos_Numerario.Plano_contas, *'
      'FROM Tipos_Numerario'
      
        'WHERE (((Tipos_Numerario.Plano_contas)="NUM") or ((Tipos_Numerar' +
        'io.Plano_contas)="CPMF"))'
      'ORDER BY Tipos_Numerario.Descricao;')
    Left = 273
    Top = 100
    object q_tiponumPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
    object q_tiponumEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_tiponumFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_tiponumCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_tiponumDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object q_tiponumRateio: TStringField
      FieldName = 'Rateio'
      Size = 1
    end
    object q_tiponumContabilizaCC: TSmallintField
      FieldName = 'ContabilizaCC'
    end
  end
  object t_faturamento_recibos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Pk'
    TableName = 'Faturamento_Recibos'
    Left = 130
    Top = 99
    object t_faturamento_recibosPk: TIntegerField
      FieldName = 'Pk'
    end
    object t_faturamento_recibosRecibo: TStringField
      FieldName = 'Recibo'
      Size = 8
    end
    object t_faturamento_recibosData: TDateTimeField
      FieldName = 'Data'
    end
    object t_faturamento_recibosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object t_faturamento_recibosCliente: TStringField
      FieldName = 'Cliente'
      Size = 250
    end
    object t_faturamento_recibosDebito: TStringField
      FieldName = 'Debito'
      Size = 50
    end
    object t_faturamento_recibosValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object t_faturamento_recibosPercentual_11: TFloatField
      FieldName = 'Percentual_11'
    end
    object t_faturamento_recibosPercentual_Extenso: TStringField
      FieldName = 'Percentual_Extenso'
      Size = 250
    end
  end
  object DataSource1: TDataSource
    DataSet = t_faturamento_recibos
    Left = 44
    Top = 100
  end
end
