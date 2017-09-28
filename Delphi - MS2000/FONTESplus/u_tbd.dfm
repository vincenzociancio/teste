object f_tbd: Tf_tbd
  Left = 246
  Top = 240
  Width = 451
  Height = 206
  Caption = 'f_tbd'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 443
    Height = 179
    Align = alClient
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 168
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Senha de Acesso'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DB_MSCOMEX: TDatabase
    AliasName = 'A_MS2000'
    DatabaseName = 'DBNMSCOMEX'
    LoginPrompt = False
    SessionName = 'Default'
  end
end
