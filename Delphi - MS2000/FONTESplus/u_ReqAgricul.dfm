object frmReqAgricul: TfrmReqAgricul
  Left = 25
  Top = 68
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Requerimento de Agricultura'
  ClientHeight = 690
  ClientWidth = 1346
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 33
    Width = 1346
    Height = 657
    Align = alClient
    BorderStyle = bsNone
    Color = 10514464
    ParentColor = False
    TabOrder = 0
    Visible = False
    object Bevel3: TBevel
      Left = 672
      Top = 306
      Width = 658
      Height = 165
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 8
      Top = 307
      Width = 657
      Height = 163
      Shape = bsFrame
      Style = bsRaised
    end
    object Label1: TLabel
      Left = 8
      Top = 172
      Width = 86
      Height = 13
      Caption = '1) País de Origen:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 244
      Width = 65
      Height = 13
      Caption = '3) Importador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 268
      Width = 49
      Height = 13
      Caption = 'Endereço:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 196
      Width = 66
      Height = 13
      Caption = '2) Exportador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 220
      Width = 49
      Height = 13
      Caption = 'Endereço:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 260
      Top = 292
      Width = 155
      Height = 13
      Alignment = taCenter
      Caption = 'DESCRIÇÃO DA MERCADORIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 317
      Width = 180
      Height = 13
      Caption = '4) Número e descrição da mercadoria:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 344
      Top = 317
      Width = 82
      Height = 13
      Caption = '5) Marca / Lotes:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 16
      Top = 352
      Width = 148
      Height = 13
      Caption = '6) Nome (Botânico) do produto:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 344
      Top = 353
      Width = 155
      Height = 13
      Caption = '7) Quantidade declarada / Peso:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 16
      Top = 384
      Width = 145
      Height = 13
      Caption = '8) Local da Produção (origem):'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 16
      Top = 423
      Width = 139
      Height = 13
      Caption = '10) Meio de Transporte VOO:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 344
      Top = 423
      Width = 96
      Height = 13
      Caption = '11) Ponto de Saída:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 344
      Top = 386
      Width = 101
      Height = 13
      Caption = '9) Ponto de Ingresso:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 336
      Top = 309
      Width = 3
      Height = 159
      Shape = bsLeftLine
    end
    object Label15: TLabel
      Left = 672
      Top = 290
      Width = 92
      Height = 13
      Caption = 'Outras Informações'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 680
      Top = 314
      Width = 128
      Height = 13
      Caption = 'Valor da Mercadoria (FOB):'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 680
      Top = 346
      Width = 136
      Height = 13
      Caption = 'Nomenclatura Internacional :'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 1008
      Top = 314
      Width = 114
      Height = 13
      Caption = 'Local de Armazenagem:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 1008
      Top = 346
      Width = 93
      Height = 13
      Caption = 'Data da Atracação:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 680
      Top = 394
      Width = 76
      Height = 13
      Caption = 'OBSERVAÇÃO:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 1000
      Top = 306
      Width = 677
      Height = 81
      Anchors = [akLeft, akTop, akRight]
      Shape = bsLeftLine
    end
    object Bevel5: TBevel
      Left = 672
      Top = 386
      Width = 657
      Height = 3
      Shape = bsTopLine
    end
    object Label21: TLabel
      Left = 8
      Top = 556
      Width = 132
      Height = 13
      Caption = 'REPRESENTANTE LEGAL'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object dbTxtReg: TDBText
      Left = 56
      Top = 600
      Width = 65
      Height = 13
      DataField = 'Registro'
      DataSource = dsProcurador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 8
      Top = 599
      Width = 42
      Height = 13
      Caption = 'Registro:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 8
      Top = 148
      Width = 98
      Height = 13
      Caption = 'Cadastro na unidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtCmp3: TRichEdit
      Left = 8
      Top = 56
      Width = 1331
      Height = 82
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        
          #9'Solicitamos o exame, bem como o fornecimento de anuência refere' +
          'nte a portaria Interministerial Nr.499, para a(s) embalagens, ca' +
          'ixas, escoras de madeira, etc., conforme descrição abaixo.')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
      WantTabs = True
      WordWrap = False
      OnChange = edtCmp3Change
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp1: TEdit
      Left = 8
      Top = 8
      Width = 121
      Height = 14
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 0
      Text = 'Ao Senhor Chefe'
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp2: TEdit
      Left = 8
      Top = 32
      Width = 1331
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'VIGIAGRO AEROPORTO DO RIO DE JANEIRO'
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp4: TEdit
      Left = 104
      Top = 172
      Width = 233
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 4
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp5: TEdit
      Left = 80
      Top = 244
      Width = 1259
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 7
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp6: TEdit
      Left = 80
      Top = 268
      Width = 1259
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 8
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp8: TEdit
      Left = 80
      Top = 196
      Width = 1259
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 5
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp9: TEdit
      Left = 80
      Top = 220
      Width = 1259
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 6
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp7: TEdit
      Left = 112
      Top = 148
      Width = 1227
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 3
      Text = 'VIGIAGRO/AEROPORTO DO RIO DE JANEIRO nr.__________'
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp10: TEdit
      Left = 24
      Top = 333
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 9
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp11: TEdit
      Left = 352
      Top = 335
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 10
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp12: TEdit
      Left = 24
      Top = 368
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 11
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp13: TEdit
      Left = 352
      Top = 370
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 12
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp14: TEdit
      Left = 24
      Top = 402
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 13
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp17: TEdit
      Left = 24
      Top = 441
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 16
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp18: TEdit
      Left = 352
      Top = 439
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 17
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp15: TEdit
      Left = 352
      Top = 403
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 14
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp19: TEdit
      Left = 688
      Top = 330
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 18
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp21: TEdit
      Left = 688
      Top = 362
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 20
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp20: TEdit
      Left = 1016
      Top = 330
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 19
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp22: TEdit
      Left = 1016
      Top = 362
      Width = 305
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 21
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp23: TRichEdit
      Left = 688
      Top = 410
      Width = 633
      Height = 51
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 22
      WantTabs = True
      WordWrap = False
      OnChange = edtCmp3Change
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp24: TRichEdit
      Left = 8
      Top = 481
      Width = 1331
      Height = 71
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        
          #9'Declaramos conhecer os Procedimentos da VIGILANCIA AGROPECUÁRIA' +
          ', estando ciente que deveremos solicitar a fiscalização e coleta' +
          ' de amostras quando a mercadoria já estiver em condições de ser ' +
          'inspecionada.')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 23
      WantTabs = True
      WordWrap = False
      OnChange = edtCmp3Change
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object dbLcbProcurador: TDBLookupComboBox
      Left = 8
      Top = 572
      Width = 329
      Height = 21
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsProcurador
      ParentFont = False
      TabOrder = 24
    end
    object edtCmp16: TEdit
      Left = 160
      Top = 423
      Width = 169
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 15
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 619
      Width = 1346
      Height = 38
      Align = alBottom
      Color = 10514464
      TabOrder = 25
      object btnSair: TBitBtn
        Left = 1254
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnSairClick
        Kind = bkClose
      end
      object btnIncluir: TBitBtn
        Left = 13
        Top = 8
        Width = 75
        Height = 24
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1346
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 1
    object Label24: TLabel
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
  end
  object alAcoes: TActionList
    Left = 136
    object acAtualizarCampos: TAction
      Caption = 'acAtualizarCampos'
      OnExecute = acAtualizarCamposExecute
    end
  end
  object dsProcurador: TDataSource
    DataSet = qrProcurador
    Left = 200
    Top = 32
  end
  object qrLocProc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT DISTINCT P.Codigo, P.Data, P.Codigo_Cliente, I.Razao_Soci' +
        'al, I.CNPJ_CPF_COMPLETO, CP.Pais_Procedencia, TP.DESCRICAO, I.En' +
        'dereco, I.Numero, I.Complemento, I.Bairro, I.Cidade, I.UF, F.Exp' +
        'ortador, [E].Razao_Social, [E].Endereco, [E].Numero, [E].Complem' +
        'ento, [E].Bairro, [E].Cidade, [E].UF, EP.TipoEmbalagem, EP.Descr' +
        'icaoEmbalagem, EP.Quantidade, CP.Peso_Bruto, CP.Local, CP.Tipodo' +
        'ccarga, TDC.descricao, CP.Numerodoccarga, CP.Embarcacao, CP.URF_' +
        'chegada, TU.DESCRICAO, CP.Data_Chegada_URF_Cheg, AP.CodArmazem, ' +
        'AP.Nome_Armazem, P.Valor_FOB, PTC.Taxa_conversao, CP.Via'
      
        'FROM (((((((((Processos AS P INNER JOIN Importadores AS I ON (P.' +
        'Importador = I.Codigo) AND (P.Filial = I.Filial) AND (P.Empresa ' +
        '= I.Empresa)) LEFT JOIN Conhecimento_Processo AS CP ON (P.Empres' +
        'a = CP.Empresa) AND (P.Filial = CP.Filial) AND (P.Codigo = CP.Pr' +
        'ocesso)) LEFT JOIN TAB_PAIS AS TP ON CP.Pais_Procedencia = TP.CO' +
        'DIGO) LEFT JOIN Faturas AS F ON (P.Empresa = F.Empresa) AND (P.F' +
        'ilial = F.Filial) AND (P.Codigo = F.Processo)) LEFT JOIN Exporta' +
        'dores AS E ON (F.Empresa = [E].Empresa) AND (F.Filial = [E].Fili' +
        'al) AND (F.Exportador = [E].Codigo)) LEFT JOIN Embalagem_Process' +
        'o AS EP ON (P.Codigo = EP.Processo) AND (P.Filial = EP.Filial) A' +
        'ND (P.Empresa = EP.Empresa)) LEFT JOIN Armazem_Processo AS AP ON' +
        ' (P.Empresa = AP.Empresa) AND (P.Filial = AP.Filial) AND (P.Codi' +
        'go = AP.Processo)) LEFT JOIN Processos_Taxas_Conversao AS PTC ON' +
        ' (P.Empresa = PTC.Empresa) AND (P.Filial = PTC.Filial) AND (P.Co' +
        'digo = PTC.Processo)) LEFT JOIN Tipo_Doc_Carga AS TDC ON (CP.Tip' +
        'odoccarga = TDC.codigo) AND (CP.Via = TDC.via)) LEFT JOIN TAB_UR' +
        'F AS TU ON CP.URF_chegada = TU.CODIGO'
      'WHERE  P.Codigo = :Processo')
    Left = 168
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qrLocProcCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrLocProcData: TDateTimeField
      FieldName = 'Data'
    end
    object qrLocProcCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
    object qrLocProcRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrLocProcCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object qrLocProcPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      FixedChar = True
      Size = 3
    end
    object qrLocProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object qrLocProcEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object qrLocProcNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object qrLocProcComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object qrLocProcBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object qrLocProcCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object qrLocProcUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qrLocProcExportador: TStringField
      FieldName = 'Exportador'
      FixedChar = True
      Size = 4
    end
    object qrLocProcRazao_Social_1: TStringField
      FieldName = 'Razao_Social_1'
      FixedChar = True
      Size = 60
    end
    object qrLocProcEndereco_1: TStringField
      FieldName = 'Endereco_1'
      FixedChar = True
      Size = 40
    end
    object qrLocProcNumero_1: TStringField
      FieldName = 'Numero_1'
      FixedChar = True
      Size = 6
    end
    object qrLocProcComplemento_1: TStringField
      FieldName = 'Complemento_1'
      FixedChar = True
      Size = 21
    end
    object qrLocProcBairro_1: TStringField
      FieldName = 'Bairro_1'
      FixedChar = True
      Size = 25
    end
    object qrLocProcCidade_1: TStringField
      FieldName = 'Cidade_1'
      FixedChar = True
      Size = 25
    end
    object qrLocProcUF_1: TStringField
      FieldName = 'UF_1'
      FixedChar = True
      Size = 2
    end
    object qrLocProcTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      FixedChar = True
      Size = 2
    end
    object qrLocProcDescricaoEmbalagem: TStringField
      FieldName = 'DescricaoEmbalagem'
      FixedChar = True
      Size = 50
    end
    object qrLocProcQuantidade: TStringField
      FieldName = 'Quantidade'
      FixedChar = True
      Size = 5
    end
    object qrLocProcPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object qrLocProcLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 50
    end
    object qrLocProcTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      FixedChar = True
      Size = 2
    end
    object qrLocProcdescricao_1: TStringField
      FieldName = 'descricao_1'
      FixedChar = True
      Size = 25
    end
    object qrLocProcNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object qrLocProcEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object qrLocProcURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object qrLocProcDESCRICAO_2: TStringField
      FieldName = 'DESCRICAO_2'
      FixedChar = True
      Size = 120
    end
    object qrLocProcData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrLocProcCodArmazem: TStringField
      FieldName = 'CodArmazem'
      FixedChar = True
      Size = 3
    end
    object qrLocProcNome_Armazem: TStringField
      FieldName = 'Nome_Armazem'
      FixedChar = True
      Size = 50
    end
    object qrLocProcValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object qrLocProcTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object qrLocProcVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
  end
  object qrProcurador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, [Razao_Social], Registro'
      'FROM Procuradores'
      'ORDER BY [Razao_Social]')
    Left = 224
    Top = 120
    object qrProcuradorCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrProcuradorRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrProcuradorRegistro: TStringField
      FieldName = 'Registro'
      FixedChar = True
      Size = 15
    end
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Cidade'
      
        'FROM Parametros AS P INNER JOIN Filiais AS F ON P.Filial = F.Cod' +
        'igo_Filial AND P.Empresa = F.Codigo_Empresa')
    Left = 104
    Top = 80
    object qrParamEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros.Empresa'
      Size = 4
    end
    object qrParamFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros.Filial'
      Size = 4
    end
    object qrParamCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Filiais.Cidade'
      Size = 25
    end
  end
end
