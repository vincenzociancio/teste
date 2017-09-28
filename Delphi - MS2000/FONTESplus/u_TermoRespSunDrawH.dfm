object frmTermoRespSunDrawH: TfrmTermoRespSunDrawH
  Left = 199
  Top = 158
  Align = alClient
  BorderStyle = bsNone
  BorderWidth = 8
  Caption = 'Termo de Responsabilidade Sunamann Drawback Halliburton'
  ClientHeight = 437
  ClientWidth = 672
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtCmp1: TRichEdit
    Left = 0
    Top = 41
    Width = 672
    Height = 396
    Align = alClient
    BorderStyle = bsNone
    Color = 14680063
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WantTabs = True
    WordWrap = False
    OnChange = edtCmp1Change
    OnEnter = edtCmp1Enter
    OnExit = edtCmp1Exit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 8
      Width = 265
      Height = 24
      Caption = 'Termo de Responsabilidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnVoltar: TBitBtn
      Left = 592
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'VOLTAR'
      TabOrder = 0
      OnClick = btnVoltarClick
    end
  end
  object alAcoes: TActionList
    Left = 320
    object acAtualizarCampos: TAction
      Caption = 'acAtualizarCampos'
      OnExecute = acAtualizarCamposExecute
    end
  end
end
