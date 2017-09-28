object f_liberanum: Tf_liberanum
  Left = 42
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Liberação de Numerários'
  ClientHeight = 348
  ClientWidth = 738
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 738
    Height = 348
    Hint = 'Duplo Click para liberar Numerário'
    Align = alClient
    DataSource = ds_qlibera
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razão Social'
        Title.Caption = 'Razão Social - Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Descrição Numerário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Usuario_Previsao'
        Title.Caption = 'Usuário Solicitante'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Previsao'
        Title.Caption = 'Data Previsão'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Previsao'
        Title.Caption = 'Valor Previsão'
        Visible = True
      end>
  end
  object q_libera: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Empresa, Numerarios_Processos.Filial' +
        ', Numerarios_Processos.Processo, Numerarios_Processos.REG, Impor' +
        'tadores.[Razão Social], Tipos_Numerario.Descricao, Numerarios_Pr' +
        'ocessos.Usuario_Previsao, Numerarios_Processos.Data_Previsao, Nu' +
        'merarios_Processos.Valor_Previsao, Numerarios_Processos.Previsao' +
        '_solicitada, Numerarios_Processos.Ok_Previsao_financeiro'
      
        'FROM Parametros INNER JOIN (((Numerarios_Processos INNER JOIN Pr' +
        'ocessos ON (Numerarios_Processos.Processo = Processos.Código) AN' +
        'D (Numerarios_Processos.Filial = Processos.Filial) AND (Numerari' +
        'os_Processos.Empresa = Processos.Empresa)) INNER JOIN Importador' +
        'es ON (Processos.Importador = Importadores.Codigo) AND (Processo' +
        's.Filial = Importadores.Filial) AND (Processos.Empresa = Importa' +
        'dores.Empresa)) INNER JOIN Tipos_Numerario ON (Numerarios_Proces' +
        'sos.Filial = Tipos_Numerario.Filial) AND (Numerarios_Processos.E' +
        'mpresa = Tipos_Numerario.Empresa) AND (Numerarios_Processos.Nume' +
        'rario = Tipos_Numerario.Codigo)) ON (Parametros.Filial = Numerar' +
        'ios_Processos.Filial) AND (Parametros.Empresa = Numerarios_Proce' +
        'ssos.Empresa)'
      
        'WHERE (((Numerarios_Processos.Previsao_solicitada)="SIM") AND ((' +
        'Numerarios_Processos.Ok_Previsao_financeiro)="NÃO"))'
      
        'ORDER BY Numerarios_Processos.Processo, Numerarios_Processos.Dat' +
        'a_Previsao;')
    Left = 176
    Top = 28
    object q_liberaProcesso: TStringField
      DisplayWidth = 10
      FieldName = 'Processo'
      Size = 8
    end
    object q_liberaRazoSocial: TStringField
      DisplayWidth = 32
      FieldName = 'Razão Social'
      Size = 60
    end
    object q_liberaDescricao: TStringField
      DisplayWidth = 28
      FieldName = 'Descricao'
      Size = 50
    end
    object q_liberaUsuario_Previsao: TStringField
      DisplayWidth = 17
      FieldName = 'Usuario_Previsao'
      Size = 10
    end
    object q_liberaData_Previsao: TDateTimeField
      DisplayWidth = 22
      FieldName = 'Data_Previsao'
    end
    object q_liberaValor_Previsao: TFloatField
      DisplayWidth = 14
      FieldName = 'Valor_Previsao'
      DisplayFormat = '###,###,##0.00'
    end
    object q_liberaPrevisao_solicitada: TStringField
      DisplayWidth = 18
      FieldName = 'Previsao_solicitada'
      Size = 3
    end
    object q_liberaOk_Previsao_financeiro: TStringField
      DisplayWidth = 23
      FieldName = 'Ok_Previsao_financeiro'
      Size = 3
    end
    object q_liberaEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_liberaFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_liberaREG: TAutoIncField
      FieldName = 'REG'
    end
  end
  object ds_qlibera: TDataSource
    DataSet = q_libera
    Left = 196
    Top = 48
  end
  object t_numerarios: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    MasterFields = 'Empresa;Filial;Processo;REG'
    MasterSource = ds_qlibera
    TableName = 'Numerarios_Processos'
    Left = 268
    Top = 4
    object t_numerariosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_numerariosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_numerariosProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object t_numerariosREG: TAutoIncField
      FieldName = 'REG'
    end
    object t_numerariosNumerario: TStringField
      FieldName = 'Numerario'
      Size = 4
    end
    object t_numerariosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      Size = 10
    end
    object t_numerariosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object t_numerariosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object t_numerariosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      Size = 3
    end
    object t_numerariosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      Size = 3
    end
    object t_numerariosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      Size = 10
    end
    object t_numerariosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object t_numerariosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object t_numerariosContabilizado: TStringField
      FieldName = 'Contabilizado'
      Size = 3
    end
    object t_numerariosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      Size = 10
    end
  end
  object ds_numerarios: TDataSource
    DataSet = t_numerarios
    Left = 284
    Top = 24
  end
  object q_varios: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE Parametros INNER JOIN Numerarios_Processos ON (Parametros' +
        '.Filial = Numerarios_Processos.Filial) AND (Parametros.Empresa =' +
        ' Numerarios_Processos.Empresa) SET Numerarios_Processos.Ok_Previ' +
        'sao_financeiro = :qsit, Numerarios_Processos.Usuario_Financeiro ' +
        '= :qusu'
      'WHERE (((Numerarios_Processos.Processo)=:qprocesso));')
    Left = 264
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'qsit'
        ParamType = ptUnknown
        Value = 'SIM'
      end
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'TESTE'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '02400/01'
      end>
  end
end
