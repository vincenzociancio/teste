object f_vouchertransocean: Tf_vouchertransocean
  Left = 193
  Top = 183
  ActiveControl = b_incluir
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Voucher Transocean'
  ClientHeight = 512
  ClientWidth = 715
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = -1
    Width = 713
    Height = 197
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 145
      Width = 48
      Height = 13
      Caption = 'Voucher'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 289
      Top = 145
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 465
      Top = 159
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gbBaixa: TGroupBox
      Left = 365
      Top = 127
      Width = 252
      Height = 66
      Caption = ' Recebimento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label7: TLabel
        Left = 12
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 92
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Receptor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edReceptor: TEdit
        Left = 90
        Top = 32
        Width = 151
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 100
        ParentFont = False
        TabOrder = 1
      end
      object edRecebimento: TEdit
        Left = 13
        Top = 32
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edRecebimentoKeyPress
      end
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 3
      Width = 621
      Height = 120
      DataSource = DataSource1
      FixedColor = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 309
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Recebimento'
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Receptor'
          Width = 130
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 626
      Top = 4
      Width = 85
      Height = 192
      Color = 10514464
      TabOrder = 4
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
      object b_imprimir: TBitBtn
        Left = 4
        Top = 165
        Width = 79
        Height = 23
        Caption = 'Imprimir'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 5
        OnClick = b_imprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
      end
    end
    object edVoucher: TEdit
      Left = 3
      Top = 160
      Width = 278
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 100
      TabOrder = 1
    end
    object edData: TEdit
      Left = 288
      Top = 160
      Width = 71
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edDataKeyPress
    end
  end
  object p_itens: TPanel
    Left = -1
    Top = 196
    Width = 714
    Height = 313
    Caption = 'p_itens'
    Color = 10514464
    TabOrder = 1
    object Label4: TLabel
      Left = 4
      Top = 13
      Width = 150
      Height = 19
      Alignment = taCenter
      Caption = '     Itens do Voucher'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 48
      Width = 55
      Height = 16
      Caption = 'Ref. MS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImportador: TLabel
      Left = 239
      Top = 45
      Width = 4
      Height = 16
      Alignment = taCenter
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Top = 293
      Width = 466
      Height = 13
      Caption = 
        '* Para excluir um processo do Voucher, selecione a linha referen' +
        'te ao processo e pressione delete.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object b_incluiritem: TBitBtn
      Left = 640
      Top = 42
      Width = 69
      Height = 22
      Caption = 'Incluir'
      Enabled = False
      TabOrder = 2
      OnClick = b_incluiritemClick
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
    object DBG_itens: TDBGrid
      Left = 5
      Top = 69
      Width = 703
      Height = 219
      DataSource = DataSource2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -8
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBG_itensKeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Processo'
          Title.Caption = 'Ref. MS'
          Width = 49
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tipo_Processo'
          Title.Alignment = taCenter
          Title.Caption = 'Tp. Processo'
          Width = 136
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ref_Cliente'
          Title.Alignment = taCenter
          Title.Caption = 'Ref. Cliente'
          Width = 181
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Local'
          Title.Alignment = taCenter
          Title.Caption = 'Sonda'
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor a Pagar'
          Width = 98
          Visible = True
        end>
    end
    object edRefMS: TEdit
      Left = 72
      Top = 42
      Width = 68
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnChange = edRefMSChange
    end
    object chbComplementar: TCheckBox
      Left = 146
      Top = 48
      Width = 89
      Height = 17
      Caption = 'Complementar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlDestinatario: TPanel
    Left = 355
    Top = 393
    Width = 337
    Height = 73
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    Color = 10514464
    TabOrder = 2
    Visible = False
    object Label26: TLabel
      Left = 10
      Top = 18
      Width = 69
      Height = 13
      Caption = 'Destinatário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtDestinatario: TMaskEdit
      Left = 82
      Top = 14
      Width = 245
      Height = 21
      MaxLength = 100
      TabOrder = 0
    end
    object btnok: TBitBtn
      Left = 178
      Top = 43
      Width = 74
      Height = 22
      Hint = 'Confirmar inclusão do patrimônio'
      Caption = '&Ok'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnokClick
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
      Left = 255
      Top = 43
      Width = 74
      Height = 22
      Hint = 'Cancelar inclusão do patrimônio'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
  end
  object DataSource1: TDataSource
    DataSet = q_Voucher
    Left = 202
    Top = 52
  end
  object q_Voucher: TQuery
    AfterScroll = q_VoucherAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao, Data, Recebimento, Receptor '
      '  FROM Voucher_Transocean '
      'ORDER BY Codigo DESC')
    Left = 271
    Top = 52
    object q_VoucherCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object q_VoucherDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object q_VoucherData: TDateTimeField
      FieldName = 'Data'
    end
    object q_VoucherRecebimento: TStringField
      FieldName = 'Recebimento'
      Size = 10
    end
    object q_VoucherReceptor: TStringField
      FieldName = 'Receptor'
      Size = 50
    end
  end
  object q_Aux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 330
    Top = 52
  end
  object q_Itens_Voucher: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Codigo_Voucher, Codigo, Processo, Tipo_Processo, Ref_Clie' +
        'nte, Local, Saldo '
      '  from Voucher_Transocean_Itens'
      'where Codigo_Voucher =:pCodigo_Voucher')
    Left = 186
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodigo_Voucher'
        ParamType = ptUnknown
      end>
    object q_Itens_VoucherCodigo_Voucher: TIntegerField
      FieldName = 'Codigo_Voucher'
    end
    object q_Itens_VoucherCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object q_Itens_VoucherProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_Itens_VoucherTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Size = 100
    end
    object q_Itens_VoucherRef_Cliente: TStringField
      FieldName = 'Ref_Cliente'
      Size = 100
    end
    object q_Itens_VoucherLocal: TStringField
      FieldName = 'Local'
      Size = 100
    end
    object q_Itens_VoucherSaldo: TFloatField
      FieldName = 'Saldo'
      OnGetText = q_Itens_VoucherSaldoGetText
    end
  end
  object DataSource2: TDataSource
    DataSet = q_Itens_Voucher
    Left = 90
    Top = 348
  end
end
