object frmSolicitacaoNumerarioOBS: TfrmSolicitacaoNumerarioOBS
  Left = 301
  Top = 286
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Observação'
  ClientHeight = 338
  ClientWidth = 539
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
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 89
    Align = alTop
    Color = clInfoBk
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 40
      Width = 335
      Height = 13
      Caption = 
        'Entre com observação da solicitação de de autorização de numerár' +
        'ios.'
    end
    object lbl2: TLabel
      Left = 16
      Top = 56
      Width = 470
      Height = 13
      Caption = 
        'As informções digitadas aqui, serão enviados no corpo do e-mail ' +
        'para responsável pela autorização.'
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 537
      Height = 32
      Align = alTop
      Caption = 'Observação da Solicitação de Numerário'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object mmOBS: TMemo
    Left = 0
    Top = 89
    Width = 539
    Height = 199
    Align = alClient
    TabOrder = 1
  end
  object pnlBase: TPanel
    Left = 0
    Top = 288
    Width = 539
    Height = 50
    Align = alBottom
    TabOrder = 2
    object btnOK: TBitBtn
      Left = 197
      Top = 12
      Width = 145
      Height = 25
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
  end
end
