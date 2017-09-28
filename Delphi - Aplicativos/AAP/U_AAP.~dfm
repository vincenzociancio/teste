object frmAAP: TfrmAAP
  Left = 381
  Top = 183
  BorderStyle = bsSingle
  Caption = 'AAP - Aviso de Acompanhamento de Processos por Responsável'
  ClientHeight = 397
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 32
    Align = alTop
    Caption = 'AAP - Aviso de Acompanhamento de Processos por Responsável'
    Color = 80517440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlLog: TPanel
    Left = 0
    Top = 32
    Width = 672
    Height = 365
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 16
    TabOrder = 1
    object reProcessa: TRichEdit
      Left = 16
      Top = 16
      Width = 640
      Height = 333
      Align = alClient
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
      OnChange = reProcessaChange
    end
  end
  object DB_MSCOMEX: TDatabase
    AliasName = 'A_MS2000'
    DatabaseName = 'DBNMSCOMEX'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    Left = 8
    Top = 8
  end
  object qrUsuarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT * FROM Emails_avisos WHERE Ativo = 1 AND CCo = 1 AND Tipo' +
        ' = :Tipo')
    Left = 136
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    object qrUsuariosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Emails_avisos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrUsuariosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Emails_avisos.Filial'
      FixedChar = True
      Size = 4
    end
    object qrUsuariosImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Importador'
      FixedChar = True
      Size = 4
    end
    object qrUsuariosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Tipo'
      FixedChar = True
      Size = 8
    end
    object qrUsuariosEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrUsuariosNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrUsuariosParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrUsuariosHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
    object qrUsuariosPlataforma: TStringField
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Emails_avisos.Plataforma'
      FixedChar = True
      Size = 100
    end
    object qrUsuariosPara: TBooleanField
      FieldName = 'Para'
      Origin = 'DBNMSCOMEX.Emails_avisos.Para'
    end
    object qrUsuariosCc: TBooleanField
      FieldName = 'Cc'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cc'
    end
    object qrUsuariosCCo: TBooleanField
      FieldName = 'CCo'
      Origin = 'DBNMSCOMEX.Emails_avisos.CCo'
    end
    object qrUsuariosAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Ativo'
    end
  end
  object qrParametros: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Endereco_ftp, Usuario_ftp, Senha_ftp, Ho' +
        'st, Host_SMTP, Porta_SMTP, Usuario_SMTP, Senha_SMTP, KeyCrypt'
      'FROM Parametros')
    Left = 72
    Top = 8
    object qrParametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros.Empresa'
      Size = 4
    end
    object qrParametrosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros.Filial'
      Size = 4
    end
    object qrParametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Origin = 'DBNMSCOMEX.Parametros.Endereco_ftp'
      Size = 30
    end
    object qrParametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Origin = 'DBNMSCOMEX.Parametros.Usuario_ftp'
      Size = 30
    end
    object qrParametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Origin = 'DBNMSCOMEX.Parametros.Senha_ftp'
      Size = 16
    end
    object qrParametrosHost: TStringField
      FieldName = 'Host'
      Origin = 'DBNMSCOMEX.Parametros.Host'
      Size = 15
    end
    object qrParametrosHost_SMTP: TStringField
      FieldName = 'Host_SMTP'
      Origin = 'DBNMSCOMEX.Parametros.Host_smtp'
      Size = 15
    end
    object qrParametrosPorta_SMTP: TSmallintField
      FieldName = 'Porta_SMTP'
      Origin = 'DBNMSCOMEX.Parametros.Porta_smtp'
    end
    object qrParametrosUsuario_SMTP: TStringField
      FieldName = 'Usuario_SMTP'
      Origin = 'DBNMSCOMEX.Parametros.Usuario_smtp'
      Size = 30
    end
    object qrParametrosSenha_SMTP: TStringField
      FieldName = 'Senha_SMTP'
      Origin = 'DBNMSCOMEX.Parametros.Senha_smtp'
      Size = 16
    end
    object qrParametrosKeyCrypt: TStringField
      FieldName = 'KeyCrypt'
      Origin = 'DBNMSCOMEX.Parametros.keycrypt'
      Size = 255
    end
  end
  object alAAP: TActionList
    Left = 40
    Top = 8
    object acInicializa: TAction
      Caption = 'Inicializa o APP'
      Checked = True
      OnExecute = acInicializaExecute
    end
    object acGeraEmail: TAction
      Caption = 'Gera Email'
      OnExecute = acGeraEmailExecute
    end
    object acProcessa: TAction
      Caption = 'Processa Dados'
    end
    object acEnviaEmail: TAction
      Caption = 'Envia Documentos por Email'
      OnExecute = acEnviaEmailExecute
    end
    object acFinaliza: TAction
      Caption = 'Finaliza o FAut'
      OnExecute = acFinalizaExecute
    end
  end
  object qrAAP: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT U.Nome_Completo, TS.DESCRICAO AS Status, P.Codigo AS REF_' +
        'MS, I.Razao_Social, US.Nome_Completo AS NomeSupervisor, US.Email' +
        ' AS EmailSupervisor'
      
        'FROM (((Importadores AS I INNER JOIN Processos AS P ON (I.Codigo' +
        ' = P.Importador) AND (I.Filial = P.Filial) AND (I.Empresa = P.Em' +
        'presa)) INNER JOIN Usuarios AS U ON (P.Responsavel_Empresa = U.U' +
        'suario) AND (P.Filial = U.Filial) AND (P.Empresa = U.Empresa)) I' +
        'NNER JOIN Tipos_status_processos AS TS ON P.Status = TS.CODIGO) ' +
        'LEFT JOIN Usuarios AS US ON (U.Empresa = US.Empresa) AND (U.Fili' +
        'al = US.Filial) AND (U.Supervisor = US.Usuario)'
      'WHERE P.Status <= "04"'
      
        'ORDER BY U.Nome_Completo, TS.DESCRICAO, I.Razao_Social, P.Data, ' +
        'P.Codigo')
    Left = 200
    Top = 8
    object qrAAPNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrAAPStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 100
    end
    object qrAAPREF_MS: TStringField
      FieldName = 'REF_MS'
      FixedChar = True
      Size = 8
    end
    object qrAAPRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrAAPNomeSupervisor: TStringField
      FieldName = 'NomeSupervisor'
      FixedChar = True
      Size = 45
    end
    object qrAAPEmailSupervisor: TStringField
      FieldName = 'EmailSupervisor'
      FixedChar = True
      Size = 50
    end
  end
  object qrFollow: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT F.Data AS Data, F.Hora AS Hora, E.Descricao AS Evento, O.' +
        'Descricao AS Obs'
      
        'FROM (FollowUp AS F LEFT JOIN Eventos AS E ON (F.Codevento = [E]' +
        '.Codigo)) LEFT JOIN [Obs_Eventos] AS O ON (F.Codobs = O.Codigo) ' +
        'AND (F.Codevento = O.Evento) '
      'WHERE F.Processo = :proc'
      'ORDER BY F.Data DESC, F.Hora DESC, F.Sequencial DESC')
    Left = 232
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrFollowData: TDateTimeField
      FieldName = 'Data'
    end
    object qrFollowHora: TStringField
      FieldName = 'Hora'
      Size = 255
    end
    object qrFollowEvento: TStringField
      FieldName = 'Evento'
      Size = 255
    end
    object qrFollowObs: TStringField
      FieldName = 'Obs'
      Size = 255
    end
  end
  object qrEnviaEmail: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT U.Nome_Completo, U.Email'
      
        'FROM Emails_avisos_MS2000 AS E INNER JOIN Usuarios AS U ON E.Usu' +
        'ario = U.Usuario AND E.Filial = U.Filial AND E.Empresa = U.Empre' +
        'sa'
      'WHERE E.Empresa = :emp AND E.Filial = :filial AND E.Tipo = :tipo')
    Left = 168
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qrEnviaEmailNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object qrEnviaEmailEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
  end
  object tbEmailAuto: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Email_Auto'
    Left = 104
    Top = 8
    object tbEmailAutoCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object tbEmailAutoPrograma: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 5
    end
    object tbEmailAutoAssunto: TStringField
      FieldName = 'Assunto'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoTitulo: TStringField
      FieldName = 'Titulo'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoDe: TStringField
      FieldName = 'De'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoPara: TStringField
      FieldName = 'Para'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCCO: TStringField
      FieldName = 'CCO'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoBody: TMemoField
      FieldName = 'Body'
      BlobType = ftMemo
    end
    object tbEmailAutoAnexo: TStringField
      FieldName = 'Anexo'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoHTML: TIntegerField
      FieldName = 'HTML'
    end
    object tbEmailAutoData: TDateTimeField
      FieldName = 'Data'
    end
    object tbEmailAutoHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  object tmIniciar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmIniciarTimer
    Left = 40
    Top = 40
  end
end
