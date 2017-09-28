object F_proFollowup: TF_proFollowup
  Left = 316
  Top = 197
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Follow Up de Processos'
  ClientHeight = 624
  ClientWidth = 899
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 899
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
      Top = 11
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
    object pinfo: TPanel
      Left = 360
      Top = -8
      Width = 417
      Height = 41
      Enabled = False
      TabOrder = 1
      Visible = False
      object bprofol: TButton
        Left = 120
        Top = 8
        Width = 113
        Height = 25
        Caption = 'Processa Follow web'
        TabOrder = 0
        OnClick = bprofolClick
      end
      object e_dataprofol: TEdit
        Left = 8
        Top = 8
        Width = 89
        Height = 21
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 280
        Top = 0
        Width = 128
        Height = 41
        DataSource = dsprofol
        TabOrder = 2
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
          end>
      end
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 899
    Height = 523
    Align = alClient
    Color = 10514464
    TabOrder = 1
    Visible = False
    object Label219: TLabel
      Left = 12
      Top = 270
      Width = 23
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label220: TLabel
      Left = 80
      Top = 270
      Width = 23
      Height = 13
      Caption = 'Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label221: TLabel
      Left = 116
      Top = 269
      Width = 34
      Height = 13
      Caption = 'Evento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label222: TLabel
      Left = 464
      Top = 269
      Width = 110
      Height = 13
      Caption = 'Observação do Evento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label223: TLabel
      Left = 12
      Top = 306
      Width = 110
      Height = 13
      Caption = 'Observação Detalhada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label253: TLabel
      Left = 12
      Top = 344
      Width = 114
      Height = 13
      Caption = 'Referência ao Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblStatusProcesso: TLabel
      Left = 13
      Top = 397
      Width = 144
      Height = 16
      Caption = 'Status do Processo: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lblResponsavelEmpresa: TLabel
      Left = 15
      Top = 447
      Width = 135
      Height = 13
      Caption = 'lblResponsavelEmpresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 441
      Top = 427
      Width = 123
      Height = 13
      Caption = 'Localização da Pasta'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label24: TLabel
      Left = 15
      Top = 427
      Width = 114
      Height = 13
      Caption = 'Responsável do MS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblResponsavelDaPasta: TLabel
      Left = 441
      Top = 447
      Width = 135
      Height = 13
      Caption = 'lblResponsavelDaPasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 15
      Top = 468
      Width = 135
      Height = 16
      Caption = 'Pendências Apenc:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescAPenc: TLabel
      Left = 15
      Top = 488
      Width = 874
      Height = 38
      AutoSize = False
      Caption = 'Observações:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object lblSaldo: TLabel
      Left = 713
      Top = 427
      Width = 33
      Height = 13
      Caption = 'Saldo'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblSaldoResult: TLabel
      Left = 713
      Top = 447
      Width = 82
      Height = 13
      Caption = 'lblSaldoResult'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgFollowUp: TDBGrid
      Left = 11
      Top = 10
      Width = 880
      Height = 255
      DataSource = dsQFollowUp
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgFollowUpDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Data'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hora'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qevento'
          Title.Caption = 'Descrição do Evento'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qobs'
          Title.Caption = 'Descrição da Observação'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Obs_especifica'
          Title.Caption = 'Observação Detalhada'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'link'
          Title.Caption = 'Ref. Proc.'
          Width = 156
          Visible = True
        end>
    end
    object dbEdtData: TDBEdit
      Left = 11
      Top = 284
      Width = 65
      Height = 21
      DataField = 'Data'
      DataSource = dsFollowUp
      Enabled = False
      TabOrder = 1
      OnChange = dbEdtDataChange
      OnExit = dbEdtDataChange
    end
    object dbEdtHora: TDBEdit
      Left = 79
      Top = 284
      Width = 34
      Height = 21
      DataField = 'Hora'
      DataSource = dsFollowUp
      Enabled = False
      TabOrder = 2
      OnChange = dbEdtHoraChange
      OnExit = dbEdtHoraChange
    end
    object dbLcbEvento: TDBLookupComboBox
      Left = 116
      Top = 284
      Width = 312
      Height = 21
      DataField = 'Codevento'
      DataSource = dsFollowUp
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dsEventos
      TabOrder = 3
    end
    object dbLcbObs: TDBLookupComboBox
      Left = 464
      Top = 284
      Width = 395
      Height = 21
      DataField = 'Codobs'
      DataSource = dsFollowUp
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dsObsEventos
      TabOrder = 5
    end
    object dbEdtObsDet: TDBEdit
      Left = 11
      Top = 321
      Width = 878
      Height = 21
      DataField = 'Obs_especifica'
      DataSource = dsFollowUp
      Enabled = False
      TabOrder = 7
    end
    object dbEdtRef: TDBEdit
      Left = 12
      Top = 358
      Width = 117
      Height = 21
      DataField = 'link'
      DataSource = dsFollowUp
      Enabled = False
      TabOrder = 8
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 531
      Width = 879
      Height = 37
      Caption = ' Grupos de Responsabilidades aplicados aos Eventos de FollowUp '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      object Label1: TLabel
        Left = 17
        Top = 18
        Width = 79
        Height = 14
        Caption = 'MS LOGÍSTICA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 115
        Top = 18
        Width = 42
        Height = 14
        Caption = 'AGENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 176
        Top = 18
        Width = 28
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'SDFG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label4: TLabel
        Left = 221
        Top = 18
        Width = 98
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'EMPRESA/CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 696
        Top = 17
        Width = 64
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'RF / SERPRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label6: TLabel
        Left = 337
        Top = 18
        Width = 70
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'GARANTIDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label7: TLabel
        Left = 425
        Top = 18
        Width = 95
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'TRANSPORTADOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label8: TLabel
        Left = 538
        Top = 18
        Width = 90
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'TERMINAL PORT.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label9: TLabel
        Left = 645
        Top = 17
        Width = 34
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'SEFAZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label10: TLabel
        Left = 774
        Top = 17
        Width = 63
        Height = 14
        Hint = 'Sábados,Domingos,Feriados e Greves'
        Caption = 'SEM GRUPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Panel1: TPanel
        Left = 3
        Top = 19
        Width = 12
        Height = 12
        Color = clBlue
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 100
        Top = 19
        Width = 12
        Height = 12
        Color = clGreen
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 161
        Top = 19
        Width = 12
        Height = 12
        Color = clPurple
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 207
        Top = 19
        Width = 12
        Height = 12
        Color = clMaroon
        TabOrder = 3
      end
      object Panel6: TPanel
        Left = 682
        Top = 18
        Width = 12
        Height = 12
        Color = clGray
        TabOrder = 4
      end
      object Panel7: TPanel
        Left = 322
        Top = 19
        Width = 12
        Height = 12
        Color = clLime
        TabOrder = 5
      end
      object Panel8: TPanel
        Left = 411
        Top = 19
        Width = 12
        Height = 12
        Color = clAqua
        TabOrder = 6
      end
      object Panel9: TPanel
        Left = 524
        Top = 19
        Width = 12
        Height = 12
        Color = clOlive
        TabOrder = 7
      end
      object Panel10: TPanel
        Left = 631
        Top = 18
        Width = 12
        Height = 12
        Color = clFuchsia
        TabOrder = 8
      end
      object Panel11: TPanel
        Left = 761
        Top = 18
        Width = 12
        Height = 12
        Color = clBlack
        TabOrder = 9
      end
    end
    object sbLocEvento: TBitBtn
      Left = 430
      Top = 285
      Width = 23
      Height = 21
      Enabled = False
      TabOrder = 4
      OnClick = sbLocEventoClick
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
    object sbLimpaObs: TBitBtn
      Left = 865
      Top = 285
      Width = 23
      Height = 21
      TabOrder = 6
      OnClick = sbLimpaObsClick
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
    end
    object pnlHoraDesembaraco: TPanel
      Left = 290
      Top = 166
      Width = 176
      Height = 108
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 5
      BorderWidth = 1
      TabOrder = 11
      Visible = False
      object Label28: TLabel
        Left = 20
        Top = 43
        Width = 43
        Height = 13
        Caption = '(HH:MM)'
      end
      object Panel14: TPanel
        Left = 6
        Top = 6
        Width = 164
        Height = 27
        Align = alTop
        Caption = 'Hora Desembaraço'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 11
        Top = 68
        Width = 75
        Height = 25
        Caption = '&Incluir'
        TabOrder = 1
        OnClick = BitBtn1Click
        Kind = bkOK
      end
      object btnCancelarHora: TBitBtn
        Left = 91
        Top = 68
        Width = 75
        Height = 25
        Cancel = True
        Caption = '&Cancelar'
        ModalResult = 2
        TabOrder = 2
        OnClick = btnCancelarHoraClick
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
      object txtHoraDesembaraco: TMaskEdit
        Left = 73
        Top = 38
        Width = 36
        Height = 21
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 3
        Text = '  :  '
      end
    end
    object gpbFollow_auto: TGroupBox
      Left = 141
      Top = 342
      Width = 749
      Height = 46
      Caption = 'Follow Automático'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      object lblExibiFollow: TLabel
        Left = 286
        Top = 20
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object chbCriarFollow: TCheckBox
        Left = 12
        Top = 20
        Width = 85
        Height = 17
        Caption = 'Criar Follow'
        Enabled = False
        TabOrder = 0
      end
      object btnAtivaFollow: TButton
        Left = 101
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Ativar'
        Enabled = False
        TabOrder = 1
        OnClick = btnAtivaFollowClick
      end
      object btnCancelarFollow: TButton
        Left = 180
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 2
        OnClick = btnCancelarFollowClick
      end
    end
    object pnlAutGerente: TPanel
      Left = 278
      Top = 359
      Width = 425
      Height = 161
      BevelWidth = 3
      TabOrder = 12
      Visible = False
      object Label18: TLabel
        Left = 8
        Top = 40
        Width = 116
        Height = 13
        Caption = 'Selecione o responsável'
      end
      object Label19: TLabel
        Left = 8
        Top = 88
        Width = 106
        Height = 13
        Caption = 'Senha do responsável'
      end
      object Label20: TLabel
        Left = 8
        Top = 128
        Width = 185
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Caption = 'Senha Incorreta! '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object Panel16: TPanel
        Left = 3
        Top = 3
        Width = 419
        Height = 25
        Align = alTop
        Color = clInfoBk
        TabOrder = 0
        object Label21: TLabel
          Left = 16
          Top = 32
          Width = 393
          Height = 33
          AutoSize = False
          Caption = 
            'Existe(m) pendência(s) de follow-up anterior(es). Para prossegui' +
            'r será necessário a autorização do coordenador responsável.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Panel17: TPanel
          Left = 1
          Top = 1
          Width = 417
          Height = 24
          Align = alTop
          Caption = 'Solicitação de autorização '
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object edtGerenteResp: TDBLookupComboBox
        Left = 8
        Top = 56
        Width = 393
        Height = 21
        KeyField = 'Usuario'
        ListField = 'Nome_Completo'
        ListSource = dsGerente
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 8
        Top = 104
        Width = 185
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
      end
      object btOK: TBitBtn
        Left = 216
        Top = 100
        Width = 90
        Height = 26
        Caption = 'Confirmar'
        ModalResult = 1
        TabOrder = 3
        OnClick = btOKClick
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
      object BitBtn3: TBitBtn
        Left = 309
        Top = 100
        Width = 90
        Height = 26
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = btnCancelClick
        Kind = bkCancel
      end
    end
    object pnlAutorizacao: TPanel
      Left = 195
      Top = 128
      Width = 425
      Height = 209
      BevelWidth = 3
      TabOrder = 10
      Visible = False
      object Label16: TLabel
        Left = 16
        Top = 88
        Width = 179
        Height = 13
        Caption = 'Selecione o coordenador responsável'
      end
      object Label17: TLabel
        Left = 16
        Top = 136
        Width = 169
        Height = 13
        Caption = 'Senha do coordenador responsável'
      end
      object lbMsg: TLabel
        Left = 16
        Top = 176
        Width = 185
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Senha Incorreta! '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object Panel12: TPanel
        Left = 3
        Top = 3
        Width = 419
        Height = 67
        Align = alTop
        Color = clInfoBk
        TabOrder = 0
        object Label15: TLabel
          Left = 16
          Top = 32
          Width = 393
          Height = 33
          AutoSize = False
          Caption = 
            'Existe(m) pendência(s) de follow-up anterior(es). Para prossegui' +
            'r será necessário a autorização do coordenador responsável.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 417
          Height = 24
          Align = alTop
          Caption = 'Solicitação de autorização do coordenador responsável'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object edtCoordenadorResp: TDBLookupComboBox
        Left = 16
        Top = 104
        Width = 393
        Height = 21
        KeyField = 'Usuario'
        ListField = 'Nome_Completo'
        ListSource = dtsCoordenador
        TabOrder = 1
      end
      object edtSenha: TEdit
        Left = 16
        Top = 152
        Width = 185
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
      end
      object btnOK: TBitBtn
        Left = 224
        Top = 148
        Width = 90
        Height = 25
        Caption = 'Confirmar'
        ModalResult = 1
        TabOrder = 3
        OnClick = btnOKClick
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
      object btnCancel: TBitBtn
        Left = 317
        Top = 148
        Width = 90
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = btnCancelClick
        Kind = bkCancel
      end
    end
    object pnlAutorizaDI: TPanel
      Left = 187
      Top = 224
      Width = 862
      Height = 201
      BevelWidth = 3
      TabOrder = 14
      Visible = False
      object Panel18: TPanel
        Left = 3
        Top = 3
        Width = 856
        Height = 53
        Align = alTop
        Color = clInfoBk
        TabOrder = 0
        object lblAutorizaDI: TLabel
          Left = 36
          Top = 31
          Width = 196
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor Fatura '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label25: TLabel
          Left = 244
          Top = 31
          Width = 604
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Histórico de Rejeição'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Panel19: TPanel
          Left = 1
          Top = 1
          Width = 854
          Height = 24
          Align = alTop
          Caption = 'Autorização para registro de DI'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object btnIncluiAutDI: TBitBtn
        Left = 31
        Top = 163
        Width = 90
        Height = 25
        Caption = 'Autorizar'
        ModalResult = 1
        TabOrder = 3
        OnClick = btnIncluiAutDIClick
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
      object btnRejeitaAutDI: TBitBtn
        Left = 124
        Top = 163
        Width = 90
        Height = 25
        Caption = 'Rejeitar'
        TabOrder = 4
        OnClick = btnRejeitaAutDIClick
        Kind = bkCancel
      end
      object GroupBox2: TGroupBox
        Left = 10
        Top = 57
        Width = 226
        Height = 44
        Caption = ' Autorizador 1 '
        TabOrder = 1
        object dbedAutorizador1: TDBEdit
          Left = 96
          Top = 17
          Width = 121
          Height = 21
          TabStop = False
          DataField = 'Auditor1'
          DataSource = dsAutorizadorDI
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = dbedAutorizador1Change
        end
        object dbedDataAutorizador1: TDBEdit
          Left = 12
          Top = 17
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'Data_Auditor1'
          DataSource = dsAutorizadorDI
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = dbedDataAutorizador1Change
        end
      end
      object GroupBox4: TGroupBox
        Left = 10
        Top = 108
        Width = 226
        Height = 44
        Caption = ' Autorizador 2 '
        TabOrder = 2
        object dbedAutorizador2: TDBEdit
          Left = 96
          Top = 17
          Width = 121
          Height = 21
          TabStop = False
          DataField = 'Auditor2'
          DataSource = dsAutorizadorDI
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = dbedAutorizador2Change
        end
        object dbedDataAutorizador2: TDBEdit
          Left = 12
          Top = 17
          Width = 73
          Height = 21
          TabStop = False
          DataField = 'Data_Auditor2'
          DataSource = dsAutorizadorDI
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = dbedDataAutorizador2Change
        end
      end
      object DBGrid2: TDBGrid
        Left = 244
        Top = 61
        Width = 607
        Height = 93
        DataSource = dsHistoricoRejeicao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
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
            FieldName = 'Data_Rejeicao'
            Title.Caption = 'Data'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Auditor_Rejeicao'
            Title.Caption = 'Rejeitado por'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observacao'
            Title.Caption = 'Motivo'
            Width = 517
            Visible = True
          end>
      end
      object btnFecharAutorizacaoDI: TBitBtn
        Left = 776
        Top = 166
        Width = 75
        Height = 25
        Caption = '&Fechar'
        ModalResult = 2
        TabOrder = 6
        OnClick = btnFecharAutorizacaoDIClick
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
    object pnlRejeicao: TPanel
      Left = 214
      Top = 231
      Width = 425
      Height = 223
      BevelWidth = 3
      TabOrder = 15
      Visible = False
      object Panel20: TPanel
        Left = 3
        Top = 3
        Width = 419
        Height = 25
        Align = alTop
        Color = clInfoBk
        TabOrder = 0
        object Label30: TLabel
          Left = 16
          Top = 32
          Width = 393
          Height = 33
          AutoSize = False
          Caption = 
            'Existe(m) pendência(s) de follow-up anterior(es). Para prossegui' +
            'r será necessário a autorização do coordenador responsável.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Panel21: TPanel
          Left = 1
          Top = 1
          Width = 417
          Height = 24
          Align = alTop
          Caption = 'Motivo'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object btnSalvarRejeicao: TBitBtn
        Left = 236
        Top = 190
        Width = 90
        Height = 26
        Caption = 'Salvar'
        ModalResult = 1
        TabOrder = 3
        OnClick = btnSalvarRejeicaoClick
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
      object mmDetalheRejeicao: TMemo
        Left = 6
        Top = 32
        Width = 412
        Height = 153
        Lines.Strings = (
          'Memo1')
        MaxLength = 500
        TabOrder = 1
      end
      object btnCancelarRejeicao: TBitBtn
        Left = 329
        Top = 190
        Width = 90
        Height = 26
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btnCancelarRejeicaoClick
        Kind = bkCancel
      end
    end
  end
  object pnlLocEventos: TPanel
    Left = 27
    Top = 51
    Width = 761
    Height = 249
    BevelWidth = 5
    BorderStyle = bsSingle
    TabOrder = 2
    Visible = False
    OnExit = b_cancelaloceventosClick
    object Label251: TLabel
      Left = 73
      Top = 34
      Width = 34
      Height = 13
      Caption = 'Evento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 442
      Top = 34
      Width = 58
      Height = 13
      Caption = 'Observação'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 440
      Top = 112
      Width = 56
      Height = 13
      Caption = 'Codigo_obs'
    end
    object Label13: TLabel
      Left = 12
      Top = 34
      Width = 41
      Height = 13
      Caption = 'Cod. Ev.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 380
      Top = 34
      Width = 44
      Height = 13
      Caption = 'Cod. Obs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object b_cancelaloceventos: TBitBtn
      Left = 400
      Top = 212
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = b_cancelaloceventosClick
      Kind = bkCancel
    end
    object b_okloceventos: TBitBtn
      Left = 304
      Top = 212
      Width = 75
      Height = 25
      TabOrder = 5
      OnClick = b_okloceventosClick
      Kind = bkOK
    end
    object dbgLocEventos: TDBGrid
      Left = 12
      Top = 73
      Width = 733
      Height = 134
      DataSource = dsQLocEventos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'Cod.Evento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição do Evento'
          Width = 312
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_obs'
          Title.Caption = 'Cod.Obs'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_obs'
          Title.Caption = 'Descrição da Obs'
          Visible = True
        end>
    end
    object me_localiza: TMaskEdit
      Left = 73
      Top = 48
      Width = 303
      Height = 21
      TabOrder = 1
      OnChange = me_localizaChange
    end
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 747
      Height = 27
      Align = alTop
      Caption = 'Localiza Eventos / Observações'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object me_localizaobs: TMaskEdit
      Left = 441
      Top = 48
      Width = 303
      Height = 21
      TabOrder = 3
      OnChange = me_localizaChange
    end
    object me_localizaCodEv: TMaskEdit
      Left = 12
      Top = 48
      Width = 58
      Height = 21
      TabOrder = 0
      OnChange = me_localizaChange
    end
    object me_localizaCodObs: TMaskEdit
      Left = 380
      Top = 48
      Width = 58
      Height = 21
      TabOrder = 2
      OnChange = me_localizaChange
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 556
    Width = 899
    Height = 68
    Align = alBottom
    Color = 10514464
    TabOrder = 3
    Visible = False
    object btnIncluir: TBitBtn
      Left = 8
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
      Left = 87
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Alterar'
      Enabled = False
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
      Left = 165
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 3
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
      Left = 475
      Top = 7
      Width = 82
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 4
      OnClick = btnSalvarClick
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
      Left = 560
      Top = 7
      Width = 84
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 5
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
      Left = 817
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 12
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnResumido: TBitBtn
      Left = 423
      Top = 37
      Width = 134
      Height = 25
      Caption = 'F&ollow Up Resumido'
      Enabled = False
      TabOrder = 10
      OnClick = btnResumidoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object btnAlterarHora: TBitBtn
      Left = 244
      Top = 7
      Width = 91
      Height = 25
      Caption = 'Alterar Hora'
      TabOrder = 2
      Visible = False
      OnClick = btnAlterarHoraClick
      Glyph.Data = {
        96040000424D9604000000000000360000002800000012000000140000000100
        1800000000006004000000000000000000000000000000000000C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4000000000000000000000000000000C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C8D0D4C8D0D4C8D0D4C8D0D4
        0000C8D0D4C8D0D4C8D0D4C8D0D4000000FFFFFFFFFFFFFFFFFFFFFFFF000080
        FFFFFFFFFFFFFFFFFFFFFFFF000000C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
        C8D0D4000000FFFFFFFFFFFF000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        80FFFFFFFFFFFF000000C8D0D4C8D0D40000C8D0D4C8D0D4000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000C8D0D40000C8D0D4C8D0D4000000FFFFFF000080FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080FFFFFF000000C8D0D4
        0000C8D0D4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000C8D0D4000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0D4C8D0D4C8D0
        D4C8D0D4FFFFFFFFFFFFFFFFFF0000000000C8D0D4000000FFFFFF000080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFF00
        0080FFFFFF0000000000C8D0D4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000C8D0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000C8D0D4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        C8D0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000C8D0D4C8D0D4
        000000FFFFFF000080FFFFFFFFFFFFFFFFFFFFFFFF000000C8D0D4FFFFFFFFFF
        FFFFFFFF000080FFFFFF000000C8D0D40000C8D0D4C8D0D4000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000C8D0D4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000C8D0D40000C8D0D4C8D0D4C8D0D4000000FFFFFFFFFFFF000080FF
        FFFFFFFFFF000000C8D0D4FFFFFF000080FFFFFFFFFFFF000000C8D0D4C8D0D4
        0000C8D0D4C8D0D4C8D0D4C8D0D4000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFF000000C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4000000000000000000000000000000C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        0000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000}
    end
    object btnCheck: TBitBtn
      Left = 8
      Top = 37
      Width = 75
      Height = 25
      Caption = 'Check'
      Enabled = False
      TabOrder = 6
      OnClick = btnCheckClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
    object btnSemEmail: TBitBtn
      Left = 87
      Top = 37
      Width = 82
      Height = 25
      Caption = 'Sem Email'
      Enabled = False
      TabOrder = 7
      OnClick = btnSemEmailClick
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
    object btnAbrirProcesso: TBitBtn
      Left = 173
      Top = 37
      Width = 113
      Height = 25
      Caption = 'Abrir Processo'
      Enabled = False
      TabOrder = 8
      OnClick = btnAbrirProcessoClick
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
    object btnExcluirPendencia: TBitBtn
      Left = 290
      Top = 37
      Width = 130
      Height = 25
      Caption = 'Excluir Pendência'
      Enabled = False
      TabOrder = 9
      OnClick = btnExcluirPendenciaClick
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
    object btnAutorizaDI: TBitBtn
      Left = 560
      Top = 37
      Width = 119
      Height = 25
      Caption = 'Autorização da DI'
      Enabled = False
      TabOrder = 11
      OnClick = btnAutorizaDIClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
  end
  object dsQProcessos: TDataSource
    Left = 232
    Top = 16
  end
  object qrFollowUp: TQuery
    AutoCalcFields = False
    AfterScroll = qrFollowUpAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Followup.Processo, Followup.Data, Followup.Hora, Foll' +
        'owup.Sequencial, Followup.Codevento, Eventos.Descricao AS qevent' +
        'o, Followup.Codobs, '
      
        '                      Obs_Eventos.Descricao AS qobs, Followup.Ob' +
        's_especifica, Followup.link, Eventos.Grupo, Eventos_Grupos.Descr' +
        'icao AS GRUPORESP, '
      
        '                      Eventos_Grupos.COR_REALCE,followup.follow_' +
        'ativo, follow_auto'
      'FROM         Eventos_Grupos RIGHT OUTER JOIN'
      
        '                      Eventos ON Eventos_Grupos.Codigo = Eventos' +
        '.Grupo RIGHT OUTER JOIN'
      
        '                      Followup ON Eventos.Codigo = Followup.Code' +
        'vento LEFT OUTER JOIN'
      
        '                      Obs_Eventos ON Followup.Codobs = Obs_Event' +
        'os.Codigo AND Followup.Codevento = Obs_Eventos.Evento'
      'WHERE (((Followup.Processo)=:qprocesso))'
      'ORDER BY Followup.Data, Followup.Hora,Followup.Sequencial')
    UpdateMode = upWhereChanged
    Left = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00001152'
      end>
    object qrFollowUpProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrFollowUpData: TDateTimeField
      FieldName = 'Data'
    end
    object qrFollowUpHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 5
    end
    object qrFollowUpSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object qrFollowUpCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object qrFollowUpqevento: TStringField
      FieldName = 'qevento'
      FixedChar = True
      Size = 120
    end
    object qrFollowUpCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object qrFollowUpqobs: TStringField
      FieldName = 'qobs'
      FixedChar = True
      Size = 120
    end
    object qrFollowUpObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object qrFollowUplink: TStringField
      FieldName = 'link'
      FixedChar = True
      Size = 8
    end
    object qrFollowUpGrupo: TStringField
      FieldName = 'Grupo'
      FixedChar = True
      Size = 8
    end
    object qrFollowUpGRUPORESP: TStringField
      FieldName = 'GRUPORESP'
      FixedChar = True
      Size = 50
    end
    object qrFollowUpCOR_REALCE: TStringField
      FieldName = 'COR_REALCE'
      FixedChar = True
      Size = 50
    end
    object qrFollowUpfollow_ativo: TIntegerField
      FieldName = 'follow_ativo'
    end
    object qrFollowUpfollow_auto: TIntegerField
      FieldName = 'follow_auto'
    end
  end
  object dsQFollowUp: TDataSource
    DataSet = qrFollowUp
    Left = 280
    Top = 16
  end
  object dsFollowUp: TDataSource
    DataSet = tbFollowUp
    Left = 328
    Top = 16
  end
  object tbFollowUp: TTable
    AfterPost = tbFollowUpAfterPost
    BeforeDelete = tbFollowUpBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Processo;Sequencial'
    MasterFields = 'Processo;Sequencial'
    MasterSource = dsQFollowUp
    TableName = 'Followup'
    UpdateMode = upWhereChanged
    Left = 320
    object tbFollowUpProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbFollowUpSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object tbFollowUpCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object tbFollowUpCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object tbFollowUpObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object tbFollowUpData: TDateTimeField
      FieldName = 'Data'
    end
    object tbFollowUpHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object tbFollowUplink: TStringField
      FieldName = 'link'
      Size = 8
    end
    object tbFollowUpData_final: TDateTimeField
      FieldName = 'Data_final'
    end
    object tbFollowUpHora_final: TStringField
      FieldName = 'Hora_final'
      Size = 5
    end
    object tbFollowUpDuracao: TIntegerField
      FieldName = 'Duracao'
    end
    object tbFollowUpUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object tbFollowUpRef_Follow: TIntegerField
      FieldName = 'Ref_Follow'
    end
  end
  object dsQLocEventos: TDataSource
    DataSet = qrLocEventos
    Left = 472
    Top = 16
  end
  object qrLocEventos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Eventos.Codigo, Eventos.Descricao, Obs_Eventos.Codigo' +
        ' AS Codigo_obs, Obs_Eventos.Descricao AS Descricao_obs, Eventos.' +
        'Grupo, '
      
        '                      Eventos.QTD_HorasLimite, Eventos.Codigo_Fe' +
        'cha, Eventos.Ativo'
      'FROM         Eventos LEFT OUTER JOIN'
      
        '                      Obs_Eventos ON (Eventos.Codigo = Obs_Event' +
        'os.Evento)'
      'WHERE '
      '   Eventos.Ativo = 1 AND Obs_Eventos.Ativo = 1 AND'
      '     ( Eventos.Descricao LIKE :qevento )  AND'
      '     (Obs_Eventos.Descricao LIKE :qobs ) '
      'ORDER BY Eventos.Descricao, Descricao_obs')
    Left = 536
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'qevento'
        ParamType = ptUnknown
        Value = '*rcr*'
      end
      item
        DataType = ftString
        Name = 'qobs'
        ParamType = ptUnknown
        Value = '*rcr*'
      end>
    object qrLocEventosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Eventos.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrLocEventosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Eventos.Descricao'
      FixedChar = True
      Size = 120
    end
    object qrLocEventosCodigo_obs: TStringField
      FieldName = 'Codigo_obs'
      Origin = 'DBNMSCOMEX.Obs_Eventos.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrLocEventosDescricao_obs: TStringField
      FieldName = 'Descricao_obs'
      Origin = 'DBNMSCOMEX.Obs_Eventos.Descricao'
      FixedChar = True
      Size = 120
    end
    object qrLocEventosGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'DBNMSCOMEX.Eventos.Grupo'
      FixedChar = True
      Size = 8
    end
    object qrLocEventosQTD_HorasLimite: TIntegerField
      FieldName = 'QTD_HorasLimite'
      Origin = 'DBNMSCOMEX.Eventos.QTD_HorasLimite'
    end
    object qrLocEventosCodigo_Fecha: TStringField
      FieldName = 'Codigo_Fecha'
      Origin = 'DBNMSCOMEX.Eventos.Codigo_Fecha'
      FixedChar = True
      Size = 4
    end
    object qrLocEventosAtivo: TIntegerField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Eventos.Ativo'
    end
  end
  object dsEventos: TDataSource
    DataSet = qrEventos
    Left = 376
    Top = 16
  end
  object dsObsEventos: TDataSource
    DataSet = qrObsEventos
    Left = 424
    Top = 16
  end
  object qrEventos: TQuery
    AfterScroll = qrEventosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT [E].Codigo, [E].Descricao, [E].Ativo'
      'FROM Eventos AS E'
      'WHERE ((([E].Ativo)= 1)) and [E].scanner =:pUSUSCANNER'
      'ORDER BY [E].Descricao')
    Left = 360
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'pUSUSCANNER'
        ParamType = ptInput
      end>
    object qrEventosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Eventos.Codigo'
      Size = 4
    end
    object qrEventosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Eventos.Descricao'
      Size = 120
    end
  end
  object qrObsEventos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT O.Evento, O.Codigo, O.Descricao, O.Ativo'
      'FROM Obs_Eventos AS O'
      'WHERE (((O.Evento)=:evento) AND ((O.Ativo)=1))'
      'ORDER BY O.Descricao;')
    Left = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'evento'
        ParamType = ptUnknown
      end>
    object qrObsEventosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object qrObsEventosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object qrFollowUpInc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Followup ( Processo, Data, Hora )'
      'SELECT :proc, cast(:data as date),  cast(:hora as time)')
    Left = 552
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'hora'
        ParamType = ptUnknown
      end>
  end
  object alAtuTabelas: TActionList
    Left = 608
    Top = 1
    object acAtuTabelas: TAction
      Caption = 'acAtuTabelas'
      OnExecute = acAtuTabelasExecute
    end
  end
  object dsprofol: TDataSource
    DataSet = qprofol
    Left = 680
    Top = 16
  end
  object qprofol: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Followup.Empresa, Followup.Filial, Followup.Processo, Fol' +
        'lowup.Sequencial, Followup.Codevento, Followup.Codobs, Followup.' +
        'Obs_especifica, Followup.Data, Followup.Hora, Followup.link, Fol' +
        'lowup.Data_final, Followup.Hora_final, Followup.Duracao, Followu' +
        'p.Usuario, Followup.Ref_Follow'
      'FROM Followup'
      'WHERE (((Followup.Data)>=cdate(:qdata)))'
      'ORDER BY Followup.Data;')
    Left = 640
    ParamData = <
      item
        DataType = ftString
        Name = 'qdata'
        ParamType = ptUnknown
        Value = '24/11/2008'
      end>
  end
  object ds_followres: TDataSource
    DataSet = t_FollowRes
    Left = 208
    Top = 112
  end
  object t_FollowRes: TTable
    AfterPost = t_FollowResAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Processo'
    TableName = 'Followup_Resumido'
    Left = 200
    Top = 72
    object t_FollowResProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_FollowResDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object t_FollowResDescricao_Ing: TMemoField
      FieldName = 'Descricao_Ing'
      BlobType = ftMemo
    end
  end
  object qrProcessos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tipos_status_processos.DESCRICAO as '#39'StatusNome'#39', Process' +
        'os.Status,Processos.Data_Aprovacao_RCR, Processos.canal, Process' +
        'os.Tipo, Processos.Empresa, Processos.Filial, Processos.Codigo A' +
        'S Processo, Processos.Data, Processos.Codigo_Cliente AS refcli, ' +
        'Importadores.Razao_Social AS Cliente, TAB_TIPO_DECLARACAO.Descri' +
        'cao AS tipodecla,Processos.Tipo_Declaracao, Tipos_de_Processos.D' +
        'ESCRICAO AS tipopro,Processos.Tipo, Contratos.Descricao AS qcont' +
        'rato, Locais_Inventario.Descricao AS qlocal, Processos.responsav' +
        'el_empresa, Importadores.CNPJ_CPF_COMPLETO AS qcnpj, Processos.F' +
        'echado, Importadores.ATIVO, Processos.Importador,  Processos.Res' +
        'ponsavel_empresac, Conhecimento_Processo.Data_Chegada_URF_Cheg, ' +
        'Conhecimento_Processo.Via,Conhecimento_Processo.NumeroMaster, '
      'Conhecimento_Processo.Numerodoccarga,'
      'Conhecimento_Processo.Tipodoccarga,Processos.NR_DECLARACAO_IMP,'
      
        '((SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE Proc' +
        'esso = Processos.Codigo) - (SELECT ISNULL(SUM(Valor_Registrado),' +
        '0) FROM Numerarios_Processos WHERE Processo = Processos.Codigo))' +
        ' AS Saldo,'
      
        'Processos.Numero_TR, Processos.Data_Entrada_TR, Processos.Data_v' +
        'encimento_TR, Processos.DT_DESEMBARACO'
      '   FROM (((((Parametros INNER JOIN Processos '
      '     ON (Parametros.Empresa = Processos.Empresa) AND '
      
        '        (Parametros.Filial = Processos.Filial)) LEFT JOIN Import' +
        'adores '
      '     ON (Processos.Empresa = Importadores.Empresa) AND '
      '        (Processos.Filial = Importadores.Filial) AND '
      
        '        (Processos.Importador = Importadores.Codigo)) LEFT JOIN ' +
        'Tipos_de_Processos '
      
        '     ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TA' +
        'B_TIPO_DECLARACAO '
      
        '     ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARACAO.Codigo) ' +
        'LEFT JOIN Contratos '
      '     ON (Processos.Empresa = Contratos.Empresa) AND '
      '        (Processos.Filial = Contratos.Filial) AND '
      '        (Processos.Importador = Contratos.Importador) AND '
      
        '        (Processos.Contrato = Contratos.Contrato)) LEFT JOIN Loc' +
        'ais_Inventario '
      '     ON (Processos.Empresa = Locais_Inventario.Empresa) AND '
      '        (Processos.Filial = Locais_Inventario.Filial) AND '
      
        '        (Processos.Importador = Locais_Inventario.Importador) AN' +
        'D '
      '        (Processos.Contrato = Locais_Inventario.Contrato) AND '
      
        '        (Processos.Local_Inventario = Locais_Inventario.Local) L' +
        'EFT JOIN Conhecimento_Processo'
      '     ON (Processos.Empresa = Conhecimento_Processo.Empresa) AND '
      '        (Processos.Filial  = Conhecimento_Processo.Filial) AND'
      
        '        (Processos.Codigo  = Conhecimento_Processo.Processo)    ' +
        '  '
      
        '   left join Tipos_status_processos on (Tipos_status_processos.C' +
        'ODIGO = Processos.[Status])  '
      'where Processos.Codigo=:Processo'
      'ORDER BY Processos.Codigo')
    Left = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object qrProcessosStatusNome: TStringField
      FieldName = 'StatusNome'
      FixedChar = True
      Size = 100
    end
    object qrProcessosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 3
    end
    object qrProcessosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object qrProcessoscanal: TStringField
      FieldName = 'canal'
      FixedChar = True
      Size = 1
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosrefcli: TStringField
      FieldName = 'refcli'
      FixedChar = True
      Size = 60
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 250
    end
    object qrProcessostipodecla: TStringField
      FieldName = 'tipodecla'
      FixedChar = True
      Size = 120
    end
    object qrProcessosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object qrProcessostipopro: TStringField
      FieldName = 'tipopro'
      FixedChar = True
      Size = 100
    end
    object qrProcessosTipo_1: TStringField
      FieldName = 'Tipo_1'
      FixedChar = True
      Size = 2
    end
    object qrProcessosqcontrato: TStringField
      FieldName = 'qcontrato'
      FixedChar = True
      Size = 50
    end
    object qrProcessosqlocal: TStringField
      FieldName = 'qlocal'
      FixedChar = True
      Size = 250
    end
    object qrProcessosresponsavel_empresa: TStringField
      FieldName = 'responsavel_empresa'
      FixedChar = True
      Size = 10
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      FixedChar = True
      Size = 14
    end
    object qrProcessosFechado: TIntegerField
      FieldName = 'Fechado'
    end
    object qrProcessosATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qrProcessosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      FixedChar = True
      Size = 10
    end
    object qrProcessosData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrProcessosVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
    object qrProcessosNumeroMaster: TStringField
      FieldName = 'NumeroMaster'
      FixedChar = True
      Size = 18
    end
    object qrProcessosNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object qrProcessosTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      FixedChar = True
      Size = 2
    end
    object qrProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object qrProcessosSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object qrProcessosNumero_TR: TStringField
      FieldName = 'Numero_TR'
      FixedChar = True
    end
    object qrProcessosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object qrProcessosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object qrProcessosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
  end
  object qryVerificaMSAnterior: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Codigo'
      'from'
      ' Processos'
      'where'
      ' Codigo=:Codigo')
    Left = 88
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
  end
  object qryFollowAtual: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select count(distinct(Data))as '#39'QtdFollow'#39' from Followup where p' +
        'rocesso =:processo')
    Left = 56
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
  object qryFollowDevido: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select DATEDIFF(day, cast(Data as date), cast(GETDATE() as date)' +
        ') as '#39'QtdDevido'#39' from processos where codigo =:processo')
    Left = 40
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
  object qryCoordenador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' select '
      ' Usuario, '
      ' Senha,'
      ' Nome_Completo'
      'from'
      ' Usuarios'
      'Where '
      ' Hierarquia in(2,1)'
      ' and Ativo = 1')
    Left = 24
    Top = 193
    object qryCoordenadorUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qryCoordenadorSenha: TStringField
      FieldName = 'Senha'
      Origin = 'DBNMSCOMEX.Usuarios.Senha'
      FixedChar = True
      Size = 10
    end
    object qryCoordenadorNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dtsCoordenador: TDataSource
    DataSet = qryCoordenador
    Left = 88
    Top = 121
  end
  object qryUpdatePVG: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Processos_Visao_Geral'
      'set Atualizado = 0'
      'where Processo=:Processo')
    Left = 64
    Top = 249
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qryUpdateALC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update processos set Data_liberacao=:ALC'
      'where codigo=:PROCESSO')
    Left = 458
    Top = 181
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ALC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROCESSO'
        ParamType = ptUnknown
      end>
  end
  object qrHoraAlterar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Followup set Hora =:pHora '
      'where PROCESSO =:pProcesso and Sequencial =:pSequencial ')
    Left = 640
    Top = 313
    ParamData = <
      item
        DataType = ftString
        Name = 'pHora'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pSequencial'
        ParamType = ptInput
      end>
  end
  object qDataChegadaURF: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Data_Chegada_URF_Cheg from conhecimento_processo where pr' +
        'ocesso =:pProcesso')
    Left = 112
    Top = 257
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qDataChegadaURFData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
  end
  object qrGerente: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Usuario, '
      ' Senha,'
      ' Nome_Completo'
      'from'
      ' Usuarios'
      'Where '
      ' usuario = '#39'ODILMA'#39' '
      ' ')
    Left = 16
    Top = 249
    object qrGerenteUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qrGerenteSenha: TStringField
      FieldName = 'Senha'
      FixedChar = True
      Size = 10
    end
    object qrGerenteNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dsGerente: TDataSource
    DataSet = qrGerente
    Left = 176
    Top = 265
  end
  object qrUsuScanner: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select scanner from usuarios where usuario =:pUSUARIO')
    Left = 602
    Top = 213
    ParamData = <
      item
        DataType = ftString
        Name = 'pUSUARIO'
        ParamType = ptInput
      end>
    object qrUsuScannerscanner: TBooleanField
      FieldName = 'scanner'
    end
  end
  object qrDocumento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select * from Documentos where Sub_Tipo_Doc = '#39'13'#39' and Processo ' +
        '= :pProcesso'
      '')
    Left = 210
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pProcesso'
        ParamType = ptUnknown
      end>
    object qrDocumentoProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Documentos.Processo'
      FixedChar = True
      Size = 8
    end
  end
  object qChegadaDoNavio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Data_Chegada_URF_Cheg from Conhecimento_Processo where '
      'processo =:pProcesso')
    Left = 88
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qChegadaDoNavioData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
  end
  object qryCheckInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into FollowUp_Check'
      '(FK_Processo,Data,Semana,FK_Usuario,Ano)'
      'values'
      
        '(:FK_Processo,getDate(),DATEPART (WEEK,GETDATE()),:FK_Usuario,YE' +
        'AR(GETDATE()))')
    Left = 620
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryCheckHierarquia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Controle_Hierarquico_Colaborador'
      'where Nivel in (0,1,2) And Colaborador =:Usuario')
    Left = 772
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryCheckSelect: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from'
      ' FollowUp_Check'
      'where '
      'FK_Processo=:Processo and'
      'FK_Usuario=:Usuario and'
      'Semana = DATEPART (WEEK,GETDATE()) and'
      'Ano = YEAR(GETDATE())')
    Left = 724
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object qrUpdateStatus: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Processos set Status =:pStatus, fechado =:pFechado where ' +
        'Codigo =:PROCESSO')
    Left = 314
    Top = 197
    ParamData = <
      item
        DataType = ftString
        Name = 'pStatus'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pFechado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
  object qrStatusProc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select status from processos where Codigo =:pProcesso')
    Left = 120
    Top = 321
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qrStatusProcstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 3
    end
  end
  object qAtuProcessoVisaoGeral: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Processos_Visao_Geral set Atualizado = 0 where processo =' +
        ':pProcesso')
    Left = 48
    Top = 337
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
  end
  object qrUpdateCriar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Followup set  Follow_ativo = 1, Follow_auto = 1'
      'where Processo =:processo and Sequencial =:sequencial')
    Left = 397
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sequencial'
        ParamType = ptUnknown
      end>
  end
  object qrUpdateCancelar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Followup set  Follow_ativo = 0, Follow_auto = 0'
      'where Processo=:qrprocesso and Follow_auto = 1')
    Left = 293
    Top = 165
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'qrprocesso'
        ParamType = ptUnknown
      end>
  end
  object qrExibiLabel: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ''
      
        'SELECT Followup.Processo,Followup.Data,Followup.Hora, Followup.C' +
        'odevento, Eventos.Descricao AS qevento, Followup.Codobs, '
      
        '       Obs_Eventos.Descricao AS qobs, Followup.Obs_especifica,fo' +
        'llowup.follow_ativo, follow_auto'
      'FROM   Eventos_Grupos RIGHT OUTER JOIN'
      
        '       Eventos ON Eventos_Grupos.Codigo = Eventos.Grupo RIGHT OU' +
        'TER JOIN'
      
        '       Followup ON Eventos.Codigo = Followup.Codevento LEFT OUTE' +
        'R JOIN'
      
        '       Obs_Eventos ON Followup.Codobs = Obs_Eventos.Codigo AND F' +
        'ollowup.Codevento = Obs_Eventos.Evento'
      'WHERE (((Followup.Processo)=:processo))and follow_auto = '#39'1'#39
      '')
    Left = 389
    Top = 157
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptInput
      end>
    object qrExibiLabelqevento: TStringField
      FieldName = 'qevento'
      FixedChar = True
      Size = 120
    end
    object qrExibiLabelqobs: TStringField
      FieldName = 'qobs'
      FixedChar = True
      Size = 120
    end
    object qrExibiLabelProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrExibiLabelCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object qrExibiLabelCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object qrExibiLabelObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object qrExibiLabelfollow_ativo: TIntegerField
      FieldName = 'follow_ativo'
    end
    object qrExibiLabelfollow_auto: TIntegerField
      FieldName = 'follow_auto'
    end
    object qrExibiLabelData: TDateTimeField
      FieldName = 'Data'
    end
    object qrExibiLabelHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 5
    end
  end
  object qrInsertAtivo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Followup'
      '           ([Processo]'
      '           ,[Codevento]'
      '           ,[Codobs]'
      '           ,[Obs_especifica]'
      '           ,[Data]'
      '           ,[Hora]'
      '           ,[link]'
      '           ,[Data_final]'
      '           ,[Hora_final]'
      '           ,[Duracao]'
      '           ,[Usuario]'
      '           ,[Ref_Follow]'
      '           ,[Follow_auto]'
      '           ,[Follow_ativo])'
      '     VALUES'
      '           (:processo'
      '           ,:codevento'
      '           ,:codobs'
      '           ,:coddet'
      '           ,:data'
      '           ,:hora'
      '           ,null'
      '           ,null'
      '           ,null'
      '           ,0'
      '           ,:Usuario'
      '           ,0'
      '           ,0'
      '           ,0)'
      ''
      
        'update Followup set Follow_ativo= '#39'1'#39'where Processo =:processo a' +
        'nd Follow_auto= '#39'1'#39)
    Left = 533
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codevento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codobs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coddet'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
  object qrVerificafollowRec: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Codevento ,  max(Data) as Data from Followup where Codeve' +
        'nto = '#39'98'#39' and Processo =:processo group by Codevento, data')
    Left = 717
    Top = 213
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptInput
      end>
    object qrVerificafollowRecCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object qrVerificafollowRecData: TDateTimeField
      FieldName = 'Data'
    end
  end
  object qrverificafollowNumerario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select top 1'
      
        'processo , Codevento,Eventos.Descricao as Descricao_evento,Obs_E' +
        'ventos.Descricao ,Codobs,  max(Data) as Data '
      'from Followup '
      'inner join Eventos on Codevento = Codigo'
      'inner join Obs_Eventos on Codobs = Obs_Eventos.Codigo'
      'where Processo =:processo  and '
      
        'Codevento = '#39'96'#39' and (Codobs ='#39'101'#39' or Codobs = '#39'127'#39'or Codobs =' +
        ' '#39'1305'#39'or Codobs = '#39'1307'#39'or Codobs = '#39'69'#39' )    '
      
        'group by processo,Codevento,Codobs, data ,eventos.Descricao,Obs_' +
        'Eventos.Descricao'
      'order by cast(data as date) desc')
    Left = 717
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptInput
      end>
    object qrverificafollowNumerarioCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object qrverificafollowNumerarioData: TDateTimeField
      FieldName = 'Data'
    end
    object qrverificafollowNumerarioprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object qrverificafollowNumerarioDescricao_evento: TStringField
      FieldName = 'Descricao_evento'
      FixedChar = True
      Size = 120
    end
    object qrverificafollowNumerarioDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
    object qrverificafollowNumerarioCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
  end
  object qrDoc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT  COUNT(DISTINCT(Sub_Tipo_Doc))AS REG FROM Documentos'
      'WHERE Processo =:Processo'
      'and Sub_Tipo_Doc in ('#39'12'#39')'
      'and tipo_doc = '#39'CE'#39
      '')
    Left = 605
    Top = 157
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qrInvoice: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select  top 1 * from Followup'
      'where Codevento = '#39'96'#39' '
      'and Codobs = '#39'3'#39' '
      'and Processo =:qProcesso'
      ' order by data desc')
    Left = 824
    Top = 257
    ParamData = <
      item
        DataType = ftString
        Name = 'qProcesso'
        ParamType = ptInput
      end>
    object qrInvoiceProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrInvoiceSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object qrInvoiceCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object qrInvoiceCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object qrInvoiceObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object qrInvoiceData: TDateTimeField
      FieldName = 'Data'
    end
    object qrInvoiceHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 5
    end
    object qrInvoicelink: TStringField
      FieldName = 'link'
      FixedChar = True
      Size = 8
    end
    object qrInvoiceData_final: TDateTimeField
      FieldName = 'Data_final'
    end
    object qrInvoiceHora_final: TStringField
      FieldName = 'Hora_final'
      FixedChar = True
      Size = 5
    end
    object qrInvoiceDuracao: TIntegerField
      FieldName = 'Duracao'
    end
    object qrInvoiceUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qrInvoiceRef_Follow: TIntegerField
      FieldName = 'Ref_Follow'
    end
    object qrInvoiceFollow_auto: TIntegerField
      FieldName = 'Follow_auto'
    end
    object qrInvoiceFollow_ativo: TIntegerField
      FieldName = 'Follow_ativo'
    end
  end
  object qrInsertRecInovice: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Followup'
      '           ([Processo]'
      '           ,[Codevento]'
      '           ,[Codobs]'
      '           ,[Obs_especifica]'
      '           ,[Data]'
      '           ,[Hora]'
      '           ,[link]'
      '           ,[Data_final]'
      '           ,[Hora_final]'
      '           ,[Duracao]'
      '           ,[Usuario]'
      '           ,[Ref_Follow]'
      '           ,[Follow_auto]'
      '           ,[Follow_ativo])'
      '     VALUES'
      '           (:processo'
      '           ,'#39'7'#39
      '           ,'#39'0'#39
      '           ,null'
      '           ,:data'
      '           ,:hora'
      '           ,null'
      '           ,null'
      '           ,null'
      '           ,0'
      '           ,:Usuario'
      '           ,0'
      '           ,0'
      '           ,0)')
    Left = 824
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryVUserCemPorcento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      'U.Usuario,'
      
        'PERCENTUAL = CAST((CAST(COUNT(FC.FK_Usuario) AS FLOAT) / CAST(FC' +
        'U.Total_Processos AS FLOAT))*100 AS DECIMAL(10,2))'
      'FROM '
      'FollowUp_Check_Universo FCU'
      
        'INNER JOIN Usuarios U ON FCU.FK_Usuario = U.Usuario AND U.Ativo ' +
        '= 1'
      'LEFT JOIN FollowUp_Check FC ON '
      
        '( FCU.FK_Usuario = FC.FK_Usuario ) AND ( FCU.Ano = FC.Ano) AND (' +
        ' FCU.Semana = FC.Semana )'
      
        'WHERE FCU.Semana = DATEPART (WEEK,GETDATE()) AND FCU.ANO = YEAR(' +
        'GETDATE()) '
      'AND U.Usuario =:Usuario'
      'GROUP BY '
      'U.Usuario,'
      'FCU.Total_Processos ')
    Left = 813
    Top = 87
    ParamData = <
      item
        DataType = ftString
        Name = 'Usuario'
        ParamType = ptUnknown
        Value = 'FLAVIA'
      end>
    object qryVUserCemPorcentoUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qryVUserCemPorcentoPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
    end
  end
  object qrUpdateCobs: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 800
    Top = 145
  end
  object qMovimentacaoPastas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT top 1 De_usuario FROM Movimentacao_pastas WHERE PROCESSO ' +
        '=:pProcesso ORDER BY Movimento desc'
      ' ')
    Left = 680
    Top = 441
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qMovimentacaoPastasDe_usuario: TStringField
      FieldName = 'De_usuario'
      FixedChar = True
      Size = 10
    end
  end
  object qUsu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Nome_Completo, Ramal FROM Usuarios'
      'WHERE usuario =:pUsu')
    Left = 744
    Top = 449
    ParamData = <
      item
        DataType = ftString
        Name = 'pUsu'
        ParamType = ptInput
      end>
    object qUsuNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qUsuRamal: TStringField
      FieldName = 'Ramal'
      FixedChar = True
      Size = 10
    end
  end
  object qControle_Pasta: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from controle_pastas where processo =:pProcesso')
    Left = 600
    Top = 473
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qControle_PastaEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qControle_PastaFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qControle_PastaProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qControle_PastaUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qControle_PastaAceite: TSmallintField
      FieldName = 'Aceite'
    end
    object qControle_PastaData: TDateTimeField
      FieldName = 'Data'
    end
  end
  object qrDiDigitalizada: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Pagina from Documentos where ((Sub_Tipo_Doc = '#39'3'#39') or (Su' +
        'b_Tipo_Doc = '#39'16'#39')) and Tipo_Doc ='#39'PROC'#39' and Processo =:proc')
    Left = 224
    Top = 433
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end>
  end
  object qrICMSdigitalizado: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Pagina from Documentos where Sub_Tipo_Doc in( '#39'46'#39','#39'70'#39') ' +
        'and'
      ' Tipo_Doc ='#39'PROC'#39' and Processo =:proc')
    Left = 296
    Top = 441
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end>
  end
  object qrUP_SemEmail: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Processos set sem_Email = '#39'1'#39' '
      'where Codigo =:proc')
    Left = 688
    Top = 505
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end>
  end
  object qrApenc_Pendencias: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT  [Processo]'
      '      ,[Pendencia]'
      '      ,[Descricao]'
      '  FROM [MS2000].[dbo].[Apenc_Pendencias] '
      'where processo = :qProc')
    Left = 376
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'qProc'
        ParamType = ptInput
      end>
    object qrApenc_PendenciasProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrApenc_PendenciasPendencia: TIntegerField
      FieldName = 'Pendencia'
    end
    object qrApenc_PendenciasDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 255
    end
  end
  object qrSem_email: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select sem_email from Processos where Codigo =:proc1')
    Left = 752
    Top = 505
    ParamData = <
      item
        DataType = ftString
        Name = 'proc1'
        ParamType = ptInput
      end>
    object qrSem_emailsem_email: TIntegerField
      FieldName = 'sem_email'
    end
  end
  object qr_FollowUp_Check_Tipo_Processo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT [PK_ID]'
      '      ,[FK_Tipo_Processo]'
      '      ,[FK_Usuario]'
      '  FROM [MS2000].[dbo].[FollowUp_Check_Tipo_Processo]'
      '  where fk_usuario = :usuario'
      '  and FK_Tipo_Processo = :tipo')
    Left = 792
    Top = 505
    ParamData = <
      item
        DataType = ftString
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qr_FollowUp_Check_Tipo_ProcessoPK_ID: TAutoIncField
      FieldName = 'PK_ID'
    end
    object qr_FollowUp_Check_Tipo_ProcessoFK_Tipo_Processo: TStringField
      FieldName = 'FK_Tipo_Processo'
      FixedChar = True
      Size = 2
    end
    object qr_FollowUp_Check_Tipo_ProcessoFK_Usuario: TStringField
      FieldName = 'FK_Usuario'
      FixedChar = True
    end
  end
  object qrExcluirPendencia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from Apenc_Pendencias where Processo = :proc')
    Left = 224
    Top = 513
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptInput
      end>
  end
  object qrVerificaPendencia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select processo from Apenc_Pendencias where Processo = :qproc')
    Left = 264
    Top = 521
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'qproc'
        ParamType = ptUnknown
      end>
  end
  object qrInsertAbrirProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [Processos_Abertos]'
      '           ([Processo]'
      '           ,[Data]'
      '           ,[hora])'
      '     VALUES'
      '           (:qrproc'
      '           ,:dt'
      '           ,:hora)'
      '')
    Left = 176
    Top = 481
    ParamData = <
      item
        DataType = ftString
        Name = 'qrproc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dt'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'hora'
        ParamType = ptInput
      end>
  end
  object qrUpAbrirProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Processos set Fechado = 0 where Codigo =:Cod')
    Left = 120
    Top = 441
    ParamData = <
      item
        DataType = ftString
        Name = 'Cod'
        ParamType = ptInput
      end>
  end
  object qrProcessoAberto: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Processo from Processos_Abertos where Processo = :qProc')
    Left = 304
    Top = 489
    ParamData = <
      item
        DataType = ftString
        Name = 'qProc'
        ParamType = ptInput
      end>
  end
  object qrySP_Controle_Pastas_Financeiro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'EXEC SP_Controle_Pastas_Financeiro :p0, :p1, :p2, :p3')
    Left = 432
    Top = 433
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
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        ParamType = ptUnknown
      end>
  end
  object qrSP_Relatorio_Follows_KPI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'EXEC SP_Relatorio_Follows_KPI :cod'
      ''
      '')
    Left = 488
    Top = 497
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end>
  end
  object qrRelatorioKPI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select processo, Descricao from Relatorio_Follows_KPI '
      'where Processo =:proc0')
    Left = 608
    Top = 537
    ParamData = <
      item
        DataType = ftString
        Name = 'proc0'
        ParamType = ptInput
      end>
    object qrRelatorioKPIprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object qrRelatorioKPIDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
  end
  object qrAutorizaDI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Auditor1, Data_Auditor1, Auditor2, Data_Auditor2'
      '   FROM Audita_Registro_DI  '
      'WHERE Rejeitada = 0 AND Processo = :Processo')
    Left = 496
    Top = 673
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qrAutorizaDIAuditor1: TStringField
      FieldName = 'Auditor1'
      FixedChar = True
      Size = 15
    end
    object qrAutorizaDIData_Auditor1: TDateTimeField
      FieldName = 'Data_Auditor1'
    end
    object qrAutorizaDIAuditor2: TStringField
      FieldName = 'Auditor2'
      Origin = 'DBNMSCOMEX.Audita_Registro_DI.Auditor2'
      FixedChar = True
      Size = 15
    end
    object qrAutorizaDIData_Auditor2: TDateTimeField
      FieldName = 'Data_Auditor2'
      Origin = 'DBNMSCOMEX.Audita_Registro_DI.Data_Auditor2'
    end
  end
  object dsAutorizadorDI: TDataSource
    DataSet = qrAutorizaDI
    Left = 424
    Top = 673
  end
  object qrHistoricoRejeicao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Processo, Data_Rejeicao, Auditor_Rejeicao, Observacao'
      '  FROM Audita_Registro_DI  '
      'WHERE Rejeitada = 1 AND Processo = :Processo'
      'ORDER BY Data_Rejeicao')
    Left = 808
    Top = 673
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qrHistoricoRejeicaoProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrHistoricoRejeicaoData_Rejeicao: TDateTimeField
      FieldName = 'Data_Rejeicao'
    end
    object qrHistoricoRejeicaoAuditor_Rejeicao: TStringField
      FieldName = 'Auditor_Rejeicao'
      FixedChar = True
      Size = 45
    end
    object qrHistoricoRejeicaoObservacao: TStringField
      FieldName = 'Observacao'
      FixedChar = True
      Size = 255
    end
  end
  object dsHistoricoRejeicao: TDataSource
    DataSet = qrHistoricoRejeicao
    Left = 704
    Top = 673
  end
end
