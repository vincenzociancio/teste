object f_psfollowup: Tf_psfollowup
  Left = 28
  Top = 67
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Processos sem Follow Up nesta Data'
  ClientHeight = 409
  ClientWidth = 709
  Color = clBtnFace
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 409
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 384
      Width = 32
      Height = 13
      Caption = 'Label1'
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 707
      Height = 32
      Align = alTop
      Caption = 
        'ATENÇÃO!  Processos que estão sob seu controle sem Follow Up na ' +
        'data de hoje'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object b_fecha: TBitBtn
      Left = 624
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Fecha'
      Enabled = False
      TabOrder = 1
      OnClick = b_fechaClick
      Kind = bkCancel
    end
    object sg_follow: TStringGrid
      Left = 8
      Top = 40
      Width = 689
      Height = 321
      ColCount = 6
      DefaultColWidth = 5
      DefaultRowHeight = 20
      RowCount = 4
      TabOrder = 2
      Visible = False
      ColWidths = (
        5
        58
        187
        261
        88
        77)
    end
    object Panel4: TPanel
      Left = 148
      Top = 172
      Width = 397
      Height = 65
      TabOrder = 3
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 395
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Aguarde verificando Follow Up'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object g_processa: TGauge
        Left = 16
        Top = 24
        Width = 365
        Height = 28
        Color = clWhite
        ForeColor = clMaroon
        ParentColor = False
        Progress = 0
      end
    end
    object b_imprime: TBitBtn
      Left = 544
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Imprime'
      TabOrder = 4
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
  end
end
