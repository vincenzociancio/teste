object frmHistoricoCheckPorUsuario: TfrmHistoricoCheckPorUsuario
  Left = 125
  Top = 66
  BorderStyle = bsSingle
  Caption = 'Histórico de Check Por Usuário'
  ClientHeight = 675
  ClientWidth = 993
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 33
    Align = alTop
    Color = clGray
    TabOrder = 0
    object Label1: TLabel
      Left = 137
      Top = 10
      Width = 126
      Height = 13
      Caption = 'Selecione um usuário:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 17
      Top = 10
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
    object edtUsers: TDBLookupComboBox
      Left = 272
      Top = 6
      Width = 441
      Height = 21
      KeyField = 'USUARIO'
      ListField = 'NOME'
      ListSource = dtsUsers
      TabOrder = 0
    end
    object btnAtualizar: TBitBtn
      Left = 720
      Top = 4
      Width = 129
      Height = 25
      Caption = 'Atualizar dados'
      TabOrder = 1
      OnClick = btnAtualizarClick
    end
    object edtAno: TSpinEdit
      Left = 57
      Top = 6
      Width = 64
      Height = 22
      MaxLength = 4
      MaxValue = 2999
      MinValue = 2000
      TabOrder = 2
      Value = 2000
    end
    object btnFechar: TBitBtn
      Left = 852
      Top = 4
      Width = 125
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      Kind = bkClose
    end
  end
  object gridDados: TDBGrid
    Left = 0
    Top = 33
    Width = 993
    Height = 216
    Align = alTop
    DataSource = dtsDados
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Color = clBtnFace
        Expanded = False
        FieldName = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clBtnFace
        Expanded = False
        FieldName = 'Semana'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TOTAL_PROCESSOS_UNIVERSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Total de Processos'
        Width = 116
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clGreen
        Expanded = False
        FieldName = 'TOTAL_PROCESSOS_CHECK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Total Checados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 136
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clRed
        Expanded = False
        FieldName = 'FALTANTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Total Faltantes'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clYellow
        Expanded = False
        FieldName = 'PERCENTUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Percentual de "CHECK"'
        Width = 165
        Visible = True
      end>
  end
  object Chart1: TChart
    Left = 0
    Top = 249
    Width = 993
    Height = 426
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    LeftWall.Color = clWhite
    Title.Text.Strings = (
      'Total Processos X Total Checados')
    Align = alClient
    TabOrder = 2
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clGreen
      Title = 'Média Checados'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clWhite
      Title = 'Média Processos'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object dtsUsers: TDataSource
    DataSet = qryUsers
    Left = 800
    Top = 48
  end
  object qryUsers: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' U.Nome_Completo AS '#39'NOME'#39','
      ' U.Usuario'
      'FROM '
      ' FollowUp_Check_Universo FCU'
      
        ' INNER JOIN Usuarios U ON FCU.FK_Usuario = U.Usuario AND U.Ativo' +
        ' = 1'#9
      'GROUP BY '
      ' U.Nome_Completo,'
      ' U.Usuario'
      'ORDER BY '
      ' U.Nome_Completo')
    Left = 688
    Top = 56
  end
  object dtsDados: TDataSource
    DataSet = qryDados
    Left = 224
    Top = 128
  end
  object qryDados: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '#9
      ' FALTANTES = (FCU.Total_Processos - COUNT(FC.FK_Usuario)),'
      
        ' PERCENTUAL = CAST((CAST(COUNT(FC.FK_Usuario) AS FLOAT) / CAST(F' +
        'CU.Total_Processos AS FLOAT))*100 AS DECIMAL(10,2)),'
      ' COUNT(FC.FK_Usuario) AS '#39'TOTAL_PROCESSOS_CHECK'#39','
      ' FCU.Total_Processos AS '#39'TOTAL_PROCESSOS_UNIVERSO'#39','
      ' FCU.Ano,'
      ' FCU.Semana'
      'FROM '
      ' FollowUp_Check_Universo FCU'#9#9
      ' LEFT JOIN FollowUp_Check FC ON '
      
        ' ( FCU.FK_Usuario = FC.FK_Usuario ) AND ( FCU.Ano = FC.Ano) AND ' +
        '( FCU.Semana = FC.Semana )'
      'WHERE '
      ' FCU.FK_Usuario =:Usuario and FCU.Ano =:Ano'
      'GROUP BY '#9#9
      ' FCU.Total_Processos, '
      ' FCU.Ano,'
      ' FCU.Semana'
      'ORDER BY '
      ' FCU.Ano DESC, '
      ' FCU.Semana DESC')
    Left = 288
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'Usuario'
        ParamType = ptUnknown
        Value = 'LFERRAZ'
      end
      item
        DataType = ftUnknown
        Name = 'Ano'
        ParamType = ptUnknown
      end>
    object qryDadosFALTANTES: TIntegerField
      FieldName = 'FALTANTES'
    end
    object qryDadosPERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      OnGetText = qryDadosPERCENTUALGetText
    end
    object qryDadosTOTAL_PROCESSOS_CHECK: TIntegerField
      FieldName = 'TOTAL_PROCESSOS_CHECK'
    end
    object qryDadosTOTAL_PROCESSOS_UNIVERSO: TIntegerField
      FieldName = 'TOTAL_PROCESSOS_UNIVERSO'
    end
    object qryDadosAno: TStringField
      FieldName = 'Ano'
      FixedChar = True
      Size = 4
    end
    object qryDadosSemana: TIntegerField
      FieldName = 'Semana'
    end
  end
  object qryDataMining: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      #9'SELECT '#9
      #9#9'(COUNT(FC.FK_Usuario)) AS '#39'TOTAL_PROCESSOS_CHECK'#39','
      #9#9'AVG(FCU.Total_Processos) AS '#39'TOTAL_PROCESSOS'#39','#9#9
      #9#9'MONTH(FCU.Data) AS '#39'MES'#39','
      #9#9'COUNT(DISTINCT(FCU.Semana)) AS '#39'QTD_SEMANA'#39
      #9'FROM '
      #9#9'FollowUp_Check_Universo FCU'#9#9
      #9#9'LEFT JOIN FollowUp_Check FC ON '
      
        #9#9'( FCU.FK_Usuario = FC.FK_Usuario ) AND ( FCU.Ano = FC.Ano) AND' +
        ' ( FCU.Semana = FC.Semana )'
      #9'WHERE FCU.FK_Usuario =:Usuario AND FCU.Ano =:Ano'
      #9'GROUP BY '#9#9
      #9#9'MONTH(FCU.Data)'#9#9
      #9'ORDER BY MONTH(FCU.Data)')
    Left = 440
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Ano'
        ParamType = ptUnknown
      end>
    object qryDataMiningTOTAL_PROCESSOS_CHECK: TIntegerField
      FieldName = 'TOTAL_PROCESSOS_CHECK'
    end
    object qryDataMiningMES: TIntegerField
      FieldName = 'MES'
    end
    object qryDataMiningTOTAL_PROCESSOS: TIntegerField
      FieldName = 'TOTAL_PROCESSOS'
    end
    object qryDataMiningQTD_SEMANA: TIntegerField
      FieldName = 'QTD_SEMANA'
    end
  end
end
