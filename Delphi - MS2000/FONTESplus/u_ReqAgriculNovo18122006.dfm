object frmReqAgriculNovo18122006: TfrmReqAgriculNovo18122006
  Left = 214
  Top = 67
  BorderStyle = bsSingle
  Caption = 'Requerimento de Agricultura'
  ClientHeight = 713
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label38: TLabel
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
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 33
    Width = 664
    Height = 680
    HorzScrollBar.Range = 657
    VertScrollBar.Range = 630
    Align = alClient
    AutoScroll = False
    BorderStyle = bsNone
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label21: TLabel
      Left = 328
      Top = 590
      Width = 239
      Height = 16
      Caption = 'Identificação e assinatura do requerente'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object dbTxtReg: TDBText
      Left = 448
      Top = 608
      Width = 65
      Height = 13
      DataField = 'Registro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 400
      Top = 608
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
    object Label1: TLabel
      Left = 7
      Top = 3
      Width = 606
      Height = 16
      Caption = 
        'REQUERIMENTO PARA FISCALIZAÇÃO DE EMBALAGENS E SUPORTES DE MADEI' +
        'RA'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 283
      Top = 26
      Width = 339
      Height = 16
      Caption = 'PROTOCOLO Nº________________________        '
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 58
      Width = 350
      Height = 16
      Caption = 'Sr. Chefe do SVA/UVAGRO - _________________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 360
      Top = 58
      Width = 252
      Height = 16
      Caption = ', com base na Instrução Normativa SDA nº'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 8
      Top = 82
      Width = 564
      Height = 16
      Caption = 
        '_____________, vimos requerer à Vossa Senhoria a inspeção do mat' +
        'erial discriminado abaixo:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 169
      Top = 109
      Width = 100
      Height = 16
      Caption = 'IMPORTAÇÃO'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 345
      Top = 109
      Width = 103
      Height = 16
      Caption = 'EXPORTAÇÃO'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 9
      Top = 133
      Width = 323
      Height = 16
      Caption = '1) Informações sobre o importador/exportador:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 8
      Top = 159
      Width = 396
      Height = 16
      Caption = 'Importador/exportador:_____________________________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 398
      Top = 159
      Width = 208
      Height = 16
      Caption = 'Cadastro n.____________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 9
      Top = 179
      Width = 269
      Height = 16
      Caption = 'CNPJ:_________________________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 275
      Top = 179
      Width = 335
      Height = 16
      Caption = 'Endereço:_______________________________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 8
      Top = 198
      Width = 605
      Height = 16
      Caption = 
        '_____________________________Fone:______________ Cidade:________' +
        '_______________ UF:_____'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 9
      Top = 222
      Width = 425
      Height = 16
      Caption = '2) Informações sobre a partida importada ou a ser exportada:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 4
      Top = 239
      Width = 583
      Height = 16
      Caption = 
        'Tipos de mercadorias(s) constante(s) da partida e acondicionada(' +
        's) em embalagem de madeira :'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 7
      Top = 279
      Width = 613
      Height = 16
      Caption = 
        'País de origem/destino:______________________________Meio de Tra' +
        'nsporte:____________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 6
      Top = 301
      Width = 609
      Height = 16
      Caption = 
        'Local de armazenagem:____________________________________Bancada' +
        ':______________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 12
      Top = 327
      Width = 246
      Height = 16
      Caption = '3) Características das embalagens:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 31
      Top = 351
      Width = 210
      Height = 16
      Caption = 'Caixa/engradado de madeira bruta'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 31
      Top = 371
      Width = 109
      Height = 16
      Caption = 'Madeira de Estiva'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 31
      Top = 392
      Width = 127
      Height = 16
      Caption = 'Madeira Processada'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 197
      Top = 392
      Width = 39
      Height = 16
      Caption = 'Outros'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 269
      Top = 352
      Width = 317
      Height = 16
      Caption = 'Suporte de madeira para transporte(paletes) e outros'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 269
      Top = 368
      Width = 317
      Height = 16
      Caption = 'Suporte de madeira para transporte(paletes) e outros'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 12
      Top = 418
      Width = 180
      Height = 16
      Caption = '4) Documentos anexados:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 381
      Top = 392
      Width = 23
      Height = 16
      Caption = 'MB'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 437
      Top = 392
      Width = 22
      Height = 16
      Caption = 'HT'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 493
      Top = 392
      Width = 47
      Height = 16
      Caption = 'KD-HT'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 29
      Top = 501
      Width = 39
      Height = 16
      Caption = 'Outros'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label32: TLabel
      Left = 29
      Top = 448
      Width = 260
      Height = 16
      Caption = 'Cópia do BL / AWB / MIC-DTA nº / CRTC nº:'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 29
      Top = 482
      Width = 552
      Height = 16
      Caption = 
        'Original do Certificado Fitossanitário (com Declaração Adicional' +
        ' de tratamento), se requerido'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 29
      Top = 465
      Width = 535
      Height = 16
      Caption = 
        'Original do Certificado de Tratamento (chancelado pela ONPF - im' +
        'portação), se requerido'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 9
      Top = 537
      Width = 339
      Height = 16
      Caption = '__________________________,______________________'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 69
      Top = 553
      Width = 41
      Height = 16
      Caption = '(Local)'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 241
      Top = 553
      Width = 37
      Height = 16
      Caption = '(Data)'
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object cbimportacao: TCheckBox
      Left = 152
      Top = 108
      Width = 17
      Height = 17
      TabOrder = 1
      OnClick = cbimportacaoClick
    end
    object dbLcbProcurador: TDBLookupComboBox
      Left = 288
      Top = 568
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
      TabOrder = 2
    end
    object edtchefe: TEdit
      Left = 184
      Top = 53
      Width = 175
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtprotocolo: TEdit
      Left = 407
      Top = 22
      Width = 161
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object cbexportacao: TCheckBox
      Left = 329
      Top = 108
      Width = 17
      Height = 17
      TabOrder = 4
      OnClick = cbimportacaoClick
    end
    object edtSDA: TEdit
      Left = 10
      Top = 78
      Width = 88
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtimportador: TEdit
      Left = 146
      Top = 156
      Width = 249
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtcadastro: TEdit
      Left = 471
      Top = 156
      Width = 135
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtCNPJ: TEdit
      Left = 47
      Top = 176
      Width = 226
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtEND1: TEdit
      Left = 343
      Top = 176
      Width = 266
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtEND2: TEdit
      Left = 10
      Top = 195
      Width = 200
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtFONE: TEdit
      Left = 246
      Top = 195
      Width = 98
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtCIDADE: TEdit
      Left = 393
      Top = 195
      Width = 161
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtUF: TEdit
      Left = 578
      Top = 195
      Width = 31
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtTIPO: TEdit
      Left = 7
      Top = 256
      Width = 602
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtPAIS: TEdit
      Left = 151
      Top = 275
      Width = 208
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtMEIO: TEdit
      Left = 479
      Top = 275
      Width = 131
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtLOCAL: TEdit
      Left = 151
      Top = 296
      Width = 252
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtBANCADA: TEdit
      Left = 463
      Top = 296
      Width = 143
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object cbBRUTA: TCheckBox
      Left = 11
      Top = 351
      Width = 17
      Height = 17
      TabOrder = 19
      OnClick = cbimportacaoClick
    end
    object cbESTIVA: TCheckBox
      Left = 11
      Top = 371
      Width = 17
      Height = 17
      TabOrder = 20
      OnClick = cbimportacaoClick
    end
    object cbPROCESSADA: TCheckBox
      Left = 11
      Top = 391
      Width = 17
      Height = 17
      TabOrder = 21
      OnClick = cbimportacaoClick
    end
    object cbOUTROS: TCheckBox
      Left = 179
      Top = 390
      Width = 17
      Height = 17
      TabOrder = 22
      OnClick = cbimportacaoClick
    end
    object cbPALETES: TCheckBox
      Left = 252
      Top = 351
      Width = 17
      Height = 17
      TabOrder = 23
      OnClick = cbimportacaoClick
    end
    object cbINTERNACIONAL: TCheckBox
      Left = 252
      Top = 370
      Width = 17
      Height = 17
      TabOrder = 24
      OnClick = cbimportacaoClick
    end
    object cbMB: TCheckBox
      Left = 364
      Top = 391
      Width = 17
      Height = 17
      TabOrder = 25
      OnClick = cbimportacaoClick
    end
    object cbHT: TCheckBox
      Left = 420
      Top = 391
      Width = 17
      Height = 17
      TabOrder = 26
      OnClick = cbimportacaoClick
    end
    object cbKD: TCheckBox
      Left = 476
      Top = 391
      Width = 17
      Height = 17
      TabOrder = 27
      OnClick = cbimportacaoClick
    end
    object cbCOPIA: TCheckBox
      Left = 12
      Top = 446
      Width = 17
      Height = 17
      TabOrder = 28
      OnClick = cbimportacaoClick
    end
    object cbONPF: TCheckBox
      Left = 12
      Top = 464
      Width = 17
      Height = 17
      TabOrder = 29
      OnClick = cbimportacaoClick
    end
    object cbORIGINAL: TCheckBox
      Left = 12
      Top = 482
      Width = 17
      Height = 17
      TabOrder = 30
      OnClick = cbimportacaoClick
    end
    object edtLocal2: TEdit
      Left = 10
      Top = 531
      Width = 178
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtDATA: TEdit
      Left = 194
      Top = 531
      Width = 151
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtOUTROS: TEdit
      Left = 74
      Top = 500
      Width = 536
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 33
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object edtconhecimento: TEdit
      Left = 293
      Top = 446
      Width = 324
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      OnEnter = edtchefeEnter
      OnExit = edtchefeExit
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 642
      Width = 664
      Height = 38
      Align = alBottom
      Color = 10514464
      TabOrder = 35
      object btnIncluir: TBitBtn
        Left = 13
        Top = 7
        Width = 75
        Height = 25
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
      object btnSair: TBitBtn
        Left = 566
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
        TabOrder = 1
        OnClick = btnSairClick
        Kind = bkClose
      end
    end
  end
  object alAcoes: TActionList
    Left = 176
    object acAtualizarCampos: TAction
      Caption = 'acAtualizarCampos'
      OnExecute = acAtualizarCamposExecute
    end
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
        'ccarga, TDC.descricao, CP.Numerodoccarga, CP.Numeromaster, CP.Em' +
        'barcacao, CP.URF_chegada, TU.DESCRICAO, CP.Data_Chegada_URF_Cheg' +
        ', AP.CodArmazem, AP.Nome_Armazem, P.Valor_FOB, PTC.Taxa_conversa' +
        'o, CP.Via'
      
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
      'WHERE  P.Codigo = :proc')
    Left = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
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
    object qrLocProcNumeromaster: TStringField
      FieldName = 'Numeromaster'
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
    Left = 240
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
  object dsProcurador: TDataSource
    DataSet = qrProcurador
    Left = 200
    Top = 32
  end
end
