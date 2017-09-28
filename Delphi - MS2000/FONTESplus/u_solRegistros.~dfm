object f_solRegistros: Tf_solRegistros
  Left = 191
  Top = 129
  BorderStyle = bsSingle
  Caption = 'Controle de Solicitação de Registros'
  ClientHeight = 617
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = -1
    Top = 0
    Width = 789
    Height = 615
    BevelOuter = bvNone
    Color = 8147753
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = -1
      Width = 784
      Height = 262
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = clGray
      ParentBiDiMode = False
      TabOrder = 0
      object Label16: TLabel
        Left = 11
        Top = 31
        Width = 37
        Height = 13
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 215
        Top = 31
        Width = 53
        Height = 13
        Caption = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 76
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 399
        Top = 76
        Width = 61
        Height = 13
        Caption = 'Solicitante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 276
        Top = 76
        Width = 30
        Height = 13
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 780
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Solicitações de Autorização de Registro'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 7
        Top = 117
        Width = 674
        Height = 142
        Hint = 'Para imprimir dê 2 cliques!'
        Color = clWhite
        DataSource = dsSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'Código'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REF_MS'
            Title.Caption = 'Ref. MS'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Status'
            Width = 121
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Chegada_URF_Cheg'
            Title.Alignment = taCenter
            Title.Caption = 'Data Chegada'
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Solicitante'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_requisicao'
            Title.Alignment = taCenter
            Title.Caption = 'Data Requisição'
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'autorizador'
            Title.Alignment = taCenter
            Title.Caption = 'Autorizador'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_autorizacao'
            Title.Alignment = taCenter
            Title.Caption = 'Data autorização'
            Visible = True
          end>
      end
      object cbVerTodos: TCheckBox
        Left = 126
        Top = 31
        Width = 78
        Height = 13
        Caption = 'Ver Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = cbVerTodosClick
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 11
        Top = 46
        Width = 194
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsListaStatus
        TabOrder = 3
        OnClick = DBLookupComboBox2Click
      end
      object edtFiltro: TEdit
        Left = 214
        Top = 46
        Width = 121
        Height = 21
        Enabled = False
        MaxLength = 8
        TabOrder = 4
        OnChange = edtFiltroChange
      end
      object cbFiltrar: TCheckBox
        Left = 283
        Top = 31
        Width = 54
        Height = 13
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = cbFiltrarClick
      end
      object edFiltroCliente: TEdit
        Left = 11
        Top = 91
        Width = 256
        Height = 21
        Enabled = False
        MaxLength = 8
        ReadOnly = True
        TabOrder = 6
        OnChange = edFiltroClienteChange
      end
      object cbFiltCliente: TCheckBox
        Left = 214
        Top = 76
        Width = 54
        Height = 13
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = cbFiltClienteClick
      end
      object cbFiltSolicitante: TCheckBox
        Left = 481
        Top = 76
        Width = 53
        Height = 13
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = cbFiltSolicitanteClick
      end
      object dbcbFiltroSolicitante: TDBLookupComboBox
        Left = 397
        Top = 91
        Width = 137
        Height = 21
        KeyField = 'USUARIO'
        ListField = 'NOME_COMPLETO'
        ListSource = dsListaUsuarios
        TabOrder = 9
        OnClick = dbcbFiltroSolicitanteClick
      end
      object cbFiltValor: TCheckBox
        Left = 336
        Top = 76
        Width = 51
        Height = 13
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = cbFiltValorClick
      end
      object comboFiltValor: TComboBox
        Left = 276
        Top = 91
        Width = 113
        Height = 21
        Style = csDropDownList
        Enabled = False
        ItemHeight = 13
        TabOrder = 11
        OnChange = comboFiltValorChange
        Items.Strings = (
          'Até 1.000'
          'Até 5.000'
          'Até 10.000'
          'Até 20.000'
          'Até 30.000'
          'Até 40.000'
          'Até 50.000'
          'Até 100.000')
      end
      object pnlBotoesSol: TPanel
        Left = 686
        Top = 26
        Width = 96
        Height = 234
        Align = alRight
        BevelOuter = bvNone
        Color = 8147753
        TabOrder = 12
        object BitBtn1: TBitBtn
          Left = 12
          Top = 98
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn1Click
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
        object btnSolicita: TBitBtn
          Left = 12
          Top = 167
          Width = 75
          Height = 25
          Hint = 'Solicita Autorização'
          Caption = '&Solicitar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnSolicitaClick
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
        object btnEmissao: TBitBtn
          Left = 12
          Top = 200
          Width = 75
          Height = 25
          Caption = '&Autorizar'
          Enabled = False
          TabOrder = 2
          Visible = False
          OnClick = btnEmissaoClick
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
        object btnCancSol: TBitBtn
          Left = 12
          Top = 133
          Width = 75
          Height = 25
          Hint = 'Cancela Solicitação'
          Caption = '&Cancelar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnCancSolClick
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
        object btnReativar: TBitBtn
          Left = 12
          Top = 133
          Width = 75
          Height = 25
          Hint = 'Reativa Solicitação'
          Caption = '&Reativar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Visible = False
          OnClick = btnReativarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF5555555555555C055555
            55555555588FF55555555555CCC05555555555558888F55555555555CCC05555
            555555558888FF555555555CCCCC05555555555888888F55555555CCCCCC0555
            5555558888888FF5555558CC05CCC05555555888858888F555558C05555CC055
            55558885555888FF55555555555CCC05555555555558888F555555555555CC05
            555555555555888FF555555555555CC05555555555555888FF5555555555558C
            05555555555555888FF5555555555558C05555555555555888FF555555555555
            5CC0555555555555588855555555555555555555555555555555}
          NumGlyphs = 2
        end
        object btnCanCheque: TBitBtn
          Left = 13
          Top = 200
          Width = 75
          Height = 25
          Hint = 'Cancela Solicitação de Autorização'
          Caption = 'Canc&elar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Visible = False
          OnClick = btnCanChequeClick
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
    end
    object C_CLIENTE: TBitBtn
      Left = 652
      Top = 520
      Width = 131
      Height = 25
      Caption = 'CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = C_CLIENTEClick
      Kind = bkRetry
    end
    object panel6: TPanel
      Left = 649
      Top = 274
      Width = 97
      Height = 121
      BevelOuter = bvNone
      Color = 8147753
      TabOrder = 2
      object BitBtn4: TBitBtn
        Left = 10
        Top = 96
        Width = 75
        Height = 25
        Hint = 'Cancela Solicitação'
        Caption = '&Cancelar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn4Click
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
      object BitBtn3: TBitBtn
        Left = 10
        Top = 24
        Width = 75
        Height = 25
        Caption = '&Alterar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn3Click
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
      object BitBtn5: TBitBtn
        Left = 10
        Top = 60
        Width = 75
        Height = 25
        Caption = '&Salvar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn5Click
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
    end
  end
  object b_di: TBitBtn
    Left = 634
    Top = 450
    Width = 131
    Height = 25
    Caption = 'DI REGISTRADA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = b_diClick
    Kind = bkOK
  end
  object b_con: TBitBtn
    Left = 634
    Top = 481
    Width = 131
    Height = 25
    Caption = 'CONTABILIZAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = b_conClick
    Kind = bkRetry
  end
  object pnlDados: TPanel
    Left = 25
    Top = 272
    Width = 581
    Height = 296
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BiDiMode = bdLeftToRight
    Color = clGray
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    OnEnter = dbeCIFEnter
    OnExit = dbeCIFExit
    object Label4: TLabel
      Left = 8
      Top = 46
      Width = 57
      Height = 13
      Caption = 'Valor CIF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 68
      Width = 21
      Height = 13
      Caption = 'I.I.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 91
      Width = 33
      Height = 13
      Caption = 'I.P.I.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 111
      Width = 80
      Height = 13
      Caption = 'Tx. Siscomex:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 135
      Width = 71
      Height = 13
      Caption = 'PIS/PASEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 159
      Width = 50
      Height = 13
      Caption = 'COFINS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 273
      Width = 79
      Height = 13
      Caption = 'Base Cálculo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 205
      Width = 51
      Height = 13
      Caption = 'I.C.M.S.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 227
      Width = 75
      Height = 13
      Caption = 'I.C.M.S.(1%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 227
      Top = 89
      Width = 75
      Height = 13
      Caption = 'Embarcação:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 8
      Top = 250
      Width = 88
      Height = 13
      Caption = 'Total Impostos:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblSaldo: TLabel
      Left = 465
      Top = 45
      Width = 5
      Height = 13
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label32: TLabel
      Left = 8
      Top = 181
      Width = 67
      Height = 13
      Caption = 'Valor Total:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 227
      Top = 61
      Width = 353
      Height = 23
      BevelOuter = bvNone
      Color = clGray
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      object Label15: TLabel
        Left = 0
        Top = 5
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeCliente: TDBEdit
        Left = 112
        Top = 1
        Width = 233
        Height = 21
        Color = clWhite
        DataField = 'Cliente'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = dbeCIFEnter
        OnExit = dbeCIFExit
      end
    end
    object Panel2: TPanel
      Left = 212
      Top = 110
      Width = 273
      Height = 185
      BevelOuter = bvNone
      Color = clGray
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object Label2: TLabel
        Left = 16
        Top = 27
        Width = 65
        Height = 13
        Caption = 'Solicitante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 16
        Top = 3
        Width = 55
        Height = 13
        Caption = 'REF. MS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 50
        Width = 99
        Height = 13
        Caption = 'Data Solicitação:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 16
        Top = 96
        Width = 41
        Height = 13
        Caption = 'Status:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 16
        Top = 74
        Width = 69
        Height = 13
        Caption = 'Autorizador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeRef_MS: TDBEdit
        Left = 127
        Top = -1
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'REF_MS'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = dbeCIFEnter
        OnExit = dbeCIFExit
      end
      object dbeSolicitante: TDBEdit
        Left = 127
        Top = 22
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'Solicitante'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = dbeCIFEnter
        OnExit = dbeCIFExit
      end
      object dbeData_requisicao: TDBEdit
        Left = 127
        Top = 45
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'Data_requisicao'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnEnter = dbeCIFEnter
        OnExit = dbeCIFExit
      end
      object dbeAutorizador: TDBEdit
        Left = 127
        Top = 68
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'autorizador'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = dbeCIFEnter
        OnExit = dbeCIFExit
      end
      object dbeStatus: TDBEdit
        Left = 127
        Top = 91
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'Descricao'
        DataSource = dsSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = dbeCIFEnter
        OnExit = dbeCIFExit
      end
    end
    object dbeDescricao: TDBEdit
      Left = 339
      Top = 86
      Width = 233
      Height = 21
      Color = clWhite
      DataField = 'Embarcacao'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbeCIF: TDBEdit
      Left = 99
      Top = 40
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'Valor_CIF'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbeII: TDBEdit
      Left = 99
      Top = 63
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'II'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbeIPI: TDBEdit
      Left = 99
      Top = 86
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'IPI'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbeTxSisco: TDBEdit
      Left = 99
      Top = 109
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'tx_siscomex'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbePIS_PASEP: TDBEdit
      Left = 99
      Top = 132
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'pis_pasep'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbeCOFINS: TDBEdit
      Left = 99
      Top = 155
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'COFINS'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbeBC: TDBEdit
      Left = 99
      Top = 270
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'base_calculo'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbeICMS: TDBEdit
      Left = 99
      Top = 201
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'ICMS'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnEnter = dbeCIFEnter
      OnExit = dbeCIFExit
    end
    object dbeICMS1: TDBEdit
      Left = 99
      Top = 224
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'ICMS_1'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBCheckBox1: TDBCheckBox
      Left = 8
      Top = 4
      Width = 185
      Height = 17
      Caption = 'Contabilizado pelo Cliente'
      DataField = 'Contabilizado_cliente'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
      OnClick = DBCheckBox1Exit
      OnExit = DBCheckBox1Exit
    end
    object DBCheckBox2: TDBCheckBox
      Left = 8
      Top = 20
      Width = 273
      Height = 17
      Caption = 'Contabilizado pelo Cliente ( ICMS e FECP )'
      DataField = 'Contabilizado_cliente_icms'
      DataSource = dsTbSolReg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      ValueChecked = '1'
      ValueUnchecked = '0'
      OnClick = DBCheckBox1Exit
      OnExit = DBCheckBox1Exit
    end
    object Panel5: TPanel
      Left = 226
      Top = 223
      Width = 239
      Height = 70
      BevelOuter = bvNone
      Color = clGray
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      object Label35: TLabel
        Left = 3
        Top = 5
        Width = 41
        Height = 13
        Caption = 'Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 5
        Top = 53
        Width = 27
        Height = 13
        Caption = 'C/C:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 3
        Top = 29
        Width = 51
        Height = 13
        Caption = 'Agência:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEBANCO: TDBEdit
        Left = 113
        Top = 1
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'Banco'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 0
      end
      object DBEAGENCIA: TDBEdit
        Left = 113
        Top = 24
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'Agencia'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 1
      end
      object DBECC: TDBEdit
        Left = 113
        Top = 47
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'C_C'
        DataSource = dsTbSolReg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 2
      end
    end
    object edSaldo: TEdit
      Left = 340
      Top = 40
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 15
    end
    object edValorTotal: TEdit
      Left = 99
      Top = 247
      Width = 121
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object dbeValTot: TDBEdit
      Left = 99
      Top = 178
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'valor_total'
      DataSource = dsTbSolReg
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
  end
  object pnlEmissao: TPanel
    Left = 241
    Top = 32
    Width = 448
    Height = 170
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    Color = 8147753
    TabOrder = 5
    Visible = False
    object Label22: TLabel
      Left = 301
      Top = 78
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
      Left = 184
      Top = 77
      Width = 47
      Height = 13
      Caption = 'Agência'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 11
      Top = 76
      Width = 37
      Height = 13
      Caption = 'Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 9
      Top = 34
      Width = 23
      Height = 13
      Caption = 'BC/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 34
      Top = 34
      Width = 18
      Height = 13
      Caption = 'AG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 53
      Top = 34
      Width = 23
      Height = 13
      Caption = '/CC'
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
      Width = 440
      Height = 26
      Align = alTop
      Caption = 'Emissão de Autorização de Registros'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Panel15: TPanel
      Left = 4
      Top = 128
      Width = 440
      Height = 38
      Align = alBottom
      BevelOuter = bvNone
      Color = 8147753
      TabOrder = 5
      object BitBtn12: TBitBtn
        Left = 231
        Top = 3
        Width = 70
        Height = 25
        Hint = 'Cancelar inclusão do patrimônio'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn12Click
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
      object BitBtn13: TBitBtn
        Left = 147
        Top = 3
        Width = 70
        Height = 25
        Hint = 'Confirmar inclusão do patrimônio'
        Caption = '&OK'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn13Click
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
    object DBEdit10: TDBEdit
      Left = 179
      Top = 91
      Width = 110
      Height = 21
      DataField = 'Agencia'
      DataSource = dsTbSolReg
      Enabled = False
      TabOrder = 2
    end
    object DBEdit11: TDBEdit
      Left = 11
      Top = 91
      Width = 158
      Height = 21
      DataField = 'Banco'
      DataSource = dsTbSolReg
      Enabled = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 299
      Top = 91
      Width = 134
      Height = 21
      DataField = 'C_C'
      DataSource = dsTbSolReg
      Enabled = False
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 48
      Width = 425
      Height = 21
      KeyField = 'Conta'
      ListField = 'BAC'
      ListSource = dsConta
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
  end
  object pnlInclusaoItens: TPanel
    Left = 160
    Top = 97
    Width = 481
    Height = 72
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    Color = 8147753
    TabOrder = 1
    Visible = False
    OnExit = pnlInclusaoItensExit
    object Label26: TLabel
      Left = 10
      Top = 42
      Width = 137
      Height = 13
      Caption = 'Digite o Nº do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel10: TPanel
      Left = 4
      Top = 4
      Width = 473
      Height = 26
      Align = alTop
      Caption = 'Inclusão de Solicitações'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtProc: TMaskEdit
      Left = 152
      Top = 38
      Width = 65
      Height = 21
      MaxLength = 8
      TabOrder = 1
      OnChange = edtProcChange
    end
    object Panel11: TPanel
      Left = 4
      Top = 72
      Width = 473
      Height = 35
      BevelOuter = bvNone
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
  end
  object p_autoriza: TPanel
    Left = 252
    Top = 173
    Width = 349
    Height = 112
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    Color = 8147753
    TabOrder = 6
    Visible = False
    OnExit = cancelsenhaClick
    object Panel14: TPanel
      Left = 4
      Top = 4
      Width = 341
      Height = 26
      Align = alTop
      Caption = 'Senha de Autorização de Registro'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel16: TPanel
      Left = 4
      Top = 75
      Width = 341
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      Color = 8147753
      TabOrder = 1
      object cancelsenha: TBitBtn
        Left = 175
        Top = 0
        Width = 74
        Height = 25
        Hint = 'Cancelar inclusão do patrimônio'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = cancelsenhaClick
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
      object oksenha: TBitBtn
        Left = 83
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Confirmar inclusão do patrimônio'
        Caption = '&OK'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = oksenhaClick
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
    object me_senha: TMaskEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object pnlBrowser: TPanel
    Left = 755
    Top = 325
    Width = 569
    Height = 201
    BevelWidth = 2
    TabOrder = 4
    Visible = False
    object WebBrowser1: TWebBrowser
      Left = 2
      Top = 2
      Width = 565
      Height = 448
      Align = alTop
      TabOrder = 0
      ControlData = {
        4C000000653A00004D2E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object pnlBroConEmi: TPanel
      Left = 2
      Top = 91
      Width = 565
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object BitBtn6: TBitBtn
        Left = 394
        Top = 5
        Width = 70
        Height = 25
        Hint = 'Cancelar Solicitação'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn6Click
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
      object btnEmitir: TBitBtn
        Left = 317
        Top = 5
        Width = 70
        Height = 25
        Caption = '&Autorizar'
        TabOrder = 1
        OnClick = btnEmitirClick
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
    object pnlImprimir: TPanel
      Left = 2
      Top = 127
      Width = 565
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object BitBtn7: TBitBtn
        Left = 317
        Top = 5
        Width = 70
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 0
        OnClick = BitBtn7Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object BitBtn9: TBitBtn
        Left = 394
        Top = 5
        Width = 70
        Height = 25
        Hint = 'Cancelar Solicitação'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn9Click
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
    object pnlBroConSol: TPanel
      Left = 2
      Top = 163
      Width = 565
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object BitBtn10: TBitBtn
        Left = 317
        Top = 6
        Width = 70
        Height = 25
        Caption = '&Solicitar'
        TabOrder = 0
        OnClick = BitBtn10Click
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
      object BitBtn11: TBitBtn
        Left = 394
        Top = 6
        Width = 70
        Height = 25
        Hint = 'Cancelar Solicitação'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn11Click
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
  end
  object pnlAguarde: TPanel
    Left = 0
    Top = 184
    Width = 201
    Height = 73
    Caption = 'Aguarde... Enviando Email!'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object pnl12: TPanel
    Left = 272
    Top = 176
    Width = 321
    Height = 161
    Color = clBackground
    TabOrder = 2
    Visible = False
    object Label27: TLabel
      Left = 56
      Top = 37
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 32
      Width = 273
      Height = 73
      Caption = 'Tipo de Declaração '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Consumo'
        'Admissão Temporária'
        'Consumo e Admissão Temporária (1 DI)')
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 72
      Top = 115
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 160
      Top = 115
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object pnlLocalizar: TPanel
    Left = 744
    Top = 168
    Width = 401
    Height = 233
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BiDiMode = bdLeftToRight
    BorderWidth = 1
    ParentBiDiMode = False
    TabOrder = 10
    Visible = False
    object Label7: TLabel
      Left = 16
      Top = 34
      Width = 66
      Height = 13
      Caption = 'Razão Social:'
    end
    object btnOK: TBitBtn
      Left = 128
      Top = 196
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = btnOKClick
      Kind = bkOK
    end
    object edtLocalizar: TEdit
      Left = 16
      Top = 48
      Width = 369
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtLocalizarChange
      OnEnter = edtLocalizarChange
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 80
      Width = 369
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
          FieldName = 'Nome_Grupo'
          Title.Alignment = taCenter
          Title.Caption = 'Razão Social'
          Width = 314
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 5
      Top = 5
      Width = 391
      Height = 24
      Align = alTop
      Caption = 'Localizar Importador'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btnSair: TBitBtn
      Left = 208
      Top = 196
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
      Kind = bkCancel
    end
  end
  object qrProcessos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Tipo_Declaracao AS decl, Processos.Data, Imp' +
        'ortadores.Razao_Social AS Cliente, Processos.Valor_FOB, Processo' +
        's.Valor_CIF, Processos.Valor_FOBC, Processos.Valor_CIFC, Process' +
        'os_registro_impostos.II, Processos_registro_impostos.IPI, Proces' +
        'sos_registro_impostos.Taxa_SISCOMEX, Processos_registro_impostos' +
        '.IIc, Processos_registro_impostos.IPIc, Processos_registro_impos' +
        'tos.Taxa_SISCOMEXc, Processos.NR_DECLARACAO_IMP, Processos.NR_DE' +
        'CLARACAO_IMPC, Conhecimento_Processo.URF_chegada, Conhecimento_P' +
        'rocesso.Data_Chegada_URF_Cheg, Processos.DT_DESEMBARACO, Conheci' +
        'mento_Processo.URF_Despacho, Locais_Inventario.Descricao, Proces' +
        'sos.saldo_faturamento as saldo, Processos.importador , Processos' +
        '.BASE_ICMS, Conhecimento_Processo.Data_Chegada_URF_Cheg'
      
        'FROM ((((Parametros INNER JOIN Processos ON (Parametros.Filial =' +
        ' Processos.Filial) AND (Parametros.Empresa = Processos.Empresa))' +
        ' LEFT JOIN Importadores ON (Processos.Importador = Importadores.' +
        'Codigo) AND (Processos.Filial = Importadores.Filial) AND (Proces' +
        'sos.Empresa = Importadores.Empresa)) LEFT JOIN Processos_registr' +
        'o_impostos ON (Processos.Codigo = Processos_registro_impostos.Pr' +
        'ocesso) AND (Processos.Filial = Processos_registro_impostos.Fili' +
        'al) AND (Processos.Empresa = Processos_registro_impostos.Empresa' +
        ')) LEFT JOIN Conhecimento_Processo ON (Processos.Empresa = Conhe' +
        'cimento_Processo.Empresa) AND (Processos.Filial = Conhecimento_P' +
        'rocesso.Filial) AND (Processos.Codigo = Conhecimento_Processo.Pr' +
        'ocesso)) LEFT JOIN Locais_Inventario ON (Processos.Contrato = Lo' +
        'cais_Inventario.Contrato) AND (Processos.Importador = Locais_Inv' +
        'entario.Importador) AND (Processos.Empresa = Locais_Inventario.E' +
        'mpresa) AND (Processos.Filial = Locais_Inventario.Filial) AND (P' +
        'rocessos.Local_Inventario = Locais_Inventario.Local)'
      'ORDER BY Processos.Codigo')
    Left = 1128
    Top = 208
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrProcessosdecl: TStringField
      FieldName = 'decl'
      Size = 2
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object qrProcessosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object qrProcessosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object qrProcessosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object qrProcessosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object qrProcessosII: TFloatField
      FieldName = 'II'
    end
    object qrProcessosIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrProcessosTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object qrProcessosIIc: TFloatField
      FieldName = 'IIc'
    end
    object qrProcessosIPIc: TFloatField
      FieldName = 'IPIc'
    end
    object qrProcessosTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object qrProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object qrProcessosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object qrProcessosURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object qrProcessosData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrProcessosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object qrProcessosURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object qrProcessosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object qrProcessossaldo: TFloatField
      FieldName = 'saldo'
    end
    object qrProcessosimportador: TStringField
      FieldName = 'importador'
      Size = 4
    end
    object qrProcessosBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 832
    Top = 408
  end
  object ds_propis: TDataSource
    DataSet = q_propis
    Left = 1144
    Top = 408
  end
  object q_piscofinstrib: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.A' +
        'dicao, Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_IPI, TAB_REG_TRIBUTARIO.DESCRICAO, ' +
        'Tributacao_Item_Fatura.Tratamento_Tributario'
      
        'FROM Tributacao_Item_Fatura INNER JOIN TAB_REG_TRIBUTARIO ON Tri' +
        'butacao_Item_Fatura.Regime_Tributacao_II = TAB_REG_TRIBUTARIO.CO' +
        'DIGO'
      
        'GROUP BY Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura' +
        '.Adicao, Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao' +
        '_Item_Fatura.Regime_Tributacao_IPI, TAB_REG_TRIBUTARIO.DESCRICAO' +
        ', Tributacao_Item_Fatura.Tratamento_Tributario '
      'HAVING (((Tributacao_Item_Fatura.Processo)=:qpro))'
      'ORDER BY Tributacao_Item_Fatura.Adicao;')
    Left = 992
    Top = 201
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '01132/04'
      end>
    object q_piscofinstribProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      Size = 8
    end
    object q_piscofinstribAdicao: TStringField
      FieldName = 'Adicao'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Adicao'
      Size = 3
    end
    object q_piscofinstribRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_II'
      Size = 1
    end
    object q_piscofinstribRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_IPI'
      Size = 1
    end
    object q_piscofinstribDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_REG_TRIBUTARIO.DESCRICAO'
      Size = 120
    end
    object q_piscofinstribTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Tratamento_Tributario'
      Size = 1
    end
  end
  object dsSolReg: TDataSource
    DataSet = qrSolReg
    Left = 1032
    Top = 408
  end
  object tbSolReg: TTable
    AfterInsert = tbSolRegAfterInsert
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = dsSolReg
    TableName = 'Autorizacao_Registros'
    Left = 1138
    Top = 336
    object tbSolRegEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbSolRegFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbSolRegCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 50
    end
    object tbSolRegData_requisicao: TDateTimeField
      FieldName = 'Data_requisicao'
    end
    object tbSolRegData_autorizacao: TDateTimeField
      FieldName = 'Data_autorizacao'
    end
    object tbSolRegStatus: TIntegerField
      FieldName = 'Status'
    end
    object tbSolRegSolicitante: TStringField
      FieldName = 'Solicitante'
      FixedChar = True
      Size = 10
    end
    object tbSolRegautorizador: TStringField
      FieldName = 'autorizador'
      FixedChar = True
      Size = 10
    end
    object tbSolRegValor_CIF: TStringField
      FieldName = 'Valor_CIF'
      FixedChar = True
      Size = 50
    end
    object tbSolRegII: TStringField
      FieldName = 'II'
      FixedChar = True
      Size = 50
    end
    object tbSolRegIPI: TStringField
      FieldName = 'IPI'
      FixedChar = True
      Size = 50
    end
    object tbSolRegtx_siscomex: TStringField
      FieldName = 'tx_siscomex'
      FixedChar = True
      Size = 50
    end
    object tbSolRegpis_pasep: TStringField
      FieldName = 'pis_pasep'
      FixedChar = True
      Size = 50
    end
    object tbSolRegCOFINS: TStringField
      FieldName = 'COFINS'
      FixedChar = True
      Size = 50
    end
    object tbSolRegvalor_total: TStringField
      FieldName = 'valor_total'
      FixedChar = True
      Size = 50
    end
    object tbSolRegbase_calculo: TStringField
      FieldName = 'base_calculo'
      FixedChar = True
      Size = 50
    end
    object tbSolRegICMS: TStringField
      FieldName = 'ICMS'
      FixedChar = True
      Size = 50
    end
    object tbSolRegICMS_1: TStringField
      FieldName = 'ICMS_1'
      FixedChar = True
      Size = 50
    end
    object tbSolRegCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 50
    end
    object tbSolRegEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 50
    end
    object tbSolRegREF_MS: TStringField
      FieldName = 'REF_MS'
      FixedChar = True
      Size = 50
    end
    object tbSolRegBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 50
    end
    object tbSolRegAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 50
    end
    object tbSolRegC_C: TStringField
      FieldName = 'C_C'
      FixedChar = True
      Size = 50
    end
    object tbSolRegdeclaracao: TStringField
      FieldName = 'declaracao'
      FixedChar = True
      Size = 50
    end
    object tbSolRegdeclaracao_c: TStringField
      FieldName = 'declaracao_c'
      FixedChar = True
      Size = 50
    end
    object tbSolRegContabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object tbSolRegContabilizado_cliente_icms: TIntegerField
      FieldName = 'Contabilizado_cliente_icms'
    end
  end
  object tbParametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 1204
    Top = 336
    object tbParametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object tbParametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object tbParametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object tbParametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object tbParametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object tbParametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object tbParametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object tbParametrosHost: TStringField
      FieldName = 'Host'
      Size = 15
    end
    object tbParametrosVersao: TStringField
      FieldName = 'Versao'
      Size = 50
    end
    object tbParametroskeycrypt: TStringField
      FieldName = 'keycrypt'
      Size = 255
    end
    object tbParametrosHost_smtp: TStringField
      FieldName = 'Host_smtp'
      Size = 15
    end
    object tbParametrosPorta_smtp: TSmallintField
      FieldName = 'Porta_smtp'
    end
    object tbParametrosUsuario_smtp: TStringField
      FieldName = 'Usuario_smtp'
      Size = 30
    end
    object tbParametrosSenha_smtp: TStringField
      FieldName = 'Senha_smtp'
      Size = 16
    end
    object tbParametrosNumerador_Transmittal: TStringField
      FieldName = 'Numerador_Transmittal'
      Size = 8
    end
    object tbParametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Size = 100
    end
    object tbParametrosAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object tbParametrosAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object tbParametrosAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object tbParametrosAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object tbParametrosNumerador_Sol_Cheques: TStringField
      FieldName = 'Numerador_Sol_Cheques'
      Size = 50
    end
    object tbParametrosNumerador_Sol_Reg: TStringField
      FieldName = 'Numerador_Sol_Reg'
      Size = 50
    end
    object tbParametrosNumerador_Sol_Tracla: TStringField
      FieldName = 'Numerador_Sol_Tracla'
      Size = 50
    end
  end
  object dsTbSolReg: TDataSource
    DataSet = tbSolReg
    Left = 968
    Top = 408
  end
  object qrPermissaoAlterar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuarios.Email_aviso_oper, Usuarios.Usuario'
      'FROM Usuarios'
      'WHERE Usuarios.Email_aviso_oper = 1')
    Left = 848
    Top = 72
    object qrPermissaoAlterarEmail_aviso_oper: TSmallintField
      FieldName = 'Email_aviso_oper'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_oper'
    end
    object qrPermissaoAlterarUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
  end
  object tbTipoDec: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'TAB_TIPO_DECLARACAO'
    Left = 1072
    Top = 336
    object tbTipoDecCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object tbTipoDecDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object tbTipoDecSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 4
    end
  end
  object qrVerificaExiste: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DECLARE @TSQL nvarchar(4000),'
      '                  @DEC varchar(10),'
      '                  @REF varchar(10)'
      'BEGIN'
      'SET @DEC = :dec'
      'SET @REF = :ref'
      
        'SET @TSQL = '#39'SELECT Autorizacao_Registros.declaracao, Autorizaca' +
        'o_Registros.REF_MS, Autorizacao_Registros.declaracao_c '#39
      'SET @TSQL = @TSQL + '#39'FROM Autorizacao_Registros '#39
      
        'SET @TSQL = @TSQL + '#39'WHERE Autorizacao_Registros.REF_MS like "'#39' ' +
        '+ @REF + '#39'" '#39
      ''
      ''
      'IF(@DEC = '#39'*'#39')BEGIN'
      
        #9'SET @TSQL = @TSQL + '#39'AND (((Autorizacao_Registros.declaracao_c ' +
        '<> '#39#39'01'#39#39') AND (Autorizacao_Registros.declaracao_c <> '#39#39'05'#39#39')) O' +
        'R (((Autorizacao_Registros.declaracao_c = '#39#39'01'#39#39') OR (Autorizaca' +
        'o_Registros.declaracao_c = '#39#39'05'#39#39')) AND Autorizacao_Registros.St' +
        'atus <> 3)) '#39
      'END'
      'ELSE BEGIN'
      #9'IF (@DEC = '#39'01'#39') BEGIN'
      
        #9#9'SET @TSQL = @TSQL + '#39'AND Autorizacao_Registros.declaracao_c = ' +
        #39#39'01'#39#39' '#39
      #9'END'
      #9'ELSE BEGIN'
      #9#9'IF (@DEC = '#39'05'#39') BEGIN'
      
        #9#9#9'SET @TSQL = @TSQL + '#39'AND Autorizacao_Registros.declaracao_c =' +
        ' '#39#39'05'#39#39' '#39
      #9#9'END'
      #9'END'
      'END'
      ''
      ''
      'EXEC sp_executesql @TSQL'
      'END'
      ' '
      ' ')
    Left = 1208
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ref'
        ParamType = ptUnknown
      end>
    object qrVerificaExistedeclaracao: TStringField
      FieldName = 'declaracao'
      Size = 50
    end
    object qrVerificaExisteREF_MS: TStringField
      FieldName = 'REF_MS'
      Size = 50
    end
    object qrVerificaExistedeclaracao_c: TStringField
      FieldName = 'declaracao_c'
      Size = 50
    end
  end
  object qrFinanc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Usuario, Usuarios.Nome_Completo, Usuarios.Email_' +
        'aviso_finan, Usuarios.Email, Usuarios.Email_aviso_oper'
      'FROM Usuarios'
      
        'WHERE Usuarios.Email_aviso_finan = 1 OR Usuarios.Email_aviso_ope' +
        'r = 2 OR Usuario like :usu')
    Left = 920
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrFinancUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object qrFinancNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object qrFinancEmail_aviso_finan: TSmallintField
      FieldName = 'Email_aviso_finan'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_finan'
    end
    object qrFinancEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrFinancEmail_aviso_oper: TSmallintField
      FieldName = 'Email_aviso_oper'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_oper'
    end
  end
  object qrSolicitante: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Usuarios.Nome_Completo, Usuarios.Email, Usuarios.Usua' +
        'rio, Usuarios.Supervisor, '
      
        '                      Usuarios_1.Nome_Completo AS Supervisor_Nom' +
        'e_Completo, Usuarios_1.Email AS Supervisor_Email, Usuarios_1.Sen' +
        'ha as Supervisor_Senha'
      'FROM         Usuarios INNER JOIN'
      
        '                      Usuarios AS Usuarios_1 ON Usuarios.Supervi' +
        'sor = Usuarios_1.Usuario'
      'WHERE     (Usuarios.Usuario = :usu)')
    Left = 920
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrSolicitanteNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrSolicitanteEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      FixedChar = True
      Size = 50
    end
    object qrSolicitanteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qrSolicitanteSupervisor: TStringField
      FieldName = 'Supervisor'
      Origin = 'DBNMSCOMEX.Usuarios.Supervisor'
      FixedChar = True
      Size = 10
    end
    object qrSolicitanteSupervisor_Nome_Completo: TStringField
      FieldName = 'Supervisor_Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrSolicitanteSupervisor_Email: TStringField
      FieldName = 'Supervisor_Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      FixedChar = True
      Size = 50
    end
    object qrSolicitanteSupervisor_Senha: TStringField
      FieldName = 'Supervisor_Senha'
      Origin = 'DBNMSCOMEX.Usuarios.Senha'
      FixedChar = True
      Size = 10
    end
  end
  object tbProcessosRegImp: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Processos_registro_impostos'
    Left = 848
    Top = 336
    object tbProcessosRegImpEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbProcessosRegImpFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbProcessosRegImpProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbProcessosRegImpBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object tbProcessosRegImpAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object tbProcessosRegImpConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object tbProcessosRegImpII: TFloatField
      FieldName = 'II'
    end
    object tbProcessosRegImpIPI: TFloatField
      FieldName = 'IPI'
    end
    object tbProcessosRegImpTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object tbProcessosRegImpBancoc: TStringField
      FieldName = 'Bancoc'
      Size = 5
    end
    object tbProcessosRegImpAgenciac: TStringField
      FieldName = 'Agenciac'
      Size = 5
    end
    object tbProcessosRegImpConta_Correntec: TStringField
      FieldName = 'Conta_Correntec'
      Size = 8
    end
    object tbProcessosRegImpIIc: TFloatField
      FieldName = 'IIc'
    end
    object tbProcessosRegImpIPIc: TFloatField
      FieldName = 'IPIc'
    end
    object tbProcessosRegImpTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object tbProcessosRegImpEnviou_adcc: TSmallintField
      FieldName = 'Enviou_adcc'
    end
    object tbProcessosRegImpEnviou_adcc_c: TSmallintField
      FieldName = 'Enviou_adcc_c'
    end
    object tbProcessosRegImpEnviou_adr: TSmallintField
      FieldName = 'Enviou_adr'
    end
    object tbProcessosRegImpEnviou_adr_c: TSmallintField
      FieldName = 'Enviou_adr_c'
    end
  end
  object qrSolReg: TQuery
    AfterOpen = qrSolRegAfterOpen
    AfterScroll = qrSolRegAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT     A.Empresa, '
      '           A.Filial, '
      '           A.Codigo AS codigo, '
      '           A.Data_requisicao, '
      '           A.Data_autorizacao, '
      '           A.Status, '
      '           A.Solicitante, '
      '           A.autorizador, '
      '           A.Valor_CIF, '
      '           A.II, '
      '           A.IPI, '
      '           A.tx_siscomex, '
      '           A.pis_pasep, '
      '           A.COFINS, '
      '           A.valor_total, '
      '           A.base_calculo, '
      '           A.ICMS, '
      '           A.ICMS_1, '
      '           A.Cliente, '
      '           A.REF_MS, '
      '           A.Embarcacao, '
      '           A.Banco, '
      '           A.Agencia, '
      '           A.C_C, '
      '           A.declaracao, '
      '           A.declaracao_c, '
      '           AR.Descricao, '
      '           TipoDec.Codigo AS Expr2, '
      '           TipoDec.Descricao AS Expr3, '
      '           TipoDec.SIGLA, '
      '           '
      '           CASE tipoDecC.Descricao WHEN '#39#39' '
      '             THEN tipoDec.Descricao '
      '             ELSE TipoDecC.Descricao            '
      '           END AS Expr1, '
      '           '
      '           usu_sol.Nome_Completo,  '
      '           processos.importador, '
      '           usu_aut.Nome_Completo AS Expr4, '
      '           Processos.DT_REGISTRO_DI, '
      '           A.Contabilizado_cliente, '
      '           A.Contabilizado_cliente_icms, '
      '           usu_sol.Supervisor,'
      '           CP.Data_Chegada_URF_Cheg           '
      
        'FROM       Autorizacao_Registros AS A INNER JOIN Autorizacao_Reg' +
        '_Status AS AR '
      
        '           ON A.Status = AR.Codigo INNER JOIN TAB_TIPO_DECLARACA' +
        'O AS TipoDec '
      
        '           ON A.declaracao = TipoDec.Codigo LEFT OUTER JOIN TAB_' +
        'TIPO_DECLARACAO AS tipoDecC '
      
        '           ON A.declaracao_c = tipoDecC.Codigo LEFT OUTER JOIN U' +
        'suarios AS usu_sol '
      
        '           ON A.Solicitante = usu_sol.Usuario LEFT OUTER JOIN Us' +
        'uarios AS usu_aut '
      
        '           ON A.autorizador = usu_aut.Usuario LEFT OUTER JOIN Pr' +
        'ocessos '
      
        '           ON A.REF_MS = Processos.Codigo LEFT OUTER JOIN Conhec' +
        'imento_Processo CP'
      '           ON PROCESSOS.Empresa = CP.Empresa AND'
      '                 PROCESSOS.Filial  = CP.Filial AND '
      
        '                 PROCESSOS.Codigo  = CP.Processo                ' +
        '                            '
      '')
    Left = 928
    Top = 200
    object qrSolRegEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrSolRegFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrSolRegcodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 50
    end
    object qrSolRegData_requisicao: TDateTimeField
      FieldName = 'Data_requisicao'
    end
    object qrSolRegData_autorizacao: TDateTimeField
      FieldName = 'Data_autorizacao'
    end
    object qrSolRegStatus: TIntegerField
      FieldName = 'Status'
    end
    object qrSolRegSolicitante: TStringField
      FieldName = 'Solicitante'
      FixedChar = True
      Size = 10
    end
    object qrSolRegautorizador: TStringField
      FieldName = 'autorizador'
      FixedChar = True
      Size = 10
    end
    object qrSolRegValor_CIF: TStringField
      FieldName = 'Valor_CIF'
      FixedChar = True
      Size = 50
    end
    object qrSolRegII: TStringField
      FieldName = 'II'
      FixedChar = True
      Size = 50
    end
    object qrSolRegIPI: TStringField
      FieldName = 'IPI'
      FixedChar = True
      Size = 50
    end
    object qrSolRegtx_siscomex: TStringField
      FieldName = 'tx_siscomex'
      FixedChar = True
      Size = 50
    end
    object qrSolRegpis_pasep: TStringField
      FieldName = 'pis_pasep'
      FixedChar = True
      Size = 50
    end
    object qrSolRegCOFINS: TStringField
      FieldName = 'COFINS'
      FixedChar = True
      Size = 50
    end
    object qrSolRegvalor_total: TStringField
      FieldName = 'valor_total'
      FixedChar = True
      Size = 50
    end
    object qrSolRegbase_calculo: TStringField
      FieldName = 'base_calculo'
      FixedChar = True
      Size = 50
    end
    object qrSolRegICMS: TStringField
      FieldName = 'ICMS'
      FixedChar = True
      Size = 50
    end
    object qrSolRegICMS_1: TStringField
      FieldName = 'ICMS_1'
      FixedChar = True
      Size = 50
    end
    object qrSolRegCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 50
    end
    object qrSolRegREF_MS: TStringField
      FieldName = 'REF_MS'
      FixedChar = True
      Size = 50
    end
    object qrSolRegEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 50
    end
    object qrSolRegBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 50
    end
    object qrSolRegAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 50
    end
    object qrSolRegC_C: TStringField
      FieldName = 'C_C'
      FixedChar = True
      Size = 50
    end
    object qrSolRegdeclaracao: TStringField
      FieldName = 'declaracao'
      FixedChar = True
      Size = 50
    end
    object qrSolRegdeclaracao_c: TStringField
      FieldName = 'declaracao_c'
      FixedChar = True
      Size = 50
    end
    object qrSolRegDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object qrSolRegExpr2: TStringField
      FieldName = 'Expr2'
      FixedChar = True
      Size = 2
    end
    object qrSolRegExpr3: TStringField
      FieldName = 'Expr3'
      FixedChar = True
      Size = 120
    end
    object qrSolRegSIGLA: TStringField
      FieldName = 'SIGLA'
      FixedChar = True
      Size = 4
    end
    object qrSolRegExpr1: TStringField
      FieldName = 'Expr1'
      FixedChar = True
      Size = 120
    end
    object qrSolRegNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrSolRegExpr4: TStringField
      FieldName = 'Expr4'
      FixedChar = True
      Size = 45
    end
    object qrSolRegDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object qrSolRegContabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object qrSolRegContabilizado_cliente_icms: TIntegerField
      FieldName = 'Contabilizado_cliente_icms'
    end
    object qrSolRegSupervisor: TStringField
      FieldName = 'Supervisor'
      FixedChar = True
      Size = 10
    end
    object qrSolRegimportador: TStringField
      FieldName = 'importador'
      FixedChar = True
      Size = 4
    end
    object qrSolRegData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
  end
  object qrListaStatus: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Autorizacao_Reg_Status.Descricao, Autorizacao_Reg_Status.' +
        'Codigo'
      'FROM Autorizacao_Reg_Status;')
    Left = 848
    Top = 262
    object qrListaStatusDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Autorizacao_Reg_Status.Descricao'
      Size = 50
    end
    object qrListaStatusCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Autorizacao_Reg_Status.Codigo'
    end
  end
  object dsListaStatus: TDataSource
    DataSet = qrListaStatus
    Left = 904
    Top = 472
  end
  object qrVerificaExiste1DI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Autorizacao_Registros.declaracao, Autorizacao_Registros.R' +
        'EF_MS, Autorizacao_Registros.declaracao_c'
      'FROM Autorizacao_Registros'
      
        'WHERE (Autorizacao_Registros.declaracao<>"12" AND Autorizacao_Re' +
        'gistros.REF_MS Like :ref AND (Autorizacao_Registros.declaracao_c' +
        ' ="" OR Autorizacao_Registros.declaracao_c IS NULL) AND Autoriza' +
        'cao_Registros.Status<>3)'
      
        'OR (Autorizacao_Registros.declaracao like "12" AND Autorizacao_R' +
        'egistros.REF_MS Like :ref AND (Autorizacao_Registros.declaracao_' +
        'c ="" OR Autorizacao_Registros.declaracao_c IS NULL) AND Autoriz' +
        'acao_Registros.Status<>3)'
      
        'OR (Autorizacao_Registros.declaracao <> "12" AND Autorizacao_Reg' +
        'istros.REF_MS Like :ref AND Autorizacao_Registros.declaracao lik' +
        'e :dec )')
    Left = 1064
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'ref'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ref'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ref'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
      end>
    object qrVerificaExiste1DIdeclaracao: TStringField
      FieldName = 'declaracao'
      Origin = 'DBNMSCOMEX.Autorizacao_Registros.declaracao'
      Size = 50
    end
    object qrVerificaExiste1DIREF_MS: TStringField
      FieldName = 'REF_MS'
      Origin = 'DBNMSCOMEX.Autorizacao_Registros.REF_MS'
      Size = 50
    end
    object qrVerificaExiste1DIdeclaracao_c: TStringField
      FieldName = 'declaracao_c'
      Origin = 'DBNMSCOMEX.Autorizacao_Registros.declaracao_c'
      Size = 50
    end
  end
  object qrReativa1DI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Autorizacao_Registros.declaracao, Autorizacao_Registros.d' +
        'eclaracao_c, Autorizacao_Registros.REF_MS'
      'FROM Autorizacao_Registros'
      'WHERE (((Autorizacao_Registros.declaracao)<>"12"))'
      
        'AND Autorizacao_Registros.REF_MS Like :proc and Autorizacao_Regi' +
        'stros.Status <> 3'
      '')
    Left = 1193
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end>
  end
  object qrReativa2DI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DECLARE @TSQL nvarchar(4000),'
      #9'@DEC varchar(10),'
      #9'@REF varchar(10)'
      'BEGIN'
      #9'SET @DEC = :dec'
      #9'SET @REF = :ref'
      
        #9'SET @TSQL = '#39'SELECT Autorizacao_Registros.declaracao, Autorizac' +
        'ao_Registros.declaracao_c, Autorizacao_Registros.REF_MS '#39
      #9'SET @TSQL = @TSQL + '#39'FROM Autorizacao_Registros '#39
      
        #9'SET @TSQL = @TSQL + '#39'WHERE (((Autorizacao_Registros.declaracao)' +
        '='#39#39'12'#39#39')) '#39
      
        #9'SET @TSQL = @TSQL + '#39'AND Autorizacao_Registros.REF_MS Like '#39#39#39' ' +
        '+@REF+ '#39#39#39' and Autorizacao_Registros.Status <> 3 '#39
      #9'IF @DEC = '#39'12'#39' BEGIN'
      
        #9#9'SET @TSQL = @TSQL + '#39' AND (Autorizacao_Registros.declaracao_c ' +
        '='#39#39'05'#39#39' OR Autorizacao_Registros.declaracao_c ='#39#39'01'#39#39') '#39
      #9'END ELSE BEGIN'
      
        #9#9'SET @TSQL = @TSQL + '#39' AND ( Autorizacao_Registros.declaracao_c' +
        ' is null OR Autorizacao_Registros.declaracao_c like '#39#39#39#39') '#39
      #9'END'
      #9'--print @TSQL'
      #9'EXEC sp_executesql @TSQL'
      'END')
    Left = 849
    Top = 137
    ParamData = <
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ref'
        ParamType = ptUnknown
      end>
    object qrReativa2DIdeclaracao: TStringField
      FieldName = 'declaracao'
      Size = 50
    end
    object qrReativa2DIdeclaracao_c: TStringField
      FieldName = 'declaracao_c'
      Size = 50
    end
    object qrReativa2DIREF_MS: TStringField
      FieldName = 'REF_MS'
      Size = 50
    end
  end
  object qrConta: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Autorizacao_Registros_Contas.Banco, Autorizacao_Registros' +
        '_Contas.Agencia, Autorizacao_Registros_Contas.Conta,  ('#39'Banco: '#39 +
        ' + Autorizacao_Registros_Contas.Banco + '#39';   Agência: '#39'+ Autoriz' +
        'acao_Registros_Contas.Agencia + '#39';   Conta Corrente: '#39'+Autorizac' +
        'ao_Registros_Contas.Conta) as BAC'
      ''
      'FROM Autorizacao_Registros_Contas')
    Left = 984
    Top = 70
    object qrContaBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object qrContaAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object qrContaConta: TStringField
      FieldName = 'Conta'
      Size = 8
    end
    object qrContaBAC: TStringField
      FieldName = 'BAC'
      Size = 255
    end
  end
  object dsConta: TDataSource
    DataSet = qrConta
    Left = 904
    Top = 408
  end
  object qrStatusEmail: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Autorizacao_Reg_Status.Codigo, Autorizacao_Reg_Status.Des' +
        'cricao'
      'FROM Autorizacao_Reg_Status')
    Left = 922
    Top = 136
    object qrStatusEmailCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Autorizacao_Reg_Status.Codigo'
    end
    object qrStatusEmailDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Autorizacao_Reg_Status.Descricao'
      Size = 50
    end
  end
  object q_autoriza: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Autorizacoes_senhas.*'
      'FROM Autorizacoes_senhas;')
    Left = 832
    Top = 6
    object q_autorizaEMISSAO_CHEQUE: TStringField
      FieldName = 'EMISSAO_CHEQUE'
      Origin = 'DBNMSCOMEX.Autorizacoes_senhas.EMISSAO_CHEQUE'
      Size = 10
    end
    object q_autorizaAUTORIZA_REGISTRO: TStringField
      FieldName = 'AUTORIZA_REGISTRO'
      Origin = 'DBNMSCOMEX.Autorizacoes_senhas.AUTORIZA_REGISTRO'
      Size = 10
    end
  end
  object q_impaut: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Importadores_Autorizacoes.*'
      'FROM Importadores_Autorizacoes;')
    Left = 896
    Top = 6
    object q_impautEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores_Autorizacoes.Empresa'
      Size = 4
    end
    object q_impautFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores_Autorizacoes.Filial'
      Size = 4
    end
    object q_impautCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores_Autorizacoes.Codigo'
      Size = 4
    end
    object q_impautEMISSAO_CHEQUE: TSmallintField
      FieldName = 'EMISSAO_CHEQUE'
      Origin = 'DBNMSCOMEX.Importadores_Autorizacoes.EMISSAO_CHEQUE'
    end
    object q_impautAUTORIZA_REGISTRO: TSmallintField
      FieldName = 'AUTORIZA_REGISTRO'
      Origin = 'DBNMSCOMEX.Importadores_Autorizacoes.AUTORIZA_REGISTRO'
    end
  end
  object q_contac: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Autorizacao_Registros_Contas.Banco, Autorizacao_Registros' +
        '_Contas.Agencia, Autorizacao_Registros_Contas.Conta, Autorizacao' +
        '_Registros_Contas.CONTAC'
      'FROM Autorizacao_Registros_Contas'
      
        'WHERE (((Autorizacao_Registros_Contas.Banco)=:qban) AND ((Autori' +
        'zacao_Registros_Contas.Agencia)=:qage) AND ((Autorizacao_Registr' +
        'os_Contas.Conta)=:qcc))')
    Left = 960
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'qban'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qage'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'qcc'
        ParamType = ptUnknown
        Value = '3'
      end>
    object q_contacBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Autorizacao_Registros_Contas.Banco'
      Size = 5
    end
    object q_contacAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Autorizacao_Registros_Contas.Agencia'
      Size = 5
    end
    object q_contacConta: TStringField
      FieldName = 'Conta'
      Origin = 'DBNMSCOMEX.Autorizacao_Registros_Contas.Conta'
      Size = 8
    end
    object q_contacCONTAC: TIntegerField
      FieldName = 'CONTAC'
      Origin = 'DBNMSCOMEX.Autorizacao_Registros_Contas.CONTAC'
    end
  end
  object t_movcc: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo_Mov'
    TableName = 'Movimentacao_Contas_Correntes'
    Left = 936
    Top = 336
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
  end
  object t_num: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Numerarios_Processos'
    Left = 1001
    Top = 336
    object t_numEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_numFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_numProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_numREG: TAutoIncField
      FieldName = 'REG'
    end
    object t_numNumerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object t_numUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object t_numData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object t_numValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object t_numPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object t_numOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object t_numUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object t_numData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object t_numValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object t_numValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object t_numContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object t_numUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object t_numConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object t_numCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object t_numImpdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object t_numDetalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object t_numDocsis: TStringField
      FieldName = 'Docsis'
      FixedChar = True
      Size = 15
    end
    object t_numFatura_mov: TStringField
      FieldName = 'Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object t_numFornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object t_numCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object t_numContabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object t_numREG_creditos: TIntegerField
      FieldName = 'REG_creditos'
    end
    object t_numProcesso_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
  end
  object q_del01: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE FROM Numerarios_Processos '
      'WHERE Numerarios_Processos.docsis  = :QREG ')
    Left = 1072
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'qreg'
        ParamType = ptUnknown
        Value = '03568/09'
      end>
  end
  object q_del02: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE  FROM Movimentacao_Contas_Correntes '
      'WHERE (((Movimentacao_Contas_Correntes.Codigo_SOLREG)=:qreg))')
    Left = 1136
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'qreg'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_propis: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select * from Processos_ADICOES_ICMS_PIS_COFINS where processo=:' +
        'qpro'
      'order by Adicao')
    Left = 1051
    Top = 137
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '01216/09'
      end>
    object q_propisEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_propisFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Filial'
      FixedChar = True
      Size = 4
    end
    object q_propisProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Processo'
      FixedChar = True
      Size = 8
    end
    object q_propisAdicao: TStringField
      FieldName = 'Adicao'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Adicao'
      FixedChar = True
      Size = 3
    end
    object q_propisNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.NCM'
      FixedChar = True
      Size = 8
    end
    object q_propisVA: TFloatField
      FieldName = 'VA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VA'
    end
    object q_propisOT: TFloatField
      FieldName = 'OT'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.OT'
    end
    object q_propisDA: TFloatField
      FieldName = 'DA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.DA'
    end
    object q_propisAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II'
    end
    object q_propisAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI'
    end
    object q_propisAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP'
    end
    object q_propisAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS'
    end
    object q_propisAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS'
    end
    object q_propisAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA'
    end
    object q_propisBASEC_PISCOFINS: TFloatField
      FieldName = 'BASEC_PISCOFINS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS'
    end
    object q_propisBASEC_ICMS: TFloatField
      FieldName = 'BASEC_ICMS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS'
    end
    object q_propisVALOR_II: TFloatField
      FieldName = 'VALOR_II'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II'
    end
    object q_propisVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI'
    end
    object q_propisVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS'
    end
    object q_propisVALOR_ICMS_EXTRA: TFloatField
      FieldName = 'VALOR_ICMS_EXTRA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA'
    end
    object q_propisVALOR_PIS_PASEP: TFloatField
      FieldName = 'VALOR_PIS_PASEP'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP'
    end
    object q_propisVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS'
    end
    object q_propisPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia'
    end
    object q_propisVA_proporcional: TFloatField
      FieldName = 'VA_proporcional'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional'
    end
    object q_propisAliq_NCM_II_proporcional: TFloatField
      FieldName = 'Aliq_NCM_II_proporcional'
      Origin = 
        'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporc' +
        'ional'
    end
    object q_propisAliq_NCM_IPI_proporcional: TFloatField
      FieldName = 'Aliq_NCM_IPI_proporcional'
      Origin = 
        'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_propor' +
        'cional'
    end
    object q_propisFOB: TFloatField
      FieldName = 'FOB'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.FOB'
    end
    object q_propisRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_propisRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object q_propisCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object q_propisTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      FixedChar = True
      Size = 1
    end
    object q_propisBASEC_ICMS_ACRESC: TFloatField
      FieldName = 'BASEC_ICMS_ACRESC'
    end
    object q_propisVALOR_ICMS_ACRESC: TFloatField
      FieldName = 'VALOR_ICMS_ACRESC'
    end
    object q_propisVALOR_ICMS_ACRESC_EXTRA: TFloatField
      FieldName = 'VALOR_ICMS_ACRESC_EXTRA'
    end
    object q_propisRateio_Acresc_ICMS: TFloatField
      FieldName = 'Rateio_Acresc_ICMS'
    end
  end
  object q_sqls: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE FROM Numerarios_Processos '
      'WHERE Numerarios_Processos.docsis  = :QREG ')
    Left = 1016
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'qreg'
        ParamType = ptUnknown
        Value = '03568/09'
      end>
  end
  object q_Localizar: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '  SELECT Nome_Grupo, Codigo_AGRUPADO AS CODIGO'
      '    FROM Importadores_Agrupados'
      '   WHERE Nome_Grupo <> '#39'*** DESAGRUPADOS ***'#39' '
      'GROUP BY Nome_Grupo, Codigo_AGRUPADO   '
      'UNION'
      '  SELECT I.Razao_Social AS NOME_GRUPO, IA.Codigo AS CODIGO'
      '    FROM Importadores_Agrupados IA INNER JOIN Importadores I'
      '      ON IA.Codigo = I.Codigo'
      '   WHERE Nome_Grupo = '#39'*** DESAGRUPADOS ***'#39' '
      'GROUP BY I.Razao_Social, IA.Codigo'
      'ORDER BY Nome_Grupo')
    Left = 848
    Top = 200
    object q_LocalizarNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      FixedChar = True
      Size = 60
    end
    object q_LocalizarCodigo: TStringField
      FieldName = 'Codigo'
    end
  end
  object dsLocalizar: TDataSource
    DataSet = q_Localizar
    Left = 1088
    Top = 408
  end
  object qrListaUsuarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      '  FROM USUARIOS'
      ' WHERE NIVEL <> '#39'X'#39'  '
      '   AND CAST(Nivel AS INT) >= 4'
      'ORDER BY Nome_Completo')
    Left = 992
    Top = 262
    object qrListaUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object qrListaUsuariosNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      Size = 45
    end
  end
  object dsListaUsuarios: TDataSource
    DataSet = qrListaUsuarios
    Left = 832
    Top = 472
  end
  object q_Saldo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT SUM(VALOR) AS CREDITOS, '#39#39' AS NUMERARIOS'
      '  FROM Creditos_Processos'
      ' WHERE EMPRESA =:EMP '
      '   AND FILIAL=:FIL'
      '   AND PROCESSO=:COD'
      'UNION'
      'SELECT '#39#39' AS CREDITOS, SUM(Valor_Registrado) AS NUMERARIOS '
      '  FROM Numerarios_Processos'
      'WHERE EMPRESA =:EMP '
      '  AND FILIAL  =:FIL'
      '  AND PROCESSO =:COD')
    Left = 1144
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object q_SaldoCREDITOS: TFloatField
      FieldName = 'CREDITOS'
    end
    object q_SaldoNUMERARIOS: TFloatField
      FieldName = 'NUMERARIOS'
    end
  end
  object q_Aux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 986
    Top = 140
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
    Left = 1131
    Top = 134
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
        Value = ''
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
  object qrFollowup: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into'
      'Followup'
      '(Processo'
      ',Codevento'
      ',Codobs'
      ',Obs_especifica'
      ',Data'
      ',Hora'
      ',Duracao'
      ',Usuario'
      ',Ref_Follow)'
      'SELECT '
      
        '      :pPROCESSO,'#39'628'#39','#39'0'#39','#39#39',CAST(getdate() as date),CAST(GETDA' +
        'TE() AS TIME),0,'#39'AUTO'#39',0  ')
    Left = 16
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'pPROCESSO'
        ParamType = ptInput
      end>
  end
end
