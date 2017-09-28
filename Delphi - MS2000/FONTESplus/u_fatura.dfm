object f_fatura: Tf_fatura
  Left = 301
  Top = 213
  ActiveControl = me_nossaref
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Faturamento de Processos'
  ClientHeight = 621
  ClientWidth = 803
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
  object Panel4: TPanel
    Left = 0
    Top = 59
    Width = 402
    Height = 499
    Align = alLeft
    Alignment = taLeftJustify
    Color = clNavy
    Enabled = False
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 400
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Créditos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1
      Top = 478
      Width = 400
      Height = 20
      Align = alBottom
      Alignment = taCenter
      Caption = 'Total ='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 355
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
    object Label9: TLabel
      Left = 8
      Top = 379
      Width = 33
      Height = 13
      Caption = 'Crédito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 402
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
    object sb_contabilizado2: TSpeedButton
      Left = 168
      Top = 350
      Width = 23
      Height = 22
      Hint = 'Verifica contabilização no conta corrente'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_contabilizado2Click
    end
    object Label24: TLabel
      Left = 8
      Top = 426
      Width = 52
      Height = 13
      Caption = 'Fundo Fixo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 8
      Top = 450
      Width = 42
      Height = 13
      Caption = 'Detalhes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpa: TSpeedButton
      Left = 167
      Top = 423
      Width = 25
      Height = 22
      Hint = 'Limpa o Fundo Fixo'
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
      OnClick = sbLimpaClick
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 21
      Width = 400
      Height = 316
      Hint = 
        'Click na coluna IMP para ativar ou desativar a impressão deste C' +
        'rédito'
      Align = alTop
      DataSource = ds_creditos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Impdemfim'
          Title.Caption = 'IMP'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Credito_Cobrado'
          Title.Alignment = taCenter
          Title.Caption = 'Cobrado'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Credito'
          Title.Caption = 'Data'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Credito'
          Title.Caption = 'Código'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo_FundoFIXO'
          Title.Caption = 'Fundo FIXO'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Detalhe'
          Title.Caption = 'Detalhes'
          Visible = True
        end>
    end
    object dblccred: TDBLookupComboBox
      Left = 64
      Top = 375
      Width = 325
      Height = 21
      DataField = 'Credito'
      DataSource = ds_creditos
      KeyField = 'Codigo'
      ListField = 'descricao'
      ListSource = ds_tipocre
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 351
      Width = 73
      Height = 21
      DataField = 'Data_Credito'
      DataSource = ds_creditos
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 398
      Width = 93
      Height = 21
      DataField = 'Valor'
      DataSource = ds_creditos
      TabOrder = 4
      OnKeyPress = DBEdit2KeyPress
    end
    object b_novocre: TBitBtn
      Left = 197
      Top = 348
      Width = 63
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = b_novocreClick
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
      Left = 327
      Top = 348
      Width = 63
      Height = 25
      Caption = 'Exclui'
      TabOrder = 8
      OnClick = b_excluiprocClick
      Kind = bkAbort
    end
    object dbe_detalhes: TDBEdit
      Left = 64
      Top = 446
      Width = 325
      Height = 21
      DataField = 'Detalhe'
      DataSource = ds_creditos
      MaxLength = 100
      TabOrder = 6
      OnKeyPress = DBEdit2KeyPress
    end
    object DBL_fundofixo: TDBLookupComboBox
      Left = 64
      Top = 422
      Width = 99
      Height = 21
      DataField = 'Processo_FundoFIXO'
      DataSource = ds_creditos
      KeyField = 'Processo'
      ListField = 'Processo'
      ListSource = ds_t_imp_pro
      TabOrder = 5
    end
    object b_gravacre: TBitBtn
      Left = 262
      Top = 348
      Width = 63
      Height = 25
      Caption = 'Grava'
      Enabled = False
      TabOrder = 7
      OnClick = b_gravacreClick
      Kind = bkOK
    end
  end
  object Panel5: TPanel
    Left = 401
    Top = 59
    Width = 402
    Height = 499
    Align = alRight
    Alignment = taLeftJustify
    Color = clMaroon
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 400
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Débitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 355
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
    object Label4: TLabel
      Left = 8
      Top = 379
      Width = 31
      Height = 13
      Caption = 'Débito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 402
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
    object Label6: TLabel
      Left = 1
      Top = 478
      Width = 400
      Height = 20
      Align = alBottom
      Alignment = taCenter
      Caption = 'Total ='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sb_contabilizado: TSpeedButton
      Left = 173
      Top = 351
      Width = 23
      Height = 22
      Hint = 'Verifica contabilização no conta corrente'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_contabilizadoClick
    end
    object sb_debdir: TSpeedButton
      Left = 129
      Top = 351
      Width = 23
      Height = 22
      Hint = 'Habilita e desabilita crédito de débito direto'
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
        55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
        330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
        33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
        B0555550BB33B3BB0555555500B3333055555555550000055555}
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_debdirClick
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 21
      Width = 400
      Height = 316
      Hint = 
        'Click na coluna IMP para ativar ou desativar a impressão deste D' +
        'ébito'
      Align = alTop
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
      OnCellClick = DBGrid2CellClick
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnKeyPress = DBGrid2KeyPress
      OnTitleClick = DBGrid2TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Impdemfim'
          Title.Caption = 'IMP'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Despesa_Cobrada'
          Title.Alignment = taCenter
          Title.Caption = 'Cobrado'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Registro'
          Title.Caption = 'Data'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numerario'
          Title.Caption = 'Código'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Registrado'
          Title.Caption = 'Valor'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Previsao'
          Title.Caption = 'Dt.Previsão'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Previsao'
          Title.Caption = 'Valor Previsão'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo_FundoFIXO'
          Title.Caption = 'Processo Creditado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Detalhe'
          Title.Caption = 'Detalhes'
          Visible = True
        end>
    end
    object DBEdit3: TDBEdit
      Left = 45
      Top = 351
      Width = 73
      Height = 21
      DataField = 'Data_Registro'
      DataSource = ds_numerarios
      TabOrder = 2
    end
    object dblcdeb: TDBLookupComboBox
      Left = 45
      Top = 375
      Width = 340
      Height = 21
      DataField = 'Numerario'
      DataSource = ds_numerarios
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = ds_tiponum
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 45
      Top = 398
      Width = 121
      Height = 21
      DataField = 'Valor_Registrado'
      DataSource = ds_numerarios
      TabOrder = 4
      OnKeyPress = DBEdit4KeyPress
    end
    object b_novodeb: TBitBtn
      Left = 202
      Top = 348
      Width = 60
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = b_novodebClick
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
    object BitBtn4: TBitBtn
      Left = 326
      Top = 348
      Width = 60
      Height = 25
      Caption = 'Exclui'
      TabOrder = 6
      OnClick = BitBtn4Click
      Kind = bkAbort
    end
    object b_gravadeb: TBitBtn
      Left = 264
      Top = 348
      Width = 60
      Height = 25
      Caption = 'Grava'
      Enabled = False
      TabOrder = 5
      OnClick = b_gravadebClick
      Kind = bkOK
    end
    object btnExcluiZerados: TBitBtn
      Left = 275
      Top = 438
      Width = 109
      Height = 25
      Caption = 'Exclui Zerados'
      Enabled = False
      TabOrder = 7
      OnClick = btnExcluiZeradosClick
      Kind = bkAbort
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 59
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label14: TLabel
      Left = 8
      Top = 36
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
    object DBText1: TDBText
      Left = 4
      Top = 8
      Width = 796
      Height = 17
      DataField = 'Razao_Social'
      DataSource = ds_importadores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object me_nossaref: TMaskEdit
      Left = 67
      Top = 32
      Width = 62
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnChange = me_nossarefChange
      OnKeyPress = me_nossarefKeyPress
    end
    object b_processa: TButton
      Left = 141
      Top = 30
      Width = 135
      Height = 25
      Caption = 'Processa todos os saldos'
      TabOrder = 1
      Visible = False
      OnClick = b_processaClick
    end
    object btnCancelarProcesso: TBitBtn
      Left = 656
      Top = 32
      Width = 145
      Height = 25
      Caption = '&Cancelar Processo'
      TabOrder = 2
      Visible = False
      OnClick = btnCancelarProcessoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 558
    Width = 803
    Height = 23
    Align = alBottom
    Color = clTeal
    TabOrder = 3
    object Label13: TLabel
      Left = 1
      Top = 2
      Width = 801
      Height = 20
      Align = alBottom
      Alignment = taCenter
      Caption = 'Resultado ='
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 581
    Width = 803
    Height = 40
    Align = alBottom
    Color = 10514464
    Enabled = False
    TabOrder = 4
    object b_calculo: TBitBtn
      Left = 6
      Top = 8
      Width = 119
      Height = 25
      Caption = 'Calcula Honorários'
      TabOrder = 0
      OnClick = b_calculoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object b_impdem: TBitBtn
      Left = 663
      Top = 8
      Width = 136
      Height = 25
      Caption = 'Imprime Demonstrativo'
      TabOrder = 1
      OnClick = b_impdemClick
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
    object b_observa: TBitBtn
      Left = 561
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Observações'
      TabOrder = 2
      OnClick = b_observaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object b_profat: TBitBtn
      Left = 130
      Top = 8
      Width = 133
      Height = 25
      Caption = 'Confirma Faturamento'
      TabOrder = 3
      OnClick = b_profatClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object b_psh: TBitBtn
      Left = 440
      Top = -16
      Width = 161
      Height = 25
      Caption = 'Processos Sem Honorários'
      Enabled = False
      TabOrder = 4
      Visible = False
      OnClick = b_pshClick
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
    object cb_semnf: TCheckBox
      Left = 273
      Top = 13
      Width = 130
      Height = 17
      Caption = 'Sem NOTA FISCAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = cb_semnfClick
    end
    object cb_AgMedicao: TCheckBox
      Left = 412
      Top = 13
      Width = 143
      Height = 17
      Caption = 'Aguardando Medição'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = cb_AgMedicaoClick
    end
  end
  object p_obs: TPanel
    Left = 101
    Top = 121
    Width = 741
    Height = 25
    TabOrder = 6
    Visible = False
    object Label18: TLabel
      Left = 1
      Top = 1
      Width = 739
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Observações Financeiras deste Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 1
      Top = 21
      Width = 739
      Height = 241
      DataField = 'Observacoes'
      DataSource = ds_obs
      TabOrder = 0
    end
    object b_okobs: TBitBtn
      Left = 660
      Top = 272
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = b_okobsClick
      Kind = bkOK
    end
  end
  object p_hono: TPanel
    Left = 124
    Top = 148
    Width = 613
    Height = 205
    BevelWidth = 2
    BiDiMode = bdLeftToRight
    Color = clSilver
    ParentBiDiMode = False
    TabOrder = 5
    Visible = False
    OnExit = p_honoExit
    object Label15: TLabel
      Left = 2
      Top = 2
      Width = 609
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Bases de Cálculo de Honorários em Reais (R$)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 8
      Top = 152
      Width = 172
      Height = 13
      Caption = 'Quantidade LI deste Processo'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 148
      Top = 180
      Width = 33
      Height = 13
      Caption = 'DTA1'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object b_confhono: TBitBtn
      Left = 446
      Top = 160
      Width = 75
      Height = 25
      Caption = '&Confirma'
      TabOrder = 0
      OnClick = b_confhonoClick
      Kind = bkYes
    end
    object b_canchono: TBitBtn
      Left = 528
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = b_canchonoClick
      Kind = bkCancel
    end
    object DBEdit5: TDBEdit
      Left = 188
      Top = 144
      Width = 101
      Height = 21
      DataField = 'Quantidade_LI'
      DataSource = ds_processos
      TabOrder = 2
    end
    object me_dta1: TMaskEdit
      Left = 188
      Top = 172
      Width = 101
      Height = 21
      TabOrder = 3
    end
    object gb_di1: TGroupBox
      Left = 8
      Top = 24
      Width = 297
      Height = 105
      Caption = 'Valores da DI de Admissão Temporária (caso 2 DI'#39'S)'
      TabOrder = 4
      object Label20: TLabel
        Left = 40
        Top = 36
        Width = 25
        Height = 13
        Caption = 'FOB'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 40
        Top = 64
        Width = 20
        Height = 13
        Caption = 'CIF'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 4
        Top = 88
        Width = 284
        Height = 13
        Caption = 'obs: se apenas 1 DI neste processo informe os valores aqui.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit6: TDBEdit
        Left = 76
        Top = 28
        Width = 101
        Height = 21
        DataField = 'Valor_FOB'
        DataSource = ds_processos
        TabOrder = 0
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 76
        Top = 56
        Width = 101
        Height = 21
        DataField = 'Valor_CIF'
        DataSource = ds_processos
        TabOrder = 1
        OnKeyPress = DBEdit7KeyPress
      end
    end
    object gb_di2: TGroupBox
      Left = 308
      Top = 24
      Width = 297
      Height = 105
      Caption = 'Valores da DI de Consumo (caso 2 DI'#39'S)'
      TabOrder = 5
      object Label11: TLabel
        Left = 40
        Top = 36
        Width = 25
        Height = 13
        Caption = 'FOB'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 40
        Top = 64
        Width = 20
        Height = 13
        Caption = 'CIF'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit8: TDBEdit
        Left = 76
        Top = 28
        Width = 101
        Height = 21
        DataField = 'Valor_FOBC'
        DataSource = ds_processos
        TabOrder = 0
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 76
        Top = 56
        Width = 101
        Height = 21
        DataField = 'Valor_CIFC'
        DataSource = ds_processos
        TabOrder = 1
        OnKeyPress = DBEdit7KeyPress
      end
    end
  end
  object p_psh: TPanel
    Left = 176
    Top = 216
    Width = 513
    Height = 97
    TabOrder = 7
    Visible = False
    OnExit = BitBtn1Click
    object Label17: TLabel
      Left = 1
      Top = 1
      Width = 511
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Processos sem Numerários e/ou Honorários Calculados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 8
      Top = 408
      Width = 3
      Height = 13
      Caption = ' '
    end
    object DBGrid3: TDBGrid
      Left = 16
      Top = 24
      Width = 489
      Height = 193
      DataSource = ds_qpsh
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
          Title.Caption = 'Processo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Razão Social do Cliente'
          Width = 310
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Status Atual do Processo'
          Width = 279
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 680
      Top = 400
      Width = 75
      Height = 25
      Caption = 'Fecha'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
  end
  object T_parametros: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 96
    Top = 784
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
      Size = 15
    end
    object T_parametrosVersao: TStringField
      FieldName = 'Versao'
      Size = 50
    end
    object T_parametroskeycrypt: TStringField
      FieldName = 'keycrypt'
      Size = 255
    end
    object T_parametrosHost_smtp: TStringField
      FieldName = 'Host_smtp'
      Size = 15
    end
    object T_parametrosPorta_smtp: TSmallintField
      FieldName = 'Porta_smtp'
    end
    object T_parametrosUsuario_smtp: TStringField
      FieldName = 'Usuario_smtp'
      Size = 30
    end
    object T_parametrosSenha_smtp: TStringField
      FieldName = 'Senha_smtp'
      Size = 16
    end
    object T_parametrosNumerador_Transmittal: TStringField
      FieldName = 'Numerador_Transmittal'
      Size = 8
    end
    object T_parametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Size = 100
    end
    object T_parametrosAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object T_parametrosAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object T_parametrosAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object T_parametrosAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object T_parametrosNumerador_Sol_Cheques: TStringField
      FieldName = 'Numerador_Sol_Cheques'
      Size = 50
    end
    object T_parametrosNumerador_Sol_Reg: TStringField
      FieldName = 'Numerador_Sol_Reg'
      Size = 50
    end
    object T_parametrosNumerador_Sol_Tracla: TStringField
      FieldName = 'Numerador_Sol_Tracla'
      Size = 50
    end
  end
  object T_processos: TTable
    AutoCalcFields = False
    AfterPost = T_processosAfterPost
    AfterScroll = T_processosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Processos'
    Left = 84
    Top = 656
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
    object T_processosCodigo: TStringField
      FieldName = 'Codigo'
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
    object T_processosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      Size = 60
    end
    object T_processosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
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
      Size = 8
    end
    object T_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object T_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
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
    object T_processosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object T_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object T_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object T_processosIN_MOEDA_UNICA: TSmallintField
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
      Size = 200
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
      Size = 8
    end
    object T_processosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      Size = 8
    end
    object T_processosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
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
    object T_processosUrgente: TSmallintField
      FieldName = 'Urgente'
    end
    object T_processosconsolidado: TSmallintField
      FieldName = 'consolidado'
    end
    object T_processosPag_proporcional: TSmallintField
      FieldName = 'Pag_proporcional'
    end
    object T_processosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object T_processosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object T_processosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object T_processosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object T_processosDDE: TStringField
      FieldName = 'DDE'
      Size = 30
    end
    object T_processosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 30
    end
    object T_processosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object T_processosFaturado: TSmallintField
      FieldName = 'Faturado'
    end
    object T_processosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object T_processosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 4
    end
    object T_processosProcurador2: TStringField
      FieldName = 'Procurador2'
      Size = 4
    end
    object T_processosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object T_processosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object T_processosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      Size = 100
    end
    object T_processosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      Size = 10
    end
    object T_processosvinc_processo: TSmallintField
      FieldName = 'vinc_processo'
    end
    object T_processosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      Size = 8
    end
    object T_processossem_nfs: TIntegerField
      FieldName = 'sem_nfs'
    end
    object T_processosaguardando_medicao: TIntegerField
      FieldName = 'aguardando_medicao'
    end
  end
  object T_creditos: TTable
    AutoCalcFields = False
    AfterInsert = T_creditosAfterEdit
    AfterEdit = T_creditosAfterEdit
    AfterPost = T_creditosAfterPost
    BeforeDelete = T_creditosBeforeDelete
    AfterScroll = T_creditosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Creditos_Processos'
    Left = 88
    Top = 720
    object T_creditosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_creditosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_creditosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object T_creditosREG: TAutoIncField
      FieldName = 'REG'
    end
    object T_creditosCredito: TStringField
      FieldName = 'Credito'
      Size = 4
    end
    object T_creditosData_Credito: TDateTimeField
      FieldName = 'Data_Credito'
    end
    object T_creditosValor: TFloatField
      FieldName = 'Valor'
    end
    object T_creditosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object T_creditosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object T_creditosContabilizado: TStringField
      FieldName = 'Contabilizado'
      Size = 3
    end
    object T_creditosImpdemfim: TStringField
      FieldName = 'Impdemfim'
      Size = 3
    end
    object T_creditosContabilizado_cliente: TSmallintField
      FieldName = 'Contabilizado_cliente'
    end
    object T_creditosREG_numerarios: TIntegerField
      FieldName = 'REG_numerarios'
    end
    object T_creditosProcesso_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      Size = 8
    end
    object T_creditosDetalhe: TStringField
      FieldName = 'Detalhe'
      Size = 50
    end
    object T_creditosCredito_Cobrado: TIntegerField
      FieldName = 'Credito_Cobrado'
    end
  end
  object T_tiponum: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Numerario'
    MasterSource = ds_numerarios
    TableName = 'Tipos_Numerario'
    Left = 156
    Top = 656
    object T_tiponumEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_tiponumFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_tiponumCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_tiponumDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_tiponumPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
    object T_tiponumRateio: TStringField
      FieldName = 'Rateio'
      Size = 1
    end
    object T_tiponumContabilizaCC: TSmallintField
      FieldName = 'ContabilizaCC'
    end
  end
  object T_numerarios: TTable
    AutoCalcFields = False
    BeforePost = T_numerariosBeforePost
    AfterPost = T_numerariosAfterPost
    BeforeDelete = T_numerariosBeforeDelete
    AfterScroll = T_numerariosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Numerarios_Processos'
    Left = 168
    Top = 784
    object T_numerariosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_numerariosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_numerariosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_numerariosREG: TAutoIncField
      FieldName = 'REG'
    end
    object T_numerariosNumerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object T_numerariosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object T_numerariosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object T_numerariosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object T_numerariosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object T_numerariosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object T_numerariosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object T_numerariosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object T_numerariosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object T_numerariosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object T_numerariosContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object T_numerariosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object T_numerariosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object T_numerariosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object T_numerariosImpdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object T_numerariosDetalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object T_numerariosDocsis: TStringField
      FieldName = 'Docsis'
      FixedChar = True
      Size = 15
    end
    object T_numerariosFatura_mov: TStringField
      FieldName = 'Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object T_numerariosFornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object T_numerariosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object T_numerariosContabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object T_numerariosREG_creditos: TIntegerField
      FieldName = 'REG_creditos'
    end
    object T_numerariosProcesso_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
    object T_numerariosDespesa_Cobrada: TIntegerField
      FieldName = 'Despesa_Cobrada'
    end
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 672
    Top = 652
  end
  object ds_processos: TDataSource
    DataSet = T_processos
    Left = 604
    Top = 652
  end
  object ds_parafat: TDataSource
    DataSet = q_parafat
    Left = 736
    Top = 772
  end
  object ds_tipocre: TDataSource
    DataSet = q_tipocred
    Left = 740
    Top = 716
  end
  object ds_creditos: TDataSource
    DataSet = T_creditos
    Left = 672
    Top = 772
  end
  object ds_tiponum: TDataSource
    DataSet = q_tiponum
    Left = 532
    Top = 708
  end
  object ds_numerarios: TDataSource
    DataSet = T_numerarios
    Left = 600
    Top = 588
  end
  object T_importadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Importador'
    MasterSource = ds_processos
    TableName = 'Importadores'
    Left = 156
    Top = 721
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
    object T_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object T_importadoresPais: TStringField
      FieldName = 'Pais'
      Size = 3
    end
    object T_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object T_importadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 10
    end
    object T_importadoresTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Size = 1
    end
    object T_importadoresEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object T_importadoresNumero: TStringField
      FieldName = 'Numero'
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
    object T_importadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Size = 15
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
    object T_importadoreslink: TStringField
      FieldName = 'link'
      Size = 50
    end
    object T_importadoresCAE: TStringField
      FieldName = 'CAE'
      Size = 15
    end
    object T_importadoresTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object T_importadoresAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object T_importadoresAcesso_WEB_MS: TSmallintField
      FieldName = 'Acesso_WEB_MS'
    end
    object T_importadoresAcesso_WEB_CLI: TSmallintField
      FieldName = 'Acesso_WEB_CLI'
    end
    object T_importadoresAcesso_WEB_REC: TSmallintField
      FieldName = 'Acesso_WEB_REC'
    end
    object T_importadoresBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
    object T_importadoresMOV_REPETRO: TIntegerField
      FieldName = 'MOV_REPETRO'
    end
    object T_importadoresInscricao_Municipal: TStringField
      FieldName = 'Inscricao_Municipal'
      FixedChar = True
      Size = 15
    end
    object T_importadoresEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 80
    end
    object T_importadoresFATURA_ISS: TIntegerField
      FieldName = 'FATURA_ISS'
    end
  end
  object ds_importadores: TDataSource
    DataSet = T_importadores
    Left = 532
    Top = 533
  end
  object Q_valores: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, Faturas.Moeda, TAB_MOEDA.DESCRICAO, Processos_Taxas_Con' +
        'versao.Taxa_conversao, Sum(ItensFaturas.VMLE) AS FOB, Sum(ItensF' +
        'aturas.VMLE*Processos_Taxas_Conversao.Taxa_Conversao) AS FOBREAL' +
        ', Sum(VMLE+((RATEIO_FRETE_PREPAID+RATEIO_FRETE_COLLECT-RATEIO_FR' +
        'ETE_TERNAC)*QUANTIDADE)+(RATEIO_SEGURO*QUANTIDADE)) AS CIF, (Sum' +
        '(VMLE+((RATEIO_FRETE_PREPAID+RATEIO_FRETE_COLLECT-RATEIO_FRETE_T' +
        'ERNAC)*QUANTIDADE)+(RATEIO_SEGURO*QUANTIDADE))*PROCESSOS_TAXAS_C' +
        'ONVERSAO.TAXA_CONVERSAO) AS CIFREAL'
      
        'FROM ((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Fatura =' +
        ' Faturas.Codigo) AND (ItensFaturas.Processo = Faturas.Processo) ' +
        'AND (ItensFaturas.Filial = Faturas.Filial) AND (ItensFaturas.Emp' +
        'resa = Faturas.Empresa)) LEFT JOIN Processos_Taxas_Conversao ON ' +
        '(Faturas.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas.P' +
        'rocesso = Processos_Taxas_Conversao.Processo) AND (Faturas.Filia' +
        'l = Processos_Taxas_Conversao.Filial) AND (Faturas.Empresa = Pro' +
        'cessos_Taxas_Conversao.Empresa)) INNER JOIN TAB_MOEDA ON Faturas' +
        '.Moeda = TAB_MOEDA.CODIGO'
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, Faturas.Moeda, TAB_MOEDA.DESCRICAO, Processos_Taxas_C' +
        'onversao.Taxa_conversao'
      
        'HAVING (((ItensFaturas.Empresa)=:empresa) AND ((ItensFaturas.Fil' +
        'ial)=:filial) AND ((ItensFaturas.Processo)=:processo));')
    Left = 984
    Top = 593
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
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptUnknown
        Value = '00001278'
      end>
    object Q_valoresEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object Q_valoresFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object Q_valoresProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object Q_valoresMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object Q_valoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object Q_valoresTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object Q_valoresFOB: TFloatField
      FieldName = 'FOB'
    end
    object Q_valoresFOBREAL: TFloatField
      FieldName = 'FOBREAL'
    end
    object Q_valoresCIF: TFloatField
      FieldName = 'CIF'
    end
    object Q_valoresCIFREAL: TFloatField
      FieldName = 'CIFREAL'
    end
  end
  object ds_qvalores: TDataSource
    DataSet = Q_valores
    Left = 600
    Top = 533
  end
  object t_obs: TTable
    AutoCalcFields = False
    AfterPost = t_obsAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Observacoes_Processo_Financeiro'
    Left = 244
    Top = 784
    object t_obsEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_obsFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_obsCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object t_obsObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
  end
  object ds_obs: TDataSource
    DataSet = t_obs
    Left = 668
    Top = 532
  end
  object t_conhecimento: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Conhecimento_Processo'
    Left = 224
    Top = 656
    object t_conhecimentoEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_conhecimentoFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_conhecimentoProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_conhecimentoVia: TStringField
      FieldName = 'Via'
      Size = 1
    end
    object t_conhecimentoMultimodal: TSmallintField
      FieldName = 'Multimodal'
    end
    object t_conhecimentoPLaca: TStringField
      FieldName = 'PLaca'
      Size = 15
    end
    object t_conhecimentoLacre: TStringField
      FieldName = 'Lacre'
      Size = 15
    end
    object t_conhecimentoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object t_conhecimentoTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object t_conhecimentoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object t_conhecimentoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object t_conhecimentoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object t_conhecimentoLocal: TStringField
      FieldName = 'Local'
      Size = 50
    end
    object t_conhecimentoData: TDateTimeField
      FieldName = 'Data'
    end
    object t_conhecimentoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Size = 1
    end
    object t_conhecimentoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Size = 1
    end
    object t_conhecimentoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Size = 15
    end
    object t_conhecimentoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Size = 50
    end
    object t_conhecimentoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object t_conhecimentoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object t_conhecimentoAgente: TStringField
      FieldName = 'Agente'
      Size = 30
    end
    object t_conhecimentoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Size = 3
    end
    object t_conhecimentoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object t_conhecimentoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Size = 7
    end
    object t_conhecimentoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object t_conhecimentoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Size = 7
    end
    object t_conhecimentoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Size = 3
    end
    object t_conhecimentoArmazem: TStringField
      FieldName = 'Armazem'
      Size = 30
    end
    object t_conhecimentoOperacao_FUNDAP: TSmallintField
      FieldName = 'Operacao_FUNDAP'
    end
    object t_conhecimentoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Size = 18
    end
    object t_conhecimentoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Size = 3
    end
    object t_conhecimentoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object t_conhecimentoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object t_conhecimentoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object t_conhecimentoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Size = 3
    end
    object t_conhecimentoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object t_conhecimentoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object t_conhecimentoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
    object t_conhecimentoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object t_conhecimentoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object ds_conhecimento: TDataSource
    DataSet = t_conhecimento
    Left = 528
    Top = 652
  end
  object T_doccarga: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'via;codigo'
    MasterFields = 'Via;Tipodoccarga'
    MasterSource = ds_conhecimento
    TableName = 'Tipo_Doc_Carga'
    Left = 228
    Top = 720
    object T_doccargavia: TStringField
      FieldName = 'via'
      Size = 1
    end
    object T_doccargacodigo: TStringField
      FieldName = 'codigo'
      Size = 2
    end
    object T_doccargadescricao: TStringField
      FieldName = 'descricao'
      Size = 25
    end
  end
  object ds_tipodoccarga: TDataSource
    DataSet = T_doccarga
    Left = 604
    Top = 710
  end
  object t_faturas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_processos
    TableName = 'Faturas'
    Left = 376
    Top = 656
    object t_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_faturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_faturasProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_faturasCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 30
    end
    object t_faturasExportador: TStringField
      FieldName = 'Exportador'
      Size = 4
    end
    object t_faturasIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object t_faturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      Size = 1
    end
    object t_faturasCondicao: TStringField
      FieldName = 'Condicao'
      Size = 50
    end
    object t_faturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object t_faturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object t_faturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object t_faturasAcrescimos_Reducoes: TSmallintField
      FieldName = 'Acrescimos_Reducoes'
    end
    object t_faturasMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object t_faturasCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      Size = 1
    end
    object t_faturasMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      Size = 2
    end
    object t_faturasModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      Size = 2
    end
    object t_faturasInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      Size = 2
    end
    object t_faturasTipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      Size = 1
    end
    object t_faturasNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      Size = 3
    end
    object t_faturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      Size = 3
    end
    object t_faturasValor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
    end
    object t_faturasIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      Size = 1
    end
    object t_faturasTaxa_de_Juros: TSmallintField
      FieldName = 'Taxa_de_Juros'
    end
    object t_faturasCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      Size = 4
    end
    object t_faturasValor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
    end
    object t_faturasROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      Size = 8
    end
    object t_faturasPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object t_faturasDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
    end
    object t_faturasDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object t_faturasSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      Size = 1
    end
    object t_faturasCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      Size = 10
    end
    object t_faturasSALDO_CAMBIO: TFloatField
      FieldName = 'SALDO_CAMBIO'
    end
    object t_faturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object t_faturasPeso_Libra: TSmallintField
      FieldName = 'Peso_Libra'
    end
  end
  object ds_faturas: TDataSource
    DataSet = t_faturas
    Left = 672
    Top = 708
  end
  object t_exportadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Exportador'
    MasterSource = ds_faturas
    TableName = 'Exportadores'
    Left = 372
    Top = 720
    object t_exportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_exportadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_exportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object t_exportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object t_exportadoresPais: TStringField
      FieldName = 'Pais'
      Size = 3
    end
    object t_exportadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 18
    end
    object t_exportadoresEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object t_exportadoresNumero: TStringField
      FieldName = 'Numero'
      Size = 6
    end
    object t_exportadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object t_exportadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object t_exportadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object t_exportadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object t_exportadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object t_exportadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object t_exportadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Size = 15
    end
    object t_exportadoresImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
  end
  object ds_exportadores: TDataSource
    DataSet = t_exportadores
    Left = 732
    Top = 580
  end
  object t_docchegada: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'codigo'
    MasterFields = 'Tipomanifesto'
    MasterSource = ds_conhecimento
    TableName = 'Tipo_Doc_Chegada'
    Left = 304
    Top = 656
    object t_docchegadacodigo: TStringField
      FieldName = 'codigo'
      Size = 1
    end
    object t_docchegadadescricao: TStringField
      FieldName = 'descricao'
      Size = 25
    end
  end
  object ds_docchegada: TDataSource
    DataSet = t_docchegada
    Left = 736
    Top = 652
  end
  object q_certif: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Empresa, Tributacao_Item_Fatura.Fi' +
        'lial, Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.Ce' +
        'rtificado_Origem'
      'FROM Tributacao_Item_Fatura'
      
        'WHERE  (Tributacao_Item_Fatura.certificado_origem <>"" and Tribu' +
        'tacao_Item_Fatura.Empresa=:qempresa  AND  Tributacao_Item_Fatura' +
        '.Filial=:qfilial  AND  Tributacao_Item_Fatura.Processo=:qprocess' +
        'o );')
    Left = 980
    Top = 752
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
        Value = '00001136'
      end>
    object q_certifEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Empresa'
      Size = 4
    end
    object q_certifFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Filial'
      Size = 4
    end
    object q_certifProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      Size = 8
    end
    object q_certifCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Certificado_Origem'
      Size = 15
    end
  end
  object ds_qcertif: TDataSource
    DataSet = q_certif
    Left = 668
    Top = 588
  end
  object Q_PSH: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Codigo, Processos.Data, Importadores.Razao_Soci' +
        'al, Tipos_status_processos.DESCRICAO'
      
        'FROM (((Processos LEFT JOIN Numerarios_Processos ON Processos.Co' +
        'digo = Numerarios_Processos.Processo) INNER JOIN Importadores ON' +
        ' (Processos.Empresa = Importadores.Empresa) AND (Processos.Filia' +
        'l = Importadores.Filial) AND (Processos.Importador = Importadore' +
        's.Codigo)) INNER JOIN Tipos_status_processos ON Processos.Status' +
        ' = Tipos_status_processos.CODIGO) INNER JOIN Parametros ON (Proc' +
        'essos.Empresa = Parametros.Empresa) AND (Processos.Filial = Para' +
        'metros.Filial)'
      
        'GROUP BY Processos.Codigo, Processos.Data, Importadores.Razao_So' +
        'cial, Tipos_status_processos.DESCRICAO, Numerarios_Processos.Pro' +
        'cesso, Tipos_status_processos.CODIGO'
      
        'HAVING (((Numerarios_Processos.Processo) Is Null) AND ((Tipos_st' +
        'atus_processos.CODIGO)>="1"))'
      'ORDER BY Processos.Data;')
    Left = 913
    Top = 742
    object Q_PSHCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object Q_PSHData: TDateTimeField
      FieldName = 'Data'
    end
    object Q_PSHRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object Q_PSHDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object ds_qpsh: TDataSource
    DataSet = Q_PSH
    Left = 600
    Top = 768
  end
  object q_tiponum: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Tipos_Numerario.Plano_contas, *'
      'FROM Tipos_Numerario'
      
        'WHERE (((Tipos_Numerario.Plano_contas)="NUM") or ((Tipos_Numerar' +
        'io.Plano_contas)="CPMF"))'
      'ORDER BY Tipos_Numerario.Descricao;')
    Left = 848
    Top = 593
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
  object q_contabil: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Conta' +
        's_Correntes.Filial, Movimentacao_Contas_Correntes.Codigo, Contas' +
        '_Correntes.Descricao AS qconta, Movimentacao_Contas_Correntes.Da' +
        'ta, Movimentacao_Contas_Correntes.Tipo, Tipos_Lancamento_Ccorren' +
        'te.Descricao AS qtipo, Movimentacao_Contas_Correntes.Doc, Movime' +
        'ntacao_Contas_Correntes.Historico, Movimentacao_Contas_Correntes' +
        '.Valor, Movimentacao_Contas_Correntes.Cliente, Importadores.Raza' +
        'o_Social AS qcliente, Movimentacao_Contas_Correntes.Codigo_Mov, ' +
        'Movimentacao_Contas_Correntes.Plano_Contas'
      
        'FROM Parametros INNER JOIN (((Movimentacao_Contas_Correntes LEFT' +
        ' JOIN Contas_Correntes ON (Movimentacao_Contas_Correntes.Codigo ' +
        '= Contas_Correntes.Codigo) AND (Movimentacao_Contas_Correntes.Fi' +
        'lial = Contas_Correntes.Filial) AND (Movimentacao_Contas_Corrent' +
        'es.Empresa = Contas_Correntes.Empresa)) LEFT JOIN Importadores O' +
        'N (Movimentacao_Contas_Correntes.Cliente = Importadores.Codigo) ' +
        'AND (Movimentacao_Contas_Correntes.Filial = Importadores.Filial)' +
        ' AND (Movimentacao_Contas_Correntes.Empresa = Importadores.Empre' +
        'sa)) LEFT JOIN Tipos_Lancamento_Ccorrente ON Movimentacao_Contas' +
        '_Correntes.Tipo = Tipos_Lancamento_Ccorrente.Codigo) ON (Paramet' +
        'ros.Filial = Movimentacao_Contas_Correntes.Filial) AND (Parametr' +
        'os.Empresa = Movimentacao_Contas_Correntes.Empresa)'
      'WHERE (((Movimentacao_Contas_Correntes.Codigo_Mov)=:qmov));')
    Left = 916
    Top = 593
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qmov'
        ParamType = ptUnknown
        Value = 91298
      end>
    object q_contabilEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_contabilFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_contabilCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object q_contabilqconta: TStringField
      FieldName = 'qconta'
      Size = 45
    end
    object q_contabilData: TDateTimeField
      FieldName = 'Data'
    end
    object q_contabilTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object q_contabilqtipo: TStringField
      FieldName = 'qtipo'
      Size = 45
    end
    object q_contabilDoc: TStringField
      FieldName = 'Doc'
      Size = 15
    end
    object q_contabilHistorico: TStringField
      FieldName = 'Historico'
      Size = 255
    end
    object q_contabilValor: TFloatField
      FieldName = 'Valor'
    end
    object q_contabilCliente: TStringField
      FieldName = 'Cliente'
      Size = 4
    end
    object q_contabilqcliente: TStringField
      FieldName = 'qcliente'
      Size = 60
    end
    object q_contabilCodigo_Mov: TAutoIncField
      FieldName = 'Codigo_Mov'
    end
    object q_contabilPlano_Contas: TStringField
      FieldName = 'Plano_Contas'
      Size = 8
    end
  end
  object t_paracon: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Importador;Numerario'
    TableName = 'Parametros_Contabilizacao'
    Left = 24
    Top = 784
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
    Left = 528
    Top = 768
  end
  object T_IMP_PRO: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_importadores
    TableName = 'Importador_Processo_FundoFIXO'
    Left = 436
    Top = 657
    object T_IMP_PROEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_IMP_PROFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_IMP_PROImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_IMP_PROProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
  end
  object ds_t_imp_pro: TDataSource
    DataSet = T_IMP_PRO
    Left = 532
    Top = 589
  end
  object q_incFF: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Numerarios_Processos ( Empresa, Filial, Processo, Nu' +
        'merario, Data_Registro, Valor_Registrado, Valor_Contabilizado, R' +
        'EG_creditos, Processo_FundoFIXO, Detalhe, Contabilizado )'
      
        'SELECT CP.Empresa, CP.Filial, CP.Processo_FundoFIXO, "SB", CP.Da' +
        'ta_Credito, CP.Valor, CP.Valor, CP.REG, CP.Processo, ("Fundo Fix' +
        'o: "+[IMP].Razao_Social) AS QDET, "SIM" AS QCONT'
      
        'FROM (Creditos_Processos AS CP LEFT JOIN Processos AS P ON (CP.P' +
        'rocesso = P.Codigo) AND (CP.Filial = P.Filial) AND (CP.Empresa =' +
        ' P.Empresa)) LEFT JOIN Importadores AS IMP ON (P.Importador = [I' +
        'MP].Codigo) AND (P.Filial = [IMP].Filial) AND (P.Empresa = [IMP]' +
        '.Empresa)'
      'WHERE (((CP.REG)=:QREG));')
    Left = 1048
    Top = 588
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QREG'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object q_excFF: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM Numerarios_Processos'
      'WHERE (((Numerarios_Processos.REG_creditos)=:qreg));')
    Left = 984
    Top = 676
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QREG'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object t_sal: TTable
    AutoCalcFields = False
    AfterInsert = T_creditosAfterEdit
    AfterEdit = T_creditosAfterEdit
    BeforePost = T_creditosBeforePost
    AfterPost = T_creditosAfterPost
    BeforeDelete = T_creditosBeforeDelete
    AfterScroll = T_creditosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Data_Vigencia'
    TableName = 'Salarios_Minimos'
    Left = 24
    Top = 720
    object t_salData_Vigencia: TDateTimeField
      FieldName = 'Data_Vigencia'
    end
    object t_salValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object t_proconv: TTable
    AutoCalcFields = False
    AfterInsert = T_creditosAfterEdit
    AfterEdit = T_creditosAfterEdit
    BeforePost = T_creditosBeforePost
    AfterPost = T_creditosAfterPost
    BeforeDelete = T_creditosBeforeDelete
    AfterScroll = T_creditosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Moeda'
    TableName = 'Processos_Taxas_Conversao'
    Left = 24
    Top = 656
    object t_proconvEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_proconvFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_proconvProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_proconvMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object t_proconvTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object t_proconvTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
  end
  object qTXBC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Numerarios_Processos.*'
      'FROM Numerarios_Processos'
      'WHERE (((Numerarios_Processos.Docsis)=:qdoc));')
    Left = 1048
    Top = 756
    ParamData = <
      item
        DataType = ftString
        Name = 'qdoc'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qTXBCEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qTXBCFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Filial'
      FixedChar = True
      Size = 4
    end
    object qTXBCProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      FixedChar = True
      Size = 8
    end
    object qTXBCREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.REG'
    end
    object qTXBCNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      FixedChar = True
      Size = 4
    end
    object qTXBCUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object qTXBCData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Previsao'
    end
    object qTXBCValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Previsao'
    end
    object qTXBCPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object qTXBCOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object qTXBCUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object qTXBCData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Registro'
    end
    object qTXBCValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Registrado'
    end
    object qTXBCValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
    object qTXBCContabilizado: TStringField
      FieldName = 'Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Contabilizado'
      FixedChar = True
      Size = 3
    end
    object qTXBCUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object qTXBCConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Conta_Corrente'
    end
    object qTXBCCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Codigo_mov'
    end
    object qTXBCImpdemfim: TStringField
      FieldName = 'Impdemfim'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Impdemfim'
      FixedChar = True
      Size = 3
    end
    object qTXBCDetalhe: TStringField
      FieldName = 'Detalhe'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Detalhe'
      FixedChar = True
      Size = 50
    end
    object qTXBCDocsis: TStringField
      FieldName = 'Docsis'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Docsis'
      FixedChar = True
      Size = 15
    end
    object qTXBCFatura_mov: TStringField
      FieldName = 'Fatura_mov'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object qTXBCFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Fornecedor'
      FixedChar = True
      Size = 4
    end
    object qTXBCCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Codigo'
      FixedChar = True
      Size = 15
    end
    object qTXBCContabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Contabilizado_cliente'
    end
    object qTXBCREG_creditos: TIntegerField
      FieldName = 'REG_creditos'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.REG_creditos'
    end
    object qTXBCProcesso_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
  end
  object qTXBCexclui: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM Numerarios_Processos'
      'WHERE (((Numerarios_Processos.Docsis)=:qdoc));')
    Left = 912
    Top = 668
    ParamData = <
      item
        DataType = ftString
        Name = 'qdoc'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_tipocred: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Codigo,descricao from tipos_creditos'
      'order by descricao')
    Left = 848
    Top = 737
    object q_tipocredCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object q_tipocreddescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 50
    end
  end
  object q_parafat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Parametros_Faturamento'
      'where Importador=:qimp and ativo=1'
      'order by Tipo_Processo, Tipo_Declaracao, reg')
    Left = 848
    Top = 665
    ParamData = <
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '2'
      end>
    object q_parafatEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_parafatFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Filial'
      FixedChar = True
      Size = 4
    end
    object q_parafatImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Importador'
      FixedChar = True
      Size = 4
    end
    object q_parafatTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Tipo_Processo'
      FixedChar = True
      Size = 2
    end
    object q_parafatReg: TAutoIncField
      FieldName = 'Reg'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Reg'
    end
    object q_parafatBase_faturamento: TStringField
      FieldName = 'Base_faturamento'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Base_faturamento'
      FixedChar = True
      Size = 3
    end
    object q_parafatValor_fixo: TFloatField
      FieldName = 'Valor_fixo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_fixo'
    end
    object q_parafatPercentual: TFloatField
      FieldName = 'Percentual'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Percentual'
    end
    object q_parafatFaixa_Real_Dolar: TStringField
      FieldName = 'Faixa_Real_Dolar'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Faixa_Real_Dolar'
      FixedChar = True
      Size = 10
    end
    object q_parafatFaixa_inicial: TFloatField
      FieldName = 'Faixa_inicial'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Faixa_inicial'
    end
    object q_parafatFaixa_final: TFloatField
      FieldName = 'Faixa_final'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Faixa_final'
    end
    object q_parafatValor_minimo: TFloatField
      FieldName = 'Valor_minimo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_minimo'
    end
    object q_parafatValor_maximo: TFloatField
      FieldName = 'Valor_maximo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_maximo'
    end
    object q_parafatValor_fixoc: TFloatField
      FieldName = 'Valor_fixoc'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_fixoc'
    end
    object q_parafatE_Salario_Minimo: TStringField
      FieldName = 'E_Salario_Minimo'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.E_Salario_Minimo'
      FixedChar = True
      Size = 3
    end
    object q_parafatQuantidade_Salarios: TFloatField
      FieldName = 'Quantidade_Salarios'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Quantidade_Salarios'
    end
    object q_parafatData_Referencia_SM: TStringField
      FieldName = 'Data_Referencia_SM'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Data_Referencia_SM'
      FixedChar = True
      Size = 50
    end
    object q_parafatQuantidade_SalariosMAX: TFloatField
      FieldName = 'Quantidade_SalariosMAX'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Quantidade_SalariosMAX'
    end
    object q_parafatE_Salario_Minimo_TX: TStringField
      FieldName = 'E_Salario_Minimo_TX'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.E_Salario_Minimo_TX'
      FixedChar = True
      Size = 3
    end
    object q_parafatValor_taxaexpediente: TFloatField
      FieldName = 'Valor_taxaexpediente'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_taxaexpediente'
    end
    object q_parafatValor_LI: TFloatField
      FieldName = 'Valor_LI'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_LI'
    end
    object q_parafatValor_DTA1: TFloatField
      FieldName = 'Valor_DTA1'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Valor_DTA1'
    end
    object q_parafatQTD_SM_TAXAEXP: TFloatField
      FieldName = 'QTD_SM_TAXAEXP'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.QTD_SM_TAXAEXP'
    end
    object q_parafatQTD_SM_DTA1: TFloatField
      FieldName = 'QTD_SM_DTA1'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.QTD_SM_DTA1'
    end
    object q_parafatQTD_SM_LI: TFloatField
      FieldName = 'QTD_SM_LI'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.QTD_SM_LI'
    end
    object q_parafatData_Referencia_SM_TX: TStringField
      FieldName = 'Data_Referencia_SM_TX'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.Data_Referencia_SM_TX'
      FixedChar = True
      Size = 50
    end
    object q_parafatATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'DBNMSCOMEX.Parametros_Faturamento.ATIVO'
    end
    object q_parafatTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
  end
  object q_propro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select codigo,importador,saldo_faturamento from processos where ' +
        'importador = :vimp')
    Left = 1048
    Top = 680
    ParamData = <
      item
        DataType = ftString
        Name = 'vimp'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_proprocodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 8
    end
    object q_proproimportador: TStringField
      FieldName = 'importador'
      FixedChar = True
      Size = 4
    end
    object q_proprosaldo_faturamento: TFloatField
      FieldName = 'saldo_faturamento'
    end
  end
  object t_locais: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Local'
    MasterFields = 'Empresa;Filial;Importador;Contrato;Local_Inventario'
    TableName = 'Locais_Inventario'
    Left = 298
    Top = 720
    object t_locaisEmpresa: TStringField
      FieldName = 'Empresa'
    end
    object t_locaisFilial: TStringField
      FieldName = 'Filial'
    end
    object t_locaisImportador: TStringField
      FieldName = 'Importador'
    end
    object t_locaisContrato: TStringField
      FieldName = 'Contrato'
    end
    object t_locaisLocal: TStringField
      FieldName = 'Local'
    end
    object t_locaisDescricao: TStringField
      FieldName = 'Descricao'
    end
    object t_locaisCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
    end
  end
  object qCancelaProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update PROCESSOS set Status = 4 where Codigo =:pProcesso')
    Left = 1136
    Top = 587
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
  end
end
