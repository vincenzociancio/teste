object frmControle_ADE_Deferido_Email: TfrmControle_ADE_Deferido_Email
  Left = 192
  Top = 103
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Envio de e-mail'
  ClientHeight = 453
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 434
    Width = 688
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 73
    Align = alTop
    Color = 10514464
    TabOrder = 1
    object lbImportador: TLabel
      Left = 16
      Top = 24
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
    object lbEmbarcacao: TLabel
      Left = 400
      Top = 48
      Width = 63
      Height = 13
      Caption = 'Embarcação:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbData: TLabel
      Left = 16
      Top = 48
      Width = 97
      Height = 13
      Caption = 'Data da Publicação:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbNUM: TLabel
      Left = 248
      Top = 48
      Width = 62
      Height = 13
      Caption = 'Número ADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbCNPJ: TLabel
      Left = 400
      Top = 24
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 686
      Height = 17
      Align = alTop
      Caption = 'Referente:'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 688
    Height = 104
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 14
      Height = 13
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 296
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Para'
    end
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 14
      Height = 13
      Caption = 'CC'
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 38
      Height = 13
      Caption = 'Assunto'
    end
    object edtDe: TEdit
      Left = 56
      Top = 8
      Width = 225
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'msinfohelp@mslogistica.com.br'
    end
    object edtPara: TEdit
      Left = 336
      Top = 8
      Width = 265
      Height = 21
      MaxLength = 300
      TabOrder = 1
    end
    object edtCC: TEdit
      Left = 56
      Top = 40
      Width = 225
      Height = 21
      TabOrder = 2
    end
    object edtAssunto: TEdit
      Left = 56
      Top = 72
      Width = 545
      Height = 21
      TabOrder = 5
    end
    object btnEnviar: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 33
      BiDiMode = bdLeftToRight
      Caption = 'Enviar'
      Default = True
      ModalResult = 1
      ParentBiDiMode = False
      TabOrder = 6
      OnClick = btnEnviarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object btnCancel: TBitBtn
      Left = 608
      Top = 48
      Width = 75
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 7
      Kind = bkCancel
    end
    object edtAnexo: TEdit
      Left = 392
      Top = 40
      Width = 209
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object chkAnexo: TCheckBox
      Left = 296
      Top = 40
      Width = 92
      Height = 17
      Caption = 'Anexar arquivo'
      TabOrder = 3
      OnClick = chkAnexoClick
    end
  end
  object mmText: TMemo
    Left = 0
    Top = 177
    Width = 688
    Height = 257
    Align = alClient
    Lines.Strings = (
      '')
    TabOrder = 3
  end
end
