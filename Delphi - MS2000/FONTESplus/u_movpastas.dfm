object f_movpastas: Tf_movpastas
  Left = 371
  Top = 167
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimentação de Pastas'
  ClientHeight = 348
  ClientWidth = 355
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
  object Label1: TLabel
    Left = 8
    Top = 18
    Width = 68
    Height = 13
    Caption = 'Digite a pasta:'
  end
  object SpeedButton1: TSpeedButton
    Left = 156
    Top = 11
    Width = 23
    Height = 22
    Caption = 'OK'
    OnClick = SpeedButton1Click
  end
  object me_processo: TMaskEdit
    Left = 81
    Top = 11
    Width = 72
    Height = 21
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 337
    Height = 305
    DataSource = ds_qmov
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'De_usuario'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Para_usuario'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Width = 51
        Visible = True
      end>
  end
  object q_mov: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Pastas.movimento, Movimentacao_Pastas.Proces' +
        'so, Movimentacao_Pastas.De_usuario, Movimentacao_Pastas.Para_usu' +
        'ario, Movimentacao_Pastas.Data, Cast(Movimentacao_Pastas.Hora as' +
        ' Time(0)) as Hora'
      'FROM Movimentacao_Pastas'
      
        'GROUP BY Movimentacao_Pastas.movimento, Movimentacao_Pastas.Proc' +
        'esso, Movimentacao_Pastas.De_usuario, Movimentacao_Pastas.Para_u' +
        'suario, Movimentacao_Pastas.Data, Movimentacao_Pastas.Hora'
      'HAVING (((Movimentacao_Pastas.Processo)=:qprocesso))'
      
        'ORDER BY Movimentacao_Pastas.movimento, Movimentacao_Pastas.Data' +
        ', Movimentacao_Pastas.Hora;')
    Left = 296
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '01216/06'
      end>
    object q_movmovimento: TAutoIncField
      FieldName = 'movimento'
    end
    object q_movProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_movDe_usuario: TStringField
      FieldName = 'De_usuario'
      FixedChar = True
      Size = 10
    end
    object q_movPara_usuario: TStringField
      FieldName = 'Para_usuario'
      FixedChar = True
      Size = 10
    end
    object q_movData: TDateTimeField
      FieldName = 'Data'
    end
    object q_movHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 16
    end
  end
  object ds_qmov: TDataSource
    DataSet = q_mov
    Left = 248
    Top = 8
  end
end
