object f_gerapass: Tf_gerapass
  Left = 192
  Top = 107
  Width = 544
  Height = 399
  Caption = 'Gera senhas para usuários Internet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DB_MSCOMEX: TDatabase
    AliasName = 'A_MS2000'
    DatabaseName = 'DBNMSCOMEX'
    LoginPrompt = False
    SessionName = 'Default'
  end
  object t_parametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 28
    object t_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object t_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object t_parametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object t_parametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object t_parametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object t_parametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object t_parametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object t_parametrosHost: TStringField
      FieldName = 'Host'
      Size = 15
    end
  end
  object ds_parametros: TDataSource
    DataSet = t_parametros
    Left = 28
    Top = 28
  end
  object t_importadores: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'link > '#39#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Importadores'
    Left = 56
    object t_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_importadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object t_importadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object t_importadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object t_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object t_importadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 10
    end
    object t_importadoresTipoImportador: TStringField
      FieldName = 'Tipo Importador'
      Size = 1
    end
    object t_importadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object t_importadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object t_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object t_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object t_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object t_importadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object t_importadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object t_importadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object t_importadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
    object t_importadoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object t_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object t_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object t_importadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object t_importadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object t_importadoreslink: TStringField
      FieldName = 'link'
      Size = 50
    end
  end
  object ds_importadores: TDataSource
    DataSet = t_importadores
    Left = 56
    Top = 28
  end
  object t_cpf: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'usuarios_beneficio_repetro'
    Left = 84
    object t_cpfNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Size = 45
    end
    object t_cpfUsuario: TStringField
      FieldName = 'Usuario'
    end
    object t_cpfSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object t_cpfEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object t_cpfNivel: TStringField
      FieldName = 'Nivel'
      Size = 1
    end
  end
  object ds_cpf: TDataSource
    DataSet = t_cpf
    Left = 84
    Top = 28
  end
  object t_usuariosnet: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CGC/CPF;Usuario;Senha'
    TableName = 'UsuariosNET'
    Left = 112
    object t_usuariosnetCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 10
    end
    object t_usuariosnetUsuario: TStringField
      FieldName = 'Usuario'
    end
    object t_usuariosnetSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object t_usuariosnetNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Size = 45
    end
    object t_usuariosnetNivel: TStringField
      FieldName = 'Nivel'
      Size = 1
    end
  end
  object ds_usuariosnet: TDataSource
    DataSet = t_usuariosnet
    Left = 112
    Top = 28
  end
end
