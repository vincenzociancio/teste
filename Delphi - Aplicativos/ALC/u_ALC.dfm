object frmALC: TfrmALC
  Left = 525
  Top = 182
  Width = 755
  Height = 449
  Caption = 'ALC - Aviso de Liberação de Carga'
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
    Width = 747
    Height = 32
    Align = alTop
    Caption = 'ALC'
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
    Width = 747
    Height = 383
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 16
    Caption = 'ADR'
    TabOrder = 1
    object reProcessa: TRichEdit
      Left = 16
      Top = 16
      Width = 715
      Height = 351
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
    HandleShared = True
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    Left = 8
    Top = 8
  end
  object qrALC: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        ' SELECT P.Data, P.Codigo, P.Codigo_Cliente, P.Importador,i.CGC_C' +
        'PF, I.Razao_Social AS Import, P.Data_liberacao, ALC.Enviou, ALC.' +
        'Transportador, T.Razao_Social, ALC.Descricao_mercadoria, CP.Nume' +
        'rodoccarga, CP.Data_Chegada_URF_Cheg, P.Responsavel_Empresa, U.N' +
        'ome_Completo, U.Email, US.Nome_Completo AS NomeSupervisor, US.Em' +
        'ail AS EmailSupervisor, P.NR_DECLARACAO_IMP AS DI, P.Numero_RTC'
      
        'FROM (((((Processos AS P INNER JOIN Processos_ALC AS ALC ON (P.E' +
        'mpresa = ALC.Empresa) AND '
      '(P.Filial = ALC.Filial) AND (P.Codigo = ALC.Processo)) '
      
        'LEFT JOIN Transportadores AS T ON (ALC.Empresa = T.Empresa) AND ' +
        '(ALC.Filial = T.Filial) AND'
      ' (ALC.Transportador = T.Codigo)) LEFT JOIN '
      
        ' Conhecimento_Processo AS CP ON (P.Empresa = CP.Empresa) AND (P.' +
        'Filial = CP.Filial) AND'
      '  (P.Codigo = CP.Processo)) '
      
        '  LEFT JOIN Usuarios AS U ON (P.Empresa = U.Empresa) AND (P.Fili' +
        'al = U.Filial) AND '
      '  (P.Responsavel_Empresa = U.Usuario)) '
      
        '  LEFT JOIN Importadores AS I ON (P.Empresa = I.Empresa) AND (P.' +
        'Filial = I.Filial) AND '
      
        '  (P.Importador = I.Codigo)) LEFT JOIN Usuarios AS US ON (U.Supe' +
        'rvisor = US.Usuario) AND '
      '  (U.Filial = US.Filial) AND (U.Empresa = US.Empresa)'
      
        'WHERE P.Empresa = :emp AND P.Filial = :filial AND (P.Data_libera' +
        'cao Is Not Null) AND ALC.Enviou = 0 '
      '  AND NOT ((P.Tipo = '#39'5'#39' AND P.Tipo_Declaracao = '#39'05'#39'))'
      '  AND P.Tipo <> '#39'NC'#39
      'ORDER BY I.Razao_Social, P.Codigo_Cliente')
    Left = 200
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
      end>
    object qrALCData: TDateTimeField
      FieldName = 'Data'
    end
    object qrALCCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrALCCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
    object qrALCImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qrALCImport: TStringField
      FieldName = 'Import'
      FixedChar = True
      Size = 60
    end
    object qrALCData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object qrALCEnviou: TIntegerField
      FieldName = 'Enviou'
    end
    object qrALCTransportador: TStringField
      FieldName = 'Transportador'
      FixedChar = True
      Size = 4
    end
    object qrALCRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrALCDescricao_mercadoria: TStringField
      FieldName = 'Descricao_mercadoria'
      FixedChar = True
      Size = 255
    end
    object qrALCNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object qrALCData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrALCResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object qrALCNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qrALCEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
    object qrALCNomeSupervisor: TStringField
      FieldName = 'NomeSupervisor'
      FixedChar = True
      Size = 45
    end
    object qrALCEmailSupervisor: TStringField
      FieldName = 'EmailSupervisor'
      FixedChar = True
      Size = 50
    end
    object qrALCDI: TStringField
      FieldName = 'DI'
      FixedChar = True
      Size = 10
    end
    object qrALCCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object qrALCNumero_RTC: TStringField
      FieldName = 'Numero_RTC'
      Size = 15
    end
  end
  object qrItens: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT DISTINCT PO'
      'FROM ItensFaturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 264
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
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrItensPO: TStringField
      FieldName = 'PO'
      Origin = 'DBNMSCOMEX.ItensFaturas.PO'
      Size = 15
    end
  end
  object qrFaturas: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo'
      'FROM Faturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 232
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
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrFaturasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      FixedChar = True
      Size = 30
    end
  end
  object alALC: TActionList
    Left = 40
    Top = 8
    object acInicializa: TAction
      Caption = 'Iniciar o ALC'
      Checked = True
      OnExecute = acInicializaExecute
    end
    object acGeraEmail: TAction
      Caption = 'acGeraEmail'
      OnExecute = acGeraEmailExecute
    end
    object acProcessa: TAction
      Caption = 'acProcessa'
      OnExecute = acProcessaExecute
    end
    object acEnviaEmail: TAction
      Caption = 'acEnviaEmail'
      OnExecute = acEnviaEmailExecute
    end
    object acFinaliza: TAction
      Caption = 'Finaliza o ALC'
      OnExecute = acFinalizaExecute
    end
  end
  object qrParametros: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, PATH_SERVER'
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
    object qrParametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Origin = 'DBNMSCOMEX.Parametros.PATH_SERVER'
      Size = 100
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
  object qrUsuarios: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Email, nome_completo'
      '   FROM Usuarios'
      
        'WHERE Ativo = 1 AND Email_aviso_oper = 1 AND Empresa = :emp AND ' +
        'Filial = :filial'
      '')
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
        Name = 'filial'
        ParamType = ptUnknown
      end>
    object qrUsuariosEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
    object qrUsuariosnome_completo: TStringField
      FieldName = 'nome_completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
  end
  object qrEmailAviso: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Email, Nome_completo, Parametros, HTML'
      'FROM Emails_avisos'
      'WHERE Ativo = 1 AND Empresa = :emp AND Filial = :filial'
      'AND Tipo = :tipo AND Importador = :imp'
      'ORDER BY Parametros')
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
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end>
    object qrEmailAvisoEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrEmailAvisoNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrEmailAvisoParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrEmailAvisoHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
  end
  object qrFabric: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT DISTINCT IFA.Fabricante, FP.Razao_Social'
      
        'FROM ItensFaturas AS IFA INNER JOIN Fabricantes_Produtores AS FP' +
        ' ON (IFA.Fabricante = FP.Codigo) AND (IFA.Filial = FP.Filial) AN' +
        'D (IFA.Empresa = FP.Empresa)'
      
        'WHERE IFA.Empresa = :emp AND IFA.Filial = :filial AND IFA.Proces' +
        'so = :proc')
    Left = 296
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
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrFabricFabricante: TStringField
      FieldName = 'Fabricante'
      Origin = 'DBNMSCOMEX.ItensFaturas.Fabricante'
      FixedChar = True
      Size = 4
    end
    object qrFabricRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Fabricantes_Produtores.Razao_Social'
      FixedChar = True
      Size = 60
    end
  end
  object qrAtuALC: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Processos_ALC SET Enviou = 1'
      'WHERE Empresa = :emp AND Filial = :filial AND Processo = :proc')
    Left = 328
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
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
  end
  object tmIniciar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmIniciarTimer
    Left = 40
    Top = 40
  end
  object qrEmailAviso_Plataforma: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Email, Nome_completo, Parametros, HTML, Plataforma'
      'FROM Emails_avisos'
      'WHERE Tipo = :tipo AND Plataforma = :pla AND Importador = :imp'
      'ORDER BY Parametros')
    Left = 384
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pla'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'imp'
        ParamType = ptUnknown
      end>
    object qrEmailAviso_PlataformaEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrEmailAviso_PlataformaNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrEmailAviso_PlataformaParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrEmailAviso_PlataformaHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
    object qrEmailAviso_PlataformaPlataforma: TStringField
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Emails_avisos.Plataforma'
      FixedChar = True
      Size = 100
    end
  end
  object qrPlataforma: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        ' select top 1 pl.Plataforma from  Faturas as F left join Platafo' +
        'rmas as pl on F.FK_Plataforma = pl.PK_Plataforma '
      ' where Processo = :proc'
      ' ')
    Left = 344
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptInput
      end>
    object qrPlataformaPlataforma: TStringField
      FieldName = 'Plataforma'
      FixedChar = True
      Size = 30
    end
  end
  object qrEmailsAvisosGeral: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      '   FROM Emails_avisos'
      
        'WHERE Ativo = 1 AND Importador = '#39'A'#39' AND Empresa = :emp AND Fili' +
        'al = :filial'
      '     AND Tipo = :tipo')
    Left = 56
    Top = 116
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
    object qrEmailsAvisosGeralEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Emails_avisos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrEmailsAvisosGeralFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Emails_avisos.Filial'
      FixedChar = True
      Size = 4
    end
    object qrEmailsAvisosGeralImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Importador'
      FixedChar = True
      Size = 4
    end
    object qrEmailsAvisosGeralTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Tipo'
      FixedChar = True
      Size = 8
    end
    object qrEmailsAvisosGeralEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrEmailsAvisosGeralNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrEmailsAvisosGeralParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrEmailsAvisosGeralHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
    object qrEmailsAvisosGeralPlataforma: TStringField
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Emails_avisos.Plataforma'
      FixedChar = True
      Size = 100
    end
    object qrEmailsAvisosGeralCnpj_Importador: TStringField
      FieldName = 'Cnpj_Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cnpj_Importador'
      FixedChar = True
      Size = 10
    end
    object qrEmailsAvisosGeralPara: TBooleanField
      FieldName = 'Para'
      Origin = 'DBNMSCOMEX.Emails_avisos.Para'
    end
    object qrEmailsAvisosGeralCc: TBooleanField
      FieldName = 'Cc'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cc'
    end
    object qrEmailsAvisosGeralCCo: TBooleanField
      FieldName = 'CCo'
      Origin = 'DBNMSCOMEX.Emails_avisos.CCo'
    end
    object qrEmailsAvisosGeralAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Ativo'
    end
  end
  object qrEmailAvisoImportadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      '   FROM Emails_avisos'
      'WHERE Ativo = 1 '
      '      AND Empresa = :emp '
      '      AND Filial = :filial '
      '      AND Tipo = :tipo '
      '      AND Cnpj_Importador = :Cnpj_Importador'
      '')
    Left = 56
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cnpj_Importador'
        ParamType = ptUnknown
      end>
    object qrEmailAvisoImportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Emails_avisos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrEmailAvisoImportadoresFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Emails_avisos.Filial'
      FixedChar = True
      Size = 4
    end
    object qrEmailAvisoImportadoresImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Importador'
      FixedChar = True
      Size = 4
    end
    object qrEmailAvisoImportadoresTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Tipo'
      FixedChar = True
      Size = 8
    end
    object qrEmailAvisoImportadoresEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrEmailAvisoImportadoresNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrEmailAvisoImportadoresParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrEmailAvisoImportadoresHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
    object qrEmailAvisoImportadoresPlataforma: TStringField
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Emails_avisos.Plataforma'
      FixedChar = True
      Size = 100
    end
    object qrEmailAvisoImportadoresCnpj_Importador: TStringField
      FieldName = 'Cnpj_Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cnpj_Importador'
      FixedChar = True
      Size = 10
    end
    object qrEmailAvisoImportadoresPara: TBooleanField
      FieldName = 'Para'
      Origin = 'DBNMSCOMEX.Emails_avisos.Para'
    end
    object qrEmailAvisoImportadoresCc: TBooleanField
      FieldName = 'Cc'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cc'
    end
    object qrEmailAvisoImportadoresCCo: TBooleanField
      FieldName = 'CCo'
      Origin = 'DBNMSCOMEX.Emails_avisos.CCo'
    end
    object qrEmailAvisoImportadoresAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Ativo'
    end
  end
end
