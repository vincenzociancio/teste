object f_ctrlSENHAS: Tf_ctrlSENHAS
  Left = 18
  Top = 45
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Senhas de Usuários'
  ClientHeight = 491
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Senhas de Usuários'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlPrinc: TPanel
    Left = 0
    Top = 25
    Width = 754
    Height = 466
    Align = alClient
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 8
    Color = 10514464
    TabOrder = 1
    object pnlMenu: TPanel
      Left = 8
      Top = 413
      Width = 738
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object sb_loc: TSpeedButton
        Left = 104
        Top = 17
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
          330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
          830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
          F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
        OnClick = sb_locClick
      end
      object Label3: TLabel
        Left = 7
        Top = 0
        Width = 81
        Height = 13
        Caption = 'Localizar Usuário'
      end
      object btnSalvar: TBitBtn
        Left = 224
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Salvar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnSalvarClick
        Kind = bkOK
      end
      object btnCancelar: TBitBtn
        Left = 304
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCancelarClick
        Kind = bkRetry
      end
      object btnSair: TBitBtn
        Left = 592
        Top = 13
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnSairClick
        Kind = bkClose
      end
      object me_loc: TMaskEdit
        Left = 7
        Top = 15
        Width = 94
        Height = 21
        TabOrder = 3
      end
      object BitBtn1: TBitBtn
        Left = 392
        Top = 15
        Width = 75
        Height = 25
        Caption = 'novas senhas'
        TabOrder = 4
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 480
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Imprime cartão'
        TabOrder = 5
        OnClick = BitBtn2Click
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 8
      Width = 738
      Height = 405
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object dbG_papeis: TDBGrid
        Left = 0
        Top = 0
        Width = 737
        Height = 351
        Hint = 'Duplo Clique - Fecha Movimento'
        DataSource = ds_qIPS
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Usuario'
            Title.Alignment = taCenter
            Title.Caption = 'Usuário'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Completo'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Completo'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Senha_MS2000'
            Title.Alignment = taCenter
            Title.Caption = 'Senha MS2000'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_validade_senha'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Val.Senha'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Senha_Rede'
            Title.Alignment = taCenter
            Title.Caption = 'Senha Rede'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Senha_Internet'
            Title.Alignment = taCenter
            Title.Caption = 'Senha Internet'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Senha_Email'
            Title.Alignment = taCenter
            Title.Caption = 'Senha Email'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Senha_Acesso'
            Title.Alignment = taCenter
            Title.Caption = 'Senha Acesso'
            Width = 80
            Visible = True
          end>
      end
      object paneledt: TPanel
        Left = 2
        Top = 352
        Width = 799
        Height = 51
        TabOrder = 1
        object Label1: TLabel
          Left = 392
          Top = 8
          Width = 60
          Height = 13
          Caption = 'Senha Rede'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 472
          Top = 8
          Width = 70
          Height = 13
          Caption = 'Senha Internet'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 552
          Top = 8
          Width = 59
          Height = 13
          Caption = 'Senha Email'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 632
          Top = 8
          Width = 72
          Height = 13
          Caption = 'Senha  Acesso'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 392
          Top = 24
          Width = 80
          Height = 21
          DataField = 'Senha_Rede'
          DataSource = ds_tPONTOS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 472
          Top = 24
          Width = 80
          Height = 21
          DataField = 'Senha_Internet'
          DataSource = ds_tPONTOS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 552
          Top = 24
          Width = 80
          Height = 21
          DataField = 'Senha_Email'
          DataSource = ds_tPONTOS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 632
          Top = 24
          Width = 80
          Height = 21
          DataField = 'Senha_Acesso'
          DataSource = ds_tPONTOS
          TabOrder = 3
        end
      end
    end
    object qsenhas: TQuickRep
      Left = 744
      Top = 456
      Width = 816
      Height = 1056
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
      DataSet = q_senhas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 2
      Page.Orientation = poPortrait
      Page.PaperSize = Letter
      Page.Values = (
        119.38
        2794
        152.4
        2159
        40.64
        40.64
        50.8)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = First
      PrintIfEmpty = True
      SnapToGrid = True
      Units = Inches
      Zoom = 100
      object DetailBand1: TQRBand
        Left = 15
        Top = 58
        Width = 383
        Height = 183
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          484.1875
          1013.35416666667)
        BandType = rbDetail
        object QRDBText1: TQRDBText
          Left = 8
          Top = 56
          Width = 369
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            21.1666666666667
            148.166666666667
            976.3125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = q_senhas
          DataField = 'Nome_Completo'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 8
          Top = 8
          Width = 201
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            21.1666666666667
            21.1666666666667
            531.8125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'MS LOGÍSTICA - Rio de Janeiro'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 262
          Top = 8
          Width = 114
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            693.208333333333
            21.1666666666667
            301.625)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cartão de Senhas'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel3: TQRLabel
          Left = 8
          Top = 40
          Width = 57
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            21.1666666666667
            105.833333333333
            150.8125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Usuário: '
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 8
          Top = 72
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            21.1666666666667
            190.5
            108.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Email:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 8
          Top = 88
          Width = 369
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            21.1666666666667
            232.833333333333
            976.3125)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = q_senhas
          DataField = 'email'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel5: TQRLabel
          Left = 16
          Top = 114
          Width = 79
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            42.3333333333333
            301.625
            209.020833333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Senha Rede'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 16
          Top = 130
          Width = 89
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            42.3333333333333
            343.958333333333
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = q_senhas
          DataField = 'Senha_Rede'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel6: TQRLabel
          Left = 136
          Top = 114
          Width = 95
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            359.833333333333
            301.625
            251.354166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Senha Internet'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 136
          Top = 130
          Width = 89
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            359.833333333333
            343.958333333333
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = q_senhas
          DataField = 'Senha_Internet'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel7: TQRLabel
          Left = 264
          Top = 114
          Width = 82
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            698.5
            301.625
            216.958333333333)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Senha Email'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 264
          Top = 130
          Width = 89
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            698.5
            343.958333333333
            235.479166666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = q_senhas
          DataField = 'Senha_Email'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel8: TQRLabel
          Left = 80
          Top = 160
          Width = 224
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.9791666666667
            211.666666666667
            423.333333333333
            592.666666666667)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = '(atenção: guardar em local seguro)'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
  end
  object q_senhas: TQuery
    AfterScroll = q_senhasAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Usuario, Usuarios.email,Usuarios.Nome_Completo, ' +
        'Controle_Usuarios_Senhas.Senha_MS2000, Usuarios.Data_validade_se' +
        'nha, Controle_Usuarios_Senhas.Senha_Rede, Controle_Usuarios_Senh' +
        'as.Senha_Internet, Controle_Usuarios_Senhas.Senha_Email, Control' +
        'e_Usuarios_Senhas.Senha_Acesso'
      
        'FROM Usuarios INNER JOIN Controle_Usuarios_Senhas ON Usuarios.Us' +
        'uario = Controle_Usuarios_Senhas.Usuario'
      'ORDER BY Usuarios.Nome_Completo;')
    Left = 176
    Top = 97
    object q_senhasUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object q_senhasNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object q_senhasSenha_MS2000: TStringField
      FieldName = 'Senha_MS2000'
      Origin = 'DBNMSCOMEX.Controle_Usuarios_Senhas.Senha_MS2000'
      Size = 50
    end
    object q_senhasData_validade_senha: TDateTimeField
      FieldName = 'Data_validade_senha'
      Origin = 'DBNMSCOMEX.Usuarios.Data_validade_senha'
    end
    object q_senhasSenha_Rede: TStringField
      FieldName = 'Senha_Rede'
      Origin = 'DBNMSCOMEX.Controle_Usuarios_Senhas.Senha_Rede'
      Size = 50
    end
    object q_senhasSenha_Internet: TStringField
      FieldName = 'Senha_Internet'
      Origin = 'DBNMSCOMEX.Controle_Usuarios_Senhas.Senha_Internet'
      Size = 50
    end
    object q_senhasSenha_Email: TStringField
      FieldName = 'Senha_Email'
      Origin = 'DBNMSCOMEX.Controle_Usuarios_Senhas.Senha_Email'
      Size = 50
    end
    object q_senhasSenha_Acesso: TStringField
      FieldName = 'Senha_Acesso'
      Origin = 'DBNMSCOMEX.Controle_Usuarios_Senhas.Senha_Acesso'
      Size = 50
    end
    object q_senhasemail: TStringField
      FieldName = 'email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      Size = 50
    end
  end
  object ds_qIPS: TDataSource
    DataSet = q_senhas
    Left = 192
    Top = 112
  end
  object t_senhas: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Usuario'
    TableName = 'Controle_Usuarios_Senhas'
    Left = 232
    Top = 89
    object t_senhasUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object t_senhasSenha_MS2000: TStringField
      FieldName = 'Senha_MS2000'
      FixedChar = True
      Size = 50
    end
    object t_senhasSenha_Rede: TStringField
      FieldName = 'Senha_Rede'
      FixedChar = True
      Size = 50
    end
    object t_senhasSenha_Internet: TStringField
      FieldName = 'Senha_Internet'
      FixedChar = True
      Size = 50
    end
    object t_senhasSenha_Email: TStringField
      FieldName = 'Senha_Email'
      FixedChar = True
      Size = 50
    end
    object t_senhasSenha_Acesso: TStringField
      FieldName = 'Senha_Acesso'
      FixedChar = True
      Size = 50
    end
  end
  object ds_tPONTOS: TDataSource
    DataSet = t_senhas
    Left = 240
    Top = 104
  end
  object q_up1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE Controle_Usuarios_Senhas FROM Controle_Usuarios_Senhas'
      
        'LEFT JOIN Usuarios ON Controle_Usuarios_Senhas.Usuario = Usuario' +
        's.Usuario'
      'WHERE (((Usuarios.Usuario) Is Null));')
    Left = 112
    Top = 89
  end
  object q_up2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Controle_Usuarios_Senhas ( Usuario, Senha_MS2000 )'
      'SELECT Usuarios.Usuario, Usuarios.Senha'
      
        'FROM Usuarios LEFT JOIN Controle_Usuarios_Senhas ON Usuarios.Usu' +
        'ario = Controle_Usuarios_Senhas.Usuario'
      
        'WHERE (((Controle_Usuarios_Senhas.Usuario) Is Null) AND ((Usuari' +
        'os.Nivel)<>"x"));')
    Left = 128
    Top = 105
  end
  object q_up3: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE Controle_Usuarios_Senhas SET Controle_Usuarios_Senhas.Sen' +
        'ha_MS2000 = [usu].[senha]'
      'FROM Controle_Usuarios_Senhas'
      
        'INNER JOIN Usuarios AS usu ON Controle_Usuarios_Senhas.Usuario =' +
        ' usu.Usuario ')
    Left = 136
    Top = 129
  end
end
