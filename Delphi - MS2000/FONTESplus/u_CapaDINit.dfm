object frmCapaDINit: TfrmCapaDINit
  Left = 201
  Top = 157
  BorderStyle = bsSingle
  Caption = 'Capa DI Niterói'
  ClientHeight = 491
  ClientWidth = 748
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
    Width = 753
    Height = 458
    HorzScrollBar.Range = 657
    VertScrollBar.Range = 450
    AutoScroll = False
    Color = 10514464
    ParentColor = False
    TabOrder = 0
    Visible = False
    object Bevel2: TBevel
      Left = 8
      Top = 197
      Width = 657
      Height = 132
      Shape = bsFrame
      Style = bsRaised
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 14
      Height = 13
      Caption = 'DI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 53
      Height = 13
      Caption = 'Importador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 176
      Width = 282
      Height = 13
      Alignment = taCenter
      Caption = 'Para tanto, anexamos à presente os seguintes documentos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 336
      Top = 197
      Width = 3
      Height = 131
      Shape = bsLeftLine
    end
    object Label21: TLabel
      Left = 8
      Top = 346
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
      Top = 384
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
      Top = 384
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
    object edtCmp4: TRichEdit
      Left = 8
      Top = 80
      Width = 734
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
        
          #9'Vimos, por intermédio desta, solicitara V. Sa. a emissão do com' +
          'provante de importação referente à D.I. em epigrafe. '
        ' ')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 3
      WantTabs = True
      WordWrap = False
      OnChange = edtCmp4Change
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp3: TEdit
      Left = 8
      Top = 56
      Width = 121
      Height = 14
      AutoSize = False
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 2
      Text = 'Ao Senhor Chefe'
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp1: TEdit
      Left = 64
      Top = 8
      Width = 129
      Height = 14
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 0
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object edtCmp2: TEdit
      Left = 64
      Top = 32
      Width = 678
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = 14680063
      TabOrder = 1
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object dbLcbProcurador: TDBLookupComboBox
      Left = 8
      Top = 360
      Width = 329
      Height = 21
      Color = 14680063
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = dsProcurador
      TabOrder = 14
      OnEnter = edtCmp1Enter
      OnExit = edtCmp1Exit
    end
    object cbCmp1: TCheckBox
      Left = 16
      Top = 208
      Width = 313
      Height = 17
      Caption = 'EXTRATO DA DECLARAÇÃO DE IMPORTAÇÃO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object cbCmp2: TCheckBox
      Left = 344
      Top = 208
      Width = 313
      Height = 17
      Caption = 'AVERBAÇÃO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object cbCmp3: TCheckBox
      Left = 16
      Top = 232
      Width = 313
      Height = 17
      Caption = 'BL / AWB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object cbCmp4: TCheckBox
      Left = 344
      Top = 232
      Width = 313
      Height = 17
      Caption = 'CERTIFICADO DE INSPEÇÃO DE SAÚDE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object cbCmp5: TCheckBox
      Left = 16
      Top = 256
      Width = 313
      Height = 17
      Caption = 'FATURA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object cbCmp6: TCheckBox
      Left = 344
      Top = 256
      Width = 313
      Height = 17
      Caption = 'PACKING LIST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object cbCmp7: TCheckBox
      Left = 16
      Top = 280
      Width = 313
      Height = 17
      Caption = 'ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object cbCmp8: TCheckBox
      Left = 344
      Top = 280
      Width = 313
      Height = 17
      Caption = 'TERMO DE RESPONSABILIDADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object cbCmp9: TCheckBox
      Left = 16
      Top = 304
      Width = 313
      Height = 17
      Caption = 'PROCURAÇÃO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object cbCmp10: TCheckBox
      Left = 344
      Top = 304
      Width = 313
      Height = 17
      Caption = 'LI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object pnlBaixo: TPanel
      Left = 0
      Top = 416
      Width = 749
      Height = 38
      Align = alBottom
      Color = 10514464
      TabOrder = 15
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
        Left = 646
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 1
    object Label7: TLabel
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
    Left = 200
    object acAtualizarCampos: TAction
      Caption = 'acAtualizarCampos'
      OnExecute = acAtualizarCamposExecute
    end
  end
  object qrLocProc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT p.Codigo,p.NR_DECLARACAO_IMP, I.Razao_Social'
      
        'FROM Processos AS P INNER JOIN Importadores AS I ON (P.Empresa =' +
        ' I.Empresa) AND (P.Filial = I.Filial) AND (P.Importador = I.Codi' +
        'go)'
      'WHERE  p.Codigo = :processo')
    Left = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptInput
      end>
    object qrLocProcCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrLocProcNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object qrLocProcRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
  end
  object qrProcurador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, [Razao_Social], Registro'
      'FROM Procuradores'
      'ORDER BY [Razao_Social]')
    Left = 264
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
    Left = 264
    Top = 32
  end
end
