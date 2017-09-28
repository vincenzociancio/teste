object frmGrafico: TfrmGrafico
  Left = 702
  Top = 496
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 179
  ClientWidth = 282
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbchCheck: TDBChart
    Left = 9
    Top = 10
    Width = 265
    Height = 161
    AllowPanning = pmNone
    AllowZoom = False
    AnimatedZoom = True
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = clWhite
    BackWall.Pen.Visible = False
    BottomWall.Brush.Color = clWhite
    Gradient.EndColor = clSilver
    Gradient.Visible = True
    LeftWall.Brush.Color = clWhite
    Title.Text.Strings = (
      'Gráfico - Check Follow')
    AxisVisible = False
    BackColor = clWhite
    ClipPoints = False
    Frame.Visible = False
    Legend.Alignment = laBottom
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.Zoom = 150
    View3DOptions.ZoomText = False
    View3DWalls = False
    TabOrder = 0
    Visible = False
    Anchors = [akRight, akBottom]
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsPercent
      Marks.Visible = True
      SeriesColor = clRed
      Circled = True
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1
      PieValues.Order = loNone
    end
  end
end
