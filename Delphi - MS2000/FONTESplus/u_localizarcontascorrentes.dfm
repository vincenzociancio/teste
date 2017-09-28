object f_localizarcontascorrentes: Tf_localizarcontascorrentes
  Left = 595
  Top = 240
  ActiveControl = e_chave
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 269
  ClientWidth = 233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object p_localizar: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 269
    Align = alClient
    BevelWidth = 4
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 184
      Width = 61
      Height = 13
      Caption = 'Pesquisa por'
    end
    object Label2: TLabel
      Left = 4
      Top = 4
      Width = 225
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Localizar Movimentação'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rg_localiza: TRadioGroup
      Left = 56
      Top = 32
      Width = 121
      Height = 145
      Caption = 'Localizar por: '
      ItemIndex = 0
      Items.Strings = (
        'Data'
        'Doc'
        'Histórico'
        'Valor')
      TabOrder = 0
      OnClick = rg_localizaClick
    end
    object e_chave: TEdit
      Left = 16
      Top = 200
      Width = 201
      Height = 21
      TabOrder = 1
      OnChange = e_chaveChange
    end
    object b_okloc: TBitBtn
      Left = 32
      Top = 232
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = b_oklocClick
      Kind = bkOK
    end
    object b_fechaloc: TBitBtn
      Left = 128
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = b_fechalocClick
      Kind = bkCancel
    end
    object btnAnterior: TButton
      Left = 184
      Top = 202
      Width = 16
      Height = 18
      Hint = 'Anterior'
      Caption = '<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
      OnClick = btnAnteriorClick
    end
    object btnProximo: TButton
      Left = 200
      Top = 202
      Width = 16
      Height = 18
      Hint = 'Próximo'
      Caption = '>'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      OnClick = btnProximoClick
    end
  end
end
