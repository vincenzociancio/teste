object QR_Ajudantes: TQR_Ajudantes
  Left = -701
  Top = 0
  Width = 1123
  Height = 794
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  AfterPreview = QuickRepAfterPreview
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'QRSTRINGSBAND1')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  OnStartPage = QuickRepStartPage
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poLandscape
  Page.PaperSize = A4
  Page.Values = (
    100.108267716535
    2100
    100.108267716535
    2970
    100.157480314961
    100.157480314961
    0)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  SnapToGrid = True
  Units = Characters
  Zoom = 100
  object DetailBand1: TQRBand
    Left = 38
    Top = 162
    Width = 1047
    Height = 0
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      0
      2770.1875)
    BandType = rbDetail
  end
  object PageHeaderBand1: TQRBand
    Left = 38
    Top = 38
    Width = 1047
    Height = 124
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Frame.Width = 2
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      328.083333333333
      2770.1875)
    BandType = rbPageHeader
    object qrlSistema: TQRLabel
      Left = 0
      Top = 26
      Width = 82
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        0
        68.7916666666667
        216.958333333333)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'qrlSistema'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object qrlEmpresa: TQRLabel
      Left = 0
      Top = 5
      Width = 89
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        0
        13.2291666666667
        235.479166666667)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'qrlEmpresa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object qrlTitulo: TQRLabel
      Left = 0
      Top = 56
      Width = 64
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        0
        148.166666666667
        169.333333333333)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'qrlTitulo'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRLabel7: TQRLabel
      Left = 479
      Top = 56
      Width = 64
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1267.35416666667
        148.166666666667
        169.333333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Empresa: '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 544
      Top = 56
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1439.33333333333
        148.166666666667
        140.229166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Empresa'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 607
      Top = 56
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1606.02083333333
        148.166666666667
        108.479166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Filial: '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 652
      Top = 56
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1725.08333333333
        148.166666666667
        74.0833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Filial'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 0
      Top = 82
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        0
        216.958333333333
        121.708333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C�digo'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 49
      Top = 82
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        129.645833333333
        216.958333333333
        224.895833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Raz�o Social'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 544
      Top = 82
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1439.33333333333
        216.958333333333
        74.0833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Pa�s'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 768
      Top = 82
      Width = 59
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2032
        216.958333333333
        156.104166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CGC/CPF'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 49
      Top = 102
      Width = 61
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        129.645833333333
        269.875
        161.395833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Endere�o'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 375
      Top = 102
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        992.1875
        269.875
        39.6875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N�'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 428
      Top = 102
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1132.41666666667
        269.875
        111.125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Comp.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 544
      Top = 102
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1439.33333333333
        269.875
        105.833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Bairro'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 743
      Top = 102
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1965.85416666667
        269.875
        121.708333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Cidade'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 936
      Top = 102
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2476.5
        269.875
        71.4375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CEP'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 1016
      Top = 102
      Width = 18
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2688.16666666667
        269.875
        47.625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'UF'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Left = 915
      Top = 82
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2420.9375
        216.958333333333
        137.583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Insc.Est.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 0
      Top = 76
      Width = 1047
      Height = 4
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        10.5833333333333
        0
        201.083333333333
        2770.1875)
      Pen.Width = 3
      Shape = qrsHorLine
    end
  end
  object QRSubDetail1: TQRSubDetail
    Left = 38
    Top = 162
    Width = 1047
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333
      2770.1875)
    Master = Owner
    DataSet = q_Ajud
    PrintBefore = False
    PrintIfEmpty = True
    object QRDBText3: TQRDBText
      Left = 49
      Top = 2
      Width = 489
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625
        129.645833333333
        5.29166666666667
        1293.8125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Raz�o Social'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 544
      Top = 2
      Width = 218
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1439.33333333333
        5.29166666666667
        576.791666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'DESCRICAO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 768
      Top = 2
      Width = 141
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2032
        5.29166666666667
        373.0625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'CGC/CPF'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 49
      Top = 22
      Width = 320
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        129.645833333333
        58.2083333333333
        846.666666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Endere�o'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 375
      Top = 22
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        992.1875
        58.2083333333333
        121.708333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'N�mero'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 428
      Top = 22
      Width = 109
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1132.41666666667
        58.2083333333333
        288.395833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Complemento'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 544
      Top = 22
      Width = 193
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1439.33333333333
        58.2083333333333
        510.645833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Bairro'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 742
      Top = 22
      Width = 189
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1963.20833333333
        58.2083333333333
        500.0625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Cidade'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 936
      Top = 22
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2476.5
        58.2083333333333
        74.0833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'CEP'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 1017
      Top = 22
      Width = 18
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2690.8125
        58.2083333333333
        47.625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'UF'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 914
      Top = 2
      Width = 125
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2418.29166666667
        5.29166666666667
        330.729166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Inscri��o Estadual'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 0
      Top = 2
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        0
        5.29166666666667
        108.479166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = q_Ajud
      DataField = 'Codigo'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand1: TQRBand
    Left = 38
    Top = 202
    Width = 1047
    Height = 26
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      68.7916666666667
      2770.1875)
    BandType = rbPageFooter
    object QRSysData1: TQRSysData
      Left = 0
      Top = 8
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        0
        21.1666666666667
        179.916666666667)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsDateTime
      Transparent = False
      FontSize = 10
    end
    object QRSysData2: TQRSysData
      Left = 1001
      Top = 8
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        2648.47916666667
        21.1666666666667
        121.708333333333)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = True
      Color = clWhite
      Data = qrsPageNumber
      Transparent = False
      FontSize = 10
    end
  end
  object QRi_logo: TQRImage
    Left = 867
    Top = 39
    Width = 206
    Height = 75
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      198.4375
      2293.9375
      103.1875
      545.041666666667)
    Picture.Data = {
      0A544A504547496D6167650D300000FFD8FFE000104A46494600010101006000
      600000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC0001108007301E003012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD4D
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
      A2B0FC4BE3AF0DF831226F1078834BD0D652446751BC8E0DE4750BBD867F0AF2
      FF00117ED99F08BC3AF711378AD751B8847FAAD3AD669C3FB2C817CB3FF7D576
      51C1E2711FC1A7297A26CE2AF8EC2E1BF8D5631F5691ED9457C9BABFFC146FC0
      D6F03FF6678735FBD9C676ADCAC30237A7CC24723FEF9AE36E7FE0A593B46441
      F0F2389FB193592E3F2100FE75EB4387B33A8AEA8FDED2FCD9E34F8932AA6ECE
      B7DCA4FF00247DC9457E7A6A3FF051CF1DCB366C3C37E1DB68727E4B949E66C6
      78E44A9DBDBF2AA9FF000F18F893FF00404F0AFF00E025CFFF00245762E16CC9
      FD95F79C7FEB6E59FCCFEE3F45A8AFCF0B2FF828DF8FE3B85379E1EF0DCF0774
      821B88D8FF00C08CCC3F4AEAEDBFE0A593AC604FF0F2395FB98F59283F2301FE
      759CF863338ED04FD1AFD5A3487156553DEA35EB17FA267DC9457CBBE1EFF828
      77C39D4E4B78B52D3B5DD19DC0F36692DE39A088F7E51CB91EE13F0AF63F037C
      7DF879F1225860F0F78B74EBDBB99CA45672486DEE64201276C328576E01390B
      D01AF22BE598DC32BD5A524BBDB4FBD687B387CD7038A76A35A2DF6BD9FDCF53
      BFA28A2BCC3D50A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
      8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2993CF15A
      C124D34890C31A97792460AAAA392493D00AF23F197ED51E03F0A3BC16F7B2EB
      F76A7698F4B40F1838C826562108ED952D8F4E2BB30D83C46325C987A6E4FC97
      E7D8F3B1B98E0F2D87B4C6558C179BB5FD16EFE47AFD07815F17F8B3F6CBF166
      AE248B43B0B2D0216036C847DA6753DF0CC0260FA14FC6BCA75BF1EF8C3E20DD
      1B5D4359D53587BB9542D8895DA377C8DA1615F9739C602AF5AFB1C3707636A2
      E6C44E34D7DEFF000D3F13F37C6F88F96517C983A72AB2E9A72A7F7EBFF929F7
      B78B3C7BA068ED71697BE32D2F429846432F9D11BB8C9E8CAAE48C8F428C2BC5
      756F88DF0B6FD19F5AF88FE30F13BAAB27931DCDCD82B0F429691DBC6DD31920
      F5EB5E6BE06FD933C67E2A586E353587C3762F8626F7E6B8DA4672225E411DD5
      CA1AF76F087EC8BE08F0F24726A8B75E22BB010B35D48638438EA5634C707FBA
      ECFD3EB9AA986C9B2C4E33C4CA73FEE28AFC6CFF00F4A0A38FE26CE9A9D3C142
      941FFCFD727FF92A69BF5E5B1E25A24BFB38417CB069DF0BF5ABEB995B6A44E1
      AE4B9E7EEABDCB7A9E83F957A9F87FC09F0E75B87367F00B5044438CDFE95696
      E4F43FF2DA752474E79EFEF5EF1A2F87349F0DDBB5BE91A659E9703B6E68ACAD
      D21563EA4281935A15E3E2B378547FB98CFF00EDEA927F82B7E67D360B22AF4D
      5F13520FCA14A11FC5F37E479659FECEFF000CB54D3D0DCFC35D2B4E66018C32
      DB4224538E85A3661F5C311F5ACED47F63CF83DAA4C659BC156E8D92716D7773
      02F273F752403F4AF64A2BC85986322EF1AB25E927FE67D07F66609A4A7462FD
      631FF23E78D73F60DF84BAB45B2D74ED4B456E7F7963A848C7FF00237983F4AE
      1BC43FF04DDF0BDCC2A342F17EAFA74A0FCCDA8C115DA91EC10458FCCD7D8145
      7653CEF32A5F0D77F3D7F3B9C75721CB2B5F9A847E5A7E563F3DBC47FF0004E5
      F1B595CBFF0062788F44D56D15010D77E6DACCCDDC6C0AEBF8EFFCABC87C53FB
      2BFC57F0846B25F7827529E3662A1B4D0B7BEBC910972A38EAC057EB3D15EC50
      E2CC7D3D2A28CBE567F8597E078B5F83F2FA9AD27287A3BAFC6EFF0013F11AE2
      DE5B59E48278DE19A3628F1C8A559181C1041E841ED51D7ED078A7C07E1BF1C4
      090F88740D375C8E3CF96350B5498C7918254B0254FB8C1AF9FF00C75FF04FCF
      877E22819BC3D36A1E13BB09B53CA99AEE0273F79D2525CFD048A2BE9B0DC5D8
      5A9A6220E1F8AFD1FE07CAE2B837174AEF0F3535FF0080BFD57E27BBFC2F667F
      867E126766763A45A12CD9C93E4A7273CE7EBCD74D595E13D11BC35E16D1B486
      9FED2DA7D94368660A57CC31A05DD824919C67193F535AB5F95D69295494A3B3
      6CFD730F170A308CB7497E41451919C679A2B1370A28A2800A28A2800A28A280
      0A28A2800A28A2800A2B93F1F7C53F0DFC3386D64D7EFF00ECA6E98AC51A2191
      DB0393B572703D7A723D6BA0D1F554D6B4E82F628678219943A2DCC66372A464
      12A795FA100FB5005CA28A2800A28A2800A28A2800A282714020F439A0028A28
      A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2B
      C37E2DFED4FA17814CFA6E8222F106B884A39563F66B76DBC1671F7C8246554F
      6605948C57760F0588C7D4F65868393FCBD5F43CBCC733C1E5545E231951423E
      7BBF24B76FD0F67D5B58B0D06C25BED4EF6DF4FB28B1BEE2EA558E35C9C0CB31
      0064903EA6BE76F88BFB65E9BA717B5F06D87F6ACC31FF00130BF568EDC7DD3F
      2C7C3B705873B30403F30AF9A3C71F11BC43F11B51179AF6A52DEB2926287EEC
      30838C8441C2F4193D4E0649AE6ABF53CB783E851B54C73E79765A47FCDFE0BC
      99F83677E22E2B12DD2CAE3ECE1FCCECE4FD3751FC5F668EA3C6DF137C4FF112
      E049AF6AF3DEC6ADB92DB3B208CF20158D70A0E0919C67D49AE72D6D66BEB986
      DADA192E2E26711C7144A59DD89C055039249E0015E83F0A3E05788FE2C5CF99
      6710D3F4746026D4EE9488F19C1118FF00968C003C0C0180095C8AFB3BE18FC1
      6F0D7C2AB41FD976BF68D49976CDA9DC80D3C9939201E88BD3E55C7419C919AF
      5331CF70392C3EAF4629CD7D98E897AF6FCCF0F26E15CD389AA7D6F13271A6F7
      9CAEDCBFC29EAFD745E7D0F9C7E197EC81ACF88921BFF15DC368362E030B3880
      6BB75233CE72B1F51D727A82A2BEA2F047C32F0CFC3AB4F2741D260B372BB64B
      9237CF20EBF34872C4679C6703B015D4515F93E639DE373376AD3B47F9568BFE
      0FCEE7EFF93F0CE599224F0D4EF3FE696B2FBFA7A2B0514572B7DF163C11A65E
      4F6979E32F0FDA5DC0ED14D04FAA409246E0E0AB297C8208C106BC68539D4768
      45BF43E96A56A7455EA492F5763AAA2B3740F13E8FE2AB37BBD1356B1D62D524
      313CF617293A2B800952C84807041C7B8F5AE7EFFE33F8074CBA36D75E33D0A1
      9D5CC6D19D4622C8C3390C037CB8C1EB8AB8D0AB3938C60DB5E4CCE589A108A9
      CE6927B3BAB33B2A2B3B42F12691E29B2379A36A965ABDA062867B1B8499030E
      A3729233C8E2AEDC5C456904934F2A430C6A59E49182AA81D4927A0AC9C6517C
      AD6A6D19C651E68BBAEE494571327C70F87913843E38F0F127FBBA9C2C3F30D8
      AE9F43F10E95E27B117BA3EA567AB5996282E2C6749A3DC3A8DCA48C8F4AD674
      2AD35CD3834BCD331A789A15A5CB4E69BF26997E8A28AC0E90A2B9BD7BE25F84
      7C2D76F6BAC789F47D2EED17735BDDDF451CA0763B0B67F4ACCB5F8E1F0F2F14
      18FC6FE1F19E824D4A243F9330AE98E1ABCA3CD1836BD19C72C661A12E49558A
      7DAEAE76F45476B750DEDBA4F6F3473C120DC9244C19587A8238345D4E2DADA6
      99BEEC685CFE0335CF6B68CEB4D35747C97E000BE36FDB0F59D4F02D869D3DD3
      04037F9A224FB3039E319C87E87D3DEBEB8AF927F633B5935DF1C78BBC477B34
      92EA0B6EA9230002BB4F21776200EB98463181C9E3A63EB6A1820A28A290C28A
      28A0028A28A0028A28A002B2BC53E27D3BC1BA0DDEAFAADCA5A595B26E6790F5
      3D9477249E001C9AD5A8E7B686E4289A249429C80EA0E0FE3401F3BFC22F076A
      5F17FC6127C4BF19E9C9140362E8B64FCAAC60B10E548CB004E558F52588006D
      23E8CA444589151142228C055180052D020A28A28185145248E228D9D8E15412
      4FB500717A37C63F0A7883C6371E16D3EFE6B9D6EDE59629A05B3982C6D1921F
      2E5368008C673827007515DAD7C8DFB2589FC55F17BC5DE29F2D6085E095E484
      B96647B89C48A01C72004719E0F4E3AE3EB9A6C48E4FE2BE83AB78A7E1EEB7A3
      E882DBFB42FE1FB329BB62B18466024248E73B3763AF38E315C4FECDDF072FFE
      1268FAD26AEB6ADA95F5C21F36D2567468917E404103043349DBB8E7D3D8A8A4
      30A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AC4F18
      78D346F0168926ADAEDF258592B040CC096773D155472CDC13803A027A026B92
      F8C5F1C744F845608971FE9FAD5C216B6D36260188FEFC87F8133C67A939C038
      38F877C7BF1175EF895AD3EA5AEDEB5C3E5BC9813E586DD49FBB1AF61C0E7927
      03249E6BEC325E1CAD99B55AAFBB4BBF57E9FE7B7A9F9CF1371961B234F0F42D
      52BF6E91FF0017F92D7D3467A17C63FDA675BF88E67D374AF3743F0F36E430A3
      FEFAE90F1FBD61D011FC0BC72412DC1AF17A2ACE9BA6DD6B3A85BD8D8DBC9757
      970E238A1897733B1E800AFD9F0B84C3E5F47D9D08A8C57F576FF567F3563B30
      C667188F6D8A9B9CDE8BFC925B7A22B57D3DF047F65092F45B6B9E3789A1B665
      1243A29CAC8D9E8663D5463F8073C8C9182A7BEF809FB37DA7C3EB7835BF10C5
      15EF899C6E48CE1E2B11D405F593D5FA0E8BD0B37BA57E6B9EF14CA6DE1B2F76
      5D65DFFC3DBD7EEEEFF6BE15E038D251C6E6F1BCB7507B2F39777FDDD975BECA
      2B4B482C2D61B5B5863B6B6850471430A0448D00C055038000180054B4515F99
      B6DBBB3F6F4925641451452181214124E00E49AFC8CF15EBAFE29F146B1AD491
      F9526A37935E3479CED32397233DF19AFD48F8B1AD49E1DF85FE2DD4E1944371
      6BA55CC90BB0C812089B67FE3D8AFCA2AFD3F83297BB5EB3F25F9B7FA1F8BF88
      75EF2C3505FDE6FF0004BF266FC5E3CD7EDBC20DE1683539ADB419276B996CA0
      21166918282642397E1170189031C0AC2923789B6BAB23601C30C1C1191FA57E
      8AFECAFF0005347F87DE00D2B5D92D63B8F126AF6A97735EC8B9786391772431
      E47C80291BB1CB3672480A06FF00ED2BE07D27C65F07FC4B26A36E8D73A6584F
      7F6775B07990C91A7998562380DB02B0EE0FD2BBBFD68C3D3C67D5A9D2F75CAC
      E57B6B7B5ED6D7EFB9E6FF00A978BAD97AC656AFEFA8DD45ABD92574AF7D34F2
      B27F79F9E1F0E7E226B5F0BBC5769AF68772D05CC2712444FEEEE22246E8A41D
      D4E3EA0804608046B7C57F8D5E27F8C1ABBDCEB57AEB62AFBADB4B858ADB5B81
      9C617BB61882E72C738CE3007055FA19FB277C13D1FC15F0FB48F125CD94175E
      24D5E05BDFB6B80ED04322E638E3247C9F2302D8E496209202E3D9CDF1584CAD
      2C6D4A6A55365DFBEFD3D4F9EC87038ECE9CB2DA559C297C52EDDB6D2EDF6BAE
      FD0FCF5923789B6BAB23601C30C1C1191FA5749F0F3E22EB9F0BFC4D6DAE6837
      6D6F73130F3212498AE23CF31C8B9F994FE6382082011FA31FB45783F4AF177C
      1EF148D4ED639A4B0D3AE2FED662A37C32C51B3AB2B6323257071D4123BD7E60
      D3CAB32A79E61E7CF4ED6D1A7AA7F82167793D6E1BC5D3F6756EDAE6524ACD34
      FD5FE67EBA7857C456DE2EF0C693AE59864B5D46D22BB8D64C6E55740C036091
      919C1F715F0E7ED13FB58EB3E32D6AEF43F085FCFA4786ADD9A16BBB67D935FB
      0382FBC72B1F1F2A82090496EA157DA34FBFBEF02FEC3AB71233C974DA1B08DD
      5B6B225CB911905738DAB329FF0080F38EDF0357CBF0E65387957AF5E6B99424
      E31BEDA75FBAD63ED78B73DC5470B86C3536E0EA414E76D1EBD3C95EF7EFB6DB
      EDF87FC11E23F16472C9A1E81AA6B31C476C8FA7D9493843E84A29C1A4D7FC13
      E22F09C713EB7A06A9A324A76C6DA859C90073E80BA8CD7E877C28F8CBF0AEDF
      C03A2D9E91E23D1F43B3B6B648C585FDCC76B2C4D8F9832B91B9B76496048624
      9C9CE4FA35B6ADE1DF1BE9F716B6F7BA66BF633C6566862963B98E48DB821802
      4153C8E78AD6B714E268566AA619A8A7D6E9FE56FEBE66186E09C1E2A845D2C6
      2736AFA59ABFDF7B7FC3DBA1F0E7EC73E19F881AA78BC6A1E1DD4A7D1FC2D6D3
      29D4E59817B6B9C60985633C3C8578DC30501CE412A1BEC7F8DB7D169FF08BC5
      F24B2244AFA64F00691828DD221451CF7258003B92077AEA745D16C3C39A5DB6
      9BA5D9C361616CBB21B6B7408883AF007B927DC926BC87F6BCD6A2D33E0F4F69
      206326A57905BC7B40E0AB79A49E7A6223D33C91EB5F0D9B664F34C4BADC8A2B
      65DFE6FABFC8FD2F22CA164B83587E7727BBED7F25D17E7BB31BF62CD245AFC3
      DD5F506B6F2A5BBD44A2CCD1E1A58D234C61BF89433480760777BD7D095E67FB
      36E8B2E87F05FC3714C51A49E27BACA671B64919D7A81CED65CFBFAF5A93F680
      F888DF0DFE1C5EDEDBC863D4AEC8B3B3207224607E6FBA47CAA19B9E0E319E45
      78A7D11CA7C53FDA6ACFC35AA3787BC296CBE20F11195AD9946EF2A1931D381F
      390C470A7F85812A457131D97ED1BAF2FDBD6E4E9E9392EB6ACD6D118864E176
      919181EA49F5E6BADFD95BE19C5A6786878C75356BAD6F572668E79D8BB24673
      F3723EF365B2DC920F070C6BDF2803E4BF0DFED09E39F861E2A4D17E23DBBDC5
      9C8EC0DC4B0059A35C850EA5000E9904F4270D904F00FD57A66A56DAC69F6D7D
      67325C5ADC46258A58D832B29190411C1AF20FDADBC3F6BA9FC20BED4648D4DD
      E9B3432432151B8079523619EC087CF1E82A1FD907C4179AE7C27786F24F3469
      B7F259C0C492DE5048DC02493D0C840C600000ED401EB5E27F1369BE0ED0AEF5
      7D5AE92D2C2D9774923FE4001DC938000E4935F305DFC79F897F183557B2F87F
      A53E99651C815A6554793196C191DC6C4046D240E411C31CE0D9FDAC3C5775E2
      6F18E85E01D26E65666643796F0ED2AF248CBE52B60E72A3E6DA703E653E847D
      11E00F04D87C3EF0B5968DA7C31C690A0F35D171E6C98F99CF7E4FAE78C5007C
      E674DFDA27C35E76A4D7726A08922CD25A99609C380141509D4290BC84C7723E
      639343C57FB5FEA9A8F806D6D34C8A4D13C60B3A25E4E205787CB01B718F7138
      62C132ACA7009009C66BEBDAF83FF6AED12DB43F8C57EF6C8116F6DA2BC91546
      3E76CAB1EBDCA67B75FC6811F607C1FBFD5755F867E1EBFD6AFCEA7A95E5A8BA
      96E5A258CB0909751B578E1595723AE33DEBCE7F6AAF8A9ACFC39D27408340BF
      934ED46FA795DA648A39018A350194EF0704B488460763C8EFECFE1FD260D034
      1D374CB68FCAB6B2B68EDE28F716DAA8A140C9E4F03A9AF96BF6B576F15FC57F
      0778554FD9CB448A2E7EF856B89BCBFB9C74F2C1EBCE71C63910FA1F4CF81DB5
      37F06684DAD3B3EB0D630B5E336DCF9C5017FBBF2FDE27A71E95C67C62F8E561
      F0B56D6C6DED4EB5E23BC6516FA642F86C1380CC402467A018CB1E07723D3634
      1146A8A30AA0003DABE4EF82F38F13FED55E2EBDD53CBB9B9805E1819E35F95A
      3992240BC70563C8CF5C0EBD6803A79349FDA0FC5D1437BFDA9A478603263EC2
      A4290431E4FC921C918FE2C631DF359B3786BF686F07DB5ACD6DAE5BF8823859
      11AD9258E566403F8CCA8ACC0E30486DC739F71F4ED145C2C79BFC12F1D78ABC
      71E1F7B8F147879B47B846216703CB498648E23662EA4639CF07823AE071FF00
      1B17E2D585C6BDACE89AF69BA5F84ECAD4CAB6FB11A77558F2E4EE89BE62DB80
      0180C6DE8726BDE2BC7FF6B0BE8AD3E0A6AD0C92223DD4F6D146ACC0176132BE
      14773842703B027B5007CFFF00B3EF83FE24DF68FAAEAFE03D66C349825B8169
      75F6A0ACCED1A87180D138C012F6C753ED5F4D7C23D1FE2369926AA7C7DADD9E
      ACAE22164B6888BB0FCFE616DB1275F931D7A1E9595FB2BE9034AF82DA3BB5B7
      D9A6BC927B99331EC67CC8CAAE78E728A983FDDDBDB15EB743047CE7FB567C5D
      F10FC3DD4FC3F65E1BD6469D34B0CD3DD4691C52332EE511921D5881C4983C67
      9F4AFA1ED1645B585656DF28450EDEA71C9AF93BE317FC559FB58F8634EB2FF4
      89AC9EC619D071B02C8677E5B8388DF771F4EBC57D6ACC114B310AA06493D850
      0737F107E2168FF0D3C3B36B1AC4C5225F9628130649DFB220EE4FE43A9C015E
      1F2FC42F8BFF0017A547F0668E3C2FA0BB9D9A85EEC0F22E0B2B12E09DACAC9F
      715B9FE2C66B134289FF00692F8F97977A84714DE15F0F06448165F3629543B0
      8CFDEC132105C900A90814E7A9FABA289208D638D42228C05038028D8373E5DD
      53C29FB43F876192F2DFC429AABC928678ADA689CA7CA06E0B2A2A85F9470BDC
      938E49AEFF00E00FC73BDF898D7FA3EB9A6BD96BFA79266786075848DC461B39
      F2DC1041563CE323B81ECB50C16705ABCAF144B1BCADB9D80E58D0079DFC65F8
      D16FF0AAD6C60874F9B57D6F507D9696318203F2013B803EA000012491EE479A
      C5A4FED0FE2D696F5F54B0F0D23380964E62500003E61B52438273F79B39CF18
      C57D1775A6DA5F5C5ACF716D14F35A4865B7924405A272A54B29EC76B1191D89
      AB3401F2BDDF86FF00680F879A547790EB83C416D68C5E4B68E6FB5CAC832CDB
      BCD40EE0F4C292DC80318E3BFF0080BF1F66F8957579A0EBD64BA7789AD03BB2
      451B247222B60F0C494652402A4FB8EE07B4D7C73E1AB4B2B5FDB45A1D30C6B6
      E350BA63E53EE50E6DA469475383BF7823B1C8E318A370D8FB1A8A28A430A28A
      2800AF13F8FF00FB445B7C3189B45D1BCABDF144AA0B06F9A3B2523219C77723
      954F4F98F180C7ED11F1FE3F86365FD8DA2B24FE28BA8F21C80C96487A48C0F0
      5CFF000A9E3F89B8C06F882EEEE7BFBA9AE6E6692E2E66769259A562CF239392
      CC4F24924924D7E87C39C39F5CB63318BF77D17F379BF2FCFD37FC7B8CB8CBFB
      3B9B2ECBA5FBDFB52FE5F25FDEFCBD769F58D62F7C41A9DCEA3A95D4B7B7D70F
      BE59E66DCCE7EBFA63B018AA7454B69693DFDD436D6D0C9717333AC714312967
      91C9C05503924920002BF604A308D96891FCE6DCEACDCA4EEDFCDB6CB1A2E8B7
      DE22D56D74DD36D64BCBEB9711C504432CC7FA0EE49E00049AFBABE05FC05D3F
      E14E9A9797623BDF134E989EEC72B083D638F3D07AB753EC30043FB3F7C0AB7F
      859A3AEA1A846B2F89EEE3C5C4990C2D94F3E5211C7A6E23A91C70057AFD7E35
      C45C42F1D2785C2BB535BBFE6FF81F99FD29C1DC1F1CAE11C7E3A37AEF65FC8B
      FF0092EEFA6CBA8514515F027EB214514500145145007897ED91ADC5A47C04D6
      A0790A4BA84F6D690E3BB79AB211FF007C46F5F9DBA669D3EAFA95A585AA7997
      3752A41127F79D88503F322BED4FF82806BDF67F07F85345F2F26F2FE5BCF333
      F77C98F6631EFE7FE95F337ECF1A0BF893E37F832CE360853518EEC923395833
      330FC44647E35FB0F0DFFB264F2C43FEF4BEE56FD0FC038BDBC767F0C2AE8A10
      FBDDFF00F6E3F502DEDE3B4B78A08942451A84451D00030057937ED65ACCBA2F
      C02F143C1379335C2436AA700EE59264575FC50B8AF5DAF983F6FAD6A2B6F875
      E1ED2B7959EEF54FB40507EF2451386CFE32A57E6F93D2F6F98D08BFE64FEED7
      F43F5EE20AFF0056CA71135A7BAD7DFA2FCCF86238DA69163452CEC42AA8EA49
      E82BF5EB46D2A0D0F47B1D36D5765B59C11DBC4A063088A15471EC057E5DFC0E
      D1E4D77E317832CE38BCE0756B795D08C831A481DF23D36AB57EA857D8719D5B
      D4A347B26FEFB2FD19F03E1E50B52C4621F5715F726DFE68F2EFDA7F5D97C3DF
      01BC6173063CC96D56D39FEECD2242DFF8EC8D5F9915F7C7EDDFAABD97C22D3A
      CE399A3379AB44B2229C6F8D6395883EA03043F502BE31F855A2C7E23F89BE13
      D32680DCDBDDEAB6B14D1633BA332AEFCFB6DCE7DABD6E158AC3E5B3AF2EADBF
      924BFC99E0F1BCE58ACE29E1A3D2315F36DFF9A3F4D13E1FD95CFC2E8FC15765
      8D81D2174A774037051108F72E410186320F382057C01F10FF00657F883E03D4
      E68A1D0EEBC43A6F9BB2DEFF004988CFE6AE320B44B974E383B863208058609F
      D04F887F11343F85FE18B9D775FBB16D6917CA91AF32CF21FBB1C6BFC4C707D8
      004920024677C33F8CBE14F8B3A6A5CE81A9C725CECDD369D3304BA83A677479
      CE01206E19527A135F1595E678FCBA13C4D38735393D6E9DAFEAB67FD763F46C
      EB27CAF37A94F0956A72558AF76CD5F97D1EEBF1FC4FCBFD63C35AC787982EAB
      A55F698CC7005E5BBC44FF00DF40551B7B896D278E782478668983A491B15646
      07208239041EF5FB06EEB1A333B0545192CC7000AFCE1FDADBC49E16F13FC5C9
      2EBC28F693DB259C715DDD592AF9571721DCB3865E1FE5641BBBEDEF8AFBEC9F
      88279AD6746546D6576D3BAFCBAFA9F9771070AD3C8E82C44711CD776516ACFD
      56AEF6F43DF7F633F8EFAC78F0EA3E12F11DD4DA95FD8DB8BBB4BE9BE691E10C
      A8E92375620B2104E49DCD93C0A7FEDBFAD4B0E99E16D294279134B3DD48483B
      8322AAAE0E7A6247CF1D8579BFEC09A1DCDCFC45F10EAEAAA6CECF4BFB348D9E
      4492CA8C9C7D2193F215D47ED24D0F8AFF00687F0BE8334DF69B302CACA6B512
      9DA8D2CE778201F95991D33D0E369F4AFCFF0088E8D1A1994E1455959369746D
      7F4CFD53847115F1594539E21B6EED26F7693D3D7B7C8FAA3C1FA2C7E1CF09E8
      DA5425CC563670DB299082C42205E48E09E3B57CC5FB6DEB66E359F0CE8704D2
      34B1C12DD3DB26EC3176091B63A13F2480752327A679FAD00C0AF8D7F6BD47B2
      F8C5A1DF4E8E96674F8313153B4EC9A42C01EE402091D7E61EA2BE611F667D71
      E1AD223D03C3BA5E990A08E2B3B58E05518E02A81DB8EDDAB4A9B1C8B3469221
      0C8C03291DC1A75219E37FB5AEA02CFE0B6A101049BBBAB78463B6241273FF00
      7EEA2FD913468F4CF8396D751B3B36A5793DD387C60306F270BC74C443AF7CD7
      9FFED87E236F10EB9E1AF05E9805D5EF9C257891D41F39F09121CF42431EA40F
      9BF2FA4FC25A045E15F0BE93A3C259A2B1B58EDD59C82C76A819240009E3D053
      E82EA7C97E0B91FC6BFB60DE5D5D796A6DB52BA2AAA990CB023471F5279C229C
      FA8E31DBECAAF8CFE056A31E9DFB50EB31CA554DD4FA85BAEF6DBF37985F8F53
      F2631EFED5F6650C1057C75F1484BE2AFDAE349B2B53F696B6BBB188A70BB153
      6CB272719C02C7BFA0F4AFADF5DD72CBC35A3DDEA9A8CE96D656B1992595CE00
      03FA93803DCD7C67FB3CC93FC41FDA2DF5FB89764A86EB5374118F9B702817AF
      18F341CF3F771DF342067DB55F24EBBFF1567EDA5656979FBFB7B2B988409F77
      67936DE70E4609C4819B9CF5C74E2BEB62702BE45FD9A665F12FED0BE2FD6ED0
      3CDA7CB1DE5CADC04214F9B72A53391C120B100E0FCA7D0D0819F5D57CE3F107
      F677F11E8DE31BEF187C39D57EC9A85C33CD258C8E012EDB99C233654866DA42
      B0C03CE46063E8EA290CF97878EFF684F0C68FBEF7C2F0EA9E4F0D335B2CF33E
      5B8F92DE419C640F957A0C9EE69B6BFB5678CFC30B1378CFC052DAC0F30433A4
      1359E148E81650DB9B863F786718E304D7D475C0FC794B03F087C52DA80B731A
      D8C9E51B8C604B8FDDE33FC5BF6E3BE718A623A8F0AF8A74DF19E856BABE9370
      B756570BB91D7F5047623B83C8EF835E03FB6E6B51C3E18F0D69043996E6F24B
      B5200DA0449B0E79CE7F7C31C763F8ED7EC67A75CD9FC2EBE9E64D905DEA724B
      0720EE511C685B8E9F321183FDDF715E7FFB59F9BE2BF8BFE12F0B6F58217822
      8D27D85995EE2728C48CF200443818EFCF4C1D43A1F4A7C30D2EE344F871E17B
      0BB8CC5776FA6DBC7346483B1C46BB86470707238AE9A92341146A8A30AA0003
      DA997330B7B79653D2342C7F019A433E4CF87D9F1C7ED83AD6A7CDBAE9B35D3F
      97F7FCC112FD9873C63390DD0E3A7BD7BEFC73F119F0AFC24F146A0AF3472FD9
      0DBC725B9C3A3CA444AC0E4630CE0E47231C57837EC6301D6FC61E30D7AF7136
      A4218D5A7FBBCCD23BBFCA30BC98C1E9C638EA6BD97F696D3AE354F823E2786D
      63F36448E19D972061239E3773CFA2AB1FC2993D0E27F62CD245AFC3CD5F507B
      6F2A6BBD49916768F06589234DB86FE250CD20F407777CD7D095E27FB21EB706
      A5F08A2B38C32CBA75DCD04BB80C12CDE60239E98703B720FD4FB650C6828A2B
      CCBF68FF00174FE0EF849ABDCDA5C2DB5EDD6CB385CB956CC870DB0820EE081C
      8C74C67A0348673DE3CFDA6AD345F12B7873C2DA25C78B3598DC24A2DD88890F
      3B94101896538CF181939390457389F103F683BA89254F0469A8AC37005021E7
      D435C647D0F35B3FB20F83B4FD37E1BC7E205B78CEA7A9CB2AB5C15F9C469232
      0407B0CA93C63391E95EF14C47CD971E3FFDA0AD6DE59A4F0669AB1C485D8854
      2400327813E4F4E82B91FD929AFBC55F18BC4BE249E24DB25ACF35C3C7C2ACD3
      CCAC140249C1C49EBF7793EBF45FC6BF1147E17F855E26BE729B8D949046AE70
      19E41B147519E5871D6BC6FF00621D0FC9D0FC51AC6FCFDA2E21B411EDFBBE5A
      972739E73E68E31C6DF7E011F4D5145148A0AF27F8F7F1CAD3E13E8DF65B464B
      9F12DDC79B5B7232B12E71E6C9EDC1C0EE47A0247AC531A08DD8968D589EE545
      75E16A51A35A352BC39E2BA5ED7F9D9E87063E8E2311879D2C2D5F6737A295B9
      ADE8AEB5EDAE87E5DEA5A95D6B3A85C5F5F5C49757970E6496695B733B1EA49A
      AD5FA99F6687FE7927FDF228FB343FF3C93FEF915FA3AE375156586D3FC5FF00
      DA9F8C4BC2F94DB94B1B76FF00E9DFFF006E7E59D7D9DFB307C096F06D8278A7
      C4167E5EBD7287EC96F30F9ACE161D48FE1918139EEAA70704B0AF7EFB343FF3
      C93FEF9152578D9B71556CC70FF57A74FD9A7BEB76D76D95977EE7D1E41C0787
      C9B16B195AAFB5947E15CBCA93EFBCAEFB6D6DF7B58A28A2BE18FD4C28A28A00
      28A28A0028A28A00F85FF6FAD765BAF88BE1FD232A6DECF4CFB42E3EF0796570
      D9FC224FD6B0BF61DD0E1D57E36FDAA504BE99A65C5D444740E4A43CFF00C065
      6AFBE2EF43D3AFE7F3AEB4FB5B99B685F3258559B03381923A727F3A759E9163
      A73B3DA595BDAB30C334312A123DF02BECE3C431A7967F67C29D9F2B57BF7DF4
      B7EA7E793E149D5CE7FB56A564D732972DBB6CAF7E965D0B75F10FFC14035E37
      1E33F0AE8BB30B67A7C979BFD4CD26CC7E1E40FCEBEDEAA577A269DA84FE75D5
      85ADCCDB42799342AEDB46481923A727F335E1E558E8E5D8A8E2650E6B5F4BDB
      7563E973CCB679BE0658384F9399ABBB5F677F2EA8FCFBFD8AF426D5FE3BD85D
      2B6174BB3B9BC61EA0A7938FCE607F0AFD11AA767A369FA74A64B5B1B6B6908D
      A5E1855091E9903A702AE56B9C667FDAB8955F97952495AF7EEFF530E1FC9FFB
      0F08F0DCFCCDC9C9BB5B7B2EEFB1F16FFC141359866D77C1BA4ABFFA45B5B5CD
      D3A7A2C8C8AA7F385FF2AF34FD8EB469B56F8F9A14D1C7E6456115CDD4C7FBAB
      E4B203FF007DC89F9D7E88DE68DA7EA32892EAC6DAE64036879A157207A648E9
      C9A4B4D134ED3E7F3AD6C2D6DA6DA53CC861546DA7048C81D381F90AF5E8F10C
      68658F2F8D2D795ABDFF009AF7D2DE7DCF0713C293C4E72B359D656528CB96DF
      CB6B2BDFCBB1F0EFED7BF0D3E23CBE31BCD7F506B9F11785D37BD94F691931E9
      F09CB18E48D7EE6D006643C300A4B67E55F99C120820E08EF5FB0F5CF6B3F0E7
      C27E22B9373AAF86346D4EE0F59AF34F8A673F8B2935DD97715FD568C6856A37
      5156BC74FC2D6FEB63CCCDB81BEBB889E2685769C9DDA96BF8DEF6ED74FD4FCA
      0B8D46EEEE18619EEA69A1872238E490B2A67AED07A7E15DBFC33F819E31F8AF
      790A689A4CAB60F9DDAADDAB456880101BF784618827EEAE5BAF1C1C7E90E9FF
      000AFC15A4DD477563E0FD06CEE633B926B7D3204753EA085C8AEA2BA711C62F
      93970D46CFBB7FA2FF0033930BE1F2E752C657BAED15BFCDFF0091C47C1EF84F
      A5FC1BF05DBE83A6BB5CC9B8CD777B22ED6B9988019F1FC238002F3800649392
      7C3FF692F865AE697F1174EF1FF86B4D975175786E2E5224326C9E16411B150D
      B98300830A060213DC9AFA9E8AFCEEAD6A95EA4AAD47793D5B3F59A142961A94
      68D18F2C62AC9791F3D7C2EFDAC24F88DE36D27C367C2E96725EB38374BA8170
      9B636727679433F731F7BBD757FB43FC1B6F8ADE1CB792C3626BB60C4DB3CB21
      4428C57CC56C039E064719C8EBC907D63CB4DDBB6AEEF5C734EAC8DCF8DBC11F
      B45F8A7E0C410F857C55A0CB770D9298E149D8C33C7183B542B60874055803E9
      D0E060F417DFB59F89BC6F32E8FE08F09B2EA7301FBD77370F182705B6050001
      91F331C0CF35F525C59C174009E08E6C74F310363F3A582D61B55DB0C4912FA2
      2851FA51703C47E04FC069BC2D74DE2DF16B1BFF0016DD9331F39BCC36A5BAF3
      CE6439E5874E838C96F72A28A433E4EFDA17E07EB9A2F8BA4F1C783E2B999A69
      D6E2682C233E75BCD91FBD40832413CB77C927904EDABA47ED95E26B3316977F
      E17B7D47564905BB6D95E195E4E17698C29F9B764607D315F5DD1B467A0A7715
      8F982EFC2DF133F683D38DD7896E23F04F87615764B216AFE6C8C001B8C6CCA4
      83F3004B0E338186C9C0FD893458EE3C55E24D598BF9B69671DB28046DC4AE58
      93C673FB918E7D7F0F7EF8FDAF43E1EF83DE299A60CC2E2C9EC9550024B4DFBA
      1D7B0DF93EC0F5E95C47EC7DE109B40F87173A9DD5BAC336AF73E746C50AC8D0
      2A854DC480719DEC3A8C364753401EB9E39D73FE118F05EBDABF97E71B1B19EE
      447BB6EF288582E707192319C57CF3FB0FE8CE9A7F8AB562D19865960B48D54F
      CC1903B36463A1122639EC6BEA12030C1008F7A454541F2A85FA0A00F33F8EFA
      1F8EB5AF0F5B0F056A115ACB04A279E0036CD36CF99155CE47DE032A40072327
      1907CAF44FDAF754F0DC9169FE39F09DD5A5D888BF990A98647CB617F7326303
      008CEE3CAFBF1F50D4735B4370312C4928F47507F9D0163E78BBFDB67C309692
      B5B683AB49701098D2631468CDD8160CC40E9CE0FD0D64EA16DF10FF00696BEB
      2B1D4747B9F05F83A17DF76B2B10F3B0C100065566E08C7CBB41C9392028FA62
      2D32CE070F1DA411B8E8CB1807F9559A00CBF0C786B4EF07E8367A3E956C9696
      16A9B238D3EB924F7249249279249AF9F3F6A9F86DAF5CF88347F1BF872DE7BB
      BAB158E2963817CC789924DD148B1ED3919639EBDB8C64D7D2F45203E76F861F
      B594BF103C67A47871FC3296D25EB321BB5D4376DDA8CD9D9E50CFDDF5AF4FF8
      E9AAC1A37C1FF174F7327951C9A7CB6C1B693F34A3CA51C7AB3819ED9CD773E5
      AE73B467D714322B8C300C3D08CD303E7BFD8AF4916DF0FB58D45ADFCB92EF51
      28B318F0658D234C61B1F32866907A03BBBE6BDFB50B0B7D56C2E6CAEE249ED6
      E6368658A45055D18619483D41048A9C285180001ED45219F205EF873C6FFB30
      78BB56D5B41D35355F0A5D30690AA33AAC40B3856E4BA145DE379CAE08272781
      D769BFB6DE8125846FA8787751B7BC39DF1DB491CB18E78C3B15278C1FBBC7BD
      7D22466AB369764CFBDACE02F9CEE312E7F953158F9AEDFC73F14BE3D5D5B41A
      0E9A7C13A246D05D3EA12EF62FF36E5D8E540901186DA17076F2C0360FB1FC61
      F00DDFC45F867A8E816F751A6A122C6F1CD2AE11E4460D838E81B04679C67383
      8C57740050000001D8514058F89BE1B7C71F10FC0112785F5FF0FCD2DAA3BC82
      DA6730C9192C41642410CA581E4707191DF77A047FB6CDADCC890DB783AEE7B9
      9582450ADE026473C2A8C21392703806BE959ED61B95DB3431CABE8EA187EB4C
      834FB5B66DD0DB43137AA4614FE9401F20FC744F88DE38F01C5E2AF10C367E1F
      F0FDB9474D184AE272CEE155994A727054F246327807207B0FEC93A54161F05F
      4FB98536BDFDCDC5C4ADB89DCC243167AF1F2C4A38F4FAD7B1B22BE370070723
      2285508A0280A076028B80B45145218514514005145140051451400514514005
      1451400514514005145140051451400514514005145140051451400514514005
      145140051451400514514005145140051451400579F78D3E3CF827C03ABCBA4E
      AFABF97A9C4AACF6D1412485030C8DC5548071838273820E30457A0D717A8FC1
      9F05EB3E28BCF10EA3A05B6A3AADDAAACD25E1695182AAA8FDDB1280808A3217
      3D7D4D007825FDB789BF6B5D7B4D996C65F0FF0081ACA597FD25E5DCD2907048
      5E85F1F2838214EFF98FDDAFA9F4DD3ADB48D3EDAC6D21482D6DE358A28A350A
      AAA060000702A68A1482311C68B1A0E8AA30053A8105145140C28A28A0028A28
      A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
      A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
      A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
      A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
      A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FFFD9}
    Stretch = True
  end
  object dsAjud: TDataSource
    DataSet = q_Ajud
    Left = 44
  end
  object q_Ajud: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Empresa, I.Filial, I.Codigo, I.[Raz�o Social], TP.DESCR' +
        'ICAO, I.[CGC/CPF], I.Endere�o, I.N�mero, I.Complemento, I.Bairro' +
        ', I.Cidade, I.CEP, I.UF, I.[Inscri��o Estadual]'
      
        'FROM (Parametros AS P INNER JOIN Ajudantes AS I ON P.Filial = I.' +
        'Filial AND P.Empresa = I.Empresa) LEFT JOIN TAB_PAIS AS TP ON I.' +
        'Pa�s = TP.CODIGO'
      'ORDER BY I.[Raz�o Social]')
    Left = 14
    object q_AjudEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_AjudFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_AjudCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_AjudRazoSocial: TStringField
      FieldName = 'Raz�o Social'
      Size = 60
    end
    object q_AjudDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object q_AjudCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object q_AjudEndereo: TStringField
      FieldName = 'Endere�o'
      Size = 40
    end
    object q_AjudNmero: TStringField
      FieldName = 'N�mero'
      Size = 6
    end
    object q_AjudComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object q_AjudBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object q_AjudCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object q_AjudCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object q_AjudUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object q_AjudInscrioEstadual: TStringField
      FieldName = 'Inscri��o Estadual'
      Size = 15
    end
  end
end
