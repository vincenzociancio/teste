object f_usuresp: Tf_usuresp
  Left = 192
  Top = 114
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Habilitação de Usuários por Responsáveis de Processo'
  ClientHeight = 494
  ClientWidth = 456
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 2
    Width = 74
    Height = 13
    Caption = 'Responsável'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 14
    Top = 63
    Width = 303
    Height = 13
    Caption = 'Usuários Habilitados (Duplo Click Habilita/Desabilita)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 433
    Height = 401
    DataSource = ds_qusuresp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome_Completo'
        Title.Alignment = taCenter
        Title.Caption = 'Usuário'
        Width = 338
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Habilitado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object DBG_USU: TDBGrid
    Left = 10
    Top = 18
    Width = 433
    Height = 34
    DataSource = ds_qusu
    Options = [dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome_Completo'
        Width = 400
        Visible = True
      end>
  end
  object Q_USU: TQuery
    AfterOpen = Q_USUAfterScroll
    AfterScroll = Q_USUAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      '  Usuarios.Usuario, '
      '  Usuarios.Nome_Completo, '
      '  Usuarios.Supervisor, '
      '  Usuarios.Responsavel, '
      '  Usuarios.SupervisorC, '
      '  Usuarios.ResponsavelC, '
      '  case Responsavel '
      #9'when 1 then'
      #9#9#39'SIM'#39
      #9'else'
      #9#9#39'NAO'#39
      '  end as APARECE'
      'FROM Usuarios'
      ''
      'WHERE '
      #9'( (Usuarios.Supervisor = :QSUPO AND Usuarios.Responsavel =1) '
      
        #9'OR (Usuarios.SupervisorC = :QSUPC AND Usuarios.ResponsavelC = 1' +
        ') '
      
        #9'OR (Usuarios.Usuario = :QUSU AND ( Usuarios.Responsavel=1 OR Us' +
        'uarios.ResponsavelC=1) ) )'
      #9
      'ORDER BY Usuarios.Nome_Completo;')
    Left = 160
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'QSUPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'QSUPC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'QUSU'
        ParamType = ptInput
      end>
    object Q_USUUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object Q_USUNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object Q_USUSupervisor: TStringField
      FieldName = 'Supervisor'
      FixedChar = True
      Size = 10
    end
    object Q_USUResponsavel: TIntegerField
      FieldName = 'Responsavel'
    end
    object Q_USUSupervisorC: TStringField
      FieldName = 'SupervisorC'
      FixedChar = True
      Size = 10
    end
    object Q_USUResponsavelC: TIntegerField
      FieldName = 'ResponsavelC'
    end
    object Q_USUAPARECE: TStringField
      FieldName = 'APARECE'
      FixedChar = True
      Size = 3
    end
  end
  object q_usuresp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios_Resp_habilitados.Usuarios, Usuarios_Resp_habilit' +
        'ados.Usuarios_HABILITADO, Usuarios.Nome_Completo, '
      'Case Usuarios_Resp_habilitados.Habilitado '
      '  when 0 then '#39'NAO'#39
      '  when 1 then '#39'SIM'#39
      'end as Habilitado'
      
        'FROM Usuarios_Resp_habilitados INNER JOIN Usuarios ON Usuarios_R' +
        'esp_habilitados.Usuarios_HABILITADO = Usuarios.Usuario'
      
        'WHERE ( ((Usuarios_Resp_habilitados.Usuarios)=:qusu) AND Usuario' +
        's.nivel<>'#39'0'#39' AND Usuarios.nivel<>'#39'X'#39')'
      
        'ORDER BY  Usuarios_Resp_habilitados.Habilitado,Usuarios.Nome_Com' +
        'pleto')
    Left = 248
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'qusu'
        ParamType = ptUnknown
        Value = 'FERNANDA'
      end>
    object q_usurespUsuarios: TStringField
      FieldName = 'Usuarios'
      FixedChar = True
      Size = 10
    end
    object q_usurespUsuarios_HABILITADO: TStringField
      FieldName = 'Usuarios_HABILITADO'
      FixedChar = True
      Size = 10
    end
    object q_usurespNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object q_usurespHabilitado: TStringField
      FieldName = 'Habilitado'
      FixedChar = True
      Size = 3
    end
  end
  object ds_qusu: TDataSource
    DataSet = Q_USU
    Left = 208
    Top = 128
  end
  object ds_qusuresp: TDataSource
    DataSet = q_usuresp
    Left = 272
    Top = 128
  end
  object t_usuresp: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Usuarios;Usuarios_HABILITADO'
    MasterFields = 'Usuarios;Usuarios_HABILITADO'
    MasterSource = ds_qusuresp
    TableName = 'Usuarios_Resp_habilitados'
    Left = 328
    Top = 104
    object t_usurespUsuarios: TStringField
      FieldName = 'Usuarios'
      FixedChar = True
      Size = 10
    end
    object t_usurespUsuarios_HABILITADO: TStringField
      FieldName = 'Usuarios_HABILITADO'
      FixedChar = True
      Size = 10
    end
    object t_usurespHabilitado: TIntegerField
      FieldName = 'Habilitado'
    end
  end
end
