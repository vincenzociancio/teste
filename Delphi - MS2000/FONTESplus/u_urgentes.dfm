object f_urgentes: Tf_urgentes
  Left = 209
  Top = 120
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Processos Urgentes'
  ClientHeight = 409
  ClientWidth = 762
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 33
    Align = alTop
    Caption = 'Processos Urgentes não desembaraçados'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 762
    Height = 154
    Align = alTop
    DataSource = ds_qurg
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Refcli'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Localização da Pasta'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 187
    Width = 762
    Height = 30
    Align = alTop
    Caption = 'Follow Up'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBG_followup: TDBGrid
    Left = 0
    Top = 217
    Width = 762
    Height = 184
    Align = alTop
    DataSource = DS_follow
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qevento'
        Title.Caption = 'Descrição do Evento'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qobs'
        Title.Caption = 'Descrição da Observação'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Obs_especifica'
        Title.Caption = 'Observação Detalhada'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'link'
        Title.Caption = 'Ref. Proc.'
        Visible = True
      end>
  end
  object q_urg: TQuery
    AfterScroll = q_urgAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Razao_Social AS Cliente, Processos.Codigo AS' +
        ' Processo, Processos.Codigo_Cliente AS Refcli, Controle_Pastas.U' +
        'suario AS Localizacao_da_Pasta, Processos.Empresa, Processos.Fil' +
        'ial'
      
        'FROM (Importadores INNER JOIN Processos ON (Importadores.Empresa' +
        ' = Processos.Empresa) AND (Importadores.Filial = Processos.Filia' +
        'l) AND (Importadores.Codigo = Processos.Importador)) INNER JOIN ' +
        'Controle_Pastas ON (Processos.Empresa = Controle_Pastas.Empresa)' +
        ' AND (Processos.Filial = Controle_Pastas.Filial) AND (Processos.' +
        'Codigo = Controle_Pastas.Processo)'
      
        'WHERE (((Processos.Urgente)=1) AND ((Processos.DT_DESEMBARACO) I' +
        's Null));')
    Left = 216
    Top = 96
    object q_urgCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object q_urgProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_urgRefcli: TStringField
      FieldName = 'Refcli'
      Size = 60
    end
    object q_urgLocalizacao_da_Pasta: TStringField
      FieldName = 'Localizacao_da_Pasta'
      Size = 10
    end
    object q_urgEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_urgFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
  end
  object ds_qurg: TDataSource
    DataSet = q_urg
    Left = 240
    Top = 72
  end
  object DS_follow: TDataSource
    DataSet = q_followup
    Left = 456
    Top = 268
  end
  object q_followup: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Fo' +
        'llowUp.Sequencial, FollowUp.Data, FollowUp.Hora, FollowUp.Codeve' +
        'nto, Eventos.Descricao AS qevento, FollowUp.Codobs, Obs_Eventos.' +
        'Descricao AS qobs, FollowUp.Obs_especifica, FollowUp.link, Follo' +
        'wUp.sequencial'
      
        'FROM ((Processos INNER JOIN FollowUp ON (Processos.Codigo = Foll' +
        'owUp.Processo)) LEFT JOIN Eventos ON (FollowUp.Codevento = Event' +
        'os.Codigo)) LEFT JOIN Obs_Eventos ON (FollowUp.Codobs = Obs_Even' +
        'tos.Codigo) AND (FollowUp.Codevento = Obs_Eventos.Evento)  '
      
        'GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, ' +
        'FollowUp.Sequencial, FollowUp.Data, FollowUp.Hora, FollowUp.Code' +
        'vento, Eventos.Descricao, FollowUp.Codobs, Obs_Eventos.Descricao' +
        ', FollowUp.Obs_especifica, FollowUp.link, FollowUp.sequencial'
      
        'HAVING (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=' +
        ':qfilial) AND ((Processos.Codigo)=:qprocesso))'
      
        'ORDER BY Processos.Codigo, FollowUp.Data, FollowUp.Hora, FollowU' +
        'p.sequencial;')
    UpdateMode = upWhereChanged
    Left = 424
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00001152'
      end>
    object q_followupEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_followupFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_followupCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object q_followupSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object q_followupData: TDateTimeField
      FieldName = 'Data'
    end
    object q_followupHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 5
    end
    object q_followupCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object q_followupqevento: TStringField
      FieldName = 'qevento'
      FixedChar = True
      Size = 120
    end
    object q_followupCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object q_followupqobs: TStringField
      FieldName = 'qobs'
      FixedChar = True
      Size = 120
    end
    object q_followupObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object q_followuplink: TStringField
      FieldName = 'link'
      FixedChar = True
      Size = 8
    end
    object q_followupsequencial_1: TAutoIncField
      FieldName = 'sequencial_1'
    end
  end
end
