object frmAPA: TfrmAPA
  Left = 203
  Top = 158
  BorderStyle = bsSingle
  Caption = 'APA - Aviso de Processos Abertos'
  ClientHeight = 454
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 32
    Align = alTop
    Caption = 'APA'
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
    Width = 679
    Height = 422
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 16
    Caption = 'AVC'
    TabOrder = 1
    object reProcessa: TRichEdit
      Left = 16
      Top = 16
      Width = 647
      Height = 390
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
  object alAPA: TActionList
    Left = 40
    Top = 8
    object acInicializa: TAction
      Caption = 'Inicializa o APFC'
      Checked = True
      OnExecute = acInicializaExecute
    end
    object acGeraEmail: TAction
      Caption = 'Gera Email'
      OnExecute = acGeraEmailExecute
    end
    object acProcessa: TAction
      Caption = 'acProcessa'
      OnExecute = acEnviaEmailExecute
    end
    object acEnviaEmail: TAction
      Caption = 'Envia Documentos por Email'
      OnExecute = acEnviaEmailExecute
    end
    object acFinaliza: TAction
      Caption = 'Finaliza o APFC'
      OnExecute = acFinalizaExecute
    end
  end
  object qrParametros: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Parametros.Empresa, Filial, Host, Host_SMTP, Porta_SMTP, ' +
        'Usuario_SMTP, Senha_SMTP, F.Descricao'
      
        'FROM Parametros INNER JOIN Filiais AS F ON Parametros.Empresa = ' +
        'F.Codigo_Empresa AND Parametros.Filial = F.Codigo_Filial')
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
    object qrParametrosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Filiais.Descricao'
      Size = 50
    end
  end
  object qrUsuarios: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Email, nome_completo, Email_aviso_oper'
      'FROM Usuarios'
      'WHERE Email_aviso_oper = 1 AND Empresa = :emp AND Filial = :fil')
    Left = 136
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fil'
        ParamType = ptUnknown
      end>
    object qrUsuariosEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
    object qrUsuariosnome_completo: TStringField
      FieldName = 'nome_completo'
      FixedChar = True
      Size = 45
    end
    object qrUsuariosEmail_aviso_oper: TIntegerField
      FieldName = 'Email_aviso_oper'
    end
  end
  object qrEmailAviso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Importador, Email, Nome_completo, Parametros'
      '  FROM Emails_avisos'
      
        'WHERE Ativo = 1 AND Empresa = :emp AND Filial = :filial AND Tipo' +
        ' = :tipo')
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
    object qrEmailAvisoImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Importador'
      Size = 4
    end
    object qrEmailAvisoEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      Size = 50
    end
    object qrEmailAvisoNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      Size = 50
    end
    object qrEmailAvisoParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      Size = 255
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
  object qrAPA: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Codigo, I.Razao_Social, P.Codigo AS REF_MS, P.Codigo_Cl' +
        'iente AS REF_CLIENTE, P.Tipo, TP.DESCRICAO, P.Data'
      
        'FROM (Importadores AS I INNER JOIN Processos AS P ON (I.Empresa ' +
        '= P.Empresa) AND (I.Filial = P.Filial) AND (I.Codigo = P.Importa' +
        'dor)) LEFT JOIN Tipos_de_Processos AS TP ON P.Tipo = TP.CODIGO'
      'WHERE P.Status <= "04" AND DateDiff(day, P.Data, GetDate())=:dia'
      'ORDER BY I.Razao_Social, I.Codigo, P.Data, TP.DESCRICAO'
      ''
      ' ')
    Left = 200
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptUnknown
      end>
    object qrAPACodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrAPARazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrAPAREF_MS: TStringField
      FieldName = 'REF_MS'
      FixedChar = True
      Size = 8
    end
    object qrAPAREF_CLIENTE: TStringField
      FieldName = 'REF_CLIENTE'
      FixedChar = True
      Size = 60
    end
    object qrAPATipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object qrAPADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 35
    end
    object qrAPAData: TDateTimeField
      FieldName = 'Data'
    end
  end
  object tmIniciar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmIniciarTimer
    Left = 40
    Top = 40
  end
  object qrAtuEmailAviso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Emails_avisos SET Parametros = :param'
      'WHERE Empresa = :emp AND Filial = :filial AND Tipo = :tipo'
      'AND Importador = :imp AND Email = :email')
    Left = 168
    Top = 40
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'param'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'imp'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'email'
        ParamType = ptUnknown
      end>
  end
end
