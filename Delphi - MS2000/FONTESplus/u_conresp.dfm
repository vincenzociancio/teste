object f_resp: Tf_resp
  Left = 52
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Processos Sob sua Responsabilidade'
  ClientHeight = 302
  ClientWidth = 693
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
  object DBGrid3: TDBGrid
    Left = 0
    Top = 0
    Width = 693
    Height = 265
    DataSource = ds_qresp
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Código'
        Title.Caption = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razão Social'
        Title.Caption = 'Cliente'
        Width = 256
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Status do Processo'
        Width = 343
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 616
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Fecha'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object q_resp: TQuery
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Responsavel_Empresa, Processos.Código, Importad' +
        'ores.[Razão Social], Tipos_status_processos.CODIGO, Tipos_status' +
        '_processos.DESCRICAO'
      
        'FROM ((Parametros INNER JOIN Processos ON (Parametros.Filial = P' +
        'rocessos.Filial) AND (Parametros.Empresa = Processos.Empresa)) I' +
        'NNER JOIN Tipos_status_processos ON Processos.Status = Tipos_sta' +
        'tus_processos.CODIGO) INNER JOIN Importadores ON (Processos.Impo' +
        'rtador = Importadores.Codigo) AND (Processos.Filial = Importador' +
        'es.Filial) AND (Processos.Empresa = Importadores.Empresa)'
      'WHERE (((Processos.Responsavel_Empresa)=:qusuario))'
      'ORDER BY Tipos_status_processos.CODIGO;')
    Left = 280
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'qusuario'
        ParamType = ptUnknown
        Value = 'DIOGO'
      end>
    object q_respResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object q_respCdigo: TStringField
      FieldName = 'Código'
      Size = 8
    end
    object q_respRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object q_respCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object q_respDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object ds_qresp: TDataSource
    DataSet = q_resp
    Left = 288
    Top = 16
  end
end
