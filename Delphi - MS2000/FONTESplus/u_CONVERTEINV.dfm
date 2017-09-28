object f_converteinv: Tf_converteinv
  Left = 18
  Top = 117
  Width = 762
  Height = 375
  Caption = 'Converte inventário Victory'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object e_arquivo: TEdit
    Left = 8
    Top = 8
    Width = 233
    Height = 21
    TabOrder = 0
    Text = 'C:\TEMP\INV01.TXT'
  end
  object B_OK: TButton
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = B_OKClick
  end
  object Memo1: TMemo
    Left = 0
    Top = 40
    Width = 754
    Height = 308
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 2
  end
  object e_itens: TEdit
    Left = 440
    Top = 8
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Database1: TDatabase
    AliasName = 'A_MS2000'
    Connected = True
    DatabaseName = 'teste'
    SessionName = 'Default'
    Left = 328
    Top = 16
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'teste'
    TableName = 'Invetario_Inicial_victory'
    Left = 400
    Top = 16
    object Table1reg: TAutoIncField
      FieldName = 'reg'
    end
    object Table1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object Table1nserie: TStringField
      FieldName = 'nserie'
      Size = 30
    end
  end
end
