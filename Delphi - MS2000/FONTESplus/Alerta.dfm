object f_alerta: Tf_alerta
  Left = -4
  Top = -4
  BorderIcons = [biHelp]
  BorderStyle = bsNone
  ClientHeight = 553
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 553
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 41
      Align = alTop
      Caption = 'ALERTA'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 448
      Width = 798
      Height = 104
      Align = alBottom
      Color = clWhite
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 376
        Top = 35
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = BitBtn1Click
        Kind = bkOK
      end
    end
    object RichEdit1: TRichEdit
      Left = 96
      Top = 42
      Width = 633
      Height = 415
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        ''
        'ATENÇÃO!!!'
        ''
        'No momento de REGISTRO da Declaração de Importação (DI) '
        'no Siscomex.'
        ''
        'Se ocorrer algum problema:'
        ' - erro do Siscomex;'
        ' - perda de conexão com o Siscomex;'
        ' - travamento da estação de trabalho e etc.'
        ''
        'Que impossibilite o perfeito registro da DI no Siscomex, '
        ''
        ''
        
          'Favor entrar em contato com sua supervisão, para que seja efetua' +
          'do '
        'o devido acompanhamento, para que não haja a possibilidade de '
        'registrar a DI em duplicidade.'
        ' ')
      ParentFont = False
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 97
      Top = 330
      Width = 609
      Height = 49
      Anchors = []
      BevelOuter = bvNone
      Caption = '*** NÃO TENTAR REGISTRAR NOVAMENTE ***'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
end
