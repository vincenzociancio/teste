object F_controleRegistroTreinamento: TF_controleRegistroTreinamento
  Left = 331
  Top = 171
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CONTROLE DE REGISTRO DE TREINAMENTO'
  ClientHeight = 169
  ClientWidth = 567
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 16
    Width = 65
    Height = 13
    Caption = 'Treinamento :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 48
    Width = 72
    Height = 13
    Caption = 'Ministrado por :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 13
    Top = 106
    Width = 29
    Height = 13
    Caption = 'Data :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 12
    Top = 78
    Width = 32
    Height = 13
    Caption = 'Local :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 309
    Top = 106
    Width = 37
    Height = 13
    Caption = 'Hor�rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtTreinamento: TEdit
    Left = 112
    Top = 12
    Width = 449
    Height = 21
    TabOrder = 0
  end
  object edtMinistrado: TEdit
    Left = 112
    Top = 42
    Width = 449
    Height = 21
    TabOrder = 1
  end
  object edtData: TEdit
    Left = 112
    Top = 100
    Width = 159
    Height = 21
    TabOrder = 2
  end
  object edtLocal: TEdit
    Left = 112
    Top = 72
    Width = 448
    Height = 21
    TabOrder = 3
  end
  object btnFechar: TBitBtn
    Left = 486
    Top = 134
    Width = 75
    Height = 25
    Hint = 'Fechar '
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnFecharClick
    Kind = bkClose
  end
  object btnImprimir: TBitBtn
    Left = 13
    Top = 134
    Width = 75
    Height = 25
    Hint = 'Imprimir '
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnImprimirClick
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
  object edtHorario: TEdit
    Left = 368
    Top = 103
    Width = 191
    Height = 21
    TabOrder = 6
  end
end
