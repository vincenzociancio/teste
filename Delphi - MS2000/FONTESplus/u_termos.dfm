object f_termos: Tf_termos
  Left = 202
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Termos de Responsabilidade'
  ClientHeight = 402
  ClientWidth = 536
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
    Width = 536
    Height = 41
    Align = alTop
    Caption = 'Vencimento dos Termos de Responsabilidade'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 536
    Height = 152
    Align = alTop
    DataSource = ds_qtermos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Caption = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Importador'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_TR'
        Title.Caption = 'Nº TR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Vencimento_TR'
        Title.Caption = 'Vencimento'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qdias'
        Title.Caption = 'Dias a Vencer'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 193
    Width = 536
    Height = 41
    Align = alTop
    Caption = 'Termos de Responsabilidade sem Data de Vencimento'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 234
    Width = 536
    Height = 152
    Align = alTop
    DataSource = ds_qtermossemdata
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Caption = 'Processo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Importador'
        Width = 292
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_TR'
        Title.Caption = 'Nº TR'
        Width = 152
        Visible = True
      end>
  end
  object ds_qtermos: TDataSource
    DataSet = q_termos
    Left = 180
    Top = 228
  end
  object q_termos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Im' +
        'portadores.Razao_Social, Processos.Numero_TR, Processos.Data_Ven' +
        'cimento_TR, datediff(day,[data_vencimento_tr],getdate()) AS qdia' +
        's'
      
        'FROM Processos INNER JOIN Importadores ON (Processos.Empresa = I' +
        'mportadores.Empresa) AND (Processos.Filial = Importadores.Filial' +
        ') AND (Processos.Importador = Importadores.Codigo)'
      
        'WHERE (((Processos.Empresa)=:empresa) AND ((Processos.Filial)=:f' +
        'ilial) AND ((Processos.Numero_TR) Is Not Null) AND ((Processos.d' +
        'ata_baixa_TR) Is Null) AND (((datediff(day,[data_vencimento_tr],' +
        'getdate())))>=0))'
      'ORDER BY Processos.Data_Vencimento_TR;')
    Left = 180
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
    object q_termosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_termosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_termosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object q_termosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_termosNumero_TR: TStringField
      FieldName = 'Numero_TR'
      FixedChar = True
    end
    object q_termosData_Vencimento_TR: TDateTimeField
      FieldName = 'Data_Vencimento_TR'
    end
    object q_termosqdias: TIntegerField
      FieldName = 'qdias'
    end
  end
  object q_termossemdata: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Im' +
        'portadores.Razao_Social, Processos.Numero_TR, Processos.Data_ven' +
        'cimento_TR, datediff(day,[data_vencimento_tr],getdate()) AS qdia' +
        's, Processos.Data_Baixa_TR'
      
        'FROM Processos INNER JOIN Importadores ON (Processos.Empresa = I' +
        'mportadores.Empresa) AND (Processos.Filial = Importadores.Filial' +
        ') AND (Processos.Importador = Importadores.Codigo)'
      
        'WHERE (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=:' +
        'qfilial) AND ((Processos.Numero_TR)<>"") AND ((Processos.Data_ve' +
        'ncimento_TR) Is Null) AND ((Processos.Data_Baixa_TR) Is Null))'
      'ORDER BY Processos.Numero_TR;')
    Left = 208
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
      end>
    object q_termossemdataEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_termossemdataFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_termossemdataCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object q_termossemdataRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_termossemdataNumero_TR: TStringField
      FieldName = 'Numero_TR'
      FixedChar = True
    end
    object q_termossemdataData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object q_termossemdataqdias: TIntegerField
      FieldName = 'qdias'
    end
    object q_termossemdataData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
  end
  object ds_qtermossemdata: TDataSource
    DataSet = q_termossemdata
    Left = 208
    Top = 228
  end
end
