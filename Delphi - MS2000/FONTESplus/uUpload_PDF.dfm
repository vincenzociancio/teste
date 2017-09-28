object frmUpload_PDF: TfrmUpload_PDF
  Left = 285
  Top = 58
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Upload PDF '
  ClientHeight = 645
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 33
    Align = alTop
    Color = clInfoBk
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 156
      Height = 13
      Caption = 'Entre com o número do processo'
    end
    object edtProcesso: TMaskEdit
      Left = 176
      Top = 6
      Width = 69
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnChange = edtProcessoChange
    end
  end
  object pnlDadosProcesso: TPanel
    Left = 0
    Top = 33
    Width = 664
    Height = 80
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 144
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object Label4: TLabel
      Left = 528
      Top = 24
      Width = 81
      Height = 13
      Caption = 'Data de Inclusão'
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 662
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'Informações do processo'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object edtCliente: TEdit
      Left = 144
      Top = 40
      Width = 377
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtCNPJ: TEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtDataInclusao: TEdit
      Left = 528
      Top = 40
      Width = 121
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 664
    Height = 496
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 16
      Top = 7
      Width = 94
      Height = 13
      Caption = 'Tipo do Documento'
    end
    object Label6: TLabel
      Left = 312
      Top = 7
      Width = 110
      Height = 13
      Caption = 'Sub-Tipo do Documeto'
    end
    object Label7: TLabel
      Left = 144
      Top = 56
      Width = 71
      Height = 13
      Caption = 'Vigência Inicial'
    end
    object Label8: TLabel
      Left = 240
      Top = 56
      Width = 66
      Height = 13
      Caption = 'Vigência Final'
    end
    object Label9: TLabel
      Left = 16
      Top = 56
      Width = 110
      Height = 13
      Caption = 'Número do Documento'
    end
    object Label10: TLabel
      Left = 16
      Top = 102
      Width = 58
      Height = 13
      Caption = 'Observação'
    end
    object btnBuscar: TSpeedButton
      Left = 451
      Top = 463
      Width = 23
      Height = 22
      Hint = 'Salvar .pdf'
      Caption = '...'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnBuscarClick
    end
    object SpeedButton2: TSpeedButton
      Left = 475
      Top = 463
      Width = 23
      Height = 22
      Hint = 'Limpar caminho'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object Bevel1: TBevel
      Left = 16
      Top = 448
      Width = 633
      Height = 9
      Shape = bsTopLine
    end
    object Label11: TLabel
      Left = 25
      Top = 433
      Width = 98
      Height = 13
      Caption = 'Localizar arquivo pdf'
    end
    object gbFinanceiro: TGroupBox
      Left = 16
      Top = 140
      Width = 633
      Height = 149
      Caption = ' Financeiro '
      Enabled = False
      TabOrder = 11
      object Label16: TLabel
        Left = 374
        Top = 28
        Width = 23
        Height = 13
        Caption = 'Data'
        Visible = False
      end
      object SpeedButton1: TSpeedButton
        Left = 603
        Top = 43
        Width = 23
        Height = 22
        Hint = 'Limpar informações do financeiro'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object Label12: TLabel
        Left = 238
        Top = 28
        Width = 37
        Height = 13
        Caption = 'Cheque'
      end
      object Label15: TLabel
        Left = 238
        Top = 28
        Width = 28
        Height = 13
        Caption = 'Conta'
        Visible = False
      end
      object dblcbContaDebito: TDBLookupComboBox
        Left = 238
        Top = 44
        Width = 129
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsConta
        TabOrder = 0
        Visible = False
      end
      object edtCheque: TEdit
        Left = 238
        Top = 44
        Width = 73
        Height = 21
        Enabled = False
        TabOrder = 1
        OnChange = edtChequeChange
        OnExit = edtChequeExit
      end
      object btnLocalizar: TBitBtn
        Left = 320
        Top = 44
        Width = 86
        Height = 21
        Hint = 'Localizar uma Movimentação'
        Caption = '&Localizar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
      object edDataDebito: TEdit
        Left = 374
        Top = 44
        Width = 73
        Height = 21
        TabOrder = 3
        Visible = False
        OnChange = edDataDebitoChange
      end
      object GroupBox2: TGroupBox
        Left = 14
        Top = 19
        Width = 216
        Height = 46
        Caption = ' Tipo de Movimentação '
        TabOrder = 4
        object rbCheque: TRadioButton
          Left = 32
          Top = 24
          Width = 60
          Height = 17
          Caption = 'Cheque'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnEnter = rbChequeEnter
        end
        object rbDebito: TRadioButton
          Left = 136
          Top = 24
          Width = 57
          Height = 17
          Caption = 'Débito'
          TabOrder = 1
          OnEnter = rbDebitoEnter
        end
      end
      object DBGrid4: TDBGrid
        Left = 3
        Top = 73
        Width = 627
        Height = 72
        DataSource = dtsDesm
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Conta'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Historico'
            Title.Caption = 'Histórico'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Detalhe'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Registrado'
            Title.Caption = 'Valor'
            Width = 83
            Visible = True
          end>
      end
    end
    object edtTipo: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 289
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = dtsTipo
      TabOrder = 0
      OnExit = edtTipoExit
    end
    object edtSub_Tipo: TDBLookupComboBox
      Left = 312
      Top = 24
      Width = 337
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = dtsSub_Tipo
      TabOrder = 1
    end
    object edtNumero_Doc: TEdit
      Left = 16
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = edtNumero_DocKeyPress
    end
    object edtObs: TEdit
      Left = 16
      Top = 118
      Width = 633
      Height = 21
      MaxLength = 250
      TabOrder = 7
    end
    object edtCaminho: TEdit
      Left = 16
      Top = 464
      Width = 425
      Height = 21
      Enabled = False
      TabOrder = 3
      OnChange = edtCaminhoChange
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 288
      Width = 633
      Height = 137
      Caption = 'Arquivos PDF'#39's referentes'
      TabOrder = 4
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 629
        Height = 120
        Align = alClient
        DataSource = dtsArquivos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Data_inclusao'
            Title.Caption = 'Data de Inclusão'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero_Doc'
            Title.Caption = 'Nº do Documento'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'Pasta'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Arquivo'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observacoes'
            Width = 300
            Visible = True
          end>
      end
    end
    object edtDtInicial: TMaskEdit
      Left = 144
      Top = 72
      Width = 89
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object edtDtFinal: TMaskEdit
      Left = 240
      Top = 72
      Width = 89
      Height = 21
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
    object pnlLancDebito: TPanel
      Left = 27
      Top = 25
      Width = 609
      Height = 215
      BevelWidth = 4
      TabOrder = 8
      Visible = False
      object Label56: TLabel
        Left = 136
        Top = 16
        Width = 6
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gbLancamentos: TGroupBox
        Left = 8
        Top = 8
        Width = 594
        Height = 169
        Caption = ' Lançamentos - Débitos '
        TabOrder = 0
        object dbGridLancamentos: TDBGrid
          Left = 10
          Top = 25
          Width = 572
          Height = 135
          Hint = 'Duplo Clique para entrar no Desmembramento'
          DataSource = dtsLancamentosDebito
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbGridLancamentosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Conta'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 148
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Historico'
              Title.Caption = 'Histórico'
              Width = 300
              Visible = True
            end>
        end
      end
      object btnFechaPnlUpload: TBitBtn
        Left = 532
        Top = 182
        Width = 69
        Height = 25
        Caption = 'Fechar'
        TabOrder = 1
        OnClick = btnFechaPnlUploadClick
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
    object pnlDesmDebito: TPanel
      Left = 26
      Top = 87
      Width = 609
      Height = 215
      BevelWidth = 4
      TabOrder = 9
      Visible = False
      object Label14: TLabel
        Left = 136
        Top = 16
        Width = 6
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 8
        Width = 594
        Height = 169
        Caption = ' Desmembramentos - Débito '
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 10
          Top = 25
          Width = 572
          Height = 135
          Hint = 'Duplo Clique para Selecionar Lançamento'
          DataSource = dtsDesmembramentosDebito
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Processo'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Caption = 'Descrição'
              Width = 193
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Detalhe'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Registrado'
              Title.Caption = 'Valor'
              Width = 78
              Visible = True
            end>
        end
      end
      object btnFechaDesmDebitos: TBitBtn
        Left = 532
        Top = 182
        Width = 69
        Height = 25
        Caption = 'Fechar'
        TabOrder = 1
        OnClick = btnFechaDesmDebitosClick
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
    object pnlCheque: TPanel
      Left = 26
      Top = 149
      Width = 609
      Height = 215
      BevelWidth = 4
      TabOrder = 10
      Visible = False
      object Label13: TLabel
        Left = 136
        Top = 16
        Width = 6
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 8
        Width = 594
        Height = 169
        Caption = ' Desmembramento - Cheque '
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 10
          Top = 25
          Width = 572
          Height = 135
          Hint = 'Duplo Clique para selecionar o Lançamento'
          DataSource = dtsDesmembramentosCheque
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid2DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Processo'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Caption = 'Descrição'
              Width = 193
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Historico'
              Title.Caption = 'Detalhe'
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Registrado'
              Title.Caption = 'Valor'
              Width = 78
              Visible = True
            end>
        end
      end
      object btnFechaCheque: TBitBtn
        Left = 532
        Top = 182
        Width = 69
        Height = 25
        Caption = 'Fechar'
        TabOrder = 1
        OnClick = btnFechaChequeClick
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
  object Panel3: TPanel
    Left = 0
    Top = 609
    Width = 664
    Height = 36
    Align = alClient
    TabOrder = 3
    object btnUpload: TBitBtn
      Left = 440
      Top = 8
      Width = 139
      Height = 25
      Caption = 'Realizar Upload'
      Enabled = False
      TabOrder = 0
      OnClick = btnUploadClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
        5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
        335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
        C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
        CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
        C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
        CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
        5555555775FFFF77555555555C4CCC5555555555577777555555}
      NumGlyphs = 2
    end
    object btnFechar: TBitBtn
      Left = 584
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      Kind = bkClose
    end
  end
  object qryTipo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' codigo, '
      ' descricao '
      'from '
      ' Tipo_Documentos'
      'order by 2')
    Left = 112
    Top = 112
    object qryTipocodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 4
    end
    object qryTipodescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 50
    end
  end
  object qrySub_Tipo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select codigo, descricao from Sub_Tipo_Documentos'
      'where Tipo_doc =:Tipo'
      'order by 2')
    Left = 376
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    object qrySub_Tipocodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 4
    end
    object qrySub_Tipodescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 70
    end
  end
  object dtsSub_Tipo: TDataSource
    DataSet = qrySub_Tipo
    Left = 512
    Top = 97
  end
  object dtsTipo: TDataSource
    DataSet = qryTipo
    Left = 232
    Top = 112
  end
  object qryProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' p.Codigo, '
      ' p.Numero_TR, '
      ' p.Local_Inventario, '
      ' p.Contrato,'
      ' p.Status,'
      ' i.Codigo as CodImportador,'
      ' i.CNPJ_CPF_COMPLETO,'
      ' i.Razao_Social'
      'FROM '
      ' Processos p'
      ' inner join Importadores i on (i.Codigo = p.Importador)'
      'WHERE '
      ' p.Codigo =:Processo')
    Left = 456
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '00433/02'
      end>
    object qryProcessosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Processos.Codigo'
      FixedChar = True
      Size = 8
    end
    object qryProcessosNumero_TR: TStringField
      FieldName = 'Numero_TR'
      Origin = 'DBNMSCOMEX.Processos.Numero_TR'
      FixedChar = True
    end
    object qryProcessosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Origin = 'DBNMSCOMEX.Processos.Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object qryProcessosContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'DBNMSCOMEX.Processos.Contrato'
      FixedChar = True
      Size = 8
    end
    object qryProcessosCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object qryProcessosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryProcessosStatus: TStringField
      FieldName = 'Status'
      Origin = 'DBNMSCOMEX.Processos.Status'
      FixedChar = True
      Size = 3
    end
    object qryProcessosCodImportador: TStringField
      FieldName = 'CodImportador'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
  end
  object OP: TOpenDialog
    FileName = '*.pdf'
    Filter = '*.pdf|*.pdf'
    Title = 'Selecionar'
    Left = 265
    Top = 49
  end
  object qryParametro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Numerador_Documentos'
      'from '
      ' Parametros')
    Left = 408
    Top = 177
    object qryParametroNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Origin = 'DBNMSCOMEX.Parametros.Numerador_Documentos'
      FixedChar = True
      Size = 8
    end
  end
  object qryUpdateN: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update parametros set Numerador_Documentos=:NewNumero')
    Left = 536
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NewNumero'
        ParamType = ptUnknown
      end>
  end
  object qryIncDocs: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Documentos '
      '(Arquivo,'
      'Pagina, '
      'ftp, '
      'Data_inclusao, '
      'Empresa, '
      'Filial, '
      'Importador, '
      'Processo, '
      'Tipo_Doc, '
      'Sub_Tipo_Doc, '
      'Numero_Doc, '
      'Codigo, '
      'Vigencia_inicial, '
      'Vigencia_final, '
      'Observacoes, '
      'Contrato, '
      '[Local], '
      'Status, '
      'usuario_dig,'
      'Reg_Numerario,'
      'PDF)'
      ''
      'values'
      ''
      '(:Arquivo,'
      ':Pagina, '
      '0, '
      'GetDate(), '
      #39'1'#39', '
      #39'RJO'#39', '
      ':Importador, '
      ':Processo, '
      ':Tipo_Doc, '
      ':Sub_Tipo_Doc, '
      ':Numero_Doc, '
      ':Codigo, '
      'Cast(:Vigencia_inicial as Date ),'
      'Cast(:Vigencia_final as Date ), '
      ':Observacoes, '
      ':Contrato, '
      ':Local, '
      ':Status, '
      ':usuario,'
      ':Reg_Numerario,'
      '1)')
    Left = 608
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Arquivo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pagina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo_Doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Sub_Tipo_Doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Numero_Doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Vigencia_inicial'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Vigencia_final'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Observacoes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Local'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Reg_Numerario'
        ParamType = ptInput
      end>
  end
  object qryDelErro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from documentos'
      'where Codigo=:Codigo and Arquivo=:Arquivo')
    Left = 472
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Arquivo'
        ParamType = ptUnknown
      end>
  end
  object dtsArquivos: TDataSource
    DataSet = qryArquivos
    Left = 248
    Top = 345
  end
  object qryArquivos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      'Data_inclusao,'
      'Numero_Doc,'
      'Codigo,'
      'Arquivo,'
      'Observacoes'
      'from '
      'Documentos'
      'Where '
      'processo=:processo'
      'and PDF = 1')
    Left = 312
    Top = 345
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptUnknown
        Value = '00305/12'
      end>
    object qryArquivosData_inclusao: TDateTimeField
      FieldName = 'Data_inclusao'
      Origin = 'DBNMSCOMEX.Documentos.Data_inclusao'
    end
    object qryArquivosNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      Origin = 'DBNMSCOMEX.Documentos.Numero_Doc'
      FixedChar = True
      Size = 30
    end
    object qryArquivosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Documentos.Codigo'
      FixedChar = True
      Size = 11
    end
    object qryArquivosArquivo: TStringField
      FieldName = 'Arquivo'
      Origin = 'DBNMSCOMEX.Documentos.Arquivo'
      FixedChar = True
      Size = 11
    end
    object qryArquivosObservacoes: TStringField
      FieldName = 'Observacoes'
      Origin = 'DBNMSCOMEX.Documentos.Observacoes'
      FixedChar = True
      Size = 255
    end
  end
  object qryDesmembramentosCheque: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT NP.Processo, TN.Descricao, MCC.Historico, NP.Valor_Regist' +
        'rado, NP.REG'
      
        '  FROM Movimentacao_Contas_Correntes MCC INNER JOIN Numerarios_P' +
        'rocessos NP '
      
        '    ON MCC.Codigo_Mov = NP.Codigo_mov INNER JOIN Tipos_Numerario' +
        ' TN'
      '    ON NP.Numerario = TN.Codigo                                '
      
        ' WHERE MCC.Doc     = :p0                                        ' +
        '            '
      '   AND NP.Processo = :p1 ')
    Left = 224
    Top = 561
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object qryDesmembramentosChequeProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qryDesmembramentosChequeDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryDesmembramentosChequeReg: TIntegerField
      FieldName = 'Reg'
    end
    object qryDesmembramentosChequeHistorico: TStringField
      FieldName = 'Historico'
      Size = 255
    end
    object qryDesmembramentosChequeValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
  end
  object dtsDesmembramentosCheque: TDataSource
    DataSet = qryDesmembramentosCheque
    Left = 72
    Top = 561
  end
  object qryDesmembramentosDebito: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT NP.Processo, TN.Descricao, NP.Detalhe, NP.Valor_Registrad' +
        'o, NP.REG'
      
        '  FROM Movimentacao_Contas_Correntes MCC INNER JOIN Numerarios_P' +
        'rocessos NP '
      
        '    ON MCC.Codigo_Mov = NP.Codigo_mov INNER JOIN Tipos_Numerario' +
        ' TN'
      '    ON NP.Numerario = TN.Codigo                                '
      
        ' WHERE MCC.Codigo_Mov = :p0                                     ' +
        '               '
      '       AND NP.Processo         = :p1    '
      
        '       AND NP.REG NOT IN (SELECT REG FROM Documentos WHERE Proce' +
        'sso = NP.Processo AND Reg_Numerario = REG)')
    Left = 224
    Top = 614
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object qryDesmembramentosDebitoProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qryDesmembramentosDebitoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qryDesmembramentosDebitoValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object qryDesmembramentosDebitoReg: TAutoIncField
      FieldName = 'Reg'
    end
    object qryDesmembramentosDebitoDetalhe: TStringField
      FieldName = 'Detalhe'
      Size = 50
    end
  end
  object dtsDesmembramentosDebito: TDataSource
    DataSet = qryDesmembramentosDebito
    Left = 72
    Top = 617
  end
  object dtsLancamentosDebito: TDataSource
    DataSet = qryLancamentosDebito
    Left = 72
    Top = 681
  end
  object qryLancamentosDebito: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT DISTINCT CC.Descricao AS CONTA, MCC.Data, TLC.Descricao, ' +
        'MCC.Historico, MCC.Valor, MCC.Codigo_Mov'
      
        '  FROM Movimentacao_Contas_Correntes MCC INNER JOIN Numerarios_P' +
        'rocessos NP '
      
        '    ON MCC.Codigo_Mov = NP.Codigo_mov INNER JOIN Tipos_Numerario' +
        ' TN'
      
        '    ON NP.Numerario = TN.Codigo INNER JOIN Tipos_Lancamento_Ccor' +
        'rente TLC'
      '    ON MCC.Tipo = TLC.Codigo INNER JOIN Contas_Correntes CC'
      '    ON MCC.Codigo = CC.Codigo                              '
      ' WHERE MCC.Tipo  = 2'
      
        '   AND MCC.Codigo  = :p0                                        ' +
        '            '
      '   AND MCC.Data      = :p1               '
      '   AND NP.Processo  = :p2')
    Left = 224
    Top = 678
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
    object qryLancamentosDebitoConta: TStringField
      FieldName = 'Conta'
      Size = 45
    end
    object qryLancamentosDebitoData: TDateTimeField
      FieldName = 'Data'
    end
    object qryLancamentosDebitoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object qryLancamentosDebitoHistorico: TStringField
      FieldName = 'Historico'
      Size = 255
    end
    object qryLancamentosDebitoValor: TFloatField
      FieldName = 'Valor'
    end
    object qryLancamentosDebitoCodigo_Mov: TIntegerField
      FieldName = 'Codigo_Mov'
    end
  end
  object dsConta: TDataSource
    DataSet = qrConta
    Left = 416
    Top = 616
  end
  object qrConta: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      '  FROM Contas_Correntes WHERE Nivel = 2  ')
    Left = 352
    Top = 614
    object qrContaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrContaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
  end
  object qryDesm: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT CC.Descricao, MCC.Data, MCC.Historico, NP.Detalhe, NP.Val' +
        'or_Registrado, NP.REG'
      
        '  FROM Movimentacao_Contas_Correntes MCC INNER JOIN Numerarios_P' +
        'rocessos NP '
      
        '    ON MCC.Codigo_Mov = NP.Codigo_mov INNER JOIN Contas_Corrente' +
        's CC'
      '    ON MCC.Codigo = CC.Codigo                              '
      ' WHERE NP.REG = :p0'#9)
    Left = 384
    Top = 728
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'#9
        ParamType = ptUnknown
      end>
    object qryDesmDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object qryDesmData: TDateTimeField
      FieldName = 'Data'
    end
    object qryDesmHistorico: TStringField
      FieldName = 'Historico'
      Size = 255
    end
    object qryDesmDetalhe: TStringField
      FieldName = 'Detalhe'
      Size = 50
    end
    object qryDesmReg: TIntegerField
      FieldName = 'Reg'
    end
    object qryDesmValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
  end
  object dtsDesm: TDataSource
    DataSet = qryDesm
    Left = 485
    Top = 728
  end
end
