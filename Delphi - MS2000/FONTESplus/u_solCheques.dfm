object f_solCheques: Tf_solCheques
  Left = 178
  Top = 165
  ActiveControl = edtLoc
  BorderStyle = bsSingle
  Caption = 'Controle de Solicita��es de Cheques'
  ClientHeight = 569
  ClientWidth = 954
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 569
    Align = alClient
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 8
      Top = 6
      Width = 438
      Height = 333
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      object Label16: TLabel
        Left = 11
        Top = 31
        Width = 41
        Height = 13
        Caption = 'Status:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 434
        Height = 24
        Align = alTop
        Caption = 'Solicita��es'
        Color = 8147753
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 5
        Top = 117
        Width = 428
        Height = 180
        Hint = 'Para imprimir d� 2 cliques!'
        Color = clInfoBk
        DataSource = dsSolicitacoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Status'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_solicitacao'
            Title.Caption = 'Data Solicita��o'
            Width = 82
            Visible = True
          end>
      end
      object pnlBotoesSol: TPanel
        Left = 2
        Top = 299
        Width = 434
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        Color = 10514464
        TabOrder = 5
        object BitBtn1: TBitBtn
          Left = 4
          Top = 5
          Width = 61
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
        object BitBtn2: TBitBtn
          Left = 66
          Top = 5
          Width = 61
          Height = 25
          Caption = '&Alterar'
          Enabled = False
          TabOrder = 1
          OnClick = BitBtn2Click
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
        object btnSolicita: TBitBtn
          Left = 197
          Top = 5
          Width = 68
          Height = 25
          Hint = 'Solicita Cheque'
          Caption = '&Solicitar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
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
          Left = 266
          Top = 5
          Width = 68
          Height = 25
          Caption = '&Emiss�o'
          Enabled = False
          TabOrder = 3
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
          Left = 128
          Top = 5
          Width = 68
          Height = 25
          Hint = 'Cancela Solicita��o'
          Caption = '&Cancelar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
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
          Left = 128
          Top = 5
          Width = 68
          Height = 25
          Hint = 'Reativa Solicita��o'
          Caption = '&Reativar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
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
          Left = 266
          Top = 5
          Width = 68
          Height = 25
          Hint = 'Cancela Emiss�o de Cheque'
          Caption = 'Canc&elar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
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
        object btnContabilizar: TBitBtn
          Left = 336
          Top = 5
          Width = 96
          Height = 25
          Hint = 'Contabilizar Cheque'
          Caption = '&Contabilizar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Visible = False
          OnClick = btnContabilizarClick
          Kind = bkRetry
        end
      end
      object cbVerTodos: TCheckBox
        Left = 105
        Top = 31
        Width = 81
        Height = 15
        Caption = 'Ver Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 2
        Visible = False
        OnClick = cbVerTodosClick
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 8
        Top = 46
        Width = 177
        Height = 21
        Enabled = False
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsListaStatus
        TabOrder = 1
        Visible = False
        OnClick = DBLookupComboBox2Click
      end
      object gbLocalizar: TGroupBox
        Left = 6
        Top = 72
        Width = 428
        Height = 41
        Caption = ' Localizar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object edtLoc: TMaskEdit
          Left = 299
          Top = 15
          Width = 65
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 3
          OnChange = edtLocChange
          OnKeyPress = edtLocKeyPress
        end
        object btnAnterior: TButton
          Left = 391
          Top = 16
          Width = 16
          Height = 21
          Hint = 'Anterior'
          Caption = '<'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnAnteriorClick
        end
        object btnProximo: TButton
          Left = 406
          Top = 16
          Width = 16
          Height = 21
          Hint = 'Pr�ximo'
          Caption = '>'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnProximoClick
        end
        object rbSolicitacao: TRadioButton
          Left = 13
          Top = 19
          Width = 89
          Height = 17
          Caption = 'Solicita��o'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbSolicitacaoClick
        end
        object rbProcesso: TRadioButton
          Left = 106
          Top = 19
          Width = 76
          Height = 17
          Caption = 'Processo'
          TabOrder = 1
          OnClick = rbProcessoClick
        end
        object btnLocalizar: TBitBtn
          Left = 368
          Top = 16
          Width = 23
          Height = 21
          Hint = 'Localizar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
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
        object rbValor: TRadioButton
          Left = 192
          Top = 19
          Width = 105
          Height = 17
          Caption = 'Valor do Item'
          TabOrder = 2
          OnClick = rbValorClick
        end
      end
    end
    object Panel2: TPanel
      Left = 448
      Top = 6
      Width = 497
      Height = 333
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 6
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
      object Label3: TLabel
        Left = 8
        Top = 47
        Width = 50
        Height = 13
        Caption = 'Nominal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 89
        Width = 27
        Height = 13
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 21
        Width = 481
        Height = 21
        Color = clInfoBk
        DataField = 'Nome_Completo'
        DataSource = dsSolicitacoes
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 62
        Width = 481
        Height = 21
        Color = clInfoBk
        DataField = 'Nominal'
        DataSource = dsSolicitacoes
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 104
        Width = 481
        Height = 177
        Color = clInfoBk
        DataField = 'Observacoes'
        DataSource = dsSolicitacoes
        TabOrder = 2
      end
      object pnlAcessoRestrito: TPanel
        Left = 5
        Top = 288
        Width = 486
        Height = 40
        BevelOuter = bvNone
        Color = 10514464
        TabOrder = 3
        Visible = False
        object Label6: TLabel
          Left = 102
          Top = 1
          Width = 34
          Height = 13
          Caption = 'Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 290
          Top = 1
          Width = 113
          Height = 13
          Caption = 'Cheque / Tipo Pag.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 409
          Top = 0
          Width = 68
          Height = 13
          Caption = 'Dt. Emiss�o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 3
          Top = 0
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
        object Label18: TLabel
          Left = 49
          Top = 0
          Width = 47
          Height = 13
          Caption = 'Ag�ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 157
          Top = 0
          Width = 58
          Height = 13
          Caption = 'Descri��o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Left = 101
          Top = 17
          Width = 52
          Height = 21
          Color = clInfoBk
          DataField = 'Conta_Corrente'
          DataSource = dsSolicitacoes
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 290
          Top = 17
          Width = 115
          Height = 21
          Color = clInfoBk
          DataField = 'Cheque'
          DataSource = dsSolicitacoes
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 409
          Top = 17
          Width = 75
          Height = 21
          Color = clInfoBk
          DataField = 'Data_emissao'
          DataSource = dsSolicitacoes
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 17
          Width = 41
          Height = 21
          Color = clInfoBk
          DataField = 'Banco'
          DataSource = dsSolicitacoes
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 48
          Top = 17
          Width = 49
          Height = 21
          Color = clInfoBk
          DataField = 'Agencia'
          DataSource = dsSolicitacoes
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 157
          Top = 17
          Width = 129
          Height = 21
          Color = clInfoBk
          DataField = 'Descricao_CC'
          DataSource = dsSolicitacoes
          TabOrder = 5
        end
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 344
      Width = 937
      Height = 221
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 18
        Top = 148
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
      object Label8: TLabel
        Left = 154
        Top = 148
        Width = 58
        Height = 13
        Caption = 'Descri��o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 850
        Top = 148
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
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 933
        Height = 26
        Align = alTop
        Caption = 'Itens de Solicita��es'
        Color = 8147753
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 32
        Width = 913
        Height = 113
        Color = clInfoBk
        DataSource = dsItens2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
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
            ReadOnly = True
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri��o'
            Width = 607
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Caption = 'Saldo do Processo'
            Width = 113
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 2
        Top = 182
        Width = 933
        Height = 37
        Align = alBottom
        BevelOuter = bvNone
        Color = 10514464
        Enabled = False
        TabOrder = 2
        object btnItemNov: TBitBtn
          Left = 16
          Top = 8
          Width = 70
          Height = 25
          Caption = 'No&vo'
          TabOrder = 0
          Visible = False
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
        object btnItemAlt: TBitBtn
          Left = 219
          Top = 8
          Width = 70
          Height = 25
          Caption = 'A&lterar'
          TabOrder = 1
          OnClick = btnItemAltClick
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
        object btnItemExc: TBitBtn
          Left = 464
          Top = 8
          Width = 70
          Height = 25
          Hint = 'Excluir Transmittal'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnItemExcClick
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
        object btnItemBus: TBitBtn
          Left = 90
          Top = 8
          Width = 125
          Height = 25
          Caption = '&Buscar Numer�rio'
          TabOrder = 3
          OnClick = btnItemBusClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
            0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
            B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
            FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
            FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
            FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
            0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
            0555555555777777755555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object btnItemSal: TBitBtn
          Left = 304
          Top = 8
          Width = 70
          Height = 25
          Hint = 'Confirmar inclus�o do patrim�nio'
          Caption = '&Salvar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnItemSalClick
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
        object btnItemCan: TBitBtn
          Left = 378
          Top = 8
          Width = 70
          Height = 25
          Hint = 'Cancelar Solicita��o'
          Caption = '&Cancelar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnItemCanClick
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
      object edProcesso: TEdit
        Left = 16
        Top = 163
        Width = 129
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 3
      end
      object edDescItem: TEdit
        Left = 152
        Top = 163
        Width = 689
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 4
      end
      object edValor: TEdit
        Left = 848
        Top = 163
        Width = 81
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 5
        OnKeyPress = edValorKeyPress
      end
    end
    object pnlEmissao: TPanel
      Left = 36
      Top = 144
      Width = 405
      Height = 129
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 4
      Color = clTeal
      TabOrder = 4
      Visible = False
      object Label13: TLabel
        Left = 13
        Top = 41
        Width = 94
        Height = 13
        Caption = 'Conta Corrente: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
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
      object Label15: TLabel
        Left = 321
        Top = 41
        Width = 68
        Height = 13
        Caption = 'Dt. Emiss�o'
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
        Caption = 'Emiss�o de Cheque'
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
        object BitBtn3: TBitBtn
          Left = 204
          Top = 0
          Width = 70
          Height = 25
          Hint = 'Cancelar inclus�o do patrim�nio'
          Caption = '&Cancelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtn3Click
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
        object BitBtn4: TBitBtn
          Left = 128
          Top = 0
          Width = 70
          Height = 25
          Hint = 'Confirmar inclus�o do patrim�nio'
          Caption = '&OK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn4Click
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
        Left = 202
        Top = 56
        Width = 113
        Height = 21
        DataField = 'Cheque'
        DataSource = dsSolCheques
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 321
        Top = 56
        Width = 71
        Height = 21
        DataField = 'Data_emissao'
        DataSource = dsSolCheques
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 11
        Top = 56
        Width = 185
        Height = 21
        DataField = 'CodigoCC'
        DataSource = dsSolCheques
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsCC
        TabOrder = 1
      end
    end
    object pnlAguarde: TPanel
      Left = 303
      Top = 376
      Width = 273
      Height = 105
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
    object p_autoriza: TPanel
      Left = 60
      Top = 405
      Width = 352
      Height = 112
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 4
      Color = clMaroon
      TabOrder = 5
      Visible = False
      OnExit = cancelsenhaClick
      object Panel14: TPanel
        Left = 4
        Top = 4
        Width = 344
        Height = 26
        Align = alTop
        Caption = 'Senha de Autoriza��o de Emiss�o de Cheque'
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
        Width = 344
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clMaroon
        TabOrder = 1
        object cancelsenha: TBitBtn
          Left = 175
          Top = 0
          Width = 74
          Height = 25
          Hint = 'Cancelar inclus�o do patrim�nio'
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
          Left = 88
          Top = 0
          Width = 65
          Height = 25
          Hint = 'Confirmar inclus�o do patrim�nio'
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
  end
  object pnlInclusao: TPanel
    Left = 488
    Top = 8
    Width = 481
    Height = 273
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    Color = clTeal
    TabOrder = 1
    Visible = False
    object Label9: TLabel
      Left = 8
      Top = 44
      Width = 50
      Height = 13
      Caption = 'Nominal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 72
      Width = 27
      Height = 13
      Caption = 'Obs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel8: TPanel
      Left = 4
      Top = 4
      Width = 473
      Height = 26
      Align = alTop
      Caption = 'Inclus�o de Solicita��es'
      Color = 5460736
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 62
      Top = 40
      Width = 403
      Height = 21
      DataField = 'Nominal'
      DataSource = dsSolCheques
      TabOrder = 1
    end
    object DBMemo2: TDBMemo
      Left = 40
      Top = 72
      Width = 425
      Height = 121
      DataField = 'Observacoes'
      DataSource = dsSolCheques
      TabOrder = 2
    end
    object Panel9: TPanel
      Left = 4
      Top = 234
      Width = 473
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = clTeal
      TabOrder = 3
      object btnCancelSol: TBitBtn
        Left = 136
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Cancelar inclus�o do patrim�nio'
        Caption = '&Cancelar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCancelSolClick
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
      object btnSalvaSol: TBitBtn
        Left = 56
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Confirmar inclus�o do patrim�nio'
        Caption = '&Salvar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnSalvaSolClick
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
      object btnNovaSol: TBitBtn
        Left = -76
        Top = 0
        Width = 70
        Height = 25
        Caption = 'N&ovo'
        TabOrder = 2
        Visible = False
        OnClick = btnNovaSolClick
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
      object btnSairSol: TBitBtn
        Left = -81
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Sair'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Visible = False
        OnClick = btnSairSolClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
          F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
          000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
          338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
          45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
          3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
          F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
          000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
          338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
          4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
          8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
          333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
          0000}
        NumGlyphs = 2
      end
      object btnAltSol: TBitBtn
        Left = -74
        Top = 0
        Width = 70
        Height = 25
        Caption = 'A&lterar'
        TabOrder = 4
        Visible = False
        OnClick = btnAltSolClick
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
  object pnlInclusaoItens: TPanel
    Left = 512
    Top = -16
    Width = 482
    Height = 273
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    Color = clTeal
    TabOrder = 2
    Visible = False
    object Label26: TLabel
      Left = 10
      Top = 42
      Width = 137
      Height = 13
      Caption = 'Digite o N� do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSaldo: TLabel
      Left = 234
      Top = 42
      Width = 5
      Height = 13
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
      Width = 474
      Height = 26
      Align = alTop
      Caption = 'Inclus�o de Itens de Solicita��es'
      Color = 5460736
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
      Left = 14
      Top = 64
      Width = 457
      Height = 163
      BevelOuter = bvNone
      Caption = 'Panel11'
      Color = clTeal
      TabOrder = 2
      Visible = False
      object Label11: TLabel
        Left = 8
        Top = 80
        Width = 68
        Height = 13
        Caption = 'Numer�rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 14
        Width = 456
        Height = 147
        Color = clWhite
        DataSource = dsProc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Processo'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 264
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Previsao'
            Width = 101
            Visible = True
          end>
      end
    end
    object Panel12: TPanel
      Left = 4
      Top = 232
      Width = 474
      Height = 37
      Align = alBottom
      BevelOuter = bvNone
      Color = clTeal
      TabOrder = 3
      object BitBtn8: TBitBtn
        Left = 87
        Top = 3
        Width = 70
        Height = 25
        Hint = 'Sair'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnCancelSolClick
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
      object BitBtn9: TBitBtn
        Left = 11
        Top = 3
        Width = 70
        Height = 25
        Hint = 'Confirmar inclus�o do patrim�nio'
        Caption = '&OK'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn9Click
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
  end
  object pnlBrowser: TPanel
    Left = 542
    Top = 536
    Width = 289
    Height = 488
    BevelWidth = 5
    TabOrder = 3
    Visible = False
    object WebBrowser1: TWebBrowser
      Left = 5
      Top = 5
      Width = 279
      Height = 448
      Align = alTop
      TabOrder = 0
      ControlData = {
        4C000000D61C00004D2E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object pnlBroConEmi: TPanel
      Left = 5
      Top = 375
      Width = 279
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object BitBtn5: TBitBtn
        Left = 394
        Top = 5
        Width = 70
        Height = 25
        Hint = 'Cancelar Solicita��o'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object btnEmitir: TBitBtn
        Left = 317
        Top = 5
        Width = 70
        Height = 25
        Caption = '&Emitir'
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
      Left = 5
      Top = 411
      Width = 279
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object BitBtn6: TBitBtn
        Left = 317
        Top = 5
        Width = 70
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 0
        OnClick = btnimprimirClick
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
      object BitBtn7: TBitBtn
        Left = 394
        Top = 5
        Width = 70
        Height = 25
        Hint = 'Cancelar Solicita��o'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn7Click
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
      Left = 5
      Top = 447
      Width = 279
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
        Hint = 'Cancelar Solicita��o'
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
  object qrSolicitacoes: TQuery
    AfterScroll = qrSolicitacoesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Solicitacao_Cheques.Codigo, '
      '       Solicitacao_Cheques.Valor, '
      '       SCSD.Descricao, '
      '       Solicitacao_Cheques.Data_solicitacao, '
      '       Usuarios.Nome_Completo, '
      '       Solicitacao_Cheques.Nominal, '
      
        '       Cast(Solicitacao_Cheques.Observacoes as varchar(200) ) AS' +
        ' Observacoes, '
      '       Solicitacao_Cheques.Data_emissao, '
      '       Solicitacao_Cheques.CodigoCC, '
      '   CC.Banco,'
      '   CC.Agencia,'
      '   CC.Conta_Corrente,'
      '       CC.Descricao AS Descricao_CC, '
      '       Solicitacao_Cheques.Cheque, '
      '       Solicitacao_Cheques.Emissor, '
      '       Usu_Emissor.Nome_Completo, '
      '       Solicitacao_Cheques.Remetente, '
      '       Solicitacao_Cheques.Status, '
      '       Solicitacao_Cheques.Empresa, '
      '       Solicitacao_Cheques.Filial,'
      '       Solicitacao_Cheques.Contabilizacao_Automatica'
      
        'FROM ((Solicitacao_Cheques LEFT JOIN Solicitacao_Cheques_Status ' +
        'AS SCSD '
      
        '  ON Solicitacao_Cheques.Status = SCSD.Codigo) LEFT JOIN Usuario' +
        's '
      
        '  ON Solicitacao_Cheques.Remetente = Usuarios.Usuario) LEFT JOIN' +
        ' Usuarios AS Usu_Emissor '
      
        '  ON Solicitacao_Cheques.Emissor = Usu_Emissor.Usuario LEFT JOIN' +
        ' Contas_Correntes AS CC'
      '  ON Solicitacao_Cheques.CodigoCC = CC.Codigo'
      
        'WHERE Solicitacao_Cheques.Remetente like :cod AND Solicitacao_Ch' +
        'eques.Status like :stat'
      'ORDER BY Solicitacao_Cheques.Data_solicitacao')
    Left = 1016
    Top = 520
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'stat'
        ParamType = ptUnknown
        Value = '*'
      end>
    object qrSolicitacoesCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrSolicitacoesValor: TFloatField
      FieldName = 'Valor'
    end
    object qrSolicitacoesDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object qrSolicitacoesData_solicitacao: TDateTimeField
      FieldName = 'Data_solicitacao'
    end
    object qrSolicitacoesNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrSolicitacoesNominal: TStringField
      FieldName = 'Nominal'
      FixedChar = True
      Size = 70
    end
    object qrSolicitacoesObservacoes: TStringField
      FieldName = 'Observacoes'
      FixedChar = True
      Size = 200
    end
    object qrSolicitacoesData_emissao: TDateTimeField
      FieldName = 'Data_emissao'
    end
    object qrSolicitacoesCodigoCC: TIntegerField
      FieldName = 'CodigoCC'
    end
    object qrSolicitacoesDescricao_CC: TStringField
      FieldName = 'Descricao_CC'
    end
    object qrSolicitacoesCheque: TStringField
      FieldName = 'Cheque'
      FixedChar = True
      Size = 15
    end
    object qrSolicitacoesEmissor: TStringField
      FieldName = 'Emissor'
      FixedChar = True
      Size = 10
    end
    object qrSolicitacoesNome_Completo_1: TStringField
      FieldName = 'Nome_Completo_1'
      FixedChar = True
      Size = 45
    end
    object qrSolicitacoesRemetente: TStringField
      FieldName = 'Remetente'
      FixedChar = True
      Size = 10
    end
    object qrSolicitacoesStatus: TIntegerField
      FieldName = 'Status'
    end
    object qrSolicitacoesEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrSolicitacoesFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrSolicitacoesContabilizacao_Automatica: TIntegerField
      FieldName = 'Contabilizacao_Automatica'
    end
    object qrSolicitacoesBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object qrSolicitacoesAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object qrSolicitacoesConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
  end
  object dsSolicitacoes: TDataSource
    DataSet = qrSolicitacoes
    Left = 1152
    Top = 120
  end
  object tbSolCheques: TTable
    AfterPost = tbSolChequesAfterPost
    BeforeDelete = tbSolChequesBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;filial;Codigo'
    MasterSource = dsSolicitacoes
    TableName = 'Solicitacao_Cheques'
    Left = 1080
    Top = 8
    object tbSolChequesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbSolChequesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbSolChequesCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object tbSolChequesData_solicitacao: TDateTimeField
      FieldName = 'Data_solicitacao'
    end
    object tbSolChequesSetor: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object tbSolChequesRemetente: TStringField
      FieldName = 'Remetente'
      Size = 10
    end
    object tbSolChequesValor: TFloatField
      FieldName = 'Valor'
    end
    object tbSolChequesNominal: TStringField
      DisplayWidth = 70
      FieldName = 'Nominal'
      Size = 70
    end
    object tbSolChequesStatus: TIntegerField
      FieldName = 'Status'
    end
    object tbSolChequesData_emissao: TDateTimeField
      FieldName = 'Data_emissao'
    end
    object tbSolChequesCodigoCC: TIntegerField
      FieldName = 'CodigoCC'
    end
    object tbSolChequesCheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object tbSolChequesEmissor: TStringField
      FieldName = 'Emissor'
      Size = 10
    end
    object tbSolChequesObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
  end
  object dsSolCheques: TDataSource
    DataSet = tbSolCheques
    Left = 1152
    Top = 232
  end
  object tbParametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 1085
    Top = 64
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
  object qrProc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Processo, Numerarios_Processos.Valor' +
        '_Previsao, Numerarios_Processos.Numerario, Tipos_Numerario.Descr' +
        'icao, Numerarios_Processos.REG, Importadores.CGC_CPF'
      
        '  FROM Numerarios_Processos INNER JOIN Tipos_Numerario ON Numera' +
        'rios_Processos.Numerario = Tipos_Numerario.Codigo INNER JOIN Pro' +
        'cessos'
      
        '    ON Numerarios_Processos.Processo = Processos.Codigo INNER JO' +
        'IN Importadores'
      '    ON Processos.Importador = Importadores.Codigo  '
      'WHERE Numerarios_Processos.Processo like :proc')
    Left = 1016
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
        Value = '01916/03'
      end>
    object qrProcProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      Size = 8
    end
    object qrProcValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Previsao'
    end
    object qrProcNumerario: TStringField
      FieldName = 'Numerario'
    end
    object qrProcDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
    object qrProcREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.REG'
    end
    object qrProcCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 10
    end
  end
  object dsProc: TDataSource
    DataSet = qrProc
    Left = 1152
    Top = 64
  end
  object qrPagamento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Solicitacao_Cheques_Itens.Codigo, Solicitacao_Cheques_Ite' +
        'ns.Sequencial, Solicitacao_Cheques_Itens.Processo, Solicitacao_C' +
        'heques_Itens.Descricao, Solicitacao_Cheques_Itens.Valor, Process' +
        'os.Importador, Importadores.Razao_Social'
      
        'FROM (Solicitacao_Cheques_Itens LEFT JOIN Processos ON Solicitac' +
        'ao_Cheques_Itens.Processo = Processos.Codigo) LEFT JOIN Importad' +
        'ores ON Processos.Importador = Importadores.Codigo'
      'WHERE Solicitacao_Cheques_Itens.Codigo like :cod'
      
        'ORDER BY Processos.Importador, Solicitacao_Cheques_Itens.Codigo,' +
        ' Solicitacao_Cheques_Itens.Sequencial')
    Left = 1018
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrPagamentoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object qrPagamentoSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object qrPagamentoProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrPagamentoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object qrPagamentoValor: TFloatField
      FieldName = 'Valor'
    end
    object qrPagamentoImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrPagamentoRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
  end
  object qrFinanc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Usuario, Usuarios.Nome_Completo, Usuarios.Email_' +
        'aviso_finan, Usuarios.Email, Usuarios.Email_aviso_oper'
      '  FROM Usuarios'
      
        ' WHERE Usuarios.ATIVO = 1 AND (Usuarios.Email_aviso_finan = 1 OR' +
        ' Usuario like :usu) AND Email <> '#39#39)
    Left = 1016
    Top = 232
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
  object qrCC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao, Banco, Agencia, Conta_Corrente'
      '   FROM Contas_Correntes '
      'WHERE Nivel = '#39'2'#39' AND Empresacc = '#39'1'#39)
    Left = 1018
    Top = 576
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
  object dsCC: TDataSource
    DataSet = qrCC
    Left = 1152
    Top = 8
  end
  object tbItens: TTable
    AfterPost = tbItensAfterPost
    BeforeDelete = tbItensBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo;Sequencial'
    TableName = 'Solicitacao_Cheques_Itens'
    Left = 1088
    Top = 120
    object tbItensEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbItensFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbItensCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object tbItensSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object tbItensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object tbItensREG_numerario: TIntegerField
      FieldName = 'REG_numerario'
    end
    object tbItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object tbItensValor: TFloatField
      FieldName = 'Valor'
    end
    object tbItensNumerario: TStringField
      FieldName = 'Numerario'
    end
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 1152
    Top = 288
  end
  object qrListaStatus: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Solicitacao_Cheques_Status.Codigo, Solicitacao_Cheques_St' +
        'atus.Descricao'
      'FROM Solicitacao_Cheques_Status')
    Left = 1016
    Top = 462
    object qrListaStatusCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Solicitacao_Cheques_Status.Codigo'
    end
    object qrListaStatusDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Solicitacao_Cheques_Status.Descricao'
      Size = 50
    end
  end
  object dsListaStatus: TDataSource
    DataSet = qrListaStatus
    Left = 1152
    Top = 176
  end
  object qrPermissaoAlterar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuarios.Email_aviso_oper, Usuarios.Usuario'
      'FROM Usuarios'
      'WHERE Usuarios.Email_aviso_oper = 1 ')
    Left = 1016
    Top = 344
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
  object qrSolicitante: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuarios.Nome_Completo, Usuarios.Email, Usuarios.Usuario'
      'FROM Usuarios'
      'WHERE Usuarios.Usuario = :usu')
    Left = 1016
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrSolicitanteNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object qrSolicitanteEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrSolicitanteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
  end
  object qrStatusEmail: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Solicitacao_Cheques_Status.Codigo, Solicitacao_Cheques_St' +
        'atus.Descricao'
      'FROM Solicitacao_Cheques_Status')
    Left = 1018
    Top = 288
    object qrStatusEmailCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Solicitacao_Cheques_Status.Codigo'
    end
    object qrStatusEmailDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Solicitacao_Cheques_Status.Descricao'
      Size = 50
    end
  end
  object q_ITENSPRO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Solicitacao_Cheques_Itens.Codigo, Solicitacao_Cheques_Ite' +
        'ns.Processo, Sum(Solicitacao_Cheques_Itens.Valor) AS qvalor, Max' +
        '(Processos.Saldo_Faturamento) AS SALDO'
      
        'FROM Solicitacao_Cheques_Itens INNER JOIN Processos ON Solicitac' +
        'ao_Cheques_Itens.Processo = Processos.Codigo'
      
        'GROUP BY Solicitacao_Cheques_Itens.Codigo, Solicitacao_Cheques_I' +
        'tens.Processo'
      'HAVING (((Solicitacao_Cheques_Itens.Codigo)=:QSOL))'
      'ORDER BY Solicitacao_Cheques_Itens.Processo;')
    Left = 1016
    Top = 62
    ParamData = <
      item
        DataType = ftString
        Name = 'QSOL'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_ITENSPROCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object q_ITENSPROProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_ITENSPROqvalor: TFloatField
      FieldName = 'qvalor'
    end
    object q_ITENSPROSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object q_autoriza: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Autorizacoes_senhas.*'
      'FROM Autorizacoes_senhas;')
    Left = 1016
    Top = 118
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
  object qsoma: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Solicitacao_Cheques_Itens.Codigo, Sum(Solicitacao_Cheques' +
        '_Itens.Valor) AS QVALOR'
      'FROM Solicitacao_Cheques_Itens'
      'GROUP BY Solicitacao_Cheques_Itens.Codigo'
      'HAVING (((Solicitacao_Cheques_Itens.Codigo)=:qsol));')
    Left = 1016
    Top = 632
    ParamData = <
      item
        DataType = ftString
        Name = 'qsol'
        ParamType = ptUnknown
        Value = '00610/09'
      end>
    object qsomaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Solicitacao_Cheques_Itens.Codigo'
      Size = 8
    end
    object qsomaQVALOR: TFloatField
      FieldName = 'QVALOR'
      Origin = 'DBNMSCOMEX.Solicitacao_Cheques_Itens.Valor'
    end
  end
  object qrItens: TQuery
    AfterScroll = qrItensAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Left = 1088
    Top = 230
    object qrItensEmpresa: TStringField
      FieldName = 'Empresa'
    end
    object qrItensFilial: TStringField
      FieldName = 'Filial'
    end
    object qrItensCodigo: TStringField
      FieldName = 'Codigo'
    end
    object qrItensSequencial: TIntegerField
      FieldName = 'Sequencial'
    end
    object qrItensProcesso: TStringField
      FieldName = 'Processo'
    end
    object qrItensREG_numerario: TIntegerField
      FieldName = 'REG_numerario'
    end
    object qrItensDescricao: TStringField
      FieldName = 'Descricao'
    end
    object qrItensValor: TFloatField
      FieldName = 'Valor'
    end
    object qrItensSaldo: TFloatField
      FieldName = 'Saldo'
      OnGetText = qrItensSaldoGetText
    end
    object qrItensNumerario: TStringField
      FieldName = 'Numerario'
    end
  end
  object dsItens2: TDataSource
    DataSet = qrItens
    Left = 1152
    Top = 352
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
    Left = 1091
    Top = 294
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
end