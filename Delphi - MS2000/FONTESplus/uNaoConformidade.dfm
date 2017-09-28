object frmNaoConformidade: TfrmNaoConformidade
  Left = 670
  Top = 227
  BorderStyle = bsSingle
  Caption = 'Não Conformidade'
  ClientHeight = 524
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 15
    Height = 13
    Caption = 'N°:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 271
    Top = 46
    Width = 60
    Height = 13
    Caption = 'Tipo de NC: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 82
    Top = 16
    Width = 123
    Height = 13
    Caption = 'Responsável pela Identif.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 81
    Width = 29
    Height = 13
    Caption = 'Local:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 386
    Top = 15
    Width = 26
    Height = 13
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 456
    Width = 65
    Height = 13
    Caption = 'Responsável:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 379
    Top = 458
    Width = 26
    Height = 13
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblRespIdentif: TLabel
    Left = 209
    Top = 16
    Width = 84
    Height = 13
    Caption = 'XXXXXXXXXXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblData: TLabel
    Left = 418
    Top = 15
    Width = 49
    Height = 13
    Caption = 'XXXXXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblNumero: TLabel
    Left = 35
    Top = 16
    Width = 35
    Height = 13
    Caption = 'XXXXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblNorma: TLabel
    Left = 13
    Top = 47
    Width = 96
    Height = 13
    Caption = 'Requisito da Norma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pnlConformidade: TPanel
    Left = -1
    Top = 118
    Width = 542
    Height = 20
    Caption = 'Descrição da não-conformidade (Fato, Requisito e Evidência):'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlDisposicao: TPanel
    Left = 0
    Top = 321
    Width = 541
    Height = 20
    Caption = 'Descrição da disposição (Ação imediata):'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edtResponsavel: TEdit
    Left = 80
    Top = 452
    Width = 289
    Height = 21
    TabOrder = 2
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 486
    Width = 540
    Height = 38
    Align = alBottom
    TabOrder = 3
    object btnIncluir: TBitBtn
      Left = 13
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
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
    object btnSair: TBitBtn
      Left = 456
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object edtNorma: TEdit
    Left = 112
    Top = 43
    Width = 155
    Height = 21
    TabOrder = 4
  end
  object rdgrpReal_potencial: TRadioGroup
    Left = 258
    Top = 72
    Width = 167
    Height = 30
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Real '
      'Potencial')
    ParentFont = False
    TabOrder = 5
  end
  object cmbLocal: TComboBox
    Left = 54
    Top = 77
    Width = 180
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Operacional'
      'RH'
      'Financeiro'
      'Gestão'
      'Informática'
      'Comercial'
      'SMS'
      'Compras')
  end
  object cmbTipo: TComboBox
    Left = 336
    Top = 40
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object edtDtDisposicao: TMaskEdit
    Left = 409
    Top = 453
    Width = 120
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 8
    Text = '  /  /    '
    OnKeyPress = edtDtDisposicaoKeyPress
  end
  object MmConformidade: TMemo
    Left = -1
    Top = 136
    Width = 541
    Height = 186
    TabOrder = 9
  end
  object MmDisposicao: TMemo
    Left = -1
    Top = 339
    Width = 541
    Height = 109
    TabOrder = 10
  end
  object qrNaoConformidade: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from nao_conformidade')
    Left = 280
    Top = 152
    object qrNaoConformidadeSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
  end
  object InsertNaoConformidade: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [MS2000].[dbo].[Nao_Conformidade]'
      '           ([Responsavel_identif]'
      '           ,[data]'
      '           ,[Requisito_norma]'
      '           ,[Local]'
      '           ,[Real_Potencial]'
      '           ,[Descricao_conformidade]'
      '           ,[Descricao_disposicao]'
      '           ,[Resp_disposicao]'
      '           ,[Data_diposicao]'
      '           ,[tipo_NC])'
      '     VALUES'
      '        (:Responsavel'
      '           ,:data'
      '           ,:norma'
      '           ,:local'
      '           ,:Real_potencial'
      '           ,:conformidade'
      '           ,:disposicao'
      '           ,:Resp_disposicao'
      '           ,:Data_diposicao'
      '           ,:tipo_NC)')
    Left = 176
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Responsavel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'norma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'local'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Real_potencial'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'conformidade'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'disposicao'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Resp_disposicao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data_diposicao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_NC'
        ParamType = ptUnknown
      end>
  end
  object dsTipo_NC: TDataSource
    DataSet = qrTipo_NC
    Left = 304
    Top = 248
  end
  object qrTipo_NC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      '  FROM Tipos_NC')
    Left = 264
    Top = 248
    object qrTipo_NCCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 3
    end
    object qrTipo_NCDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 100
    end
  end
  object qrUsuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Usuarios where Usuario = :usu')
    Left = 160
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrUsuarioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
end
