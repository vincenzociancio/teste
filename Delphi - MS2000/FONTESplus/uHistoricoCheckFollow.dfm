object frmHistoricoCheckFollow: TfrmHistoricoCheckFollow
  Left = 352
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Histórico de Check de Follow-Up'
  ClientHeight = 473
  ClientWidth = 663
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 33
    Align = alTop
    Color = clGray
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 176
      Height = 13
      Caption = 'Entre com número do processo'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 312
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtProcesso: TMaskEdit
      Left = 200
      Top = 6
      Width = 89
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = edtProcessoChange
    end
    object edtAno: TSpinEdit
      Left = 344
      Top = 6
      Width = 89
      Height = 22
      MaxLength = 4
      MaxValue = 2999
      MinValue = 2000
      TabOrder = 1
      Value = 2000
    end
    object btnAtualizar: TBitBtn
      Left = 440
      Top = 5
      Width = 105
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 2
      OnClick = edtProcessoChange
    end
  end
  object dbGridMain: TDBGrid
    Left = 0
    Top = 33
    Width = 663
    Height = 399
    Align = alClient
    BorderStyle = bsNone
    DataSource = dtsMain
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Semana'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ano'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_completo'
        Width = 362
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 663
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 552
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkClose
    end
  end
  object dtsMain: TDataSource
    DataSet = qryMain
    Left = 456
    Top = 80
  end
  object qryMain: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' [Data]'
      ' ,[Semana]'
      ' ,nome_completo'
      ' ,[Ano]'
      'FROM '
      ' FollowUp_Check'
      ' inner join usuarios on FK_Usuario = usuario'
      'where  [FK_Processo]=:Processo and Ano=:Ano'
      'Order by [Data] desc ')
    Left = 400
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '00017/12'
      end
      item
        DataType = ftString
        Name = 'Ano'
        ParamType = ptUnknown
        Value = '2011'
      end>
    object qryMainData: TDateTimeField
      FieldName = 'Data'
    end
    object qryMainSemana: TIntegerField
      FieldName = 'Semana'
    end
    object qryMainAno: TStringField
      FieldName = 'Ano'
      FixedChar = True
      Size = 4
    end
    object qryMainnome_completo: TStringField
      DisplayLabel = 'Usuário'
      FieldName = 'nome_completo'
      FixedChar = True
      Size = 45
    end
  end
end
