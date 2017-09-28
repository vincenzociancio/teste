object F_proNumerarios: TF_proNumerarios
  Left = 334
  Top = 183
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Numerários'
  ClientHeight = 468
  ClientWidth = 744
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 10
      Width = 113
      Height = 13
      Caption = 'Digite o Nº do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object l_cliente: TLabel
      Left = 200
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
    object ME_nossaref: TMaskEdit
      Left = 128
      Top = 6
      Width = 65
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 742
      Height = 31
      Align = alClient
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 456
        Top = 184
        Width = 68
        Height = 13
        Caption = 'Valor Previsão'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 360
        Top = 184
        Width = 67
        Height = 13
        Caption = 'Data Previsão'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 184
        Width = 48
        Height = 13
        Caption = 'Numerário'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 552
        Top = 184
        Width = 48
        Height = 13
        Caption = 'Data Real'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 648
        Top = 184
        Width = 49
        Height = 13
        Caption = 'Valor Real'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 9
        Top = 16
        Width = 734
        Height = 165
        Hint = 'Duplo click para marcar previsão como "SIM" ou "NÃO"'
        DataSource = dsQNumerarios
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbGrdNumerariosDrawColumnCell
        OnDblClick = dbGrdNumerariosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 181
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'deb_cli'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Débito Cliente'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Previsao'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Previsao'
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Previsao_solicitada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Prev.Solicitada'
            Width = 76
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Ok_Previsao_financeiro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Prev.Financeiro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Registro'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Registrado'
            Width = 78
            Visible = True
          end>
      end
      object DBEdit1: TDBEdit
        Left = 456
        Top = 200
        Width = 89
        Height = 21
        DataField = 'Valor_Previsao'
        DataSource = dsNumerarios
        Enabled = False
        TabOrder = 3
      end
      object DBEdit2: TDBEdit
        Left = 360
        Top = 200
        Width = 89
        Height = 21
        DataField = 'Data_Previsao'
        DataSource = dsNumerarios
        Enabled = False
        TabOrder = 2
        OnChange = dbEdtDtPrevChange
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 200
        Width = 337
        Height = 21
        DataField = 'Numerario'
        DataSource = dsNumerarios
        Enabled = False
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dsTipoNum
        TabOrder = 1
        OnExit = dbLcbNumerarioExit
      end
      object DBEdit3: TDBEdit
        Left = 552
        Top = 200
        Width = 89
        Height = 21
        DataField = 'Data_Registro'
        DataSource = dsNumerarios
        Enabled = False
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 648
        Top = 200
        Width = 89
        Height = 21
        DataField = 'Valor_Registrado'
        DataSource = dsNumerarios
        Enabled = False
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 177
        Top = 184
        Width = 172
        Height = 16
        Hint = 
          'Esta oção deverá ser marcada caso o cliente contabilize o débito' +
          ' diretamente. Os valores reais deverão ser preenchidos corretame' +
          'nte.'
        Caption = 'Contabilizado pelo Cliente'
        DataField = 'Contabilizado_cliente'
        DataSource = dsNumerarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnExit = dbcb_contabilizadoExit
      end
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 744
    Height = 399
    Align = alClient
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label226: TLabel
      Left = 456
      Top = 184
      Width = 68
      Height = 13
      Caption = 'Valor Previsão'
      FocusControl = dbEdtValPrev
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label227: TLabel
      Left = 360
      Top = 184
      Width = 67
      Height = 13
      Caption = 'Data Previsão'
      FocusControl = dbEdtDtPrev
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label228: TLabel
      Left = 16
      Top = 184
      Width = 48
      Height = 13
      Caption = 'Numerário'
      FocusControl = dbEdtDtPrev
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label229: TLabel
      Left = 552
      Top = 184
      Width = 48
      Height = 13
      Caption = 'Data Real'
      FocusControl = dbEdtDtReal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label230: TLabel
      Left = 648
      Top = 184
      Width = 49
      Height = 13
      Caption = 'Valor Real'
      FocusControl = dbEdtValReal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbGrdNumerarios: TDBGrid
      Left = 5
      Top = 16
      Width = 732
      Height = 165
      Hint = 'Duplo click para marcar previsão como "SIM" ou "NÃO"'
      DataSource = dsQNumerarios
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbGrdNumerariosDrawColumnCell
      OnDblClick = dbGrdNumerariosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 181
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'deb_cli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Débito Cliente'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Previsao'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Previsao'
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Previsao_solicitada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Prev.Solicitada'
          Width = 76
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ok_Previsao_financeiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Prev.Financeiro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Registro'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Registrado'
          Width = 78
          Visible = True
        end>
    end
    object dbEdtValPrev: TDBEdit
      Left = 456
      Top = 200
      Width = 89
      Height = 21
      DataField = 'Valor_Previsao'
      DataSource = dsNumerarios
      Enabled = False
      TabOrder = 3
    end
    object dbEdtDtPrev: TDBEdit
      Left = 360
      Top = 200
      Width = 89
      Height = 21
      DataField = 'Data_Previsao'
      DataSource = dsNumerarios
      Enabled = False
      TabOrder = 2
      OnChange = dbEdtDtPrevChange
    end
    object dbLcbNumerario: TDBLookupComboBox
      Left = 16
      Top = 200
      Width = 337
      Height = 21
      DataField = 'Numerario'
      DataSource = dsNumerarios
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dsTipoNum
      TabOrder = 1
      OnExit = dbLcbNumerarioExit
    end
    object dbEdtDtReal: TDBEdit
      Left = 552
      Top = 200
      Width = 89
      Height = 21
      DataField = 'Data_Registro'
      DataSource = dsNumerarios
      Enabled = False
      TabOrder = 4
    end
    object dbEdtValReal: TDBEdit
      Left = 648
      Top = 200
      Width = 89
      Height = 21
      DataField = 'Valor_Registrado'
      DataSource = dsNumerarios
      Enabled = False
      TabOrder = 5
    end
    object dbcb_contabilizado: TDBCheckBox
      Left = 177
      Top = 184
      Width = 172
      Height = 16
      Hint = 
        'Esta oção deverá ser marcada caso o cliente contabilize o débito' +
        ' diretamente. Os valores reais deverão ser preenchidos corretame' +
        'nte.'
      Caption = 'Contabilizado pelo Cliente'
      DataField = 'Contabilizado_cliente'
      DataSource = dsNumerarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
      OnExit = dbcb_contabilizadoExit
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 432
    Width = 744
    Height = 36
    Align = alBottom
    Color = 10514464
    TabOrder = 1
    Visible = False
    object btnIncluir: TBitBtn
      Left = 17
      Top = 7
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
      Top = 7
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
      Top = 7
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
      Left = 376
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 3
      OnClick = btnSalvarClick
      Kind = bkOK
    end
    object btnCancelar: TBitBtn
      Left = 464
      Top = 7
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      ModalResult = 2
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
      Left = 648
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object pnlSolicitacao: TPanel
    Left = 11
    Top = 262
    Width = 593
    Height = 169
    BevelInner = bvLowered
    Color = 10514464
    TabOrder = 3
    Visible = False
    object Panel32: TPanel
      Left = 304
      Top = 24
      Width = 281
      Height = 137
      TabOrder = 1
      object Label257: TLabel
        Left = 4
        Top = 28
        Width = 49
        Height = 13
        Caption = 'Solicitante'
        FocusControl = dbEdtSolicitante
      end
      object Label258: TLabel
        Left = 4
        Top = 52
        Width = 25
        Height = 13
        Caption = 'Email'
        FocusControl = dbEdtEmailDE
      end
      object Panel33: TPanel
        Left = 1
        Top = 1
        Width = 279
        Height = 18
        Align = alTop
        Caption = 'DE'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbEdtSolicitante: TDBEdit
        Left = 60
        Top = 24
        Width = 213
        Height = 21
        DataField = 'Nome_Completo'
        DataSource = dsUsuarios
        Enabled = False
        TabOrder = 0
      end
      object dbEdtEmailDE: TDBEdit
        Left = 60
        Top = 48
        Width = 213
        Height = 21
        DataField = 'Email'
        DataSource = dsUsuarios
        Enabled = False
        TabOrder = 1
      end
      object btnEmail: TBitBtn
        Left = 136
        Top = 76
        Width = 67
        Height = 25
        Caption = 'Email'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnEmailClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
          000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
          FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
          FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
          9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
          0000777777777777777733333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnFax: TBitBtn
        Left = 208
        Top = 76
        Width = 67
        Height = 25
        Caption = 'Fax'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnFaxClick
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
    end
    object Panel34: TPanel
      Left = 8
      Top = 24
      Width = 297
      Height = 137
      TabOrder = 0
      object Label259: TLabel
        Left = 4
        Top = 28
        Width = 37
        Height = 13
        Caption = 'Contato'
        FocusControl = dbEdtContato
      end
      object Label260: TLabel
        Left = 4
        Top = 49
        Width = 25
        Height = 13
        Caption = 'Email'
        FocusControl = dbEdtEmailPARA
      end
      object Label256: TLabel
        Left = 4
        Top = 91
        Width = 51
        Height = 13
        Caption = 'Com Cópia'
        FocusControl = dbEdtCopia
      end
      object Label234: TLabel
        Left = 4
        Top = 70
        Width = 17
        Height = 13
        Caption = 'Fax'
        FocusControl = dbEdtFax
      end
      object Panel35: TPanel
        Left = 1
        Top = 1
        Width = 295
        Height = 18
        Align = alTop
        Caption = 'PARA'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object dbEdtContato: TDBEdit
        Left = 63
        Top = 24
        Width = 226
        Height = 21
        DataField = 'Contato_Numerario'
        DataSource = dsContatosImp
        Enabled = False
        TabOrder = 0
      end
      object dbEdtEmailPARA: TDBEdit
        Left = 63
        Top = 45
        Width = 226
        Height = 21
        DataField = 'Email_Numerario'
        DataSource = dsContatosImp
        Enabled = False
        TabOrder = 1
        OnChange = dbEdtFaxChange
        OnExit = dbEdtFaxChange
      end
      object dbEdtCopia: TDBEdit
        Left = 63
        Top = 87
        Width = 226
        Height = 21
        DataField = 'CC_Email'
        DataSource = dsContatosImp
        Enabled = False
        TabOrder = 3
      end
      object dbEdtFax: TDBEdit
        Left = 63
        Top = 66
        Width = 113
        Height = 21
        DataField = 'Fax_Numerario'
        DataSource = dsContatosImp
        Enabled = False
        TabOrder = 2
        OnChange = dbEdtFaxChange
        OnExit = dbEdtFaxChange
      end
      object btnAlterarContato: TBitBtn
        Left = 208
        Top = 109
        Width = 23
        Height = 22
        Hint = 'Alterar dados do Contato'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnAlterarContatoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
      end
      object btnSalvarContato: TBitBtn
        Left = 240
        Top = 109
        Width = 23
        Height = 22
        Hint = 'Salvar Alteração'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnSalvarContatoClick
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
      object btnCancelarContato: TBitBtn
        Left = 264
        Top = 109
        Width = 23
        Height = 22
        Hint = 'Cancelar Alteração'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = btnCancelarContatoClick
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
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 589
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Solicitação da Previsão'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlCalcTotal: TPanel
    Left = 608
    Top = 261
    Width = 121
    Height = 169
    BevelInner = bvLowered
    Color = 10514464
    TabOrder = 4
    Visible = False
    object Label231: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = 'Valor Total Previsto'
      FocusControl = dbEdtValPrev
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label232: TLabel
      Left = 8
      Top = 56
      Width = 101
      Height = 13
      Caption = 'Valor Total Realizado'
      FocusControl = dbEdtValReal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object me_vprevisao: TMaskEdit
      Left = 8
      Top = 32
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object me_vreal: TMaskEdit
      Left = 8
      Top = 72
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object btnCalc: TBitBtn
      Left = 24
      Top = 104
      Width = 75
      Height = 25
      Caption = '&Totalizar'
      TabOrder = 2
      OnClick = btnCalcClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFFFFFFFFFF33330000000000
        03333377777777777F33333003333330033333377FF333377F33333300333333
        0333333377FF33337F3333333003333303333333377FF3337333333333003333
        333333333377FF3333333333333003333333333333377FF33333333333330033
        3333333333337733333333333330033333333333333773333333333333003333
        33333333337733333F3333333003333303333333377333337F33333300333333
        03333333773333337F33333003333330033333377FFFFFF77F33330000000000
        0333337777777777733333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object pnlEmail: TPanel
    Left = 528
    Top = -72
    Width = 721
    Height = 385
    BevelWidth = 5
    BorderStyle = bsSingle
    TabOrder = 5
    Visible = False
    object Memo_email: TMemo
      Left = 16
      Top = 40
      Width = 685
      Height = 289
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      Lines.Strings = (
        
          '123456789/123456789/123456789/123456789/123456789/123456789/1234' +
          '56789/123456789/123456789/123456789/')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object btnEnviarEmail: TBitBtn
      Left = 536
      Top = 336
      Width = 75
      Height = 25
      Caption = '&Enviar'
      TabOrder = 1
      OnClick = btnEnviarEmailClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnCancelarEmail: TBitBtn
      Left = 624
      Top = 336
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = btnCancelarEmailClick
      Kind = bkCancel
    end
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 707
      Height = 27
      Align = alTop
      Caption = 'Verifique seu Email'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object qrProcessos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Tipo_Declaracao, Processos.Tipo, Processos.Empr' +
        'esa, Processos.Filial, Processos.importador as qcli, Processos.C' +
        'odigo AS Processo, Processos.Data, Processos.Codigo_Cliente AS r' +
        'efcli, Importadores.Razao_Social AS Cliente, importadores.codigo' +
        ', TAB_TIPO_DECLARACAO.Descricao AS tipodecla, Tipos_de_Processos' +
        '.DESCRICAO AS tipopro, contratos.contrato, Contratos.Descricao A' +
        'S qcontrato, Locais_Inventario.local, Locais_Inventario.Descrica' +
        'o AS qlocal, Importadores.Conta_Corrente_Deposito, Importadores.' +
        'CNPJ_CPF_COMPLETO AS qcnpj, Processos.Fechado, Importadores.ATIV' +
        'O, Processos.Importador, Processos.Responsavel_empresa,  Process' +
        'os.Responsavel_empresac '
      
        'FROM (((((Parametros INNER JOIN Processos ON (Parametros.Empresa' +
        ' = Processos.Empresa) AND (Parametros.Filial = Processos.Filial)' +
        ') LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Em' +
        'presa) AND (Processos.Filial = Importadores.Filial) AND (Process' +
        'os.Importador = Importadores.Codigo)) LEFT JOIN Tipos_de_Process' +
        'os ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TAB_' +
        'TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARAC' +
        'AO.Codigo) LEFT JOIN Contratos ON (Processos.Empresa = Contratos' +
        '.Empresa) AND (Processos.Filial = Contratos.Filial) AND (Process' +
        'os.Importador = Contratos.Importador) AND (Processos.Contrato = ' +
        'Contratos.Contrato)) LEFT JOIN Locais_Inventario ON (Processos.E' +
        'mpresa = Locais_Inventario.Empresa) AND (Processos.Filial = Loca' +
        'is_Inventario.Filial) AND (Processos.Importador = Locais_Inventa' +
        'rio.Importador) AND (Processos.Contrato = Locais_Inventario.Cont' +
        'rato) AND (Processos.Local_Inventario = Locais_Inventario.Local)'
      'WHERE Processos.Codigo =:Processo'
      'ORDER BY Processos.Codigo;')
    Left = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '00339/1'
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrProcessosqcli: TStringField
      FieldName = 'qcli'
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosrefcli: TStringField
      FieldName = 'refcli'
      Size = 60
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object qrProcessoscodigo: TStringField
      FieldName = 'codigo'
      Size = 4
    end
    object qrProcessostipodecla: TStringField
      FieldName = 'tipodecla'
      Size = 120
    end
    object qrProcessostipopro: TStringField
      FieldName = 'tipopro'
      Size = 35
    end
    object qrProcessoscontrato: TStringField
      FieldName = 'contrato'
      Size = 8
    end
    object qrProcessosqcontrato: TStringField
      FieldName = 'qcontrato'
      Size = 50
    end
    object qrProcessoslocal: TStringField
      FieldName = 'local'
      Size = 4
    end
    object qrProcessosqlocal: TStringField
      FieldName = 'qlocal'
      Size = 250
    end
    object qrProcessosConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      Size = 14
    end
    object qrProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object qrProcessosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrProcessosResponsavel_empresa: TStringField
      FieldName = 'Responsavel_empresa'
      Size = 10
    end
    object qrProcessosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      Size = 10
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrProcessosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 208
    Top = 48
  end
  object tbNumerarios: TTable
    AutoCalcFields = False
    AfterInsert = tbNumerariosAfterEdit
    AfterEdit = tbNumerariosAfterEdit
    AfterPost = tbNumerariosAfterPost
    AfterCancel = qrNumerariosAfterOpen
    BeforeDelete = tbNumerariosBeforeDelete
    AfterScroll = tbNumerariosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Numerario <>'#39'ISS'#39' AND Numerario <>'#39'CPMF'#39' AND Numerario <>'#39'TAXE'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    TableName = 'Numerarios_Processos'
    Left = 296
    object tbNumerariosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbNumerariosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbNumerariosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object tbNumerariosREG: TAutoIncField
      FieldName = 'REG'
    end
    object tbNumerariosNumerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object tbNumerariosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object tbNumerariosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object tbNumerariosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object tbNumerariosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object tbNumerariosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object tbNumerariosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object tbNumerariosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object tbNumerariosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object tbNumerariosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object tbNumerariosContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object tbNumerariosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object tbNumerariosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object tbNumerariosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object tbNumerariosImpdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object tbNumerariosDetalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object tbNumerariosDocsis: TStringField
      FieldName = 'Docsis'
      FixedChar = True
      Size = 15
    end
    object tbNumerariosFatura_mov: TStringField
      FieldName = 'Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object tbNumerariosFornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object tbNumerariosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object tbNumerariosContabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object tbNumerariosREG_creditos: TIntegerField
      FieldName = 'REG_creditos'
    end
    object tbNumerariosProcesso_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
  end
  object dsNumerarios: TDataSource
    DataSet = tbNumerarios
    Left = 296
    Top = 40
  end
  object dsUsuarios: TDataSource
    DataSet = qrUsuarios
    Left = 432
    Top = 32
  end
  object email_num: TNMSMTP
    Host = '172.19.92.150'
    Port = 25
    ReportLevel = 0
    UserID = 'ms2000'
    PostMessage.ToAddress.Strings = (
      '')
    PostMessage.Body.Strings = (
      'teste de email de numerários')
    EncodeType = uuMime
    ClearParams = True
    SubType = mtHtml
    Charset = 'iso-8859-1'
    OnAuthenticationFailed = email_numAuthenticationFailed
    Left = 680
  end
  object qrNumerarios: TQuery
    AutoCalcFields = False
    AfterOpen = qrNumerariosAfterOpen
    AfterScroll = qrNumerariosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'NUMERARIO<>'#39'ISS'#39' AND NUMERARIO<>'#39'CPMF'#39' AND NUMERARIO<>'#39'TAXE'#39
    Filtered = True
    SQL.Strings = (
      
        'SELECT N.Empresa, N.Filial, N.Processo, N.REG, N.Numerario, N.Us' +
        'uario_Previsao, N.Data_Previsao, N.Valor_Previsao, N.Previsao_so' +
        'licitada, N.Ok_Previsao_financeiro, N.Usuario_Financeiro, N.Data' +
        '_Registro, N.Valor_Registrado, N.Valor_Contabilizado, N.Contabil' +
        'izado, N.Usuario_Contablizado, N.Conta_Corrente, N.Codigo_mov, N' +
        '.Impdemfim, N.Detalhe, N.Docsis, N.Fatura_mov, TN.Descricao, cas' +
        'e N.Contabilizado_Cliente when 1 then '#39'SIM'#39' when  0 then '#39'Não'#39' e' +
        'nd as deb_cli'
      
        'FROM (Parametros AS P LEFT JOIN Numerarios_Processos AS N ON P.E' +
        'mpresa = N.Empresa AND P.Filial = N.Filial)  LEFT JOIN Tipos_Num' +
        'erario AS TN ON N.Numerario = TN.Codigo AND N.Filial = TN.Filial' +
        ' AND N.Empresa = TN.Empresa'
      'WHERE N.Processo = :pro')
    Left = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrNumerariosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrNumerariosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrNumerariosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrNumerariosREG: TAutoIncField
      FieldName = 'REG'
    end
    object qrNumerariosNumerario: TStringField
      FieldName = 'Numerario'
      Size = 4
    end
    object qrNumerariosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      Size = 10
    end
    object qrNumerariosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object qrNumerariosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object qrNumerariosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      Size = 3
    end
    object qrNumerariosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      Size = 3
    end
    object qrNumerariosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      Size = 10
    end
    object qrNumerariosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object qrNumerariosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object qrNumerariosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object qrNumerariosContabilizado: TStringField
      FieldName = 'Contabilizado'
      Size = 3
    end
    object qrNumerariosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      Size = 10
    end
    object qrNumerariosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object qrNumerariosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object qrNumerariosImpdemfim: TStringField
      FieldName = 'Impdemfim'
      Size = 3
    end
    object qrNumerariosDetalhe: TStringField
      FieldName = 'Detalhe'
      Size = 50
    end
    object qrNumerariosDocsis: TStringField
      FieldName = 'Docsis'
      Size = 15
    end
    object qrNumerariosFatura_mov: TStringField
      FieldName = 'Fatura_mov'
      Size = 15
    end
    object qrNumerariosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrNumerariosdeb_cli: TStringField
      FieldName = 'deb_cli'
      Size = 255
    end
  end
  object dsQNumerarios: TDataSource
    DataSet = qrNumerarios
    Left = 256
    Top = 40
  end
  object qrTipoNum: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TN.Codigo, TN.Descricao, TN.Plano_contas'
      
        'FROM Parametros AS P INNER JOIN Tipos_Numerario AS TN ON (P.Empr' +
        'esa = TN.Empresa) AND (P.Filial = TN.Filial)'
      'WHERE (((TN.Plano_contas)="NUM"))'
      'ORDER BY TN.Descricao')
    Left = 352
    object qrTipoNumCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
    object qrTipoNumDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
    object qrTipoNumPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Plano_contas'
      Size = 8
    end
  end
  object dsTipoNum: TDataSource
    DataSet = qrTipoNum
    Left = 352
    Top = 32
  end
  object qrUsuarios: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT U.Empresa, U.Filial, U.Usuario, U.Senha, U.Nome_Completo,' +
        ' U.Diretorio_SISCOMEX, U.Nivel, U.Nivel_ccorrente, U.Data_valida' +
        'de_senha, U.Email, U.Email_Sol_Num, U.Supervisor'
      
        'FROM Parametros AS P INNER JOIN Usuarios AS U ON P.Filial = U.Fi' +
        'lial AND P.Empresa = U.Empresa')
    Left = 432
    Top = 1
    object qrUsuariosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Usuarios.Empresa'
      Size = 4
    end
    object qrUsuariosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Usuarios.Filial'
      Size = 4
    end
    object qrUsuariosUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object qrUsuariosSenha: TStringField
      FieldName = 'Senha'
      Origin = 'DBNMSCOMEX.Usuarios.Senha'
      Size = 10
    end
    object qrUsuariosNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object qrUsuariosDiretorio_SISCOMEX: TStringField
      FieldName = 'Diretorio_SISCOMEX'
      Origin = 'DBNMSCOMEX.Usuarios.Diretorio_SISCOMEX'
      Size = 50
    end
    object qrUsuariosNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel'
      Size = 4
    end
    object qrUsuariosNivel_ccorrente: TStringField
      FieldName = 'Nivel_ccorrente'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel_ccorrente'
      Size = 4
    end
    object qrUsuariosData_validade_senha: TDateTimeField
      FieldName = 'Data_validade_senha'
      Origin = 'DBNMSCOMEX.Usuarios.Data_validade_senha'
    end
    object qrUsuariosEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrUsuariosEmail_Sol_Num: TSmallintField
      FieldName = 'Email_Sol_Num'
      Origin = 'DBNMSCOMEX.Usuarios.Email_Sol_Num'
    end
    object qrUsuariosSupervisor: TStringField
      FieldName = 'Supervisor'
      Origin = 'DBNMSCOMEX.Usuarios.Supervisor'
      Size = 10
    end
  end
  object qrTipoNum_Ing: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TN.Codigo, TN.Descricao, TN.Plano_contas'
      
        'FROM Parametros AS P INNER JOIN Tipos_Numerario_Ing AS TN ON (P.' +
        'Empresa = TN.Empresa) AND (P.Filial = TN.Filial)'
      'WHERE (((TN.Plano_contas)="NUM"))'
      'ORDER BY TN.Descricao')
    Left = 400
    object qrTipoNum_IngCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario_Ing.Codigo'
      Size = 4
    end
    object qrTipoNum_IngDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario_Ing.Descricao'
      Size = 70
    end
    object qrTipoNum_IngPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Tipos_Numerario_Ing.Plano_contas'
      Size = 8
    end
  end
  object dsContatosImp: TDataSource
    DataSet = tbContatosImp
    Left = 480
    Top = 32
  end
  object qrCCDeposito: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CC.Codigo, CC.Banco, CC.Agencia, CC.Conta_Corrente'
      
        'FROM Parametros AS P INNER JOIN Contas_Correntes AS CC ON P.Fili' +
        'al = CC.Filial AND P.Empresa = CC.Empresa'
      'WHERE CC.Codigo = :conta')
    Left = 584
    ParamData = <
      item
        DataType = ftInteger
        Name = 'conta'
        ParamType = ptUnknown
      end>
    object qrCCDepositoCodigo: TAutoIncField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Codigo'
    end
    object qrCCDepositoBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Banco'
      Size = 5
    end
    object qrCCDepositoAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Agencia'
      Size = 5
    end
    object qrCCDepositoConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Conta_Corrente'
      Size = 8
    end
  end
  object qrConhecimento: TQuery
    AutoCalcFields = False
    AfterCancel = tbNumerariosAfterPost
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT C.Processo, C.Numerodoccarga, C.Numeromaster, T.descricao' +
        ', C.Embarcacao, C.DT_Eta'
      
        'FROM (Parametros AS P INNER JOIN Conhecimento_Processo AS C ON (' +
        'P.Empresa = C.Empresa) AND (P.Filial = C.Filial)) LEFT JOIN Tipo' +
        '_Doc_Carga AS T ON (C.Tipodoccarga = T.codigo) AND (C.Via = T.vi' +
        'a)'
      'WHERE C.Processo = :pro')
    Left = 560
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
    object qrConhecimentoProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrConhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object qrConhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object qrConhecimentodescricao: TStringField
      FieldName = 'descricao'
      Size = 25
    end
    object qrConhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object qrConhecimentoDT_ETA: TDateTimeField
      FieldName = 'DT_ETA'
    end
  end
  object tbContatosImp: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;codigo'
    MasterSource = dsQProcessos
    TableName = 'Contatos_Importadores'
    Left = 480
    Top = 1
    object tbContatosImpEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbContatosImpFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbContatosImpImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object tbContatosImpEmail_Numerario: TStringField
      FieldName = 'Email_Numerario'
      Size = 50
    end
    object tbContatosImpFax_Numerario: TStringField
      FieldName = 'Fax_Numerario'
      Size = 15
    end
    object tbContatosImpContato_Numerario: TStringField
      FieldName = 'Contato_Numerario'
      Size = 50
    end
    object tbContatosImpCC_email: TStringField
      FieldName = 'CC_email'
      Size = 150
    end
  end
  object t_paracon: TTable
    AutoCalcFields = False
    AfterInsert = tbNumerariosAfterEdit
    AfterEdit = tbNumerariosAfterEdit
    AfterPost = tbNumerariosAfterPost
    AfterCancel = qrNumerariosAfterOpen
    BeforeDelete = tbNumerariosBeforeDelete
    AfterScroll = tbNumerariosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Importador;Numerario'
    TableName = 'Parametros_Contabilizacao'
    Left = 520
    object t_paraconEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_paraconFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_paraconImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object t_paraconNumerario: TStringField
      FieldName = 'Numerario'
      Required = True
      Size = 4
    end
    object t_paraconCredito: TStringField
      FieldName = 'Credito'
      Required = True
      Size = 4
    end
  end
  object ds_tparacon: TDataSource
    DataSet = t_paracon
    Left = 520
    Top = 32
  end
  object Q_inccred: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Creditos_Processos ( Empresa, Filial, Processo, Cred' +
        'ito, Data_Credito, Valor, Conta_Corrente, Codigo_mov, Contabiliz' +
        'ado, Contabilizado_cliente, REG_numerarios )'
      
        'SELECT :qempresa as qemp, :qfilial as qfil, :qProcesso as qpro, ' +
        ':qCredito as qcre, :qdata as qdat, :qValor as qval, "0" as qccon' +
        ', "0" as qmovccon, "SIM" as contab,  1 as contabcli, :QREG_numer' +
        'arios as qregnum;')
    Left = 560
    Top = 89
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qProcesso'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qCredito'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qdata'
        ParamType = ptUnknown
        Value = '11/11/1111'
      end
      item
        DataType = ftString
        Name = 'qValor'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'QREG_numerarios'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object q_exccred: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM Creditos_Processos'
      'WHERE Creditos_Processos.REG_numerarios = :qregnum;')
    Left = 594
    Top = 90
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qregnum'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object SMTP: TIdSMTP
    MaxLineAction = maException
    SendBufferSize = 10032768
    Host = '172.19.92.48'
    Port = 25
    AuthenticationType = atLogin
    Left = 88
  end
  object mailmessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    From.Address = 'gustavo.guedes@logistic-ms.com.br'
    From.Name = 'gustavo paiva guedes e silva'
    From.Text = 'gustavo paiva guedes e silva <gustavo.guedes@logistic-ms.com.br>'
    Recipients = <>
    ReplyTo = <>
    Left = 120
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 152
  end
  object q_temparasol: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Parametros_Sol_Numerarios.Importador, Parametros_Sol_Nume' +
        'rarios.Importador2, Importadores.Razao_Social AS impnome'
      
        'FROM Parametros_Sol_Numerarios INNER JOIN Importadores ON Parame' +
        'tros_Sol_Numerarios.Importador2 = Importadores.Codigo'
      
        'GROUP BY Parametros_Sol_Numerarios.Importador, Parametros_Sol_Nu' +
        'merarios.Importador2, Importadores.Razao_Social'
      'HAVING (((Parametros_Sol_Numerarios.Importador)=:qimp));')
    Left = 226
    Top = 170
    ParamData = <
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '2'
      end>
    object q_temparasolImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Parametros_Sol_Numerarios.Importador'
      Size = 4
    end
    object q_temparasolImportador2: TStringField
      FieldName = 'Importador2'
      Origin = 'DBNMSCOMEX.Parametros_Sol_Numerarios.Importador2'
      Size = 4
    end
    object q_temparasolimpnome: TStringField
      FieldName = 'impnome'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
  end
  object q_paramsolnum: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Parametros_Sol_Numerarios.Importador, Parametros_Sol_Nume' +
        'rarios.Numerario, Parametros_Sol_Numerarios.Importador2, Importa' +
        'dores.Razao_Social AS impnome'
      
        'FROM Parametros_Sol_Numerarios LEFT JOIN Importadores ON Paramet' +
        'ros_Sol_Numerarios.Importador2 = Importadores.Codigo'
      'WHERE (((Parametros_Sol_Numerarios.Importador)=:qimp));')
    Left = 322
    Top = 170
    ParamData = <
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '2'
      end>
    object q_paramsolnumImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Parametros_Sol_Numerarios.Importador'
      Size = 4
    end
    object q_paramsolnumNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Parametros_Sol_Numerarios.Numerario'
      Size = 4
    end
    object q_paramsolnumImportador2: TStringField
      FieldName = 'Importador2'
      Origin = 'DBNMSCOMEX.Parametros_Sol_Numerarios.Importador2'
      Size = 4
    end
    object q_paramsolnumimpnome: TStringField
      FieldName = 'impnome'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
  end
  object qrySupervisores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' distinct Supervisor'
      'from '
      ' Usuarios '
      'where '
      ' Supervisor <> '#39#39
      ' and Supervisor=:Usuario;')
    Left = 77
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryUsuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' u1.Usuario,'
      ' u1.Supervisor,'
      ' u2.Senha as Senha1,'
      ' u1.Senha as Senha2,'
      ' u2.Nome_Completo as Nome1,'
      ' u1.Nome_Completo as Nome2'
      'from'
      ' Usuarios u1'
      ' inner join Usuarios u2 ON u2.Usuario = u1.Supervisor '
      'where'
      ' u1.Usuario =:Usuario')
    Left = 189
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object q_Processo_Tem_DI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select NR_DECLARACAO_IMP from Processos where Codigo =:pCodigo')
    Left = 506
    Top = 218
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    object q_Processo_Tem_DINR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
  end
  object q_Informou_FollowDI_Enviada: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Sequencial from Followup where Codevento = '#39'1021'#39' and Cod' +
        'obs = '#39'1201'#39
      'and processo =:pProcesso')
    Left = 370
    Top = 226
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object q_Informou_FollowDI_EnviadaSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
  end
  object qryEmail_Auto: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ''
      'insert into Email_auto'
      ' (Programa'
      ' ,Assunto'
      ' ,Titulo'
      ' ,De'
      ' ,Para'
      ' ,CC'
      ' ,CCO'
      ' ,Body'
      ' ,Anexo'
      ' ,HTML'
      ' ,Data'
      ' ,Hora)'
      ' values'
      '(:Programa'
      ' ,:Assunto'
      ' ,:Titulo'
      ' ,:De'
      ' ,:Para'
      ' ,:CC'
      ' ,:CCO'
      ' ,:Body'
      ' ,:Anexo'
      ' ,:HTML'
      ' ,:Data'
      ' ,:Hora)')
    Left = 347
    Top = 382
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Programa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Assunto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'De'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Para'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'CC'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'Body'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Anexo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HTML'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Hora'
        ParamType = ptUnknown
      end>
  end
  object qryAutorizacaoSolicitacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select top 1'
      ' PK_Solicitacao, Status_Atual, Solicitante, Autorizador_Atual'
      'from '
      ' Controle_Numerarios_Solicitacao'
      'where'
      ' FK_MsNumero =:Processo'
      'order by'
      ' PK_Solicitacao desc ')
    Left = 82
    Top = 138
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qryGravaEnvioSolicitacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'insert into Controle_Numerarios_Movimentos (FK_Solicitacao,Data_' +
        'Movimento,Hora_Movimento,Autorizador,[Status],Enviado_Por,Cancel' +
        'ado_por)'
      ' select'
      ' PK_Solicitacao,'
      ' GETDATE(),'
      ' CAST(GETDATE()AS TIME),'
      ' Autorizador_Atual,'
      ' :Status,'
      ' :Usuario,'
      ' :Cancelado_por'
      'from '
      ' Controle_Numerarios_Solicitacao'
      ' where PK_Solicitacao =:PK_Solicitacao')
    Left = 66
    Top = 210
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cancelado_por'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_Solicitacao'
        ParamType = ptUnknown
      end>
  end
  object qryUpdateSolicitacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Controle_Numerarios_Solicitacao set status_Atual =:Status' +
        ','
      'Cancelado_por=:Cancelado_por,OBS_Cancelamento =:OBS_Cancelamento'
      'where pk_solicitacao=:solicitacao')
    Left = 170
    Top = 106
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cancelado_por'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS_Cancelamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'solicitacao'
        ParamType = ptUnknown
      end>
  end
  object qrySelectAnexo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select fk_processo from Processos_Anexo'
      'where FK_Processo=:Processo')
    Left = 448
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qrFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Faturas where Processo =:qproc')
    Left = 408
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'qproc'
        ParamType = ptInput
      end>
    object qrFaturasEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrFaturasFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrFaturasProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrFaturasCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 30
    end
    object qrFaturasExportador: TStringField
      FieldName = 'Exportador'
      FixedChar = True
      Size = 4
    end
    object qrFaturasIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object qrFaturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      FixedChar = True
      Size = 1
    end
    object qrFaturasCondicao: TStringField
      FieldName = 'Condicao'
      FixedChar = True
      Size = 50
    end
    object qrFaturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object qrFaturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object qrFaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object qrFaturasAcrescimos_Reducoes: TIntegerField
      FieldName = 'Acrescimos_Reducoes'
    end
    object qrFaturasMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object qrFaturasCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      FixedChar = True
      Size = 1
    end
    object qrFaturasMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      FixedChar = True
      Size = 2
    end
    object qrFaturasModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      FixedChar = True
      Size = 2
    end
    object qrFaturasInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      FixedChar = True
      Size = 2
    end
    object qrFaturasTipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      FixedChar = True
      Size = 1
    end
    object qrFaturasNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      FixedChar = True
      Size = 3
    end
    object qrFaturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      FixedChar = True
      Size = 3
    end
    object qrFaturasValor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
    end
    object qrFaturasIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      FixedChar = True
      Size = 1
    end
    object qrFaturasTaxa_de_Juros: TIntegerField
      FieldName = 'Taxa_de_Juros'
    end
    object qrFaturasCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      FixedChar = True
      Size = 4
    end
    object qrFaturasValor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
    end
    object qrFaturasROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object qrFaturasPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object qrFaturasDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
    end
    object qrFaturasDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object qrFaturasSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      FixedChar = True
      Size = 1
    end
    object qrFaturasCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      FixedChar = True
      Size = 10
    end
    object qrFaturasSALDO_CAMBIO: TFloatField
      FieldName = 'SALDO_CAMBIO'
    end
    object qrFaturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object qrFaturasPeso_Libra: TIntegerField
      FieldName = 'Peso_Libra'
    end
    object qrFaturasContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object qrFaturasLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object qrFaturasFK_Plataforma: TIntegerField
      FieldName = 'FK_Plataforma'
    end
  end
  object qryInsereRegistroSolicitacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Controle_numerarios'
      '           (Processo'
      '           ,Cliente'
      '           ,Data_Solicitacao'
      '           ,Total'
      '           ,Solicitante'
      '           ,Autorizador)'
      '     VALUES'
      '           (:Processo'
      '           ,:Cliente'
      '           ,:Data_Solicitacao'
      '           ,:Total'
      '           ,:Solicitante'
      '           ,:Autorizador)'
      '')
    Left = 80
    Top = 401
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data_Solicitacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Solicitante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Autorizador'
        ParamType = ptUnknown
      end>
  end
  object qryNumerarioObrigatorio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' FK_Tipo_Processo,'
      ' FK_Tipo_Declaracao,'
      ' FK_Tipo_Numerario'
      'from'
      ' Tipos_Numerario_Obrigatorio'
      'where '
      ' FK_Tipo_Processo =:tpProcesso and '
      ' Rtrim(FK_Tipo_Declaracao) =:tpDeclaracao')
    Left = 560
    Top = 393
    ParamData = <
      item
        DataType = ftString
        Name = 'tpProcesso'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'tpDeclaracao'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qryNumerarioObrigatorioFK_Tipo_Processo: TStringField
      FieldName = 'FK_Tipo_Processo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario_Obrigatorio.FK_Tipo_Processo'
      FixedChar = True
      Size = 10
    end
    object qryNumerarioObrigatorioFK_Tipo_Declaracao: TStringField
      FieldName = 'FK_Tipo_Declaracao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario_Obrigatorio.FK_Tipo_Declaracao'
      FixedChar = True
      Size = 10
    end
    object qryNumerarioObrigatorioFK_Tipo_Numerario: TStringField
      FieldName = 'FK_Tipo_Numerario'
      Origin = 'DBNMSCOMEX.Tipos_Numerario_Obrigatorio.FK_Tipo_Numerario'
      FixedChar = True
      Size = 10
    end
  end
end
