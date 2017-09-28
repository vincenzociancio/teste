object frmVisualizacaomagem: TfrmVisualizacaomagem
  Left = 192
  Top = 103
  Width = 870
  Height = 500
  Caption = 'Tela de Visualização de Imagem'
  Color = clWhite
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
  object view: TImage
    Left = 0
    Top = 0
    Width = 862
    Height = 432
    Align = alClient
    AutoSize = True
    Center = True
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 432
    Width = 862
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 672
      Top = 8
      Width = 99
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object btnFechar: TBitBtn
      Left = 776
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Save: TSavePictureDialog
    DefaultExt = '*.jpg'
    Title = 'Salvar como...'
    Left = 1104
    Top = 712
  end
end
