object F_processos: TF_processos
  Left = 8
  Top = 72
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Importações'
  ClientHeight = 442
  ClientWidth = 776
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindow
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 773
    Height = 441
    ActivePage = TS_capa
    BiDiMode = bdRightToLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object TS_capa: TTabSheet
      Caption = 'Capa'
      OnExit = TS_capaExit
      OnShow = TS_capaShow
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 413
        Align = alLeft
        Color = clTeal
        TabOrder = 0
        object L_dataini: TLabel
          Left = 142
          Top = 8
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
        object Label13: TLabel
          Left = 9
          Top = 111
          Width = 32
          Height = 13
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object L_refcli: TLabel
          Left = 8
          Top = 155
          Width = 87
          Height = 13
          Caption = 'Referência Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object L_decla: TLabel
          Left = 8
          Top = 197
          Width = 79
          Height = 13
          Caption = 'Tipo Declaração'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 8
          Top = 7
          Width = 124
          Height = 13
          Caption = 'Digite a Nossa Referência'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 8
          Top = 68
          Width = 83
          Height = 13
          Caption = 'Tipo de Processo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label186: TLabel
          Left = 8
          Top = 259
          Width = 40
          Height = 13
          Caption = 'Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label187: TLabel
          Left = 8
          Top = 303
          Width = 91
          Height = 13
          Caption = 'Local de Inventário'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object sb_temp: TSpeedButton
          Left = 208
          Top = 240
          Width = 23
          Height = 22
          Enabled = False
          Visible = False
          OnClick = sb_tempClick
        end
        object ME_nossaref: TMaskEdit
          Left = 8
          Top = 24
          Width = 97
          Height = 21
          MaxLength = 8
          TabOrder = 0
          OnChange = ME_nossarefChange
          OnKeyPress = ME_nossarefKeyPress
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 8
          Top = 212
          Width = 225
          Height = 21
          DataField = 'Tipo_Declaração'
          DataSource = DS_processos
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = DS_tipodecl
          TabOrder = 6
          OnClick = DBLookupComboBox11Exit
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 8
          Top = 83
          Width = 225
          Height = 21
          DataField = 'Tipo'
          DataSource = DS_processos
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = DS_tipospro
          TabOrder = 3
          OnExit = DBLookupComboBox7Exit
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 8
          Top = 275
          Width = 225
          Height = 21
          DataField = 'Contrato'
          DataSource = DS_processos
          KeyField = 'Contrato'
          ListField = 'Descricao'
          ListSource = ds_contratos
          TabOrder = 7
          OnExit = DBLookupComboBox7Exit
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 8
          Top = 319
          Width = 225
          Height = 21
          DataField = 'Local_Inventario'
          DataSource = DS_processos
          KeyField = 'Local'
          ListField = 'Descricao'
          ListSource = ds_locais
          TabOrder = 8
          OnExit = DBLookupComboBox7Exit
        end
        object DBLookupComboBox11: TDBLookupComboBox
          Left = 8
          Top = 127
          Width = 225
          Height = 21
          DataField = 'Importador'
          DataSource = DS_processos
          KeyField = 'Codigo'
          ListField = 'Razão Social'
          ListSource = DS_importadores
          TabOrder = 4
          OnClick = DBLookupComboBox11Exit
        end
        object DBEdit11: TDBEdit
          Left = 8
          Top = 171
          Width = 121
          Height = 21
          DataField = 'Código_Cliente'
          DataSource = DS_processos
          TabOrder = 5
          OnExit = DBLookupComboBox7Exit
        end
        object DBEdit13: TDBEdit
          Left = 141
          Top = 24
          Width = 77
          Height = 21
          DataField = 'Data'
          DataSource = DS_processos
          TabOrder = 2
          OnExit = DBEdit13Exit
        end
        object b_novopro: TBitBtn
          Left = 4
          Top = 354
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 9
          OnClick = b_novoproClick
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
        object b_excluiproc: TBitBtn
          Left = 84
          Top = 354
          Width = 75
          Height = 25
          Caption = 'Exclui'
          TabOrder = 10
          OnClick = b_excluiprocClick
          Kind = bkAbort
        end
        object b_localizaproc: TBitBtn
          Left = 164
          Top = 354
          Width = 75
          Height = 25
          Caption = 'Localiza'
          TabOrder = 11
          OnClick = SB_localizaClick
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
        object b_okpro: TBitBtn
          Left = 110
          Top = 24
          Width = 29
          Height = 25
          Caption = 'OK'
          Default = True
          ModalResult = 1
          TabOrder = 1
          OnClick = ME_nossarefExit
          NumGlyphs = 2
        end
        object dbcb_urgente: TDBCheckBox
          Left = 40
          Top = 49
          Width = 153
          Height = 17
          Caption = 'Processo Urgente'
          DataField = 'Urgente'
          DataSource = DS_processos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 24
          Top = 239
          Width = 185
          Height = 17
          Caption = 'Processo Consolidado'
          DataField = 'Consolidado'
          DataSource = DS_processos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object Panel2: TPanel
        Left = 240
        Top = 0
        Width = 525
        Height = 413
        Align = alRight
        Color = clGrayText
        TabOrder = 1
        object Label3: TLabel
          Left = 24
          Top = 28
          Width = 39
          Height = 13
          Caption = 'Origem :'
        end
        object Label4: TLabel
          Left = 256
          Top = 28
          Width = 42
          Height = 13
          Caption = 'Destino :'
        end
        object Label5: TLabel
          Left = 24
          Top = 44
          Width = 64
          Height = 13
          Caption = 'Mercadorias :'
        end
        object Label6: TLabel
          Left = 24
          Top = 120
          Width = 72
          Height = 13
          Caption = 'Transportador :'
        end
        object Label7: TLabel
          Left = 24
          Top = 136
          Width = 44
          Height = 13
          Caption = 'Faturas : '
        end
        object Label8: TLabel
          Left = 112
          Top = 148
          Width = 77
          Height = 13
          Caption = 'Conhecimento : '
        end
        object Label9: TLabel
          Left = 112
          Top = 167
          Width = 38
          Height = 13
          Caption = 'Master :'
        end
        object Label10: TLabel
          Left = 336
          Top = 148
          Width = 55
          Height = 13
          Caption = 'MIC/DTA : '
        end
        object Label11: TLabel
          Left = 336
          Top = 167
          Width = 31
          Height = 13
          Caption = 'DTA : '
        end
        object Label12: TLabel
          Left = 112
          Top = 185
          Width = 94
          Height = 13
          Caption = 'Termo de Entrada : '
        end
        object Label14: TLabel
          Left = 336
          Top = 185
          Width = 41
          Height = 13
          Caption = 'Placas : '
        end
        object Label15: TLabel
          Left = 24
          Top = 212
          Width = 94
          Height = 13
          Caption = 'DI - Data Registro : '
        end
        object Label16: TLabel
          Left = 268
          Top = 212
          Width = 122
          Height = 13
          Caption = 'LI - Data Registro - DEF : '
        end
        object Label17: TLabel
          Left = 25
          Top = 312
          Width = 75
          Height = 13
          Caption = 'Desembaraço : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 25
          Top = 328
          Width = 32
          Height = 13
          Caption = 'Data : '
        end
        object Label18: TLabel
          Left = 25
          Top = 344
          Width = 36
          Height = 13
          Caption = 'Canal : '
        end
        object Label19: TLabel
          Left = 25
          Top = 360
          Width = 36
          Height = 13
          Caption = 'Fiscal : '
        end
        object Label25: TLabel
          Left = 357
          Top = 316
          Width = 72
          Height = 13
          Caption = 'Notas Fiscais : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 358
          Top = 332
          Width = 63
          Height = 13
          Caption = 'NF Entrada : '
        end
        object Label21: TLabel
          Left = 358
          Top = 348
          Width = 55
          Height = 13
          Caption = 'NF Saída : '
        end
        object Label22: TLabel
          Left = 358
          Top = 363
          Width = 89
          Height = 13
          Caption = 'Data de Emissão : '
        end
        object Label23: TLabel
          Left = 25
          Top = 232
          Width = 72
          Height = 13
          Caption = 'Observações : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_origem: TLabel
          Left = 68
          Top = 28
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_destino: TLabel
          Left = 304
          Top = 28
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_di: TLabel
          Left = 124
          Top = 212
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_transportador: TLabel
          Left = 100
          Top = 120
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_conhecimento: TLabel
          Left = 196
          Top = 148
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_corigem: TLabel
          Left = 196
          Top = 167
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_micdta: TLabel
          Left = 392
          Top = 148
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_dta: TLabel
          Left = 392
          Top = 167
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_termo: TLabel
          Left = 208
          Top = 185
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_placas: TLabel
          Left = 392
          Top = 185
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_li: TLabel
          Left = 400
          Top = 212
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label209: TLabel
          Left = 25
          Top = 376
          Width = 48
          Height = 13
          Caption = 'Situação :'
        end
        object l_data: TLabel
          Left = 64
          Top = 328
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_canal: TLabel
          Left = 64
          Top = 344
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_fiscal: TLabel
          Left = 64
          Top = 360
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object l_situacao: TLabel
          Left = 80
          Top = 376
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 523
          Height = 24
          Align = alTop
          Caption = 'Informações Gerais'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object lb_mercadorias: TListBox
          Left = 24
          Top = 56
          Width = 497
          Height = 57
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 1
        end
        object lb_faturas: TListBox
          Left = 24
          Top = 152
          Width = 81
          Height = 45
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 2
        end
        object lb_obs: TListBox
          Left = 24
          Top = 248
          Width = 497
          Height = 57
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TS_documentos: TTabSheet
      Caption = 'Documentos'
      Enabled = False
      ImageIndex = 3
      TabVisible = False
    end
    object TS_Faturas: TTabSheet
      Caption = 'Faturas'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      TabVisible = False
      OnShow = TS_FaturasShow
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 81
        Align = alTop
        Color = clTeal
        TabOrder = 0
        object Label39: TLabel
          Left = 101
          Top = 7
          Width = 45
          Height = 13
          Caption = 'Nº Fatura'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label40: TLabel
          Left = 5
          Top = 42
          Width = 89
          Height = 13
          Caption = 'Local da Condição'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label41: TLabel
          Left = 173
          Top = 7
          Width = 41
          Height = 13
          Caption = 'Incoterm'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label42: TLabel
          Left = 321
          Top = 7
          Width = 51
          Height = 13
          Caption = 'Exportador'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label43: TLabel
          Left = 430
          Top = 42
          Width = 51
          Height = 13
          Caption = 'Valor Total'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label44: TLabel
          Left = 518
          Top = 42
          Width = 51
          Height = 13
          Caption = 'Peso Total'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object L_selecione: TLabel
          Left = 5
          Top = 7
          Width = 89
          Height = 13
          Caption = 'Selecione a Fatura'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label29: TLabel
          Left = 263
          Top = 42
          Width = 33
          Height = 13
          Caption = 'Moeda'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label171: TLabel
          Left = 601
          Top = 42
          Width = 70
          Height = 13
          Caption = 'Peso Acertado'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object me_nomeexp: TMaskEdit
          Left = 376
          Top = 20
          Width = 304
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object me_exp: TMaskEdit
          Left = 320
          Top = 20
          Width = 53
          Height = 21
          TabOrder = 6
          OnExit = me_expExit
        end
        object B_exclui: TBitBtn
          Left = 687
          Top = 23
          Width = 72
          Height = 25
          Caption = '&Exclui'
          Enabled = False
          TabOrder = 9
          OnClick = B_excluiClick
          Kind = bkCancel
        end
        object B_grava: TBitBtn
          Left = 687
          Top = 51
          Width = 72
          Height = 25
          Caption = '&Grava'
          Enabled = False
          TabOrder = 10
          OnClick = B_gravaClick
          Kind = bkOK
        end
        object CB_faturas: TComboBox
          Left = 4
          Top = 20
          Width = 93
          Height = 21
          ItemHeight = 0
          TabOrder = 0
          OnClick = CB_faturasClick
        end
        object CB_incoterms: TComboBox
          Left = 170
          Top = 20
          Width = 145
          Height = 21
          Enabled = False
          ItemHeight = 0
          TabOrder = 2
          OnChange = CB_incotermsChange
          OnExit = CB_incotermsExit
        end
        object E_pesototal: TEdit
          Left = 514
          Top = 55
          Width = 81
          Height = 21
          Enabled = False
          TabOrder = 8
        end
        object E_valortotal: TEdit
          Left = 430
          Top = 55
          Width = 81
          Height = 21
          Enabled = False
          TabOrder = 7
        end
        object ME_fatura: TMaskEdit
          Left = 100
          Top = 20
          Width = 65
          Height = 21
          Enabled = False
          MaxLength = 15
          TabOrder = 1
          OnExit = ME_faturaExit
        end
        object ME_condicao: TMaskEdit
          Left = 4
          Top = 55
          Width = 253
          Height = 21
          Enabled = False
          TabOrder = 4
          OnExit = ME_condicaoExit
        end
        object CB_moedas: TComboBox
          Left = 259
          Top = 55
          Width = 169
          Height = 21
          ItemHeight = 0
          TabOrder = 5
        end
        object E_pesoacertado: TEdit
          Left = 598
          Top = 55
          Width = 81
          Height = 21
          Enabled = False
          TabOrder = 11
        end
        object cb_itens: TCheckBox
          Left = 488
          Top = 2
          Width = 273
          Height = 17
          Caption = 'Acréscimos/Reduções já inclusas no valor dos itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = cb_itensClick
        end
        object rg_vinculacao: TRadioGroup
          Left = 446
          Top = 12
          Width = 235
          Height = 68
          Caption = ' Vinculação Importador / Exportador '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Sem Vinculação'
            'Com Vinculação, sem influência no preço'
            'Com Vinculação, com influência no preço')
          ParentFont = False
          TabOrder = 13
          Visible = False
          OnClick = rg_vinculacaoClick
          OnExit = rg_vinculacaoClick
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 80
        Width = 766
        Height = 605
        ActivePage = TS_itensfatura
        Enabled = False
        TabOrder = 1
        object TS_itensfatura: TTabSheet
          Caption = 'Itens da Fatura'
          object Panel8: TPanel
            Left = 0
            Top = 1
            Width = 765
            Height = 289
            Color = clTeal
            TabOrder = 0
            object Label211: TLabel
              Left = 38
              Top = 162
              Width = 22
              Height = 13
              Caption = 'Seq.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 68
              Top = 162
              Width = 37
              Height = 13
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 527
              Top = 162
              Width = 50
              Height = 13
              Caption = 'Fabricante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 42
              Top = 203
              Width = 24
              Height = 13
              Caption = 'NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 442
              Top = 203
              Width = 152
              Height = 13
              Caption = 'Unidade Medida Comercializada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 461
              Top = 244
              Width = 63
              Height = 13
              Caption = 'Peso Unitário'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 332
              Top = 244
              Width = 55
              Height = 13
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 390
              Top = 244
              Width = 63
              Height = 13
              Caption = 'Valor Unitário'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 180
              Top = 162
              Width = 48
              Height = 13
              Caption = 'Descrição'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 104
              Top = 203
              Width = 75
              Height = 13
              Caption = 'Descrição NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 64
              Top = 244
              Width = 44
              Height = 13
              Caption = 'Ref.Emb.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 4
              Top = 202
              Width = 33
              Height = 13
              Caption = 'Moeda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label147: TLabel
              Left = 6
              Top = 162
              Width = 22
              Height = 13
              Caption = 'Pag.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SB_recalculapeso: TSpeedButton
              Left = 540
              Top = 257
              Width = 23
              Height = 22
              Hint = 'Acerto do Peso Total'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
                73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
                0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
                0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
                0333337F777777737F333308888888880333337F333333337F33330888888888
                03333373FFFFFFFF733333700000000073333337777777773333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SB_recalculapesoClick
            end
            object sb_somapaginas: TSpeedButton
              Left = 566
              Top = 257
              Width = 23
              Height = 22
              Hint = 'Mostra Totalização por Página desta Fatura '
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sb_somapaginasClick
            end
            object Label185: TLabel
              Left = 129
              Top = 244
              Width = 79
              Height = 13
              Caption = 'Número de Série'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label188: TLabel
              Left = 214
              Top = 244
              Width = 15
              Height = 13
              Caption = 'PO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label214: TLabel
              Left = 382
              Top = 203
              Width = 39
              Height = 13
              Caption = 'NALADI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label215: TLabel
              Left = 323
              Top = 203
              Width = 46
              Height = 13
              Caption = 'Destaque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label216: TLabel
              Left = 601
              Top = 203
              Width = 131
              Height = 13
              Caption = 'Unidade Medida Estatística'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label282: TLabel
              Left = 5
              Top = 244
              Width = 53
              Height = 13
              Caption = 'Ref.Projeto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object sp_euro: TSpeedButton
              Left = 733
              Top = 256
              Width = 23
              Height = 22
              Hint = 'Converte fatura para EURO'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = sp_euroClick
            end
            object Label285: TLabel
              Left = 293
              Top = 244
              Width = 37
              Height = 13
              Caption = 'Seq.PO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cb_unidest: TComboBox
              Left = 598
              Top = 216
              Width = 157
              Height = 21
              ItemHeight = 13
              TabOrder = 12
              Items.Strings = (
                '10 - QUILOGRAMA LIQUIDO'
                '11 - UNIDADE'
                '12 - MIL UNIDADES'
                '13 - PARES'
                '14 - METRO'
                '15 - METRO QUADRADO'
                '19 - QUILATE'
                '20 - DUZIA'
                '21 - TONELADA METRICA LIQUIDA'
                '22 - GRAMA'
                '23 - BILHAO DE UNIDADE INTERNACIONAL'
                '24 - QUILOGRAMA BRUTO'
                '51 - PECA'
                '53 - PES'#9
                '54 - CAIXA'
                '55 - CARRETEL'
                '56 - ROLO'
                '57 - JOGO')
            end
            object cb_unid: TComboBox
              Left = 440
              Top = 216
              Width = 157
              Height = 21
              ItemHeight = 13
              TabOrder = 11
              OnExit = cb_unidExit
              Items.Strings = (
                '10 - QUILOGRAMA LIQUIDO'
                '11 - UNIDADE'
                '12 - MIL UNIDADES'
                '13 - PARES'
                '14 - METRO'
                '15 - METRO QUADRADO'
                '16 - METRO CUBICO'
                '17 - LITRO'
                '18 - MEGAWATT HORA'
                '19 - QUILATE'
                '20 - DUZIA'
                '21 - TONELADA METRICA LIQUIDA'
                '22 - GRAMA'
                '23 - BILHAO DE UNIDADE INTERNACIONAL'
                '24 - QUILOGRAMA BRUTO'
                '51 - PECA'
                '53 - PES'#9
                '54 - CAIXA'
                '55 - CARRETEL'
                '56 - ROLO'
                '57 - JOGO')
            end
            object me_naladi: TMaskEdit
              Left = 381
              Top = 216
              Width = 57
              Height = 21
              TabOrder = 10
              OnExit = me_naladiExit
            end
            object me_destaque: TMaskEdit
              Left = 322
              Top = 216
              Width = 57
              Height = 21
              TabOrder = 9
              OnExit = me_destaqueExit
              OnKeyPress = me_destaqueKeyPress
            end
            object me_seq: TMaskEdit
              Left = 35
              Top = 175
              Width = 29
              Height = 21
              TabOrder = 1
              Text = '1'
              OnExit = me_seqChange
              OnKeyPress = me_seqKeyPress
            end
            object me_po: TMaskEdit
              Left = 212
              Top = 257
              Width = 78
              Height = 21
              TabOrder = 16
              OnKeyPress = me_poKeyPress
            end
            object me_numeroserie: TMaskEdit
              Left = 127
              Top = 257
              Width = 84
              Height = 21
              TabOrder = 15
              Text = '.'
              OnKeyPress = me_numeroserieKeyPress
            end
            object me_moeda: TMaskEdit
              Left = 3
              Top = 216
              Width = 36
              Height = 21
              TabOrder = 6
              OnExit = me_moedaExit
            end
            object me_referencia: TMaskEdit
              Left = 63
              Top = 257
              Width = 63
              Height = 21
              TabOrder = 14
              OnKeyPress = me_referenciaKeyPress
            end
            object me_descrncm: TMaskEdit
              Left = 99
              Top = 216
              Width = 221
              Height = 21
              TabOrder = 8
            end
            object B_excluiit: TBitBtn
              Left = 663
              Top = 255
              Width = 66
              Height = 25
              Caption = '&Exclui'
              Enabled = False
              TabOrder = 21
              OnClick = B_excluiitClick
              Kind = bkCancel
            end
            object B_gravait: TBitBtn
              Left = 592
              Top = 255
              Width = 66
              Height = 25
              Caption = '&Inclui'
              Enabled = False
              TabOrder = 20
              OnClick = B_gravaitClick
              Kind = bkOK
            end
            object DB_itensfatura: TDBGrid
              Left = 2
              Top = 6
              Width = 753
              Height = 147
              DataSource = DS_qitensfaturas
              TabOrder = 22
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DB_itensfaturaCellClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Pagina'
                  Title.Caption = 'Pag.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Sequencial'
                  Title.Alignment = taCenter
                  Title.Caption = 'Seq'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Produto'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Fabricante'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NCM'
                  Title.Alignment = taCenter
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Quantidade'
                  Title.Alignment = taCenter
                  Title.Caption = 'Quant.'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Peso Unitário'
                  Title.Alignment = taCenter
                  Title.Caption = 'P. Unitário'
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor Unitário'
                  Title.Alignment = taCenter
                  Title.Caption = 'V.Unitário'
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NALADI'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Destaque_NCM'
                  Title.Caption = 'Destaque NCM'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Unidade_Medida_Estat'
                  Title.Caption = 'Unidade Medida Estat.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor Total'
                  Title.Alignment = taCenter
                  Title.Caption = 'V.Total'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Peso Total'
                  Title.Alignment = taCenter
                  Title.Caption = 'P.Total'
                  Width = 61
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Peso_Unitario_Acertado'
                  Title.Caption = 'Peso Unitário Acertado'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Peso_Total_Acertado'
                  Title.Caption = 'Peso Total Acertado'
                  Visible = True
                end>
            end
            object ME_ncm: TMaskEdit
              Left = 41
              Top = 216
              Width = 57
              Height = 21
              TabOrder = 7
              OnExit = ME_ncmExit
              OnKeyPress = ME_ncmKeyPress
            end
            object ME_pesounit: TMaskEdit
              Left = 460
              Top = 257
              Width = 68
              Height = 21
              TabOrder = 19
              Text = '1'
              OnEnter = ME_pesounitEnter
              OnKeyPress = ME_pesounitKeyPress
            end
            object ME_quantidade: TMaskEdit
              Left = 332
              Top = 257
              Width = 56
              Height = 21
              TabOrder = 17
              Text = '1'
              OnKeyPress = ME_quantidadeKeyPress
            end
            object ME_valorunit: TMaskEdit
              Left = 390
              Top = 257
              Width = 68
              Height = 21
              TabOrder = 18
              OnKeyPress = ME_valorunitKeyPress
            end
            object ME_fabricante: TMaskEdit
              Left = 526
              Top = 175
              Width = 229
              Height = 21
              TabOrder = 5
              OnExit = ME_fabricanteExit
              OnKeyPress = ME_fabricanteKeyPress
            end
            object ME_descricao: TMaskEdit
              Left = 178
              Top = 175
              Width = 345
              Height = 21
              TabOrder = 3
              OnEnter = ME_descricaoEnter
            end
            object ME_produto: TMaskEdit
              Left = 66
              Top = 175
              Width = 109
              Height = 21
              TabOrder = 2
              OnExit = ME_produtoExit
              OnKeyPress = ME_produtoKeyPress
            end
            object P_qprodutos: TPanel
              Left = 77
              Top = 40
              Width = 613
              Height = 25
              TabOrder = 23
              Visible = False
              object L_busca: TLabel
                Left = 12
                Top = 8
                Width = 200
                Height = 16
                Caption = 'Selecione o Produto na Lista'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBG_qprodutos: TDBGrid
                Left = 12
                Top = 25
                Width = 589
                Height = 172
                DataSource = DS_qprodutos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindow
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnKeyPress = DBG_qprodutosKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Código'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NCM'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QDESCR'
                    Visible = True
                  end>
              end
              object B_cancela: TBitBtn
                Left = 448
                Top = 204
                Width = 75
                Height = 25
                Caption = '&Cancela'
                TabOrder = 1
                OnClick = B_cancelaClick
                Kind = bkCancel
              end
              object B_ok: TBitBtn
                Left = 528
                Top = 204
                Width = 75
                Height = 25
                TabOrder = 2
                OnClick = B_okClick
                Kind = bkOK
              end
            end
            object me_pagina: TMaskEdit
              Left = 4
              Top = 175
              Width = 29
              Height = 21
              TabOrder = 0
              Text = '1'
              OnChange = me_paginaChange
              OnKeyPress = me_paginaKeyPress
            end
            object p_recalculo: TPanel
              Left = 248
              Top = 284
              Width = 185
              Height = 113
              BevelOuter = bvSpace
              BevelWidth = 3
              TabOrder = 24
              Visible = False
              OnExit = p_recalculoExit
              object Label170: TLabel
                Left = 14
                Top = 19
                Width = 150
                Height = 16
                Alignment = taCenter
                Caption = 'Informe o Peso da Fatura'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object sb_cancela: TSpeedButton
                Left = 64
                Top = 78
                Width = 23
                Height = 22
                Hint = 'Cancela'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                  33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
                  993337777F777F3377F3393999707333993337F77737333337FF993399933333
                  399377F3777FF333377F993339903333399377F33737FF33377F993333707333
                  399377F333377FF3377F993333101933399377F333777FFF377F993333000993
                  399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
                  99333773FF777F777733339993707339933333773FF7FFF77333333999999999
                  3333333777333777333333333999993333333333377777333333}
                NumGlyphs = 2
                OnClick = sb_cancelaClick
              end
              object sb_processa: TSpeedButton
                Left = 96
                Top = 78
                Width = 23
                Height = 22
                Hint = 'Processa Peso Acertado'
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
                OnClick = sb_processaClick
              end
              object me_pesoinformado: TMaskEdit
                Left = 40
                Top = 40
                Width = 105
                Height = 21
                TabOrder = 0
              end
            end
            object p_totalpag: TPanel
              Left = 88
              Top = 284
              Width = 525
              Height = 197
              TabOrder = 25
              Visible = False
              object Label172: TLabel
                Left = 12
                Top = 8
                Width = 262
                Height = 16
                Caption = 'Totalização por Páginas desta Fatura'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBG_totpag: TDBGrid
                Left = 12
                Top = 28
                Width = 497
                Height = 120
                DataSource = ds_qtotpag
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Pagina'
                    Title.Alignment = taCenter
                    Title.Caption = 'Pag.'
                    Width = 33
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SomaDeQuantidade'
                    Title.Alignment = taCenter
                    Title.Caption = 'Quantidade'
                    Width = 82
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SomaDeValor Total'
                    Title.Alignment = taCenter
                    Title.Caption = 'Valor'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SomaDePeso_Unitario_Acertado'
                    Title.Alignment = taCenter
                    Title.Caption = 'Peso Unitário'
                    Width = 115
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SomaDePeso_Total_Acertado'
                    Title.Alignment = taCenter
                    Title.Caption = 'Peso Total'
                    Width = 123
                    Visible = True
                  end>
              end
              object b_fechatot: TBitBtn
                Left = 432
                Top = 160
                Width = 75
                Height = 25
                Caption = '&Fecha'
                TabOrder = 1
                OnClick = b_fechatotClick
                Kind = bkCancel
              end
            end
            object p_ncm: TPanel
              Left = 76
              Top = 72
              Width = 613
              Height = 44
              TabOrder = 26
              Visible = False
              OnExit = p_ncmExit
              object Label217: TLabel
                Left = 12
                Top = 6
                Width = 249
                Height = 16
                Caption = 'Localiza NCM por código/descrição'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object b_cancelancm: TBitBtn
                Left = 448
                Top = 204
                Width = 75
                Height = 25
                Caption = '&Cancela'
                TabOrder = 1
                OnClick = b_cancelancmClick
                Kind = bkCancel
              end
              object b_okncm: TBitBtn
                Left = 528
                Top = 204
                Width = 75
                Height = 25
                TabOrder = 2
                OnClick = b_okncmClick
                Kind = bkOK
              end
              object DBG_ncm: TDBGrid
                Left = 12
                Top = 25
                Width = 589
                Height = 172
                DataSource = ds_qncm
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindow
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CODIGO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Visible = True
                  end>
              end
              object me_localizancm: TMaskEdit
                Left = 288
                Top = 4
                Width = 313
                Height = 21
                TabOrder = 3
                OnChange = me_localizancmChange
              end
            end
            object me_refproj: TMaskEdit
              Left = 3
              Top = 257
              Width = 59
              Height = 21
              TabOrder = 13
              Text = '.'
              OnKeyPress = me_refprojKeyPress
            end
            object memoDesc: TDBMemo
              Left = 180
              Top = 176
              Width = 570
              Height = 68
              DataField = 'Descrição'
              DataSource = DS_produtos
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Visible = False
              OnExit = memoDescExit
              OnKeyPress = memoDescKeyPress
            end
            object me_seqpo: TMaskEdit
              Left = 291
              Top = 257
              Width = 40
              Height = 21
              TabOrder = 27
              Text = '.'
              OnKeyPress = me_seqpoKeyPress
            end
          end
        end
        object TS_acrescimos: TTabSheet
          Caption = 'Acréscimos'
          ImageIndex = 2
          OnShow = TS_acrescimosShow
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 758
            Height = 577
            Align = alClient
            Color = clTeal
            TabOrder = 0
            object Label1: TLabel
              Left = 4
              Top = 4
              Width = 88
              Height = 13
              Caption = 'Tipo de Acréscimo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 4
              Top = 60
              Width = 190
              Height = 13
              Caption = 'Valor de Acréscimo na Moeda da Fatura'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cb_tipoacres: TComboBox
              Left = 4
              Top = 16
              Width = 301
              Height = 21
              ItemHeight = 0
              TabOrder = 0
              OnClick = cb_tipoacresClick
            end
            object me_valoracrescimo: TMaskEdit
              Left = 4
              Top = 76
              Width = 121
              Height = 21
              TabOrder = 1
              OnKeyPress = me_valoracrescimoKeyPress
            end
            object b_incluiacre: TBitBtn
              Left = 220
              Top = 116
              Width = 75
              Height = 25
              Caption = '&Inclui'
              Enabled = False
              TabOrder = 2
              OnClick = b_incluiacreClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333FF3333333333333003333
                3333333333773FF3333333333309003333333333337F773FF333333333099900
                33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
                99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
                33333333337F3F77333333333309003333333333337F77333333333333003333
                3333333333773333333333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333333333333}
              NumGlyphs = 2
            end
            object b_excluiacre: TBitBtn
              Left = 220
              Top = 148
              Width = 75
              Height = 25
              Caption = '&Exclui'
              Enabled = False
              TabOrder = 3
              OnClick = b_excluiacreClick
              Kind = bkCancel
            end
            object DBG_acrescimos: TDBGrid
              Left = 302
              Top = 16
              Width = 456
              Height = 257
              DataSource = DS_qacrescimos
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBG_acrescimosCellClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Descricao'
                  Title.Caption = 'Denominação'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CD_MD_NEGOC_ACRES'
                  Title.Caption = 'Moeda'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_ACRESCIMO_MOEDA'
                  Title.Caption = 'Valor na Moeda'
                  Visible = True
                end>
            end
          end
        end
        object TS_deducoes: TTabSheet
          Caption = 'Reduções'
          ImageIndex = 3
          OnShow = TS_deducoesShow
          object Panel24: TPanel
            Left = 0
            Top = 0
            Width = 758
            Height = 577
            Align = alClient
            Color = clTeal
            TabOrder = 0
            object Label53: TLabel
              Left = 4
              Top = 4
              Width = 88
              Height = 13
              Caption = 'Tipo de Deduções'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 4
              Top = 60
              Width = 185
              Height = 13
              Caption = 'Valor de Dedução na Moeda da Fatura'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cb_tipodedu: TComboBox
              Left = 4
              Top = 16
              Width = 301
              Height = 21
              ItemHeight = 0
              TabOrder = 0
              OnClick = cb_tipodeduClick
            end
            object me_valordedu: TMaskEdit
              Left = 4
              Top = 76
              Width = 121
              Height = 21
              TabOrder = 1
              OnKeyPress = me_valordeduKeyPress
            end
            object b_incluidedu: TBitBtn
              Left = 220
              Top = 116
              Width = 75
              Height = 25
              Caption = '&Inclui'
              Enabled = False
              TabOrder = 2
              OnClick = b_incluideduClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333FF3333333333333003333
                3333333333773FF3333333333309003333333333337F773FF333333333099900
                33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
                99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
                33333333337F3F77333333333309003333333333337F77333333333333003333
                3333333333773333333333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333333333333}
              NumGlyphs = 2
            end
            object b_excluidedu: TBitBtn
              Left = 220
              Top = 148
              Width = 75
              Height = 25
              Caption = '&Exclui'
              Enabled = False
              TabOrder = 3
              OnClick = b_excluideduClick
              Kind = bkCancel
            end
            object DBG_deducoes: TDBGrid
              Left = 302
              Top = 16
              Width = 456
              Height = 257
              DataSource = DS_qdeducoes
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBG_deducoesCellClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Descricao'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CD_MD_NEGOC_DEDUC'
                  Title.Caption = 'Moeda'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VL_DEDUCAO_MNEG'
                  Title.Caption = 'Valor na Moeda'
                  Visible = True
                end>
            end
          end
        end
        object TS_Cambiofatura: TTabSheet
          Caption = 'Câmbio'
          ImageIndex = 1
          OnShow = TS_CambiofaturaShow
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 758
            Height = 577
            Align = alClient
            Color = clTeal
            TabOrder = 0
            object L_motivo: TLabel
              Left = 5
              Top = 48
              Width = 130
              Height = 13
              Caption = 'Modalidade de Pagamento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object CB_motivos: TComboBox
              Left = 3
              Top = 61
              Width = 746
              Height = 21
              ItemHeight = 0
              TabOrder = 1
              OnChange = CB_motivosClick
            end
            object PageControl3: TPageControl
              Left = 4
              Top = 88
              Width = 745
              Height = 185
              ActivePage = TS_cambio
              TabOrder = 2
              OnExit = PageControl3Exit
              object TS_cambio: TTabSheet
                Caption = 'Pagamento Antecipado'
                OnEnter = TS_cambioEnter
                OnShow = TS_cambioShow
                object Label57: TLabel
                  Left = 5
                  Top = 24
                  Width = 43
                  Height = 13
                  Caption = 'Contrato '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label58: TLabel
                  Left = 81
                  Top = 23
                  Width = 34
                  Height = 13
                  Caption = 'Banco '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label59: TLabel
                  Left = 121
                  Top = 22
                  Width = 28
                  Height = 13
                  Caption = 'Praça'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label60: TLabel
                  Left = 5
                  Top = 63
                  Width = 35
                  Height = 13
                  Caption = 'Valor %'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label61: TLabel
                  Left = 5
                  Top = 102
                  Width = 51
                  Height = 13
                  Caption = 'Comprador'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label279: TLabel
                  Left = 81
                  Top = 63
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object dbg_pagant: TDBGrid
                  Left = 244
                  Top = 4
                  Width = 486
                  Height = 142
                  DataSource = DS_qpgvinc
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 8
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnCellClick = dbg_pagantCellClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Moeda Nacional'
                      Title.Caption = 'MN'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Contrato'
                      Width = 58
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Banco'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Praca'
                      Title.Caption = 'Praça'
                      Width = 45
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Valor Percentual'
                      Width = 106
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CNPJ Comprador'
                      Title.Caption = 'Comprador'
                      Width = 94
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'valor'
                      Title.Caption = 'Valor'
                      Width = 79
                      Visible = True
                    end>
                end
                object me_contrato: TMaskEdit
                  Left = 4
                  Top = 37
                  Width = 73
                  Height = 21
                  MaxLength = 8
                  TabOrder = 0
                  OnExit = me_contratoExit
                end
                object me_banco: TMaskEdit
                  Left = 78
                  Top = 37
                  Width = 38
                  Height = 21
                  MaxLength = 5
                  TabOrder = 1
                end
                object me_praca: TMaskEdit
                  Left = 117
                  Top = 37
                  Width = 36
                  Height = 21
                  MaxLength = 4
                  TabOrder = 2
                end
                object me_valorperc: TMaskEdit
                  Left = 4
                  Top = 77
                  Width = 74
                  Height = 21
                  TabOrder = 3
                  OnExit = me_valorpercExit
                  OnKeyPress = me_valorpercKeyPress
                end
                object me_comprador: TMaskEdit
                  Left = 4
                  Top = 117
                  Width = 149
                  Height = 21
                  TabOrder = 5
                end
                object b_excluipag: TBitBtn
                  Left = 160
                  Top = 116
                  Width = 75
                  Height = 25
                  Caption = '&Exclui'
                  Enabled = False
                  TabOrder = 7
                  OnClick = b_excluipagClick
                  Kind = bkCancel
                end
                object b_incluipag: TBitBtn
                  Left = 160
                  Top = 88
                  Width = 75
                  Height = 25
                  Caption = '&Inclui'
                  Enabled = False
                  TabOrder = 6
                  OnClick = b_incluipagClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    3333333333333333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333FF3333333333333003333
                    3333333333773FF3333333333309003333333333337F773FF333333333099900
                    33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
                    99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
                    33333333337F3F77333333333309003333333333337F77333333333333003333
                    3333333333773333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333333333333}
                  NumGlyphs = 2
                end
                object cb_mn1: TCheckBox
                  Left = 4
                  Top = 4
                  Width = 97
                  Height = 17
                  Caption = 'Moeda Nacional'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                end
                object me_valorreal: TMaskEdit
                  Left = 79
                  Top = 77
                  Width = 74
                  Height = 21
                  TabOrder = 4
                  OnExit = me_valorrealExit
                  OnKeyPress = me_valorrealKeyPress
                end
              end
              object ts_pag2: TTabSheet
                Caption = 'Pagamento à Vista'
                ImageIndex = 1
                OnEnter = ts_pag2Enter
                OnShow = ts_pag2Show
                object Label56: TLabel
                  Left = 5
                  Top = 24
                  Width = 43
                  Height = 13
                  Caption = 'Contrato '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label63: TLabel
                  Left = 81
                  Top = 23
                  Width = 34
                  Height = 13
                  Caption = 'Banco '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label64: TLabel
                  Left = 121
                  Top = 22
                  Width = 28
                  Height = 13
                  Caption = 'Praça'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label65: TLabel
                  Left = 5
                  Top = 63
                  Width = 35
                  Height = 13
                  Caption = 'Valor %'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label66: TLabel
                  Left = 5
                  Top = 102
                  Width = 51
                  Height = 13
                  Caption = 'Comprador'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label280: TLabel
                  Left = 81
                  Top = 63
                  Width = 24
                  Height = 13
                  Caption = 'Valor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_contrato2: TMaskEdit
                  Left = 4
                  Top = 37
                  Width = 73
                  Height = 21
                  MaxLength = 8
                  TabOrder = 0
                  OnExit = me_contrato2Exit
                end
                object me_banco2: TMaskEdit
                  Left = 78
                  Top = 37
                  Width = 38
                  Height = 21
                  MaxLength = 5
                  TabOrder = 1
                end
                object me_praca2: TMaskEdit
                  Left = 117
                  Top = 37
                  Width = 37
                  Height = 21
                  MaxLength = 4
                  TabOrder = 2
                end
                object me_valorperc2: TMaskEdit
                  Left = 4
                  Top = 77
                  Width = 75
                  Height = 21
                  TabOrder = 3
                  OnExit = me_valorperc2Exit
                  OnKeyPress = me_valorperc2KeyPress
                end
                object me_comprador2: TMaskEdit
                  Left = 4
                  Top = 117
                  Width = 149
                  Height = 21
                  TabOrder = 4
                end
                object b_incluipag2: TBitBtn
                  Left = 166
                  Top = 88
                  Width = 75
                  Height = 25
                  Caption = '&Inclui'
                  Enabled = False
                  TabOrder = 5
                  OnClick = b_incluipag2Click
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    3333333333333333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333FF3333333333333003333
                    3333333333773FF3333333333309003333333333337F773FF333333333099900
                    33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
                    99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
                    33333333337F3F77333333333309003333333333337F77333333333333003333
                    3333333333773333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333333333333}
                  NumGlyphs = 2
                end
                object b_excluipag2: TBitBtn
                  Left = 166
                  Top = 120
                  Width = 75
                  Height = 25
                  Caption = '&Exclui'
                  Enabled = False
                  TabOrder = 6
                  OnClick = b_excluipagClick
                  Kind = bkCancel
                end
                object dbg_pagvista: TDBGrid
                  Left = 248
                  Top = 3
                  Width = 486
                  Height = 142
                  DataSource = DS_qpgvinc
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 7
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnCellClick = dbg_pagvistaCellClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Moeda Nacional'
                      Title.Caption = 'MN'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Contrato'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Banco'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Praca'
                      Title.Caption = 'Praça'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Valor Percentual'
                      Width = 84
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CNPJ Comprador'
                      Title.Caption = 'Comprador'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'valor'
                      Visible = True
                    end>
                end
                object cb_mn2: TCheckBox
                  Left = 4
                  Top = 4
                  Width = 97
                  Height = 17
                  Caption = 'Moeda Nacional'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object me_valorreal2: TMaskEdit
                  Left = 80
                  Top = 77
                  Width = 75
                  Height = 21
                  TabOrder = 9
                  OnExit = me_valorreal2Exit
                  OnKeyPress = me_valorreal2KeyPress
                end
              end
              object ts_pag3: TTabSheet
                Caption = 'Pagamento em até 180 Dias'
                ImageIndex = 2
                OnEnter = ts_pag3Enter
                object Panel10: TPanel
                  Left = 0
                  Top = 0
                  Width = 737
                  Height = 155
                  Color = clTeal
                  TabOrder = 0
                  OnExit = Panel10Exit
                  object rg_parcelas: TRadioGroup
                    Left = 8
                    Top = 4
                    Width = 225
                    Height = 41
                    Caption = 'Parcelas'
                    Columns = 2
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    Items.Strings = (
                      '1 - Fixas'
                      '2 - Variáveis')
                    ParentFont = False
                    TabOrder = 0
                    OnClick = rg_parcelasClick
                  end
                  object p_fixas: TPanel
                    Left = 8
                    Top = 50
                    Width = 225
                    Height = 103
                    Color = clSilver
                    TabOrder = 1
                    object Label67: TLabel
                      Left = 5
                      Top = 13
                      Width = 71
                      Height = 13
                      Caption = 'Nº de Parcelas'
                    end
                    object Label68: TLabel
                      Left = 117
                      Top = 13
                      Width = 64
                      Height = 13
                      Caption = 'Periodicidade'
                    end
                    object Label69: TLabel
                      Left = 5
                      Top = 37
                      Width = 89
                      Height = 13
                      Caption = 'Valor % da Parcela'
                    end
                    object me_nparcelas: TMaskEdit
                      Left = 77
                      Top = 8
                      Width = 36
                      Height = 21
                      TabOrder = 0
                    end
                    object me_periodicidade: TMaskEdit
                      Left = 183
                      Top = 6
                      Width = 36
                      Height = 21
                      TabOrder = 1
                    end
                    object me_valorparc: TMaskEdit
                      Left = 96
                      Top = 32
                      Width = 73
                      Height = 21
                      TabOrder = 2
                    end
                    object rg_indiper: TRadioGroup
                      Left = 8
                      Top = 56
                      Width = 209
                      Height = 41
                      Caption = 'Indicador de Periciocidade'
                      Columns = 2
                      Items.Strings = (
                        '0 - Diária'
                        '1 - Mensal')
                      TabOrder = 3
                    end
                  end
                  object p_varia: TPanel
                    Left = 240
                    Top = 8
                    Width = 297
                    Height = 145
                    Color = clInactiveCaptionText
                    Enabled = False
                    TabOrder = 2
                    object Label71: TLabel
                      Left = 5
                      Top = 6
                      Width = 51
                      Height = 13
                      Caption = 'Percentual'
                    end
                    object Label72: TLabel
                      Left = 5
                      Top = 86
                      Width = 69
                      Height = 13
                      Caption = 'Data (mêsano)'
                    end
                    object Label281: TLabel
                      Left = 5
                      Top = 46
                      Width = 24
                      Height = 13
                      Caption = 'Valor'
                    end
                    object DBG_parcvar: TDBGrid
                      Left = 84
                      Top = 8
                      Width = 209
                      Height = 101
                      Color = clCaptionText
                      DataSource = DS_qparcevar
                      FixedColor = clCaptionText
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      OnCellClick = DBG_parcvarCellClick
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'Percentual'
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'valor'
                          Title.Caption = 'Valor'
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'Data de Pagamento'
                          Title.Caption = 'Data'
                          Visible = True
                        end>
                    end
                    object me_percentual: TMaskEdit
                      Left = 5
                      Top = 19
                      Width = 64
                      Height = 21
                      TabOrder = 1
                      OnExit = me_percentualExit
                      OnKeyPress = me_percentualKeyPress
                    end
                    object me_datapar: TMaskEdit
                      Left = 2
                      Top = 103
                      Width = 67
                      Height = 21
                      TabOrder = 2
                    end
                    object B_incluiparvar: TBitBtn
                      Left = 131
                      Top = 113
                      Width = 75
                      Height = 25
                      Caption = '&Inclui'
                      Enabled = False
                      TabOrder = 3
                      OnClick = B_incluiparvarClick
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000120B0000120B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                        3333333333333333333333333333333333333333333333333333333333333333
                        3333333333333333333333333333333333333333333FF3333333333333003333
                        3333333333773FF3333333333309003333333333337F773FF333333333099900
                        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
                        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
                        33333333337F3F77333333333309003333333333337F77333333333333003333
                        3333333333773333333333333333333333333333333333333333333333333333
                        3333333333333333333333333333333333333333333333333333}
                      NumGlyphs = 2
                    end
                    object b_excluiparvar: TBitBtn
                      Left = 211
                      Top = 115
                      Width = 75
                      Height = 25
                      Caption = '&Exclui'
                      Enabled = False
                      TabOrder = 4
                      OnClick = b_excluiparvarClick
                      Kind = bkCancel
                    end
                    object me_valor3: TMaskEdit
                      Left = 5
                      Top = 59
                      Width = 64
                      Height = 21
                      TabOrder = 5
                      OnExit = me_valor3Exit
                      OnKeyPress = me_valor3KeyPress
                    end
                  end
                  object p_juros: TPanel
                    Left = 546
                    Top = 8
                    Width = 185
                    Height = 145
                    Color = clSilver
                    TabOrder = 3
                    object Label73: TLabel
                      Left = 9
                      Top = 38
                      Width = 33
                      Height = 13
                      Caption = 'Código'
                    end
                    object Label74: TLabel
                      Left = 9
                      Top = 86
                      Width = 67
                      Height = 13
                      Caption = 'Taxa de Juros'
                    end
                    object rb_taxajuros: TRadioButton
                      Left = 8
                      Top = 6
                      Width = 113
                      Height = 17
                      Caption = 'com Taxa de Juros'
                      TabOrder = 0
                    end
                    object cb_taxabacen: TComboBox
                      Left = 8
                      Top = 52
                      Width = 173
                      Height = 21
                      Color = clCaptionText
                      ItemHeight = 0
                      TabOrder = 1
                    end
                    object me_valtaxajuros: TMaskEdit
                      Left = 9
                      Top = 99
                      Width = 86
                      Height = 21
                      TabOrder = 2
                    end
                  end
                end
                object p_rof: TPanel
                  Left = 16
                  Top = 32
                  Width = 201
                  Height = 77
                  Color = clInactiveCaptionText
                  TabOrder = 1
                  Visible = False
                  OnExit = p_rofExit
                  object Label70: TLabel
                    Left = 13
                    Top = 21
                    Width = 76
                    Height = 13
                    Caption = 'Nº ROF BACEN'
                  end
                  object Label210: TLabel
                    Left = 105
                    Top = 21
                    Width = 51
                    Height = 13
                    Caption = 'Percentual'
                  end
                  object me_rof: TMaskEdit
                    Left = 11
                    Top = 35
                    Width = 86
                    Height = 21
                    TabOrder = 0
                  end
                  object me_valperrof: TMaskEdit
                    Left = 103
                    Top = 35
                    Width = 86
                    Height = 21
                    TabOrder = 1
                  end
                end
              end
            end
            object RG_cambial: TRadioGroup
              Left = 4
              Top = 5
              Width = 745
              Height = 41
              Caption = ' Cobertura Cambial '
              Color = clSilver
              Columns = 4
              Items.Strings = (
                '1 - Até 180 Dias             '
                '2 - De 181 até 360 Dias'
                '3 - Acima de 360 Dias   '
                '4 - Sem Cobertura         ')
              ParentColor = False
              TabOrder = 0
              OnClick = RG_cambialClick
            end
          end
        end
      end
      object p_exportadores: TPanel
        Left = 92
        Top = 169
        Width = 461
        Height = 28
        TabOrder = 2
        Visible = False
        object Label218: TLabel
          Left = 8
          Top = 5
          Width = 278
          Height = 16
          Caption = 'Localiza Exportadores por código/nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object b_cancelaimp: TBitBtn
          Left = 448
          Top = 204
          Width = 75
          Height = 25
          Caption = '&Cancela'
          TabOrder = 1
          OnClick = b_cancelaimpClick
          Kind = bkCancel
        end
        object b_okimp: TBitBtn
          Left = 528
          Top = 204
          Width = 75
          Height = 25
          TabOrder = 2
          OnClick = b_okimpClick
          Kind = bkOK
        end
        object DBG_exportadores: TDBGrid
          Left = 12
          Top = 25
          Width = 589
          Height = 172
          DataSource = ds_qexportadores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindow
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Title.Caption = 'Código'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Razão Social'
              Width = 509
              Visible = True
            end>
        end
        object me_localizaexp: TMaskEdit
          Left = 288
          Top = 4
          Width = 313
          Height = 21
          TabOrder = 3
          OnChange = me_localizaexpChange
        end
      end
      object p_fabricantes: TPanel
        Left = 96
        Top = 177
        Width = 361
        Height = 24
        TabOrder = 3
        Visible = False
        OnExit = p_fabricantesExit
        object Label224: TLabel
          Left = 16
          Top = 7
          Width = 259
          Height = 16
          Caption = 'Localiza Fabricante por código/nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object b_cancelafab: TBitBtn
          Left = 448
          Top = 204
          Width = 75
          Height = 25
          Caption = '&Cancela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = b_cancelafabClick
          Kind = bkCancel
        end
        object b_okfab: TBitBtn
          Left = 528
          Top = 204
          Width = 75
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = b_okfabClick
          Kind = bkOK
        end
        object DBG_fabricantes: TDBGrid
          Left = 12
          Top = 25
          Width = 589
          Height = 172
          DataSource = ds_qfabricantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindow
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Title.Caption = 'Código'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'razão social'
              Title.Caption = 'Razão Social'
              Width = 509
              Visible = True
            end>
        end
        object me_localizafab: TMaskEdit
          Left = 288
          Top = 4
          Width = 313
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = me_localizafabChange
        end
      end
    end
    object TS_Conhecimento: TTabSheet
      Caption = 'Conhecimento'
      Enabled = False
      ImageIndex = 2
      TabVisible = False
      OnShow = TS_ConhecimentoShow
      object PageControl4: TPageControl
        Left = 4
        Top = 4
        Width = 757
        Height = 381
        ActivePage = TS_carga
        TabOrder = 0
        object TS_transporte: TTabSheet
          Caption = 'Transporte'
          OnEnter = TS_transporteShow
          OnShow = TS_transporteShow
          object PageControl5: TPageControl
            Left = 8
            Top = 4
            Width = 737
            Height = 345
            ActivePage = TS_aereo
            TabOrder = 0
            OnEnter = TS_transporteShow
            object TS_aereo: TTabSheet
              Caption = 'Aéreo'
              object Label45: TLabel
                Left = 8
                Top = 10
                Width = 66
                Height = 13
                Caption = 'Transportador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Cb_transportadores1: TComboBox
                Left = 6
                Top = 23
                Width = 429
                Height = 21
                ItemHeight = 0
                TabOrder = 0
              end
              object Panel4: TPanel
                Left = 4
                Top = 56
                Width = 721
                Height = 105
                BorderStyle = bsSingle
                Color = clTeal
                TabOrder = 1
                object Label46: TLabel
                  Left = 4
                  Top = 15
                  Width = 26
                  Height = 13
                  Caption = 'Tipos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label51: TLabel
                  Left = 507
                  Top = 15
                  Width = 46
                  Height = 13
                  Caption = 'Utilização'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label47: TLabel
                  Left = 226
                  Top = 15
                  Width = 61
                  Height = 13
                  Caption = 'Identificação'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label48: TLabel
                  Left = 367
                  Top = 15
                  Width = 96
                  Height = 13
                  Caption = 'Identificação Master'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label50: TLabel
                  Left = 452
                  Top = 55
                  Width = 89
                  Height = 13
                  Caption = 'Data de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label49: TLabel
                  Left = 8
                  Top = 55
                  Width = 92
                  Height = 13
                  Caption = 'Local de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_local: TMaskEdit
                  Left = 4
                  Top = 68
                  Width = 441
                  Height = 21
                  TabOrder = 4
                end
                object me_datatrans: TMaskEdit
                  Left = 450
                  Top = 68
                  Width = 91
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 5
                  Text = '  /  /    '
                end
                object me_ident: TMaskEdit
                  Left = 224
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 1
                end
                object me_master: TMaskEdit
                  Left = 364
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 2
                end
                object Cb_tipodocs1: TComboBox
                  Left = 4
                  Top = 28
                  Width = 217
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 0
                  Items.Strings = (
                    '1   - AWB'
                    '3   - HOUSE AWB'
                    '14 - DSIC')
                end
                object CB_utilizacao: TComboBox
                  Left = 503
                  Top = 28
                  Width = 211
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 3
                  Items.Strings = (
                    '1 - Total'
                    '2 - Parcial'
                    '3 - Mais de um')
                end
              end
              object B_gravaaer: TBitBtn
                Left = 648
                Top = 168
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 2
                OnClick = B_gravaaerClick
                Kind = bkOK
              end
            end
            object TS_maritimo: TTabSheet
              Caption = 'Marítimo'
              ImageIndex = 1
              object Label76: TLabel
                Left = 8
                Top = 10
                Width = 66
                Height = 13
                Caption = 'Transportador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label83: TLabel
                Left = 8
                Top = 46
                Width = 60
                Height = 13
                Caption = 'Embarcação'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object cb_transportadores2: TComboBox
                Left = 6
                Top = 23
                Width = 429
                Height = 21
                ItemHeight = 0
                TabOrder = 0
              end
              object Panel14: TPanel
                Left = 4
                Top = 84
                Width = 721
                Height = 105
                BorderStyle = bsSingle
                Color = clTeal
                TabOrder = 2
                object Label77: TLabel
                  Left = 4
                  Top = 15
                  Width = 26
                  Height = 13
                  Caption = 'Tipos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label78: TLabel
                  Left = 507
                  Top = 15
                  Width = 46
                  Height = 13
                  Caption = 'Utilização'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label79: TLabel
                  Left = 226
                  Top = 15
                  Width = 61
                  Height = 13
                  Caption = 'Identificação'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label80: TLabel
                  Left = 367
                  Top = 15
                  Width = 96
                  Height = 13
                  Caption = 'Identificação Master'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label81: TLabel
                  Left = 452
                  Top = 55
                  Width = 89
                  Height = 13
                  Caption = 'Data de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label82: TLabel
                  Left = 8
                  Top = 55
                  Width = 92
                  Height = 13
                  Caption = 'Local de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_local1: TMaskEdit
                  Left = 4
                  Top = 68
                  Width = 441
                  Height = 21
                  TabOrder = 4
                end
                object me_datatrans1: TMaskEdit
                  Left = 450
                  Top = 68
                  Width = 91
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 5
                  Text = '  /  /    '
                end
                object me_ident1: TMaskEdit
                  Left = 224
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 1
                end
                object me_master1: TMaskEdit
                  Left = 364
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 2
                end
                object cb_tipodocs2: TComboBox
                  Left = 4
                  Top = 28
                  Width = 217
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 0
                  Items.Strings = (
                    '10 - B/L'
                    '12 - HOUSE B/L')
                end
                object cb_utilizacao1: TComboBox
                  Left = 503
                  Top = 28
                  Width = 211
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 3
                  Items.Strings = (
                    '1 - Total'
                    '2 - Parcial'
                    '3 - Mais de um')
                end
              end
              object me_embarcacao: TMaskEdit
                Left = 6
                Top = 59
                Width = 477
                Height = 21
                TabOrder = 1
              end
              object b_gravamar: TBitBtn
                Left = 648
                Top = 200
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 3
                OnClick = b_gravamarClick
                Kind = bkOK
              end
            end
            object TS_rodoviario: TTabSheet
              Caption = 'Rodoviário'
              ImageIndex = 2
              object Label84: TLabel
                Left = 8
                Top = 10
                Width = 66
                Height = 13
                Caption = 'Transportador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label85: TLabel
                Left = 442
                Top = 10
                Width = 82
                Height = 13
                Caption = 'Placa do Veículo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label155: TLabel
                Left = 586
                Top = 10
                Width = 78
                Height = 13
                Caption = 'Lacre de Origem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object cb_transportadores3: TComboBox
                Left = 6
                Top = 23
                Width = 429
                Height = 21
                ItemHeight = 0
                TabOrder = 0
              end
              object me_placa1: TMaskEdit
                Left = 438
                Top = 23
                Width = 143
                Height = 21
                TabOrder = 1
              end
              object Panel15: TPanel
                Left = 4
                Top = 52
                Width = 721
                Height = 105
                BorderStyle = bsSingle
                Color = clTeal
                TabOrder = 2
                object Label87: TLabel
                  Left = 151
                  Top = 11
                  Width = 46
                  Height = 13
                  Caption = 'Utilização'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label88: TLabel
                  Left = 6
                  Top = 11
                  Width = 101
                  Height = 13
                  Caption = 'Identificação do CRT'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label90: TLabel
                  Left = 452
                  Top = 55
                  Width = 89
                  Height = 13
                  Caption = 'Data de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label91: TLabel
                  Left = 8
                  Top = 55
                  Width = 92
                  Height = 13
                  Caption = 'Local de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_local2: TMaskEdit
                  Left = 4
                  Top = 68
                  Width = 441
                  Height = 21
                  TabOrder = 2
                end
                object me_datatrans2: TMaskEdit
                  Left = 450
                  Top = 68
                  Width = 91
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 3
                  Text = '  /  /    '
                end
                object me_numerocrt: TMaskEdit
                  Left = 4
                  Top = 24
                  Width = 137
                  Height = 21
                  TabOrder = 0
                end
                object cb_utilizacao2: TComboBox
                  Left = 151
                  Top = 24
                  Width = 211
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 1
                  Items.Strings = (
                    '1 - Total'
                    '2 - Parcial'
                    '3 - Mais de um')
                end
              end
              object b_gravarod: TBitBtn
                Left = 648
                Top = 168
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 3
                OnClick = b_gravarodClick
                Kind = bkOK
              end
              object me_lacrevei: TMaskEdit
                Left = 582
                Top = 23
                Width = 143
                Height = 21
                TabOrder = 4
              end
            end
            object TabSheet14: TTabSheet
              Caption = 'Ferroviário'
              ImageIndex = 3
              object PageControl6: TPageControl
                Left = -8
                Top = -28
                Width = 737
                Height = 265
                ActivePage = TabSheet21
                TabOrder = 0
                object TS_ferroviario: TTabSheet
                  Caption = 'Aéreo'
                  object Label86: TLabel
                    Left = 12
                    Top = 14
                    Width = 66
                    Height = 13
                    Caption = 'Transportador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object cb_transportadores4: TComboBox
                    Left = 10
                    Top = 27
                    Width = 429
                    Height = 21
                    ItemHeight = 0
                    TabOrder = 0
                  end
                  object Panel16: TPanel
                    Left = 8
                    Top = 60
                    Width = 721
                    Height = 105
                    BorderStyle = bsSingle
                    Color = clTeal
                    TabOrder = 1
                    object Label89: TLabel
                      Left = 4
                      Top = 15
                      Width = 26
                      Height = 13
                      Caption = 'Tipos'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label92: TLabel
                      Left = 507
                      Top = 15
                      Width = 46
                      Height = 13
                      Caption = 'Utilização'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label93: TLabel
                      Left = 226
                      Top = 15
                      Width = 61
                      Height = 13
                      Caption = 'Identificação'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label94: TLabel
                      Left = 367
                      Top = 15
                      Width = 96
                      Height = 13
                      Caption = 'Identificação Master'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label95: TLabel
                      Left = 452
                      Top = 55
                      Width = 89
                      Height = 13
                      Caption = 'Data de Embarque'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label96: TLabel
                      Left = 8
                      Top = 55
                      Width = 92
                      Height = 13
                      Caption = 'Local de Embarque'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object me_local3: TMaskEdit
                      Left = 4
                      Top = 68
                      Width = 441
                      Height = 21
                      TabOrder = 4
                    end
                    object me_datatrans3: TMaskEdit
                      Left = 450
                      Top = 68
                      Width = 91
                      Height = 21
                      EditMask = '!99/99/0000;1;_'
                      MaxLength = 10
                      TabOrder = 5
                      Text = '  /  /    '
                    end
                    object me_ident3: TMaskEdit
                      Left = 224
                      Top = 28
                      Width = 137
                      Height = 21
                      TabOrder = 1
                    end
                    object me_master3: TMaskEdit
                      Left = 364
                      Top = 28
                      Width = 137
                      Height = 21
                      TabOrder = 2
                    end
                    object cb_tipodocs3: TComboBox
                      Left = 4
                      Top = 28
                      Width = 217
                      Height = 21
                      ItemHeight = 13
                      TabOrder = 0
                      Items.Strings = (
                        '17 - RWB '
                        '18 - HOUSE RWB'
                        '19 - TIF/DTA')
                    end
                    object cb_utilizacao4: TComboBox
                      Left = 503
                      Top = 28
                      Width = 211
                      Height = 21
                      ItemHeight = 13
                      TabOrder = 3
                      Items.Strings = (
                        '1 - Total'
                        '2 - Parcial'
                        '3 - Mais de um')
                    end
                  end
                  object b_gravafer: TBitBtn
                    Left = 648
                    Top = 168
                    Width = 75
                    Height = 25
                    Caption = '&Grava'
                    TabOrder = 2
                    OnClick = b_gravaferClick
                    Kind = bkOK
                  end
                end
                object TabSheet21: TTabSheet
                  Caption = 'Marítimo'
                  ImageIndex = 1
                  object Label97: TLabel
                    Left = 8
                    Top = 10
                    Width = 66
                    Height = 13
                    Caption = 'Transportador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label98: TLabel
                    Left = 8
                    Top = 46
                    Width = 60
                    Height = 13
                    Caption = 'Embarcação'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object ComboBox9: TComboBox
                    Left = 6
                    Top = 23
                    Width = 429
                    Height = 21
                    ItemHeight = 0
                    TabOrder = 0
                  end
                  object Panel17: TPanel
                    Left = 4
                    Top = 84
                    Width = 721
                    Height = 105
                    BorderStyle = bsSingle
                    Color = clTeal
                    TabOrder = 1
                    object Label99: TLabel
                      Left = 4
                      Top = 15
                      Width = 26
                      Height = 13
                      Caption = 'Tipos'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label100: TLabel
                      Left = 531
                      Top = 15
                      Width = 46
                      Height = 13
                      Caption = 'Utilização'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label101: TLabel
                      Left = 226
                      Top = 15
                      Width = 61
                      Height = 13
                      Caption = 'Identificação'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label102: TLabel
                      Left = 367
                      Top = 15
                      Width = 96
                      Height = 13
                      Caption = 'Identificação Master'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label103: TLabel
                      Left = 452
                      Top = 55
                      Width = 89
                      Height = 13
                      Caption = 'Data de Embarque'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label104: TLabel
                      Left = 8
                      Top = 55
                      Width = 92
                      Height = 13
                      Caption = 'Local de Embarque'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object MaskEdit14: TMaskEdit
                      Left = 4
                      Top = 68
                      Width = 441
                      Height = 21
                      TabOrder = 0
                    end
                    object MaskEdit15: TMaskEdit
                      Left = 450
                      Top = 68
                      Width = 91
                      Height = 21
                      EditMask = '!99/99/0000;1;_'
                      MaxLength = 10
                      TabOrder = 1
                      Text = '  /  /    '
                    end
                    object MaskEdit16: TMaskEdit
                      Left = 224
                      Top = 28
                      Width = 137
                      Height = 21
                      TabOrder = 2
                    end
                    object MaskEdit17: TMaskEdit
                      Left = 364
                      Top = 28
                      Width = 137
                      Height = 21
                      TabOrder = 3
                    end
                    object ComboBox10: TComboBox
                      Left = 4
                      Top = 28
                      Width = 217
                      Height = 21
                      ItemHeight = 13
                      TabOrder = 4
                      Items.Strings = (
                        '1   - AWB'
                        '3   - HOUSE AWB'
                        '14 - DSIC'
                        '10 - B/L'
                        '12 - HOUSE B/L'
                        '17 - RWB '
                        '18 - HOUSE RWB'
                        '19 - TIF/DTA'
                        '13 - CRT'
                        '20 - CODIGO DE BARRAS')
                    end
                    object ComboBox11: TComboBox
                      Left = 503
                      Top = 28
                      Width = 211
                      Height = 21
                      ItemHeight = 13
                      TabOrder = 5
                      Items.Strings = (
                        '1 - Total'
                        '2 - Parcial'
                        '3 - Mais de um')
                    end
                  end
                  object MaskEdit18: TMaskEdit
                    Left = 6
                    Top = 59
                    Width = 477
                    Height = 21
                    TabOrder = 2
                  end
                  object BitBtn1: TBitBtn
                    Left = 648
                    Top = 192
                    Width = 75
                    Height = 25
                    Caption = '&Grava'
                    TabOrder = 3
                    OnClick = b_gravarodClick
                    Kind = bkOK
                  end
                end
                object TabSheet22: TTabSheet
                  Caption = 'Rodoviário'
                  ImageIndex = 2
                  object Label105: TLabel
                    Left = 8
                    Top = 10
                    Width = 66
                    Height = 13
                    Caption = 'Transportador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label106: TLabel
                    Left = 442
                    Top = 10
                    Width = 82
                    Height = 13
                    Caption = 'Placa do Veículo'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object ComboBox12: TComboBox
                    Left = 6
                    Top = 23
                    Width = 429
                    Height = 21
                    ItemHeight = 0
                    TabOrder = 0
                  end
                  object MaskEdit19: TMaskEdit
                    Left = 438
                    Top = 23
                    Width = 143
                    Height = 21
                    TabOrder = 1
                  end
                  object Panel18: TPanel
                    Left = 4
                    Top = 52
                    Width = 721
                    Height = 105
                    BorderStyle = bsSingle
                    Color = clTeal
                    TabOrder = 2
                    object Label107: TLabel
                      Left = 151
                      Top = 11
                      Width = 46
                      Height = 13
                      Caption = 'Utilização'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label108: TLabel
                      Left = 6
                      Top = 11
                      Width = 101
                      Height = 13
                      Caption = 'Identificação do CRT'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label109: TLabel
                      Left = 452
                      Top = 55
                      Width = 89
                      Height = 13
                      Caption = 'Data de Embarque'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label110: TLabel
                      Left = 8
                      Top = 55
                      Width = 92
                      Height = 13
                      Caption = 'Local de Embarque'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object MaskEdit20: TMaskEdit
                      Left = 4
                      Top = 68
                      Width = 441
                      Height = 21
                      TabOrder = 0
                    end
                    object MaskEdit21: TMaskEdit
                      Left = 450
                      Top = 68
                      Width = 91
                      Height = 21
                      EditMask = '!99/99/0000;1;_'
                      MaxLength = 10
                      TabOrder = 1
                      Text = '  /  /    '
                    end
                    object ComboBox13: TComboBox
                      Left = 151
                      Top = 24
                      Width = 211
                      Height = 21
                      ItemHeight = 13
                      TabOrder = 2
                      Items.Strings = (
                        '1 - Total'
                        '2 - Parcial'
                        '3 - Mais de um')
                    end
                    object ComboBox1: TComboBox
                      Left = 4
                      Top = 24
                      Width = 145
                      Height = 21
                      ItemHeight = 13
                      TabOrder = 3
                      Text = 'ComboBox1'
                      Items.Strings = (
                        '17 - RWB'
                        '18 - HOUSE RWB'
                        '19 - TIF/DTA')
                    end
                  end
                end
                object TabSheet23: TTabSheet
                  Caption = 'Ferroviário'
                  ImageIndex = 3
                end
                object TabSheet24: TTabSheet
                  Caption = 'Postal'
                  ImageIndex = 4
                end
                object TabSheet25: TTabSheet
                  Caption = 'Fluvial'
                  ImageIndex = 5
                end
                object TabSheet26: TTabSheet
                  Caption = 'Lacustre'
                  ImageIndex = 6
                end
                object TabSheet27: TTabSheet
                  Caption = 'Meios Próprios'
                  ImageIndex = 7
                end
                object TabSheet28: TTabSheet
                  Caption = 'Ducto'
                  ImageIndex = 8
                end
              end
            end
            object TS_postal: TTabSheet
              Caption = 'Postal'
              ImageIndex = 4
              object Panel19: TPanel
                Left = 208
                Top = 48
                Width = 285
                Height = 121
                Color = clTeal
                TabOrder = 0
                object Label111: TLabel
                  Left = 8
                  Top = 23
                  Width = 81
                  Height = 13
                  Caption = 'Código de Barras'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label112: TLabel
                  Left = 8
                  Top = 47
                  Width = 88
                  Height = 13
                  Caption = 'Data de Postagem'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label113: TLabel
                  Left = 8
                  Top = 73
                  Width = 89
                  Height = 13
                  Caption = 'Local de Portagem'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_barras: TMaskEdit
                  Left = 108
                  Top = 17
                  Width = 121
                  Height = 21
                  TabOrder = 0
                end
                object me_datapos: TMaskEdit
                  Left = 108
                  Top = 41
                  Width = 69
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 1
                  Text = '  /  /    '
                end
                object me_localpos: TMaskEdit
                  Left = 108
                  Top = 65
                  Width = 169
                  Height = 21
                  TabOrder = 2
                end
              end
              object b_gravapos: TBitBtn
                Left = 416
                Top = 176
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 1
                OnClick = b_gravaposClick
                Kind = bkOK
              end
            end
            object TS_fluvial: TTabSheet
              Caption = 'Fluvial'
              ImageIndex = 5
              object Label114: TLabel
                Left = 8
                Top = 10
                Width = 66
                Height = 13
                Caption = 'Transportador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label115: TLabel
                Left = 8
                Top = 46
                Width = 60
                Height = 13
                Caption = 'Embarcação'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object cb_transportadores5: TComboBox
                Left = 6
                Top = 23
                Width = 429
                Height = 21
                ItemHeight = 0
                TabOrder = 0
              end
              object me_embarcacao4: TMaskEdit
                Left = 6
                Top = 59
                Width = 477
                Height = 21
                TabOrder = 1
              end
              object Panel20: TPanel
                Left = 4
                Top = 84
                Width = 721
                Height = 105
                BorderStyle = bsSingle
                Color = clTeal
                TabOrder = 2
                object Label116: TLabel
                  Left = 4
                  Top = 15
                  Width = 26
                  Height = 13
                  Caption = 'Tipos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label117: TLabel
                  Left = 507
                  Top = 15
                  Width = 46
                  Height = 13
                  Caption = 'Utilização'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label118: TLabel
                  Left = 226
                  Top = 15
                  Width = 61
                  Height = 13
                  Caption = 'Identificação'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label119: TLabel
                  Left = 367
                  Top = 15
                  Width = 96
                  Height = 13
                  Caption = 'Identificação Master'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label120: TLabel
                  Left = 452
                  Top = 55
                  Width = 89
                  Height = 13
                  Caption = 'Data de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label121: TLabel
                  Left = 8
                  Top = 55
                  Width = 92
                  Height = 13
                  Caption = 'Local de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_local4: TMaskEdit
                  Left = 4
                  Top = 68
                  Width = 441
                  Height = 21
                  TabOrder = 4
                end
                object me_datatrans4: TMaskEdit
                  Left = 450
                  Top = 68
                  Width = 91
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 5
                  Text = '  /  /    '
                end
                object me_ident4: TMaskEdit
                  Left = 224
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 1
                end
                object me_master4: TMaskEdit
                  Left = 364
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 2
                end
                object cb_tipodocs4: TComboBox
                  Left = 4
                  Top = 28
                  Width = 217
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 0
                  Items.Strings = (
                    '10 - B/L'
                    '12 - HOUSE B/L')
                end
                object cb_utilizacao5: TComboBox
                  Left = 503
                  Top = 28
                  Width = 211
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 3
                  Items.Strings = (
                    '1 - Total'
                    '2 - Parcial'
                    '3 - Mais de um')
                end
              end
              object b_gravaflu: TBitBtn
                Left = 648
                Top = 192
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 3
                OnClick = b_gravafluClick
                Kind = bkOK
              end
            end
            object TS_lacustre: TTabSheet
              Caption = 'Lacustre'
              ImageIndex = 6
              object Label122: TLabel
                Left = 8
                Top = 10
                Width = 66
                Height = 13
                Caption = 'Transportador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label123: TLabel
                Left = 8
                Top = 46
                Width = 60
                Height = 13
                Caption = 'Embarcação'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object cb_transportadores6: TComboBox
                Left = 6
                Top = 23
                Width = 429
                Height = 21
                ItemHeight = 0
                TabOrder = 0
              end
              object me_embarcacao5: TMaskEdit
                Left = 6
                Top = 59
                Width = 477
                Height = 21
                TabOrder = 1
              end
              object Panel21: TPanel
                Left = 4
                Top = 84
                Width = 721
                Height = 105
                BorderStyle = bsSingle
                Color = clTeal
                TabOrder = 2
                object Label124: TLabel
                  Left = 4
                  Top = 15
                  Width = 26
                  Height = 13
                  Caption = 'Tipos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label125: TLabel
                  Left = 507
                  Top = 15
                  Width = 46
                  Height = 13
                  Caption = 'Utilização'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label126: TLabel
                  Left = 226
                  Top = 15
                  Width = 61
                  Height = 13
                  Caption = 'Identificação'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label127: TLabel
                  Left = 367
                  Top = 15
                  Width = 96
                  Height = 13
                  Caption = 'Identificação Master'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label128: TLabel
                  Left = 452
                  Top = 55
                  Width = 89
                  Height = 13
                  Caption = 'Data de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label129: TLabel
                  Left = 8
                  Top = 55
                  Width = 92
                  Height = 13
                  Caption = 'Local de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_local5: TMaskEdit
                  Left = 4
                  Top = 68
                  Width = 441
                  Height = 21
                  TabOrder = 4
                end
                object me_datatrans5: TMaskEdit
                  Left = 450
                  Top = 68
                  Width = 91
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 5
                  Text = '  /  /    '
                end
                object me_ident5: TMaskEdit
                  Left = 224
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 1
                end
                object me_master5: TMaskEdit
                  Left = 364
                  Top = 28
                  Width = 137
                  Height = 21
                  TabOrder = 2
                end
                object cb_tipodocs5: TComboBox
                  Left = 4
                  Top = 28
                  Width = 217
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 0
                  Items.Strings = (
                    '10 - B/L'
                    '12 - HOUSE B/L')
                end
                object cb_utilizacao6: TComboBox
                  Left = 503
                  Top = 28
                  Width = 211
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 3
                  Items.Strings = (
                    '1 - Total'
                    '2 - Parcial'
                    '3 - Mais de um')
                end
              end
              object b_gravalac: TBitBtn
                Left = 648
                Top = 192
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 3
                OnClick = b_gravalacClick
                Kind = bkOK
              end
            end
            object TS_meios: TTabSheet
              Caption = 'Meios Próprios'
              ImageIndex = 7
              object Panel22: TPanel
                Left = 156
                Top = 56
                Width = 369
                Height = 121
                Color = clTeal
                TabOrder = 0
                object Label131: TLabel
                  Left = 228
                  Top = 39
                  Width = 89
                  Height = 13
                  Caption = 'Data de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label132: TLabel
                  Left = 16
                  Top = 37
                  Width = 92
                  Height = 13
                  Caption = 'Local de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_datatrans6: TMaskEdit
                  Left = 228
                  Top = 53
                  Width = 93
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 1
                  Text = '  /  /    '
                end
                object me_local6: TMaskEdit
                  Left = 16
                  Top = 53
                  Width = 209
                  Height = 21
                  TabOrder = 0
                end
              end
              object b_gravamei: TBitBtn
                Left = 448
                Top = 184
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 1
                OnClick = b_gravameiClick
                Kind = bkOK
              end
            end
            object TS_ducto: TTabSheet
              Caption = 'Ducto'
              ImageIndex = 8
              object Panel23: TPanel
                Left = 156
                Top = 56
                Width = 369
                Height = 121
                Color = clTeal
                TabOrder = 0
                object Label130: TLabel
                  Left = 228
                  Top = 39
                  Width = 89
                  Height = 13
                  Caption = 'Data de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label133: TLabel
                  Left = 16
                  Top = 37
                  Width = 92
                  Height = 13
                  Caption = 'Local de Embarque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_datatrans7: TMaskEdit
                  Left = 228
                  Top = 53
                  Width = 93
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 1
                  Text = '  /  /    '
                end
                object me_local7: TMaskEdit
                  Left = 16
                  Top = 53
                  Width = 209
                  Height = 21
                  TabOrder = 0
                end
              end
              object b_gravaduc: TBitBtn
                Left = 448
                Top = 184
                Width = 75
                Height = 25
                Caption = '&Grava'
                TabOrder = 1
                OnClick = b_gravaducClick
                Kind = bkOK
              end
            end
          end
          object cb_multi: TCheckBox
            Left = 613
            Top = 7
            Width = 129
            Height = 17
            Caption = 'Transporte Multimodal'
            TabOrder = 1
            OnClick = cb_multiClick
          end
        end
        object TS_carga: TTabSheet
          Caption = 'Carga'
          ImageIndex = 1
          OnShow = ts_informaShow
          object PageControl7: TPageControl
            Left = 0
            Top = 0
            Width = 749
            Height = 353
            ActivePage = ts_informa
            Align = alClient
            TabOrder = 0
            object ts_informa: TTabSheet
              Caption = 'Informações'
              OnEnter = ts_informaShow
              OnShow = ts_informaShow
              object Panel26: TPanel
                Left = 0
                Top = 0
                Width = 741
                Height = 325
                Align = alClient
                Color = clTeal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Label55: TLabel
                  Left = 24
                  Top = 24
                  Width = 100
                  Height = 13
                  Caption = 'País de Procedência'
                end
                object Label62: TLabel
                  Left = 373
                  Top = 24
                  Width = 117
                  Height = 13
                  Caption = 'URF de Entrada no País'
                end
                object Label135: TLabel
                  Left = 23
                  Top = 69
                  Width = 84
                  Height = 13
                  Caption = 'Peso Líquido (kg)'
                end
                object Label134: TLabel
                  Left = 148
                  Top = 69
                  Width = 73
                  Height = 13
                  Caption = 'Peso Bruto (kg)'
                end
                object Label136: TLabel
                  Left = 275
                  Top = 69
                  Width = 103
                  Height = 13
                  Caption = 'Agente Transportador'
                end
                object Label213: TLabel
                  Left = 592
                  Top = 69
                  Width = 107
                  Height = 14
                  Caption = 'Valor VMLE Total (R$)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                end
                object cb_pais: TComboBox
                  Left = 24
                  Top = 40
                  Width = 337
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ItemHeight = 0
                  ParentFont = False
                  TabOrder = 0
                end
                object cb_urf: TComboBox
                  Left = 370
                  Top = 40
                  Width = 335
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ItemHeight = 0
                  ParentFont = False
                  TabOrder = 1
                end
                object me_pliquido: TMaskEdit
                  Left = 23
                  Top = 85
                  Width = 121
                  Height = 21
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object me_pbruto: TMaskEdit
                  Left = 147
                  Top = 85
                  Width = 121
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnExit = me_pbrutoExit
                end
                object me_agente: TMaskEdit
                  Left = 271
                  Top = 85
                  Width = 185
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object GB_frete: TGroupBox
                  Left = 24
                  Top = 110
                  Width = 681
                  Height = 81
                  Caption = ' Frete '
                  TabOrder = 4
                  object Label148: TLabel
                    Left = 19
                    Top = 28
                    Width = 33
                    Height = 13
                    Caption = 'Moeda'
                  end
                  object Label150: TLabel
                    Left = 219
                    Top = 28
                    Width = 63
                    Height = 13
                    Caption = 'Valor Prepaid'
                  end
                  object Label151: TLabel
                    Left = 327
                    Top = 28
                    Width = 59
                    Height = 13
                    Caption = 'Valor Collect'
                  end
                  object Label152: TLabel
                    Left = 438
                    Top = 28
                    Width = 113
                    Height = 13
                    Caption = 'Valor Território Nacional'
                  end
                  object Label212: TLabel
                    Left = 567
                    Top = 28
                    Width = 104
                    Height = 14
                    Caption = 'Valor Frete Total (R$)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                  end
                  object cb_moedasfrete: TComboBox
                    Left = 16
                    Top = 44
                    Width = 197
                    Height = 21
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ItemHeight = 0
                    ParentFont = False
                    TabOrder = 0
                    OnExit = me_prepaidChange
                  end
                  object me_prepaid: TMaskEdit
                    Left = 217
                    Top = 44
                    Width = 104
                    Height = 21
                    Anchors = [akTop, akRight]
                    BiDiMode = bdRightToLeft
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentBiDiMode = False
                    ParentFont = False
                    TabOrder = 1
                    Text = '0'
                    OnChange = me_prepaidChange
                    OnKeyPress = me_prepaidKeyPress
                  end
                  object me_collect: TMaskEdit
                    Left = 326
                    Top = 44
                    Width = 104
                    Height = 21
                    Anchors = [akTop, akRight]
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                    Text = '0'
                    OnChange = me_prepaidChange
                    OnKeyPress = me_collectKeyPress
                  end
                  object me_ternac: TMaskEdit
                    Left = 436
                    Top = 44
                    Width = 121
                    Height = 21
                    Anchors = [akTop, akRight]
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                    Text = '0'
                    OnChange = me_prepaidChange
                    OnKeyPress = me_ternacKeyPress
                  end
                  object me_fretetotal: TMaskEdit
                    Left = 565
                    Top = 44
                    Width = 104
                    Height = 21
                    Anchors = [akTop, akRight]
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 4
                    OnKeyPress = me_fretetotalKeyPress
                  end
                end
                object GB_seguro: TGroupBox
                  Left = 25
                  Top = 197
                  Width = 339
                  Height = 81
                  Caption = ' Seguro '
                  TabOrder = 5
                  object Label153: TLabel
                    Left = 11
                    Top = 28
                    Width = 33
                    Height = 13
                    Caption = 'Moeda'
                  end
                  object Label154: TLabel
                    Left = 211
                    Top = 28
                    Width = 75
                    Height = 13
                    Caption = 'Valor na Moeda'
                  end
                  object me_valseg: TMaskEdit
                    Left = 209
                    Top = 44
                    Width = 121
                    Height = 21
                    Anchors = [akTop, akRight]
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    Text = '0'
                    OnKeyPress = me_valsegKeyPress
                  end
                  object cb_moedasseguro: TComboBox
                    Left = 8
                    Top = 44
                    Width = 197
                    Height = 21
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ItemHeight = 0
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object b_gravainfo: TBitBtn
                  Left = 649
                  Top = 292
                  Width = 75
                  Height = 25
                  Caption = '&Grava'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnClick = b_gravainfoClick
                  Kind = bkOK
                end
                object GB_despfob: TGroupBox
                  Left = 369
                  Top = 197
                  Width = 357
                  Height = 81
                  Caption = ' Despesas até FOB '
                  Enabled = False
                  TabOrder = 6
                  object Label173: TLabel
                    Left = 19
                    Top = 28
                    Width = 33
                    Height = 13
                    Caption = 'Moeda'
                  end
                  object Label174: TLabel
                    Left = 219
                    Top = 28
                    Width = 75
                    Height = 13
                    Caption = 'Valor na Moeda'
                  end
                  object me_despfob: TMaskEdit
                    Left = 217
                    Top = 44
                    Width = 121
                    Height = 21
                    Anchors = [akTop, akRight]
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    Text = '0'
                    OnKeyPress = me_despfobKeyPress
                  end
                  object cb_moedasfob: TComboBox
                    Left = 16
                    Top = 44
                    Width = 197
                    Height = 21
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ItemHeight = 0
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object me_vmletotal: TMaskEdit
                  Left = 590
                  Top = 85
                  Width = 115
                  Height = 21
                  Anchors = [akTop, akRight]
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                end
              end
            end
            object ts_tipocarga: TTabSheet
              Caption = 'Tipo de Carga'
              ImageIndex = 1
              OnEnter = ts_tipocargaEnter
              OnShow = ts_tipocargaShow
              object Panel27: TPanel
                Left = 0
                Top = 0
                Width = 741
                Height = 325
                Align = alClient
                Color = clTeal
                TabOrder = 0
                object Label137: TLabel
                  Left = 8
                  Top = 24
                  Width = 33
                  Height = 13
                  Caption = 'Código'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label138: TLabel
                  Left = 8
                  Top = 80
                  Width = 67
                  Height = 13
                  Caption = 'Tipo de Carga'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label139: TLabel
                  Left = 8
                  Top = 136
                  Width = 27
                  Height = 13
                  Caption = 'Lacre'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object me_codcarga: TMaskEdit
                  Left = 8
                  Top = 40
                  Width = 121
                  Height = 21
                  TabOrder = 0
                  OnExit = me_codcargaExit
                end
                object cb_tipocarga: TComboBox
                  Left = 8
                  Top = 96
                  Width = 193
                  Height = 21
                  ItemHeight = 0
                  TabOrder = 1
                end
                object me_lacre: TMaskEdit
                  Left = 8
                  Top = 152
                  Width = 121
                  Height = 21
                  TabOrder = 2
                end
                object b_incluicarga: TBitBtn
                  Left = 124
                  Top = 196
                  Width = 75
                  Height = 25
                  Caption = '&Inclui'
                  Enabled = False
                  TabOrder = 3
                  OnClick = b_incluicargaClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    3333333333333333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333FF3333333333333003333
                    3333333333773FF3333333333309003333333333337F773FF333333333099900
                    33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
                    99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
                    33333333337F3F77333333333309003333333333337F77333333333333003333
                    3333333333773333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333333333333}
                  NumGlyphs = 2
                end
                object b_excluicarga: TBitBtn
                  Left = 124
                  Top = 228
                  Width = 75
                  Height = 25
                  Caption = '&Exclui'
                  Enabled = False
                  TabOrder = 4
                  OnClick = b_excluicargaClick
                  Kind = bkCancel
                end
                object DBG_tcargas: TDBGrid
                  Left = 208
                  Top = 16
                  Width = 529
                  Height = 297
                  DataSource = ds_qconcargas
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 5
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnCellClick = DBG_tcargasCellClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Codigo'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Descricao_tipo'
                      Title.Caption = 'Descrição'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Lacre'
                      Visible = True
                    end>
                end
              end
            end
            object ts_volumes: TTabSheet
              Caption = 'Volumes'
              ImageIndex = 2
              OnEnter = ts_volumesEnter
              OnShow = ts_volumesShow
              object Panel28: TPanel
                Left = 0
                Top = 0
                Width = 741
                Height = 325
                Align = alClient
                Color = clTeal
                TabOrder = 0
                object Label146: TLabel
                  Left = 8
                  Top = 24
                  Width = 94
                  Height = 13
                  Caption = 'Tipo de Embalagem'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label149: TLabel
                  Left = 8
                  Top = 72
                  Width = 55
                  Height = 13
                  Caption = 'Quantidade'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object cb_embalagem: TComboBox
                  Left = 8
                  Top = 40
                  Width = 233
                  Height = 21
                  ItemHeight = 0
                  TabOrder = 0
                  OnExit = cb_embalagemExit
                end
                object me_qembalagem: TMaskEdit
                  Left = 8
                  Top = 88
                  Width = 121
                  Height = 21
                  TabOrder = 1
                end
                object b_incluivol: TBitBtn
                  Left = 164
                  Top = 180
                  Width = 75
                  Height = 25
                  Caption = '&Inclui'
                  Enabled = False
                  TabOrder = 2
                  OnClick = b_incluivolClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000120B0000120B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    3333333333333333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333FF3333333333333003333
                    3333333333773FF3333333333309003333333333337F773FF333333333099900
                    33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
                    99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
                    33333333337F3F77333333333309003333333333337F77333333333333003333
                    3333333333773333333333333333333333333333333333333333333333333333
                    3333333333333333333333333333333333333333333333333333}
                  NumGlyphs = 2
                end
                object b_excluivol: TBitBtn
                  Left = 164
                  Top = 212
                  Width = 75
                  Height = 25
                  Caption = '&Exclui'
                  Enabled = False
                  TabOrder = 3
                  OnClick = b_excluivolClick
                  Kind = bkCancel
                end
                object DBG_embalagempro: TDBGrid
                  Left = 251
                  Top = 16
                  Width = 487
                  Height = 297
                  DataSource = ds_qembalagempro
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 4
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnCellClick = DBG_embalagemproCellClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DescricaoEmbalagem'
                      Title.Caption = 'Embalagem'
                      Width = 390
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Quantidade'
                      Width = 63
                      Visible = True
                    end>
                end
              end
            end
          end
        end
      end
    end
    object TS_tributacao: TTabSheet
      Caption = 'Tributação'
      Enabled = False
      ImageIndex = 11
      TabVisible = False
      OnShow = TS_tributacaoShow
      object Panel30: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        TabOrder = 0
        object Label164: TLabel
          Left = 1
          Top = 1
          Width = 763
          Height = 20
          Align = alTop
          Alignment = taRightJustify
          Caption = 'Itens de Faturas do Processo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label165: TLabel
          Left = 258
          Top = 212
          Width = 246
          Height = 20
          Alignment = taCenter
          Caption = 'Tributação por Itens de Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sb_ncm: TSpeedButton
          Left = 167
          Top = 2
          Width = 23
          Height = 22
          Hint = 'Ordena por NCM'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
            33333333373F33333333333330B03333333333337F7F33333333333330F03333
            333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
            333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
            333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
            3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
            33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
            33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
            03333337777777F7F33333330000000003333337777777773333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sb_ncmClick
        end
        object sb_pag: TSpeedButton
          Left = 111
          Top = 2
          Width = 23
          Height = 22
          Hint = 'Ordena por Página da Fatura'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
            33333333373F33333333333330B03333333333337F7F33333333333330F03333
            333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
            333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
            333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
            3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
            33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
            33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
            03333337777777F7F33333330000000003333337777777773333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sb_pagClick
        end
        object sb_seq: TSpeedButton
          Left = 139
          Top = 2
          Width = 23
          Height = 22
          Hint = 'Ordena por Sequencial da Fatura'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
            33333333373F33333333333330B03333333333337F7F33333333333330F03333
            333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
            333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
            333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
            3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
            33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
            33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
            03333337777777F7F33333330000000003333337777777773333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sb_seqClick
        end
        object sb_val: TSpeedButton
          Left = 303
          Top = 0
          Width = 23
          Height = 22
          Hint = 'Ordena por Valor Unitário do Item'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
            33333333373F33333333333330B03333333333337F7F33333333333330F03333
            333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
            333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
            333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
            3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
            33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
            33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
            03333337777777F7F33333330000000003333337777777773333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sb_valClick
        end
        object b_incluitrib: TBitBtn
          Left = 687
          Top = 209
          Width = 75
          Height = 25
          Caption = '&Inclui'
          TabOrder = 3
          OnClick = b_incluitribClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337F33333333333333033333333333333373F333333333333090333
            33333333337F7F33333333333309033333333333337373F33333333330999033
            3333333337F337F33333333330999033333333333733373F3333333309999903
            333333337F33337F33333333099999033333333373333373F333333099999990
            33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
            33333333337F7F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333300033333333333337773333333}
          NumGlyphs = 2
        end
        object DBG_tributositem: TDBGrid
          Left = 1
          Top = 237
          Width = 763
          Height = 122
          Color = clWhite
          DataSource = ds_qtributoitem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBG_tributositemCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Fatura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sequencial_Item'
              Title.Caption = 'Seq Fat'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sequencial'
              Title.Caption = 'Seq Trib.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantidade'
              Title.Caption = 'Qtd.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Certificado_Origem'
              Title.Caption = 'Certific.Origem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ato_Concessorio'
              Title.Caption = 'Ato Concessório'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CD_TIPO_ACORDO_TAR'
              Title.Caption = 'Tipo Acordo Aladi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACORDO_ALADI'
              Title.Caption = 'Acordo Aladi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALIQUOTA_ALADI'
              Title.Caption = 'Alíquota Aladi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Regime_Tributacao_II'
              Title.Caption = 'Reg.Tributação II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fundamento_Legal_II'
              Title.Caption = 'Fund. Legal II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero_Ato_Legal_II'
              Title.Caption = 'Número Ato Legal II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Regime_Tributacao_IPI'
              Title.Caption = 'Reg.Tributação IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero_Ato_Legal_IPI'
              Title.Caption = 'Número Ato Legal IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percentual_Reducao_II'
              Title.Caption = '% Redução II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percentual_Reduca_IPI'
              Title.Caption = '% Redução IPI'
              Visible = True
            end>
        end
        object b_excluitrib: TBitBtn
          Left = 592
          Top = 365
          Width = 169
          Height = 25
          Caption = '&Exclui Tributação'
          Enabled = False
          TabOrder = 2
          OnClick = b_excluitribClick
          Kind = bkCancel
        end
        object DBG_itenstributaveis: TDBGrid
          Left = 1
          Top = 21
          Width = 763
          Height = 184
          Align = alTop
          Color = clWhite
          DataSource = ds_qitenstributaveis
          DragCursor = crDefault
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBG_itenstributaveisDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Fatura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pagina'
              Title.Caption = 'Pag.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sequencial'
              Title.Caption = 'Seq'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo_Tributavel'
              Title.Caption = 'Saldo Tributável'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor Unitário'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao_Produto'
              Title.Caption = 'Descrição'
              Visible = True
            end>
        end
        object P_tributacao: TPanel
          Left = 28
          Top = 36
          Width = 713
          Height = 357
          Color = clSilver
          TabOrder = 1
          Visible = False
          object Label162: TLabel
            Left = 8
            Top = 3
            Width = 86
            Height = 20
            Caption = 'Tributação'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label163: TLabel
            Left = 361
            Top = 275
            Width = 55
            Height = 13
            Caption = 'Quantidade'
          end
          object Label184: TLabel
            Left = 361
            Top = 27
            Width = 87
            Height = 13
            Caption = 'Método Valoração'
          end
          object me_quantrib: TMaskEdit
            Left = 361
            Top = 288
            Width = 79
            Height = 21
            TabOrder = 3
            OnExit = me_quantribExit
          end
          object GroupBox4: TGroupBox
            Left = 9
            Top = 21
            Width = 344
            Height = 236
            Caption = 'I.I.'
            TabOrder = 0
            object Label175: TLabel
              Left = 6
              Top = 12
              Width = 90
              Height = 13
              Caption = 'Regime Tributação'
            end
            object Label176: TLabel
              Left = 6
              Top = 48
              Width = 88
              Height = 13
              Caption = 'Fundamento Legal'
            end
            object Label180: TLabel
              Left = -241
              Top = 204
              Width = 60
              Height = 13
              Caption = 'Nº Ato Legal'
            end
            object Label158: TLabel
              Left = 9
              Top = 160
              Width = 77
              Height = 13
              Caption = 'Ato Concessório'
            end
            object Label166: TLabel
              Left = 7
              Top = 123
              Width = 60
              Height = 13
              Caption = 'Nº Ato Legal'
            end
            object Label168: TLabel
              Left = 109
              Top = 124
              Width = 55
              Height = 13
              Caption = '% Redução'
            end
            object Label182: TLabel
              Left = 8
              Top = 85
              Width = 136
              Height = 13
              Caption = 'Motivo Admissão Temporária'
            end
            object Label75: TLabel
              Left = 175
              Top = 124
              Width = 25
              Height = 13
              Caption = '% EX'
            end
            object Label235: TLabel
              Left = 9
              Top = 196
              Width = 169
              Height = 13
              Caption = 'Sub Contratada do Ato Concessório'
            end
            object Label283: TLabel
              Left = 243
              Top = 124
              Width = 92
              Height = 13
              Caption = 'Prazo Permanência'
            end
            object Label284: TLabel
              Left = 291
              Top = 144
              Width = 36
              Height = 13
              Caption = 'mes(es)'
            end
            object cb_regtrib1: TComboBox
              Left = 6
              Top = 25
              Width = 334
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              OnChange = cb_regtrib1Change
              Items.Strings = (
                '1 RECOLHIMENTO INTEGRAL'
                '9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 150/99 art 7º)'
                '2 IMUNIDADE'
                '3 ISENÇÃO'
                '4 REDUÇÃO'
                '5 SUSPENSÃO'
                '6 NÃO INCIDÊNCIA'
                '7 TRIBUTAÇÃO SIMPLIFICADA'
                '8 TRIBUTAÇÃO SIMPLIFICADA DE BAGAGEM')
            end
            object cb_fundale: TComboBox
              Left = 7
              Top = 61
              Width = 332
              Height = 21
              ItemHeight = 0
              TabOrder = 1
            end
            object cb_atolegalii: TComboBox
              Left = -241
              Top = 216
              Width = 145
              Height = 21
              ItemHeight = 0
              TabOrder = 6
            end
            object me_atoconce: TMaskEdit
              Left = 116
              Top = 168
              Width = 97
              Height = 21
              TabOrder = 5
              Visible = False
            end
            object cb_atoii: TComboBox
              Left = 7
              Top = 136
              Width = 98
              Height = 21
              ItemHeight = 0
              TabOrder = 3
            end
            object me_perccorII: TMaskEdit
              Left = 107
              Top = 136
              Width = 62
              Height = 21
              TabOrder = 4
              Text = '0'
            end
            object cb_motadmtemp: TComboBox
              Left = 7
              Top = 99
              Width = 332
              Height = 21
              ItemHeight = 0
              TabOrder = 2
            end
            object me_percex: TMaskEdit
              Left = 173
              Top = 136
              Width = 64
              Height = 21
              TabOrder = 7
            end
            object cb_atoconce: TComboBox
              Left = 7
              Top = 173
              Width = 330
              Height = 21
              ItemHeight = 0
              TabOrder = 8
              OnChange = cb_atoconceChange
            end
            object cb_sub: TComboBox
              Left = 7
              Top = 209
              Width = 330
              Height = 21
              ItemHeight = 0
              TabOrder = 9
            end
            object me_sub: TMaskEdit
              Left = 208
              Top = 200
              Width = 97
              Height = 21
              TabOrder = 10
              Visible = False
            end
            object me_prazo: TMaskEdit
              Left = 241
              Top = 136
              Width = 48
              Height = 21
              Enabled = False
              TabOrder = 11
            end
          end
          object GroupBox5: TGroupBox
            Left = 9
            Top = 256
            Width = 344
            Height = 89
            Caption = 'IPI'
            TabOrder = 1
            object Label177: TLabel
              Left = 6
              Top = 11
              Width = 90
              Height = 13
              Caption = 'Regime Tributação'
            end
            object Label183: TLabel
              Left = 4
              Top = 48
              Width = 60
              Height = 13
              Caption = 'Nº Ato Legal'
            end
            object Label169: TLabel
              Left = 108
              Top = 48
              Width = 70
              Height = 13
              Caption = '% de Redução'
            end
            object cb_regtrib2: TComboBox
              Left = 4
              Top = 24
              Width = 335
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              Items.Strings = (
                '4 RECOLHIMENTO INTEGRAL'
                '9 RECOLHIMENTO INTEGRAL (Alíq. Reduzida IN 150/99 art 7º)'
                '2 REDUÇÃO'
                '5 SUSPENSÃO'
                '1 ISENÇÃO'
                '3 NÃO TRIBUTÁVEL')
            end
            object cb_atoipi: TComboBox
              Left = 4
              Top = 61
              Width = 101
              Height = 21
              ItemHeight = 0
              TabOrder = 1
            end
            object me_perccoripi: TMaskEdit
              Left = 107
              Top = 61
              Width = 74
              Height = 21
              TabOrder = 2
              Text = '0'
            end
          end
          object B_aplica: TBitBtn
            Left = 622
            Top = 316
            Width = 75
            Height = 27
            Caption = '&Aplica'
            TabOrder = 4
            OnClick = B_aplicaClick
            Kind = bkOK
          end
          object GroupBox3: TGroupBox
            Left = 358
            Top = 94
            Width = 347
            Height = 177
            Caption = 'Acordo Tarifário'
            TabOrder = 2
            object Label157: TLabel
              Left = 10
              Top = 134
              Width = 101
              Height = 13
              Caption = 'Certificado de Origem'
            end
            object Label159: TLabel
              Left = 7
              Top = 14
              Width = 58
              Height = 13
              Caption = 'Tipo Acordo'
            end
            object Label160: TLabel
              Left = 7
              Top = 55
              Width = 68
              Height = 13
              Caption = 'Acordo ALADI'
            end
            object Label161: TLabel
              Left = 7
              Top = 95
              Width = 60
              Height = 13
              Caption = 'Nº Ato Legal'
            end
            object Label167: TLabel
              Left = 101
              Top = 94
              Width = 95
              Height = 13
              Caption = 'Redução Acordo(%)'
            end
            object me_certificado: TMaskEdit
              Left = 8
              Top = 147
              Width = 121
              Height = 21
              TabOrder = 3
            end
            object cb_tipoacordo: TComboBox
              Left = 5
              Top = 27
              Width = 338
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              Items.Strings = (
                '2 - ALADI'
                '3 - OMC'
                '4 - SGPC')
            end
            object cb_acordoaladi: TComboBox
              Left = 5
              Top = 67
              Width = 338
              Height = 21
              ItemHeight = 0
              TabOrder = 1
            end
            object cb_atoaladi: TComboBox
              Left = 6
              Top = 107
              Width = 91
              Height = 21
              ItemHeight = 0
              TabOrder = 4
            end
            object me_aliquotaacordo: TMaskEdit
              Left = 99
              Top = 107
              Width = 97
              Height = 21
              TabOrder = 2
              Text = '0'
            end
          end
          object b_cancelaapli: TBitBtn
            Left = 539
            Top = 318
            Width = 75
            Height = 25
            Caption = '&Cancela'
            TabOrder = 5
            OnClick = b_cancelaapliClick
            Kind = bkCancel
          end
          object cb_bemencomenda: TCheckBox
            Left = 359
            Top = 72
            Width = 121
            Height = 17
            Caption = 'Bem sob Encomenda'
            TabOrder = 6
          end
          object cb_materialusado: TCheckBox
            Left = 543
            Top = 72
            Width = 121
            Height = 17
            Caption = 'Material Usado'
            TabOrder = 7
          end
          object cb_valoracao: TComboBox
            Left = 360
            Top = 40
            Width = 177
            Height = 21
            ItemHeight = 0
            TabOrder = 8
          end
          object rg_aplicacao: TRadioGroup
            Left = 540
            Top = 25
            Width = 161
            Height = 44
            Caption = 'Aplicação Mercadoria'
            Columns = 2
            ItemIndex = 2
            Items.Strings = (
              'Consumo'
              'Revenda'
              'Não usar')
            TabOrder = 9
          end
        end
      end
    end
    object ts_RCR: TTabSheet
      Caption = 'RCR'
      Enabled = False
      ImageIndex = 12
      TabVisible = False
      OnShow = ts_RCRShow
      object p_rcr: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        Enabled = False
        TabOrder = 0
        object Shape1: TShape
          Left = 24
          Top = 36
          Width = 721
          Height = 333
          Brush.Color = clTeal
          Pen.Color = clWhite
        end
        object Label189: TLabel
          Left = 104
          Top = 11
          Width = 581
          Height = 20
          Alignment = taCenter
          Caption = 'RCR - Requerimento de Concessão do Regime de Admissão Temporária'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label190: TLabel
          Left = 49
          Top = 94
          Width = 63
          Height = 13
          Caption = 'Número RCR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label191: TLabel
          Left = 175
          Top = 94
          Width = 63
          Height = 13
          Caption = 'Data Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label192: TLabel
          Left = 249
          Top = 94
          Width = 78
          Height = 13
          Caption = 'Data Aprovação'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label193: TLabel
          Left = 336
          Top = 94
          Width = 128
          Height = 13
          Caption = 'Fundamentação do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label225: TLabel
          Left = 49
          Top = 146
          Width = 171
          Height = 13
          Caption = 'Identificação do Meio de Transporte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label272: TLabel
          Left = 49
          Top = 254
          Width = 176
          Height = 13
          Caption = 'Destinatário da Relação de Consumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object b_imprime: TBitBtn
          Left = 600
          Top = 304
          Width = 119
          Height = 25
          Caption = '&Imprime RCR'
          TabOrder = 0
          OnClick = b_imprimeClick
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
        object b_gravaRCR: TBitBtn
          Left = 648
          Top = 168
          Width = 75
          Height = 25
          Caption = '&Grava'
          TabOrder = 1
          OnClick = b_gravaRCRClick
          Kind = bkOK
        end
        object me_numerorcr: TMaskEdit
          Left = 48
          Top = 108
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object me_dataentradarcr: TMaskEdit
          Left = 172
          Top = 108
          Width = 73
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 3
          Text = '  /  /    '
        end
        object me_dataaprova: TMaskEdit
          Left = 248
          Top = 108
          Width = 81
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 4
          Text = '  /  /    '
        end
        object cb_funda: TComboBox
          Left = 332
          Top = 108
          Width = 385
          Height = 21
          ItemHeight = 0
          TabOrder = 5
        end
        object me_transp1: TMaskEdit
          Left = 48
          Top = 160
          Width = 553
          Height = 21
          TabOrder = 6
        end
        object me_transp2: TMaskEdit
          Left = 48
          Top = 184
          Width = 553
          Height = 21
          TabOrder = 7
        end
      end
      object b_imprimerelconsumo: TBitBtn
        Left = 48
        Top = 300
        Width = 181
        Height = 25
        Caption = '&Imprime Relação de Consumo'
        TabOrder = 1
        OnClick = b_imprimerelconsumoClick
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
      object me_destcon: TMaskEdit
        Left = 48
        Top = 268
        Width = 501
        Height = 21
        TabOrder = 2
        Text = 'A ALFÂNDEGA DO PORTO DE SEPETIBA'
      end
    end
    object TS_lilsi: TTabSheet
      Caption = 'LI / LSI'
      Enabled = False
      ImageIndex = 7
      TabVisible = False
    end
    object TS_numerario: TTabSheet
      Caption = 'Numerário'
      Enabled = False
      ImageIndex = 3
      TabVisible = False
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        TabOrder = 0
        object Label226: TLabel
          Left = 396
          Top = 200
          Width = 68
          Height = 13
          Caption = 'Valor Previsão'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label227: TLabel
          Left = 276
          Top = 200
          Width = 67
          Height = 13
          Caption = 'Data Previsão'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label228: TLabel
          Left = 12
          Top = 200
          Width = 48
          Height = 13
          Caption = 'Numerário'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label229: TLabel
          Left = 508
          Top = 200
          Width = 48
          Height = 13
          Caption = 'Data Real'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label230: TLabel
          Left = 628
          Top = 200
          Width = 49
          Height = 13
          Caption = 'Valor Real'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label231: TLabel
          Left = 432
          Top = 235
          Width = 92
          Height = 13
          Caption = 'Valor Total Previsto'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label232: TLabel
          Left = 560
          Top = 235
          Width = 101
          Height = 13
          Caption = 'Valor Total Realizado'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBG_numerarios: TDBGrid
          Left = 12
          Top = 5
          Width = 740
          Height = 192
          Hint = 'Duplo click para marcar previsão como "SIM" ou "NÃO"'
          DataSource = ds_numerarios
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBG_numerariosDblClick
          OnKeyPress = DBG_numerariosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'Numerario'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Previsao'
              Title.Caption = 'Data Previsão'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Previsao'
              Title.Caption = 'Valor Previsão'
              Width = 88
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
              PickList.Strings = (
                'NÃO'
                'SIM')
              Title.Caption = 'Previsão Solicitada'
              Width = 100
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
              Title.Caption = 'Liberação Financeiro'
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Registro'
              Title.Caption = 'Data Real'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Registrado'
              Title.Caption = 'Valor Real'
              Width = 82
              Visible = True
            end>
        end
        object DBEdit1: TDBEdit
          Left = 392
          Top = 213
          Width = 105
          Height = 21
          DataField = 'Valor_Previsao'
          DataSource = ds_numerarios
          TabOrder = 3
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 276
          Top = 213
          Width = 112
          Height = 21
          DataField = 'Data_Previsao'
          DataSource = ds_numerarios
          TabOrder = 2
        end
        object b_incluinum: TBitBtn
          Left = 125
          Top = 246
          Width = 85
          Height = 25
          Hint = 'Inclui novo produto'
          Caption = '&Novo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = b_incluinumClick
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
        object b_excluipro: TBitBtn
          Left = 214
          Top = 246
          Width = 85
          Height = 25
          Hint = 'Exclui produto selecionado'
          Caption = '&Exclui'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = b_excluiproClick
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
        object b_gravanum: TBitBtn
          Left = 305
          Top = 246
          Width = 85
          Height = 25
          Hint = 'Localiza produto por código ou descrição'
          Caption = '&Grava'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = b_gravanumClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888880000000000000880330000008803088033000000880308803300000088
            0308803300000000030880333333333333088033000000003308803088888888
            0308803088888888030880308888888803088030888888880308803088888888
            0008803088888888080880000000000000088888888888888888}
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 12
          Top = 213
          Width = 257
          Height = 21
          DataField = 'Numerario'
          DataSource = ds_numerarios
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = ds_tiposnumerario
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 508
          Top = 213
          Width = 112
          Height = 21
          DataField = 'Data_Registro'
          DataSource = ds_numerarios
          Enabled = False
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 624
          Top = 213
          Width = 105
          Height = 21
          DataField = 'Valor_Registrado'
          DataSource = ds_numerarios
          Enabled = False
          TabOrder = 5
          OnExit = DBEdit4Exit
          OnKeyPress = DBEdit4KeyPress
        end
        object me_vprevisao: TMaskEdit
          Left = 428
          Top = 248
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 9
        end
        object me_vreal: TMaskEdit
          Left = 556
          Top = 248
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 10
        end
        object Panel13: TPanel
          Left = 124
          Top = 273
          Width = 597
          Height = 128
          TabOrder = 11
          object Label236: TLabel
            Left = 1
            Top = 1
            Width = 135
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Solicitação da Previsão'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object b_impfax: TBitBtn
            Left = 526
            Top = 99
            Width = 67
            Height = 25
            Caption = 'Fax'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = b_impfaxClick
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
          object b_impemail: TBitBtn
            Left = 454
            Top = 99
            Width = 67
            Height = 25
            Caption = 'Email'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = b_impemailClick
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
          object Panel32: TPanel
            Left = 313
            Top = 14
            Width = 280
            Height = 75
            TabOrder = 2
            object Label257: TLabel
              Left = 4
              Top = 27
              Width = 49
              Height = 13
              Caption = 'Solicitante'
              FocusControl = DBEdit26
            end
            object Label258: TLabel
              Left = 4
              Top = 51
              Width = 25
              Height = 13
              Caption = 'Email'
              FocusControl = DBEdit27
            end
            object Panel33: TPanel
              Left = 1
              Top = 1
              Width = 278
              Height = 16
              Align = alTop
              Caption = 'DE'
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit26: TDBEdit
              Left = 60
              Top = 23
              Width = 205
              Height = 21
              DataField = 'Nome_Completo'
              DataSource = ds_usuarios
              Enabled = False
              TabOrder = 0
            end
            object DBEdit27: TDBEdit
              Left = 60
              Top = 47
              Width = 205
              Height = 21
              DataField = 'Email'
              DataSource = ds_usuarios
              TabOrder = 1
              OnChange = DBEdit28Change
              OnEnter = DBEdit28Change
              OnExit = DBEdit27Exit
            end
          end
          object Panel34: TPanel
            Left = 1
            Top = 14
            Width = 312
            Height = 112
            TabOrder = 3
            object Label259: TLabel
              Left = 4
              Top = 30
              Width = 37
              Height = 13
              Caption = 'Contato'
              FocusControl = DBEdit28
            end
            object Label260: TLabel
              Left = 4
              Top = 52
              Width = 25
              Height = 13
              Caption = 'Email'
              FocusControl = DBEdit29
            end
            object Label256: TLabel
              Left = 4
              Top = 93
              Width = 51
              Height = 13
              Caption = 'Com Cópia'
              FocusControl = DBEdit25
            end
            object Label234: TLabel
              Left = 4
              Top = 73
              Width = 17
              Height = 13
              Caption = 'Fax'
              FocusControl = DBEdit6
            end
            object Panel35: TPanel
              Left = 1
              Top = 1
              Width = 310
              Height = 16
              Align = alTop
              Caption = 'PARA'
              Color = clMaroon
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit28: TDBEdit
              Left = 63
              Top = 23
              Width = 242
              Height = 21
              DataField = 'Contato_Numerario'
              DataSource = ds_contatosimp
              TabOrder = 0
              OnChange = DBEdit28Change
              OnEnter = DBEdit28Change
            end
            object DBEdit29: TDBEdit
              Left = 63
              Top = 43
              Width = 242
              Height = 21
              DataField = 'Email_Numerario'
              DataSource = ds_contatosimp
              TabOrder = 1
              OnEnter = DBEdit28Change
            end
            object DBEdit25: TDBEdit
              Left = 63
              Top = 86
              Width = 242
              Height = 21
              DataField = 'CC_Email'
              DataSource = ds_contatosimp
              TabOrder = 3
              OnChange = DBEdit28Change
              OnEnter = DBEdit28Change
            end
            object DBEdit6: TDBEdit
              Left = 63
              Top = 64
              Width = 113
              Height = 21
              DataField = 'Fax_Numerario'
              DataSource = ds_contatosimp
              TabOrder = 2
              OnChange = DBEdit28Change
              OnEnter = DBEdit28Change
            end
          end
        end
        object p_email: TPanel
          Left = 12
          Top = 4
          Width = 741
          Height = 397
          TabOrder = 12
          Visible = False
          OnExit = b_cancelaemailClick
          object Label233: TLabel
            Left = 1
            Top = 1
            Width = 140
            Height = 16
            Align = alTop
            Alignment = taCenter
            Caption = 'Verifique seu EMAIL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Memo_email: TMemo
            Left = 8
            Top = 21
            Width = 729
            Height = 324
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object b_envia: TBitBtn
            Left = 661
            Top = 356
            Width = 75
            Height = 25
            Caption = 'Envia'
            TabOrder = 1
            OnClick = b_enviaClick
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
          object b_cancelaemail: TBitBtn
            Left = 581
            Top = 356
            Width = 75
            Height = 25
            Caption = 'Cancela'
            TabOrder = 2
            OnClick = b_cancelaemailClick
            Kind = bkCancel
          end
        end
      end
    end
    object TS_registro: TTabSheet
      Caption = 'Reg.Chegada'
      Enabled = False
      ImageIndex = 6
      TabVisible = False
      OnEnter = TS_registroEnter
      OnShow = TS_registroShow
      object Panel29: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label145: TLabel
          Left = 21
          Top = 176
          Width = 43
          Height = 13
          Caption = 'Armazem'
        end
        object Label142: TLabel
          Left = 21
          Top = 120
          Width = 119
          Height = 13
          Caption = 'Setor de Armazenamento'
        end
        object Label141: TLabel
          Left = 21
          Top = 72
          Width = 100
          Height = 13
          Caption = 'Recinto Alfandegado'
        end
        object Label140: TLabel
          Left = 21
          Top = 24
          Width = 89
          Height = 13
          Caption = 'URF de Despacho'
        end
        object Label143: TLabel
          Left = 389
          Top = 74
          Width = 121
          Height = 13
          Caption = 'Documentos de Chegada'
        end
        object Label144: TLabel
          Left = 389
          Top = 122
          Width = 61
          Height = 13
          Caption = 'Identificação'
        end
        object Label156: TLabel
          Left = 517
          Top = 122
          Width = 142
          Height = 13
          Caption = 'Código de Presença de Carga'
        end
        object Label178: TLabel
          Left = 389
          Top = 24
          Width = 179
          Height = 13
          Caption = 'Data de Chegada na URF de Entrada'
        end
        object Label179: TLabel
          Left = 390
          Top = 176
          Width = 191
          Height = 13
          Caption = 'Data de Chegada na URF de Despacho'
        end
        object rg_contratante: TRadioGroup
          Left = 392
          Top = 256
          Width = 337
          Height = 81
          Caption = 'Contratante da Operação Cambial'
          Items.Strings = (
            'Próprio Importador'
            'Outro')
          TabOrder = 11
          OnClick = rg_contratanteClick
        end
        object me_contratante: TMaskEdit
          Left = 451
          Top = 304
          Width = 161
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object b_gravaregis: TBitBtn
          Left = 680
          Top = 360
          Width = 75
          Height = 25
          Caption = '&Grava'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = b_gravaregisClick
          Kind = bkOK
        end
        object cb_fundap: TCheckBox
          Left = 388
          Top = 224
          Width = 125
          Height = 17
          Caption = 'Operação FUNDAP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object DBG_armazem: TDBGrid
          Left = 100
          Top = 224
          Width = 253
          Height = 113
          DataSource = ds_qarmazempro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBG_armazemCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome_Armazem'
              Title.Caption = 'Armazem'
              Visible = True
            end>
        end
        object b_excluiarm: TBitBtn
          Left = 20
          Top = 308
          Width = 75
          Height = 25
          Caption = '&Exclui'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = b_excluiarmClick
          Kind = bkCancel
        end
        object b_incluiarm: TBitBtn
          Left = 20
          Top = 276
          Width = 75
          Height = 25
          Caption = '&Inclui'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = b_incluiarmClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333FF3333333333333003333
            3333333333773FF3333333333309003333333333337F773FF333333333099900
            33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
            99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
            33333333337F3F77333333333309003333333333337F77333333333333003333
            3333333333773333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object cb_armazem: TComboBox
          Left = 18
          Top = 192
          Width = 335
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 3
          OnChange = cb_armazemChange
        end
        object cb_setor: TComboBox
          Left = 18
          Top = 136
          Width = 335
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
        end
        object cb_recinto: TComboBox
          Left = 18
          Top = 88
          Width = 335
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 1
          OnChange = cb_recintoChange
          OnClick = cb_recintoChange
        end
        object cb_docschegada: TComboBox
          Left = 386
          Top = 90
          Width = 335
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 8
          Items.Strings = (
            '1  - Manifesto de Carga'
            '2  - Termo de Entrada'
            '3  - DTA'
            '4  - MIC/DTA')
        end
        object me_identificacao: TMaskEdit
          Left = 387
          Top = 138
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object cb_urfdespacho: TComboBox
          Left = 18
          Top = 40
          Width = 335
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 0
          OnChange = cb_urfdespachoChange
          OnClick = cb_urfdespachoChange
        end
        object me_codpresenca: TMaskEdit
          Left = 515
          Top = 138
          Width = 206
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object me_dtorigem: TMaskEdit
          Left = 384
          Top = 40
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object me_dtdespacho: TMaskEdit
          Left = 387
          Top = 192
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
      end
    end
    object TS_di: TTabSheet
      Caption = 'DI / DSI'
      Enabled = False
      ImageIndex = 8
      TabVisible = False
      OnExit = TS_diExit
      OnShow = TS_diShow
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        TabOrder = 0
        object Label181: TLabel
          Left = 1
          Top = 1
          Width = 763
          Height = 20
          Align = alTop
          Alignment = taCenter
          Caption = 'Adições do Processo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBG_adicoes: TDBGrid
          Left = 1
          Top = 21
          Width = 763
          Height = 120
          Align = alTop
          DataSource = ds_qadicoes
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NR_DECL_IMP_MICRO'
              Title.Caption = 'DI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Adicao'
              Title.Caption = 'Adição'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'URF_chegada'
              Title.Caption = 'URF Chegada'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Via'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Multimodal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Razão Social'
              Title.Caption = 'Razão Social - Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Endereço'
              Title.Caption = 'Endereço - Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Número'
              Title.Caption = 'Número - Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Complemento'
              Title.Caption = 'Complemento - Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cidade'
              Title.Caption = 'Cidade - Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Estado'
              Title.Caption = 'Estado - Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'País'
              Title.Caption = 'País - Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pais_Procedencia'
              Title.Caption = 'Pais Procedencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABNOME'
              Title.Caption = 'Razão Social - Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABEND'
              Title.Caption = 'Endereço - Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABNUM'
              Title.Caption = 'Número - Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABCOMP'
              Title.Caption = 'Complemento - Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABCID'
              Title.Caption = 'Cidade - Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABEST'
              Title.Caption = 'Estado - Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABPAI'
              Title.Caption = 'País - Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NBM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NALADI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Peso_Total_Acertado'
              Title.Caption = 'Peso Total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SomaDeQuantidade'
              Title.Caption = 'Quantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CD_APLICACAO_MERC'
              Title.Caption = 'Aplicação'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'moeda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'incoterm'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Condição'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_aduaneiro'
              Title.Caption = 'Valor  Aduaneiro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Frete'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SomaDeRateio_Seguro'
              Title.Caption = 'Seguro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CD_METOD_VALORACAO'
              Title.Caption = 'Valoração'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CD_TIPO_ACORDO_TAR'
              Title.Caption = 'Tipo Acordo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACORDO_ALADI'
              Title.Caption = 'Acordo Aladi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Regime_Tributacao_II'
              Title.Caption = 'Regime Tributação II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fundamento_Legal_II'
              Title.Caption = 'Fundamento Legal II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Motivo_Adm_Temp'
              Title.Caption = 'Motivo Adm.Temp.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero_Ato_Legal_II'
              Title.Caption = 'Numero Ato Legal II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percentual_Reducao_II'
              Title.Caption = 'Percentual Redução II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cobertura Cambial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Modalidade de Pagamento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Instituicao Financiadora'
              Title.Caption = 'Instituição Financiadora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Motivo Sem Cobertura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero de parcelas'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Periodicidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Indicador Periodicidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Taxa de Juros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ROF BACEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Codigo Taxa de Juros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IN_BEM_ENCOMENDA'
              Title.Caption = 'Bem Encomenda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IN_MATERIAL_USADO'
              Title.Caption = 'Material Usado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VMLE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Base_Calc_ii'
              Title.Caption = 'Base Calc II'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Certificado_Origem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ato_Concessorio'
              Title.Caption = 'Ato Concessorio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALIQUOTA_ALADI'
              Title.Caption = 'Aliquota Aladi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Regime_Tributacao_IPI'
              Title.Caption = 'Regime Tributaçã IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero_Ato_Legal_IPI'
              Title.Caption = 'Número Ato Legal IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percentual_Reduca_IPI'
              Title.Caption = 'Percentual Redução IPI'
              Visible = True
            end>
        end
        object PageControl8: TPageControl
          Left = 1
          Top = 141
          Width = 763
          Height = 220
          ActivePage = TS_detalhe
          TabOrder = 1
          object TS_detalhe: TTabSheet
            Caption = 'Detalhes das  Mercadorias'
            object dbg_detahes: TDBGrid
              Left = 0
              Top = 0
              Width = 755
              Height = 192
              Align = alClient
              DataSource = ds_qdetalhe_adicao
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Produto'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Quantidade'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Descricao_Produto'
                  Width = 400
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Fatura'
                  Width = 44
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Pagina'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Sequencial'
                  Visible = True
                end>
            end
          end
        end
        object b_atualizasiscomex: TBitBtn
          Left = 580
          Top = 366
          Width = 181
          Height = 25
          Caption = '&Atualiza Siscomex - REGISTRO'
          Enabled = False
          TabOrder = 2
          OnClick = b_atualizasiscomexClick
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
        object b_atualizasiscomexa: TBitBtn
          Left = 392
          Top = 366
          Width = 181
          Height = 25
          Caption = 'Atualiza Siscomex - ANÁLISE'
          Enabled = False
          TabOrder = 3
          OnClick = b_atualizasiscomexClick
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
      end
    end
    object ts_tr: TTabSheet
      Caption = 'TR'
      Enabled = False
      ImageIndex = 13
      TabVisible = False
      OnShow = ts_trShow
      object p_tr: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        Enabled = False
        TabOrder = 0
        object Shape2: TShape
          Left = 24
          Top = 24
          Width = 721
          Height = 361
          Brush.Color = clTeal
          Pen.Color = clWhite
        end
        object Label194: TLabel
          Left = 248
          Top = 3
          Width = 263
          Height = 20
          Alignment = taCenter
          Caption = 'TR - Termo de Responsabilidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label195: TLabel
          Left = 49
          Top = 34
          Width = 55
          Height = 13
          Caption = 'Número TR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label196: TLabel
          Left = 159
          Top = 34
          Width = 63
          Height = 13
          Caption = 'Data Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label197: TLabel
          Left = 233
          Top = 34
          Width = 78
          Height = 13
          Caption = 'Data Aprovação'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label198: TLabel
          Left = 475
          Top = 34
          Width = 52
          Height = 13
          Caption = 'Procurador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label199: TLabel
          Left = 325
          Top = 94
          Width = 77
          Height = 13
          Caption = 'Nome do Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label200: TLabel
          Left = 573
          Top = 94
          Width = 54
          Height = 13
          Caption = 'Agência Nº'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label201: TLabel
          Left = 637
          Top = 94
          Width = 66
          Height = 13
          Caption = 'Data depósito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label202: TLabel
          Left = 325
          Top = 138
          Width = 74
          Height = 13
          Caption = 'Nome do Título'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label203: TLabel
          Left = 573
          Top = 138
          Width = 42
          Height = 13
          Caption = 'Números'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label204: TLabel
          Left = 325
          Top = 186
          Width = 101
          Height = 13
          Caption = 'Nome da Seguradora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label205: TLabel
          Left = 573
          Top = 186
          Width = 90
          Height = 13
          Caption = 'Número da Apólice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label206: TLabel
          Left = 325
          Top = 234
          Width = 75
          Height = 13
          Caption = 'Nome do Fiador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label207: TLabel
          Left = 573
          Top = 234
          Width = 99
          Height = 13
          Caption = 'CNPJ/CPF do Fiador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label208: TLabel
          Left = 325
          Top = 276
          Width = 93
          Height = 13
          Caption = 'Endereço do Fiador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label249: TLabel
          Left = 316
          Top = 34
          Width = 82
          Height = 13
          Caption = 'Data Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label252: TLabel
          Left = 401
          Top = 34
          Width = 52
          Height = 13
          Caption = 'Data Baixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label273: TLabel
          Left = 49
          Top = 234
          Width = 78
          Height = 13
          Caption = 'Valor FOB (US$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label274: TLabel
          Left = 186
          Top = 233
          Width = 73
          Height = 13
          Caption = 'Valor CIF (US$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label275: TLabel
          Left = 49
          Top = 278
          Width = 131
          Height = 13
          Caption = 'Imposto de Importação (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label276: TLabel
          Left = 187
          Top = 278
          Width = 36
          Height = 13
          Caption = 'IPI (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label277: TLabel
          Left = 49
          Top = 322
          Width = 112
          Height = 13
          Caption = 'Total dos Impostos (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object me_totimpreal: TMaskEdit
          Left = 48
          Top = 336
          Width = 132
          Height = 21
          TabOrder = 25
        end
        object me_ipireal: TMaskEdit
          Left = 184
          Top = 292
          Width = 132
          Height = 21
          TabOrder = 24
        end
        object me_iireal: TMaskEdit
          Left = 48
          Top = 292
          Width = 132
          Height = 21
          TabOrder = 23
        end
        object ME_VALFOBUSS: TMaskEdit
          Left = 48
          Top = 248
          Width = 132
          Height = 21
          TabOrder = 21
        end
        object ME_VALCIFUSS: TMaskEdit
          Left = 183
          Top = 247
          Width = 132
          Height = 21
          TabOrder = 22
        end
        object b_imprimeTR: TBitBtn
          Left = 404
          Top = 349
          Width = 153
          Height = 25
          Caption = '&Imprime FRENTE do TR'
          TabOrder = 0
          OnClick = b_imprimeTRClick
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
        object b_gracatr: TBitBtn
          Left = 324
          Top = 349
          Width = 75
          Height = 25
          Caption = '&Grava'
          TabOrder = 1
          OnClick = b_gracatrClick
          Kind = bkOK
        end
        object me_numeroTR: TMaskEdit
          Left = 48
          Top = 48
          Width = 105
          Height = 21
          TabOrder = 2
        end
        object me_dataentrada: TMaskEdit
          Left = 156
          Top = 48
          Width = 73
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 3
          Text = '  /  /    '
        end
        object me_dataaprovacao: TMaskEdit
          Left = 232
          Top = 48
          Width = 81
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 4
          Text = '  /  /    '
        end
        object cb_procuradores: TComboBox
          Left = 475
          Top = 48
          Width = 242
          Height = 21
          ItemHeight = 0
          TabOrder = 7
        end
        object rg_garantia: TRadioGroup
          Left = 48
          Top = 76
          Width = 261
          Height = 146
          Caption = 'Modalidade da Garantia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            '1. Depósito em dinheiro'
            '2. Caução de títulos da dívida pública federal'
            '3. Seguro aduaneiro'
            '4. Fiança idônea')
          ParentFont = False
          TabOrder = 8
          OnClick = rg_garantiaClick
        end
        object me_datadeposito: TMaskEdit
          Left = 636
          Top = 108
          Width = 81
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 9
          Text = '  /  /    '
        end
        object me_nomebanco: TMaskEdit
          Left = 324
          Top = 108
          Width = 245
          Height = 21
          TabOrder = 10
        end
        object me_agencia: TMaskEdit
          Left = 572
          Top = 108
          Width = 61
          Height = 21
          TabOrder = 11
        end
        object me_nometitulo: TMaskEdit
          Left = 324
          Top = 152
          Width = 245
          Height = 21
          TabOrder = 12
        end
        object me_numeros: TMaskEdit
          Left = 572
          Top = 152
          Width = 145
          Height = 21
          TabOrder = 13
        end
        object me_nomeseguradora: TMaskEdit
          Left = 324
          Top = 200
          Width = 245
          Height = 21
          TabOrder = 14
        end
        object me_numeroapolice: TMaskEdit
          Left = 572
          Top = 200
          Width = 145
          Height = 21
          TabOrder = 15
        end
        object me_nomefiador: TMaskEdit
          Left = 324
          Top = 248
          Width = 245
          Height = 21
          TabOrder = 16
        end
        object me_cnpjfiador: TMaskEdit
          Left = 572
          Top = 248
          Width = 145
          Height = 21
          TabOrder = 17
        end
        object me_enderecofiador: TMaskEdit
          Left = 324
          Top = 290
          Width = 393
          Height = 21
          TabOrder = 18
        end
        object me_datavencimento: TMaskEdit
          Left = 316
          Top = 48
          Width = 81
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 5
          Text = '  /  /    '
        end
        object b_imprimeverso: TBitBtn
          Left = 564
          Top = 349
          Width = 153
          Height = 25
          Caption = '&Imprime VERSO do TR'
          TabOrder = 19
          OnClick = b_imprimeversoClick
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
        object Panel31: TPanel
          Left = 48
          Top = 78
          Width = 673
          Height = 27
          TabOrder = 20
          Visible = False
          OnExit = Panel31Exit
          object Label250: TLabel
            Left = 1
            Top = 1
            Width = 308
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Observações do Verso do Termo de Responsabilidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BitBtn2: TBitBtn
            Left = 504
            Top = 270
            Width = 75
            Height = 25
            TabOrder = 1
            OnClick = BitBtn2Click
            Kind = bkOK
          end
          object BitBtn3: TBitBtn
            Left = 588
            Top = 270
            Width = 75
            Height = 25
            Caption = 'Cancela'
            TabOrder = 2
            OnClick = BitBtn3Click
            Kind = bkCancel
          end
          object DBMemo1: TDBMemo
            Left = 1
            Top = 14
            Width = 671
            Height = 240
            Align = alTop
            DataField = 'Observacoes'
            DataSource = ds_obstr
            TabOrder = 0
          end
        end
        object me_databaixatr: TMaskEdit
          Left = 399
          Top = 48
          Width = 74
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 6
          Text = '  /  /    '
          OnExit = me_databaixatrExit
        end
        object b_qq: TBitBtn
          Left = 185
          Top = 333
          Width = 109
          Height = 25
          Caption = '&Atualiza valores'
          TabOrder = 26
          OnClick = b_qqClick
          Kind = bkOK
        end
      end
    end
    object TS_followup: TTabSheet
      Caption = 'Follow-Up'
      Enabled = False
      ImageIndex = 5
      TabVisible = False
      OnShow = TS_followupShow
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        TabOrder = 0
        object Label219: TLabel
          Left = 12
          Top = 279
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
          Top = 279
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
          Top = 278
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
          Left = 444
          Top = 278
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
          Top = 315
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
        object sb_locevento: TSpeedButton
          Left = 416
          Top = 293
          Width = 23
          Height = 21
          Hint = 'Localizar Fabricante'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000888880000080F000888880F00080F000888880F
            0008000000080000000800F000000F00000800F000800F00000800F000800F00
            00088000000000000088880F00080F0008888800000800000888888000888000
            88888880F08880F0888888800088800088888888888888888888}
          OnClick = sb_loceventoClick
        end
        object Label253: TLabel
          Left = 12
          Top = 353
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
        object DBG_followup: TDBGrid
          Left = 2
          Top = 2
          Width = 761
          Height = 274
          DataSource = DS_follow
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
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
              Visible = True
            end>
        end
        object B_alterafollow: TBitBtn
          Left = 601
          Top = 358
          Width = 75
          Height = 25
          Caption = '&Grava'
          TabOrder = 2
          OnClick = B_alterafollowClick
          Kind = bkRetry
        end
        object B_excluifollow: TBitBtn
          Left = 681
          Top = 358
          Width = 75
          Height = 25
          Caption = '&Exclui'
          TabOrder = 3
          OnClick = B_excluifollowClick
          Kind = bkCancel
        end
        object B_novo: TBitBtn
          Left = 521
          Top = 358
          Width = 75
          Height = 25
          Caption = '&Novo'
          Default = True
          ModalResult = 1
          TabOrder = 1
          OnClick = B_novoClick
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
        object DBEdit8: TDBEdit
          Left = 11
          Top = 293
          Width = 65
          Height = 21
          DataField = 'Data'
          DataSource = ds_tfollow
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 79
          Top = 293
          Width = 34
          Height = 21
          DataField = 'Hora'
          DataSource = ds_tfollow
          TabOrder = 5
        end
        object dbl_eventos: TDBLookupComboBox
          Left = 116
          Top = 293
          Width = 297
          Height = 21
          DataField = 'Codevento'
          DataSource = ds_tfollow
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = DS_eventos
          TabOrder = 6
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 441
          Top = 293
          Width = 316
          Height = 21
          DataField = 'Codobs'
          DataSource = ds_tfollow
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = DS_obseventos
          TabOrder = 7
        end
        object DBEdit10: TDBEdit
          Left = 12
          Top = 329
          Width = 745
          Height = 21
          DataField = 'Obs_especifica'
          DataSource = ds_tfollow
          TabOrder = 8
        end
        object p_loceventos: TPanel
          Left = 60
          Top = 43
          Width = 613
          Height = 235
          TabOrder = 10
          Visible = False
          OnExit = p_loceventosExit
          object Label251: TLabel
            Left = 12
            Top = 6
            Width = 119
            Height = 16
            Caption = 'Localiza Eventos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object b_cancelaloceventos: TBitBtn
            Left = 528
            Top = 204
            Width = 75
            Height = 25
            Caption = '&Cancela'
            TabOrder = 3
            OnClick = b_cancelaloceventosClick
            Kind = bkCancel
          end
          object b_okloceventos: TBitBtn
            Left = 448
            Top = 204
            Width = 75
            Height = 25
            TabOrder = 2
            OnClick = b_okloceventosClick
            Kind = bkOK
          end
          object DBGrid1: TDBGrid
            Left = 12
            Top = 25
            Width = 589
            Height = 172
            DataSource = ds_qloceventos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindow
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Codigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao'
                Visible = True
              end>
          end
          object me_localiza: TMaskEdit
            Left = 288
            Top = 4
            Width = 313
            Height = 21
            TabOrder = 0
            OnChange = me_localizaChange
          end
        end
        object DBEdit22: TDBEdit
          Left = 12
          Top = 367
          Width = 117
          Height = 21
          DataField = 'link'
          DataSource = ds_tfollow
          TabOrder = 9
          OnExit = DBEdit22Exit
        end
      end
    end
    object TS_desenba: TTabSheet
      Caption = 'Desembaraço'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 9
      ParentFont = False
      TabVisible = False
      OnShow = TS_desenbaShow
      object Panel25: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        TabOrder = 0
        object Label239: TLabel
          Left = 16
          Top = 370
          Width = 92
          Height = 13
          Caption = 'Status do Processo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label278: TLabel
          Left = 564
          Top = 373
          Width = 119
          Height = 13
          Caption = 'Data Liberação da Carga'
          FocusControl = DBEdit36
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 112
          Top = 362
          Width = 437
          Height = 21
          DataField = 'Status'
          DataSource = DS_processos
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = ds_status
          TabOrder = 0
        end
        object Panel36: TPanel
          Left = 14
          Top = 11
          Width = 365
          Height = 346
          BorderStyle = bsSingle
          Color = clGray
          TabOrder = 1
          object Label242: TLabel
            Left = 10
            Top = 41
            Width = 11
            Height = 13
            Caption = 'DI'
            FocusControl = DBEdit16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label243: TLabel
            Left = 10
            Top = 73
            Width = 99
            Height = 13
            Caption = 'Data Processamento'
            FocusControl = DBEdit17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label244: TLabel
            Left = 10
            Top = 101
            Width = 85
            Height = 13
            Caption = 'Data Transmissão'
            FocusControl = DBEdit18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label245: TLabel
            Left = 10
            Top = 129
            Width = 65
            Height = 13
            Caption = 'Data Registro'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label237: TLabel
            Left = 10
            Top = 157
            Width = 27
            Height = 13
            Caption = 'Canal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label254: TLabel
            Left = 10
            Top = 184
            Width = 81
            Height = 13
            Caption = 'Data Distribuição'
            FocusControl = DBEdit23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label238: TLabel
            Left = 10
            Top = 213
            Width = 27
            Height = 13
            Caption = 'Fiscal'
            FocusControl = DBEdit12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label240: TLabel
            Left = 10
            Top = 239
            Width = 92
            Height = 13
            Caption = 'Data Desembaraço'
            FocusControl = DBEdit14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label255: TLabel
            Left = 248
            Top = 239
            Width = 36
            Height = 13
            Caption = 'Data CI'
            FocusControl = DBEdit24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label241: TLabel
            Left = 10
            Top = 269
            Width = 72
            Height = 13
            Caption = 'Situação Fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label247: TLabel
            Left = 11
            Top = 299
            Width = 98
            Height = 13
            Caption = 'Valor Total FOB (R$)'
            FocusControl = DBEdit20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label248: TLabel
            Left = 119
            Top = 299
            Width = 93
            Height = 13
            Caption = 'Valor Total CIF (R$)'
            FocusControl = DBEdit21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label246: TLabel
            Left = 230
            Top = 299
            Width = 82
            Height = 13
            Caption = 'Quantidade de LI'
            FocusControl = DBEdit15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label288: TLabel
            Left = 242
            Top = 41
            Width = 98
            Height = 13
            Caption = 'Taxas de Conversão'
            FocusControl = DBEdit16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit16: TDBEdit
            Left = 118
            Top = 37
            Width = 105
            Height = 21
            DataField = 'NR_DECLARACAO_IMP'
            DataSource = DS_processos
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 118
            Top = 65
            Width = 73
            Height = 21
            DataField = 'DT_PROCESSAMENTO'
            DataSource = DS_processos
            MaxLength = 10
            TabOrder = 1
          end
          object DBEdit18: TDBEdit
            Left = 118
            Top = 93
            Width = 73
            Height = 21
            DataField = 'DT_TRANSMISSAO'
            DataSource = DS_processos
            MaxLength = 10
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 118
            Top = 121
            Width = 73
            Height = 21
            DataField = 'DT_REGISTRO_DI'
            DataSource = DS_processos
            MaxLength = 10
            TabOrder = 3
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 118
            Top = 149
            Width = 241
            Height = 21
            DataField = 'Canal'
            DataSource = DS_processos
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = ds_canais
            TabOrder = 4
          end
          object DBEdit23: TDBEdit
            Left = 119
            Top = 178
            Width = 65
            Height = 21
            DataField = 'DT_DISTRIBUICAO'
            DataSource = DS_processos
            TabOrder = 5
          end
          object DBEdit12: TDBEdit
            Left = 118
            Top = 207
            Width = 237
            Height = 21
            DataField = 'Fiscal'
            DataSource = DS_processos
            TabOrder = 6
          end
          object DBEdit14: TDBEdit
            Left = 118
            Top = 235
            Width = 65
            Height = 21
            DataField = 'DT_DESEMBARACO'
            DataSource = DS_processos
            TabOrder = 7
            OnExit = DBEdit14Change
          end
          object DBEdit24: TDBEdit
            Left = 290
            Top = 235
            Width = 65
            Height = 21
            DataField = 'Data_CI'
            DataSource = DS_processos
            TabOrder = 8
            OnExit = DBEdit14Change
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 118
            Top = 261
            Width = 237
            Height = 21
            DataField = 'COD_SIT'
            DataSource = DS_processos
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = ds_sitfis
            TabOrder = 9
            OnExit = DBLookupComboBox5Exit
          end
          object Panel39: TPanel
            Left = 1
            Top = 1
            Width = 359
            Height = 28
            Align = alTop
            Caption = 'Desembaraço da DI'
            Color = clSilver
            TabOrder = 13
          end
          object DBEdit20: TDBEdit
            Left = 8
            Top = 315
            Width = 97
            Height = 21
            DataField = 'Valor_FOB'
            DataSource = DS_processos
            TabOrder = 10
          end
          object DBEdit21: TDBEdit
            Left = 118
            Top = 315
            Width = 97
            Height = 21
            DataField = 'Valor_CIF'
            DataSource = DS_processos
            TabOrder = 11
          end
          object DBEdit15: TDBEdit
            Left = 230
            Top = 315
            Width = 97
            Height = 21
            DataField = 'Quantidade_LI'
            DataSource = DS_processos
            TabOrder = 12
          end
          object DBGrid3: TDBGrid
            Left = 232
            Top = 56
            Width = 126
            Height = 81
            DataSource = ds_taxaconv
            TabOrder = 14
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Moeda'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Taxa_conversao'
                Title.Caption = 'Taxa'
                Width = 51
                Visible = True
              end>
          end
        end
        object Panel37: TPanel
          Left = 384
          Top = 11
          Width = 365
          Height = 346
          BorderStyle = bsSingle
          Color = clGray
          TabOrder = 2
          object Label261: TLabel
            Left = 10
            Top = 41
            Width = 11
            Height = 13
            Caption = 'DI'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label262: TLabel
            Left = 10
            Top = 73
            Width = 99
            Height = 13
            Caption = 'Data Processamento'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label263: TLabel
            Left = 10
            Top = 101
            Width = 85
            Height = 13
            Caption = 'Data Transmissão'
            FocusControl = DBEdit30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label264: TLabel
            Left = 10
            Top = 129
            Width = 65
            Height = 13
            Caption = 'Data Registro'
            FocusControl = DBEdit31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label265: TLabel
            Left = 10
            Top = 157
            Width = 27
            Height = 13
            Caption = 'Canal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label266: TLabel
            Left = 10
            Top = 184
            Width = 81
            Height = 13
            Caption = 'Data Distribuição'
            FocusControl = DBEdit32
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label267: TLabel
            Left = 10
            Top = 213
            Width = 27
            Height = 13
            Caption = 'Fiscal'
            FocusControl = DBEdit33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label268: TLabel
            Left = 10
            Top = 239
            Width = 92
            Height = 13
            Caption = 'Data Desembaraço'
            FocusControl = DBEdit34
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label269: TLabel
            Left = 248
            Top = 239
            Width = 36
            Height = 13
            Caption = 'Data CI'
            FocusControl = DBEdit35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label270: TLabel
            Left = 10
            Top = 269
            Width = 72
            Height = 13
            Caption = 'Situação Fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label286: TLabel
            Left = 10
            Top = 299
            Width = 98
            Height = 13
            Caption = 'Valor Total FOB (R$)'
            FocusControl = DBEdit37
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label287: TLabel
            Left = 118
            Top = 299
            Width = 93
            Height = 13
            Caption = 'Valor Total CIF (R$)'
            FocusControl = DBEdit38
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label289: TLabel
            Left = 242
            Top = 41
            Width = 98
            Height = 13
            Caption = 'Taxas de Conversão'
            FocusControl = DBEdit16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 118
            Top = 37
            Width = 105
            Height = 21
            DataField = 'NR_DECLARACAO_IMPC'
            DataSource = DS_processos
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 118
            Top = 65
            Width = 73
            Height = 21
            DataField = 'DT_PROCESSAMENTOC'
            DataSource = DS_processos
            MaxLength = 10
            TabOrder = 1
          end
          object DBEdit30: TDBEdit
            Left = 118
            Top = 93
            Width = 73
            Height = 21
            DataField = 'DT_TRANSMISSAOC'
            DataSource = DS_processos
            MaxLength = 10
            TabOrder = 2
          end
          object DBEdit31: TDBEdit
            Left = 118
            Top = 121
            Width = 73
            Height = 21
            DataField = 'DT_REGISTRO_DIC'
            DataSource = DS_processos
            MaxLength = 10
            TabOrder = 3
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 118
            Top = 149
            Width = 241
            Height = 21
            DataField = 'CanalC'
            DataSource = DS_processos
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = ds_canais
            TabOrder = 4
          end
          object DBEdit32: TDBEdit
            Left = 119
            Top = 178
            Width = 65
            Height = 21
            DataField = 'DT_DISTRIBUICAOC'
            DataSource = DS_processos
            TabOrder = 5
          end
          object DBEdit33: TDBEdit
            Left = 118
            Top = 207
            Width = 237
            Height = 21
            DataField = 'FiscalC'
            DataSource = DS_processos
            TabOrder = 6
          end
          object DBEdit34: TDBEdit
            Left = 118
            Top = 235
            Width = 65
            Height = 21
            DataField = 'DT_DESEMBARACOC'
            DataSource = DS_processos
            TabOrder = 7
            OnExit = DBEdit14Change
          end
          object DBEdit35: TDBEdit
            Left = 290
            Top = 235
            Width = 65
            Height = 21
            DataField = 'Data_CIC'
            DataSource = DS_processos
            TabOrder = 8
            OnExit = DBEdit14Change
          end
          object DBLookupComboBox12: TDBLookupComboBox
            Left = 118
            Top = 261
            Width = 237
            Height = 21
            DataField = 'COD_SITC'
            DataSource = DS_processos
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = ds_sitfis
            TabOrder = 9
            OnExit = DBLookupComboBox5Exit
          end
          object Panel38: TPanel
            Left = 1
            Top = 1
            Width = 359
            Height = 28
            Align = alTop
            Caption = 'Desembaraço da DI de Consumo (Processo Tipo Consumo e Admissão)'
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DBEdit37: TDBEdit
            Left = 7
            Top = 315
            Width = 97
            Height = 21
            DataField = 'Valor_FOBC'
            DataSource = DS_processos
            TabOrder = 10
          end
          object DBEdit38: TDBEdit
            Left = 117
            Top = 315
            Width = 97
            Height = 21
            DataField = 'Valor_CIFC'
            DataSource = DS_processos
            TabOrder = 11
          end
          object DBGrid4: TDBGrid
            Left = 232
            Top = 56
            Width = 126
            Height = 81
            DataSource = ds_taxaconv
            TabOrder = 13
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Moeda'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Taxa_conversaoc'
                Title.Caption = 'Taxa'
                Width = 51
                Visible = True
              end>
          end
        end
        object DBEdit36: TDBEdit
          Left = 686
          Top = 367
          Width = 65
          Height = 21
          DataField = 'Data_liberacao'
          DataSource = DS_processos
          TabOrder = 3
          OnExit = DBEdit14Change
        end
      end
    end
    object TS_nfiscal: TTabSheet
      Caption = 'Nota Fiscal'
      Enabled = False
      ImageIndex = 10
      TabVisible = False
    end
    object ts_RPR: TTabSheet
      Caption = 'RPR'
      Enabled = False
      ImageIndex = 14
      TabVisible = False
      OnShow = ts_RPRShow
      object Panel40: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 413
        Align = alClient
        Color = clTeal
        Enabled = False
        TabOrder = 0
        object Shape3: TShape
          Left = 24
          Top = 36
          Width = 721
          Height = 333
          Brush.Color = clTeal
          Pen.Color = clWhite
        end
        object Label271: TLabel
          Left = 104
          Top = 11
          Width = 589
          Height = 20
          Alignment = taCenter
          Caption = 
            'RPR - Requerimento de Prorrogação do Regime de Admissão Temporár' +
            'ia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BitBtn4: TBitBtn
          Left = 608
          Top = 328
          Width = 119
          Height = 25
          Caption = '&Imprime RPR'
          TabOrder = 0
          OnClick = b_imprimeClick
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
        object BitBtn5: TBitBtn
          Left = 648
          Top = 168
          Width = 75
          Height = 25
          Caption = '&Grava'
          TabOrder = 1
          OnClick = b_gravaRCRClick
          Kind = bkOK
        end
        object DBGrid2: TDBGrid
          Left = 36
          Top = 48
          Width = 697
          Height = 273
          DataSource = ds_rpr
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Código'
              Title.Caption = 'Processo MS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Código_Cliente'
              Title.Caption = 'Ref. Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NR_DECLARACAO_IMP'
              Title.Caption = 'DI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero_RCR'
              Title.Caption = 'Nº RCR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Numero_TR'
              Title.Caption = 'Nº  TR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_Entrada_TR'
              Title.Caption = 'Dt Entrada TR'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data_vencimento_TR'
              Title.Caption = 'DT Vencimento TR'
              Width = 100
              Visible = True
            end>
        end
      end
    end
  end
  object T_processos: TTable
    AutoCalcFields = False
    AfterInsert = T_processosAfterInsert
    BeforePost = T_processosBeforePost
    AfterPost = T_processosAfterPost
    BeforeDelete = T_processosBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'importador <> '#39'0000'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Código'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Processos'
    UpdateMode = upWhereChanged
    Left = 104
    Top = 108
    object T_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_processosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_processosCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 8
    end
    object T_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object T_processosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_processosCdigo_Cliente: TStringField
      FieldName = 'Código_Cliente'
      Size = 15
    end
    object T_processosTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object T_processosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object T_processosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object T_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object T_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object T_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      EditMask = '!99/99/9999;0;_'
      Size = 8
    end
    object T_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      EditMask = '!99/99/9999;0;_'
      Size = 8
    end
    object T_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      EditMask = '!99/99/9999;0;_'
      Size = 8
    end
    object T_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object T_processosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object T_processosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object T_processosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object T_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object T_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object T_processosIN_MOEDA_UNICA: TBooleanField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object T_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object T_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object T_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object T_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object T_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object T_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object T_processosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object T_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object T_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object T_processosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object T_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object T_processosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object T_processosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object T_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object T_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 50
    end
    object T_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object T_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object T_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 50
    end
    object T_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object T_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 50
    end
    object T_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object T_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 50
    end
    object T_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 18
    end
    object T_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 100
    end
    object T_processosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object T_processosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object T_processosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object T_processosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object T_processosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      Size = 10
    end
    object T_processosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object T_processosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      Size = 8
    end
    object T_processosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      Size = 10
    end
    object T_processosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object T_processosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      EditMask = '!99/99/9999;0;_'
      Size = 8
    end
    object T_processosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      EditMask = '!99/99/9999;0;_'
      Size = 8
    end
    object T_processosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      EditMask = '!99/99/9999;0;_'
      Size = 8
    end
    object T_processosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object T_processosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object T_processosCanalC: TStringField
      FieldName = 'CanalC'
      Size = 1
    end
    object T_processosFiscalC: TStringField
      FieldName = 'FiscalC'
    end
    object T_processosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      Size = 1
    end
    object T_processosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object T_processosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object T_processosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object T_processosident_meio1: TStringField
      FieldName = 'ident_meio1'
      Size = 100
    end
    object T_processosident_meio2: TStringField
      FieldName = 'ident_meio2'
      Size = 100
    end
    object T_processosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object T_processosCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object T_processosCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object T_processosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object T_processosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object T_processosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      Size = 5
    end
    object T_processosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object T_processosUrgente: TBooleanField
      FieldName = 'Urgente'
    end
    object T_processosConsolidado: TBooleanField
      FieldName = 'Consolidado'
    end
  end
  object DS_processos: TDataSource
    DataSet = T_processos
    Left = 236
    Top = 40
  end
  object T_tipodecl: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_TIPO_DECLARACAO'
    Left = 112
    Top = 185
    object T_tipodeclCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object T_tipodeclDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object DS_tipodecl: TDataSource
    DataSet = T_tipodecl
    Left = 236
    Top = 40
  end
  object T_parametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 560
    Top = 404
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object T_parametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object T_parametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object T_parametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object T_parametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object T_parametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object T_parametrosHost: TStringField
      FieldName = 'Host'
      Size = 30
    end
  end
  object DS_parametros: TDataSource
    DataSet = T_parametros
    Left = 236
    Top = 44
  end
  object T_faturas: TTable
    AutoCalcFields = False
    ObjectView = True
    AfterInsert = T_faturasAfterInsert
    AfterPost = T_faturasAfterPost
    BeforeDelete = T_faturasBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    FieldDefs = <
      item
        Name = 'Empresa'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Filial'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Processo'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Código'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Exportador'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Incoterm'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Vinculacao'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Condição'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Valor Total'
        DataType = ftFloat
      end
      item
        Name = 'Peso Total'
        DataType = ftFloat
      end
      item
        Name = 'Peso Total_Acertado'
        DataType = ftFloat
      end
      item
        Name = 'Acrescimos_Reducoes'
        DataType = ftBoolean
      end
      item
        Name = 'Moeda'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Cobertura Cambial'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Motivo Sem Cobertura'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Modalidade de Pagamento'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Instituicao Financiadora'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Tipo Parcela'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Numero de parcelas'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Periodicidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Valor das Parcelas'
        DataType = ftFloat
      end
      item
        Name = 'Indicador Periodicidade'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Taxa de Juros'
        DataType = ftBoolean
      end
      item
        Name = 'Codigo Taxa de Juros'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Valor Taxa de Juros'
        DataType = ftFloat
      end
      item
        Name = 'ROF BACEN'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Percentual ROF'
        DataType = ftFloat
      end
      item
        Name = 'DT_PREV_PAG_CAMBIO'
        DataType = ftDateTime
      end
      item
        Name = 'DT_PAG_CAMBIO'
        DataType = ftDateTime
      end
      item
        Name = 'STATUS_CAMBIO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONTRATO_CAMBIO'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'PrimaryKey'
        Fields = 'Empresa;Filial;Processo;Código'
        Options = [ixPrimary, ixUnique, ixCaseInsensitive]
      end>
    IndexFieldNames = 'Empresa;Filial;Processo;Código'
    StoreDefs = True
    TableName = 'Faturas'
    UpdateMode = upWhereChanged
    Left = 152
    Top = 128
    object T_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_faturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_faturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_faturasCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 15
    end
    object T_faturasExportador: TStringField
      FieldName = 'Exportador'
      Size = 4
    end
    object T_faturasIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object T_faturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      Size = 1
    end
    object T_faturasCondio: TStringField
      FieldName = 'Condição'
      Size = 50
    end
    object T_faturasValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object T_faturasPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object T_faturasPesoTotal_Acertado: TFloatField
      FieldName = 'Peso Total_Acertado'
    end
    object T_faturasAcrescimos_Reducoes: TBooleanField
      FieldName = 'Acrescimos_Reducoes'
    end
    object T_faturasMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_faturasCoberturaCambial: TStringField
      FieldName = 'Cobertura Cambial'
      Size = 1
    end
    object T_faturasMotivoSemCobertura: TStringField
      FieldName = 'Motivo Sem Cobertura'
      Size = 2
    end
    object T_faturasModalidadedePagamento: TStringField
      FieldName = 'Modalidade de Pagamento'
      Size = 2
    end
    object T_faturasInstituicaoFinanciadora: TStringField
      FieldName = 'Instituicao Financiadora'
      Size = 2
    end
    object T_faturasTipoParcela: TStringField
      FieldName = 'Tipo Parcela'
      Size = 1
    end
    object T_faturasNumerodeparcelas: TStringField
      FieldName = 'Numero de parcelas'
      Size = 3
    end
    object T_faturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 3
    end
    object T_faturasValordasParcelas: TFloatField
      FieldName = 'Valor das Parcelas'
    end
    object T_faturasIndicadorPeriodicidade: TStringField
      FieldName = 'Indicador Periodicidade'
      Size = 1
    end
    object T_faturasTaxadeJuros: TBooleanField
      FieldName = 'Taxa de Juros'
    end
    object T_faturasCodigoTaxadeJuros: TStringField
      FieldName = 'Codigo Taxa de Juros'
      Size = 4
    end
    object T_faturasValorTaxadeJuros: TFloatField
      FieldName = 'Valor Taxa de Juros'
    end
    object T_faturasROFBACEN: TStringField
      FieldName = 'ROF BACEN'
      Size = 8
    end
    object T_faturasPercentualROF: TFloatField
      FieldName = 'Percentual ROF'
    end
    object T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
    end
    object T_faturasDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object T_faturasSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      Size = 1
    end
    object T_faturasCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      Size = 10
    end
  end
  object DS_faturas: TDataSource
    DataSet = T_faturas
    Left = 236
    Top = 48
  end
  object T_itensfaturas: TTable
    AfterInsert = T_itensfaturasAfterInsert
    AfterPost = T_itensfaturasAfterPost
    BeforeDelete = T_itensfaturasBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    TableName = 'ItensFaturas'
    Left = 372
    Top = 100
    object T_itensfaturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_itensfaturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_itensfaturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_itensfaturasFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object T_itensfaturasSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object T_itensfaturasPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object T_itensfaturasProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 25
    end
    object T_itensfaturasDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object T_itensfaturasFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object T_itensfaturasNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object T_itensfaturasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object T_itensfaturasReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object T_itensfaturasNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_itensfaturasPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object T_itensfaturasQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_itensfaturasValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object T_itensfaturasValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object T_itensfaturasPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object T_itensfaturasPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object T_itensfaturasPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object T_itensfaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object T_itensfaturasSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object T_itensfaturasRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object T_itensfaturasRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object T_itensfaturasRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object T_itensfaturasRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object T_itensfaturasRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object T_itensfaturasRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object T_itensfaturasRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object T_itensfaturasRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object T_itensfaturasRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object T_itensfaturasRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object T_itensfaturasRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object T_itensfaturasRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object T_itensfaturasRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object T_itensfaturasRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object T_itensfaturasRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object T_itensfaturasRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object T_itensfaturasRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object T_itensfaturasRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object T_itensfaturasRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object T_itensfaturasRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object T_itensfaturasValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object T_itensfaturasValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object T_itensfaturasVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object T_itensfaturasBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object T_itensfaturasAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object T_itensfaturasUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object T_itensfaturasDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object T_itensfaturasNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object T_itensfaturasCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object T_itensfaturasReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      Size = 15
    end
    object T_itensfaturasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object T_itensfaturasFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object T_itensfaturasFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
    object T_itensfaturasContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object T_itensfaturasLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object T_itensfaturasSeqpo: TStringField
      FieldName = 'Seqpo'
      Size = 5
    end
  end
  object DS_itensfaturas: TDataSource
    DataSet = T_itensfaturas
    Left = 236
    Top = 52
  end
  object T_produtos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    TableName = 'Produtos'
    Left = 224
    Top = 65520
    object T_produtosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_produtosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_produtosCdigo: TStringField
      FieldName = 'Código'
      Size = 25
    end
    object T_produtosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object T_produtosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_produtosFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object T_produtosUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object T_produtosPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object T_produtosValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object T_produtosMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_produtosUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object T_produtosDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object T_produtosNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object T_produtosDescrio: TMemoField
      FieldName = 'Descrição'
      BlobType = ftMemo
    end
  end
  object DS_produtos: TDataSource
    DataSet = T_produtos
    Left = 236
    Top = 48
  end
  object T_incoterms: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_INCOTERMS_VENDA'
    Left = 528
    Top = 408
    object T_incotermsCodigo: TStringField
      FieldName = 'Codigo'
      Size = 3
    end
    object T_incotermsDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object DS_incoterms: TDataSource
    DataSet = T_incoterms
    Left = 236
    Top = 52
  end
  object DS_exportadores: TDataSource
    DataSet = T_exportadores
    Left = 236
    Top = 52
  end
  object Q_itensfaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select * from itensfaturas'
      
        'Where empresa = :empresa and filial = :filial and Processo = :Pr' +
        'ocesso and fatura = :fatura'
      'ORDER BY VAL(itensfaturas.SEQUENCIAL)')
    UpdateMode = upWhereChanged
    Left = 736
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'rjo'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'fatura'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_itensfaturasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.ItensFaturas.Empresa'
      Size = 4
    end
    object Q_itensfaturasFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Filial'
      Size = 4
    end
    object Q_itensfaturasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.ItensFaturas.Processo'
      Size = 8
    end
    object Q_itensfaturasFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.ItensFaturas.Fatura'
      Size = 15
    end
    object Q_itensfaturasSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Sequencial'
      Size = 4
    end
    object Q_itensfaturasPagina: TStringField
      FieldName = 'Pagina'
      Origin = 'DBNMSCOMEX.ItensFaturas.Pagina'
      Size = 3
    end
    object Q_itensfaturasProduto: TStringField
      FieldName = 'Produto'
      Origin = 'DBNMSCOMEX.ItensFaturas.Produto'
      Size = 25
    end
    object Q_itensfaturasDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Origin = 'DBNMSCOMEX.ItensFaturas.Descricao_Produto'
      Size = 120
    end
    object Q_itensfaturasFabricante: TStringField
      FieldName = 'Fabricante'
      Origin = 'DBNMSCOMEX.ItensFaturas.Fabricante'
      Size = 4
    end
    object Q_itensfaturasNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.ItensFaturas.NCM'
      Size = 8
    end
    object Q_itensfaturasUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'DBNMSCOMEX.ItensFaturas.Unidade'
      Size = 2
    end
    object Q_itensfaturasReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'DBNMSCOMEX.ItensFaturas.Referencia'
      Size = 30
    end
    object Q_itensfaturasNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Origin = 'DBNMSCOMEX.ItensFaturas.Numero_serie'
      Size = 15
    end
    object Q_itensfaturasPO: TStringField
      FieldName = 'PO'
      Origin = 'DBNMSCOMEX.ItensFaturas.PO'
      Size = 15
    end
    object Q_itensfaturasQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.ItensFaturas.Quantidade'
    end
    object Q_itensfaturasValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
      Origin = 'DBNMSCOMEX.ItensFaturas.Valor Unitário'
    end
    object Q_itensfaturasValorTotal: TFloatField
      FieldName = 'Valor Total'
      Origin = 'DBNMSCOMEX.ItensFaturas.Valor Total'
    end
    object Q_itensfaturasPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso Unitário'
    end
    object Q_itensfaturasPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso_Unitario_Acertado'
    end
    object Q_itensfaturasPesoTotal: TFloatField
      FieldName = 'Peso Total'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso Total'
    end
    object Q_itensfaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso_Total_Acertado'
    end
    object Q_itensfaturasSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
      Origin = 'DBNMSCOMEX.ItensFaturas.Saldo_Tributavel'
    end
    object Q_itensfaturasRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Acrescimos'
    end
    object Q_itensfaturasRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Deducoes'
    end
    object Q_itensfaturasRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Embalagem'
    end
    object Q_itensfaturasRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Frete_Interno_imp'
    end
    object Q_itensfaturasRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Seguro_Interno'
    end
    object Q_itensfaturasRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_outras_import'
    end
    object Q_itensfaturasRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_startup'
    end
    object Q_itensfaturasRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_jurosfin'
    end
    object Q_itensfaturasRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_montagem'
    end
    object Q_itensfaturasRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Frete_Interno_exp'
    end
    object Q_itensfaturasRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_carga_exp'
    end
    object Q_itensfaturasRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_outras_export'
    end
    object Q_itensfaturasRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_frete_fatura'
    end
    object Q_itensfaturasRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_seguro_fatura'
    end
    object Q_itensfaturasRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_carga_imp'
    end
    object Q_itensfaturasRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Despesas_ate_FOB'
    end
    object Q_itensfaturasRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Frete_prepaid'
    end
    object Q_itensfaturasRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Frete_collect'
    end
    object Q_itensfaturasRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Frete_ternac'
    end
    object Q_itensfaturasRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
      Origin = 'DBNMSCOMEX.ItensFaturas.Rateio_Seguro'
    end
    object Q_itensfaturasValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
      Origin = 'DBNMSCOMEX.ItensFaturas.Valor_Aduaneiro'
    end
    object Q_itensfaturasValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
      Origin = 'DBNMSCOMEX.ItensFaturas.Valor_mercadoria'
    end
    object Q_itensfaturasVMLE: TFloatField
      FieldName = 'VMLE'
      Origin = 'DBNMSCOMEX.ItensFaturas.VMLE'
    end
    object Q_itensfaturasBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
      Origin = 'DBNMSCOMEX.ItensFaturas.Base_Calc_II'
    end
    object Q_itensfaturasAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
      Origin = 'DBNMSCOMEX.ItensFaturas.Acresc_reduc_Valaduan'
    end
    object Q_itensfaturasUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Origin = 'DBNMSCOMEX.ItensFaturas.Unidade_Medida_Estat'
      Size = 2
    end
    object Q_itensfaturasDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Origin = 'DBNMSCOMEX.ItensFaturas.Destaque_NCM'
      Size = 3
    end
    object Q_itensfaturasNALADI: TStringField
      FieldName = 'NALADI'
      Origin = 'DBNMSCOMEX.ItensFaturas.NALADI'
      Size = 8
    end
    object Q_itensfaturasReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      Size = 15
    end
    object Q_itensfaturasCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object Q_itensfaturasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Q_itensfaturasFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object Q_itensfaturasFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
    object Q_itensfaturasSEQPO: TStringField
      FieldName = 'SEQPO'
      Size = 4
    end
    object Q_itensfaturasContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object Q_itensfaturasLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
  end
  object DS_qitensfaturas: TDataSource
    DataSet = Q_itensfaturas
    Left = 236
    Top = 60
  end
  object T_fabricantes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Fabricantes / Produtores'
    Left = 484
    Top = 65524
    object T_fabricantesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_fabricantesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_fabricantesCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_fabricantesRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_fabricantesPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_fabricantesCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_fabricantesEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_fabricantesNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_fabricantesComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_fabricantesBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_fabricantesCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_fabricantesCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_fabricantesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_fabricantesEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_fabricantesInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object DS_Fabricantes: TDataSource
    DataSet = T_fabricantes
    Left = 236
    Top = 52
  end
  object T_unidades: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_UNID_MEDIDA'
    Left = 440
    Top = 404
    object T_unidadesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_unidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object DS_unidades: TDataSource
    DataSet = T_unidades
    Left = 236
    Top = 60
  end
  object T_importadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Importador'
    MasterSource = DS_processos
    TableName = 'Importadores'
    Left = 116
    Top = 96
    object T_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_importadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_importadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_importadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_importadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_importadoresTipoImportador: TStringField
      FieldName = 'Tipo Importador'
      Size = 1
    end
    object T_importadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_importadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_importadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_importadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_importadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_importadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
    object T_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object T_importadoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object T_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object T_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object T_importadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object T_importadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
  end
  object DS_importadores: TDataSource
    DataSet = q_importadores
    Left = 236
    Top = 56
  end
  object T_exportadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Exportadores'
    Left = 116
    Top = 120
    object T_exportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_exportadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_exportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_exportadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_exportadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_exportadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_exportadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_exportadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_exportadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_exportadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_exportadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_exportadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_exportadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_exportadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_exportadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object Q_produtos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Produtos.Empresa, Produtos.Filial, Produtos.Código, Produ' +
        'tos.NCM, cstr(FIRST(Produtos.Descrição)) AS QDESCR, Produtos.Imp' +
        'ortador FROM Produtos'
      
        'GROUP BY Produtos.Empresa, Produtos.Filial, Produtos.Código, Pro' +
        'dutos.NCM, Produtos.Importador'
      
        'HAVING (((Produtos.Empresa)=:empresa) AND ((Produtos.Filial)=:fi' +
        'lial) AND ((Produtos.Importador)=:Importador) AND (Produtos.Códi' +
        'go Like :codigo or FIRST(Produtos.Descrição) Like :qdescri))')
    UpdateMode = upWhereChanged
    Left = 592
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'Importador'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '*PRO*'
      end
      item
        DataType = ftString
        Name = 'qdescri'
        ParamType = ptUnknown
        Value = '*m*'
      end>
    object Q_produtosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Produtos.Empresa'
      Size = 4
    end
    object Q_produtosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Produtos.Filial'
      Size = 4
    end
    object Q_produtosCdigo: TStringField
      FieldName = 'Código'
      Origin = 'DBNMSCOMEX.Produtos.Código'
      Size = 15
    end
    object Q_produtosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.Produtos.NCM'
      Size = 8
    end
    object Q_produtosImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Produtos.Importador'
      Size = 4
    end
    object Q_produtosQDESCR: TStringField
      FieldName = 'QDESCR'
      Size = 255
    end
  end
  object DS_qprodutos: TDataSource
    DataSet = Q_produtos
    Left = 236
    Top = 60
  end
  object T_ncm: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_NCM'
    Left = 588
    Top = 404
    object T_ncmCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object T_ncmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object T_ncmUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Size = 4
    end
    object T_ncmALIQUOTA_II: TStringField
      FieldName = 'ALIQUOTA_II'
      Size = 6
    end
    object T_ncmDATA_INICIO_VIG_II: TStringField
      FieldName = 'DATA_INICIO_VIG_II'
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_II: TStringField
      FieldName = 'DATA_FIM_VIG_II'
      Size = 10
    end
    object T_ncmALIQUOTA_II_MERCOSUL: TStringField
      FieldName = 'ALIQUOTA_II_MERCOSUL'
      Size = 6
    end
    object T_ncmDATA_INICIO_VIG_II_MSUL: TStringField
      FieldName = 'DATA_INICIO_VIG_II_MSUL'
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_II_MSUL: TStringField
      FieldName = 'DATA_FIM_VIG_II_MSUL'
      Size = 10
    end
    object T_ncmALIQUOTA_IPI: TStringField
      FieldName = 'ALIQUOTA_IPI'
      Size = 6
    end
    object T_ncmDATA_INICIO_VIG_IPI: TStringField
      FieldName = 'DATA_INICIO_VIG_IPI'
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_IPI: TStringField
      FieldName = 'DATA_FIM_VIG_IPI'
      Size = 10
    end
  end
  object DS_ncm: TDataSource
    DataSet = T_ncm
    Left = 236
    Top = 60
  end
  object T_moeda: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_MOEDA'
    Left = 240
    object T_moedaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object T_moedaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object DS_moeda: TDataSource
    DataSet = T_moeda
    Left = 236
    Top = 56
  end
  object T_inst: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_INST_FINANC_INTERNACIONAL'
    Left = 252
    Top = 65520
    object T_instCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_instDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object DS_inst: TDataSource
    DataSet = T_inst
    Left = 236
    Top = 52
  end
  object T_moda: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_MODALID_PAGAMENTO'
    Left = 280
    Top = 65520
    object T_modaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_modaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object DS_moda: TDataSource
    DataSet = T_moda
    Left = 236
    Top = 56
  end
  object T_moti: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_MOT_SEM_COBERT_CAMBIAL'
    Left = 556
    Top = 268
    object T_motiCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_motiDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object DS_moti: TDataSource
    DataSet = T_moti
    Left = 236
    Top = 60
  end
  object T_tipospro: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'Tipos_de_Processos'
    Left = 124
    Top = 140
    object T_tiposproCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_tiposproDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
  end
  object DS_tipospro: TDataSource
    DataSet = T_tipospro
    Left = 237
    Top = 56
  end
  object T_transportadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Transportadores'
    Left = 364
    Top = 65524
    object T_transportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_transportadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_transportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_transportadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_transportadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_transportadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_transportadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_transportadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_transportadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_transportadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_transportadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_transportadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_transportadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_transportadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_transportadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object DS_transportadores: TDataSource
    DataSet = T_transportadores
    Left = 236
    Top = 60
  end
  object T_transpprocesso: TTable
    AutoCalcFields = False
    AfterInsert = T_transpprocessoAfterInsert
    AfterPost = T_transpprocessoAfterPost
    BeforeDelete = T_transpprocessoBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Conhecimento_Processo'
    UpdateMode = upWhereChanged
    Left = 372
    Top = 132
    object T_transpprocessoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_transpprocessoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_transpprocessoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_transpprocessoVia: TStringField
      FieldName = 'Via'
      Size = 2
    end
    object T_transpprocessoMultimodal: TBooleanField
      FieldName = 'Multimodal'
    end
    object T_transpprocessoPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object T_transpprocessoLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object T_transpprocessoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object T_transpprocessoTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object T_transpprocessoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object T_transpprocessoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object T_transpprocessoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object T_transpprocessoLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object T_transpprocessoData: TDateTimeField
      FieldName = 'Data'
    end
    object T_transpprocessoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object T_transpprocessoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object T_transpprocessoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object T_transpprocessoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 25
    end
    object T_transpprocessoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object T_transpprocessoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object T_transpprocessoAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object T_transpprocessoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object T_transpprocessoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object T_transpprocessoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object T_transpprocessoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object T_transpprocessoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object T_transpprocessoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object T_transpprocessoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object T_transpprocessoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object T_transpprocessoOperacao_FUNDAP: TBooleanField
      FieldName = 'Operacao_FUNDAP'
    end
    object T_transpprocessoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object T_transpprocessoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object T_transpprocessoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object T_transpprocessoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object T_transpprocessoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object T_transpprocessoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object T_transpprocessoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object T_transpprocessoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object T_transpprocessoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
  end
  object DS_transpprocesso: TDataSource
    DataSet = T_transpprocesso
    Left = 236
    Top = 56
  end
  object T_followup: TTable
    BeforePost = T_followupBeforePost
    AfterPost = T_followupAfterPost
    BeforeDelete = T_followupBeforeDeete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Sequencial'
    MasterFields = 'Empresa;Filial;Código;Sequencial'
    MasterSource = DS_follow
    TableName = 'FollowUp'
    UpdateMode = upWhereChanged
    Left = 368
    Top = 312
    object T_followupEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_followupFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_followupProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_followupCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object T_followupCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object T_followupObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object T_followupData: TDateTimeField
      FieldName = 'Data'
    end
    object T_followupHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object T_followuplink: TStringField
      FieldName = 'link'
      Size = 8
    end
    object T_followupSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object T_followupData_final: TDateTimeField
      FieldName = 'Data_final'
    end
    object T_followupHora_final: TStringField
      FieldName = 'Hora_final'
      Size = 5
    end
    object T_followupDuracao: TIntegerField
      FieldName = 'Duracao'
    end
    object T_followupUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object DS_follow: TDataSource
    DataSet = q_followup
    Left = 456
    Top = 268
  end
  object T_eventos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Descricao'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Eventos'
    Left = 392
    Top = 404
    object T_eventosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_eventosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_eventosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_eventosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object DS_eventos: TDataSource
    DataSet = T_eventos
    Left = 236
    Top = 60
  end
  object T_obseventos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Evento'
    MasterFields = 'Empresa;Filial;Codevento'
    MasterSource = DS_follow
    TableName = 'Obs-Eventos'
    Left = 344
    Top = 400
    object T_obseventosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_obseventosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_obseventosEvento: TStringField
      FieldName = 'Evento'
      Required = True
      Size = 4
    end
    object T_obseventosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_obseventosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object DS_obseventos: TDataSource
    DataSet = T_obseventos
    Left = 236
    Top = 56
  end
  object T_parcelasvar: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    TableName = 'PG_PARC_VAR'
    Left = 624
    Top = 264
    object T_parcelasvarEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_parcelasvarFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_parcelasvarProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_parcelasvarSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 50
    end
    object T_parcelasvarPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object T_parcelasvarDatadePagamento: TStringField
      FieldName = 'Data de Pagamento'
      Size = 6
    end
    object T_parcelasvarValor: TFloatField
      FieldName = 'Valor'
    end
    object T_parcelasvarFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
  end
  object DS_parcelasvar: TDataSource
    DataSet = T_parcelasvar
    Left = 236
    Top = 48
  end
  object q_parcvar: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT pg_parc_var.Empresa, pg_parc_var.Filial, pg_parc_var.Proc' +
        'esso, pg_parc_var.Fatura, pg_parc_var.Sequencial, pg_parc_var.Pe' +
        'rcentual, pg_parc_var.[Data de Pagamento],pg_parc_var.[valor] fr' +
        'om pg_parc_var'
      
        'GROUP BY pg_parc_var.Empresa, pg_parc_var.Filial, pg_parc_var.Pr' +
        'ocesso, pg_parc_var.Fatura, pg_parc_var.Sequencial, pg_parc_var.' +
        'Percentual, pg_parc_var.[Data de Pagamento],pg_parc_var.[valor]'
      
        'HAVING (((pg_parc_var.Empresa)=:empresa) AND ((pg_parc_var.Filia' +
        'l)=:filial) AND ((pg_parc_var.Processo)=:Processo) AND ((pg_parc' +
        '_var.Fatura)=:Fatura))'
      'ORDER BY pg_parc_var.Sequencial')
    UpdateMode = upWhereChanged
    Left = 692
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Fatura'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_parcvarEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.PG_PARC_VAR.Empresa'
      Size = 4
    end
    object q_parcvarFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.PG_PARC_VAR.Filial'
      Size = 4
    end
    object q_parcvarProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.PG_PARC_VAR.Processo'
      Size = 8
    end
    object q_parcvarFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.PG_PARC_VAR.Fatura'
      Size = 10
    end
    object q_parcvarSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.PG_PARC_VAR.Sequencial'
      Size = 50
    end
    object q_parcvarPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'DBNMSCOMEX.PG_PARC_VAR.Percentual'
    end
    object q_parcvarDatadePagamento: TStringField
      FieldName = 'Data de Pagamento'
      Origin = 'DBNMSCOMEX.PG_PARC_VAR.Data de Pagamento'
      Size = 6
    end
    object q_parcvarvalor: TFloatField
      FieldName = 'valor'
    end
  end
  object DS_qparcevar: TDataSource
    DataSet = q_parcvar
    Left = 236
    Top = 52
  end
  object T_pagvinc: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    TableName = 'PG_PERC_VINC'
    Left = 652
    Top = 268
    object T_pagvincEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_pagvincFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_pagvincProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_pagvincSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object T_pagvincFormadePagamento: TStringField
      FieldName = 'Forma de Pagamento'
      Size = 1
    end
    object T_pagvincMoedaNacional: TBooleanField
      FieldName = 'Moeda Nacional'
    end
    object T_pagvincBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object T_pagvincPraca: TStringField
      FieldName = 'Praca'
      Size = 4
    end
    object T_pagvincContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object T_pagvincValorPercentual: TFloatField
      FieldName = 'Valor Percentual'
    end
    object T_pagvincCNPJComprador: TStringField
      FieldName = 'CNPJ Comprador'
      Size = 14
    end
    object T_pagvincTipoCNPJ: TStringField
      FieldName = 'Tipo CNPJ'
      Size = 1
    end
    object T_pagvincValor: TFloatField
      FieldName = 'Valor'
    end
    object T_pagvincFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
  end
  object DS_pagvinc: TDataSource
    DataSet = T_pagvinc
    Left = 236
    Top = 56
  end
  object q_pgvinc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PG_PERC_VINC.Empresa, PG_PERC_VINC.Filial, PG_PERC_VINC.P' +
        'rocesso, PG_PERC_VINC.Fatura, PG_PERC_VINC.Sequencial, PG_PERC_V' +
        'INC.[Forma de Pagamento], PG_PERC_VINC.[Moeda Nacional], PG_PERC' +
        '_VINC.Banco, PG_PERC_VINC.Praca,'
      
        'PG_PERC_VINC.Contrato, PG_PERC_VINC.[Valor Percentual], PG_PERC_' +
        'VINC.[CNPJ Comprador], PG_PERC_VINC.[Tipo CNPJ],  PG_PERC_VINC.[' +
        'valor]'
      'FROM PG_PERC_VINC'
      
        'GROUP BY PG_PERC_VINC.Empresa, PG_PERC_VINC.Filial, PG_PERC_VINC' +
        '.Processo, PG_PERC_VINC.Fatura, PG_PERC_VINC.Sequencial, PG_PERC' +
        '_VINC.[Forma de Pagamento], PG_PERC_VINC.[Moeda Nacional] , PG_P' +
        'ERC_VINC.Banco, PG_PERC_VINC.Praca,'
      
        'PG_PERC_VINC.Contrato, PG_PERC_VINC.[Valor Percentual], PG_PERC_' +
        'VINC.[CNPJ Comprador], PG_PERC_VINC.[Tipo CNPJ],  PG_PERC_VINC.[' +
        'valor]'
      
        'HAVING (((PG_PERC_VINC.Empresa)=:empresa) AND ((PG_PERC_VINC.Fil' +
        'ial)=:filial) AND ((PG_PERC_VINC.Processo)=:Processo) AND ((PG_P' +
        'ERC_VINC.Fatura)=:Fatura) AND ((PG_PERC_VINC.[Forma de Pagamento' +
        '] )=:FormadePagamento))'
      'ORDER BY PG_PERC_VINC.Sequencial')
    UpdateMode = upWhereChanged
    Left = 700
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Fatura'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'FormadePagamento'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_pgvincEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Empresa'
      Size = 4
    end
    object q_pgvincFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Filial'
      Size = 4
    end
    object q_pgvincProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Processo'
      Size = 8
    end
    object q_pgvincFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Fatura'
      Size = 10
    end
    object q_pgvincSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Sequencial'
      Size = 4
    end
    object q_pgvincFormadePagamento: TStringField
      FieldName = 'Forma de Pagamento'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Forma de Pagamento'
      Size = 1
    end
    object q_pgvincMoedaNacional: TBooleanField
      FieldName = 'Moeda Nacional'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Moeda Nacional'
    end
    object q_pgvincBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Banco'
      Size = 5
    end
    object q_pgvincPraca: TStringField
      FieldName = 'Praca'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Praca'
      Size = 4
    end
    object q_pgvincContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Contrato'
      Size = 8
    end
    object q_pgvincValorPercentual: TFloatField
      FieldName = 'Valor Percentual'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Valor Percentual'
    end
    object q_pgvincCNPJComprador: TStringField
      FieldName = 'CNPJ Comprador'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.CNPJ Comprador'
      Size = 14
    end
    object q_pgvincTipoCNPJ: TStringField
      FieldName = 'Tipo CNPJ'
      Origin = 'DBNMSCOMEX.PG_PERC_VINC.Tipo CNPJ'
      Size = 1
    end
    object q_pgvincvalor: TFloatField
      FieldName = 'valor'
    end
  end
  object DS_qpgvinc: TDataSource
    DataSet = q_pgvinc
    Left = 208
    Top = 71
  end
  object T_taxabacen: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_TAXAS_JUROS_BACEN'
    Left = 308
    Top = 65524
    object T_taxabacenCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 4
    end
    object T_taxabacenDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object T_taxabacenMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 3
    end
  end
  object DS_taxabacen: TDataSource
    DataSet = T_taxabacen
    Left = 236
    Top = 56
  end
  object T_acrescimos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;CD_MET_ACRES_VALOR'
    TableName = 'Acrescimos_Faturas'
    Left = 80
    Top = 16
    object T_acrescimosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_acrescimosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_acrescimosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_acrescimosFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object T_acrescimosCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Size = 3
    end
    object T_acrescimosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_acrescimosVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object T_acrescimosCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object T_acrescimosVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
    end
  end
  object DS_acrescimos: TDataSource
    DataSet = T_acrescimos
    Left = 236
    Top = 60
  end
  object T_deducoes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;CD_MET_DEDUC_VALOR'
    TableName = 'Deducoes_Faturas'
    Left = 468
    Top = 65520
    object T_deducoesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_deducoesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_deducoesProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_deducoesFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object T_deducoesCD_MET_DEDUC_VALOR: TStringField
      FieldName = 'CD_MET_DEDUC_VALOR'
      Size = 3
    end
    object T_deducoesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_deducoesVL_DEDUCAO_MNEG: TFloatField
      FieldName = 'VL_DEDUCAO_MNEG'
    end
    object T_deducoesCD_MD_NEGOC_DEDUC: TStringField
      FieldName = 'CD_MD_NEGOC_DEDUC'
      Size = 3
    end
    object T_deducoesVL_DEDUCAO_MN: TFloatField
      FieldName = 'VL_DEDUCAO_MN'
    end
  end
  object DS_deducoes: TDataSource
    DataSet = T_deducoes
    Left = 236
    Top = 60
  end
  object T_concargas: TTable
    AutoCalcFields = False
    AfterPost = T_concargasAfterPost
    BeforeDelete = T_concargasBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Codigo'
    TableName = 'Concargas'
    Left = 548
    Top = 384
    object T_concargasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_concargasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_concargasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_concargasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object T_concargasTipoCarga: TStringField
      FieldName = 'Tipo Carga'
      Size = 4
    end
    object T_concargasDescricao_tipo: TStringField
      FieldName = 'Descricao_tipo'
      Size = 50
    end
    object T_concargasLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
  end
  object DS_concargas: TDataSource
    DataSet = T_concargas
    Left = 236
    Top = 60
  end
  object T_tipocarga: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'Tipos de Cargas'
    Left = 612
    Top = 408
    object T_tipocargaCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_tipocargaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object DS_tipocargas: TDataSource
    DataSet = T_tipocarga
    Left = 236
    Top = 56
  end
  object T_tipoacrescimo: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_ACRESCIMO'
    Left = 140
    Top = 65528
    object T_tipoacrescimoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object T_tipoacrescimoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 250
    end
    object T_tipoacrescimoDESCRICAO_REDUZIDA: TStringField
      FieldName = 'DESCRICAO_REDUZIDA'
      Size = 55
    end
  end
  object DS_tipoacrescimos: TDataSource
    DataSet = T_tipoacrescimo
    Left = 236
    Top = 52
  end
  object T_tipodeducoes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_DEDUCAO'
    Left = 112
    Top = 152
    object T_tipodeducoesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object T_tipodeducoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 250
    end
    object T_tipodeducoesDESCRICAO_REDUZIDA: TStringField
      FieldName = 'DESCRICAO_REDUZIDA'
      Size = 55
    end
  end
  object DS_tipodeducoes: TDataSource
    DataSet = T_tipodeducoes
    Left = 236
    Top = 52
  end
  object T_assosacre: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    TableName = 'TAB_ASSOCIACAO_ACRESCIMO'
    Left = 740
    Top = 408
    object T_assosacreCOD_INCOTERMS: TStringField
      FieldName = 'COD_INCOTERMS'
      Size = 50
    end
    object T_assosacreCOD_ACR_DECR: TStringField
      FieldName = 'COD_ACR_DECR'
      Size = 3
    end
  end
  object DS_assosacre: TDataSource
    DataSet = T_assosacre
    Left = 236
    Top = 56
  end
  object T_assosdedu: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    TableName = 'TAB_ASSOCIACAO_DEDUCAO'
    Left = 128
    Top = 172
    object T_assosdeduCOD_INCOTERMS: TStringField
      FieldName = 'COD_INCOTERMS'
      Size = 50
    end
    object T_assosdeduCOD_ACR_DECR: TStringField
      FieldName = 'COD_ACR_DECR'
      Size = 3
    end
  end
  object DS_assosdedu: TDataSource
    DataSet = T_assosdedu
    Left = 236
    Top = 56
  end
  object Q_acrescimos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Acrescimos_Faturas.Empresa, Acrescimos_Faturas.Filial, Ac' +
        'rescimos_Faturas.Processo, '
      
        'Acrescimos_Faturas.Fatura, Acrescimos_Faturas.CD_MET_ACRES_VALOR' +
        ', Acrescimos_Faturas.Descricao, '
      
        'Acrescimos_Faturas.VL_ACRESCIMO_MOEDA, Acrescimos_Faturas.CD_MD_' +
        'NEGOC_ACRES, Acrescimos_Faturas.VL_ACRESCIMO_MN'
      'FROM Acrescimos_Faturas'
      
        'GROUP BY Acrescimos_Faturas.Empresa, Acrescimos_Faturas.Filial, ' +
        'Acrescimos_Faturas.Processo, Acrescimos_Faturas.Fatura,'
      
        'Acrescimos_Faturas.CD_MET_ACRES_VALOR, Acrescimos_Faturas.Descri' +
        'cao, Acrescimos_Faturas.VL_ACRESCIMO_MOEDA,'
      
        'Acrescimos_Faturas.CD_MD_NEGOC_ACRES, Acrescimos_Faturas.VL_ACRE' +
        'SCIMO_MN'
      
        'HAVING (((Acrescimos_Faturas.Empresa)=:empresa) AND ((Acrescimos' +
        '_Faturas.Filial)=:filial) AND ((Acrescimos_Faturas.Processo)=:Pr' +
        'ocesso) AND ((Acrescimos_Faturas.Fatura)=:Fatura))'
      'ORDER BY Acrescimos_Faturas.CD_MET_ACRES_VALOR')
    Left = 736
    Top = 76
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Fatura'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_acrescimosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Empresa'
      Size = 4
    end
    object Q_acrescimosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Filial'
      Size = 4
    end
    object Q_acrescimosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Processo'
      Size = 8
    end
    object Q_acrescimosFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Fatura'
      Size = 10
    end
    object Q_acrescimosCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.CD_MET_ACRES_VALOR'
      Size = 3
    end
    object Q_acrescimosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.Descricao'
      Size = 50
    end
    object Q_acrescimosVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.VL_ACRESCIMO_MOEDA'
    end
    object Q_acrescimosCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object Q_acrescimosVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
      Origin = 'DBNMSCOMEX.Acrescimos_Faturas.VL_ACRESCIMO_MN'
    end
  end
  object DS_qacrescimos: TDataSource
    DataSet = Q_acrescimos
    Left = 236
    Top = 56
  end
  object Q_deducoes: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Deducoes_Faturas.Empresa, Deducoes_Faturas.Filial, Deduco' +
        'es_Faturas.Processo, '
      
        'Deducoes_Faturas.Fatura, Deducoes_Faturas.CD_MET_DEDUC_VALOR, De' +
        'ducoes_Faturas.Descricao, '
      
        'Deducoes_Faturas.VL_DEDUCAO_MNEG, Deducoes_Faturas.CD_MD_NEGOC_D' +
        'EDUC, Deducoes_Faturas.VL_DEDUCAO_MN'
      'FROM Deducoes_Faturas'
      
        'GROUP BY Deducoes_Faturas.Empresa, Deducoes_Faturas.Filial, Dedu' +
        'coes_Faturas.Processo, Deducoes_Faturas.Fatura,'
      
        'Deducoes_Faturas.CD_MET_DEDUC_VALOR, Deducoes_Faturas.Descricao,' +
        ' Deducoes_Faturas.VL_DEDUCAO_MNEG,'
      
        'Deducoes_Faturas.CD_MD_NEGOC_DEDUC, Deducoes_Faturas.VL_DEDUCAO_' +
        'MN'
      
        'HAVING (((Deducoes_Faturas.Empresa)=:empresa) AND ((Deducoes_Fat' +
        'uras.Filial)=:filial) AND ((Deducoes_Faturas.Processo)=:Processo' +
        ') AND ((Deducoes_Faturas.Fatura)=:Fatura))'
      'ORDER BY Deducoes_Faturas.CD_MET_DEDUC_VALOR')
    UpdateMode = upWhereChanged
    Left = 736
    Top = 100
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Fatura'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_deducoesEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.Empresa'
      Size = 4
    end
    object Q_deducoesFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.Filial'
      Size = 4
    end
    object Q_deducoesProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.Processo'
      Size = 8
    end
    object Q_deducoesFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.Fatura'
      Size = 10
    end
    object Q_deducoesCD_MET_DEDUC_VALOR: TStringField
      FieldName = 'CD_MET_DEDUC_VALOR'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.CD_MET_DEDUC_VALOR'
      Size = 3
    end
    object Q_deducoesDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.Descricao'
      Size = 50
    end
    object Q_deducoesVL_DEDUCAO_MNEG: TFloatField
      FieldName = 'VL_DEDUCAO_MNEG'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.VL_DEDUCAO_MNEG'
    end
    object Q_deducoesCD_MD_NEGOC_DEDUC: TStringField
      FieldName = 'CD_MD_NEGOC_DEDUC'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.CD_MD_NEGOC_DEDUC'
      Size = 3
    end
    object Q_deducoesVL_DEDUCAO_MN: TFloatField
      FieldName = 'VL_DEDUCAO_MN'
      Origin = 'DBNMSCOMEX.Deducoes_Faturas.VL_DEDUCAO_MN'
    end
  end
  object DS_qdeducoes: TDataSource
    DataSet = Q_deducoes
    Left = 236
    Top = 56
  end
  object T_tipoembalagem: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_TP_EMBALAGEM'
    Left = 128
    Top = 204
    object T_tipoembalagemCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object T_tipoembalagemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object ds_tipoembalagem: TDataSource
    DataSet = T_tipoembalagem
    Left = 236
    Top = 56
  end
  object T_embalagempro: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;TipoEmbalagem'
    TableName = 'Embalagem_Processo'
    Left = 180
    Top = 92
    object T_embalagemproEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_embalagemproFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_embalagemproProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_embalagemproTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Size = 2
    end
    object T_embalagemproDescricaoEmbalagem: TStringField
      FieldName = 'DescricaoEmbalagem'
      Size = 50
    end
    object T_embalagemproQuantidade: TStringField
      FieldName = 'Quantidade'
      Size = 5
    end
  end
  object ds_embalagempro: TDataSource
    DataSet = T_embalagempro
    Left = 236
    Top = 56
  end
  object q_embalagempro: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Embalagem_Processo.Empresa, Embalagem_Processo.Filial, Em' +
        'balagem_Processo.Processo, Embalagem_Processo.TipoEmbalagem, Emb' +
        'alagem_Processo.DescricaoEmbalagem ,Embalagem_Processo.Quantidad' +
        'e FROM Embalagem_Processo'
      
        'GROUP BY Embalagem_Processo.Empresa, Embalagem_Processo.Filial, ' +
        'Embalagem_Processo.Processo, Embalagem_Processo.TipoEmbalagem, E' +
        'mbalagem_Processo.DescricaoEmbalagem,Embalagem_Processo.Quantida' +
        'de             '
      
        'HAVING (((Embalagem_Processo.Empresa)=:empresa) AND ((Embalagem_' +
        'Processo.Filial)=:filial) AND ((Embalagem_Processo.Processo)=:Pr' +
        'ocesso))'
      'ORDER BY Embalagem_Processo.TipoEmbalagem')
    UpdateMode = upWhereChanged
    Left = 740
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_embalagemproEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Empresa'
      Size = 4
    end
    object q_embalagemproFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Filial'
      Size = 4
    end
    object q_embalagemproProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Processo'
      Size = 8
    end
    object q_embalagemproTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.TipoEmbalagem'
      Size = 2
    end
    object q_embalagemproDescricaoEmbalagem: TStringField
      FieldName = 'DescricaoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.DescricaoEmbalagem'
      Size = 50
    end
    object q_embalagemproQuantidade: TStringField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Quantidade'
      Size = 5
    end
  end
  object ds_qembalagempro: TDataSource
    DataSet = q_embalagempro
    Left = 236
    Top = 56
  end
  object q_concargas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Concargas.Empresa, Concargas.Filial, Concargas.Processo, ' +
        'Concargas.Codigo, Concargas.[Tipo Carga], Concargas.Descricao_ti' +
        'po, Concargas.Lacre FROM Concargas'
      
        'GROUP BY Concargas.Empresa, Concargas.Filial, Concargas.Processo' +
        ', Concargas.Codigo, Concargas.[Tipo Carga], Concargas.Descricao_' +
        'tipo, Concargas.Lacre             '
      
        'HAVING (((Concargas.Empresa)=:empresa) AND ((Concargas.Filial)=:' +
        'filial) AND ((Concargas.Processo)=:Processo))'
      'ORDER BY Concargas.Codigo')
    UpdateMode = upWhereChanged
    Left = 732
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_concargasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Concargas.Empresa'
      Size = 4
    end
    object q_concargasFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Concargas.Filial'
      Size = 4
    end
    object q_concargasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Concargas.Processo'
      Size = 8
    end
    object q_concargasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Concargas.Codigo'
      Size = 15
    end
    object q_concargasTipoCarga: TStringField
      FieldName = 'Tipo Carga'
      Origin = 'DBNMSCOMEX.Concargas.Tipo Carga'
      Size = 4
    end
    object q_concargasDescricao_tipo: TStringField
      FieldName = 'Descricao_tipo'
      Origin = 'DBNMSCOMEX.Concargas.Descricao_tipo'
      Size = 50
    end
    object q_concargasLacre: TStringField
      FieldName = 'Lacre'
      Origin = 'DBNMSCOMEX.Concargas.Lacre'
      Size = 15
    end
  end
  object ds_qconcargas: TDataSource
    DataSet = q_concargas
    Left = 236
    Top = 60
  end
  object T_pais: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_PAIS'
    Left = 188
    Top = 104
    object T_paisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object T_paisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object ds_pais: TDataSource
    DataSet = T_pais
    Left = 236
    Top = 60
  end
  object T_urf: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_URF'
    Left = 132
    Top = 92
    object T_urfCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object T_urfDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object ds_urf: TDataSource
    DataSet = T_urf
    Left = 236
    Top = 56
  end
  object T_recintos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_REC_ALFANDEGADO'
    Left = 640
    Top = 304
    object T_recintosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object T_recintosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object T_recintosCOD_ORGAO_REC: TStringField
      FieldName = 'COD_ORGAO_REC'
      Size = 7
    end
  end
  object ds_recintos: TDataSource
    DataSet = T_recintos
    Left = 236
    Top = 60
  end
  object T_setores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Orgao;Recinto;Setor'
    TableName = 'TAB_RECINTO_SETORES_IMPORTACAO'
    Left = 556
    Top = 416
    object T_setoresOrgao: TStringField
      FieldName = 'Orgao'
      Size = 7
    end
    object T_setoresRecinto: TStringField
      FieldName = 'Recinto'
      Size = 7
    end
    object T_setoresSetor: TStringField
      FieldName = 'Setor'
      Size = 3
    end
    object T_setoresNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object ds_setores: TDataSource
    DataSet = T_setores
    Left = 236
    Top = 60
  end
  object T_armazem: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'Armazem'
    Left = 452
    Top = 404
    object T_armazemCodigo: TStringField
      FieldName = 'Codigo'
      Size = 3
    end
    object T_armazemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object ds_armazem: TDataSource
    DataSet = T_armazem
    Left = 236
    Top = 56
  end
  object T_armazempro: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;CodArmazem'
    TableName = 'Armazem_Processo'
    Left = 516
    Top = 388
    object T_armazemproEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_armazemproFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_armazemproProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_armazemproCodArmazem: TStringField
      FieldName = 'CodArmazem'
      Size = 3
    end
    object T_armazemproNome_Armazem: TStringField
      FieldName = 'Nome_Armazem'
      Size = 50
    end
  end
  object ds_armazempro: TDataSource
    DataSet = T_armazempro
    Left = 236
    Top = 52
  end
  object Q_armazempro: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Armazem_Processo.Empresa, Armazem_Processo.Filial, Armaze' +
        'm_Processo.Processo, Armazem_Processo.CodArmazem, Armazem_Proces' +
        'so.Nome_Armazem FROM Armazem_Processo'
      
        'GROUP BY Armazem_Processo.Empresa, Armazem_Processo.Filial, Arma' +
        'zem_Processo.Processo, Armazem_Processo.CodArmazem, Armazem_Proc' +
        'esso.Nome_Armazem             '
      
        'HAVING (((Armazem_Processo.Empresa)=:empresa) AND ((Armazem_Proc' +
        'esso.Filial)=:filial) AND ((Armazem_Processo.Processo)=:Processo' +
        '))'
      'ORDER BY Armazem_Processo.CodArmazem')
    UpdateMode = upWhereChanged
    Left = 740
    Top = 148
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_armazemproEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Armazem_Processo.Empresa'
      Size = 4
    end
    object Q_armazemproFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Armazem_Processo.Filial'
      Size = 4
    end
    object Q_armazemproProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Armazem_Processo.Processo'
      Size = 8
    end
    object Q_armazemproCodArmazem: TStringField
      FieldName = 'CodArmazem'
      Origin = 'DBNMSCOMEX.Armazem_Processo.CodArmazem'
      Size = 3
    end
    object Q_armazemproNome_Armazem: TStringField
      FieldName = 'Nome_Armazem'
      Origin = 'DBNMSCOMEX.Armazem_Processo.Nome_Armazem'
      Size = 50
    end
  end
  object ds_qarmazempro: TDataSource
    DataSet = Q_armazempro
    Left = 236
    Top = 52
  end
  object T_tributositem: TTable
    AutoCalcFields = False
    AfterInsert = T_tributositemAfterInsert
    AfterPost = T_tributositemAfterPost
    BeforeDelete = T_tributositemBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial_Item;Sequencial'
    TableName = 'Tributacao_Item_Fatura'
    UpdateMode = upWhereChanged
    Left = 508
    Top = 404
    object T_tributositemEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_tributositemFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_tributositemProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_tributositemFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object T_tributositemSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      Required = True
      Size = 4
    end
    object T_tributositemSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object T_tributositemCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
    object T_tributositemAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
    end
    object T_tributositemMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      Size = 2
    end
    object T_tributositemCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object T_tributositemCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object T_tributositemIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object T_tributositemIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object T_tributositemCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object T_tributositemACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      Size = 3
    end
    object T_tributositemNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      Size = 5
    end
    object T_tributositemALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object T_tributositemRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object T_tributositemAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object T_tributositemValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object T_tributositemValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object T_tributositemFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Size = 2
    end
    object T_tributositemNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object T_tributositemRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object T_tributositemBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object T_tributositemAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object T_tributositemValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object T_tributositemValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object T_tributositemNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Size = 5
    end
    object T_tributositemPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object T_tributositemPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object T_tributositemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_tributositemAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object T_tributositemSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object T_tributositemPercentual_EX: TFloatField
      FieldName = 'Percentual_EX'
    end
    object T_tributositemCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object T_tributositemDDE: TStringField
      FieldName = 'DDE'
      Size = 15
    end
    object T_tributositemRE: TStringField
      FieldName = 'RE'
      Size = 15
    end
    object T_tributositemPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
  end
  object DS_tributositem: TDataSource
    DataSet = T_tributositem
    Left = 236
    Top = 60
  end
  object T_aladi: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    TableName = 'TAB_ALADI'
    Left = 500
    Top = 407
    object T_aladiCodigo: TStringField
      FieldName = 'Codigo'
      Size = 3
    end
    object T_aladiDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object ds_aladi: TDataSource
    DataSet = T_aladi
    Left = 236
    Top = 60
  end
  object T_fundamentolegal: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    TableName = 'TAB_REGIME_FUNDAMENTO'
    Left = 652
    Top = 414
    object T_fundamentolegalRegime: TStringField
      FieldName = 'Regime'
      Size = 1
    end
    object T_fundamentolegalCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object T_fundamentolegalDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object ds_fundamentolegal: TDataSource
    DataSet = T_fundamentolegal
    Left = 236
    Top = 60
  end
  object T_atos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Tipo_Ato;Numero'
    TableName = 'Atos_Legais'
    Left = 408
    Top = 406
    object T_atosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_atosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_atosTipo_Ato: TStringField
      FieldName = 'Tipo_Ato'
      Size = 1
    end
    object T_atosNumero: TStringField
      FieldName = 'Numero'
      Size = 5
    end
    object T_atosEX: TStringField
      FieldName = 'EX'
      Size = 3
    end
    object T_atosTipo_Ato_Legal: TStringField
      FieldName = 'Tipo_Ato_Legal'
      Size = 10
    end
    object T_atosOrgao_Emissor: TStringField
      FieldName = 'Orgao_Emissor'
      Size = 10
    end
    object T_atosAno_Ato_Legal: TStringField
      FieldName = 'Ano_Ato_Legal'
      Size = 4
    end
  end
  object ds_atos: TDataSource
    DataSet = T_atos
    Left = 236
    Top = 60
  end
  object Q_itenstributaveis: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select * from ItensFaturas'
      
        'Where empresa = :empresa and filial = :filial and Processo = :Pr' +
        'ocesso and (ItensFaturas.Saldo_Tributavel >0) '
      'ORDER BY ItensFaturas.fatura,Val(ItensFaturas.sequencial)')
    UpdateMode = upWhereChanged
    Left = 736
    Top = 166
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_itenstributaveisEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.ItensFaturas.Empresa'
      Size = 4
    end
    object Q_itenstributaveisFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Filial'
      Size = 4
    end
    object Q_itenstributaveisProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.ItensFaturas.Processo'
      Size = 8
    end
    object Q_itenstributaveisFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.ItensFaturas.Fatura'
      Size = 15
    end
    object Q_itenstributaveisSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Sequencial'
      Size = 4
    end
    object Q_itenstributaveisPagina: TStringField
      FieldName = 'Pagina'
      Origin = 'DBNMSCOMEX.ItensFaturas.Pagina'
      Size = 3
    end
    object Q_itenstributaveisProduto: TStringField
      FieldName = 'Produto'
      Origin = 'DBNMSCOMEX.ItensFaturas.Produto'
      Size = 15
    end
    object Q_itenstributaveisDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Origin = 'DBNMSCOMEX.ItensFaturas.Descricao_Produto'
      Size = 120
    end
    object Q_itenstributaveisNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.ItensFaturas.NCM'
      Size = 8
    end
    object Q_itenstributaveisUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'DBNMSCOMEX.ItensFaturas.Unidade'
      Size = 4
    end
    object Q_itenstributaveisReferencia: TStringField
      FieldName = 'Referencia'
      Origin = 'DBNMSCOMEX.ItensFaturas.Referencia'
      Size = 30
    end
    object Q_itenstributaveisQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.ItensFaturas.Quantidade'
    end
    object Q_itenstributaveisValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
      Origin = 'DBNMSCOMEX.ItensFaturas.Valor Unitário'
    end
    object Q_itenstributaveisValorTotal: TFloatField
      FieldName = 'Valor Total'
      Origin = 'DBNMSCOMEX.ItensFaturas.Valor Total'
    end
    object Q_itenstributaveisPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso Unitário'
    end
    object Q_itenstributaveisPesoTotal: TFloatField
      FieldName = 'Peso Total'
      Origin = 'DBNMSCOMEX.ItensFaturas.Peso Total'
    end
    object Q_itenstributaveisSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
      Origin = 'DBNMSCOMEX.ItensFaturas.Saldo_Tributavel'
    end
  end
  object ds_qitenstributaveis: TDataSource
    DataSet = Q_itenstributaveis
    Left = 236
    Top = 52
  end
  object q_tributoitem: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select * from Tributacao_Item_Fatura'
      
        'Where empresa = :empresa and filial = :filial and Processo = :Pr' +
        'ocesso '
      
        'ORDER BY Tributacao_Item_Fatura.fatura,Val(Tributacao_Item_Fatur' +
        'a.sequencial_item),Val(Tributacao_Item_Fatura.sequencial)')
    UpdateMode = upWhereChanged
    Left = 738
    Top = 181
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_tributoitemEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Empresa'
      Size = 4
    end
    object q_tributoitemFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Filial'
      Size = 4
    end
    object q_tributoitemProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      Size = 8
    end
    object q_tributoitemFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Fatura'
      Size = 15
    end
    object q_tributoitemSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Sequencial_Item'
      Size = 4
    end
    object q_tributoitemSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Sequencial'
      Size = 4
    end
    object q_tributoitemCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Certificado_Origem'
      Size = 15
    end
    object q_tributoitemAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Ato_Concessorio'
    end
    object q_tributoitemCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object q_tributoitemACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.ACORDO_ALADI'
      Size = 3
    end
    object q_tributoitemALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.ALIQUOTA_ALADI'
    end
    object q_tributoitemRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_II'
      Size = 1
    end
    object q_tributoitemFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Fundamento_Legal_II'
      Size = 2
    end
    object q_tributoitemNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Numero_Ato_Legal_II'
      Size = 5
    end
    object q_tributoitemRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_IPI'
      Size = 1
    end
    object q_tributoitemNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Numero_Ato_Legal_IPI'
      Size = 5
    end
    object q_tributoitemPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Percentual_Reducao_II'
    end
    object q_tributoitemPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Percentual_Reduca_IPI'
    end
    object q_tributoitemQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Quantidade'
    end
  end
  object ds_qtributoitem: TDataSource
    DataSet = q_tributoitem
    Left = 236
    Top = 52
  end
  object q_totpag: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, ItensFaturas.Fatura, ItensFaturas.Pagina,'
      
        'Sum(ItensFaturas.Quantidade) AS SomaDeQuantidade, Sum(ItensFatur' +
        'as.[Valor Total]) AS [SomaDeValor Total],'
      
        'Sum(ItensFaturas.Peso_Unitario_Acertado) AS SomaDePeso_Unitario_' +
        'Acertado, Sum(ItensFaturas.Peso_Total_Acertado) AS SomaDePeso_To' +
        'tal_Acertado FROM ItensFaturas '
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, ItensFaturas.Fatura, ItensFaturas.Pagina'
      
        'HAVING (((ItensFaturas.Empresa)= :empresa) AND ((ItensFaturas.Fi' +
        'lial)= :filial) AND ((ItensFaturas.Processo)= :processo) AND ((I' +
        'tensFaturas.Fatura)=:fatura))'
      'ORDER BY val(ItensFaturas.Pagina)')
    UpdateMode = upWhereChanged
    Left = 736
    Top = 210
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'fatura'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_totpagEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_totpagFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_totpagProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_totpagFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object q_totpagPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object q_totpagSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object q_totpagSomaDeValorTotal: TFloatField
      FieldName = 'SomaDeValor Total'
    end
    object q_totpagSomaDePeso_Unitario_Acertado: TFloatField
      FieldName = 'SomaDePeso_Unitario_Acertado'
    end
    object q_totpagSomaDePeso_Total_Acertado: TFloatField
      FieldName = 'SomaDePeso_Total_Acertado'
    end
  end
  object ds_qtotpag: TDataSource
    DataSet = q_totpag
    Left = 236
    Top = 60
  end
  object T_tiposacrescimos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Tipos_Acrescimos_Faturas'
    Left = 424
    Top = 65522
    object T_tiposacrescimosIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 50
    end
    object T_tiposacrescimosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object T_tiposacrescimosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_tiposacrescimosCod_Siscomex: TStringField
      FieldName = 'Cod_Siscomex'
      Size = 50
    end
  end
  object ds_tiposacrescimos: TDataSource
    DataSet = T_tiposacrescimos
    Left = 236
    Top = 56
  end
  object T_tiposreducoes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Tipos_Reducoes_Faturas'
    Left = 420
    Top = 258
    object T_tiposreducoesIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 50
    end
    object T_tiposreducoesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 50
    end
    object T_tiposreducoesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_tiposreducoesCod_Siscomex: TStringField
      FieldName = 'Cod_Siscomex'
      Size = 50
    end
  end
  object ds_tiposreducoes: TDataSource
    DataSet = T_tiposreducoes
    Left = 236
    Top = 56
  end
  object T_numerador: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    TableName = 'NUMERADOR_DECLARAÇÃO'
    Left = 541
    Top = 410
    object T_numeradorNR_PROV_DECLARACAO: TIntegerField
      FieldName = 'NR_PROV_DECLARACAO'
    end
    object T_numeradorNR_ANO_DECLARACAO: TSmallintField
      FieldName = 'NR_ANO_DECLARACAO'
    end
  end
  object ds_numerador: TDataSource
    DataSet = T_numerador
    Left = 236
    Top = 56
  end
  object T_di: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO'
    TableName = 'DECLARAÇÃO_IMPORTAÇÃO'
    Left = 433
    Top = 378
    object T_diNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_diNR_IDENT_USUARIO: TStringField
      FieldName = 'NR_IDENT_USUARIO'
      Size = 15
    end
    object T_diNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object T_diNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_diDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object T_diDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object T_diDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object T_diCD_TIPO_DECLARACAO: TStringField
      FieldName = 'CD_TIPO_DECLARACAO'
      Size = 2
    end
    object T_diCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object T_diCD_TIPO_IMPORTADOR: TStringField
      FieldName = 'CD_TIPO_IMPORTADOR'
      Size = 1
    end
    object T_diNR_IMPORTADOR: TStringField
      FieldName = 'NR_IMPORTADOR'
      Size = 14
    end
    object T_diCD_PAIS_IMPORTADOR: TStringField
      FieldName = 'CD_PAIS_IMPORTADOR'
      Size = 3
    end
    object T_diNM_IMPORTADOR: TStringField
      FieldName = 'NM_IMPORTADOR'
      Size = 60
    end
    object T_diNR_TEL_IMPORTADOR: TStringField
      FieldName = 'NR_TEL_IMPORTADOR'
      Size = 15
    end
    object T_diED_LOGR_IMPORTADOR: TStringField
      FieldName = 'ED_LOGR_IMPORTADOR'
      Size = 40
    end
    object T_diED_NR_IMPORTADOR: TStringField
      FieldName = 'ED_NR_IMPORTADOR'
      Size = 6
    end
    object T_diED_COMPL_IMPO: TStringField
      FieldName = 'ED_COMPL_IMPO'
      Size = 21
    end
    object T_diED_BA_IMPORTADOR: TStringField
      FieldName = 'ED_BA_IMPORTADOR'
      Size = 25
    end
    object T_diED_MUN_IMPORTADOR: TStringField
      FieldName = 'ED_MUN_IMPORTADOR'
      Size = 25
    end
    object T_diED_UF_IMPORTADOR: TStringField
      FieldName = 'ED_UF_IMPORTADOR'
      Size = 2
    end
    object T_diED_CEP_IMPORTADOR: TStringField
      FieldName = 'ED_CEP_IMPORTADOR'
      Size = 8
    end
    object T_diNR_CPF_REPR_LEGAL: TStringField
      FieldName = 'NR_CPF_REPR_LEGAL'
      Size = 11
    end
    object T_diCD_MODALIDADE_DESP: TStringField
      FieldName = 'CD_MODALIDADE_DESP'
      Size = 1
    end
    object T_diIN_OPERACAO_FUNDAP: TBooleanField
      FieldName = 'IN_OPERACAO_FUNDAP'
    end
    object T_diCD_URF_ENTR_CARGA: TStringField
      FieldName = 'CD_URF_ENTR_CARGA'
      Size = 7
    end
    object T_diCD_URF_DESPACHO: TStringField
      FieldName = 'CD_URF_DESPACHO'
      Size = 7
    end
    object T_diCD_TIPO_CONSIG: TStringField
      FieldName = 'CD_TIPO_CONSIG'
      Size = 1
    end
    object T_diNR_CONSIGNATARIO: TStringField
      FieldName = 'NR_CONSIGNATARIO'
      Size = 14
    end
    object T_diNM_CONSIGNATARIO: TStringField
      FieldName = 'NM_CONSIGNATARIO'
      Size = 60
    end
    object T_diCD_PAIS_PROC_CARGA: TStringField
      FieldName = 'CD_PAIS_PROC_CARGA'
      Size = 3
    end
    object T_diCD_VIA_TRANSP_CARG: TStringField
      FieldName = 'CD_VIA_TRANSP_CARG'
      Size = 2
    end
    object T_diIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object T_diNR_VEICULO_TRANSP: TStringField
      FieldName = 'NR_VEICULO_TRANSP'
      Size = 15
    end
    object T_diNM_VEICULO_TRANSP: TStringField
      FieldName = 'NM_VEICULO_TRANSP'
      Size = 30
    end
    object T_diNM_TRANSPORTADOR: TStringField
      FieldName = 'NM_TRANSPORTADOR'
      Size = 60
    end
    object T_diCD_BANDEIRA_TRANSP: TStringField
      FieldName = 'CD_BANDEIRA_TRANSP'
      Size = 3
    end
    object T_diCD_TIPO_AG_CARGA: TStringField
      FieldName = 'CD_TIPO_AG_CARGA'
      Size = 1
    end
    object T_diNR_AGENTE_CARGA: TStringField
      FieldName = 'NR_AGENTE_CARGA'
      Size = 14
    end
    object T_diCD_TIPO_DCTO_CARGA: TStringField
      FieldName = 'CD_TIPO_DCTO_CARGA'
      Size = 2
    end
    object T_diNR_DCTO_CARGA: TStringField
      FieldName = 'NR_DCTO_CARGA'
      Size = 18
    end
    object T_diNR_DCTO_CARGA_MAST: TStringField
      FieldName = 'NR_DCTO_CARGA_MAST'
      Size = 18
    end
    object T_diNM_LOCAL_EMBARQUE: TStringField
      FieldName = 'NM_LOCAL_EMBARQUE'
      Size = 50
    end
    object T_diDT_EMBARQUE: TStringField
      FieldName = 'DT_EMBARQUE'
      Size = 8
    end
    object T_diCD_UTIL_DCTO_CARGA: TStringField
      FieldName = 'CD_UTIL_DCTO_CARGA'
      Size = 1
    end
    object T_diPB_CARGA: TStringField
      FieldName = 'PB_CARGA'
      Size = 15
    end
    object T_diPL_CARGA: TStringField
      FieldName = 'PL_CARGA'
      Size = 15
    end
    object T_diDT_CHEGADA_CARGA: TStringField
      FieldName = 'DT_CHEGADA_CARGA'
      Size = 8
    end
    object T_diCD_TIPO_MANIFESTO: TStringField
      FieldName = 'CD_TIPO_MANIFESTO'
      Size = 1
    end
    object T_diNR_MANIFESTO: TStringField
      FieldName = 'NR_MANIFESTO'
      Size = 15
    end
    object T_diCD_RECINTO_ALFAND: TStringField
      FieldName = 'CD_RECINTO_ALFAND'
      Size = 7
    end
    object T_diCD_SETOR_ARMAZENAM: TStringField
      FieldName = 'CD_SETOR_ARMAZENAM'
      Size = 3
    end
    object T_diCD_MOEDA_FRETE: TStringField
      FieldName = 'CD_MOEDA_FRETE'
      Size = 3
    end
    object T_diVL_TOT_FRT_PREPAID: TFloatField
      FieldName = 'VL_TOT_FRT_PREPAID'
    end
    object T_diVL_TOT_FRT_COLLECT: TFloatField
      FieldName = 'VL_TOT_FRT_COLLECT'
    end
    object T_diVL_FRETE_TNAC_MNEG: TFloatField
      FieldName = 'VL_FRETE_TNAC_MNEG'
    end
    object T_diVL_TOTAL_FRETE_MN: TFloatField
      FieldName = 'VL_TOTAL_FRETE_MN'
    end
    object T_diCD_MOEDA_SEGURO: TStringField
      FieldName = 'CD_MOEDA_SEGURO'
      Size = 3
    end
    object T_diVL_TOT_SEGURO_MNEG: TFloatField
      FieldName = 'VL_TOT_SEGURO_MNEG'
    end
    object T_diVL_TOTAL_SEG_MN: TFloatField
      FieldName = 'VL_TOTAL_SEG_MN'
    end
    object T_diCD_MOEDA_DESPESAS: TStringField
      FieldName = 'CD_MOEDA_DESPESAS'
      Size = 3
    end
    object T_diVL_TOT_DESPS_MNEG: TFloatField
      FieldName = 'VL_TOT_DESPS_MNEG'
    end
    object T_diVL_TOT_DESPS_MN: TFloatField
      FieldName = 'VL_TOT_DESPS_MN'
    end
    object T_diCD_MOEDA_MLE: TStringField
      FieldName = 'CD_MOEDA_MLE'
      Size = 3
    end
    object T_diVL_TOT_MLE_MNEG: TFloatField
      FieldName = 'VL_TOT_MLE_MNEG'
    end
    object T_diVL_TOTAL_MLE_MN: TFloatField
      FieldName = 'VL_TOTAL_MLE_MN'
    end
    object T_diIN_MOEDA_UNICA: TBooleanField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object T_diTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object T_diCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object T_diNR_CONTA_PGTO_TRIB: TStringField
      FieldName = 'NR_CONTA_PGTO_TRIB'
      Size = 19
    end
  end
  object ds_di: TDataSource
    DataSet = T_di
    Left = 236
    Top = 56
  end
  object T_cambio: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_CONVERSAO_CAMBIO'
    Left = 441
    Top = 65523
    object T_cambioCodigo: TStringField
      FieldName = 'Codigo'
      Size = 3
    end
    object T_cambioDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object T_cambioTaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      Size = 9
    end
    object T_cambioVigencia_Inicio_Taxa: TStringField
      FieldName = 'Vigencia_Inicio_Taxa'
      Size = 10
    end
    object T_cambioVigencia_Fim_Taxa: TStringField
      FieldName = 'Vigencia_Fim_Taxa'
      Size = 10
    end
  end
  object ds_cambio: TDataSource
    DataSet = T_cambio
    Left = 236
    Top = 56
  end
  object T_motadmtemp: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_MOT_ADMISSAO_TEMP'
    Left = 80
    Top = 442
    object T_motadmtempCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object T_motadmtempDescricao: TStringField
      FieldName = 'Descricao'
      Size = 253
    end
  end
  object ds_motadmtemp: TDataSource
    DataSet = T_motadmtemp
    Left = 236
    Top = 56
  end
  object T_valoracao: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_METODO_VALOR_ADUANEIRA'
    Left = 610
    Top = 278
    object T_valoracaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_valoracaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object ds_valoracao: TDataSource
    DataSet = T_valoracao
    Left = 236
    Top = 52
  end
  object Q_adicoes: TQuery
    AfterScroll = Q_adicoesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, Conhecimento_Processo.URF_chegada, Conhecimento_Processo.Via,' +
        ' Conhecimento_Processo.Multimodal, Exportadores.[Razão Social], ' +
        'Exportadores.Endereço, Exportadores.Número, Exportadores.Complem' +
        'ento, Exportadores.Cidade, Exportadores.Estado, Exportadores.Paí' +
        's, ItensFaturas.NCM, Conhecimento_Processo.Pais_Procedencia, [Fa' +
        'bricantes / Produtores].[Razão Social] AS FABNOME, [Fabricantes ' +
        '/ Produtores].Endereço AS FABEND, [Fabricantes / Produtores].Núm' +
        'ero AS FABNUM, [Fabricantes / Produtores].Complemento AS FABCOMP' +
        ', [Fabricantes / Produtores].Cidade AS FABCID, [Fabricantes / Pr' +
        'odutores].Estado AS FABEST, [Fabricantes / Produtores].País AS F' +
        'ABPAI, ItensFaturas.NCM AS NBM, ItensFaturas.NALADI, Sum(([itens' +
        'faturas].[peso_total_acertado]/[itensfaturas].[quantidade])*[tri' +
        'butacao_item_fatura].[quantidade]) AS Peso_Total_Acertado, Sum(T' +
        'ributacao_Item_Fatura.Quantidade) AS SomaDeQuantidade, Sum((([It' +
        'ensFaturas].[Rateio_Frete_prepaid]+[ItensFaturas].[Rateio_Frete_' +
        'collect])+[Itensfaturas].[Rateio_Frete_ternac])*[Tributacao_Item' +
        '_Fatura].[quantidade]) AS Frete, Sum([ItensFaturas].[Rateio_segu' +
        'ro]*[Tributacao_Item_Fatura].[Quantidade]) AS Seguro, First(Fatu' +
        'ras.Vinculacao) AS vinculacao, Tributacao_Item_Fatura.CD_APLICAC' +
        'AO_MERC, First(Faturas.Moeda) AS moeda, First(Faturas.Incoterm) ' +
        'AS incoterm, First(Faturas.Condição) AS Condição, Sum(([itensfat' +
        'uras].[Valor_Aduaneiro]/[itensfaturas].[quantidade])*[Tributacao' +
        '_Item_Fatura].[quantidade]) AS Valor_aduaneiro, Tributacao_Item_' +
        'Fatura.CD_METOD_VALORACAO, Tributacao_Item_Fatura.CD_TIPO_ACORDO' +
        '_TAR, Tributacao_Item_Fatura.ACORDO_ALADI, Tributacao_Item_Fatur' +
        'a.Regime_Tributacao_II, Tributacao_Item_Fatura.Fundamento_Legal_' +
        'II, Tributacao_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item_Fatu' +
        'ra.Numero_Ato_Legal_II, Tributacao_Item_Fatura.Percentual_Reduca' +
        'o_II, First(Faturas.[Cobertura Cambial]) AS [Cobertura Cambial],' +
        ' First(Faturas.[Modalidade de Pagamento]) AS [Modalidade de Paga' +
        'mento], First(Faturas.[Instituicao Financiadora]) AS [Instituica' +
        'o Financiadora], First(Faturas.[Motivo Sem Cobertura]) AS [Motiv' +
        'o Sem Cobertura], First(Faturas.[Numero de parcelas]) AS [Numero' +
        ' de parcelas], First(Faturas.Periodicidade) AS Periodicidade, Fi' +
        'rst(Faturas.[Indicador Periodicidade]) AS [Indicador Periodicida' +
        'de], First(Faturas.[Taxa de Juros]) AS [Taxa de Juros], First(Fa' +
        'turas.[ROF BACEN]) AS [ROF BACEN], First(Faturas.[Percentual ROF' +
        ']) AS [Percentual ROF], First(Faturas.[Codigo Taxa de Juros]) AS' +
        ' [Codigo Taxa de Juros], Tributacao_Item_Fatura.IN_BEM_ENCOMENDA' +
        ', Tributacao_Item_Fatura.IN_MATERIAL_USADO, Sum(([itensfaturas].' +
        '[VMLE]/[itensfaturas].[quantidade])*[Tributacao_Item_Fatura].[qu' +
        'antidade]) AS VMLE, Sum(([itensfaturas].[Base_Calc_ii]/[itensfat' +
        'uras].[quantidade])*[Tributacao_Item_Fatura].[quantidade]) AS Ba' +
        'se_Calc_ii, Tributacao_Item_Fatura.ALIQUOTA_ALADI, Tributacao_It' +
        'em_Fatura.Regime_Tributacao_IPI, Tributacao_Item_Fatura.Numero_A' +
        'to_Legal_IPI, Tributacao_Item_Fatura.Percentual_Reduca_IPI, Firs' +
        't(Faturas.[Valor Taxa de Juros]) AS [Valor Taxa de Juros], Itens' +
        'Faturas.Unidade_Medida_Estat, Conhecimento_Processo.Moeda_Frete,' +
        ' Conhecimento_Processo.Moeda_Seguro'
      
        'FROM (((((ItensFaturas INNER JOIN Tributacao_Item_Fatura ON (Ite' +
        'nsFaturas.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) A' +
        'ND (ItensFaturas.Fatura = Tributacao_Item_Fatura.Fatura) AND (It' +
        'ensFaturas.Processo = Tributacao_Item_Fatura.Processo) AND (Iten' +
        'sFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFatur' +
        'as.Empresa = Tributacao_Item_Fatura.Empresa)) INNER JOIN Faturas' +
        ' ON (ItensFaturas.Fatura = Faturas.Código) AND (ItensFaturas.Pro' +
        'cesso = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Fil' +
        'ial) AND (ItensFaturas.Empresa = Faturas.Empresa)) INNER JOIN Pr' +
        'ocessos ON (Faturas.Processo = Processos.Código) AND (Faturas.Fi' +
        'lial = Processos.Filial) AND (Faturas.Empresa = Processos.Empres' +
        'a)) INNER JOIN Conhecimento_Processo ON (Processos.Código = Conh' +
        'ecimento_Processo.Processo) AND (Processos.Filial = Conhecimento' +
        '_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo' +
        '.Empresa)) INNER JOIN Exportadores ON (Faturas.Exportador = Expo' +
        'rtadores.Codigo) AND (Faturas.Filial = Exportadores.Filial) AND ' +
        '(Faturas.Empresa = Exportadores.Empresa)) INNER JOIN [Fabricante' +
        's / Produtores] ON (ItensFaturas.Fabricante = [Fabricantes / Pro' +
        'dutores].Codigo) AND (ItensFaturas.Filial = [Fabricantes / Produ' +
        'tores].Filial) AND (ItensFaturas.Empresa = [Fabricantes / Produt' +
        'ores].Empresa)'
      
        'WHERE (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=:' +
        'qfilial) AND ((Processos.Código)=:qprocesso))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, Conhecimento_Processo.URF_chegada, Conhecimento_Processo.Vi' +
        'a, Conhecimento_Processo.Multimodal, Exportadores.[Razão Social]' +
        ', Exportadores.Endereço, Exportadores.Número, Exportadores.Compl' +
        'emento, Exportadores.Cidade, Exportadores.Estado, Exportadores.P' +
        'aís, ItensFaturas.NCM, Conhecimento_Processo.Pais_Procedencia, [' +
        'Fabricantes / Produtores].[Razão Social], [Fabricantes / Produto' +
        'res].Endereço, [Fabricantes / Produtores].Número, [Fabricantes /' +
        ' Produtores].Complemento, [Fabricantes / Produtores].Cidade, [Fa' +
        'bricantes / Produtores].Estado, [Fabricantes / Produtores].País,' +
        ' ItensFaturas.NCM, ItensFaturas.NALADI, Tributacao_Item_Fatura.C' +
        'D_APLICACAO_MERC, Tributacao_Item_Fatura.CD_METOD_VALORACAO, Tri' +
        'butacao_Item_Fatura.CD_TIPO_ACORDO_TAR, Tributacao_Item_Fatura.A' +
        'CORDO_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_II, Tribut' +
        'acao_Item_Fatura.Fundamento_Legal_II, Tributacao_Item_Fatura.Mot' +
        'ivo_Adm_Temp, Tributacao_Item_Fatura.Numero_Ato_Legal_II, Tribut' +
        'acao_Item_Fatura.Percentual_Reducao_II, Tributacao_Item_Fatura.I' +
        'N_BEM_ENCOMENDA, Tributacao_Item_Fatura.IN_MATERIAL_USADO, Tribu' +
        'tacao_Item_Fatura.ALIQUOTA_ALADI, Tributacao_Item_Fatura.Regime_' +
        'Tributacao_IPI, Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tri' +
        'butacao_Item_Fatura.Percentual_Reduca_IPI, ItensFaturas.Unidade_' +
        'Medida_Estat, Conhecimento_Processo.Moeda_Frete, Conhecimento_Pr' +
        'ocesso.Moeda_Seguro'
      'HAVING (((Tributacao_Item_Fatura.Adicao) Is Not Null))'
      'ORDER BY Tributacao_Item_Fatura.Adicao;')
    UpdateMode = upWhereChanged
    Left = 673
    Top = 19
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
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00066/01'
      end>
    object Q_adicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_adicoesAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object Q_adicoesURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object Q_adicoesVia: TStringField
      FieldName = 'Via'
      Size = 2
    end
    object Q_adicoesMultimodal: TBooleanField
      FieldName = 'Multimodal'
    end
    object Q_adicoesRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object Q_adicoesEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object Q_adicoesNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object Q_adicoesComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object Q_adicoesCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object Q_adicoesEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object Q_adicoesPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object Q_adicoesNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object Q_adicoesPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object Q_adicoesFABNOME: TStringField
      FieldName = 'FABNOME'
      Size = 60
    end
    object Q_adicoesFABEND: TStringField
      FieldName = 'FABEND'
      Size = 40
    end
    object Q_adicoesFABNUM: TStringField
      FieldName = 'FABNUM'
      Size = 6
    end
    object Q_adicoesFABCOMP: TStringField
      FieldName = 'FABCOMP'
      Size = 21
    end
    object Q_adicoesFABCID: TStringField
      FieldName = 'FABCID'
      Size = 25
    end
    object Q_adicoesFABEST: TStringField
      FieldName = 'FABEST'
      Size = 25
    end
    object Q_adicoesFABPAI: TStringField
      FieldName = 'FABPAI'
      Size = 3
    end
    object Q_adicoesNBM: TStringField
      FieldName = 'NBM'
      Size = 8
    end
    object Q_adicoesNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object Q_adicoesPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object Q_adicoesSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object Q_adicoesFrete: TFloatField
      FieldName = 'Frete'
    end
    object Q_adicoesSeguro: TFloatField
      FieldName = 'Seguro'
    end
    object Q_adicoesvinculacao: TStringField
      FieldName = 'vinculacao'
      Size = 255
    end
    object Q_adicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object Q_adicoesmoeda: TStringField
      FieldName = 'moeda'
      Size = 255
    end
    object Q_adicoesincoterm: TStringField
      FieldName = 'incoterm'
      Size = 255
    end
    object Q_adicoesCondio: TStringField
      FieldName = 'Condição'
      Size = 255
    end
    object Q_adicoesValor_aduaneiro: TFloatField
      FieldName = 'Valor_aduaneiro'
    end
    object Q_adicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object Q_adicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object Q_adicoesACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      Size = 3
    end
    object Q_adicoesRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object Q_adicoesFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Size = 2
    end
    object Q_adicoesMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      Size = 2
    end
    object Q_adicoesNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object Q_adicoesPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object Q_adicoesCoberturaCambial: TStringField
      FieldName = 'Cobertura Cambial'
      Size = 255
    end
    object Q_adicoesModalidadedePagamento: TStringField
      FieldName = 'Modalidade de Pagamento'
      Size = 255
    end
    object Q_adicoesInstituicaoFinanciadora: TStringField
      FieldName = 'Instituicao Financiadora'
      Size = 255
    end
    object Q_adicoesMotivoSemCobertura: TStringField
      FieldName = 'Motivo Sem Cobertura'
      Size = 255
    end
    object Q_adicoesNumerodeparcelas: TStringField
      FieldName = 'Numero de parcelas'
      Size = 255
    end
    object Q_adicoesPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 255
    end
    object Q_adicoesIndicadorPeriodicidade: TStringField
      FieldName = 'Indicador Periodicidade'
      Size = 255
    end
    object Q_adicoesTaxadeJuros: TSmallintField
      FieldName = 'Taxa de Juros'
    end
    object Q_adicoesROFBACEN: TStringField
      FieldName = 'ROF BACEN'
      Size = 255
    end
    object Q_adicoesPercentualROF: TFloatField
      FieldName = 'Percentual ROF'
    end
    object Q_adicoesCodigoTaxadeJuros: TStringField
      FieldName = 'Codigo Taxa de Juros'
      Size = 255
    end
    object Q_adicoesIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object Q_adicoesIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object Q_adicoesVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object Q_adicoesBase_Calc_ii: TFloatField
      FieldName = 'Base_Calc_ii'
    end
    object Q_adicoesALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object Q_adicoesRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object Q_adicoesNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Size = 5
    end
    object Q_adicoesPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object Q_adicoesValorTaxadeJuros: TFloatField
      FieldName = 'Valor Taxa de Juros'
    end
    object Q_adicoesUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
  end
  object ds_qadicoes: TDataSource
    DataSet = Q_adicoes
    Left = 203
    Top = 52
  end
  object Q_itensadicoes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Sequencial_Item AS sequencial, Tri' +
        'butacao_Item_Fatura.Sequencial AS seq, Processos.NR_DECL_IMP_MIC' +
        'RO, Faturas.Código, Faturas.Vinculacao, Conhecimento_Processo.UR' +
        'F_chegada, Conhecimento_Processo.Via, Conhecimento_Processo.Mult' +
        'imodal, Exportadores.[Razão Social], Exportadores.Endereço, Expo' +
        'rtadores.Número, Exportadores.Complemento, Exportadores.Cidade, ' +
        'Exportadores.Estado, Exportadores.País, ItensFaturas.NCM, Conhec' +
        'imento_Processo.Pais_Procedencia, [Fabricantes / Produtores].[Ra' +
        'zão Social] AS FABNOME, [Fabricantes / Produtores].Endereço AS F' +
        'ABEND, [Fabricantes / Produtores].Número AS FABNUM, [Fabricantes' +
        ' / Produtores].Complemento AS FABCOMP, [Fabricantes / Produtores' +
        '].Cidade AS FABCID, [Fabricantes / Produtores].Estado AS FABEST,' +
        ' [Fabricantes / Produtores].País AS FABPAI, ItensFaturas.NCM AS ' +
        'NBM, ItensFaturas.NALADI, Sum(ItensFaturas.Peso_Total_Acertado) ' +
        'AS SomaDePeso_Total_Acertado, Sum(ItensFaturas.Quantidade) AS So' +
        'maDeQuantidade, Tributacao_Item_Fatura.CD_APLICACAO_MERC, Fatura' +
        's.Moeda, Faturas.Incoterm, Faturas.Condição, Sum(ItensFaturas.Va' +
        'lor_Aduaneiro) AS SomaDeValor_Aduaneiro, Sum((([ItensFaturas].[R' +
        'ateio_Frete_prepaid]+[ItensFaturas].[Rateio_Frete_collect]-[Iten' +
        'sFaturas].[Rateio_Frete_ternac]))) AS Frete, Sum(ItensFaturas.Ra' +
        'teio_Seguro) AS SomaDeRateio_Seguro, Tributacao_Item_Fatura.CD_M' +
        'ETOD_VALORACAO, Tributacao_Item_Fatura.CD_TIPO_ACORDO_TAR, Tribu' +
        'tacao_Item_Fatura.ACORDO_ALADI, Tributacao_Item_Fatura.Regime_Tr' +
        'ibutacao_II, Tributacao_Item_Fatura.Fundamento_Legal_II, Tributa' +
        'cao_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item_Fatura.Numero_A' +
        'to_Legal_II, Tributacao_Item_Fatura.Percentual_Reducao_II, Fatur' +
        'as.[Cobertura Cambial], Faturas.[Modalidade de Pagamento], Fatur' +
        'as.[Instituicao Financiadora], Faturas.[Motivo Sem Cobertura], F' +
        'aturas.[Numero de parcelas], Faturas.Periodicidade, Faturas.[Ind' +
        'icador Periodicidade], Faturas.[Taxa de Juros], Faturas.[ROF BAC' +
        'EN], Faturas.[Codigo Taxa de Juros], Tributacao_Item_Fatura.IN_B' +
        'EM_ENCOMENDA, Tributacao_Item_Fatura.IN_MATERIAL_USADO, Sum(Iten' +
        'sFaturas.VMLE) AS SomaDeVMLE, Sum(ItensFaturas.Base_Calc_II) AS ' +
        'SomaDeBase_Calc_II, Tributacao_Item_Fatura.Certificado_Origem, T' +
        'ributacao_Item_Fatura.Ato_Concessorio, Tributacao_Item_Fatura.AL' +
        'IQUOTA_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_IPI, Trib' +
        'utacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributacao_Item_Fatura.' +
        'Percentual_Reduca_IPI, Tributacao_Item_Fatura.Fatura,  ItensFatu' +
        'ras.Unidade_Medida_Estat, ItensFaturas.Destaque_NCM'
      
        'FROM (((((ItensFaturas INNER JOIN Tributacao_Item_Fatura ON (Ite' +
        'nsFaturas.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) A' +
        'ND (ItensFaturas.Fatura = Tributacao_Item_Fatura.Fatura) AND (It' +
        'ensFaturas.Processo = Tributacao_Item_Fatura.Processo) AND (Iten' +
        'sFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFatur' +
        'as.Empresa = Tributacao_Item_Fatura.Empresa)) INNER JOIN Faturas' +
        ' ON (ItensFaturas.Fatura = Faturas.Código) AND (ItensFaturas.Pro' +
        'cesso = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Fil' +
        'ial) AND (ItensFaturas.Empresa = Faturas.Empresa)) INNER JOIN Pr' +
        'ocessos ON (Faturas.Processo = Processos.Código) AND (Faturas.Fi' +
        'lial = Processos.Filial) AND (Faturas.Empresa = Processos.Empres' +
        'a)) INNER JOIN Conhecimento_Processo ON (Processos.Código = Conh' +
        'ecimento_Processo.Processo) AND (Processos.Filial = Conhecimento' +
        '_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo' +
        '.Empresa)) INNER JOIN Exportadores ON (Faturas.Exportador = Expo' +
        'rtadores.Codigo) AND (Faturas.Filial = Exportadores.Filial) AND ' +
        '(Faturas.Empresa = Exportadores.Empresa)) INNER JOIN [Fabricante' +
        's / Produtores] ON (ItensFaturas.Fabricante = [Fabricantes / Pro' +
        'dutores].Codigo) AND (ItensFaturas.Filial = [Fabricantes / Produ' +
        'tores].Filial) AND (ItensFaturas.Empresa = [Fabricantes / Produt' +
        'ores].Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Tributacao_Item_Fatura.Sequencial_Item , Tributacao_Ite' +
        'm_Fatura.Sequencial , Processos.NR_DECL_IMP_MICRO, Faturas.Códig' +
        'o, Faturas.Vinculacao, Conhecimento_Processo.URF_chegada, Conhec' +
        'imento_Processo.Via, Conhecimento_Processo.Multimodal, Exportado' +
        'res.[Razão Social], Exportadores.Endereço, Exportadores.Número, ' +
        'Exportadores.Complemento, Exportadores.Cidade, Exportadores.Esta' +
        'do, Exportadores.País, ItensFaturas.NCM, Conhecimento_Processo.P' +
        'ais_Procedencia, [Fabricantes / Produtores].[Razão Social], [Fab' +
        'ricantes / Produtores].Endereço, [Fabricantes / Produtores].Núme' +
        'ro, [Fabricantes / Produtores].Complemento, [Fabricantes / Produ' +
        'tores].Cidade, [Fabricantes / Produtores].Estado, [Fabricantes /' +
        ' Produtores].País, ItensFaturas.NCM, ItensFaturas.NALADI, Tribut' +
        'acao_Item_Fatura.CD_APLICACAO_MERC, Faturas.Moeda, Faturas.Incot' +
        'erm, Faturas.Condição, Tributacao_Item_Fatura.CD_METOD_VALORACAO' +
        ', Tributacao_Item_Fatura.CD_TIPO_ACORDO_TAR, Tributacao_Item_Fat' +
        'ura.ACORDO_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_II, T' +
        'ributacao_Item_Fatura.Fundamento_Legal_II, Tributacao_Item_Fatur' +
        'a.Motivo_Adm_Temp, Tributacao_Item_Fatura.Numero_Ato_Legal_II, T' +
        'ributacao_Item_Fatura.Percentual_Reducao_II, Faturas.[Cobertura ' +
        'Cambial], Faturas.[Modalidade de Pagamento], Faturas.[Instituica' +
        'o Financiadora], Faturas.[Motivo Sem Cobertura], Faturas.[Numero' +
        ' de parcelas], Faturas.Periodicidade, Faturas.[Indicador Periodi' +
        'cidade], Faturas.[Taxa de Juros], Faturas.[ROF BACEN], Faturas.[' +
        'Codigo Taxa de Juros], Tributacao_Item_Fatura.IN_BEM_ENCOMENDA, ' +
        'Tributacao_Item_Fatura.IN_MATERIAL_USADO, Tributacao_Item_Fatura' +
        '.Certificado_Origem, Tributacao_Item_Fatura.Ato_Concessorio, Tri' +
        'butacao_Item_Fatura.ALIQUOTA_ALADI, Tributacao_Item_Fatura.Regim' +
        'e_Tributacao_IPI, Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, T' +
        'ributacao_Item_Fatura.Percentual_Reduca_IPI, Tributacao_Item_Fat' +
        'ura.Fatura,  ItensFaturas.Produto, ItensFaturas.Unidade_Medida_E' +
        'stat, ItensFaturas.Destaque_NCM'
      
        'ORDER BY Conhecimento_Processo.URF_chegada, Conhecimento_Process' +
        'o.Via, Conhecimento_Processo.Multimodal, Exportadores.[Razão Soc' +
        'ial], Exportadores.Endereço, Exportadores.Número, Exportadores.C' +
        'omplemento, Exportadores.Cidade, Exportadores.Estado, Exportador' +
        'es.País, ItensFaturas.NCM, Conhecimento_Processo.Pais_Procedenci' +
        'a, [Fabricantes / Produtores].[Razão Social], [Fabricantes / Pro' +
        'dutores].Endereço, [Fabricantes / Produtores].Número, [Fabricant' +
        'es / Produtores].Complemento, [Fabricantes / Produtores].Cidade,' +
        ' [Fabricantes / Produtores].Estado, [Fabricantes / Produtores].P' +
        'aís, Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.NCM, I' +
        'tensFaturas.NALADI, Faturas.[Cobertura Cambial], Faturas.[Modali' +
        'dade de Pagamento], Faturas.[Instituicao Financiadora], Faturas.' +
        '[Motivo Sem Cobertura], Faturas.[ROF BACEN], Tributacao_Item_Fat' +
        'ura.IN_BEM_ENCOMENDA, Tributacao_Item_Fatura.IN_MATERIAL_USADO, ' +
        'Tributacao_Item_Fatura.Certificado_Origem, Tributacao_Item_Fatur' +
        'a.Regime_Tributacao_IPI;')
    UpdateMode = upWhereChanged
    Left = 728
    Top = 65535
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_itensadicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_itensadicoesCdigo: TStringField
      FieldName = 'Código'
      Size = 15
    end
    object Q_itensadicoesVinculacao: TStringField
      FieldName = 'Vinculacao'
      Size = 1
    end
    object Q_itensadicoesURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object Q_itensadicoesVia: TStringField
      FieldName = 'Via'
      Size = 2
    end
    object Q_itensadicoesMultimodal: TBooleanField
      FieldName = 'Multimodal'
    end
    object Q_itensadicoesRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object Q_itensadicoesEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object Q_itensadicoesNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object Q_itensadicoesComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object Q_itensadicoesCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object Q_itensadicoesEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object Q_itensadicoesPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object Q_itensadicoesNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object Q_itensadicoesPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object Q_itensadicoesFABNOME: TStringField
      FieldName = 'FABNOME'
      Size = 60
    end
    object Q_itensadicoesFABEND: TStringField
      FieldName = 'FABEND'
      Size = 40
    end
    object Q_itensadicoesFABNUM: TStringField
      FieldName = 'FABNUM'
      Size = 6
    end
    object Q_itensadicoesFABCOMP: TStringField
      FieldName = 'FABCOMP'
      Size = 21
    end
    object Q_itensadicoesFABCID: TStringField
      FieldName = 'FABCID'
      Size = 25
    end
    object Q_itensadicoesFABEST: TStringField
      FieldName = 'FABEST'
      Size = 25
    end
    object Q_itensadicoesFABPAI: TStringField
      FieldName = 'FABPAI'
      Size = 3
    end
    object Q_itensadicoesNBM: TStringField
      FieldName = 'NBM'
      Size = 8
    end
    object Q_itensadicoesNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object Q_itensadicoesSomaDePeso_Total_Acertado: TFloatField
      FieldName = 'SomaDePeso_Total_Acertado'
    end
    object Q_itensadicoesSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object Q_itensadicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object Q_itensadicoesMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object Q_itensadicoesIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object Q_itensadicoesCondio: TStringField
      FieldName = 'Condição'
      Size = 50
    end
    object Q_itensadicoesSomaDeValor_Aduaneiro: TFloatField
      FieldName = 'SomaDeValor_Aduaneiro'
    end
    object Q_itensadicoesFrete: TFloatField
      FieldName = 'Frete'
    end
    object Q_itensadicoesSomaDeRateio_Seguro: TFloatField
      FieldName = 'SomaDeRateio_Seguro'
    end
    object Q_itensadicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object Q_itensadicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object Q_itensadicoesACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      Size = 3
    end
    object Q_itensadicoesRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object Q_itensadicoesFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Size = 2
    end
    object Q_itensadicoesMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      Size = 2
    end
    object Q_itensadicoesNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object Q_itensadicoesPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object Q_itensadicoesCoberturaCambial: TStringField
      FieldName = 'Cobertura Cambial'
      Size = 1
    end
    object Q_itensadicoesModalidadedePagamento: TStringField
      FieldName = 'Modalidade de Pagamento'
      Size = 2
    end
    object Q_itensadicoesInstituicaoFinanciadora: TStringField
      FieldName = 'Instituicao Financiadora'
      Size = 2
    end
    object Q_itensadicoesMotivoSemCobertura: TStringField
      FieldName = 'Motivo Sem Cobertura'
      Size = 2
    end
    object Q_itensadicoesNumerodeparcelas: TStringField
      FieldName = 'Numero de parcelas'
      Size = 3
    end
    object Q_itensadicoesPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 3
    end
    object Q_itensadicoesIndicadorPeriodicidade: TStringField
      FieldName = 'Indicador Periodicidade'
      Size = 1
    end
    object Q_itensadicoesTaxadeJuros: TBooleanField
      FieldName = 'Taxa de Juros'
    end
    object Q_itensadicoesROFBACEN: TStringField
      FieldName = 'ROF BACEN'
      Size = 8
    end
    object Q_itensadicoesCodigoTaxadeJuros: TStringField
      FieldName = 'Codigo Taxa de Juros'
      Size = 4
    end
    object Q_itensadicoesIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object Q_itensadicoesIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object Q_itensadicoesSomaDeVMLE: TFloatField
      FieldName = 'SomaDeVMLE'
    end
    object Q_itensadicoesSomaDeBase_Calc_II: TFloatField
      FieldName = 'SomaDeBase_Calc_II'
    end
    object Q_itensadicoesCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
    object Q_itensadicoesAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
    end
    object Q_itensadicoesALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object Q_itensadicoesRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object Q_itensadicoesNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Size = 5
    end
    object Q_itensadicoesPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object Q_itensadicoesFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object Q_itensadicoessequencial: TStringField
      FieldName = 'sequencial'
      Size = 4
    end
    object Q_itensadicoesseq: TStringField
      FieldName = 'seq'
      Size = 4
    end
    object Q_itensadicoesUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object Q_itensadicoesDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
  end
  object ds_qitensadicoes: TDataSource
    DataSet = Q_itensadicoes
    Left = 236
    Top = 52
  end
  object q_detalhe: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, Tributacao_Item_Fatura.Quantidade, Tributacao_Item_Fatura.Seq' +
        'uencial AS seq, ItensFaturas.Produto, ItensFaturas.Referencia, I' +
        'tensFaturas.Referencia_projeto, ItensFaturas.Descricao_Produto, ' +
        'Tributacao_Item_Fatura.Certificado_Origem, ItensFaturas.Fatura, ' +
        'ItensFaturas.Pagina, ItensFaturas.Sequencial, ItensFaturas.PO, I' +
        'tensFaturas.seqPO'
      
        'FROM ((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Empresa ' +
        '= Faturas.Empresa) AND (ItensFaturas.Filial = Faturas.Filial) AN' +
        'D (ItensFaturas.Processo = Faturas.Processo) AND (ItensFaturas.F' +
        'atura = Faturas.Código)) INNER JOIN Processos ON (Faturas.Empres' +
        'a = Processos.Empresa) AND (Faturas.Filial = Processos.Filial) A' +
        'ND (Faturas.Processo = Processos.Código)) INNER JOIN Tributacao_' +
        'Item_Fatura ON (ItensFaturas.Empresa = Tributacao_Item_Fatura.Em' +
        'presa) AND (ItensFaturas.Filial = Tributacao_Item_Fatura.Filial)' +
        ' AND (ItensFaturas.Processo = Tributacao_Item_Fatura.Processo) A' +
        'ND (ItensFaturas.Fatura = Tributacao_Item_Fatura.Fatura) AND (It' +
        'ensFaturas.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, ItensFaturas.Fatura, ItensFaturas.Pagina, ItensFaturas.Sequ' +
        'encial, Tributacao_Item_Fatura.Quantidade, Tributacao_Item_Fatur' +
        'a.Sequencial, ItensFaturas.PO,  ItensFaturas.seqPO, ItensFaturas' +
        '.Produto, ItensFaturas.Referencia, ItensFaturas.Referencia_proje' +
        'to, ItensFaturas.Descricao_Produto, Tributacao_Item_Fatura.Certi' +
        'ficado_Origem, ItensFaturas.Fatura'
      
        'ORDER BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, ItensFaturas.Fatura, val(ItensFaturas.Pagina), val(ItensFat' +
        'uras.Sequencial);')
    UpdateMode = upWhereChanged
    Left = 589
    Top = 146
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_detalheNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_detalheAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object q_detalheQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_detalheseq: TStringField
      FieldName = 'seq'
      Size = 4
    end
    object q_detalheProduto: TStringField
      FieldName = 'Produto'
      Size = 15
    end
    object q_detalheDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object q_detalheFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object q_detalhePagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object q_detalheSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object q_detalheReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object q_detalheCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
    object q_detalheReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      Size = 15
    end
    object q_detalhePO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object q_detalheseqPO: TStringField
      FieldName = 'seqPO'
      Size = 5
    end
  end
  object ds_detalhe: TDataSource
    DataSet = q_detalhe
    Left = 236
    Top = 56
  end
  object q_detalhe_adicao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, ItensFaturas.Produto, Tribut' +
        'acao_Item_Fatura.Quantidade, ItensFaturas.Descricao_Produto, Ite' +
        'nsFaturas.Fatura, ItensFaturas.Pagina, ItensFaturas.Sequencial, ' +
        'Tributacao_Item_Fatura.Sequencial AS seq'
      
        'FROM ((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Fatura =' +
        ' Faturas.Código) AND (ItensFaturas.Processo = Faturas.Processo) ' +
        'AND (ItensFaturas.Filial = Faturas.Filial) AND (ItensFaturas.Emp' +
        'resa = Faturas.Empresa)) INNER JOIN Processos ON (Faturas.Proces' +
        'so = Processos.Código) AND (Faturas.Filial = Processos.Filial) A' +
        'ND (Faturas.Empresa = Processos.Empresa)) INNER JOIN Tributacao_' +
        'Item_Fatura ON (ItensFaturas.Empresa = Tributacao_Item_Fatura.Em' +
        'presa) AND (ItensFaturas.Filial = Tributacao_Item_Fatura.Filial)' +
        ' AND (ItensFaturas.Processo = Tributacao_Item_Fatura.Processo) A' +
        'ND (ItensFaturas.Fatura = Tributacao_Item_Fatura.Fatura) AND (It' +
        'ensFaturas.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, ItensFaturas.Produto, Trib' +
        'utacao_Item_Fatura.Quantidade, ItensFaturas.Descricao_Produto, I' +
        'tensFaturas.Fatura, ItensFaturas.Pagina, ItensFaturas.Sequencial' +
        ', Tributacao_Item_Fatura.Sequencial, Tributacao_Item_Fatura.Adic' +
        'ao'
      'HAVING (((Tributacao_Item_Fatura.Adicao)=:Adicao));')
    UpdateMode = upWhereChanged
    Left = 561
    Top = 82
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Adicao'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_detalhe_adicaoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_detalhe_adicaoProduto: TStringField
      FieldName = 'Produto'
      Size = 15
    end
    object q_detalhe_adicaoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_detalhe_adicaoDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object q_detalhe_adicaoFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object q_detalhe_adicaoPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object q_detalhe_adicaoSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object q_detalhe_adicaoseq: TStringField
      FieldName = 'seq'
      Size = 4
    end
  end
  object ds_qdetalhe_adicao: TDataSource
    DataSet = q_detalhe_adicao
    Left = 236
    Top = 52
  end
  object T_adicoes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO'
    TableName = 'OP_ADIÇÃO_DE_IMPORTAÇÃO'
    Left = 185
    Top = 3
    object T_adicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_adicoesNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_adicoesCD_URF_ENTR_MERC: TStringField
      FieldName = 'CD_URF_ENTR_MERC'
      Size = 7
    end
    object T_adicoesCD_VIA_TRANSPORTE: TStringField
      FieldName = 'CD_VIA_TRANSPORTE'
      Size = 2
    end
    object T_adicoesIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object T_adicoesNM_FORN_ESTR: TStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object T_adicoesED_LOGR_FORN_ESTR: TStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object T_adicoesED_NR_FORN_ESTR: TStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object T_adicoesED_COMPL_FORN_ESTR: TStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object T_adicoesED_CIDAD_FORN_ESTR: TStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object T_adicoesED_ESTAD_FORN_ESTR: TStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object T_adicoesCD_PAIS_AQUIS_MERC: TStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object T_adicoesCD_MERCADORIA_NCM: TStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object T_adicoesCD_PAIS_PROC_MERC: TStringField
      FieldName = 'CD_PAIS_PROC_MERC'
      Size = 3
    end
    object T_adicoesCD_AUSENCIA_FABRIC: TStringField
      FieldName = 'CD_AUSENCIA_FABRIC'
      Size = 1
    end
    object T_adicoesNM_FABRICANTE_MERC: TStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object T_adicoesED_LOGR_FABRIC: TStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object T_adicoesED_NR_FABRIC: TStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object T_adicoesED_COMPL_FABRIC: TStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object T_adicoesED_CIDAD_FABRIC: TStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
    object T_adicoesED_ESTADO_FABRIC: TStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object T_adicoesCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object T_adicoesCD_MERC_NBM_SH: TStringField
      FieldName = 'CD_MERC_NBM_SH'
      Size = 10
    end
    object T_adicoesCD_MERC_NALADI_NCC: TStringField
      FieldName = 'CD_MERC_NALADI_NCC'
      Size = 7
    end
    object T_adicoesCD_MERC_NALADI_SH: TStringField
      FieldName = 'CD_MERC_NALADI_SH'
      Size = 8
    end
    object T_adicoesPL_MERCADORIA: TStringField
      FieldName = 'PL_MERCADORIA'
      Size = 15
    end
    object T_adicoesQT_UN_ESTATISTICA: TStringField
      FieldName = 'QT_UN_ESTATISTICA'
      Size = 14
    end
    object T_adicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object T_adicoesVL_MERC_EMB_MN: TFloatField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object T_adicoesCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object T_adicoesCD_INCOTERMS_VENDA: TStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object T_adicoesNM_LOC_COND_VENDA: TStringField
      FieldName = 'NM_LOC_COND_VENDA'
      Size = 60
    end
    object T_adicoesVL_MERC_COND_VENDA: TFloatField
      FieldName = 'VL_MERC_COND_VENDA'
    end
    object T_adicoesVL_MERC_VENDA_MN: TFloatField
      FieldName = 'VL_MERC_VENDA_MN'
    end
    object T_adicoesVL_FRETE_MERC_MNEG: TFloatField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object T_adicoesCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object T_adicoesVL_FRETE_MERC_MN: TFloatField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object T_adicoesVL_SEG_MERC_MNEG: TFloatField
      FieldName = 'VL_SEG_MERC_MNEG'
    end
    object T_adicoesCD_MOEDA_SEG_MERC: TStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object T_adicoesVL_SEG_MERC_MN: TFloatField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object T_adicoesVL_UNID_LOC_EMP: TFloatField
      FieldName = 'VL_UNID_LOC_EMP'
    end
    object T_adicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object T_adicoesCD_VINC_IMPO_EXPO: TStringField
      FieldName = 'CD_VINC_IMPO_EXPO'
      Size = 1
    end
    object T_adicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object T_adicoesCD_ACORDO_ALADI: TStringField
      FieldName = 'CD_ACORDO_ALADI'
      Size = 3
    end
    object T_adicoesCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object T_adicoesCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object T_adicoesCD_MOTIVO_ADM_TEMP: TStringField
      FieldName = 'CD_MOTIVO_ADM_TEMP'
      Size = 2
    end
    object T_adicoesNR_DCTO_REDUCAO: TStringField
      FieldName = 'NR_DCTO_REDUCAO'
      Size = 8
    end
    object T_adicoesVL_DESPESAS_MNEG: TFloatField
      FieldName = 'VL_DESPESAS_MNEG'
    end
    object T_adicoesCD_MOEDAS_DESPESAS: TStringField
      FieldName = 'CD_MOEDAS_DESPESAS'
      Size = 3
    end
    object T_adicoesVL_DESPESAS_MN: TFloatField
      FieldName = 'VL_DESPESAS_MN'
    end
    object T_adicoesPC_COEF_REDUC_II: TFloatField
      FieldName = 'PC_COEF_REDUC_II'
    end
    object T_adicoesVL_CALC_DCR_DOLAR: TFloatField
      FieldName = 'VL_CALC_DCR_DOLAR'
    end
    object T_adicoesVL_II_CALC_DCR_MN: TFloatField
      FieldName = 'VL_II_CALC_DCR_MN'
    end
    object T_adicoesVL_II_DEVIDO_ZFM: TFloatField
      FieldName = 'VL_II_DEVIDO_ZFM'
    end
    object T_adicoesVL_II_A_REC_ZFM: TFloatField
      FieldName = 'VL_II_A_REC_ZFM'
    end
    object T_adicoesCD_COBERT_CAMBIAL: TStringField
      FieldName = 'CD_COBERT_CAMBIAL'
      Size = 1
    end
    object T_adicoesCD_MODALIDADE_PGTO: TStringField
      FieldName = 'CD_MODALIDADE_PGTO'
      Size = 2
    end
    object T_adicoesCD_ORGAO_FIN_INTER: TStringField
      FieldName = 'CD_ORGAO_FIN_INTER'
      Size = 2
    end
    object T_adicoesCD_MOTIVO_SEM_COB: TStringField
      FieldName = 'CD_MOTIVO_SEM_COB'
      Size = 2
    end
    object T_adicoesQT_PARC_FINANC_360: TStringField
      FieldName = 'QT_PARC_FINANC_360'
      Size = 3
    end
    object T_adicoesCD_PERIOD_PGTO_360: TStringField
      FieldName = 'CD_PERIOD_PGTO_360'
      Size = 1
    end
    object T_adicoesQT_PERIOD_PGTO_360: TStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object T_adicoesVL_TOT_FINANC_360: TFloatField
      FieldName = 'VL_TOT_FINANC_360'
    end
    object T_adicoesPC_TAXA_JUROS: TFloatField
      FieldName = 'PC_TAXA_JUROS'
    end
    object T_adicoesCD_TAXA_JUROS: TStringField
      FieldName = 'CD_TAXA_JUROS'
      Size = 4
    end
    object T_adicoesVL_FINANC_SUP_360: TFloatField
      FieldName = 'VL_FINANC_SUP_360'
    end
    object T_adicoesNR_ROF: TStringField
      FieldName = 'NR_ROF'
      Size = 8
    end
    object T_adicoesIN_PGTO_VARIAV_360: TBooleanField
      FieldName = 'IN_PGTO_VARIAV_360'
    end
    object T_adicoesIN_JUROS_ATE_360: TBooleanField
      FieldName = 'IN_JUROS_ATE_360'
    end
    object T_adicoesPC_COMISSAO_AG_IMP: TFloatField
      FieldName = 'PC_COMISSAO_AG_IMP'
    end
    object T_adicoesVL_COMISSAO_AG_IMP: TFloatField
      FieldName = 'VL_COMISSAO_AG_IMP'
    end
    object T_adicoesCD_TIPO_AGENTE_IMP: TStringField
      FieldName = 'CD_TIPO_AGENTE_IMP'
      Size = 1
    end
    object T_adicoesNR_AGENTE_IMP: TStringField
      FieldName = 'NR_AGENTE_IMP'
      Size = 14
    end
    object T_adicoesCD_BANC_AGENTE_IMP: TStringField
      FieldName = 'CD_BANC_AGENTE_IMP'
      Size = 5
    end
    object T_adicoesCD_AGENC_AGENT_IMP: TStringField
      FieldName = 'CD_AGENC_AGENT_IMP'
      Size = 4
    end
    object T_adicoesIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object T_adicoesIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object T_adicoesTX_COMPL_VL_ADUAN: TStringField
      FieldName = 'TX_COMPL_VL_ADUAN'
      Size = 250
    end
    object T_adicoesIN_IPI_NAO_TRIBUT: TBooleanField
      FieldName = 'IN_IPI_NAO_TRIBUT'
    end
    object T_adicoesvl_merc_loc_emb_mn: TFloatField
      FieldName = 'vl_merc_loc_emb_mn'
    end
    object T_adicoesvl_base_calculo_mn: TFloatField
      FieldName = 'vl_base_calculo_mn'
    end
    object T_adicoesNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
  end
  object ds_adicoes: TDataSource
    DataSet = T_adicoes
    Left = 236
    Top = 56
  end
  object T_detalhes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NU_SEQ_DETALHE'
    TableName = 'DETALHE_MERCADORIA'
    Left = 197
    Top = 65522
    object T_detalhesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_detalhesNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_detalhesNU_SEQ_DETALHE: TSmallintField
      FieldName = 'NU_SEQ_DETALHE'
    end
    object T_detalhesTX_DESC_DET_MERC: TMemoField
      FieldName = 'TX_DESC_DET_MERC'
      BlobType = ftMemo
    end
    object T_detalhesQT_MERC_UN_COMERC: TStringField
      FieldName = 'QT_MERC_UN_COMERC'
      Size = 14
    end
    object T_detalhesNM_UN_MEDID_COMERC: TStringField
      FieldName = 'NM_UN_MEDID_COMERC'
    end
    object T_detalhesVL_UNID_LOC_EMB: TFloatField
      FieldName = 'VL_UNID_LOC_EMB'
    end
    object T_detalhesVL_UNID_COND_VENDA: TStringField
      FieldName = 'VL_UNID_COND_VENDA'
    end
    object T_detalhesCD_PRODUTO: TStringField
      FieldName = 'CD_PRODUTO'
      Size = 15
    end
  end
  object ds_detalhes: TDataSource
    DataSet = T_detalhes
    Left = 236
    Top = 52
  end
  object T_acresval: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_MET_ACRES_VALOR'
    TableName = 'ACRÉSCIMO_VALORAÇÃO'
    Left = 168
    Top = 65530
    object T_acresvalNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_acresvalNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_acresvalCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Size = 3
    end
    object T_acresvalVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object T_acresvalCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object T_acresvalVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
    end
  end
  object ds_acresval: TDataSource
    DataSet = T_acresval
    Left = 236
    Top = 56
  end
  object T_atosvinc: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_ASSUNTO_VINCUL'
    TableName = 'ATO_VINCULADO'
    Left = 84
    Top = 65526
    object T_atosvincNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_atosvincNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_atosvincCD_ASSUNTO_VINCUL: TStringField
      FieldName = 'CD_ASSUNTO_VINCUL'
      Size = 1
    end
    object T_atosvincSG_TIPO_ATO_VINCUL: TStringField
      FieldName = 'SG_TIPO_ATO_VINCUL'
      Size = 5
    end
    object T_atosvincSG_ORG_ATO_VINCUL: TStringField
      FieldName = 'SG_ORG_ATO_VINCUL'
      Size = 6
    end
    object T_atosvincDT_ANO_ATO_VINCUL: TStringField
      FieldName = 'DT_ANO_ATO_VINCUL'
      Size = 4
    end
    object T_atosvincNR_ATO_VINCULADO: TStringField
      FieldName = 'NR_ATO_VINCULADO'
      Size = 6
    end
    object T_atosvincNR_EX_ATO_VINCUL: TStringField
      FieldName = 'NR_EX_ATO_VINCUL'
      Size = 3
    end
  end
  object ds_atosvinc: TDataSource
    DataSet = T_atosvinc
    Left = 236
    Top = 52
  end
  object T_cargaarm: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_ARMAZEM'
    TableName = 'CARGA_ARMAZÉM'
    Left = 248
    Top = 134
    object T_cargaarmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_cargaarmNR_SEQ_ARMAZEM: TSmallintField
      FieldName = 'NR_SEQ_ARMAZEM'
    end
    object T_cargaarmNM_ARMAZEM_CARGA: TStringField
      FieldName = 'NM_ARMAZEM_CARGA'
      Size = 10
    end
  end
  object ds_cargaarm: TDataSource
    DataSet = T_cargaarm
    Left = 236
    Top = 52
  end
  object T_deduval: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_MET_DEDUC_VALOR'
    TableName = 'DEDUÇÃO_VALORAÇÃO'
    Left = 636
    Top = 406
    object T_deduvalNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_deduvalNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_deduvalCD_MET_DEDUC_VALOR: TStringField
      FieldName = 'CD_MET_DEDUC_VALOR'
      Size = 3
    end
    object T_deduvalVL_DEDUCAO_MNEG: TFloatField
      FieldName = 'VL_DEDUCAO_MNEG'
    end
    object T_deduvalCD_MD_NEGOC_DEDUC: TStringField
      FieldName = 'CD_MD_NEGOC_DEDUC'
      Size = 3
    end
    object T_deduvalVL_DEDUCAO_MN: TFloatField
      FieldName = 'VL_DEDUCAO_MN'
    end
  end
  object ds_deduval: TDataSource
    DataSet = T_deduval
    Left = 236
    Top = 56
  end
  object t_destaquencm: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NU_SEQ_DESTAQUE'
    TableName = 'DESTAQUE_NCM'
    Left = 708
    Top = 410
    object t_destaquencmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_destaquencmNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object t_destaquencmNU_SEQ_DESTAQUE: TSmallintField
      FieldName = 'NU_SEQ_DESTAQUE'
    end
    object t_destaquencmNR_DESTAQUE_NCM: TStringField
      FieldName = 'NR_DESTAQUE_NCM'
      Size = 3
    end
  end
  object ds_destaquencm: TDataSource
    DataSet = t_destaquencm
    Left = 236
    Top = 56
  end
  object T_docsintru: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_DCTO_INSTR'
    TableName = 'DOCUMENTO_INSTRUÇÃO'
    Left = 536
    Top = 390
    object T_docsintruNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_docsintruNR_SEQ_DCTO_INSTR: TSmallintField
      FieldName = 'NR_SEQ_DCTO_INSTR'
    end
    object T_docsintruCD_TIPO_DCTO_INSTR: TStringField
      FieldName = 'CD_TIPO_DCTO_INSTR'
      Size = 2
    end
    object T_docsintruNR_DCTO_INSTRUCAO: TStringField
      FieldName = 'NR_DCTO_INSTRUCAO'
      Size = 25
    end
    object T_docsintruNM_DCTO_INSTRUCAO: TStringField
      FieldName = 'NM_DCTO_INSTRUCAO'
      Size = 60
    end
  end
  object ds_codsinstru: TDataSource
    DataSet = T_docsintru
    Left = 236
    Top = 56
  end
  object T_embcarga: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_EMBALAGEM'
    TableName = 'EMBALAGEM_CARGA'
    Left = 500
    Top = 390
    object T_embcargaNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_embcargaNR_SEQ_EMBALAGEM: TSmallintField
      FieldName = 'NR_SEQ_EMBALAGEM'
    end
    object T_embcargaCD_TIPO_EMBALAGEM: TStringField
      FieldName = 'CD_TIPO_EMBALAGEM'
      Size = 2
    end
    object T_embcargaQT_VOLUME_CARGA: TStringField
      FieldName = 'QT_VOLUME_CARGA'
      Size = 5
    end
  end
  object ds_embcarga: TDataSource
    DataSet = T_embcarga
    Left = 236
    Top = 56
  end
  object T_pagprevisto: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NU_SEQ_PAG_PREV'
    TableName = 'PAGAMENTO_PREVISTO'
    Left = 672
    Top = 406
    object T_pagprevistoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_pagprevistoNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_pagprevistoNU_SEQ_PAG_PREV: TSmallintField
      FieldName = 'NU_SEQ_PAG_PREV'
    end
    object T_pagprevistoDT_PREV_PGTO_360: TStringField
      FieldName = 'DT_PREV_PGTO_360'
      Size = 6
    end
    object T_pagprevistoVL_PREV_PGTO_360: TFloatField
      FieldName = 'VL_PREV_PGTO_360'
    end
  end
  object ds_pagprevisto: TDataSource
    DataSet = T_pagprevisto
    Left = 236
    Top = 56
  end
  object T_pagtributos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_PGTO_TRIB'
    TableName = 'PAGAMENTO_TRIBUTOS'
    Left = 460
    Top = 406
    object T_pagtributosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_pagtributosNR_SEQ_PGTO_TRIB: TSmallintField
      FieldName = 'NR_SEQ_PGTO_TRIB'
    end
    object T_pagtributosCD_RECEITA_PGTO: TStringField
      FieldName = 'CD_RECEITA_PGTO'
      Size = 4
    end
    object T_pagtributosCD_BANCO_PGTO_TRIB: TStringField
      FieldName = 'CD_BANCO_PGTO_TRIB'
      Size = 3
    end
    object T_pagtributosNR_AGENC_PGTO_TRIB: TStringField
      FieldName = 'NR_AGENC_PGTO_TRIB'
      Size = 4
    end
    object T_pagtributosVL_TRIBUTO_PAGO: TFloatField
      FieldName = 'VL_TRIBUTO_PAGO'
    end
    object T_pagtributosDT_PGTO_TRIBUTO: TStringField
      FieldName = 'DT_PGTO_TRIBUTO'
      Size = 8
    end
    object T_pagtributosVL_MULTA_PGTO_TRIB: TFloatField
      FieldName = 'VL_MULTA_PGTO_TRIB'
    end
    object T_pagtributosVL_JUROS_PGTO_TRIB: TFloatField
      FieldName = 'VL_JUROS_PGTO_TRIB'
    end
  end
  object ds_pagtributos: TDataSource
    DataSet = T_pagtributos
    Left = 236
    Top = 52
  end
  object T_pagvinculado: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 
      'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NR_SEQ_PAGAMENTO;CD_FORMA_PAGA' +
      'MENTO'
    TableName = 'PAGAMENTO_VINCULADO'
    Left = 280
    Top = 410
    object T_pagvinculadoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_pagvinculadoNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_pagvinculadoNR_SEQ_PAGAMENTO: TSmallintField
      FieldName = 'NR_SEQ_PAGAMENTO'
    end
    object T_pagvinculadoCD_FORMA_PAGAMENTO: TStringField
      FieldName = 'CD_FORMA_PAGAMENTO'
      Size = 1
    end
    object T_pagvinculadoIN_PAGAMENTO_MN: TBooleanField
      FieldName = 'IN_PAGAMENTO_MN'
    end
    object T_pagvinculadoCD_BANCO_PAGAMENTO: TStringField
      FieldName = 'CD_BANCO_PAGAMENTO'
      Size = 5
    end
    object T_pagvinculadoCD_PRACA_PAGAMENTO: TStringField
      FieldName = 'CD_PRACA_PAGAMENTO'
      Size = 4
    end
    object T_pagvinculadoNR_OP_CAMBIO: TStringField
      FieldName = 'NR_OP_CAMBIO'
      Size = 8
    end
    object T_pagvinculadoVL_VINC_MD_CAMBIO: TFloatField
      FieldName = 'VL_VINC_MD_CAMBIO'
    end
    object T_pagvinculadoNR_COMPR_CAMBIO: TStringField
      FieldName = 'NR_COMPR_CAMBIO'
      Size = 14
    end
    object T_pagvinculadoCD_TP_COMPR_CAMBIO: TStringField
      FieldName = 'CD_TP_COMPR_CAMBIO'
      Size = 1
    end
  end
  object ds_pavinculado: TDataSource
    DataSet = T_pagvinculado
    Left = 236
    Top = 52
  end
  object T_tributo: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_RECEITA_IMPOSTO'
    TableName = 'TRIBUTO'
    Left = 300
    Top = 406
    object T_tributoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_tributoNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_tributoCD_RECEITA_IMPOSTO: TStringField
      FieldName = 'CD_RECEITA_IMPOSTO'
      Size = 4
    end
    object T_tributoCD_TIPO_ALIQ_IPT: TStringField
      FieldName = 'CD_TIPO_ALIQ_IPT'
      Size = 1
    end
    object T_tributoVL_BASE_CALC_ADVAL: TFloatField
      FieldName = 'VL_BASE_CALC_ADVAL'
    end
    object T_tributoPC_ALIQ_NORM_ADVAL: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL'
    end
    object T_tributoVL_CALC_IPT_ADVAL: TFloatField
      FieldName = 'VL_CALC_IPT_ADVAL'
    end
    object T_tributoNM_UN_ALIQ_ESP_IPT: TStringField
      FieldName = 'NM_UN_ALIQ_ESP_IPT'
      Size = 15
    end
    object T_tributoCD_TIPO_RECIPIENTE: TStringField
      FieldName = 'CD_TIPO_RECIPIENTE'
      Size = 2
    end
    object T_tributoQT_ML_RECIPIENTE: TFloatField
      FieldName = 'QT_ML_RECIPIENTE'
    end
    object T_tributoQT_MERC_UN_ALIQ_ES: TFloatField
      FieldName = 'QT_MERC_UN_ALIQ_ES'
    end
    object T_tributoVL_ALIQ_ESPEC_IPT: TFloatField
      FieldName = 'VL_ALIQ_ESPEC_IPT'
    end
    object T_tributoVL_CALC_IPT_ESPEC: TFloatField
      FieldName = 'VL_CALC_IPT_ESPEC'
    end
    object T_tributoCD_TIPO_BENEF_IPI: TStringField
      FieldName = 'CD_TIPO_BENEF_IPI'
      Size = 1
    end
    object T_tributoPC_ALIQ_REDUZIDA: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA'
    end
    object T_tributoPC_REDUCAO_IPT_BLI: TFloatField
      FieldName = 'PC_REDUCAO_IPT_BLI'
    end
    object T_tributoPC_ALIQ_ACOR_TARIF: TFloatField
      FieldName = 'PC_ALIQ_ACOR_TARIF'
    end
    object T_tributoVL_CALC_II_AC_TARI: TFloatField
      FieldName = 'VL_CALC_II_AC_TARI'
    end
    object T_tributoVL_IMPOSTO_DEVIDO: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO'
    end
    object T_tributoVL_IPT_A_RECOLHER: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER'
    end
    object T_tributoCD_TIPO_DIREITO: TStringField
      FieldName = 'CD_TIPO_DIREITO'
      Size = 1
    end
    object T_tributoNR_NOTA_COMPL_TIPI: TStringField
      FieldName = 'NR_NOTA_COMPL_TIPI'
      Size = 2
    end
  end
  object ds_tributo: TDataSource
    DataSet = T_tributo
    Left = 272
    Top = 48
  end
  object Q_acresdedu: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, Sum(ItensFaturas.Acresc_reduc_Valaduan) AS SomaDeAcresc_reduc' +
        '_Valaduan, Faturas.Incoterm, Faturas.Moeda'
      
        'FROM ((Processos INNER JOIN Tributacao_Item_Fatura ON (Processos' +
        '.Código = Tributacao_Item_Fatura.Processo) AND (Processos.Filial' +
        ' = Tributacao_Item_Fatura.Filial) AND (Processos.Empresa = Tribu' +
        'tacao_Item_Fatura.Empresa)) INNER JOIN ItensFaturas ON (Tributac' +
        'ao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND (T' +
        'ributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tributa' +
        'cao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tributaca' +
        'o_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item' +
        '_Fatura.Empresa = ItensFaturas.Empresa)) INNER JOIN Faturas ON (' +
        'ItensFaturas.Fatura = Faturas.Código) AND (ItensFaturas.Processo' +
        ' = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Filial) ' +
        'AND (ItensFaturas.Empresa = Faturas.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, Faturas.Incoterm, Faturas.Moeda;')
    UpdateMode = upWhereChanged
    Left = 740
    Top = 84
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_acresdeduNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_acresdeduAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object Q_acresdeduSomaDeAcresc_reduc_Valaduan: TFloatField
      FieldName = 'SomaDeAcresc_reduc_Valaduan'
    end
    object Q_acresdeduIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object Q_acresdeduMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
  end
  object ds_qacresdedu: TDataSource
    DataSet = Q_acresdedu
    Left = 272
    Top = 52
  end
  object Q_atovinc: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, Tributacao_Item_Fatura.Numero_Ato_Legal_II, Atos_Legais.Tipo_' +
        'Ato, Atos_Legais.Tipo_Ato_Legal, Atos_Legais.Orgao_Emissor, Atos' +
        '_Legais.Ano_Ato_Legal, Atos_Legais.EX, Atos_Legais_1.Tipo_Ato, A' +
        'tos_Legais_1.Numero, Atos_Legais_1.EX, Atos_Legais_1.Tipo_Ato_Le' +
        'gal, Atos_Legais_1.Orgao_Emissor, Atos_Legais_1.Ano_Ato_Legal, A' +
        'tos_Legais_2.Tipo_Ato, Atos_Legais_2.Numero, Atos_Legais_2.EX, A' +
        'tos_Legais_2.Tipo_Ato_Legal, Atos_Legais_2.Orgao_Emissor, Atos_L' +
        'egais_2.Ano_Ato_Legal'
      
        'FROM ((((Processos INNER JOIN Tributacao_Item_Fatura ON (Process' +
        'os.Código = Tributacao_Item_Fatura.Processo) AND (Processos.Fili' +
        'al = Tributacao_Item_Fatura.Filial) AND (Processos.Empresa = Tri' +
        'butacao_Item_Fatura.Empresa)) INNER JOIN ItensFaturas ON (Tribut' +
        'acao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND ' +
        '(Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tribu' +
        'tacao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tributa' +
        'cao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_It' +
        'em_Fatura.Empresa = ItensFaturas.Empresa)) LEFT JOIN Atos_Legais' +
        ' ON (Tributacao_Item_Fatura.Numero_Ato_Legal_II = Atos_Legais.Nu' +
        'mero) AND (Tributacao_Item_Fatura.Filial = Atos_Legais.Filial) A' +
        'ND (Tributacao_Item_Fatura.Empresa = Atos_Legais.Empresa)) LEFT ' +
        'JOIN Atos_Legais AS Atos_Legais_1 ON (Tributacao_Item_Fatura.Num' +
        'ero_Ato_Legal_IPI = Atos_Legais_1.Numero) AND (Tributacao_Item_F' +
        'atura.Filial = Atos_Legais_1.Filial) AND (Tributacao_Item_Fatura' +
        '.Empresa = Atos_Legais_1.Empresa)) LEFT JOIN Atos_Legais AS Atos' +
        '_Legais_2 ON (Tributacao_Item_Fatura.Numero_Ato_Legal_ALADI = At' +
        'os_Legais_2.Numero) AND (Tributacao_Item_Fatura.Filial = Atos_Le' +
        'gais_2.Filial) AND (Tributacao_Item_Fatura.Empresa = Atos_Legais' +
        '_2.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, Tributacao_Item_Fatura.Numero_Ato_Legal_II, Atos_Legais.Tip' +
        'o_Ato, Atos_Legais.Tipo_Ato_Legal, Atos_Legais.Orgao_Emissor, At' +
        'os_Legais.Ano_Ato_Legal, Atos_Legais.EX, Atos_Legais_1.Tipo_Ato,' +
        ' Atos_Legais_1.Numero, Atos_Legais_1.EX, Atos_Legais_1.Tipo_Ato_' +
        'Legal, Atos_Legais_1.Orgao_Emissor, Atos_Legais_1.Ano_Ato_Legal,' +
        ' Atos_Legais_2.Tipo_Ato, Atos_Legais_2.Numero, Atos_Legais_2.EX,' +
        ' Atos_Legais_2.Tipo_Ato_Legal, Atos_Legais_2.Orgao_Emissor, Atos' +
        '_Legais_2.Ano_Ato_Legal;')
    UpdateMode = upWhereChanged
    Left = 696
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_atovincNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_atovincAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object Q_atovincNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object Q_atovincAtos_LegaisTipo_Ato: TStringField
      FieldName = 'Atos_Legais.Tipo_Ato'
      Size = 1
    end
    object Q_atovincAtos_LegaisTipo_Ato_Legal: TStringField
      FieldName = 'Atos_Legais.Tipo_Ato_Legal'
      Size = 10
    end
    object Q_atovincAtos_LegaisOrgao_Emissor: TStringField
      FieldName = 'Atos_Legais.Orgao_Emissor'
      Size = 10
    end
    object Q_atovincAtos_LegaisAno_Ato_Legal: TStringField
      FieldName = 'Atos_Legais.Ano_Ato_Legal'
      Size = 4
    end
    object Q_atovincAtos_LegaisEX: TStringField
      FieldName = 'Atos_Legais.EX'
      Size = 3
    end
    object Q_atovincAtos_Legais_1Tipo_Ato: TStringField
      FieldName = 'Atos_Legais_1.Tipo_Ato'
      Size = 1
    end
    object Q_atovincAtos_Legais_1Numero: TStringField
      FieldName = 'Atos_Legais_1.Numero'
      Size = 5
    end
    object Q_atovincAtos_Legais_1EX: TStringField
      FieldName = 'Atos_Legais_1.EX'
      Size = 3
    end
    object Q_atovincAtos_Legais_1Tipo_Ato_Legal: TStringField
      FieldName = 'Atos_Legais_1.Tipo_Ato_Legal'
      Size = 10
    end
    object Q_atovincAtos_Legais_1Orgao_Emissor: TStringField
      FieldName = 'Atos_Legais_1.Orgao_Emissor'
      Size = 10
    end
    object Q_atovincAtos_Legais_1Ano_Ato_Legal: TStringField
      FieldName = 'Atos_Legais_1.Ano_Ato_Legal'
      Size = 4
    end
    object Q_atovincAtos_Legais_2Tipo_Ato: TStringField
      FieldName = 'Atos_Legais_2.Tipo_Ato'
      Size = 1
    end
    object Q_atovincAtos_Legais_2Numero: TStringField
      FieldName = 'Atos_Legais_2.Numero'
      Size = 5
    end
    object Q_atovincAtos_Legais_2EX: TStringField
      FieldName = 'Atos_Legais_2.EX'
      Size = 3
    end
    object Q_atovincAtos_Legais_2Tipo_Ato_Legal: TStringField
      FieldName = 'Atos_Legais_2.Tipo_Ato_Legal'
      Size = 10
    end
    object Q_atovincAtos_Legais_2Orgao_Emissor: TStringField
      FieldName = 'Atos_Legais_2.Orgao_Emissor'
      Size = 10
    end
    object Q_atovincAtos_Legais_2Ano_Ato_Legal: TStringField
      FieldName = 'Atos_Legais_2.Ano_Ato_Legal'
      Size = 4
    end
  end
  object ds_qatovinc: TDataSource
    DataSet = Q_atovinc
    Left = 272
    Top = 52
  end
  object q_embcarga: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Embalagem_Processo.TipoEmbal' +
        'agem, Embalagem_Processo.Quantidade'
      
        'FROM Processos INNER JOIN Embalagem_Processo ON (Processos.Códig' +
        'o = Embalagem_Processo.Processo) AND (Processos.Filial = Embalag' +
        'em_Processo.Filial) AND (Processos.Empresa = Embalagem_Processo.' +
        'Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Embalagem_Processo.TipoEmb' +
        'alagem, Embalagem_Processo.Quantidade;')
    UpdateMode = upWhereChanged
    Left = 689
    Top = 206
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_embcargaNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Origin = 'DBNMSCOMEX.Processos.NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_embcargaTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.TipoEmbalagem'
      Size = 2
    end
    object q_embcargaQuantidade: TStringField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Quantidade'
      Size = 5
    end
  end
  object ds_qembcarga: TDataSource
    DataSet = q_embcarga
    Left = 272
    Top = 48
  end
  object Q_cargaarm: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Armazem_Processo.Nome_Armaze' +
        'm'
      
        'FROM Processos INNER JOIN Armazem_Processo ON (Processos.Código ' +
        '= Armazem_Processo.Processo) AND (Processos.Filial = Armazem_Pro' +
        'cesso.Filial) AND (Processos.Empresa = Armazem_Processo.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Armazem_Processo.Nome_Arma' +
        'zem;')
    UpdateMode = upWhereChanged
    Left = 696
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_cargaarmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Origin = 'DBNMSCOMEX.Processos.NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_cargaarmNome_Armazem: TStringField
      FieldName = 'Nome_Armazem'
      Origin = 'DBNMSCOMEX.Armazem_Processo.Nome_Armazem'
      Size = 50
    end
  end
  object ds_qcargarm: TDataSource
    DataSet = Q_cargaarm
    Left = 268
    Top = 52
  end
  object q_destaquencm: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, ItensFaturas.Destaque_NCM'
      
        'FROM (Processos INNER JOIN Tributacao_Item_Fatura ON (Processos.' +
        'Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filial ' +
        '= Tributacao_Item_Fatura.Filial) AND (Processos.Código = Tributa' +
        'cao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tributaca' +
        'o_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao_It' +
        'em_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_Fat' +
        'ura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fatur' +
        'a.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Sequ' +
        'encial_Item = ItensFaturas.Sequencial)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, ItensFaturas.Destaque_NCM;')
    UpdateMode = upWhereChanged
    Left = 740
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_destaquencmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_destaquencmAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object q_destaquencmDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
  end
  object ds_qdestaque: TDataSource
    DataSet = q_destaquencm
    Left = 272
    Top = 52
  end
  object q_docsinstru: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, "01" AS cod_fat, "FATURA COM' +
        'ERCIAL" AS tipo_doc01, Tributacao_Item_Fatura.Fatura, "02" AS co' +
        'd_co, "CERTIFICADO DE ORIGEM" AS tipo_doc02, Tributacao_Item_Fat' +
        'ura.Certificado_Origem'
      
        'FROM Processos INNER JOIN Tributacao_Item_Fatura ON (Processos.E' +
        'mpresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filial =' +
        ' Tributacao_Item_Fatura.Filial) AND (Processos.Código = Tributac' +
        'ao_Item_Fatura.Processo)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, "01", "FATURA COMERCIAL", ' +
        'Tributacao_Item_Fatura.Fatura, "02", "CERTIFICADO DE ORIGEM", Tr' +
        'ibutacao_Item_Fatura.Certificado_Origem;')
    UpdateMode = upWhereChanged
    Left = 672
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_docsinstruNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_docsinstrucod_fat: TStringField
      FieldName = 'cod_fat'
      Size = 255
    end
    object q_docsinstrutipo_doc01: TStringField
      FieldName = 'tipo_doc01'
      Size = 255
    end
    object q_docsinstruFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object q_docsinstrucod_co: TStringField
      FieldName = 'cod_co'
      Size = 255
    end
    object q_docsinstrutipo_doc02: TStringField
      FieldName = 'tipo_doc02'
      Size = 255
    end
    object q_docsinstruCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
  end
  object ds_qdocsinstru: TDataSource
    DataSet = q_docsinstru
    Left = 268
    Top = 56
  end
  object Q_tributos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, "0001" AS cod_II, "1" AS tipo_aliq, Sum(([itensfaturas].[Base' +
        '_Calc_II]/[itensfaturas].[quantidade])*[Tributacao_item_fatura].' +
        '[quantidade]) AS Base_Calc_II, Tributacao_Item_Fatura.Aliq_NCM_I' +
        'I, Sum(Tributacao_Item_Fatura.Valor_II_Devido) AS SomaDeValor_II' +
        '_Devido, Tributacao_Item_Fatura.Percentual_Reducao_II, Sum(Tribu' +
        'tacao_Item_Fatura.Valor_II_a_recolher) AS SomaDeValor_II_a_recol' +
        'her, "0002" AS cod_IPI, Tributacao_Item_Fatura.Regime_Tributacao' +
        '_IPI, Sum(Tributacao_Item_Fatura.Valor_IPI_a_recolher) AS SomaDe' +
        'Valor_IPI_a_recolher, Sum(Tributacao_Item_Fatura.Valor_IPI_Devid' +
        'o) AS SomaDeValor_IPI_Devido, Tributacao_Item_Fatura.Percentual_' +
        'Reduca_IPI, Faturas.Moeda, Sum(Tributacao_Item_Fatura.Base_Calc_' +
        'IPI) AS SomaDeBase_Calc_IPI, Tributacao_Item_Fatura.ALIQUOTA_ALA' +
        'DI, Tributacao_Item_Fatura.Aliq_NCM_IPI'
      
        'FROM ((Processos INNER JOIN Tributacao_Item_Fatura ON (Processos' +
        '.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filial' +
        ' = Tributacao_Item_Fatura.Filial) AND (Processos.Código = Tribut' +
        'acao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tributac' +
        'ao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao_I' +
        'tem_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_Fa' +
        'tura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fatu' +
        'ra.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Seq' +
        'uencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON (' +
        'ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Filial' +
        ' = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Processo' +
        ') AND (ItensFaturas.Fatura = Faturas.Código)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, "0001", "1", Tributacao_Item_Fatura.Aliq_NCM_II, Tributacao' +
        '_Item_Fatura.Percentual_Reducao_II, "0002", Tributacao_Item_Fatu' +
        'ra.Regime_Tributacao_IPI, Tributacao_Item_Fatura.Percentual_Redu' +
        'ca_IPI, Faturas.Moeda, Tributacao_Item_Fatura.ALIQUOTA_ALADI, Tr' +
        'ibutacao_Item_Fatura.Aliq_NCM_IPI;')
    UpdateMode = upWhereChanged
    Left = 692
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_tributosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_tributosAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object Q_tributoscod_II: TStringField
      FieldName = 'cod_II'
      Size = 255
    end
    object Q_tributostipo_aliq: TStringField
      FieldName = 'tipo_aliq'
      Size = 255
    end
    object Q_tributosBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object Q_tributosAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object Q_tributosSomaDeValor_II_Devido: TFloatField
      FieldName = 'SomaDeValor_II_Devido'
    end
    object Q_tributosPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object Q_tributosSomaDeValor_II_a_recolher: TFloatField
      FieldName = 'SomaDeValor_II_a_recolher'
    end
    object Q_tributoscod_IPI: TStringField
      FieldName = 'cod_IPI'
      Size = 255
    end
    object Q_tributosRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object Q_tributosSomaDeValor_IPI_a_recolher: TFloatField
      FieldName = 'SomaDeValor_IPI_a_recolher'
    end
    object Q_tributosSomaDeValor_IPI_Devido: TFloatField
      FieldName = 'SomaDeValor_IPI_Devido'
    end
    object Q_tributosPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object Q_tributosMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object Q_tributosALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object Q_tributosAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object Q_tributosSomaDeBase_Calc_IPI: TFloatField
      FieldName = 'SomaDeBase_Calc_IPI'
    end
  end
  object ds_qtributos: TDataSource
    DataSet = Q_tributos
    Left = 272
    Top = 56
  end
  object q_pagprev: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, PG_PARC_VAR.[Data de Pagamento], PG_PARC_VAR.Percentual, Sum(' +
        '([itensfaturas].[valor_aduaneiro]/[itensfaturas].[quantidade])*[' +
        'tributacao_item_fatura].[quantidade]) AS Valor_Aduaneiro'
      
        'FROM (((Processos INNER JOIN Tributacao_Item_Fatura ON (Processo' +
        's.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filia' +
        'l = Tributacao_Item_Fatura.Filial) AND (Processos.Código = Tribu' +
        'tacao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tributa' +
        'cao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao_' +
        'Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_F' +
        'atura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fat' +
        'ura.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Se' +
        'quencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON ' +
        '(ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Filia' +
        'l = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Process' +
        'o) AND (ItensFaturas.Fatura = Faturas.Código)) INNER JOIN PG_PAR' +
        'C_VAR ON (Faturas.Empresa = PG_PARC_VAR.Empresa) AND (Faturas.Fi' +
        'lial = PG_PARC_VAR.Filial) AND (Faturas.Processo = PG_PARC_VAR.P' +
        'rocesso) AND (Faturas.Código = PG_PARC_VAR.Fatura)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, PG_PARC_VAR.[Data de Pagamento], PG_PARC_VAR.Percentual;')
    UpdateMode = upWhereChanged
    Left = 732
    Top = 196
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_pagprevNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_pagprevAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object q_pagprevDatadePagamento: TStringField
      FieldName = 'Data de Pagamento'
      Size = 6
    end
    object q_pagprevPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object q_pagprevValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
  end
  object ds_qpagprev: TDataSource
    DataSet = q_pagprev
    Left = 272
    Top = 44
  end
  object q_pagtributos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Max(Tributacao_Item_Fatura.A' +
        'dicao) AS nadicoes, "0086" AS cod_ii, "1038" AS cod_ipi, "7811" ' +
        'AS cod_sis, Importadores.Banco, Importadores.Agencia, Sum(([Valo' +
        'r_II_a_recolher]*[TAXA_CONVERSAO])) AS somadeValor_II_a_recolher' +
        ', Sum(([Valor_IPI_a_recolher]*[taxa_conversao])) AS somadeValor_' +
        'IPI_a_recolher'
      
        'FROM ((((Processos INNER JOIN Tributacao_Item_Fatura ON (Process' +
        'os.Código = Tributacao_Item_Fatura.Processo) AND (Processos.Fili' +
        'al = Tributacao_Item_Fatura.Filial) AND (Processos.Empresa = Tri' +
        'butacao_Item_Fatura.Empresa)) INNER JOIN ItensFaturas ON (Tribut' +
        'acao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND ' +
        '(Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tribu' +
        'tacao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tributa' +
        'cao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_It' +
        'em_Fatura.Empresa = ItensFaturas.Empresa)) INNER JOIN Faturas ON' +
        ' (ItensFaturas.Fatura = Faturas.Código) AND (ItensFaturas.Proces' +
        'so = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Filial' +
        ') AND (ItensFaturas.Empresa = Faturas.Empresa)) INNER JOIN Impor' +
        'tadores ON (Processos.Empresa = Importadores.Empresa) AND (Proce' +
        'ssos.Filial = Importadores.Filial) AND (Processos.Importador = I' +
        'mportadores.Codigo)) INNER JOIN Processos_Taxas_Conversao ON (Fa' +
        'turas.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas.Proc' +
        'esso = Processos_Taxas_Conversao.Processo) AND (Faturas.Filial =' +
        ' Processos_Taxas_Conversao.Filial) AND (Faturas.Empresa = Proces' +
        'sos_Taxas_Conversao.Empresa)'
      
        'WHERE (((Processos.Empresa)=:empresa) AND ((Processos.Filial)=:f' +
        'ilial) AND ((Processos.Código)=:processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, "0086", "1038", "7811", Im' +
        'portadores.Banco, Importadores.Agencia;')
    UpdateMode = upWhereChanged
    Left = 736
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_pagtributosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_pagtributosnadicoes: TStringField
      FieldName = 'nadicoes'
      Size = 255
    end
    object q_pagtributoscod_ii: TStringField
      FieldName = 'cod_ii'
      Size = 255
    end
    object q_pagtributoscod_ipi: TStringField
      FieldName = 'cod_ipi'
      Size = 255
    end
    object q_pagtributoscod_sis: TStringField
      FieldName = 'cod_sis'
      Size = 255
    end
    object q_pagtributosBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object q_pagtributosAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object q_pagtributosSomaDeValor_II_a_recolher: TFloatField
      FieldName = 'SomaDeValor_II_a_recolher'
    end
    object q_pagtributosSomaDeValor_IPI_a_recolher: TFloatField
      FieldName = 'SomaDeValor_IPI_a_recolher'
    end
  end
  object ds_qpagtributos: TDataSource
    DataSet = q_pagtributos
    Left = 276
    Top = 56
  end
  object q_pagvinculados: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, PG_PERC_VINC.[Forma de Pagamento], PG_PERC_VINC.[Moeda Nacion' +
        'al], PG_PERC_VINC.Banco, PG_PERC_VINC.Praca, PG_PERC_VINC.Contra' +
        'to, PG_PERC_VINC.[Valor Percentual], PG_PERC_VINC.[CNPJ Comprado' +
        'r], PG_PERC_VINC.[Tipo CNPJ], Sum(([itensfaturas].[valor_aduanei' +
        'ro]/[itensfaturas].[quantidade])*[tributacao_item_fatura].[quant' +
        'idade]) AS Valor_Aduaneiro'
      
        'FROM (((Processos INNER JOIN Tributacao_Item_Fatura ON (Processo' +
        's.Código = Tributacao_Item_Fatura.Processo) AND (Processos.Filia' +
        'l = Tributacao_Item_Fatura.Filial) AND (Processos.Empresa = Trib' +
        'utacao_Item_Fatura.Empresa)) INNER JOIN ItensFaturas ON (Tributa' +
        'cao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND (' +
        'Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tribut' +
        'acao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tributac' +
        'ao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Ite' +
        'm_Fatura.Empresa = ItensFaturas.Empresa)) INNER JOIN Faturas ON ' +
        '(ItensFaturas.Fatura = Faturas.Código) AND (ItensFaturas.Process' +
        'o = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Filial)' +
        ' AND (ItensFaturas.Empresa = Faturas.Empresa)) INNER JOIN PG_PER' +
        'C_VINC ON (Faturas.Empresa = PG_PERC_VINC.Empresa) AND (Faturas.' +
        'Filial = PG_PERC_VINC.Filial) AND (Faturas.Processo = PG_PERC_VI' +
        'NC.Processo) AND (Faturas.Código = PG_PERC_VINC.Fatura)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, PG_PERC_VINC.[Forma de Pagamento], PG_PERC_VINC.[Moeda Naci' +
        'onal], PG_PERC_VINC.Banco, PG_PERC_VINC.Praca, PG_PERC_VINC.Cont' +
        'rato, PG_PERC_VINC.[Valor Percentual], PG_PERC_VINC.[CNPJ Compra' +
        'dor], PG_PERC_VINC.[Tipo CNPJ];')
    UpdateMode = upWhereChanged
    Left = 740
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_pagvinculadosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_pagvinculadosAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object q_pagvinculadosFormadePagamento: TStringField
      FieldName = 'Forma de Pagamento'
      Size = 1
    end
    object q_pagvinculadosMoedaNacional: TBooleanField
      FieldName = 'Moeda Nacional'
    end
    object q_pagvinculadosBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object q_pagvinculadosPraca: TStringField
      FieldName = 'Praca'
      Size = 4
    end
    object q_pagvinculadosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object q_pagvinculadosValorPercentual: TFloatField
      FieldName = 'Valor Percentual'
    end
    object q_pagvinculadosCNPJComprador: TStringField
      FieldName = 'CNPJ Comprador'
      Size = 14
    end
    object q_pagvinculadosTipoCNPJ: TStringField
      FieldName = 'Tipo CNPJ'
      Size = 1
    end
    object q_pagvinculadosValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
  end
  object ds_qpagvinculados: TDataSource
    DataSet = q_pagvinculados
    Left = 268
    Top = 48
  end
  object q_infcomp: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresas.Razao_Social, Filiais.Descricao, Conhecimento_Pr' +
        'ocesso.PLaca, Conhecimento_Processo.Embarcacao, Conhecimento_Pro' +
        'cesso.Tipodoccarga, Conhecimento_Processo.Numerodoccarga, Conhec' +
        'imento_Processo.Numeromaster, Conhecimento_Processo.Tipomanifest' +
        'o, Conhecimento_Processo.Numeromanifesto, Conhecimento_Processo.' +
        'Codigo_Presenca_Carga, Conhecimento_Processo.URF_chegada, Conhec' +
        'imento_Processo.Data_Chegada_URF_Cheg, Conhecimento_Processo.URF' +
        '_Despacho, Conhecimento_Processo.Data_Chegada_URF_Desp, Conhecim' +
        'ento_Processo.Recinto_Alfandegario, Conhecimento_Processo.Setor_' +
        'Alfandegario, Concargas.Codigo, Concargas.Descricao_tipo, Concar' +
        'gas.Lacre, Faturas.Código, Faturas.[ROF BACEN], PG_PERC_VINC.Con' +
        'trato, Tributacao_Item_Fatura.Adicao, Tributacao_Item_Fatura.Cer' +
        'tificado_Origem, Tributacao_Item_Fatura.Ato_Concessorio, Tributa' +
        'cao_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item_Fatura.Numero_A' +
        'to_Legal_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_II, Tri' +
        'butacao_Item_Fatura.Fundamento_Legal_II, Tributacao_Item_Fatura.' +
        'Numero_Ato_Legal_II, Tributacao_Item_Fatura.Regime_Tributacao_IP' +
        'I, Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributacao_Item_' +
        'Fatura.Percentual_Reducao_II, Tributacao_Item_Fatura.Percentual_' +
        'Reduca_IPI, Tributacao_Item_Fatura.ALIQUOTA_ALADI'
      
        'FROM (((((((Processos INNER JOIN Empresas ON Processos.Empresa =' +
        ' Empresas.Codigo) INNER JOIN Filiais ON (Processos.Filial = Fili' +
        'ais.Codigo_Filial) AND (Processos.Empresa = Filiais.Codigo_Empre' +
        'sa)) INNER JOIN Conhecimento_Processo ON (Processos.Código = Con' +
        'hecimento_Processo.Processo) AND (Processos.Filial = Conheciment' +
        'o_Processo.Filial) AND (Processos.Empresa = Conhecimento_Process' +
        'o.Empresa)) LEFT JOIN Concargas ON (Processos.Código = Concargas' +
        '.Processo) AND (Processos.Filial = Concargas.Filial) AND (Proces' +
        'sos.Empresa = Concargas.Empresa)) INNER JOIN Faturas ON (Process' +
        'os.Código = Faturas.Processo) AND (Processos.Filial = Faturas.Fi' +
        'lial) AND (Processos.Empresa = Faturas.Empresa)) LEFT JOIN PG_PE' +
        'RC_VINC ON (Faturas.Código = PG_PERC_VINC.Fatura) AND (Faturas.P' +
        'rocesso = PG_PERC_VINC.Processo) AND (Faturas.Filial = PG_PERC_V' +
        'INC.Filial) AND (Faturas.Empresa = PG_PERC_VINC.Empresa)) INNER ' +
        'JOIN ItensFaturas ON (Faturas.Código = ItensFaturas.Fatura) AND ' +
        '(Faturas.Processo = ItensFaturas.Processo) AND (Faturas.Filial =' +
        ' ItensFaturas.Filial) AND (Faturas.Empresa = ItensFaturas.Empres' +
        'a)) INNER JOIN Tributacao_Item_Fatura ON (ItensFaturas.Sequencia' +
        'l = Tributacao_Item_Fatura.Sequencial_Item) AND (ItensFaturas.Fa' +
        'tura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Processo' +
        ' = Tributacao_Item_Fatura.Processo) AND (ItensFaturas.Filial = T' +
        'ributacao_Item_Fatura.Filial) AND (ItensFaturas.Empresa = Tribut' +
        'acao_Item_Fatura.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Código)=:Processo))'
      
        'GROUP BY Empresas.Razao_Social, Filiais.Descricao, Conhecimento_' +
        'Processo.PLaca, Conhecimento_Processo.Embarcacao, Conhecimento_P' +
        'rocesso.Tipodoccarga, Conhecimento_Processo.Numerodoccarga, Conh' +
        'ecimento_Processo.Numeromaster, Conhecimento_Processo.Tipomanife' +
        'sto, Conhecimento_Processo.Numeromanifesto, Conhecimento_Process' +
        'o.Codigo_Presenca_Carga, Conhecimento_Processo.URF_chegada, Conh' +
        'ecimento_Processo.Data_Chegada_URF_Cheg, Conhecimento_Processo.U' +
        'RF_Despacho, Conhecimento_Processo.Data_Chegada_URF_Desp, Conhec' +
        'imento_Processo.Recinto_Alfandegario, Conhecimento_Processo.Seto' +
        'r_Alfandegario, Concargas.Codigo, Concargas.Descricao_tipo, Conc' +
        'argas.Lacre, Faturas.Código, Faturas.[ROF BACEN], PG_PERC_VINC.C' +
        'ontrato, Tributacao_Item_Fatura.Adicao, Tributacao_Item_Fatura.C' +
        'ertificado_Origem, Tributacao_Item_Fatura.Ato_Concessorio, Tribu' +
        'tacao_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item_Fatura.Numero' +
        '_Ato_Legal_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_II, T' +
        'ributacao_Item_Fatura.Fundamento_Legal_II, Tributacao_Item_Fatur' +
        'a.Numero_Ato_Legal_II, Tributacao_Item_Fatura.Regime_Tributacao_' +
        'IPI, Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributacao_Ite' +
        'm_Fatura.Percentual_Reducao_II, Tributacao_Item_Fatura.Percentua' +
        'l_Reduca_IPI, Tributacao_Item_Fatura.ALIQUOTA_ALADI;')
    UpdateMode = upWhereChanged
    Left = 685
    Top = 114
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infcompRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 70
    end
    object q_infcompDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object q_infcompPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object q_infcompEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object q_infcompTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object q_infcompNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object q_infcompNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object q_infcompTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object q_infcompNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object q_infcompCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 25
    end
    object q_infcompURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object q_infcompData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object q_infcompURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object q_infcompData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object q_infcompRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object q_infcompSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object q_infcompCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object q_infcompDescricao_tipo: TStringField
      FieldName = 'Descricao_tipo'
      Size = 50
    end
    object q_infcompLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object q_infcompCdigo: TStringField
      FieldName = 'Código'
      Size = 15
    end
    object q_infcompROFBACEN: TStringField
      FieldName = 'ROF BACEN'
      Size = 8
    end
    object q_infcompContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object q_infcompAdicao: TStringField
      FieldName = 'Adicao'
      Size = 3
    end
    object q_infcompCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Size = 15
    end
    object q_infcompAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
    end
    object q_infcompMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      Size = 2
    end
    object q_infcompNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      Size = 5
    end
    object q_infcompRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object q_infcompFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Size = 2
    end
    object q_infcompNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      Size = 5
    end
    object q_infcompRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object q_infcompNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      Size = 5
    end
    object q_infcompPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object q_infcompPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object q_infcompALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
  end
  object ds_qinfcomp: TDataSource
    DataSet = q_infcomp
    Left = 232
    Top = 52
  end
  object T_contratos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;Importador'
    MasterSource = DS_processos
    TableName = 'Contratos'
    Left = 229
    Top = 114
    object T_contratosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_contratosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_contratosImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_contratosContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_contratosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_contratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object T_contratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object T_contratosTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object ds_contratos: TDataSource
    DataSet = T_contratos
    Left = 272
    Top = 48
  end
  object T_locais: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Local'
    MasterFields = 'Empresa;Filial;Importador;Contrato'
    MasterSource = DS_processos
    TableName = 'Locais_Inventario'
    Left = 321
    Top = 150
    object T_locaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_locaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_locaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_locaisContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_locaisLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_locaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_locaisTipo_local: TStringField
      FieldName = 'Tipo_local'
      Size = 4
    end
  end
  object ds_locais: TDataSource
    DataSet = T_locais
    Left = 268
    Top = 36
  end
  object T_fundaRCR: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'Fundamentacao_RCR'
    Left = 88
    Top = 65518
    object T_fundaRCRCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_fundaRCRDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object ds_fundaRCR: TDataSource
    DataSet = T_fundaRCR
    Left = 232
    Top = 56
  end
  object t_procuradores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Procuradores'
    Left = 460
    Top = 402
    object t_procuradoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_procuradoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_procuradoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object t_procuradoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object t_procuradoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object t_procuradoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object t_procuradoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object t_procuradoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object t_procuradoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object t_procuradoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object t_procuradoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object t_procuradoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object t_procuradoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object t_procuradoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object t_procuradoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object ds_procuradores: TDataSource
    DataSet = t_procuradores
    Left = 232
    Top = 56
  end
  object Q_ncm: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    SQL.Strings = (
      
        'SELECT TAB_NCM.CODIGO, TAB_NCM.DESCRICAO, TAB_NCM.UNIDADE_MEDIDA' +
        ' from TAB_NCM'
      
        'GROUP BY TAB_NCM.CODIGO, TAB_NCM.DESCRICAO, TAB_NCM.UNIDADE_MEDI' +
        'DA'
      
        'HAVING (TAB_NCM.CODIGO Like :codigo or TAB_NCM.DESCRICAO Like :q' +
        'descricodigo)')
    UpdateMode = upWhereChanged
    Left = 548
    Top = 65532
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qdescricodigo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_ncmCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNTABSISCO.TAB_NCM.CODIGO'
      Size = 8
    end
    object Q_ncmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNTABSISCO.TAB_NCM.DESCRICAO'
      Size = 120
    end
    object Q_ncmUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'DBNTABSISCO.TAB_NCM.UNIDADE_MEDIDA'
      Size = 4
    end
  end
  object ds_qncm: TDataSource
    DataSet = Q_ncm
    Left = 556
    Top = 8
  end
  object Q_exportadores: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT exportadores.Empresa, exportadores.Filial, exportadores.C' +
        'odigo, exportadores.[Razão Social] FROM exportadores'
      
        'GROUP BY exportadores.Empresa, exportadores.Filial, exportadores' +
        '.Codigo, exportadores.[Razão Social]'
      
        'HAVING (((exportadores.Empresa)=:empresa) AND ((exportadores.Fil' +
        'ial)=:filial) AND ((exportadores.Codigo) Like :codigo or exporta' +
        'dores.[Razão Social] Like :qdescr))')
    UpdateMode = upWhereChanged
    Left = 600
    Top = 65532
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qdescr'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_exportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object Q_exportadoresFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object Q_exportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object Q_exportadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Origin = 'DBNMSCOMEX.Importadores.Razão Social'
      Size = 60
    end
  end
  object ds_qexportadores: TDataSource
    DataSet = Q_exportadores
    Left = 608
    Top = 8
  end
  object Q_fabricantes: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT [Fabricantes / Produtores].Empresa, [Fabricantes / Produt' +
        'ores].Filial, [Fabricantes / Produtores].Codigo, [Fabricantes / ' +
        'Produtores].[Razão Social] FROM [Fabricantes / Produtores]'
      
        'GROUP BY [Fabricantes / Produtores].Empresa, [Fabricantes / Prod' +
        'utores].Filial, [Fabricantes / Produtores].Codigo, [Fabricantes ' +
        '/ Produtores].[Razão Social]'
      
        'HAVING ((([Fabricantes / Produtores].Empresa)=:empresa) AND (([F' +
        'abricantes / Produtores].Filial)=:filial) AND (([Fabricantes / P' +
        'rodutores].Codigo) Like :codigo or [Fabricantes / Produtores].[R' +
        'azão Social] Like :qdescr))')
    UpdateMode = upWhereChanged
    Left = 644
    Top = 65528
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qdescr'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_fabricantesEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object Q_fabricantesFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object Q_fabricantesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object Q_fabricantesrazosocial: TStringField
      FieldName = 'razão social'
      Size = 60
    end
  end
  object ds_qfabricantes: TDataSource
    DataSet = Q_fabricantes
    Left = 652
    Top = 4
  end
  object T_rcrtemp: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Processo'
    TableName = 'RCRtemp'
    Left = 680
    Top = 65532
    object T_rcrtempProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object T_rcrtempNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object T_rcrtempFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 15
    end
    object T_rcrtempPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object T_rcrtempQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_rcrtempValor: TFloatField
      FieldName = 'Valor'
    end
    object T_rcrtempDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
  end
  object ds_rcrtemp: TDataSource
    DataSet = T_rcrtemp
    Left = 692
    Top = 8
  end
  object T_procdi: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_PROCESSO'
    TableName = 'PROCESSO_DI'
    Left = 397
    Top = 65532
    object T_procdiNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_procdiNR_SEQ_PROCESSO: TSmallintField
      FieldName = 'NR_SEQ_PROCESSO'
    end
    object T_procdiCD_TIPO_PROCESSO: TStringField
      FieldName = 'CD_TIPO_PROCESSO'
      Size = 1
    end
    object T_procdiNR_PROCESSO_INSTR: TStringField
      FieldName = 'NR_PROCESSO_INSTR'
    end
  end
  object ds_procdi: TDataSource
    DataSet = T_procdi
    Left = 392
    Top = 8
  end
  object t_tiposnumerario: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Filter = 
      'CODIGO<>'#39'HONO'#39' AND CODIGO<>'#39'ISS'#39' AND CODIGO<>'#39'CPMF'#39' AND PLANO_CO' +
      'NTAS='#39'NUM'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Tipos_Numerario'
    Left = 456
    Top = 104
    object t_tiposnumerarioEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_tiposnumerarioFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_tiposnumerarioCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_tiposnumerarioDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_tiposnumerarioPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
  end
  object ds_tiposnumerario: TDataSource
    DataSet = t_tiposnumerario
    Left = 456
    Top = 96
  end
  object t_numerarios: TTable
    AutoCalcFields = False
    BeforePost = t_numerariosBeforePost
    AfterPost = t_numerariosAfterPost
    BeforeDelete = t_numerariosBeforeDelete
    AfterScroll = t_numerariosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Filter = 
      'NUMERARIO<>'#39'HONO'#39' AND NUMERARIO<>'#39'ISS'#39' AND NUMERARIO<>'#39'CPMF'#39' AND' +
      ' NUMERARIO<>'#39'TAXE'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = DS_processos
    TableName = 'Numerarios_Processos'
    Left = 488
    Top = 88
    object t_numerariosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_numerariosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_numerariosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_numerariosNumerario: TStringField
      FieldName = 'Numerario'
      Size = 4
    end
    object t_numerariosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      Size = 10
    end
    object t_numerariosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object t_numerariosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
      DisplayFormat = '###,###,##0.00'
    end
    object t_numerariosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      Size = 3
    end
    object t_numerariosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      Size = 3
    end
    object t_numerariosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      Size = 10
    end
    object t_numerariosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object t_numerariosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
      DisplayFormat = '###,###,#0.00'
    end
    object t_numerariosContabilizado: TStringField
      FieldName = 'Contabilizado'
      Size = 3
    end
    object t_numerariosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      Size = 10
    end
    object t_numerariosREG: TAutoIncField
      FieldName = 'REG'
    end
    object t_numerariosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object t_numerariosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object t_numerariosImpdemfim: TStringField
      FieldName = 'Impdemfim'
      Size = 3
    end
    object t_numerariosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object t_numerariosDetalhe: TStringField
      FieldName = 'Detalhe'
      Size = 50
    end
  end
  object ds_numerarios: TDataSource
    DataSet = t_numerarios
    Left = 488
    Top = 96
  end
  object T_contatosimp: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;Importador'
    MasterSource = DS_processos
    TableName = 'Contatos_Importadores'
    Left = 520
    Top = 88
    object T_contatosimpEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_contatosimpFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_contatosimpImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_contatosimpEmail_Numerario: TStringField
      FieldName = 'Email_Numerario'
      Size = 50
    end
    object T_contatosimpFax_Numerario: TStringField
      FieldName = 'Fax_Numerario'
      Size = 15
    end
    object T_contatosimpContato_Numerario: TStringField
      FieldName = 'Contato_Numerario'
      Size = 50
    end
    object T_contatosimpCC_Email: TStringField
      FieldName = 'CC_Email'
      Size = 150
    end
  end
  object ds_contatosimp: TDataSource
    DataSet = T_contatosimp
    Left = 520
    Top = 96
  end
  object T_canais: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'Canais'
    Left = 520
    Top = 28
    object T_canaisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 1
    end
    object T_canaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object ds_canais: TDataSource
    DataSet = T_canais
    Left = 496
    Top = 24
  end
  object T_status: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'codigo <> 0'
    Filtered = True
    IndexFieldNames = 'CODIGO'
    TableName = 'Tipos_status_processos'
    Left = 644
    Top = 132
    object T_statusCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object T_statusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object ds_status: TDataSource
    DataSet = T_status
    Left = 656
    Top = 148
  end
  object T_sitfis: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'Tipos_situacao_fiscal'
    Left = 644
    Top = 180
    object T_sitfisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 1
    end
    object T_sitfisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object ds_sitfis: TDataSource
    DataSet = T_sitfis
    Left = 656
    Top = 192
  end
  object T_pastas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Controle_Pastas'
    Left = 342
    Top = 5
    object T_pastasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_pastasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_pastasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_pastasUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object ds_pastas: TDataSource
    DataSet = T_pastas
    Left = 348
    Top = 16
  end
  object T_movpastas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Movimentacao_Pastas'
    Left = 444
    Top = 8
    object T_movpastasMovimento: TAutoIncField
      FieldName = 'Movimento'
    end
    object T_movpastasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_movpastasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_movpastasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_movpastasDe_usuario: TStringField
      FieldName = 'De_usuario'
      Size = 10
    end
    object T_movpastasPara_usuario: TStringField
      FieldName = 'Para_usuario'
      Size = 10
    end
    object T_movpastasData: TDateTimeField
      FieldName = 'Data'
    end
    object T_movpastasHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  object ds_movpastas: TDataSource
    DataSet = T_movpastas
    Left = 436
    Top = 12
  end
  object T_taxaconv: TTable
    AutoCalcFields = False
    AfterPost = T_taxaconvAfterPost
    BeforeDelete = T_taxaconvBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Moeda'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = DS_processos
    TableName = 'Processos_Taxas_Conversao'
    Left = 306
    Top = 9
    object T_taxaconvEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_taxaconvFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_taxaconvProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_taxaconvMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_taxaconvTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object T_taxaconvTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
  end
  object ds_taxaconv: TDataSource
    DataSet = T_taxaconv
    Left = 312
    Top = 24
  end
  object t_obstr: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = DS_processos
    TableName = 'Observacoes_verso_TR'
    Left = 424
    Top = 96
    object t_obstrEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_obstrFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_obstrCdigo: TStringField
      FieldName = 'Código'
      Required = True
      Size = 8
    end
    object t_obstrObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
  end
  object ds_obstr: TDataSource
    DataSet = t_obstr
    Left = 424
    Top = 96
  end
  object q_loceventos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * from eventos'
      'WHERE eventos.descricao like :qevento')
    Left = 560
    Top = 20
    ParamData = <
      item
        DataType = ftString
        Name = 'qevento'
        ParamType = ptUnknown
        Value = '*rcr*'
      end>
    object q_loceventosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Eventos.Empresa'
      Size = 4
    end
    object q_loceventosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Eventos.Filial'
      Size = 4
    end
    object q_loceventosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Eventos.Codigo'
      Size = 4
    end
    object q_loceventosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Eventos.Descricao'
      Size = 120
    end
  end
  object ds_qloceventos: TDataSource
    DataSet = q_loceventos
    Left = 552
    Top = 120
  end
  object q_followup: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Código, Fo' +
        'llowUp.Sequencial, FollowUp.Data, FollowUp.Hora, FollowUp.Codeve' +
        'nto, Eventos.Descricao AS qevento, FollowUp.Codobs, [Obs-Eventos' +
        '].Descricao AS qobs, FollowUp.Obs_especifica, FollowUp.link, Fol' +
        'lowUp.sequencial'
      
        'FROM ((Processos INNER JOIN FollowUp ON (Processos.Código = Foll' +
        'owUp.Processo) AND (Processos.Filial = FollowUp.Filial) AND (Pro' +
        'cessos.Empresa = FollowUp.Empresa)) LEFT JOIN Eventos ON (Follow' +
        'Up.Codevento = Eventos.Codigo) AND (FollowUp.Filial = Eventos.Fi' +
        'lial) AND (FollowUp.Empresa = Eventos.Empresa)) LEFT JOIN [Obs-E' +
        'ventos] ON (FollowUp.Codobs = [Obs-Eventos].Codigo) AND (FollowU' +
        'p.Codevento = [Obs-Eventos].Evento) AND (FollowUp.Filial = [Obs-' +
        'Eventos].Filial) AND (FollowUp.Empresa = [Obs-Eventos].Empresa)'
      
        'GROUP BY Processos.Empresa, Processos.Filial, Processos.Código, ' +
        'FollowUp.Sequencial, FollowUp.Data, FollowUp.Hora, FollowUp.Code' +
        'vento, Eventos.Descricao, FollowUp.Codobs, [Obs-Eventos].Descric' +
        'ao, FollowUp.Obs_especifica, FollowUp.link, FollowUp.sequencial'
      
        'HAVING (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=' +
        ':qfilial) AND ((Processos.Código)=:qprocesso))'
      
        'ORDER BY Processos.Código, FollowUp.Data, FollowUp.Hora, FollowU' +
        'p.sequencial;')
    UpdateMode = upWhereChanged
    Left = 424
    Top = 256
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
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00001152'
      end>
    object q_followupEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_followupFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_followupCdigo: TStringField
      FieldName = 'Código'
      Size = 8
    end
    object q_followupSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object q_followupData: TDateTimeField
      FieldName = 'Data'
    end
    object q_followupHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object q_followupCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object q_followupqevento: TStringField
      FieldName = 'qevento'
      Size = 120
    end
    object q_followupCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object q_followupqobs: TStringField
      FieldName = 'qobs'
      Size = 120
    end
    object q_followupObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object q_followuplink: TStringField
      FieldName = 'link'
      Size = 8
    end
  end
  object ds_tfollow: TDataSource
    DataSet = T_followup
    Left = 320
    Top = 404
  end
  object t_followup_i: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Sequencial'
    TableName = 'FollowUp'
    Left = 368
    Top = 287
    object t_followup_iEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_followup_iFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_followup_iProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_followup_iSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object t_followup_iCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object t_followup_iCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object t_followup_iObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object t_followup_iData: TDateTimeField
      FieldName = 'Data'
    end
    object t_followup_iHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object t_followup_ilink: TStringField
      FieldName = 'link'
      Size = 8
    end
    object t_followup_iData_final: TDateTimeField
      FieldName = 'Data_final'
    end
    object t_followup_iHora_final: TStringField
      FieldName = 'Hora_final'
      Size = 5
    end
    object t_followup_iDuracao: TIntegerField
      FieldName = 'Duracao'
    end
  end
  object t_tiposnumerario_ing: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'CODIGO<>'#39'HONO'#39' AND CODIGO<>'#39'ISS'#39' AND CODIGO<>'#39'CPMF'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_tiposnumerario
    TableName = 'Tipos_Numerario_Ing'
    Left = 456
    Top = 136
    object t_tiposnumerario_ingEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_tiposnumerario_ingFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_tiposnumerario_ingCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_tiposnumerario_ingDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_tiposnumerario_ingPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
  end
  object ds_tiposnumerario_ing: TDataSource
    DataSet = t_tiposnumerario_ing
    Left = 472
    Top = 112
  end
  object t_usuarios: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Usuario'
    TableName = 'Usuarios'
    Left = 540
    Top = 136
    object t_usuariosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object t_usuariosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object t_usuariosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object t_usuariosSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object t_usuariosNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Size = 45
    end
    object t_usuariosDiretorio_SISCOMEX: TStringField
      FieldName = 'Diretorio_SISCOMEX'
      Size = 50
    end
    object t_usuariosNivel: TStringField
      FieldName = 'Nivel'
      Size = 4
    end
    object t_usuariosData_validade_senha: TDateTimeField
      FieldName = 'Data_validade_senha'
    end
    object t_usuariosEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object t_usuariosEmail_Sol_Num: TBooleanField
      FieldName = 'Email_Sol_Num'
    end
  end
  object ds_usuarios: TDataSource
    DataSet = t_usuarios
    Left = 552
    Top = 152
  end
  object email_num: TNMSMTP
    Host = '172.19.92.100'
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
    Left = 692
    Top = 272
  end
  object t_reltipodoccarga: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'via;codigo'
    MasterFields = 'Via;Tipodoccarga'
    MasterSource = DS_transpprocesso
    TableName = 'Tipo_Doc_Carga'
    Left = 612
    Top = 156
    object t_reltipodoccargavia: TStringField
      FieldName = 'via'
      Size = 1
    end
    object t_reltipodoccargacodigo: TStringField
      FieldName = 'codigo'
      Size = 2
    end
    object t_reltipodoccargadescricao: TStringField
      FieldName = 'descricao'
      Size = 25
    end
  end
  object t_contacorrente_reg: TTable
    AutoCalcFields = False
    AfterScroll = t_contacorrente_regAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Conta_Corrente_Registro'
    MasterSource = DS_importadores
    TableName = 'Contas_Correntes'
    Left = 596
    Top = 192
    object t_contacorrente_regEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_contacorrente_regFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_contacorrente_regCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_contacorrente_regBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      Size = 1
    end
    object t_contacorrente_regDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object t_contacorrente_regBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object t_contacorrente_regAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object t_contacorrente_regConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object t_contacorrente_regSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object t_contacorrente_dep: TTable
    AutoCalcFields = False
    AfterScroll = t_contacorrente_depAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Conta_Corrente_Deposito'
    MasterSource = DS_importadores
    TableName = 'Contas_Correntes'
    Left = 604
    Top = 208
    object t_contacorrente_depEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_contacorrente_depFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_contacorrente_depCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_contacorrente_depBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      Size = 1
    end
    object t_contacorrente_depDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object t_contacorrente_depBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object t_contacorrente_depAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object t_contacorrente_depConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object t_contacorrente_depSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object Q_update1: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE ItensFaturas SET ItensFaturas.Rateio_Frete_prepaid = :qra' +
        'tpre, ItensFaturas.Rateio_Frete_collect = :qratcol, ItensFaturas' +
        '.Rateio_Frete_ternac = :qratter, ItensFaturas.Rateio_Despesas_at' +
        'e_FOB = :qdespfob, ItensFaturas.Valor_Aduaneiro = :qvaladua, Ite' +
        'nsFaturas.Valor_mercadoria = :qvalmerc, ItensFaturas.VMLE = :qvm' +
        'le, ItensFaturas.Base_Calc_II = :qbaseii, ItensFaturas.Acresc_re' +
        'duc_Valaduan = :qarval, ItensFaturas.rateio_seguro = :qratseg, I' +
        'tensFaturas.Rateio_seguro_fatura = :qratsegf'
      
        'WHERE (((ItensFaturas.Processo)=:qprocesso) AND ((ItensFaturas.F' +
        'atura)=:qfatura) AND ((ItensFaturas.Sequencial)=:qseq));')
    UpdateMode = upWhereChanged
    Left = 424
    Top = 176
    ParamData = <
      item
        DataType = ftFloat
        Name = 'qratpre'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qratcol'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qratter'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qdespfob'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qvaladua'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qvalmerc'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qvmle'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qbaseii'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qarval'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qratseg'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qratsegf'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfatura'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qseq'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_update2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE ItensFaturas SET ItensFaturas.Rateio_frete_fatura = (([it' +
        'ensfaturas].[rateio_frete_prepaid]+[itensfaturas].[rateio_frete_' +
        'collect])-[itensfaturas].[rateio_frete_ternac])'
      'WHERE (((ItensFaturas.Processo)=:qprocesso));')
    UpdateMode = upWhereChanged
    Left = 408
    Top = 228
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_upacrescimos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas SET ItensFaturas.Rateio_acrescimos = '
      '([itensfaturas].[Rateio_Embalagem]+'
      '[itensfaturas].[Rateio_Frete_Interno_imp]+'
      '[itensfaturas].[Rateio_Seguro_Interno]+'
      '[itensfaturas].[Rateio_outras_import]+'
      '[itensfaturas].[Rateio_startup]+'
      '[itensfaturas].[Rateio_jurosfin]+'
      '[itensfaturas].[Rateio_montagem]+'
      '[itensfaturas].[Rateio_Frete_Interno_exp]+'
      '[itensfaturas].[Rateio_carga_exp]+'
      '[itensfaturas].[Rateio_outras_export]+'
      '[itensfaturas].[Rateio_frete_fatura]+'
      '[itensfaturas].[Rateio_seguro_fatura]+'
      '[itensfaturas].[Rateio_carga_imp])'
      'WHERE (((ItensFaturas.Processo)=:qprocesso));')
    UpdateMode = upWhereChanged
    Left = 452
    Top = 236
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_sub: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Atos_subcontratadas.Empresa, Atos_subcontratadas.Filial, ' +
        'Atos_subcontratadas.Numero, Atos_subcontratadas.Importador, Atos' +
        '_subcontratadas.CNPJ_CPF_COMPLETO, Atos_subcontratadas.Razao_Soc' +
        'ial'
      
        'FROM Parametros INNER JOIN Atos_subcontratadas ON (Parametros.Fi' +
        'lial = Atos_subcontratadas.Filial) AND (Parametros.Empresa = Ato' +
        's_subcontratadas.Empresa)'
      
        'WHERE (((Atos_subcontratadas.Numero)=:qato) AND ((Atos_subcontra' +
        'tadas.Importador)=:qimport));')
    Left = 460
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'qato'
        ParamType = ptUnknown
        Value = 'teste'
      end
      item
        DataType = ftString
        Name = 'qimport'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_subEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Empresa'
      Size = 4
    end
    object q_subFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Filial'
      Size = 4
    end
    object q_subNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Numero'
    end
    object q_subImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Importador'
      Size = 4
    end
    object q_subCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object q_subRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Razao_Social'
      Size = 50
    end
  end
  object q_infocomp1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Conhecimento_Processo.Processo, Conhecimento_Processo.Emb' +
        'arcacao, Tipo_Doc_Carga.descricao AS qtipodoccarga, Conhecimento' +
        '_Processo.Numerodoccarga, Conhecimento_Processo.Numeromaster, Ti' +
        'po_Doc_Chegada.descricao AS qtipomanifesto, Conhecimento_Process' +
        'o.Numeromanifesto, TAB_URF.DESCRICAO AS qurf, TAB_REC_ALFANDEGAD' +
        'O.DESCRICAO AS qrecalfa, Conhecimento_Processo.Data_Chegada_URF_' +
        'Desp, Conhecimento_Processo.Peso_Bruto, Conhecimento_Processo.Pe' +
        'so_Liquido'
      
        'FROM (((Conhecimento_Processo LEFT JOIN Tipo_Doc_Carga ON (Conhe' +
        'cimento_Processo.Tipodoccarga = Tipo_Doc_Carga.codigo) AND (Conh' +
        'ecimento_Processo.Via = Tipo_Doc_Carga.via)) LEFT JOIN Tipo_Doc_' +
        'Chegada ON Conhecimento_Processo.Tipomanifesto = Tipo_Doc_Chegad' +
        'a.codigo) LEFT JOIN TAB_URF ON Conhecimento_Processo.URF_chegada' +
        ' = TAB_URF.CODIGO) LEFT JOIN TAB_REC_ALFANDEGADO ON Conhecimento' +
        '_Processo.Recinto_Alfandegario = TAB_REC_ALFANDEGADO.CODIGO'
      'WHERE (((Conhecimento_Processo.Processo)=:qprocesso));')
    Left = 496
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00001152'
      end>
    object q_infocomp1Processo: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_infocomp1Embarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object q_infocomp1qtipodoccarga: TStringField
      FieldName = 'qtipodoccarga'
      Size = 25
    end
    object q_infocomp1Numerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object q_infocomp1Numeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object q_infocomp1qtipomanifesto: TStringField
      FieldName = 'qtipomanifesto'
      Size = 25
    end
    object q_infocomp1Numeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object q_infocomp1qurf: TStringField
      FieldName = 'qurf'
      Size = 120
    end
    object q_infocomp1qrecalfa: TStringField
      FieldName = 'qrecalfa'
      Size = 120
    end
    object q_infocomp1Data_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object q_infocomp1Peso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object q_infocomp1Peso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
  end
  object q_fobcif12c: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, Processos.Tipo_Declaração, Faturas.Moeda, TAB_MOEDA.DES' +
        'CRICAO, Processos_Taxas_Conversao.Taxa_conversao, Sum(ItensFatur' +
        'as.VMLE) AS FOB, 0+Sum([ITENSFATURAS].[VMLE]*[PROCESSOS_TAXAS_CO' +
        'NVERSAO].[TAXA_CONVERSAO]) AS FOBREAL, 0+Sum([VMLE]+(([RATEIO_FR' +
        'ETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*[iten' +
        'sfaturas].[QUANTIDADE])+([RATEIO_SEGURO]*[itensfaturas].[QUANTID' +
        'ADE])) AS CIF, 0+(Sum([VMLE]+(([RATEIO_FRETE_PREPAID]+[RATEIO_FR' +
        'ETE_COLLECT]-[RATEIO_FRETE_TERNAC])*itensfaturas.[QUANTIDADE])+(' +
        '[RATEIO_SEGURO]*itensfaturas.[QUANTIDADE]))*[PROCESSOS_TAXAS_CON' +
        'VERSAO].[TAXA_CONVERSAO]) AS CIFREAL, Tributacao_Item_Fatura.Reg' +
        'ime_Tributacao_II, Tributacao_Item_Fatura.Regime_Tributacao_IPI'
      
        'FROM ((((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Fatura' +
        ' = Faturas.Código) AND (ItensFaturas.Processo = Faturas.Processo' +
        ') AND (ItensFaturas.Filial = Faturas.Filial) AND (ItensFaturas.E' +
        'mpresa = Faturas.Empresa)) LEFT JOIN Processos_Taxas_Conversao O' +
        'N (Faturas.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas' +
        '.Processo = Processos_Taxas_Conversao.Processo) AND (Faturas.Fil' +
        'ial = Processos_Taxas_Conversao.Filial) AND (Faturas.Empresa = P' +
        'rocessos_Taxas_Conversao.Empresa)) INNER JOIN TAB_MOEDA ON Fatur' +
        'as.Moeda = TAB_MOEDA.CODIGO) INNER JOIN Tributacao_Item_Fatura O' +
        'N (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa) AND (I' +
        'tensFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFa' +
        'turas.Processo = Tributacao_Item_Fatura.Processo) AND (ItensFatu' +
        'ras.Fatura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Se' +
        'quencial = Tributacao_Item_Fatura.Sequencial_Item)) INNER JOIN P' +
        'rocessos ON (Faturas.Processo = Processos.Código) AND (Faturas.F' +
        'ilial = Processos.Filial) AND (Faturas.Empresa = Processos.Empre' +
        'sa)'
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, Processos.Tipo_Declaração, Faturas.Moeda, TAB_MOEDA.D' +
        'ESCRICAO, Processos_Taxas_Conversao.Taxa_conversao, Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Regime_T' +
        'ributacao_IPI'
      
        'HAVING (((ItensFaturas.Processo)=:qprocesso) AND ((Processos.Tip' +
        'o_Declaração)="12") AND ((Tributacao_Item_Fatura.Regime_Tributac' +
        'ao_II)="1") AND ((Tributacao_Item_Fatura.Regime_Tributacao_IPI)=' +
        '"4"));')
    Left = 468
    Top = 308
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_fobcif12cEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_fobcif12cFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_fobcif12cProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_fobcif12cTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object q_fobcif12cMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object q_fobcif12cDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object q_fobcif12cTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_fobcif12cFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_fobcif12cFOBREAL: TFloatField
      FieldName = 'FOBREAL'
    end
    object q_fobcif12cCIF: TFloatField
      FieldName = 'CIF'
    end
    object q_fobcif12cCIFREAL: TFloatField
      FieldName = 'CIFREAL'
    end
    object q_fobcif12cRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object q_fobcif12cRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
  end
  object q_infocomp3: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Faturas.Processo, Faturas.Código, Exportadores.[Razão Soc' +
        'ial], Faturas.[Modalidade de Pagamento], Faturas.[Instituicao Fi' +
        'nanciadora], Faturas.[Tipo Parcela], Faturas.[Numero de parcelas' +
        '], Faturas.Periodicidade, Faturas.[Valor das Parcelas], Faturas.' +
        '[Indicador Periodicidade], Faturas.[Taxa de Juros], Faturas.[Cod' +
        'igo Taxa de Juros], Faturas.[Valor Taxa de Juros], Faturas.[ROF ' +
        'BACEN], Faturas.[Percentual ROF]'
      
        'FROM Faturas LEFT JOIN Exportadores ON (Faturas.Exportador = Exp' +
        'ortadores.Codigo) AND (Faturas.Filial = Exportadores.Filial) AND' +
        ' (Faturas.Empresa = Exportadores.Empresa)'
      'WHERE (((Faturas.Processo)=:qprocesso));')
    Left = 536
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp3Processo: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_infocomp3Cdigo: TStringField
      FieldName = 'Código'
      Size = 15
    end
    object q_infocomp3RazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object q_infocomp3ModalidadedePagamento: TStringField
      FieldName = 'Modalidade de Pagamento'
      Size = 2
    end
    object q_infocomp3InstituicaoFinanciadora: TStringField
      FieldName = 'Instituicao Financiadora'
      Size = 2
    end
    object q_infocomp3TipoParcela: TStringField
      FieldName = 'Tipo Parcela'
      Size = 1
    end
    object q_infocomp3Numerodeparcelas: TStringField
      FieldName = 'Numero de parcelas'
      Size = 3
    end
    object q_infocomp3Periodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 3
    end
    object q_infocomp3ValordasParcelas: TFloatField
      FieldName = 'Valor das Parcelas'
    end
    object q_infocomp3IndicadorPeriodicidade: TStringField
      FieldName = 'Indicador Periodicidade'
      Size = 1
    end
    object q_infocomp3TaxadeJuros: TBooleanField
      FieldName = 'Taxa de Juros'
    end
    object q_infocomp3CodigoTaxadeJuros: TStringField
      FieldName = 'Codigo Taxa de Juros'
      Size = 4
    end
    object q_infocomp3ValorTaxadeJuros: TFloatField
      FieldName = 'Valor Taxa de Juros'
    end
    object q_infocomp3ROFBACEN: TStringField
      FieldName = 'ROF BACEN'
      Size = 8
    end
    object q_infocomp3PercentualROF: TFloatField
      FieldName = 'Percentual ROF'
    end
  end
  object q_infocomp4: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Embalagem_Processo.Processo, Embalagem_Processo.TipoEmbal' +
        'agem, Embalagem_Processo.DescricaoEmbalagem, Embalagem_Processo.' +
        'Quantidade'
      'FROM Embalagem_Processo'
      'WHERE (((Embalagem_Processo.Processo)=:qprocesso));')
    Left = 560
    Top = 276
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp4Processo: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Processo'
      Size = 8
    end
    object q_infocomp4TipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.TipoEmbalagem'
      Size = 2
    end
    object q_infocomp4DescricaoEmbalagem: TStringField
      FieldName = 'DescricaoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.DescricaoEmbalagem'
      Size = 50
    end
    object q_infocomp4Quantidade: TStringField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Quantidade'
      Size = 5
    end
  end
  object q_infocomp5: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos_Taxas_Conversao.Processo, TAB_MOEDA.DESCRICAO, ' +
        'Processos_Taxas_Conversao.Taxa_conversao, Processos_Taxas_Conver' +
        'sao.Taxa_conversaoc'
      
        'FROM Processos_Taxas_Conversao LEFT JOIN TAB_MOEDA ON Processos_' +
        'Taxas_Conversao.Moeda = TAB_MOEDA.CODIGO'
      'WHERE (((Processos_Taxas_Conversao.Processo)=:qprocesso));')
    Left = 568
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp5Processo: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Processo'
      Size = 8
    end
    object q_infocomp5DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      Size = 120
    end
    object q_infocomp5Taxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversao'
    end
    object q_infocomp5Taxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversaoc'
    end
  end
  object q_infocomp6: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.C' +
        'ertificado_Origem'
      'FROM Tributacao_Item_Fatura'
      
        'GROUP BY Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura' +
        '.Certificado_Origem'
      'HAVING (((Tributacao_Item_Fatura.Processo)=:qprocesso));')
    Left = 584
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp6Processo: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      Size = 8
    end
    object q_infocomp6Certificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Certificado_Origem'
      Size = 15
    end
  end
  object q_atosconce: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Atos_Importador.Numero, Atos_concessorios.Descricao, Atos' +
        '_Importador.Importador'
      
        'FROM (Parametros INNER JOIN Atos_Importador ON (Parametros.Filia' +
        'l = Atos_Importador.Filial) AND (Parametros.Empresa = Atos_Impor' +
        'tador.Empresa)) INNER JOIN Atos_concessorios ON (Atos_Importador' +
        '.Numero = Atos_concessorios.Numero) AND (Atos_Importador.Filial ' +
        '= Atos_concessorios.Filial) AND (Atos_Importador.Empresa = Atos_' +
        'concessorios.Empresa)'
      'WHERE (((Atos_Importador.Importador)=:qimport));')
    Left = 394
    Top = 218
    ParamData = <
      item
        DataType = ftString
        Name = 'qimport'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_atosconceNumero: TStringField
      FieldName = 'Numero'
    end
    object q_atosconceDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object q_atosconceImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
  end
  object q_apagadis: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'DELETE DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO, DECLARAÇÃO_IMPOR' +
        'TAÇÃO.NR_IDENT_USUARIO, DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_PROT, ' +
        'DECLARAÇÃO_IMPORTAÇÃO.NR_DECLARACAO_IMP, DECLARAÇÃO_IMPORTAÇÃO.D' +
        'T_PROCESSAMENTO, DECLARAÇÃO_IMPORTAÇÃO.DT_TRANSMISSAO, DECLARAÇÃ' +
        'O_IMPORTAÇÃO.DT_REGISTRO_DI, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_DECLA' +
        'RACAO, DECLARAÇÃO_IMPORTAÇÃO.CD_MOTIVO_TRANS, DECLARAÇÃO_IMPORTA' +
        'ÇÃO.CD_TIPO_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NR_IMPORTADOR, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.CD_PAIS_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NM_' +
        'IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NR_TEL_IMPORTADOR, DECLARAÇÃO_' +
        'IMPORTAÇÃO.ED_LOGR_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_NR_IMPOR' +
        'TADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_COMPL_IMPO, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.ED_BA_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_MUN_IMPORTADOR, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.ED_UF_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_CE' +
        'P_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NR_CPF_REPR_LEGAL, DECLARAÇÃ' +
        'O_IMPORTAÇÃO.CD_MODALIDADE_DESP, DECLARAÇÃO_IMPORTAÇÃO.IN_OPERAC' +
        'AO_FUNDAP, DECLARAÇÃO_IMPORTAÇÃO.CD_URF_ENTR_CARGA, DECLARAÇÃO_I' +
        'MPORTAÇÃO.CD_URF_DESPACHO, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_CONSIG,' +
        ' DECLARAÇÃO_IMPORTAÇÃO.NR_CONSIGNATARIO, DECLARAÇÃO_IMPORTAÇÃO.N' +
        'M_CONSIGNATARIO, DECLARAÇÃO_IMPORTAÇÃO.CD_PAIS_PROC_CARGA, DECLA' +
        'RAÇÃO_IMPORTAÇÃO.CD_VIA_TRANSP_CARG, DECLARAÇÃO_IMPORTAÇÃO.IN_MU' +
        'LTIMODAL, DECLARAÇÃO_IMPORTAÇÃO.NR_VEICULO_TRANSP, DECLARAÇÃO_IM' +
        'PORTAÇÃO.NM_VEICULO_TRANSP, DECLARAÇÃO_IMPORTAÇÃO.NM_TRANSPORTAD' +
        'OR, DECLARAÇÃO_IMPORTAÇÃO.CD_BANDEIRA_TRANSP, DECLARAÇÃO_IMPORTA' +
        'ÇÃO.CD_TIPO_AG_CARGA, DECLARAÇÃO_IMPORTAÇÃO.NR_AGENTE_CARGA, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.CD_TIPO_DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.NR_' +
        'DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.NR_DCTO_CARGA_MAST, DECLARAÇÃO' +
        '_IMPORTAÇÃO.NM_LOCAL_EMBARQUE, DECLARAÇÃO_IMPORTAÇÃO.DT_EMBARQUE' +
        ', DECLARAÇÃO_IMPORTAÇÃO.CD_UTIL_DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.PB_CARGA, DECLARAÇÃO_IMPORTAÇÃO.PL_CARGA, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.DT_CHEGADA_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_MANIFESTO, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.NR_MANIFESTO, DECLARAÇÃO_IMPORTAÇÃO.CD_RECINT' +
        'O_ALFAND, DECLARAÇÃO_IMPORTAÇÃO.CD_SETOR_ARMAZENAM, DECLARAÇÃO_I' +
        'MPORTAÇÃO.CD_MOEDA_FRETE, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_FRT_PREPA' +
        'ID, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_FRT_COLLECT, DECLARAÇÃO_IMPORTA' +
        'ÇÃO.VL_FRETE_TNAC_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOTAL_FRETE_MN,' +
        ' DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_SEGURO, DECLARAÇÃO_IMPORTAÇÃO.VL' +
        '_TOT_SEGURO_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOTAL_SEG_MN, DECLARA' +
        'ÇÃO_IMPORTAÇÃO.CD_MOEDA_DESPESAS, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_D' +
        'ESPS_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_DESPS_MN, DECLARAÇÃO_IMP' +
        'ORTAÇÃO.CD_MOEDA_MLE, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_MLE_MNEG, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.VL_TOTAL_MLE_MN, DECLARAÇÃO_IMPORTAÇÃO.IN_MOE' +
        'DA_UNICA, DECLARAÇÃO_IMPORTAÇÃO.TX_INFO_COMPL, DECLARAÇÃO_IMPORT' +
        'AÇÃO.CD_TIPO_PGTO_TRIB, DECLARAÇÃO_IMPORTAÇÃO.NR_CONTA_PGTO_TRIB'
      'FROM DECLARAÇÃO_IMPORTAÇÃO'
      'WHERE (((DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 12
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00103ADM'
      end>
  end
  object q_geradi: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DECLARAÇÃO_IMPORTAÇÃO ( NR_DECL_IMP_MICRO, NR_IDENT_' +
        'USUARIO, CD_TIPO_DECLARACAO, CD_MOTIVO_TRANS, CD_TIPO_IMPORTADOR' +
        ', NR_IMPORTADOR, CD_PAIS_IMPORTADOR, NM_IMPORTADOR, NR_TEL_IMPOR' +
        'TADOR, ED_LOGR_IMPORTADOR, ED_NR_IMPORTADOR, ED_COMPL_IMPO, ED_B' +
        'A_IMPORTADOR, ED_MUN_IMPORTADOR, ED_UF_IMPORTADOR, ED_CEP_IMPORT' +
        'ADOR, NR_CPF_REPR_LEGAL, CD_MODALIDADE_DESP, IN_OPERACAO_FUNDAP,' +
        ' CD_URF_ENTR_CARGA, CD_URF_DESPACHO, CD_TIPO_CONSIG, NR_CONSIGNA' +
        'TARIO, NM_CONSIGNATARIO, CD_PAIS_PROC_CARGA, CD_VIA_TRANSP_CARG,' +
        ' IN_MULTIMODAL, NR_VEICULO_TRANSP, NM_VEICULO_TRANSP, NM_TRANSPO' +
        'RTADOR, CD_BANDEIRA_TRANSP, CD_TIPO_AG_CARGA, NR_AGENTE_CARGA, C' +
        'D_TIPO_DCTO_CARGA, NR_DCTO_CARGA, NR_DCTO_CARGA_MAST, NM_LOCAL_E' +
        'MBARQUE, DT_EMBARQUE, CD_UTIL_DCTO_CARGA, PB_CARGA, PL_CARGA, DT' +
        '_CHEGADA_CARGA, CD_TIPO_MANIFESTO, NR_MANIFESTO, CD_RECINTO_ALFA' +
        'ND, CD_SETOR_ARMAZENAM, CD_MOEDA_FRETE, VL_TOT_FRT_PREPAID, VL_T' +
        'OT_FRT_COLLECT, VL_FRETE_TNAC_MNEG, VL_TOTAL_FRETE_MN, CD_MOEDA_' +
        'SEGURO, VL_TOT_SEGURO_MNEG, VL_TOTAL_SEG_MN, CD_MOEDA_DESPESAS, ' +
        'VL_TOT_DESPS_MNEG, VL_TOT_DESPS_MN, CD_MOEDA_MLE, VL_TOT_MLE_MNE' +
        'G, VL_TOTAL_MLE_MN, IN_MOEDA_UNICA, TX_INFO_COMPL, CD_TIPO_PGTO_' +
        'TRIB, NR_CONTA_PGTO_TRIB )'
      
        'SELECT Mid([declaração_importação].[NR_DECL_IMP_MICRO],1,5)+:qti' +
        'po2 AS Expr1, [declaração_importação].[NR_IDENT_USUARIO]+"-"+:QT' +
        'IPO AS Expr2, :QTIPONOVADI AS Expr3, DECLARAÇÃO_IMPORTAÇÃO.CD_MO' +
        'TIVO_TRANS, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_IMPORTADOR, DECLARAÇÃO' +
        '_IMPORTAÇÃO.NR_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.CD_PAIS_IMPORTA' +
        'DOR, DECLARAÇÃO_IMPORTAÇÃO.NM_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.' +
        'NR_TEL_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_LOGR_IMPORTADOR, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.ED_NR_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_CO' +
        'MPL_IMPO, DECLARAÇÃO_IMPORTAÇÃO.ED_BA_IMPORTADOR, DECLARAÇÃO_IMP' +
        'ORTAÇÃO.ED_MUN_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_UF_IMPORTADO' +
        'R, DECLARAÇÃO_IMPORTAÇÃO.ED_CEP_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.NR_CPF_REPR_LEGAL, DECLARAÇÃO_IMPORTAÇÃO.CD_MODALIDADE_DESP, D' +
        'ECLARAÇÃO_IMPORTAÇÃO.IN_OPERACAO_FUNDAP, DECLARAÇÃO_IMPORTAÇÃO.C' +
        'D_URF_ENTR_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_URF_DESPACHO, DECLARA' +
        'ÇÃO_IMPORTAÇÃO.CD_TIPO_CONSIG, DECLARAÇÃO_IMPORTAÇÃO.NR_CONSIGNA' +
        'TARIO, DECLARAÇÃO_IMPORTAÇÃO.NM_CONSIGNATARIO, DECLARAÇÃO_IMPORT' +
        'AÇÃO.CD_PAIS_PROC_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_VIA_TRANSP_CAR' +
        'G, DECLARAÇÃO_IMPORTAÇÃO.IN_MULTIMODAL, DECLARAÇÃO_IMPORTAÇÃO.NR' +
        '_VEICULO_TRANSP, DECLARAÇÃO_IMPORTAÇÃO.NM_VEICULO_TRANSP, DECLAR' +
        'AÇÃO_IMPORTAÇÃO.NM_TRANSPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.CD_BANDE' +
        'IRA_TRANSP, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_AG_CARGA, DECLARAÇÃO_I' +
        'MPORTAÇÃO.NR_AGENTE_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_DCTO_CA' +
        'RGA, DECLARAÇÃO_IMPORTAÇÃO.NR_DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.' +
        'NR_DCTO_CARGA_MAST, DECLARAÇÃO_IMPORTAÇÃO.NM_LOCAL_EMBARQUE, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.DT_EMBARQUE, DECLARAÇÃO_IMPORTAÇÃO.CD_UTIL_DC' +
        'TO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.PB_CARGA, DECLARAÇÃO_IMPORTAÇÃO.' +
        'PL_CARGA, DECLARAÇÃO_IMPORTAÇÃO.DT_CHEGADA_CARGA, DECLARAÇÃO_IMP' +
        'ORTAÇÃO.CD_TIPO_MANIFESTO, DECLARAÇÃO_IMPORTAÇÃO.NR_MANIFESTO, D' +
        'ECLARAÇÃO_IMPORTAÇÃO.CD_RECINTO_ALFAND, DECLARAÇÃO_IMPORTAÇÃO.CD' +
        '_SETOR_ARMAZENAM, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_FRETE, DECLARAÇ' +
        'ÃO_IMPORTAÇÃO.VL_TOT_FRT_PREPAID, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_F' +
        'RT_COLLECT, DECLARAÇÃO_IMPORTAÇÃO.VL_FRETE_TNAC_MNEG, DECLARAÇÃO' +
        '_IMPORTAÇÃO.VL_TOTAL_FRETE_MN, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_SE' +
        'GURO, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_SEGURO_MNEG, DECLARAÇÃO_IMPOR' +
        'TAÇÃO.VL_TOTAL_SEG_MN, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_DESPESAS, ' +
        'DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_DESPS_MNEG, DECLARAÇÃO_IMPORTAÇÃO.V' +
        'L_TOT_DESPS_MN, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_MLE, DECLARAÇÃO_I' +
        'MPORTAÇÃO.VL_TOT_MLE_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOTAL_MLE_MN' +
        ', DECLARAÇÃO_IMPORTAÇÃO.IN_MOEDA_UNICA, DECLARAÇÃO_IMPORTAÇÃO.TX' +
        '_INFO_COMPL, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_PGTO_TRIB, DECLARAÇÃO' +
        '_IMPORTAÇÃO.NR_CONTA_PGTO_TRIB'
      'FROM DECLARAÇÃO_IMPORTAÇÃO'
      'WHERE (((DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:QDI));')
    Left = 40
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'qtipo2'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QTIPONOVADI'
        ParamType = ptUnknown
        Value = '5'
      end
      item
        DataType = ftString
        Name = 'QDI'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_geraadicoes: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO OP_ADIÇÃO_DE_IMPORTAÇÃO ( NR_DECL_IMP_MICRO, NR_OP_I' +
        'MP_MICRO, CD_URF_ENTR_MERC, CD_VIA_TRANSPORTE, IN_MULTIMODAL, NM' +
        '_FORN_ESTR, ED_LOGR_FORN_ESTR, ED_NR_FORN_ESTR, ED_COMPL_FORN_ES' +
        'TR, ED_CIDAD_FORN_ESTR, ED_ESTAD_FORN_ESTR, CD_PAIS_AQUIS_MERC, ' +
        'CD_MERCADORIA_NCM, CD_PAIS_PROC_MERC, CD_AUSENCIA_FABRIC, NM_FAB' +
        'RICANTE_MERC, ED_LOGR_FABRIC, ED_NR_FABRIC, ED_COMPL_FABRIC, ED_' +
        'CIDAD_FABRIC, ED_ESTADO_FABRIC, CD_PAIS_ORIG_MERC, CD_MERC_NBM_S' +
        'H, CD_MERC_NALADI_NCC, CD_MERC_NALADI_SH, PL_MERCADORIA, QT_UN_E' +
        'STATISTICA, CD_APLICACAO_MERC, VL_MERC_EMB_MN, CD_MOEDA_NEGOCIAD' +
        'A, CD_INCOTERMS_VENDA, NM_LOC_COND_VENDA, VL_MERC_COND_VENDA, VL' +
        '_MERC_VENDA_MN, VL_FRETE_MERC_MNEG, CD_MD_FRETE_MERC, VL_FRETE_M' +
        'ERC_MN, VL_SEG_MERC_MNEG, CD_MOEDA_SEG_MERC, VL_SEG_MERC_MN, VL_' +
        'UNID_LOC_EMP, CD_METOD_VALORACAO, CD_VINC_IMPO_EXPO, CD_TIPO_ACO' +
        'RDO_TAR, CD_ACORDO_ALADI, CD_REGIME_TRIBUTAR, CD_FUND_LEG_REGIME' +
        ', CD_MOTIVO_ADM_TEMP, NR_DCTO_REDUCAO, VL_DESPESAS_MNEG, CD_MOED' +
        'AS_DESPESAS, VL_DESPESAS_MN, PC_COEF_REDUC_II, VL_CALC_DCR_DOLAR' +
        ', VL_II_CALC_DCR_MN, VL_II_DEVIDO_ZFM, VL_II_A_REC_ZFM, CD_COBER' +
        'T_CAMBIAL, CD_MODALIDADE_PGTO, CD_ORGAO_FIN_INTER, CD_MOTIVO_SEM' +
        '_COB, QT_PARC_FINANC_360, CD_PERIOD_PGTO_360, QT_PERIOD_PGTO_360' +
        ', VL_TOT_FINANC_360, PC_TAXA_JUROS, CD_TAXA_JUROS, VL_FINANC_SUP' +
        '_360, NR_ROF, IN_PGTO_VARIAV_360, IN_JUROS_ATE_360, PC_COMISSAO_' +
        'AG_IMP, VL_COMISSAO_AG_IMP, CD_TIPO_AGENTE_IMP, NR_AGENTE_IMP, C' +
        'D_BANC_AGENTE_IMP, CD_AGENC_AGENT_IMP, IN_BEM_ENCOMENDA, IN_MATE' +
        'RIAL_USADO, TX_COMPL_VL_ADUAN, IN_IPI_NAO_TRIBUT, vl_merc_loc_em' +
        'b_mn, vl_base_calculo_mn, NR_OPER_TRAT_PREV )'
      
        'SELECT Mid([OP_ADIÇÃO_DE_IMPORTAÇÃO].[NR_DECL_IMP_MICRO],1,5)+:Q' +
        'TIPO AS Expr1, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO, OP_ADIÇÃ' +
        'O_DE_IMPORTAÇÃO.CD_URF_ENTR_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_VIA' +
        '_TRANSPORTE, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_MULTIMODAL, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.NM_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_LOGR_FORN_E' +
        'STR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_NR_FORN_ESTR, OP_ADIÇÃO_DE_IMPOR' +
        'TAÇÃO.ED_COMPL_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_CIDAD_FORN_' +
        'ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_ESTAD_FORN_ESTR, OP_ADIÇÃO_DE_I' +
        'MPORTAÇÃO.CD_PAIS_AQUIS_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERCADO' +
        'RIA_NCM, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_PAIS_PROC_MERC, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.CD_AUSENCIA_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.NM_FABRI' +
        'CANTE_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_LOGR_FABRIC, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.ED_NR_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_COMPL_FABRI' +
        'C, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_CIDAD_FABRIC, OP_ADIÇÃO_DE_IMPORTA' +
        'ÇÃO.ED_ESTADO_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_PAIS_ORIG_MERC,' +
        ' OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERC_NBM_SH, OP_ADIÇÃO_DE_IMPORTAÇÃO' +
        '.CD_MERC_NALADI_NCC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERC_NALADI_SH, ' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.PL_MERCADORIA, OP_ADIÇÃO_DE_IMPORTAÇÃO.Q' +
        'T_UN_ESTATISTICA, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_APLICACAO_MERC, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.VL_MERC_EMB_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_' +
        'MOEDA_NEGOCIADA, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_INCOTERMS_VENDA, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.NM_LOC_COND_VENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'VL_MERC_COND_VENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_MERC_VENDA_MN, OP' +
        '_ADIÇÃO_DE_IMPORTAÇÃO.VL_FRETE_MERC_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃ' +
        'O.CD_MD_FRETE_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_FRETE_MERC_MN, OP' +
        '_ADIÇÃO_DE_IMPORTAÇÃO.VL_SEG_MERC_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'CD_MOEDA_SEG_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_SEG_MERC_MN, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.VL_UNID_LOC_EMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_M' +
        'ETOD_VALORACAO, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_VINC_IMPO_EXPO, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.CD_TIPO_ACORDO_TAR, OP_ADIÇÃO_DE_IMPORTAÇÃO.C' +
        'D_ACORDO_ALADI, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR, OP_A' +
        'DIÇÃO_DE_IMPORTAÇÃO.CD_FUND_LEG_REGIME, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'CD_MOTIVO_ADM_TEMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DCTO_REDUCAO, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.VL_DESPESAS_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃO.C' +
        'D_MOEDAS_DESPESAS, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_DESPESAS_MN, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.PC_COEF_REDUC_II, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_' +
        'CALC_DCR_DOLAR, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_II_CALC_DCR_MN, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.VL_II_DEVIDO_ZFM, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_' +
        'II_A_REC_ZFM, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_COBERT_CAMBIAL, OP_ADIÇ' +
        'ÃO_DE_IMPORTAÇÃO.CD_MODALIDADE_PGTO, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_' +
        'ORGAO_FIN_INTER, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MOTIVO_SEM_COB, OP_A' +
        'DIÇÃO_DE_IMPORTAÇÃO.QT_PARC_FINANC_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'CD_PERIOD_PGTO_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.QT_PERIOD_PGTO_360, ' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_TOT_FINANC_360, OP_ADIÇÃO_DE_IMPORTAÇ' +
        'ÃO.PC_TAXA_JUROS, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_TAXA_JUROS, OP_ADIÇ' +
        'ÃO_DE_IMPORTAÇÃO.VL_FINANC_SUP_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_R' +
        'OF, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_PGTO_VARIAV_360, OP_ADIÇÃO_DE_IMP' +
        'ORTAÇÃO.IN_JUROS_ATE_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.PC_COMISSAO_AG' +
        '_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_COMISSAO_AG_IMP, OP_ADIÇÃO_DE_I' +
        'MPORTAÇÃO.CD_TIPO_AGENTE_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_AGENTE_' +
        'IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_BANC_AGENTE_IMP, OP_ADIÇÃO_DE_IM' +
        'PORTAÇÃO.CD_AGENC_AGENT_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_BEM_ENCO' +
        'MENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_MATERIAL_USADO, OP_ADIÇÃO_DE_I' +
        'MPORTAÇÃO.TX_COMPL_VL_ADUAN, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_IPI_NAO_' +
        'TRIBUT, OP_ADIÇÃO_DE_IMPORTAÇÃO.vl_merc_loc_emb_mn, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.vl_base_calculo_mn, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OPER_' +
        'TRAT_PREV'
      'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:QREGIME) A' +
        'ND ((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:QNUM));')
    Left = 68
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_geradet: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DETALHE_MERCADORIA ( NR_DECL_IMP_MICRO, NR_OP_IMP_MI' +
        'CRO, NU_SEQ_DETALHE, TX_DESC_DET_MERC, QT_MERC_UN_COMERC, NM_UN_' +
        'MEDID_COMERC, VL_UNID_LOC_EMB, VL_UNID_COND_VENDA, CD_PRODUTO )'
      
        'SELECT Mid([DETALHE_MERCADORIA].[NR_DECL_IMP_MICRO],1,5)+:QTIPO ' +
        'AS Expr1, DETALHE_MERCADORIA.NR_OP_IMP_MICRO, DETALHE_MERCADORIA' +
        '.NU_SEQ_DETALHE, DETALHE_MERCADORIA.TX_DESC_DET_MERC, DETALHE_ME' +
        'RCADORIA.QT_MERC_UN_COMERC, DETALHE_MERCADORIA.NM_UN_MEDID_COMER' +
        'C, DETALHE_MERCADORIA.VL_UNID_LOC_EMB, DETALHE_MERCADORIA.VL_UNI' +
        'D_COND_VENDA, DETALHE_MERCADORIA.CD_PRODUTO'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN DETALHE_MERCADORIA ON (O' +
        'P_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = DETALHE_MERCADORIA.NR_O' +
        'P_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = DE' +
        'TALHE_MERCADORIA.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 96
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object t_arrumaadicoes: TTable
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO'
    TableName = 'OP_ADIÇÃO_DE_IMPORTAÇÃO'
    Left = 124
    Top = 404
    object t_arrumaadicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_arrumaadicoesNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object t_arrumaadicoesCD_URF_ENTR_MERC: TStringField
      FieldName = 'CD_URF_ENTR_MERC'
      Size = 7
    end
    object t_arrumaadicoesCD_VIA_TRANSPORTE: TStringField
      FieldName = 'CD_VIA_TRANSPORTE'
      Size = 2
    end
    object t_arrumaadicoesIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object t_arrumaadicoesNM_FORN_ESTR: TStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object t_arrumaadicoesED_LOGR_FORN_ESTR: TStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object t_arrumaadicoesED_NR_FORN_ESTR: TStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object t_arrumaadicoesED_COMPL_FORN_ESTR: TStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object t_arrumaadicoesED_CIDAD_FORN_ESTR: TStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object t_arrumaadicoesED_ESTAD_FORN_ESTR: TStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object t_arrumaadicoesCD_PAIS_AQUIS_MERC: TStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object t_arrumaadicoesCD_MERCADORIA_NCM: TStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object t_arrumaadicoesCD_PAIS_PROC_MERC: TStringField
      FieldName = 'CD_PAIS_PROC_MERC'
      Size = 3
    end
    object t_arrumaadicoesCD_AUSENCIA_FABRIC: TStringField
      FieldName = 'CD_AUSENCIA_FABRIC'
      Size = 1
    end
    object t_arrumaadicoesNM_FABRICANTE_MERC: TStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object t_arrumaadicoesED_LOGR_FABRIC: TStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object t_arrumaadicoesED_NR_FABRIC: TStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object t_arrumaadicoesED_COMPL_FABRIC: TStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object t_arrumaadicoesED_CIDAD_FABRIC: TStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
    object t_arrumaadicoesED_ESTADO_FABRIC: TStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object t_arrumaadicoesCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object t_arrumaadicoesCD_MERC_NBM_SH: TStringField
      FieldName = 'CD_MERC_NBM_SH'
      Size = 10
    end
    object t_arrumaadicoesCD_MERC_NALADI_NCC: TStringField
      FieldName = 'CD_MERC_NALADI_NCC'
      Size = 7
    end
    object t_arrumaadicoesCD_MERC_NALADI_SH: TStringField
      FieldName = 'CD_MERC_NALADI_SH'
      Size = 8
    end
    object t_arrumaadicoesPL_MERCADORIA: TStringField
      FieldName = 'PL_MERCADORIA'
      Size = 15
    end
    object t_arrumaadicoesQT_UN_ESTATISTICA: TStringField
      FieldName = 'QT_UN_ESTATISTICA'
      Size = 14
    end
    object t_arrumaadicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object t_arrumaadicoesVL_MERC_EMB_MN: TFloatField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object t_arrumaadicoesCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object t_arrumaadicoesCD_INCOTERMS_VENDA: TStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object t_arrumaadicoesNM_LOC_COND_VENDA: TStringField
      FieldName = 'NM_LOC_COND_VENDA'
      Size = 60
    end
    object t_arrumaadicoesVL_MERC_COND_VENDA: TFloatField
      FieldName = 'VL_MERC_COND_VENDA'
    end
    object t_arrumaadicoesVL_MERC_VENDA_MN: TFloatField
      FieldName = 'VL_MERC_VENDA_MN'
    end
    object t_arrumaadicoesVL_FRETE_MERC_MNEG: TFloatField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object t_arrumaadicoesCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object t_arrumaadicoesVL_FRETE_MERC_MN: TFloatField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object t_arrumaadicoesVL_SEG_MERC_MNEG: TFloatField
      FieldName = 'VL_SEG_MERC_MNEG'
    end
    object t_arrumaadicoesCD_MOEDA_SEG_MERC: TStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object t_arrumaadicoesVL_SEG_MERC_MN: TFloatField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object t_arrumaadicoesVL_UNID_LOC_EMP: TFloatField
      FieldName = 'VL_UNID_LOC_EMP'
    end
    object t_arrumaadicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object t_arrumaadicoesCD_VINC_IMPO_EXPO: TStringField
      FieldName = 'CD_VINC_IMPO_EXPO'
      Size = 1
    end
    object t_arrumaadicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object t_arrumaadicoesCD_ACORDO_ALADI: TStringField
      FieldName = 'CD_ACORDO_ALADI'
      Size = 3
    end
    object t_arrumaadicoesCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object t_arrumaadicoesCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object t_arrumaadicoesCD_MOTIVO_ADM_TEMP: TStringField
      FieldName = 'CD_MOTIVO_ADM_TEMP'
      Size = 2
    end
    object t_arrumaadicoesNR_DCTO_REDUCAO: TStringField
      FieldName = 'NR_DCTO_REDUCAO'
      Size = 8
    end
    object t_arrumaadicoesVL_DESPESAS_MNEG: TFloatField
      FieldName = 'VL_DESPESAS_MNEG'
    end
    object t_arrumaadicoesCD_MOEDAS_DESPESAS: TStringField
      FieldName = 'CD_MOEDAS_DESPESAS'
      Size = 3
    end
    object t_arrumaadicoesVL_DESPESAS_MN: TFloatField
      FieldName = 'VL_DESPESAS_MN'
    end
    object t_arrumaadicoesPC_COEF_REDUC_II: TFloatField
      FieldName = 'PC_COEF_REDUC_II'
    end
    object t_arrumaadicoesVL_CALC_DCR_DOLAR: TFloatField
      FieldName = 'VL_CALC_DCR_DOLAR'
    end
    object t_arrumaadicoesVL_II_CALC_DCR_MN: TFloatField
      FieldName = 'VL_II_CALC_DCR_MN'
    end
    object t_arrumaadicoesVL_II_DEVIDO_ZFM: TFloatField
      FieldName = 'VL_II_DEVIDO_ZFM'
    end
    object t_arrumaadicoesVL_II_A_REC_ZFM: TFloatField
      FieldName = 'VL_II_A_REC_ZFM'
    end
    object t_arrumaadicoesCD_COBERT_CAMBIAL: TStringField
      FieldName = 'CD_COBERT_CAMBIAL'
      Size = 1
    end
    object t_arrumaadicoesCD_MODALIDADE_PGTO: TStringField
      FieldName = 'CD_MODALIDADE_PGTO'
      Size = 2
    end
    object t_arrumaadicoesCD_ORGAO_FIN_INTER: TStringField
      FieldName = 'CD_ORGAO_FIN_INTER'
      Size = 2
    end
    object t_arrumaadicoesCD_MOTIVO_SEM_COB: TStringField
      FieldName = 'CD_MOTIVO_SEM_COB'
      Size = 2
    end
    object t_arrumaadicoesQT_PARC_FINANC_360: TStringField
      FieldName = 'QT_PARC_FINANC_360'
      Size = 3
    end
    object t_arrumaadicoesCD_PERIOD_PGTO_360: TStringField
      FieldName = 'CD_PERIOD_PGTO_360'
      Size = 1
    end
    object t_arrumaadicoesQT_PERIOD_PGTO_360: TStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object t_arrumaadicoesVL_TOT_FINANC_360: TFloatField
      FieldName = 'VL_TOT_FINANC_360'
    end
    object t_arrumaadicoesPC_TAXA_JUROS: TFloatField
      FieldName = 'PC_TAXA_JUROS'
    end
    object t_arrumaadicoesCD_TAXA_JUROS: TStringField
      FieldName = 'CD_TAXA_JUROS'
      Size = 4
    end
    object t_arrumaadicoesVL_FINANC_SUP_360: TFloatField
      FieldName = 'VL_FINANC_SUP_360'
    end
    object t_arrumaadicoesNR_ROF: TStringField
      FieldName = 'NR_ROF'
      Size = 8
    end
    object t_arrumaadicoesIN_PGTO_VARIAV_360: TBooleanField
      FieldName = 'IN_PGTO_VARIAV_360'
    end
    object t_arrumaadicoesIN_JUROS_ATE_360: TBooleanField
      FieldName = 'IN_JUROS_ATE_360'
    end
    object t_arrumaadicoesPC_COMISSAO_AG_IMP: TFloatField
      FieldName = 'PC_COMISSAO_AG_IMP'
    end
    object t_arrumaadicoesVL_COMISSAO_AG_IMP: TFloatField
      FieldName = 'VL_COMISSAO_AG_IMP'
    end
    object t_arrumaadicoesCD_TIPO_AGENTE_IMP: TStringField
      FieldName = 'CD_TIPO_AGENTE_IMP'
      Size = 1
    end
    object t_arrumaadicoesNR_AGENTE_IMP: TStringField
      FieldName = 'NR_AGENTE_IMP'
      Size = 14
    end
    object t_arrumaadicoesCD_BANC_AGENTE_IMP: TStringField
      FieldName = 'CD_BANC_AGENTE_IMP'
      Size = 5
    end
    object t_arrumaadicoesCD_AGENC_AGENT_IMP: TStringField
      FieldName = 'CD_AGENC_AGENT_IMP'
      Size = 4
    end
    object t_arrumaadicoesIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object t_arrumaadicoesIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object t_arrumaadicoesTX_COMPL_VL_ADUAN: TStringField
      FieldName = 'TX_COMPL_VL_ADUAN'
      Size = 250
    end
    object t_arrumaadicoesIN_IPI_NAO_TRIBUT: TBooleanField
      FieldName = 'IN_IPI_NAO_TRIBUT'
    end
    object t_arrumaadicoesvl_merc_loc_emb_mn: TFloatField
      FieldName = 'vl_merc_loc_emb_mn'
    end
    object t_arrumaadicoesvl_base_calculo_mn: TFloatField
      FieldName = 'vl_base_calculo_mn'
    end
    object t_arrumaadicoesNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
  end
  object q_acresval: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO ACRÉSCIMO_VALORAÇÃO ( NR_DECL_IMP_MICRO, NR_OP_IMP_M' +
        'ICRO, CD_MET_ACRES_VALOR, VL_ACRESCIMO_MOEDA, CD_MD_NEGOC_ACRES,' +
        ' VL_ACRESCIMO_MN )'
      
        'SELECT Mid([ACRÉSCIMO_VALORAÇÃO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO' +
        ' AS Expr1, ACRÉSCIMO_VALORAÇÃO.NR_OP_IMP_MICRO, ACRÉSCIMO_VALORA' +
        'ÇÃO.CD_MET_ACRES_VALOR, ACRÉSCIMO_VALORAÇÃO.VL_ACRESCIMO_MOEDA, ' +
        'ACRÉSCIMO_VALORAÇÃO.CD_MD_NEGOC_ACRES, ACRÉSCIMO_VALORAÇÃO.VL_AC' +
        'RESCIMO_MN'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN ACRÉSCIMO_VALORAÇÃO ON (' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = ACRÉSCIMO_VALORAÇÃO.NR' +
        '_OP_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = ' +
        'ACRÉSCIMO_VALORAÇÃO.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 160
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_atos: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO ATO_VINCULADO ( NR_DECL_IMP_MICRO, NR_OP_IMP_MICRO, ' +
        'CD_ASSUNTO_VINCUL, SG_TIPO_ATO_VINCUL, SG_ORG_ATO_VINCUL, DT_ANO' +
        '_ATO_VINCUL, NR_ATO_VINCULADO, NR_EX_ATO_VINCUL )'
      
        'SELECT Mid([ATO_VINCULADO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Ex' +
        'pr1, ATO_VINCULADO.NR_OP_IMP_MICRO, ATO_VINCULADO.CD_ASSUNTO_VIN' +
        'CUL, ATO_VINCULADO.SG_TIPO_ATO_VINCUL, ATO_VINCULADO.SG_ORG_ATO_' +
        'VINCUL, ATO_VINCULADO.DT_ANO_ATO_VINCUL, ATO_VINCULADO.NR_ATO_VI' +
        'NCULADO, ATO_VINCULADO.NR_EX_ATO_VINCUL'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN ATO_VINCULADO ON (OP_ADI' +
        'ÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = ATO_VINCULADO.NR_OP_IMP_MICR' +
        'O) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = ATO_VINCULAD' +
        'O.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 184
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_emb: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO EMBALAGEM_CARGA ( NR_DECL_IMP_MICRO, NR_SEQ_EMBALAGE' +
        'M, CD_TIPO_EMBALAGEM, QT_VOLUME_CARGA )'
      
        'SELECT Mid([EMBALAGEM_CARGA].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS ' +
        'Expr1, EMBALAGEM_CARGA.NR_SEQ_EMBALAGEM, EMBALAGEM_CARGA.CD_TIPO' +
        '_EMBALAGEM, EMBALAGEM_CARGA.QT_VOLUME_CARGA'
      'FROM EMBALAGEM_CARGA'
      'WHERE (((EMBALAGEM_CARGA.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 212
    Top = 404
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_car: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO CARGA_ARMAZÉM ( NR_DECL_IMP_MICRO, NR_SEQ_ARMAZEM, N' +
        'M_ARMAZEM_CARGA )'
      
        'SELECT Mid([CARGA_ARMAZÉM].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Ex' +
        'pr1, CARGA_ARMAZÉM.NR_SEQ_ARMAZEM, CARGA_ARMAZÉM.NM_ARMAZEM_CARG' +
        'A'
      'FROM CARGA_ARMAZÉM'
      'WHERE (((CARGA_ARMAZÉM.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 240
    Top = 396
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_desncm: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DESTAQUE_NCM ( NR_DECL_IMP_MICRO, NR_OP_IMP_MICRO, N' +
        'U_SEQ_DESTAQUE, NR_DESTAQUE_NCM )'
      
        'SELECT Mid([DESTAQUE_NCM].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Exp' +
        'r1, DESTAQUE_NCM.NR_OP_IMP_MICRO, DESTAQUE_NCM.NU_SEQ_DESTAQUE, ' +
        'DESTAQUE_NCM.NR_DESTAQUE_NCM'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN DESTAQUE_NCM ON (OP_ADIÇ' +
        'ÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = DESTAQUE_NCM.NR_OP_IMP_MICRO)' +
        ' AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = DESTAQUE_NCM.N' +
        'R_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 252
    Top = 376
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_doci: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DOCUMENTO_INSTRUÇÃO ( NR_DECL_IMP_MICRO, NR_SEQ_DCTO' +
        '_INSTR, CD_TIPO_DCTO_INSTR, NR_DCTO_INSTRUCAO, NM_DCTO_INSTRUCAO' +
        ' )'
      
        'SELECT Mid([DOCUMENTO_INSTRUÇÃO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO' +
        ' AS Expr1, DOCUMENTO_INSTRUÇÃO.NR_SEQ_DCTO_INSTR, DOCUMENTO_INST' +
        'RUÇÃO.CD_TIPO_DCTO_INSTR, DOCUMENTO_INSTRUÇÃO.NR_DCTO_INSTRUCAO,' +
        ' DOCUMENTO_INSTRUÇÃO.NM_DCTO_INSTRUCAO'
      'FROM DOCUMENTO_INSTRUÇÃO'
      'WHERE (((DOCUMENTO_INSTRUÇÃO.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 228
    Top = 292
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_trib: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO TRIBUTO ( NR_DECL_IMP_MICRO, NR_OP_IMP_MICRO, CD_REC' +
        'EITA_IMPOSTO, CD_TIPO_ALIQ_IPT, VL_BASE_CALC_ADVAL, PC_ALIQ_NORM' +
        '_ADVAL, VL_CALC_IPT_ADVAL, NM_UN_ALIQ_ESP_IPT, CD_TIPO_RECIPIENT' +
        'E, QT_ML_RECIPIENTE, QT_MERC_UN_ALIQ_ES, VL_ALIQ_ESPEC_IPT, VL_C' +
        'ALC_IPT_ESPEC, CD_TIPO_BENEF_IPI, PC_ALIQ_REDUZIDA, PC_REDUCAO_I' +
        'PT_BLI, PC_ALIQ_ACOR_TARIF, VL_CALC_II_AC_TARI, VL_IMPOSTO_DEVID' +
        'O, VL_IPT_A_RECOLHER, CD_TIPO_DIREITO, NR_NOTA_COMPL_TIPI )'
      
        'SELECT Mid([TRIBUTO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Expr1, T' +
        'RIBUTO.NR_OP_IMP_MICRO, TRIBUTO.CD_RECEITA_IMPOSTO, TRIBUTO.CD_T' +
        'IPO_ALIQ_IPT, TRIBUTO.VL_BASE_CALC_ADVAL, TRIBUTO.PC_ALIQ_NORM_A' +
        'DVAL, TRIBUTO.VL_CALC_IPT_ADVAL, TRIBUTO.NM_UN_ALIQ_ESP_IPT, TRI' +
        'BUTO.CD_TIPO_RECIPIENTE, TRIBUTO.QT_ML_RECIPIENTE, TRIBUTO.QT_ME' +
        'RC_UN_ALIQ_ES, TRIBUTO.VL_ALIQ_ESPEC_IPT, TRIBUTO.VL_CALC_IPT_ES' +
        'PEC, TRIBUTO.CD_TIPO_BENEF_IPI, TRIBUTO.PC_ALIQ_REDUZIDA, TRIBUT' +
        'O.PC_REDUCAO_IPT_BLI, TRIBUTO.PC_ALIQ_ACOR_TARIF, TRIBUTO.VL_CAL' +
        'C_II_AC_TARI, TRIBUTO.VL_IMPOSTO_DEVIDO, TRIBUTO.VL_IPT_A_RECOLH' +
        'ER, TRIBUTO.CD_TIPO_DIREITO, TRIBUTO.NR_NOTA_COMPL_TIPI'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN TRIBUTO ON (OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.NR_OP_IMP_MICRO = TRIBUTO.NR_OP_IMP_MICRO) AND (OP_A' +
        'DIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = TRIBUTO.NR_DECL_IMP_MICR' +
        'O)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 216
    Top = 284
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_pagpre: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PAGAMENTO_PREVISTO ( NR_DECL_IMP_MICRO, NR_OP_IMP_MI' +
        'CRO, NU_SEQ_PAG_PREV, DT_PREV_PGTO_360, VL_PREV_PGTO_360 )'
      
        'SELECT Mid([PAGAMENTO_PREVISTO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO ' +
        'AS Expr1, PAGAMENTO_PREVISTO.NR_OP_IMP_MICRO, PAGAMENTO_PREVISTO' +
        '.NU_SEQ_PAG_PREV, PAGAMENTO_PREVISTO.DT_PREV_PGTO_360, PAGAMENTO' +
        '_PREVISTO.VL_PREV_PGTO_360'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN PAGAMENTO_PREVISTO ON (O' +
        'P_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = PAGAMENTO_PREVISTO.NR_O' +
        'P_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = PA' +
        'GAMENTO_PREVISTO.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 288
    Top = 260
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_pagvin: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PAGAMENTO_VINCULADO ( NR_DECL_IMP_MICRO, NR_OP_IMP_M' +
        'ICRO, NR_SEQ_PAGAMENTO, CD_FORMA_PAGAMENTO, IN_PAGAMENTO_MN, CD_' +
        'BANCO_PAGAMENTO, CD_PRACA_PAGAMENTO, NR_OP_CAMBIO, VL_VINC_MD_CA' +
        'MBIO, NR_COMPR_CAMBIO, CD_TP_COMPR_CAMBIO )'
      
        'SELECT Mid([PAGAMENTO_VINCULADO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO' +
        ' AS Expr1, PAGAMENTO_VINCULADO.NR_OP_IMP_MICRO, PAGAMENTO_VINCUL' +
        'ADO.NR_SEQ_PAGAMENTO, PAGAMENTO_VINCULADO.CD_FORMA_PAGAMENTO, PA' +
        'GAMENTO_VINCULADO.IN_PAGAMENTO_MN, PAGAMENTO_VINCULADO.CD_BANCO_' +
        'PAGAMENTO, PAGAMENTO_VINCULADO.CD_PRACA_PAGAMENTO, PAGAMENTO_VIN' +
        'CULADO.NR_OP_CAMBIO, PAGAMENTO_VINCULADO.VL_VINC_MD_CAMBIO, PAGA' +
        'MENTO_VINCULADO.NR_COMPR_CAMBIO, PAGAMENTO_VINCULADO.CD_TP_COMPR' +
        '_CAMBIO'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN PAGAMENTO_VINCULADO ON (' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = PAGAMENTO_VINCULADO.NR' +
        '_OP_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = ' +
        'PAGAMENTO_VINCULADO.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 324
    Top = 180
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_procdi: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PROCESSO_DI ( NR_DECL_IMP_MICRO, NR_SEQ_PROCESSO, CD' +
        '_TIPO_PROCESSO, NR_PROCESSO_INSTR )'
      
        'SELECT Mid([PROCESSO_DI].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Expr' +
        '1, PROCESSO_DI.NR_SEQ_PROCESSO, PROCESSO_DI.CD_TIPO_PROCESSO, PR' +
        'OCESSO_DI.NR_PROCESSO_INSTR'
      'FROM PROCESSO_DI'
      'WHERE (((PROCESSO_DI.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 232
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_acertapesodi: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'SELECT OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO, Sum(Val([OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO].[PL_MERCADORIA])/100000) AS peso_liquido'
      'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO'
      'GROUP BY OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO'
      'HAVING (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 300
    Top = 172
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
    object q_acertapesodiNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_acertapesodipeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
  end
  object q_acertafretseg: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Faturas.Processo, Tributacao_Item_Fatura.Regime_Tributaca' +
        'o_II, Sum((([itensfaturas].[Rateio_Frete_prepaid]*[itensfaturas]' +
        '.[quantidade])*[processos_taxas_conversao].[taxa_conversao])) AS' +
        ' prepaid, Sum((([itensfaturas].[Rateio_Frete_collect]*[itensfatu' +
        'ras].[quantidade])*[processos_taxas_conversao].[taxa_conversao])' +
        ') AS collect, Sum((([itensfaturas].[Rateio_Frete_ternac]*[itensf' +
        'aturas].[quantidade])*[processos_taxas_conversao].[taxa_conversa' +
        'o])) AS ternac, Sum((([itensfaturas].[Rateio_seguro]*[itensfatur' +
        'as].[quantidade])*[processos_taxas_conversao].[taxa_conversao]))' +
        ' AS seguro'
      
        'FROM ((Faturas INNER JOIN Processos_Taxas_Conversao ON (Faturas.' +
        'Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas.Processo =' +
        ' Processos_Taxas_Conversao.Processo) AND (Faturas.Filial = Proce' +
        'ssos_Taxas_Conversao.Filial) AND (Faturas.Empresa = Processos_Ta' +
        'xas_Conversao.Empresa)) INNER JOIN ItensFaturas ON (Faturas.Códi' +
        'go = ItensFaturas.Fatura) AND (Faturas.Processo = ItensFaturas.P' +
        'rocesso) AND (Faturas.Filial = ItensFaturas.Filial) AND (Faturas' +
        '.Empresa = ItensFaturas.Empresa)) INNER JOIN Tributacao_Item_Fat' +
        'ura ON (ItensFaturas.Sequencial = Tributacao_Item_Fatura.Sequenc' +
        'ial_Item) AND (ItensFaturas.Fatura = Tributacao_Item_Fatura.Fatu' +
        'ra) AND (ItensFaturas.Processo = Tributacao_Item_Fatura.Processo' +
        ') AND (ItensFaturas.Filial = Tributacao_Item_Fatura.Filial) AND ' +
        '(ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa)'
      
        'GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Regime_Tributa' +
        'cao_II'
      
        'HAVING (((Faturas.Processo)=:qnum) AND ((Tributacao_Item_Fatura.' +
        'Regime_Tributacao_II)=:qregime));')
    Left = 240
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00001180'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_acertafretsegProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_acertafretsegRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object q_acertafretsegprepaid: TFloatField
      FieldName = 'prepaid'
    end
    object q_acertafretsegcollect: TFloatField
      FieldName = 'collect'
    end
    object q_acertafretsegternac: TFloatField
      FieldName = 'ternac'
    end
    object q_acertafretsegseguro: TFloatField
      FieldName = 'seguro'
    end
  end
  object q_acertapagtrib: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Max(Tributacao_Item_Fatura.A' +
        'dicao) AS nadicoes, "0086" AS cod_ii, "1038" AS cod_ipi, "7811" ' +
        'AS cod_sis, Importadores.Banco, Importadores.Agencia, Sum(([Valo' +
        'r_II_a_recolher]*[TAXA_CONVERSAO])) AS somadeValor_II_a_recolher' +
        ', Sum(([Valor_IPI_a_recolher]*[taxa_conversao])) AS somadeValor_' +
        'IPI_a_recolher, Tributacao_Item_Fatura.Regime_Tributacao_II'
      
        'FROM ((((Processos INNER JOIN Tributacao_Item_Fatura ON (Process' +
        'os.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Fili' +
        'al = Tributacao_Item_Fatura.Filial) AND (Processos.Código = Trib' +
        'utacao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tribut' +
        'acao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao' +
        '_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_' +
        'Fatura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fa' +
        'tura.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.S' +
        'equencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON' +
        ' (ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Fili' +
        'al = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Proces' +
        'so) AND (ItensFaturas.Fatura = Faturas.Código)) INNER JOIN Impor' +
        'tadores ON (Processos.Importador = Importadores.Codigo) AND (Pro' +
        'cessos.Filial = Importadores.Filial) AND (Processos.Empresa = Im' +
        'portadores.Empresa)) INNER JOIN Processos_Taxas_Conversao ON (Fa' +
        'turas.Empresa = Processos_Taxas_Conversao.Empresa) AND (Faturas.' +
        'Filial = Processos_Taxas_Conversao.Filial) AND (Faturas.Processo' +
        ' = Processos_Taxas_Conversao.Processo) AND (Faturas.Moeda = Proc' +
        'essos_Taxas_Conversao.Moeda)'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, "0086", "1038", "7811", Im' +
        'portadores.Banco, Importadores.Agencia, Tributacao_Item_Fatura.R' +
        'egime_Tributacao_II'
      
        'HAVING (((Processos.NR_DECL_IMP_MICRO)=:qnum) AND ((Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_II)=:qregime));')
    Left = 268
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00001180'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_acertapagtribNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_acertapagtribnadicoes: TStringField
      FieldName = 'nadicoes'
      Size = 255
    end
    object q_acertapagtribcod_ii: TStringField
      FieldName = 'cod_ii'
      Size = 255
    end
    object q_acertapagtribcod_ipi: TStringField
      FieldName = 'cod_ipi'
      Size = 255
    end
    object q_acertapagtribcod_sis: TStringField
      FieldName = 'cod_sis'
      Size = 255
    end
    object q_acertapagtribBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object q_acertapagtribAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object q_acertapagtribsomadeValor_II_a_recolher: TFloatField
      FieldName = 'somadeValor_II_a_recolher'
    end
    object q_acertapagtribsomadeValor_IPI_a_recolher: TFloatField
      FieldName = 'somadeValor_IPI_a_recolher'
    end
    object q_acertapagtribRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
  end
  object q_rpr: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Importador, Processos.Código, Processos.Código_' +
        'Cliente, Processos.NR_DECLARACAO_IMP, Processos.Numero_RCR, Proc' +
        'essos.Data_Entrada_RCR, Processos.Data_Aprovacao_RCR, Processos.' +
        'Numero_TR, Processos.Data_Entrada_TR, Processos.Data_vencimento_' +
        'TR, Processos.Data_Aprovacao_TR, Processos.Data_Baixa_TR'
      
        'FROM Parametros INNER JOIN Processos ON (Parametros.Filial = Pro' +
        'cessos.Filial) AND (Parametros.Empresa = Processos.Empresa)'
      
        'WHERE (((Processos.Importador)=:qimp) AND ((Processos.NR_DECLARA' +
        'CAO_IMP) Is Not Null) AND ((Processos.Numero_RCR) Is Not Null));')
    Left = 184
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_rprImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Processos.Importador'
      Size = 4
    end
    object q_rprCdigo: TStringField
      FieldName = 'Código'
      Origin = 'DBNMSCOMEX.Processos.Código'
      Size = 8
    end
    object q_rprCdigo_Cliente: TStringField
      FieldName = 'Código_Cliente'
      Origin = 'DBNMSCOMEX.Processos.Código_Cliente'
      Size = 15
    end
    object q_rprNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Origin = 'DBNMSCOMEX.Processos.NR_DECLARACAO_IMP'
      Size = 10
    end
    object q_rprNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      Origin = 'DBNMSCOMEX.Processos.Numero_RCR'
    end
    object q_rprData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
      Origin = 'DBNMSCOMEX.Processos.Data_Entrada_RCR'
    end
    object q_rprData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
      Origin = 'DBNMSCOMEX.Processos.Data_Aprovacao_RCR'
    end
    object q_rprNumero_TR: TStringField
      FieldName = 'Numero_TR'
      Origin = 'DBNMSCOMEX.Processos.Numero_TR'
    end
    object q_rprData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
      Origin = 'DBNMSCOMEX.Processos.Data_Entrada_TR'
    end
    object q_rprData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
      Origin = 'DBNMSCOMEX.Processos.Data_vencimento_TR'
    end
    object q_rprData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
      Origin = 'DBNMSCOMEX.Processos.Data_Aprovacao_TR'
    end
    object q_rprData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
      Origin = 'DBNMSCOMEX.Processos.Data_Baixa_TR'
    end
  end
  object ds_rpr: TDataSource
    DataSet = q_rpr
    Left = 200
    Top = 224
  end
  object q_somaitensfat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT itensfaturas.Empresa, itensfaturas.Filial, itensfaturas.P' +
        'rocesso, itensfaturas.Fatura, Sum(itensfaturas.[Valor Total]) AS' +
        ' v_valortotal, Sum(itensfaturas.[Peso Total]) AS v_pesototal, Su' +
        'm(itensfaturas.Peso_Total_Acertado) AS v_pesototala'
      'FROM itensfaturas'
      
        'GROUP BY itensfaturas.Empresa, itensfaturas.Filial, itensfaturas' +
        '.Processo, itensfaturas.Fatura'
      
        'HAVING (((itensfaturas.Empresa)=:qempresa) AND ((itensfaturas.Fi' +
        'lial)=:qfilial) AND ((itensfaturas.Processo)=:qprocesso) AND ((i' +
        'tensfaturas.Fatura)=:qfatura));')
    UpdateMode = upWhereChanged
    Left = 720
    Top = 40
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
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '04018/01'
      end
      item
        DataType = ftString
        Name = 'qfatura'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_somaitensfatEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_somaitensfatFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_somaitensfatProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_somaitensfatFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object q_somaitensfatv_valortotal: TFloatField
      FieldName = 'v_valortotal'
    end
    object q_somaitensfatv_pesototal: TFloatField
      FieldName = 'v_pesototal'
    end
    object q_somaitensfatv_pesototala: TFloatField
      FieldName = 'v_pesototala'
    end
  end
  object T_verufollow: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Data;Hora'
    MasterFields = 'Empresa;Filial;Código'
    MasterSource = DS_processos
    TableName = 'FollowUp'
    UpdateMode = upWhereChanged
    Left = 364
    Top = 236
    object T_verufollowEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_verufollowFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_verufollowProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_verufollowSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object T_verufollowCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object T_verufollowCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object T_verufollowObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object T_verufollowData: TDateTimeField
      FieldName = 'Data'
    end
    object T_verufollowHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object T_verufollowlink: TStringField
      FieldName = 'link'
      Size = 8
    end
    object T_verufollowData_final: TDateTimeField
      FieldName = 'Data_final'
    end
    object T_verufollowHora_final: TStringField
      FieldName = 'Hora_final'
      Size = 5
    end
    object T_verufollowDuracao: TIntegerField
      FieldName = 'Duracao'
    end
    object T_verufollowUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object t_moedac: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO'
    MasterSource = DS_moeda
    TableName = 'TAB_MOEDA_CONVERSAO'
    Left = 260
    Top = 4
    object t_moedacCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object t_moedacDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object t_moedacTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
  end
  object t_ncm_vutil: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'ncm'
    TableName = 'NCM_VIDA_UTIL'
    Left = 388
    Top = 180
    object t_ncm_vutilncm: TStringField
      FieldName = 'ncm'
      Size = 8
    end
    object t_ncm_vutilvida_util: TStringField
      FieldName = 'vida_util'
      Size = 2
    end
  end
  object Q_infocomp2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Concargas.Processo, Concargas.Codigo, [Tipos de Cargas].D' +
        'escricao'
      
        'FROM Concargas LEFT JOIN [Tipos de Cargas] ON Concargas.[Tipo Ca' +
        'rga] = [Tipos de Cargas].Codigo'
      'WHERE (((Concargas.Processo)=:qprocesso));')
    Left = 524
    Top = 236
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_infocomp2Processo: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object Q_infocomp2Codigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object Q_infocomp2Descricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object q_fobcif12a: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, Processos.Tipo_Declaração, Faturas.Moeda, TAB_MOEDA.DES' +
        'CRICAO, Processos_Taxas_Conversao.Taxa_conversao, 0+Sum(ItensFat' +
        'uras.VMLE) AS FOB, 0+Sum([ITENSFATURAS].[VMLE]*[PROCESSOS_TAXAS_' +
        'CONVERSAO].[TAXA_CONVERSAO]) AS FOBREAL, 0+Sum([VMLE]+(([RATEIO_' +
        'FRETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*[it' +
        'ensfaturas].[QUANTIDADE])+([RATEIO_SEGURO]*[itensfaturas].[QUANT' +
        'IDADE])) AS CIF, 0+(Sum([VMLE]+(([RATEIO_FRETE_PREPAID]+[RATEIO_' +
        'FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*itensfaturas.[QUANTIDADE])' +
        '+([RATEIO_SEGURO]*itensfaturas.[QUANTIDADE]))*[PROCESSOS_TAXAS_C' +
        'ONVERSAO].[TAXA_CONVERSAO]) AS CIFREAL, Tributacao_Item_Fatura.R' +
        'egime_Tributacao_II, Tributacao_Item_Fatura.Regime_Tributacao_IP' +
        'I'
      
        'FROM ((((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Fatura' +
        ' = Faturas.Código) AND (ItensFaturas.Processo = Faturas.Processo' +
        ') AND (ItensFaturas.Filial = Faturas.Filial) AND (ItensFaturas.E' +
        'mpresa = Faturas.Empresa)) LEFT JOIN Processos_Taxas_Conversao O' +
        'N (Faturas.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas' +
        '.Processo = Processos_Taxas_Conversao.Processo) AND (Faturas.Fil' +
        'ial = Processos_Taxas_Conversao.Filial) AND (Faturas.Empresa = P' +
        'rocessos_Taxas_Conversao.Empresa)) INNER JOIN TAB_MOEDA ON Fatur' +
        'as.Moeda = TAB_MOEDA.CODIGO) INNER JOIN Tributacao_Item_Fatura O' +
        'N (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa) AND (I' +
        'tensFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFa' +
        'turas.Processo = Tributacao_Item_Fatura.Processo) AND (ItensFatu' +
        'ras.Fatura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Se' +
        'quencial = Tributacao_Item_Fatura.Sequencial_Item)) INNER JOIN P' +
        'rocessos ON (Faturas.Processo = Processos.Código) AND (Faturas.F' +
        'ilial = Processos.Filial) AND (Faturas.Empresa = Processos.Empre' +
        'sa)'
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, Processos.Tipo_Declaração, Faturas.Moeda, TAB_MOEDA.D' +
        'ESCRICAO, Processos_Taxas_Conversao.Taxa_conversao, Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Regime_T' +
        'ributacao_IPI'
      
        'HAVING (((ItensFaturas.Processo)=:qprocesso) AND ((Processos.Tip' +
        'o_Declaração)="12") AND ((Tributacao_Item_Fatura.Regime_Tributac' +
        'ao_II)="5") AND ((Tributacao_Item_Fatura.Regime_Tributacao_IPI)=' +
        '"5"));')
    Left = 500
    Top = 316
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_fobcif12aEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_fobcif12aFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_fobcif12aProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_fobcif12aTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object q_fobcif12aMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object q_fobcif12aDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object q_fobcif12aTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_fobcif12aFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_fobcif12aFOBREAL: TFloatField
      FieldName = 'FOBREAL'
    end
    object q_fobcif12aCIF: TFloatField
      FieldName = 'CIF'
    end
    object q_fobcif12aCIFREAL: TFloatField
      FieldName = 'CIFREAL'
    end
    object q_fobcif12aRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object q_fobcif12aRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
  end
  object q_fobcif: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, Processos.Tipo_Declaração, Faturas.Moeda, TAB_MOEDA.DES' +
        'CRICAO, Processos_Taxas_Conversao.Taxa_conversao, 0+Sum(ItensFat' +
        'uras.VMLE) AS FOB, 0+Sum([ITENSFATURAS].[VMLE]*[PROCESSOS_TAXAS_' +
        'CONVERSAO].[TAXA_CONVERSAO]) AS FOBREAL, 0+Sum([VMLE]+(([RATEIO_' +
        'FRETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*[QU' +
        'ANTIDADE])+([RATEIO_SEGURO]*[QUANTIDADE])) AS CIF, (Sum([VMLE]+(' +
        '([RATEIO_FRETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TER' +
        'NAC])*[QUANTIDADE])+([RATEIO_SEGURO]*[QUANTIDADE]))*[PROCESSOS_T' +
        'AXAS_CONVERSAO].[TAXA_CONVERSAO]) AS CIFREAL'
      
        'FROM (((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Empresa' +
        ' = Faturas.Empresa) AND (ItensFaturas.Filial = Faturas.Filial) A' +
        'ND (ItensFaturas.Processo = Faturas.Processo) AND (ItensFaturas.' +
        'Fatura = Faturas.Código)) LEFT JOIN Processos_Taxas_Conversao ON' +
        ' (Faturas.Empresa = Processos_Taxas_Conversao.Empresa) AND (Fatu' +
        'ras.Filial = Processos_Taxas_Conversao.Filial) AND (Faturas.Proc' +
        'esso = Processos_Taxas_Conversao.Processo) AND (Faturas.Moeda = ' +
        'Processos_Taxas_Conversao.Moeda)) INNER JOIN TAB_MOEDA ON Fatura' +
        's.Moeda = TAB_MOEDA.CODIGO) INNER JOIN Processos ON (Faturas.Pro' +
        'cesso = Processos.Código) AND (Faturas.Filial = Processos.Filial' +
        ') AND (Faturas.Empresa = Processos.Empresa)'
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, Processos.Tipo_Declaração, Faturas.Moeda, TAB_MOEDA.D' +
        'ESCRICAO, Processos_Taxas_Conversao.Taxa_conversao'
      
        'HAVING (((ItensFaturas.Processo)=:qprocesso) AND ((Processos.Tip' +
        'o_Declaração)<>"12"));')
    Left = 532
    Top = 332
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_fobcifEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_fobcifFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_fobcifProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_fobcifTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object q_fobcifMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object q_fobcifDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object q_fobcifTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_fobcifFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_fobcifFOBREAL: TFloatField
      FieldName = 'FOBREAL'
    end
    object q_fobcifCIF: TFloatField
      FieldName = 'CIF'
    end
    object q_fobcifCIFREAL: TFloatField
      FieldName = 'CIFREAL'
    end
  end
  object q_importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.[Razão Social], Importadores.País, Importado' +
        'res.CNPJ_CPF_COMPLETO, Importadores.[CGC/CPF], Importadores.[Tip' +
        'o Importador], Importadores.Endereço, Importadores.Número, Impor' +
        'tadores.Complemento, Importadores.Bairro, Importadores.Cidade, I' +
        'mportadores.CEP, Importadores.UF, Importadores.Estado, Importado' +
        'res.[Inscrição Estadual], Importadores.Banco, Importadores.Agenc' +
        'ia, Importadores.Conta_Corrente, Importadores.Conta_Corrente_Reg' +
        'istro, Importadores.Conta_Corrente_Deposito, Importadores.link'
      
        'FROM Parametros INNER JOIN Importadores ON (Parametros.Filial = ' +
        'Importadores.Filial) AND (Parametros.Empresa = Importadores.Empr' +
        'esa)'
      'ORDER BY Importadores.[Razão Social];')
    Left = 308
    Top = 112
    object q_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_importadoresFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_importadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object q_importadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object q_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object q_importadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 10
    end
    object q_importadoresTipoImportador: TStringField
      FieldName = 'Tipo Importador'
      Size = 1
    end
    object q_importadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object q_importadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object q_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object q_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object q_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object q_importadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object q_importadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object q_importadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object q_importadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
    object q_importadoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object q_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object q_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object q_importadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object q_importadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object q_importadoreslink: TStringField
      FieldName = 'link'
      Size = 50
    end
  end
end
