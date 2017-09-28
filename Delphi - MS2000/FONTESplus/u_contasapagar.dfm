object f_contasapagar: Tf_contasapagar
  Left = 239
  Top = 176
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 464
  ClientWidth = 868
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 465
    BorderStyle = bsSingle
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 16
      Top = 232
      Width = 838
      Height = 1
    end
    object btnExcluiCheque: TBitBtn
      Left = 691
      Top = 342
      Width = 105
      Height = 25
      Hint = 'Excluir Cheque'
      Caption = 'Excluir Cheque'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = btnExcluiChequeClick
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
    object btnExcluir: TBitBtn
      Left = 233
      Top = 194
      Width = 97
      Height = 25
      Hint = 'Excluir dados da Conta'
      Caption = '&Excluir Conta'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
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
    object btnInsereConta: TBitBtn
      Left = 9
      Top = 194
      Width = 97
      Height = 25
      Hint = 'Inserir dados da Conta'
      Caption = '&Inserir Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnInsereContaClick
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
    object btnAlteraConta: TBitBtn
      Left = 121
      Top = 194
      Width = 97
      Height = 25
      Hint = 'Alterar dados da Conta'
      Caption = '&Alterar Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlteraContaClick
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
    object DBGrid1: TDBGrid
      Left = 8
      Top = 40
      Width = 849
      Height = 136
      DataSource = dsContas
      FixedColor = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'Codigo'
          Title.Caption = 'Código'
          Width = 39
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clYellow
          Expanded = False
          FieldName = 'Vencimento'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clYellow
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fk_Fornecedor'
          Title.Caption = 'Fornecedor'
          Width = 191
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tp_Numerario'
          Title.Caption = 'Numerário'
          Width = 155
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição'
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Nf'
          Title.Alignment = taCenter
          Width = 56
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Status'
          Title.Alignment = taCenter
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Vencimento_Previsao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Venc. Previsto'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clWhite
          Expanded = False
          FieldName = 'Valor_Previsao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Previsto'
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Pagamento'
          Title.Alignment = taCenter
          Title.Caption = 'Data Pgto'
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Banco'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cheque'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Solicitante'
          Title.Alignment = taCenter
          Width = 96
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 280
      Width = 665
      Height = 136
      DataSource = dsContasPagamentos
      FixedColor = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Pagamento'
          Title.Alignment = taCenter
          Title.Caption = 'Data Pgto.'
          Width = 77
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Valor_Total'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Width = 76
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Emissao'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Qtd_Contas'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Contas'
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Status'
          Title.Alignment = taCenter
          Width = 96
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Banco'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cheque'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Visible = True
        end>
    end
    object btnEfetuaPagamento: TBitBtn
      Left = 9
      Top = 246
      Width = 131
      Height = 25
      Caption = 'Efetuar Pagamento'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btnEfetuaPagamentoClick
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
    object btnDescontabilizar: TBitBtn
      Left = 691
      Top = 311
      Width = 105
      Height = 25
      Caption = 'Descontabilizar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnDescontabilizarClick
      Kind = bkRetry
    end
    object btnFechar: TBitBtn
      Left = 782
      Top = 429
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object btnContabilizar: TBitBtn
      Left = 691
      Top = 280
      Width = 105
      Height = 25
      Caption = 'Contabilizar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnContabilizarClick
      Kind = bkRetry
    end
    object b_imprime: TBitBtn
      Left = 10
      Top = 429
      Width = 72
      Height = 25
      Caption = 'Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = b_imprimeClick
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
    object gbStatus: TGroupBox
      Left = 344
      Top = 4
      Width = 337
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      object rbVencer: TRadioButton
        Left = 247
        Top = 10
        Width = 76
        Height = 17
        Caption = 'A Vencer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rbTodosClick
      end
      object rbPago: TRadioButton
        Left = 94
        Top = 10
        Width = 49
        Height = 17
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rbTodosClick
      end
      object rbVencido: TRadioButton
        Left = 165
        Top = 10
        Width = 65
        Height = 17
        Caption = 'Vencido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = rbTodosClick
      end
      object rbTodos: TRadioButton
        Left = 21
        Top = 10
        Width = 65
        Height = 17
        Caption = 'Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TabStop = True
        OnClick = rbTodosClick
      end
    end
    object b_filtrar: TBitBtn
      Left = 250
      Top = 9
      Width = 90
      Height = 25
      Hint = 'Filtrar Contas'
      Caption = '&Filtrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btnFiltrarClick
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
    object dblcbEmpresa: TDBLookupComboBox
      Left = 9
      Top = 12
      Width = 232
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsEmpresas
      TabOrder = 16
      OnClick = dblcbEmpresaClick
    end
    object pnlInclusaoAlteracao: TPanel
      Left = 197
      Top = 51
      Width = 457
      Height = 334
      BevelWidth = 4
      Color = clSilver
      TabOrder = 9
      Visible = False
      object Label2: TLabel
        Left = 17
        Top = 93
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 17
        Top = 173
        Width = 94
        Height = 13
        Caption = 'Descrição da Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object l_titulo: TLabel
        Left = 152
        Top = 14
        Width = 156
        Height = 20
        Caption = 'Inclusão de Contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 17
        Top = 222
        Width = 11
        Height = 13
        Caption = 'Nf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 99
        Top = 222
        Width = 56
        Height = 13
        Caption = 'Vlr. Previsto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 180
        Top = 222
        Width = 69
        Height = 13
        Caption = 'Venc. Previsto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 18
        Top = 270
        Width = 49
        Height = 13
        Caption = 'Solicitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 17
        Top = 133
        Width = 48
        Height = 13
        Caption = 'Numerário'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 17
        Top = 53
        Width = 41
        Height = 13
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dblcbEmpresa1: TDBLookupComboBox
        Left = 17
        Top = 69
        Width = 424
        Height = 21
        DataField = 'Codigo_Empresa'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Razao_Social'
        ListSource = dsEmpresas
        ParentFont = False
        TabOrder = 0
      end
      object dblcbNumerario: TDBLookupComboBox
        Left = 17
        Top = 149
        Width = 424
        Height = 21
        DataField = 'Tp_Numerario'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = ds_tiposnumerarios
        ParentFont = False
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 262
        Top = 215
        Width = 182
        Height = 49
        BevelOuter = bvNone
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        object Label3: TLabel
          Left = 3
          Top = 9
          Width = 24
          Height = 13
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 85
          Top = 9
          Width = 56
          Height = 13
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbedValor: TDBEdit
          Left = 2
          Top = 25
          Width = 78
          Height = 21
          DataField = 'Valor'
          DataSource = dsContas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object dbedVencimento: TDBEdit
          Left = 84
          Top = 25
          Width = 96
          Height = 21
          DataField = 'Vencimento'
          DataSource = dsContas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
        end
      end
      object dbedDescricao: TDBEdit
        Left = 17
        Top = 189
        Width = 424
        Height = 21
        DataField = 'Descricao'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dblcbFornecedor1: TDBLookupComboBox
        Left = 17
        Top = 109
        Width = 424
        Height = 21
        DataField = 'Fk_Fornecedor'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Razao_Social'
        ListSource = dsFornecedor
        ParentFont = False
        TabOrder = 1
      end
      object dbedNf: TDBEdit
        Left = 17
        Top = 240
        Width = 80
        Height = 21
        DataField = 'Nf'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dbedVlrPrevisto: TDBEdit
        Left = 99
        Top = 240
        Width = 79
        Height = 21
        DataField = 'Valor_Previsao'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dbedPrevVenc: TDBEdit
        Left = 180
        Top = 240
        Width = 80
        Height = 21
        DataField = 'Vencimento_Previsao'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
      end
      object b_gravainclui: TBitBtn
        Left = 287
        Top = 284
        Width = 74
        Height = 25
        Caption = 'Gravar'
        TabOrder = 9
        OnClick = b_gravaincluiClick
        Kind = bkOK
      end
      object b_fechainclui: TBitBtn
        Left = 367
        Top = 284
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 10
        OnClick = b_fechaincluiClick
        Kind = bkCancel
      end
      object dblcbSolicitante: TDBLookupComboBox
        Left = 17
        Top = 288
        Width = 160
        Height = 21
        DataField = 'Solicitante'
        DataSource = dsContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Usuario'
        ListField = 'Nome_Completo'
        ListSource = dsSolicitante
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 8
      end
      object pnlPeriodicidade: TPanel
        Left = 75
        Top = 41
        Width = 309
        Height = 112
        BevelInner = bvRaised
        BevelOuter = bvNone
        BevelWidth = 4
        Color = clMaroon
        TabOrder = 11
        Visible = False
        object Label4: TLabel
          Left = 13
          Top = 43
          Width = 58
          Height = 13
          Caption = 'Parcela(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 121
          Top = 43
          Width = 78
          Height = 13
          Caption = 'Periodicidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel16: TPanel
          Left = 4
          Top = 75
          Width = 301
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          Color = clMaroon
          TabOrder = 3
          object btnGerar: TBitBtn
            Left = 137
            Top = 4
            Width = 75
            Height = 25
            Caption = '&Gerar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btnGerarClick
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
          object btnCancelaPeriodicidade: TBitBtn
            Left = 218
            Top = 4
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 1
            OnClick = btnCancelaPeriodicidadeClick
            Kind = bkCancel
          end
        end
        object edParcela: TMaskEdit
          Left = 79
          Top = 40
          Width = 33
          Height = 21
          TabOrder = 1
        end
        object cbPeriodicidade: TComboBox
          Left = 203
          Top = 40
          Width = 93
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            'Quinzenal'
            'Mensal'
            'Anual')
        end
        object Panel14: TPanel
          Left = 4
          Top = 4
          Width = 301
          Height = 26
          Align = alTop
          Caption = 'Periodicidade'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pnlContas: TPanel
      Left = 60
      Top = 88
      Width = 745
      Height = 270
      BevelWidth = 4
      Color = clSilver
      TabOrder = 12
      Visible = False
      object Label8: TLabel
        Left = 345
        Top = 13
        Width = 58
        Height = 20
        Caption = 'Contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotal: TLabel
        Left = 693
        Top = 211
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid4: TDBGrid
        Left = 19
        Top = 42
        Width = 706
        Height = 159
        DataSource = dsContas_a_pagar3
        FixedColor = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Vencimento'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'Código'
            Width = 46
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Pagamento'
            Title.Caption = 'Data Pagamento'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fk_Fornecedor'
            Title.Caption = 'Fornecedor'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tp_Numerario'
            Title.Caption = 'Numerário'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descrição'
            Width = 152
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Status'
            Title.Alignment = taCenter
            Width = 84
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Nf'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Banco'
            Title.Alignment = taCenter
            Width = 155
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cheque'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object btnSairContas: TBitBtn
        Left = 650
        Top = 233
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btnSairContasClick
        Kind = bkCancel
      end
      object btnExcluirConta2: TBitBtn
        Left = 129
        Top = 233
        Width = 97
        Height = 25
        Hint = 'Excluir dados da Conta'
        Caption = '&Excluir Conta'
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
      object btnInsereContaNoCheque: TBitBtn
        Left = 19
        Top = 233
        Width = 97
        Height = 25
        Hint = 'Inserir dados da Conta'
        Caption = '&Inserir Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnInsereContaNoChequeClick
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
    end
    object pnlEfetuarPagamentos: TPanel
      Left = 60
      Top = 126
      Width = 745
      Height = 259
      BevelWidth = 4
      Color = clSilver
      TabOrder = 10
      Visible = False
      object Label21: TLabel
        Left = 321
        Top = 14
        Width = 101
        Height = 20
        Caption = 'Pagamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid3: TDBGrid
        Left = 19
        Top = 50
        Width = 706
        Height = 159
        DataSource = dsContas_a_pagar2
        FixedColor = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        OnDrawColumnCell = DBGrid3DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Efetuar_Pagamento'
            Title.Caption = ' '
            Width = 16
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Vencimento'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcela'
            Title.Alignment = taCenter
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fk_Fornecedor'
            Title.Caption = 'Fornecedor'
            Width = 159
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descrição'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Status'
            Title.Alignment = taCenter
            Width = 84
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Nf'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end>
      end
      object btnPagar: TBitBtn
        Left = 20
        Top = 222
        Width = 86
        Height = 25
        Caption = 'Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnPagarClick
        Kind = bkOK
      end
      object btnSairPnlPagamento: TBitBtn
        Left = 650
        Top = 220
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btnSairPnlPagamentoClick
        Kind = bkCancel
      end
      object pnlPagamento: TPanel
        Left = 170
        Top = 57
        Width = 405
        Height = 129
        BevelInner = bvRaised
        BevelOuter = bvNone
        BevelWidth = 4
        Color = clTeal
        TabOrder = 3
        Visible = False
        object Label22: TLabel
          Left = 13
          Top = 41
          Width = 86
          Height = 13
          Caption = 'Conta Corrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 203
          Top = 41
          Width = 109
          Height = 13
          Caption = 'Cheque / Tipo Pag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 321
          Top = 41
          Width = 68
          Height = 13
          Caption = 'Dt. Emissão'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel13: TPanel
          Left = 4
          Top = 4
          Width = 397
          Height = 26
          Align = alTop
          Caption = 'Pagamento'
          Color = 5460736
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel15: TPanel
          Left = 4
          Top = 92
          Width = 397
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          Color = clTeal
          TabOrder = 4
          object BitBtn5: TBitBtn
            Left = 204
            Top = 3
            Width = 70
            Height = 25
            Caption = '&Cancelar'
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            OnClick = BitBtn5Click
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
          object btnOkPagamento: TBitBtn
            Left = 128
            Top = 3
            Width = 70
            Height = 25
            Caption = '&OK'
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            OnClick = btnOkPagamentoClick
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
        object dblcContaCorrente: TDBLookupComboBox
          Left = 11
          Top = 56
          Width = 185
          Height = 21
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = dsCC
          TabOrder = 1
        end
        object edChequeTpPagto: TMaskEdit
          Left = 202
          Top = 56
          Width = 113
          Height = 21
          MaxLength = 15
          TabOrder = 2
        end
        object edDtEmissao: TMaskEdit
          Left = 321
          Top = 56
          Width = 71
          Height = 21
          MaxLength = 10
          TabOrder = 3
        end
      end
    end
  end
  object t_fornecedor: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Razao_Social'
    TableName = 'fornecedores'
    Left = 752
    Top = 64
    object t_fornecedorCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_fornecedorRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object t_fornecedorEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
  end
  object dsFornecedor: TDataSource
    DataSet = t_fornecedor
    Left = 752
    Top = 128
  end
  object dsContas: TDataSource
    DataSet = t_contas_a_pagar
    Left = 48
    Top = 128
  end
  object t_contas_a_pagar: TTable
    CachedUpdates = True
    AfterScroll = t_contas_a_pagarAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'contas_a_pagar'
    Left = 48
    Top = 64
    object t_contas_a_pagarCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_contas_a_pagarFk_Fornecedor: TStringField
      FieldName = 'Fk_Fornecedor'
      OnGetText = t_contas_a_pagarFk_FornecedorGetText
      Size = 4
    end
    object t_contas_a_pagarDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object t_contas_a_pagarValor: TFloatField
      FieldName = 'Valor'
      OnGetText = t_contas_a_pagarValorGetText
    end
    object t_contas_a_pagarNf: TStringField
      FieldName = 'Nf'
      Size = 15
    end
    object t_contas_a_pagarValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
      OnGetText = t_contas_a_pagarValor_PrevisaoGetText
    end
    object t_contas_a_pagarVencimento_Previsao: TDateTimeField
      FieldName = 'Vencimento_Previsao'
    end
    object t_contas_a_pagarData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
    end
    object t_contas_a_pagarSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 10
    end
    object t_contas_a_pagarParcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
    object t_contas_a_pagarUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object t_contas_a_pagarBanco: TStringField
      FieldName = 'Banco'
      OnGetText = t_contas_a_pagarBancoGetText
      Size = 15
    end
    object t_contas_a_pagarCheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object t_contas_a_pagarFk_Contas_a_Pagar_Pagamentos: TIntegerField
      FieldName = 'Fk_Contas_a_Pagar_Pagamentos'
    end
    object t_contas_a_pagarVencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object t_contas_a_pagarTp_Numerario: TStringField
      FieldName = 'Tp_Numerario'
      OnGetText = t_contas_a_pagarTp_NumerarioGetText
      Size = 4
    end
    object t_contas_a_pagarStatus: TStringField
      FieldName = 'Status'
    end
    object t_contas_a_pagarCodigo_Empresa: TStringField
      FieldName = 'Codigo_Empresa'
      Size = 4
    end
  end
  object t_fornecedorescontas: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'fornecedores'
    Left = 152
    Top = 64
    object t_fornecedorescontasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_fornecedorescontasRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object t_fornecedorescontasEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
  end
  object dsSolicitante: TDataSource
    DataSet = q_solicitante
    Left = 824
    Top = 128
  end
  object t_contas_a_pagar2: TTable
    CachedUpdates = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'contas_a_pagar'
    Left = 155
    Top = 240
    object DateTimeField1: TDateTimeField
      FieldName = 'Vencimento'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Codigo'
    end
    object StringField2: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object FloatField1: TFloatField
      FieldName = 'Valor'
      OnGetText = FloatField1GetText
    end
    object StringField3: TStringField
      FieldName = 'Nf'
      Size = 15
    end
    object FloatField2: TFloatField
      FieldName = 'Valor_Previsao'
      OnGetText = FloatField2GetText
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Vencimento_Previsao'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'Data_Pagamento'
    end
    object StringField4: TStringField
      FieldName = 'Solicitante'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'Status'
    end
    object t_contas_a_pagar2Efetuar_Pagamento: TIntegerField
      FieldName = 'Efetuar_Pagamento'
    end
    object t_contas_a_pagar2Usuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object t_contas_a_pagar2Banco: TStringField
      FieldName = 'Banco'
      OnGetText = t_contas_a_pagar2BancoGetText
      Size = 15
    end
    object t_contas_a_pagar2Cheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object t_contas_a_pagar2Fk_Contas_a_Pagar_Pagamentos: TIntegerField
      FieldName = 'Fk_Contas_a_Pagar_Pagamentos'
    end
    object t_contas_a_pagar2Fk_Fornecedor: TStringField
      FieldName = 'Fk_Fornecedor'
      OnGetText = t_contas_a_pagar2Fk_FornecedorGetText
      Size = 4
    end
    object t_contas_a_pagar2Tp_Numerario: TStringField
      FieldName = 'Tp_Numerario'
      Size = 4
    end
    object t_contas_a_pagar2Parcela: TStringField
      FieldName = 'Parcela'
    end
    object t_contas_a_pagar2Codigo_Empresa: TStringField
      FieldName = 'Codigo_Empresa'
      Size = 4
    end
  end
  object dsContas_a_pagar2: TDataSource
    DataSet = t_contas_a_pagar2
    Left = 155
    Top = 296
  end
  object dsCC: TDataSource
    DataSet = qrCC
    Left = 712
    Top = 288
  end
  object qrCC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT EMPRESA, Codigo, Descricao, Banco, Agencia, Conta_Corrent' +
        'e'
      '   FROM Contas_Correntes '
      'WHERE Nivel = '#39'2'#39' AND Empresa = :p0')
    Left = 746
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object qrCCCodigo: TAutoIncField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Codigo'
    end
    object qrCCDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Descricao'
      Size = 45
    end
    object qrCCBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object qrCCAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object qrCCConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
  end
  object dsContasPagamentos: TDataSource
    DataSet = qrContasPagamentos
    Left = 48
    Top = 360
  end
  object qrContasPagamentos: TQuery
    CachedUpdates = True
    AfterScroll = qrContasPagamentosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CPP.*, CC.Descricao, E.Razao_Social '
      
        '  FROM CONTAS_A_PAGAR_PAGAMENTOS CPP INNER JOIN Contas_Correntes' +
        ' CC'
      '    ON CPP.Banco = CC.Codigo INNER JOIN Empresas E'
      '    ON CPP.CODIGO_EMPRESA = E.Codigo'
      ' WHERE CPP.CODIGO_EMPRESA = :p0'
      'ORDER BY Data_Emissao DESC')
    Left = 49
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object qrContasPagamentosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrContasPagamentosCodigo_Empresa: TStringField
      FieldName = 'Codigo_Empresa'
      Size = 4
    end
    object qrContasPagamentosValor_Total: TFloatField
      FieldName = 'Valor_Total'
      OnGetText = qrContasPagamentosValor_TotalGetText
    end
    object qrContasPagamentosData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object qrContasPagamentosData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
    end
    object qrContasPagamentosQtd_Contas: TIntegerField
      FieldName = 'Qtd_Contas'
    end
    object qrContasPagamentosStatus: TStringField
      FieldName = 'Status'
      Size = 15
    end
    object qrContasPagamentosCheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object qrContasPagamentosBanco: TStringField
      FieldName = 'Banco'
      OnGetText = qrContasPagamentosBancoGetText
      Size = 15
    end
    object qrContasPagamentosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object qrContasPagamentosContabilizada: TIntegerField
      FieldName = 'Contabilizada'
    end
    object qrContasPagamentosContabilizada_Automaticamente: TIntegerField
      FieldName = 'Contabilizada_Automaticamente'
    end
    object qrContasPagamentosCodigo_Movimentacao: TIntegerField
      FieldName = 'Codigo_Movimentacao'
    end
    object qrContasPagamentosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 70
    end
  end
  object dsContas_a_pagar3: TDataSource
    DataSet = t_contas_a_pagar3
    Left = 256
    Top = 297
  end
  object t_ContasPagamentos: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'Contas_a_Pagar_Pagamentos'
    Left = 361
    Top = 300
    object t_ContasPagamentosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_ContasPagamentosValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object t_ContasPagamentosQtd_Contas: TIntegerField
      FieldName = 'Qtd_Contas'
    end
    object t_ContasPagamentosBanco: TStringField
      FieldName = 'Banco'
      Size = 15
    end
    object t_ContasPagamentosCheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object t_ContasPagamentosContabilizada: TIntegerField
      FieldName = 'Contabilizada'
    end
    object t_ContasPagamentosCodigo_Movimentacao: TIntegerField
      FieldName = 'Codigo_Movimentacao'
    end
    object t_ContasPagamentosContabilizada_Automaticamente: TIntegerField
      FieldName = 'Contabilizada_Automaticamente'
    end
  end
  object t_contas_a_pagar3: TTable
    CachedUpdates = True
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'contas_a_pagar'
    Left = 257
    Top = 240
    object t_contas_a_pagar3Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_contas_a_pagar3Vencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object t_contas_a_pagar3Fk_Fornecedor: TStringField
      FieldName = 'Fk_Fornecedor'
      OnGetText = t_contas_a_pagar3Fk_FornecedorGetText
      Size = 4
    end
    object t_contas_a_pagar3Descricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object t_contas_a_pagar3Valor: TFloatField
      FieldName = 'Valor'
      OnGetText = t_contas_a_pagar3ValorGetText
    end
    object t_contas_a_pagar3Nf: TStringField
      FieldName = 'Nf'
      Size = 15
    end
    object t_contas_a_pagar3Status: TStringField
      FieldName = 'Status'
      Size = 30
    end
    object t_contas_a_pagar3Valor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
      OnGetText = t_contas_a_pagar3Valor_PrevisaoGetText
    end
    object t_contas_a_pagar3Vencimento_Previsao: TDateTimeField
      FieldName = 'Vencimento_Previsao'
    end
    object t_contas_a_pagar3Data_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
    end
    object t_contas_a_pagar3Solicitante: TStringField
      FieldName = 'Solicitante'
      Size = 10
    end
    object t_contas_a_pagar3Parcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
    object t_contas_a_pagar3Efetuar_Pagamento: TIntegerField
      FieldName = 'Efetuar_Pagamento'
    end
    object t_contas_a_pagar3Usuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object t_contas_a_pagar3Fk_Contas_a_Pagar_Pagamentos: TIntegerField
      FieldName = 'Fk_Contas_a_Pagar_Pagamentos'
    end
    object t_contas_a_pagar3Banco: TStringField
      FieldName = 'Banco'
      OnGetText = t_contas_a_pagar3BancoGetText
      Size = 15
    end
    object t_contas_a_pagar3Cheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object t_contas_a_pagar3Tp_Numerario: TStringField
      FieldName = 'Tp_Numerario'
      OnGetText = t_contas_a_pagar3Tp_NumerarioGetText
      Size = 4
    end
  end
  object t_movcc: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo_Mov'
    TableName = 'Movimentacao_Contas_Correntes'
    Left = 824
    Top = 256
    object t_movccEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_movccFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_movccCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_movccData: TDateTimeField
      FieldName = 'Data'
    end
    object t_movccTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object t_movccDoc: TStringField
      FieldName = 'Doc'
      FixedChar = True
      Size = 15
    end
    object t_movccHistorico: TStringField
      FieldName = 'Historico'
      FixedChar = True
      Size = 255
    end
    object t_movccValor: TFloatField
      FieldName = 'Valor'
    end
    object t_movccCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 4
    end
    object t_movccCodigo_Mov: TAutoIncField
      FieldName = 'Codigo_Mov'
    end
    object t_movccPlano_Contas: TStringField
      FieldName = 'Plano_Contas'
      FixedChar = True
      Size = 8
    end
    object t_movccUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object t_movccData_apuracao_cpmf_inicial: TDateTimeField
      FieldName = 'Data_apuracao_cpmf_inicial'
    end
    object t_movccData_apuracao_cpmf_final: TDateTimeField
      FieldName = 'Data_apuracao_cpmf_final'
    end
    object t_movccDesmembra: TIntegerField
      FieldName = 'Desmembra'
    end
    object t_movccCodigo_SOLREG: TStringField
      FieldName = 'Codigo_SOLREG'
      FixedChar = True
      Size = 50
    end
    object t_movccCodigo_ContasAPagar: TStringField
      FieldName = 'Codigo_ContasAPagar'
    end
  end
  object ds_tiposnumerarios: TDataSource
    DataSet = q_tiposnumerarios
    Left = 658
    Top = 125
  end
  object q_tiposnumerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tipos_Numerario.Empresa, Tipos_Numerario.Filial, Tipos_Nu' +
        'merario.Codigo, Tipos_Numerario.Descricao, Tipos_Numerario.Plano' +
        '_contas'
      'FROM Tipos_Numerario'
      'ORDER BY Tipos_Numerario.Descricao;')
    Left = 659
    Top = 64
    object q_tiposnumerariosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Empresa'
      Size = 4
    end
    object q_tiposnumerariosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Filial'
      Size = 4
    end
    object q_tiposnumerariosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
    object q_tiposnumerariosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
    object q_tiposnumerariosPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Plano_contas'
      Size = 8
    end
  end
  object t_contas_correntes: TTable
    CachedUpdates = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'contas_correntes'
    Left = 464
    Top = 301
    object t_contas_correntesCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_contas_correntesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object t_contas_correntesEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
  end
  object t_bancos: TTable
    CachedUpdates = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'contas_correntes'
    Left = 584
    Top = 64
    object t_bancosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_bancosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object t_bancosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
  end
  object t_tipos_numerarios: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'Tipos_Numerario'
    Left = 512
    Top = 64
    object StringField1: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_tipos_numerariosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_tipos_numerariosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
  end
  object dsFornecedoresfiltro: TDataSource
    DataSet = t_fornecedoresfiltro
    Left = 646
    Top = 239
  end
  object t_fornecedoresfiltro: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Razao_Social'
    TableName = 'fornecedores'
    Left = 648
    Top = 296
    object StringField6: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object t_fornecedoresfiltroEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
  end
  object dsSolicitantesfiltro: TDataSource
    DataSet = q_solicitantesfiltro
    Left = 552
    Top = 239
  end
  object q_solicitantesfiltro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select usuario, nome_completo, ativo from usuarios where ativo =' +
        ' 1')
    Left = 555
    Top = 296
    object q_solicitantesfiltroUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object q_solicitantesfiltroNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Size = 45
    end
  end
  object q_solicitante: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select usuario, nome_completo, ativo from usuarios where ativo =' +
        ' 1')
    Left = 823
    Top = 64
    object q_solicitanteUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object q_solicitanteNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Size = 45
    end
  end
  object q_empresas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Empresas WHERE Codigo <> '#39'2'#39)
    Left = 231
    Top = 64
    object q_empresasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_empresasRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 70
    end
  end
  object dsEmpresas: TDataSource
    DataSet = q_empresas
    Left = 232
    Top = 144
  end
  object q_incdeb: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [Numerarios_Processos]'
      '           ([Empresa]'
      '           ,[Filial]'
      '           ,[Processo]'
      '           ,[Numerario]           '
      '           ,[Usuario_Financeiro]'
      '           ,[Data_Registro]'
      '           ,[Valor_Registrado]'
      '           ,[Valor_Contabilizado]'
      '           ,[Contabilizado]'
      '           ,[Usuario_Contablizado]'
      '           ,[Conta_Corrente]'
      '           ,[Codigo_mov]           '
      '           ,[Detalhe])'
      '     VALUES'
      '           (:Empresa'
      '           ,:Filial'
      '           ,:Processo'
      '           ,:Numerario'
      '           ,:Usuario_Financeiro'
      '           ,:Data_Registro'
      '           ,:Valor_Registrado'
      '           ,:Valor_Contabilizado'
      '           ,:Contabilizado'
      '           ,:Usuario_Contablizado'
      '           ,:Conta_Corrente'
      '           ,:Codigo_mov'
      '           ,:Detalhe)')
    Left = 571
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Numerario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario_Financeiro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data_Registro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor_Registrado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor_Contabilizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contabilizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario_Contablizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conta_Corrente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Codigo_mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Detalhe'
        ParamType = ptUnknown
      end>
    object StringField8: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Empresa'
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Filial'
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
    object StringField11: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Plano_contas'
      Size = 8
    end
  end
end
