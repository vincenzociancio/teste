object F_visuNormaRH: TF_visuNormaRH
  Left = 512
  Top = 259
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Visualizar Procedimentos do RH'
  ClientHeight = 309
  ClientWidth = 613
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 5
    Top = 6
    Width = 599
    Height = 233
    DataSource = dsVisuNorma
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Norma'
        Width = 581
        Visible = True
      end>
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 269
    Width = 613
    Height = 40
    Align = alBottom
    Color = 10514464
    TabOrder = 1
    object btnSair: TBitBtn
      Left = 522
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      Kind = bkClose
    end
    object btnAbrir: TBitBtn
      Left = 20
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Abrir'
      TabOrder = 1
      OnClick = btnAbrirClick
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
  object dsVisuNorma: TDataSource
    DataSet = qrVisuNorma
    Left = 272
    Top = 112
  end
  object qrVisuNorma: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select *'
      'from Normas_gerencia_Proc  '
      'where Setor = '#39'RH'#39
      'order by norma')
    Left = 400
    Top = 96
    object qrVisuNormaSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 50
    end
    object qrVisuNormaNorma: TStringField
      FieldName = 'Norma'
      FixedChar = True
      Size = 100
    end
    object qrVisuNormaNome_PDF: TStringField
      FieldName = 'Nome_PDF'
      FixedChar = True
      Size = 255
    end
  end
end
