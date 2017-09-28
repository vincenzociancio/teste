object f_solTraCla: Tf_solTraCla
  Left = -1
  Top = 38
  BorderStyle = bsSingle
  Caption = 'Controle de Tradução e Classificação'
  ClientHeight = 488
  ClientWidth = 773
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
    Width = 773
    Height = 488
    Align = alClient
    Color = clTeal
    TabOrder = 0
    object Panel1: TPanel
      Left = 8
      Top = 6
      Width = 760
      Height = 259
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = clBackground
      ParentBiDiMode = False
      TabOrder = 0
      object Label16: TLabel
        Left = 18
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
      end
      object Label1: TLabel
        Left = 450
        Top = 31
        Width = 217
        Height = 13
        Caption = 'Responsável pela Tradução/Classific.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label2: TLabel
        Left = 226
        Top = 31
        Width = 61
        Height = 13
        Caption = 'Solicitante'
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
        Width = 756
        Height = 24
        Align = alTop
        Caption = 'Solicitações'
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
        Left = 14
        Top = 71
        Width = 740
        Height = 148
        Hint = 'Para imprimir dê 2 cliques!'
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
        TabOrder = 1
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
            Title.Caption = 'Código'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descrição'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Remetente'
            Title.Caption = 'Solicitante'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_solicitacao'
            Title.Caption = 'Data de solicitação'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tradutor'
            Title.Caption = 'Responsável pela Tradução/Classific.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Tradução'
            Title.Caption = 'Data deTradução'
            Width = 92
            Visible = True
          end>
      end
      object pnlBotoesSol: TPanel
        Left = 2
        Top = 224
        Width = 756
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        Color = clBackground
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 11
          Top = 5
          Width = 70
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
          Left = 163
          Top = 5
          Width = 70
          Height = 25
          Hint = 'Solicita Tradução/Classificação'
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
        object btnNDO: TBitBtn
          Left = 238
          Top = 5
          Width = 150
          Height = 25
          Caption = '&Traduzindo/Classificando'
          Enabled = False
          TabOrder = 2
          Visible = False
          OnClick = btnNDOClick
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
          Left = 86
          Top = 5
          Width = 72
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
          Left = 86
          Top = 5
          Width = 72
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
        object btnDO: TBitBtn
          Left = 392
          Top = 5
          Width = 153
          Height = 25
          Caption = 'Traduzido/Classificado'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Visible = False
          OnClick = btnDOClick
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
      object cbVerTodos: TCheckBox
        Left = 128
        Top = 31
        Width = 81
        Height = 14
        Caption = 'Ver Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 3
        OnClick = cbVerTodosClick
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 15
        Top = 46
        Width = 193
        Height = 21
        Enabled = False
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsListaStatus
        TabOrder = 4
        OnClick = DBLookupComboBox2Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 448
        Top = 46
        Width = 304
        Height = 21
        Enabled = False
        KeyField = 'Usuario'
        ListField = 'Nome_Completo'
        ListSource = dsListaTradutor
        TabOrder = 5
        Visible = False
        OnClick = DBLookupComboBox1Click
      end
      object cbVerTodosUsu: TCheckBox
        Left = 671
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
        TabOrder = 6
        Visible = False
        OnClick = cbVerTodosUsuClick
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 224
        Top = 46
        Width = 209
        Height = 21
        Enabled = False
        KeyField = 'Usuario'
        ListField = 'Nome_Completo'
        ListSource = dsListausuarios
        TabOrder = 7
        Visible = False
        OnClick = DBLookupComboBox3Click
      end
      object cbVerTodosSol: TCheckBox
        Left = 351
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
        TabOrder = 8
        Visible = False
        OnClick = cbVerTodosSolClick
      end
    end
    object Panel2: TPanel
      Left = 8
      Top = 272
      Width = 380
      Height = 209
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = clBackground
      ParentBiDiMode = False
      TabOrder = 1
      object Label4: TLabel
        Left = 14
        Top = 10
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
      object DBMemo1: TDBMemo
        Left = 14
        Top = 24
        Width = 353
        Height = 145
        Color = clInfoBk
        DataField = 'Observacoes'
        DataSource = dsSolCheques
        ReadOnly = True
        TabOrder = 0
      end
      object BitBtn5: TBitBtn
        Left = 94
        Top = 176
        Width = 70
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
      object BitBtn2: TBitBtn
        Left = 15
        Top = 176
        Width = 70
        Height = 25
        Caption = '&Alterar'
        TabOrder = 2
        OnClick = bitbtn2Click
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
    object Panel3: TPanel
      Left = 392
      Top = 272
      Width = 378
      Height = 209
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = clBackground
      ParentBiDiMode = False
      TabOrder = 2
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 374
        Height = 26
        Align = alTop
        Caption = 'Itens de Solicitações'
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
        Left = 11
        Top = 35
        Width = 363
        Height = 131
        Color = clInfoBk
        DataSource = dsItens
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fatura'
            Width = 276
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 2
        Top = 170
        Width = 374
        Height = 37
        Align = alBottom
        BevelOuter = bvNone
        Color = clBackground
        Enabled = False
        TabOrder = 2
        object btnItemExc: TBitBtn
          Left = 127
          Top = 6
          Width = 70
          Height = 25
          Hint = 'Excluir Item'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
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
          Left = 9
          Top = 6
          Width = 111
          Height = 25
          Caption = '&Buscar Fatura'
          TabOrder = 1
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
      end
    end
    object pnlAguarde: TPanel
      Left = 783
      Top = 144
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
  end
  object pnlSolicitacao: TPanel
    Left = 128
    Top = 80
    Width = 481
    Height = 137
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    Color = clTeal
    TabOrder = 1
    Visible = False
    object Label9: TLabel
      Left = 30
      Top = 44
      Width = 241
      Height = 13
      Caption = 'Responsável pela Tradução/Classificação'
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
      Caption = 'Solicitação de Tradução/Classificação'
      Color = 5460736
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel9: TPanel
      Left = 4
      Top = 98
      Width = 473
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = clTeal
      TabOrder = 1
      object btnCancelSol: TBitBtn
        Left = 98
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Cancelar inclusão do patrimônio'
        Caption = '&Cancelar'
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
        Left = 26
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Confirmar inclusão do patrimônio'
        Caption = '&OK'
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
      object btnSairSol: TBitBtn
        Left = -81
        Top = 8
        Width = 75
        Height = 25
        Hint = 'Sair'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
    end
    object dblcbTradutor: TDBLookupComboBox
      Left = 30
      Top = 58
      Width = 427
      Height = 21
      DataField = 'Tradutor'
      DataSource = dsSolCheques
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dsTradutor
      TabOrder = 2
    end
  end
  object pnlInclusaoItens: TPanel
    Left = 216
    Top = 200
    Width = 481
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
      Caption = 'Inclusão de Itens de Solicitações'
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
      Left = 4
      Top = 56
      Width = 473
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
        Caption = 'Numerários:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid3: TDBGrid
        Left = 8
        Top = 14
        Width = 457
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
            FieldName = 'Codigo'
            Title.Caption = 'Fatura'
            Width = 429
            Visible = True
          end>
      end
    end
    object Panel12: TPanel
      Left = 4
      Top = 236
      Width = 473
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      Color = clTeal
      TabOrder = 3
      object BitBtn8: TBitBtn
        Left = 88
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Cancelar inclusão do patrimônio'
        Caption = '&Cancelar'
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
        Left = 8
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Confirmar inclusão do patrimônio'
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
    Left = 143
    Top = -16
    Width = 582
    Height = 489
    TabOrder = 3
    Visible = False
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 1
      Width = 580
      Height = 448
      Align = alTop
      TabOrder = 0
      ControlData = {
        4C000000F23B00004D2E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object pnlImprimir: TPanel
      Left = 1
      Top = 416
      Width = 580
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
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
        Hint = 'Cancelar Solicitação'
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
      Left = 1
      Top = 452
      Width = 580
      Height = 36
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
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
  object qrSolicitacoes: TQuery
    AfterOpen = qrSolicitacoesAfterOpen
    AfterScroll = qrSolicitacoesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DECLARE @TSQL nvarchar(4000),'
      #9#9'@rem varchar(10),'
      #9#9'@tra varchar(10),'
      #9#9'@boo varchar(10),'
      #9#9'@stat varchar(10)'
      'BEGIN'
      #9'SET @rem = :rem'
      #9'SET @tra = :tra'
      #9'SET @boo = :boo'
      #9'SET @stat = :stat'
      
        #9'SET @TSQL = '#39'SELECT Solicitacao_Tracla.Empresa, Solicitacao_Tra' +
        'cla.Filial, Solicitacao_Tracla.Codigo, Solicitacao_Tracla.Data_s' +
        'olicitacao, Solicitacao_Tracla.Remetente, Solicitacao_Tracla.Obs' +
        'ervacoes, Solicitacao_Tracla.Status, Solicitacao_Tracla.Tradutor' +
        ', Solicitacao_Tracla.Data_Traducao, UsuRemet.Nome_Completo, UsuR' +
        'emet.Email, STCStat.Descricao, UsuTrad.Nome_Completo, UsuTrad.Em' +
        'ail '#39
      
        #9'SET @TSQL = @TSQL + '#39'FROM ((Solicitacao_Tracla LEFT JOIN Solici' +
        'tacao_Tracla_Status AS STCStat ON Solicitacao_Tracla.Status = ST' +
        'CStat.Codigo) LEFT JOIN Usuarios AS UsuRemet ON Solicitacao_Trac' +
        'la.Remetente = UsuRemet.Usuario) LEFT JOIN Usuarios AS UsuTrad O' +
        'N Solicitacao_Tracla.Tradutor = UsuTrad.Usuario '#39
      #9'SET @TSQL = @TSQL + '#39'WHERE '#39
      #9'IF @rem <> '#39'%'#39' AND @tra <> '#39'%'#39' AND @boo = '#39'False'#39' BEGIN'
      
        #9#9'SET @TSQL = @TSQL + '#39'((Solicitacao_Tracla.Remetente Like '#39#39#39'+@' +
        'rem+'#39#39#39' And Solicitacao_Tracla.Status Like '#39#39#39'+@stat+'#39#39#39') And ((' +
        'Solicitacao_Tracla.Tradutor Like '#39#39#39'+@tra+'#39#39#39') And Solicitacao_T' +
        'racla.Status Like '#39#39#39'+@stat+'#39#39#39'))  '#39' '
      #9'END'
      #9'ELSE BEGIN'
      #9#9'IF @rem <> '#39'%'#39' AND @tra <> '#39'%'#39' BEGIN'
      
        #9#9#9'SET @TSQL = @TSQL + '#39'((Solicitacao_Tracla.Remetente Like '#39#39#39'+' +
        '@rem+'#39#39#39' And Solicitacao_Tracla.Status Like '#39#39#39'+@stat+'#39#39#39') Or ((' +
        'Solicitacao_Tracla.Tradutor Like '#39#39#39'+@tra+'#39#39#39') And Solicitacao_T' +
        'racla.Status Like '#39#39#39'+@stat+'#39#39#39')) '#39#9#9#9
      #9#9'END'
      #9#9'ELSE BEGIN'
      #9#9#9'IF @tra = '#39'%'#39' BEGIN'
      
        #9#9#9#9'SET @TSQL = @TSQL + '#39'(Solicitacao_Tracla.Remetente Like '#39#39#39'+' +
        '@rem+'#39#39#39') And (Solicitacao_Tracla.Status Like '#39#39#39'+@stat+'#39#39#39') '#39
      #9#9#9'END'
      #9#9#9'ELSE BEGIN'
      
        #9#9#9#9'SET @TSQL = @TSQL + '#39'(Solicitacao_Tracla.Remetente Like '#39#39#39'+' +
        '@rem+'#39#39#39' And Solicitacao_Tracla.Status Like '#39#39#39'+@stat+'#39#39#39') And (' +
        'Solicitacao_Tracla.Status Like '#39#39#39'+@stat+'#39#39#39' And Solicitacao_Tra' +
        'cla.Tradutor Like '#39#39#39'+@tra+'#39#39#39') '#39
      #9#9#9'END'
      #9#9'END'
      #9'END'
      #9'SET @TSQL = @TSQL + '#39'ORDER BY Solicitacao_Tracla.Codigo; '#39' '
      #9'--print @TSQL'
      #9'EXEC sp_executesql @TSQL'
      'END')
    ParamData = <
      item
        DataType = ftString
        Name = 'rem'
        ParamType = ptUnknown
        Value = 'qrsolicitacoes.params[0]'
      end
      item
        DataType = ftString
        Name = 'tra'
        ParamType = ptUnknown
        Value = 'qrsolicitacoes.params[1]'
      end
      item
        DataType = ftString
        Name = 'boo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'stat'
        ParamType = ptUnknown
        Value = 'qrsolicitacoes.params[3]'
      end>
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
    object qrSolicitacoesCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrSolicitacoesData_solicitacao: TDateTimeField
      FieldName = 'Data_solicitacao'
    end
    object qrSolicitacoesRemetente: TStringField
      FieldName = 'Remetente'
      FixedChar = True
      Size = 10
    end
    object qrSolicitacoesObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
    object qrSolicitacoesStatus: TIntegerField
      FieldName = 'Status'
    end
    object qrSolicitacoesTradutor: TStringField
      FieldName = 'Tradutor'
      FixedChar = True
      Size = 10
    end
    object qrSolicitacoesData_Traducao: TDateTimeField
      FieldName = 'Data_Traducao'
    end
    object qrSolicitacoesNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrSolicitacoesEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
    object qrSolicitacoesDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object qrSolicitacoesNome_Completo_1: TStringField
      FieldName = 'Nome_Completo_1'
      FixedChar = True
      Size = 45
    end
    object qrSolicitacoesEmail_1: TStringField
      FieldName = 'Email_1'
      FixedChar = True
      Size = 50
    end
  end
  object dsSolicitacoes: TDataSource
    DataSet = qrSolicitacoes
    Top = 32
  end
  object tbSolTrad: TTable
    AfterPost = tbSolTradAfterPost
    BeforeDelete = tbSolTradBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;filial;Codigo'
    MasterSource = dsSolicitacoes
    TableName = 'Solicitacao_Tracla'
    Left = 128
    object tbSolTradEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbSolTradFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbSolTradCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object tbSolTradData_solicitacao: TDateTimeField
      FieldName = 'Data_solicitacao'
    end
    object tbSolTradRemetente: TStringField
      FieldName = 'Remetente'
      Size = 10
    end
    object tbSolTradObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
    object tbSolTradStatus: TIntegerField
      FieldName = 'Status'
    end
    object tbSolTradTradutor: TStringField
      FieldName = 'Tradutor'
      Size = 10
    end
    object tbSolTradData_Traducao: TDateTimeField
      FieldName = 'Data_Traducao'
    end
  end
  object dsSolCheques: TDataSource
    DataSet = tbSolTrad
    Left = 128
    Top = 40
  end
  object tbParametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 197
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
      'SELECT Faturas.Processo, Faturas.Codigo'
      'FROM Faturas'
      'WHERE Faturas.Processo like :proc')
    Left = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
        Value = '01916/03'
      end>
    object qrProcProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Faturas.Processo'
      Size = 8
    end
    object qrProcCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      Size = 30
    end
  end
  object dsProc: TDataSource
    DataSet = qrProc
    Left = 656
    Top = 32
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
    Left = 264
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 304
  end
  object SMTP: TIdSMTP
    MaxLineAction = maException
    SendBufferSize = 10032768
    Host = '172.19.92.48'
    Port = 25
    AuthenticationType = atLogin
    Left = 232
  end
  object qrRecebe: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Usuario, Usuarios.Nome_Completo, Usuarios.Email_' +
        'aviso_finan, Usuarios.Email, Usuarios.Email_aviso_oper'
      'FROM Usuarios'
      'WHERE Usuario like :usu')
    Left = 512
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrRecebeUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object qrRecebeNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object qrRecebeEmail_aviso_finan: TSmallintField
      FieldName = 'Email_aviso_finan'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_finan'
    end
    object qrRecebeEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrRecebeEmail_aviso_oper: TSmallintField
      FieldName = 'Email_aviso_oper'
      Origin = 'DBNMSCOMEX.Usuarios.Email_aviso_oper'
    end
  end
  object tbItens: TTable
    AfterPost = tbItensAfterPost
    BeforeDelete = tbItensBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo;Sequencial'
    TableName = 'Solicitacao_Tracla_Itens'
    Left = 440
    Top = 280
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
    object tbItensFatura: TStringField
      FieldName = 'Fatura'
      Size = 50
    end
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 448
    Top = 288
  end
  object qrListaStatus: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Solicitacao_Tracla_Status.Codigo, Solicitacao_Tracla_Stat' +
        'us.Descricao'
      'FROM Solicitacao_Tracla_Status')
    Left = 72
    Top = 65534
    object qrListaStatusCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Solicitacao_Tracla_Status.Codigo'
    end
    object qrListaStatusDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Solicitacao_Tracla_Status.Descricao'
      Size = 50
    end
  end
  object dsListaStatus: TDataSource
    DataSet = qrListaStatus
    Left = 72
    Top = 32
  end
  object qrEnvia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuarios.Nome_Completo, Usuarios.Email, Usuarios.Usuario'
      'FROM Usuarios'
      'WHERE Usuarios.Usuario = :usu')
    Left = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrEnviaNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object qrEnviaEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrEnviaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
  end
  object qrTradutor: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Traduz_Classifica, Usuarios.Usuario, Usuarios.No' +
        'me_Completo'
      'FROM Usuarios'
      'WHERE Usuarios.Traduz_Classifica=1'
      'ORDER BY Usuarios.Usuario')
    Left = 720
    object qrTradutorTraduz_Classifica: TSmallintField
      FieldName = 'Traduz_Classifica'
      Origin = 'DBNMSCOMEX.Usuarios.Traduz_Classifica'
    end
    object qrTradutorUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object qrTradutorNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
  end
  object dsTradutor: TDataSource
    DataSet = qrTradutor
    Left = 720
    Top = 40
  end
  object qrListaTradutor: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Traduz_Classifica, Usuarios.Usuario, Usuarios.No' +
        'me_Completo'
      'FROM Usuarios'
      'WHERE Usuarios.Traduz_Classifica=1'
      'ORDER BY Usuarios.Usuario')
    Left = 42
    Top = 65534
    object qrListaTradutorTraduz_Classifica: TSmallintField
      FieldName = 'Traduz_Classifica'
      Origin = 'DBNMSCOMEX.Usuarios.Traduz_Classifica'
    end
    object qrListaTradutorUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object qrListaTradutorNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
  end
  object dsListaTradutor: TDataSource
    DataSet = qrListaTradutor
    Left = 42
    Top = 32
  end
  object qrListaUsuarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuario, Nome_completo FROM Usuarios'
      'ORDER BY  Nome_completo ')
    Left = 334
    Top = 65534
    object qrListaUsuariosUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object qrListaUsuariosNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
  end
  object dsListausuarios: TDataSource
    DataSet = qrListaUsuarios
    Left = 334
    Top = 32
  end
end
