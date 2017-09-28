object f_IPS: Tf_IPS
  Left = 72
  Top = 186
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de  IP'#39'S'
  ClientHeight = 491
  ClientWidth = 890
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 890
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de IP'#39'S'
    Color = clGreen
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
    Width = 890
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
      Width = 874
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
        Width = 102
        Height = 13
        Caption = 'Localizar IP / Usuário'
      end
      object btnIncluir: TBitBtn
        Left = 216
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Incluir Transmittal'
        Caption = 'Incluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnIncluirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
      object btnSalvar: TBitBtn
        Left = 320
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Salvar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnSalvarClick
        Kind = bkOK
      end
      object btnCancelar: TBitBtn
        Left = 400
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnCancelarClick
        Kind = bkRetry
      end
      object btnSair: TBitBtn
        Left = 792
        Top = 13
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnSairClick
        Kind = bkClose
      end
      object btnexcluir: TBitBtn
        Left = 501
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnexcluirClick
        Kind = bkCancel
      end
      object me_loc: TMaskEdit
        Left = 7
        Top = 15
        Width = 94
        Height = 21
        TabOrder = 5
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 8
      Width = 874
      Height = 405
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 56
        Top = 408
        Width = 32
        Height = 13
        Caption = 'Label2'
      end
      object dbG_papeis: TDBGrid
        Left = 0
        Top = 0
        Width = 873
        Height = 277
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
            FieldName = 'IP'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SETOR'
            Title.Caption = 'Setor'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qusu'
            Title.Caption = 'Usuário'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descrição'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MASCARA'
            Title.Alignment = taCenter
            Title.Caption = 'MÁSCARA'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROXY'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GATEWAY'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DNS1'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DNS2'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DetalheS'
            Title.Caption = 'Detalhes'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICONE'
            Visible = True
          end>
      end
      object paneledt: TPanel
        Left = 0
        Top = 277
        Width = 873
        Height = 124
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 4
          Width = 10
          Height = 13
          Caption = 'IP'
          FocusControl = DBEdit1
        end
        object Label7: TLabel
          Left = 9
          Top = 82
          Width = 48
          Height = 13
          Caption = 'Descrição'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 408
          Top = 82
          Width = 42
          Height = 13
          Caption = 'Detalhes'
          FocusControl = DBEdit8
        end
        object Label4: TLabel
          Left = 123
          Top = 1
          Width = 25
          Height = 13
          Caption = 'Setor'
        end
        object SpeedButton3: TSpeedButton
          Left = 440
          Top = 16
          Width = 25
          Height = 22
          Hint = 'Limpa Setor'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
            555557777F777555F55500000000555055557777777755F75555005500055055
            555577F5777F57555555005550055555555577FF577F5FF55555500550050055
            5555577FF77577FF555555005050110555555577F757777FF555555505099910
            555555FF75777777FF555005550999910555577F5F77777775F5500505509990
            3055577F75F77777575F55005055090B030555775755777575755555555550B0
            B03055555F555757575755550555550B0B335555755555757555555555555550
            BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
            50BB555555555555575F555555555555550B5555555555555575}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object Label9: TLabel
          Left = 470
          Top = 1
          Width = 36
          Height = 13
          Caption = 'Usuário'
        end
        object sbLimpaMoedaFOB: TSpeedButton
          Left = 786
          Top = 16
          Width = 25
          Height = 22
          Hint = 'Limpa Usuário'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
            555557777F777555F55500000000555055557777777755F75555005500055055
            555577F5777F57555555005550055555555577FF577F5FF55555500550050055
            5555577FF77577FF555555005050110555555577F757777FF555555505099910
            555555FF75777777FF555005550999910555577F5F77777775F5500505509990
            3055577F75F77777575F55005055090B030555775755777575755555555550B0
            B03055555F555757575755550555550B0B335555755555757555555555555550
            BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
            50BB555555555555575F555555555555550B5555555555555575}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = sbLimpaMoedaFOBClick
        end
        object Label5: TLabel
          Left = 114
          Top = 41
          Width = 37
          Height = 13
          Caption = 'PROXY'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 226
          Top = 40
          Width = 54
          Height = 13
          Caption = 'GATEWAY'
          FocusControl = DBEdit6
        end
        object Label10: TLabel
          Left = 335
          Top = 40
          Width = 29
          Height = 13
          Caption = 'DNS1'
          FocusControl = DBEdit9
        end
        object Label11: TLabel
          Left = 441
          Top = 40
          Width = 29
          Height = 13
          Caption = 'DNS2'
          FocusControl = DBEdit10
        end
        object Label12: TLabel
          Left = 6
          Top = 41
          Width = 52
          Height = 13
          Caption = 'MÁSCARA'
          FocusControl = DBEdit11
        end
        object Label13: TLabel
          Left = 713
          Top = 40
          Width = 33
          Height = 13
          Caption = 'ICONE'
          FocusControl = DBEdit12
        end
        object DBEdit1: TDBEdit
          Left = 5
          Top = 17
          Width = 26
          Height = 21
          DataField = 'IP1'
          DataSource = ds_tIPS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 33
          Top = 17
          Width = 26
          Height = 21
          DataField = 'IP2'
          DataSource = ds_tIPS
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 62
          Top = 17
          Width = 26
          Height = 21
          DataField = 'IP3'
          DataSource = ds_tIPS
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 90
          Top = 17
          Width = 26
          Height = 21
          DataField = 'IP4'
          DataSource = ds_tIPS
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 6
          Top = 98
          Width = 400
          Height = 21
          DataField = 'Descricao'
          DataSource = ds_tIPS
          TabOrder = 11
        end
        object DBEdit8: TDBEdit
          Left = 411
          Top = 98
          Width = 400
          Height = 21
          DataField = 'DetalheS'
          DataSource = ds_tIPS
          TabOrder = 12
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 119
          Top = 17
          Width = 320
          Height = 21
          DataField = 'Setor'
          DataSource = ds_tIPS
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = ds_qsetores
          TabOrder = 4
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 468
          Top = 17
          Width = 320
          Height = 21
          DataField = 'Usuario'
          DataSource = ds_tIPS
          KeyField = 'Usuario'
          ListField = 'Nome_Completo'
          ListSource = DS_QUSU
          TabOrder = 5
          OnExit = DBLookupComboBox4Exit
        end
        object DBEdit5: TDBEdit
          Left = 114
          Top = 56
          Width = 100
          Height = 21
          DataField = 'PROXY'
          DataSource = ds_tIPS
          TabOrder = 7
        end
        object DBEdit6: TDBEdit
          Left = 223
          Top = 56
          Width = 100
          Height = 21
          DataField = 'GATEWAY'
          DataSource = ds_tIPS
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 331
          Top = 56
          Width = 100
          Height = 21
          DataField = 'DNS1'
          DataSource = ds_tIPS
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 440
          Top = 56
          Width = 100
          Height = 21
          DataField = 'DNS2'
          DataSource = ds_tIPS
          TabOrder = 10
        end
        object DBEdit11: TDBEdit
          Left = 6
          Top = 56
          Width = 100
          Height = 21
          DataField = 'MASCARA'
          DataSource = ds_tIPS
          TabOrder = 6
        end
        object DBEdit12: TDBEdit
          Left = 712
          Top = 56
          Width = 100
          Height = 21
          DataField = 'ICONE'
          DataSource = ds_tIPS
          TabOrder = 13
        end
      end
    end
  end
  object q_IPS: TQuery
    AfterScroll = q_IPSAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT CI.IP1, CI.IP2, CI.IP3, CI.IP4, LTrim(RTrim(Cast([CI].[IP' +
        '1] as varchar)))+'#39'.'#39'+LTrim(RTrim(Cast([CI].[IP2] as varchar)))+'#39 +
        '.'#39'+LTrim(RTrim(Cast([CI].[IP3] as varchar)))+'#39'.'#39'+LTrim(RTrim(Cas' +
        't([CI].[IP4] as varchar))) AS IP, Setores.descricao AS SETOR, Us' +
        'uarios.Nome_Completo AS qusu, CI.Descricao, CI.DetalheS, CI.GATE' +
        'WAY, CI.DNS1, CI.DNS2, CI.PROXY, CI.MASCARA, CI.ICONE '
      
        'FROM (Controle_IPS AS CI LEFT JOIN Setores ON CI.Setor = Setores' +
        '.codigo) LEFT JOIN Usuarios ON CI.Usuario = Usuarios.Usuario'
      
        'ORDER BY CI.IP1, CI.IP2, CI.IP3, CI.IP4, Setores.descricao, Usua' +
        'rios.Nome_Completo;'
      '')
    Left = 176
    Top = 97
    object q_IPSIP1: TSmallintField
      FieldName = 'IP1'
    end
    object q_IPSIP2: TSmallintField
      FieldName = 'IP2'
    end
    object q_IPSIP3: TSmallintField
      FieldName = 'IP3'
    end
    object q_IPSIP4: TSmallintField
      FieldName = 'IP4'
    end
    object q_IPSIP: TStringField
      FieldName = 'IP'
      Size = 255
    end
    object q_IPSSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object q_IPSqusu: TStringField
      FieldName = 'qusu'
      Size = 45
    end
    object q_IPSDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object q_IPSDetalheS: TStringField
      FieldName = 'DetalheS'
      Size = 255
    end
    object q_IPSGATEWAY: TStringField
      FieldName = 'GATEWAY'
    end
    object q_IPSDNS1: TStringField
      FieldName = 'DNS1'
    end
    object q_IPSDNS2: TStringField
      FieldName = 'DNS2'
    end
    object q_IPSPROXY: TStringField
      FieldName = 'PROXY'
    end
    object q_IPSMASCARA: TStringField
      FieldName = 'MASCARA'
    end
    object q_IPSICONE: TStringField
      FieldName = 'ICONE'
      FixedChar = True
      Size = 50
    end
  end
  object ds_qIPS: TDataSource
    DataSet = q_IPS
    Left = 192
    Top = 112
  end
  object t_IPS: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'IP1;IP2;IP3;IP4'
    TableName = 'Controle_IPS'
    Left = 232
    Top = 89
    object t_IPSIP1: TSmallintField
      FieldName = 'IP1'
    end
    object t_IPSIP2: TSmallintField
      FieldName = 'IP2'
    end
    object t_IPSIP3: TSmallintField
      FieldName = 'IP3'
    end
    object t_IPSIP4: TSmallintField
      FieldName = 'IP4'
    end
    object t_IPSSetor: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object t_IPSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object t_IPSPROXY: TStringField
      FieldName = 'PROXY'
    end
    object t_IPSGATEWAY: TStringField
      FieldName = 'GATEWAY'
    end
    object t_IPSDNS1: TStringField
      FieldName = 'DNS1'
    end
    object t_IPSDNS2: TStringField
      FieldName = 'DNS2'
    end
    object t_IPSDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object t_IPSDetalheS: TStringField
      FieldName = 'DetalheS'
      Size = 255
    end
    object t_IPSPlaqueta: TStringField
      FieldName = 'Plaqueta'
      Size = 6
    end
    object t_IPSMASCARA: TStringField
      FieldName = 'MASCARA'
    end
    object t_IPSICONE: TStringField
      FieldName = 'ICONE'
      FixedChar = True
      Size = 50
    end
  end
  object ds_tIPS: TDataSource
    DataSet = t_IPS
    Left = 248
    Top = 112
  end
  object q_setores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Setores.codigo, Setores.descricao'
      'FROM Setores'
      'ORDER BY Setores.descricao;')
    Left = 328
    Top = 113
    object q_setorescodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Setores.codigo'
      Size = 4
    end
    object q_setoresdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Setores.descricao'
      Size = 50
    end
  end
  object ds_qsetores: TDataSource
    DataSet = q_setores
    Left = 344
    Top = 128
  end
  object t_IPS2: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'IP1;IP2;IP3;IP4'
    TableName = 'Controle_IPS'
    Left = 416
    Top = 81
    object SmallintField1: TSmallintField
      FieldName = 'IP1'
    end
    object SmallintField2: TSmallintField
      FieldName = 'IP2'
    end
    object SmallintField3: TSmallintField
      FieldName = 'IP3'
    end
    object SmallintField4: TSmallintField
      FieldName = 'IP4'
    end
    object StringField1: TStringField
      FieldName = 'Plaqueta'
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'DetalheS'
      Size = 255
    end
    object t_IPS2Usuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object t_IPS2MASCARA: TStringField
      FieldName = 'MASCARA'
      FixedChar = True
    end
    object t_IPS2GATEWAY: TStringField
      FieldName = 'GATEWAY'
      FixedChar = True
    end
    object t_IPS2PROXY: TStringField
      FieldName = 'PROXY'
      FixedChar = True
    end
    object t_IPS2DNS1: TStringField
      FieldName = 'DNS1'
      FixedChar = True
    end
    object t_IPS2DNS2: TStringField
      FieldName = 'DNS2'
      FixedChar = True
    end
    object t_IPS2ICONE: TStringField
      FieldName = 'ICONE'
      FixedChar = True
      Size = 50
    end
  end
  object q_pat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PAT.Plaqueta, PAT.Setor, USU.Nome_Completo AS QDESC, PAT.' +
        'Detalhe AS detalhes'
      
        'FROM (Patrimonio AS PAT LEFT JOIN Usuarios AS USU ON PAT.Usuario' +
        ' = USU.Usuario) LEFT JOIN Setores AS [set] ON PAT.Setor = [set].' +
        'codigo'
      
        'WHERE (((PAT.Plaqueta)=:qpat) AND ((PAT.Status_Patrimonio)="0"))' +
        ';')
    Left = 432
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'qpat'
        ParamType = ptUnknown
        Value = '0700'
      end>
    object q_patPlaqueta: TStringField
      FieldName = 'Plaqueta'
      Size = 6
    end
    object q_patSetor: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object q_patQDESC: TStringField
      FieldName = 'QDESC'
      Size = 45
    end
    object q_patdetalhes: TStringField
      FieldName = 'detalhes'
      Size = 50
    end
  end
  object q_up1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Controle_IPS '
      'SET Controle_IPS.Setor = [usu].[setor]'
      'FROM Controle_IPS '
      
        'INNER JOIN Usuarios AS usu ON Controle_IPS.Usuario = usu.Usuario' +
        ' ')
    Left = 64
    Top = 121
  end
  object q_up2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Controle_IPS '
      
        'SET Controle_IPS.Descricao = "utilizado por: "+[usu].[nome_compl' +
        'eto], Controle_IPS.DetalheS = [pat].[detalhe]'
      'FROM Controle_IPS '
      
        'INNER JOIN (Patrimonio AS pat LEFT JOIN Usuarios AS usu ON pat.U' +
        'suario = usu.Usuario) ON Controle_IPS.Plaqueta = pat.Plaqueta2 '
      '')
    Left = 112
    Top = 81
  end
  object q_up3: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Controle_IPS '
      'SET Controle_IPS.Plaqueta = [pat].[plaqueta2]'
      'FROM Controle_IPS '
      
        'INNER JOIN Patrimonio AS pat ON Controle_IPS.Plaqueta = pat.Plaq' +
        'ueta '
      'WHERE (((pat.Plaqueta2) Is Not Null));')
    Left = 104
    Top = 121
  end
  object q_usu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuarios.Usuario, Usuarios.Nome_Completo, Usuarios.Nivel'
      'FROM Usuarios'
      'WHERE (((Usuarios.Nivel)<>"X"))'
      'ORDER BY Usuarios.Nome_Completo;')
    Left = 490
    Top = 89
    object q_usuUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      Size = 10
    end
    object q_usuNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      Size = 45
    end
    object q_usuNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel'
      Size = 4
    end
  end
  object DS_QUSU: TDataSource
    DataSet = q_usu
    Left = 530
    Top = 89
  end
end
