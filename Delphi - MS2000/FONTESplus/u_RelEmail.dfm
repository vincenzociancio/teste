object f_RelEmail: Tf_RelEmail
  Left = 198
  Top = 158
  BorderIcons = []
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'f_RelEmail'
  ClientHeight = 185
  ClientWidth = 328
  Color = clHighlight
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 100
    Height = 13
    Caption = 'E-mail do destinatário'
  end
  object Label4: TLabel
    Left = 16
    Top = 80
    Width = 132
    Height = 13
    Caption = 'Nome do arquivo (Relatório)'
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 185
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 0
    object pnlStatusBar: TPanel
      Left = 6
      Top = 160
      Width = 316
      Height = 19
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object stStatus: TStaticText
        Left = 0
        Top = 0
        Width = 241
        Height = 19
        Align = alLeft
        AutoSize = False
        BorderStyle = sbsSunken
        TabOrder = 0
      end
      object ProgressBar1: TProgressBar
        Left = 241
        Top = 0
        Width = 75
        Height = 19
        Align = alClient
        Min = 0
        Max = 100
        Smooth = True
        TabOrder = 1
      end
    end
    object pnlEnviar: TPanel
      Left = 6
      Top = 6
      Width = 316
      Height = 75
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Label2: TLabel
        Left = 8
        Top = 72
        Width = 132
        Height = 13
        Caption = 'Nome do arquivo (Relatório)'
      end
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 100
        Height = 13
        Caption = 'E-mail do destinatário'
      end
      object btnFechar: TBitBtn
        Left = 170
        Top = 120
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Fechar'
        TabOrder = 0
        OnClick = btnFecharClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
          44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
          00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
          33833F333383F33300003333AA463362A433333333383F333833F33300003333
          6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
          33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
          6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
          000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
          333383333333F3330000333333322AAA4333333333333833333F333300003333
          333322A4333333333333338333F333330000333333344A433333333333333338
          3F333333000033333336A24333333333333333833F333333000033333336AA43
          33333333333333833F3333330000333333336663333333333333333888333333
          0000}
        NumGlyphs = 2
      end
      object btnEnviar: TBitBtn
        Left = 72
        Top = 120
        Width = 75
        Height = 25
        Caption = '&Enviar'
        TabOrder = 1
        OnClick = btnEnviarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
          000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
          FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
          FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
          9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
          0000777777777777777733333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object edtEmail: TEdit
        Left = 8
        Top = 48
        Width = 299
        Height = 21
        Hint = 'Digite o e-mail para quem deseja enviar o relatório'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        OnKeyPress = edtEmailKeyPress
      end
      object edtNomeArq: TEdit
        Left = 8
        Top = 88
        Width = 299
        Height = 21
        Hint = 'Digite um nome para o arquivo a ser enviado por e-mail'
        Anchors = [akLeft, akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnKeyPress = edtNomeArqKeyPress
      end
      object btnParar: TBitBtn
        Left = 120
        Top = 120
        Width = 75
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = '&Parar'
        TabOrder = 4
        Visible = False
        OnClick = btnPararClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333FFFFF333333000033333388888833333333333F888888FFF333
          000033338811111188333333338833FFF388FF33000033381119999111833333
          38F338888F338FF30000339119933331111833338F388333383338F300003391
          13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
          33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
          33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
          000039183811193333918338F8F833F83333838F000039118111933339118338
          F3833F83333833830000339111193333391833338F33F8333FF838F300003391
          11833338111833338F338FFFF883F83300003339111888811183333338FF3888
          83FF83330000333399111111993333333388FFFFFF8833330000333333999999
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 316
        Height = 27
        Align = alTop
        Caption = 'Envio de Relatório por e-mail'
        Color = 6956042
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    object pnlOpcao: TPanel
      Left = 6
      Top = 86
      Width = 316
      Height = 67
      BevelOuter = bvNone
      TabOrder = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 316
        Height = 27
        Align = alTop
        Caption = 'Opção de Relatório'
        Color = 6956042
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object cbVisualizar: TCheckBox
        Left = 16
        Top = 48
        Width = 281
        Height = 17
        Caption = 'Visualizar relatório pra impressão'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
        OnClick = cbVisualizarClick
      end
      object cbEnviar: TCheckBox
        Left = 16
        Top = 80
        Width = 281
        Height = 17
        Caption = 'Enviar relatório por e-mail em anexo (Formato PDF)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cbVisualizarClick
      end
      object btnOk: TBitBtn
        Left = 72
        Top = 120
        Width = 75
        Height = 25
        Caption = '&Ok'
        TabOrder = 2
        OnClick = btnOkClick
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        NumGlyphs = 2
      end
      object btnFecharOP: TBitBtn
        Left = 170
        Top = 120
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Fechar'
        TabOrder = 3
        OnClick = btnFecharClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
          44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
          00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
          33833F333383F33300003333AA463362A433333333383F333833F33300003333
          6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
          33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
          6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
          000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
          333383333333F3330000333333322AAA4333333333333833333F333300003333
          333322A4333333333333338333F333330000333333344A433333333333333338
          3F333333000033333336A24333333333333333833F333333000033333336AA43
          33333333333333833F3333330000333333336663333333333333333888333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 200
    Top = 32
  end
  object IdSMTP: TIdSMTP
    OnStatus = IdSMTPStatus
    MaxLineAction = maException
    OnWork = IdSMTPWork
    OnWorkBegin = IdSMTPWorkBegin
    OnWorkEnd = IdSMTPWorkEnd
    Port = 25
    AuthenticationType = atNone
    Left = 232
    Top = 32
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 264
    Top = 32
  end
  object alMSeM: TActionList
    Left = 200
    Top = 64
    object acGeraEmail: TAction
      Caption = 'acGeraEmail'
      OnExecute = acGeraEmailExecute
    end
    object acEnviaEmail: TAction
      Caption = 'Envia Relatório por Email'
      OnExecute = acEnviaEmailExecute
    end
    object acExcluirArqTemp: TAction
      Caption = 'Exclui Arquivo Temporário'
      OnExecute = acExcluirArqTempExecute
    end
    object acConfigurarSMTP: TAction
      Caption = 'acConfigurarSMTP'
      OnExecute = acConfigurarSMTPExecute
    end
  end
  object qrParametros: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Host_SMTP, Porta_SMTP, Usuario_SMTP, Sen' +
        'ha_SMTP, PATH_SERVER'
      'FROM Parametros')
    Left = 232
    Top = 64
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
    object qrParametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Origin = 'DBNMSCOMEX.Parametros.PATH_SERVER'
      Size = 100
    end
  end
  object qrFilial: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Filiais'
      'WHERE Codigo_Empresa = :emp AND Codigo_Filial = :filial')
    Left = 264
    Top = 64
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
    object qrFilialCodigo_Empresa: TStringField
      FieldName = 'Codigo_Empresa'
      Origin = 'DBNMSCOMEX.Filiais.Codigo_Empresa'
      Size = 4
    end
    object qrFilialCodigo_Filial: TStringField
      FieldName = 'Codigo_Filial'
      Origin = 'DBNMSCOMEX.Filiais.Codigo_Filial'
      Size = 4
    end
    object qrFilialDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Filiais.Descricao'
      Size = 50
    end
    object qrFilialEndereo: TStringField
      FieldName = 'Endereço'
      Origin = 'DBNMSCOMEX.Filiais.Endereço'
      Size = 40
    end
    object qrFilialNmero: TStringField
      FieldName = 'Número'
      Origin = 'DBNMSCOMEX.Filiais.Número'
      Size = 6
    end
    object qrFilialComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Filiais.Complemento'
      Size = 21
    end
    object qrFilialBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Filiais.Bairro'
      Size = 25
    end
    object qrFilialCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Filiais.Cidade'
      Size = 25
    end
    object qrFilialUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Filiais.UF'
      Size = 2
    end
    object qrFilialCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Filiais.CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object qrFilialTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Filiais.Telefone'
      Size = 40
    end
    object qrFilialFax: TStringField
      FieldName = 'Fax'
      Origin = 'DBNMSCOMEX.Filiais.Fax'
      Size = 40
    end
  end
end
