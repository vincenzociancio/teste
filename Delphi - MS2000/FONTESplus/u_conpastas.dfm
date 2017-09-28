object F_conpastas: TF_conpastas
  Left = 493
  Top = 155
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Pastas'
  ClientHeight = 250
  ClientWidth = 373
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 124
    Height = 246
    Caption = 'Processos Pendentes'
    TabOrder = 0
    object dbgControleDePastas: TDBGrid
      Left = 7
      Top = 18
      Width = 108
      Height = 173
      DataSource = dsControle_Pastas_Pendente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Processo'
          Visible = True
        end>
    end
    object btnAceitar: TButton
      Left = 7
      Top = 193
      Width = 110
      Height = 25
      Caption = 'Aceitar'
      TabOrder = 1
      OnClick = btnAceitarClick
    end
    object btnRejeitar: TButton
      Left = 7
      Top = 217
      Width = 110
      Height = 25
      Caption = 'Rejeitar'
      TabOrder = 2
      OnClick = btnRejeitarClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 129
    Top = 1
    Width = 241
    Height = 246
    Caption = 'Transferência de Pasta'
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 22
      Width = 69
      Height = 13
      Caption = 'Localiza Pasta'
    end
    object Label1: TLabel
      Left = 6
      Top = 50
      Width = 89
      Height = 13
      Caption = 'Selecione Usuário:'
    end
    object me_processo: TMaskEdit
      Left = 78
      Top = 18
      Width = 61
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = me_processoChange
    end
    object dblcUsuarioEnvio: TDBLookupComboBox
      Left = 6
      Top = 72
      Width = 230
      Height = 21
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = ds_usuarioenvio
      TabOrder = 1
    end
    object btnEnvia: TBitBtn
      Left = 146
      Top = 17
      Width = 89
      Height = 22
      Caption = 'Transferir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = sb_enviaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnArquivar: TButton
      Left = 8
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Arquivar'
      TabOrder = 3
      OnClick = btnArquivarClick
    end
    object btnRecuperar: TButton
      Left = 114
      Top = 215
      Width = 121
      Height = 25
      Caption = 'Recuperar do Arquivo'
      TabOrder = 4
      OnClick = btnRecuperarClick
    end
  end
  object ds_pastas: TDataSource
    DataSet = q_pastas
    Left = 64
    Top = 192
  end
  object ds_usuarioenvio: TDataSource
    DataSet = q_usuarioenvio
    Left = 132
    Top = 192
  end
  object q_pastas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Usuario, aceite FROM Controle_' +
        'Pastas'
      'WHERE Empresa = :p1'
      'AND Filial = :p2'
      'AND Usuario = :p3'
      '')
    Left = 24
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p3'
        ParamType = ptUnknown
      end>
    object q_pastasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_pastasFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Filial'
      FixedChar = True
      Size = 4
    end
    object q_pastasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Processo'
      FixedChar = True
      Size = 8
    end
    object q_pastasUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Usuario'
      FixedChar = True
      Size = 10
    end
    object q_pastasaceite: TSmallintField
      FieldName = 'aceite'
    end
  end
  object q_usuarioenvio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Usuario, Nome_Completo, Setor FROM Usuar' +
        'ios'
      'WHERE Empresa = :p1'
      'AND Filial = :p2'
      'AND Usuario <> :p3'
      'AND Ativo = 1'
      'ORDER BY Nome_Completo')
    Left = 88
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p3'
        ParamType = ptUnknown
      end>
    object q_usuarioenvioEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Usuarios.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_usuarioenvioFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Usuarios.Filial'
      FixedChar = True
      Size = 4
    end
    object q_usuarioenvioUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object q_usuarioenvioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object q_usuarioenvioSetor: TStringField
      FieldName = 'Setor'
    end
  end
  object q_movpastas_insert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Movimentacao_pastas'
      '           ([Empresa]'
      '           ,[Filial]'
      '           ,[Processo]'
      '           ,[De_usuario]'
      '           ,[Para_usuario]'
      '           ,[Data]'
      '           ,[Hora])'
      '     VALUES'
      '           (:Empresa'
      '           ,:Filial'
      '           ,:Processo'
      '           ,:De_usuario'
      '           ,:Para_usuario'
      '           ,:Data'
      '           ,:Hora)')
    Left = 176
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'De_usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Para_usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Hora'
        ParamType = ptUnknown
      end>
  end
  object q_pastas_update: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Controle_Pastas SET Usuario = :p1, Aceite = :p2'
      'WHERE Processo = :p3'
      '')
    Left = 16
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        ParamType = ptUnknown
      end>
  end
  object dsControle_Pastas_Pendente: TDataSource
    DataSet = q_Controle_Pastas_Pendente
    Left = 64
    Top = 32
  end
  object q_Controle_Pastas_Pendente: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Controle_Pastas'
      'WHERE Usuario =:pUsuario and Aceite = 2 order by processo')
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'pUsuario'
        ParamType = ptInput
      end>
    object q_Controle_Pastas_PendenteEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_Controle_Pastas_PendenteFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Filial'
      FixedChar = True
      Size = 4
    end
    object q_Controle_Pastas_PendenteProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Processo'
      FixedChar = True
      Size = 8
    end
    object q_Controle_Pastas_PendenteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Usuario'
      FixedChar = True
      Size = 10
    end
    object q_Controle_Pastas_PendenteAceite: TSmallintField
      FieldName = 'Aceite'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Aceite'
    end
    object q_Controle_Pastas_PendenteData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Controle_Pastas.Data'
    end
  end
  object q_Update_Controle_Pastas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Controle_Pastas set Aceite =:pAceite, Data=:pData, Usuari' +
        'o=:pUsu where Processo =:pProcesso')
    Left = 16
    Top = 112
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'pAceite'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pData'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pUsu'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pProcesso'
        ParamType = ptUnknown
      end>
  end
  object QryAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 24
    Top = 72
  end
  object q_Email_De_Para: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Nome_Completo, Email FROM Usuarios'
      'WHERE Usuario =:pUsuario')
    Left = 96
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'pUsuario'
        ParamType = ptInput
      end>
    object q_Email_De_ParaNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object q_Email_De_ParaEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
  end
  object tbEmailAuto: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Email_Auto'
    Left = 77
    Top = 66
    object tbEmailAutoCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object tbEmailAutoPrograma: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 8
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
    object tbEmailAutoLixo: TIntegerField
      FieldName = 'Lixo'
    end
    object tbEmailAutoErro_Message: TStringField
      FieldName = 'Erro_Message'
      FixedChar = True
      Size = 255
    end
  end
  object qAceite: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT aceite FROM Controle_Pastas'
      'WHERE Empresa = :p1'
      'AND Filial = :p2'
      'AND Usuario = :p3'
      'And Processo =:p4')
    Left = 72
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p3'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p4'
        ParamType = ptInput
      end>
    object qAceiteaceite: TSmallintField
      FieldName = 'aceite'
    end
  end
  object qArquivista: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select arquivista from usuarios where usuario =:pUsu')
    Left = 281
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'pUsu'
        ParamType = ptInput
      end>
    object qArquivistaarquivista: TBooleanField
      FieldName = 'arquivista'
    end
  end
  object qVerificaControlePastas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuario, aceite FROM Controle_Pastas'
      'WHERE processo = :pProcesso')
    Left = 257
    Top = 185
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qVerificaControlePastasUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qVerificaControlePastasaceite: TSmallintField
      FieldName = 'aceite'
    end
  end
  object qProcessoFechado: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select cast(fechado as int) as '#39'Fechado'#39' from processos where co' +
        'digo=:pProcesso')
    Left = 233
    Top = 137
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qProcessoFechadoFechado: TIntegerField
      FieldName = 'Fechado'
    end
  end
  object qrCtrPastas: TQuery
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Usuario, aceite FROM Controle_' +
        'Pastas'
      'WHERE Empresa = :p1'
      'AND Filial = :p2')
    Left = 289
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
  end
  object qrPara_usuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select top 1 De_usuario, Para_usuario from Movimentacao_pastas w' +
        'here Processo = :proc order by movimento desc')
    Left = 249
    Top = 105
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptInput
      end>
    object qrPara_usuarioDe_usuario: TStringField
      FieldName = 'De_usuario'
      FixedChar = True
      Size = 10
    end
    object qrPara_usuarioPara_usuario: TStringField
      FieldName = 'Para_usuario'
      FixedChar = True
      Size = 10
    end
  end
end
