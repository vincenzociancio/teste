object f_LOGICA: Tf_LOGICA
  Left = 14
  Top = 38
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Pontos de Lógica'
  ClientHeight = 491
  ClientWidth = 742
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
    Width = 742
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Pontos de Lógica'
    Color = clNavy
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
    Width = 742
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
      Width = 726
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
        Width = 83
        Height = 13
        Caption = 'Localizar PONTO'
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
      Width = 726
      Height = 405
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object dbG_papeis: TDBGrid
        Left = 1
        Top = 0
        Width = 872
        Height = 246
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
            FieldName = 'PONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qset'
            Title.Caption = 'Setor'
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qusu'
            Title.Caption = 'Usuário'
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qpatch'
            Title.Caption = 'Patch Panel'
            Width = 180
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'qp1'
            Title.Alignment = taCenter
            Title.Caption = 'Patch-Porta'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qswitch'
            Title.Caption = 'Switch'
            Width = 180
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'qp2'
            Title.Alignment = taCenter
            Title.Caption = 'Switch-Porta'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descrição'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DetalheS'
            Title.Caption = 'Detalhes'
            Width = 400
            Visible = True
          end>
      end
      object paneledt: TPanel
        Left = 2
        Top = 247
        Width = 871
        Height = 165
        TabOrder = 1
        object Label1: TLabel
          Left = 6
          Top = 5
          Width = 28
          Height = 13
          Caption = 'Ponto'
          FocusControl = DBEdit1
        end
        object Label6: TLabel
          Left = 73
          Top = 5
          Width = 25
          Height = 13
          Caption = 'Setor'
        end
        object Label8: TLabel
          Left = 374
          Top = 4
          Width = 58
          Height = 13
          Caption = 'Patch Panel'
        end
        object sbLimpaMoedaFOB: TSpeedButton
          Left = 620
          Top = 20
          Width = 25
          Height = 22
          Hint = 'Limpa Patch'
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
        object SpeedButton3: TSpeedButton
          Left = 344
          Top = 20
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
        object Label2: TLabel
          Left = 650
          Top = 6
          Width = 56
          Height = 13
          Caption = 'Patch-Porta'
        end
        object Label4: TLabel
          Left = 374
          Top = 40
          Width = 32
          Height = 13
          Caption = 'Switch'
        end
        object SpeedButton1: TSpeedButton
          Left = 620
          Top = 56
          Width = 25
          Height = 22
          Hint = 'Limpa Switch'
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
          OnClick = SpeedButton1Click
        end
        object Label5: TLabel
          Left = 650
          Top = 42
          Width = 60
          Height = 13
          Caption = 'Switch-Porta'
        end
        object Label9: TLabel
          Left = 4
          Top = 79
          Width = 48
          Height = 13
          Caption = 'Descrição'
          FocusControl = DBEdit7
        end
        object Label10: TLabel
          Left = 4
          Top = 119
          Width = 42
          Height = 13
          Caption = 'Detalhes'
          FocusControl = DBEdit8
        end
        object Label7: TLabel
          Left = 73
          Top = 41
          Width = 36
          Height = 13
          Caption = 'Usuário'
        end
        object SpeedButton2: TSpeedButton
          Left = 344
          Top = 54
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
          OnClick = SpeedButton2Click
        end
        object DBEdit1: TDBEdit
          Left = 6
          Top = 21
          Width = 64
          Height = 21
          DataField = 'PONTO'
          DataSource = ds_tPONTOS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 649
          Top = 21
          Width = 56
          Height = 21
          DataField = 'PORTA_PATCH_PANEL'
          DataSource = ds_tPONTOS
          TabOrder = 5
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 371
          Top = 20
          Width = 251
          Height = 21
          DataField = 'PATCH_PANEL'
          DataSource = ds_tPONTOS
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DS_QID01
          TabOrder = 3
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 69
          Top = 21
          Width = 273
          Height = 21
          DataField = 'Setor'
          DataSource = ds_tPONTOS
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = ds_qsetores
          TabOrder = 1
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 371
          Top = 56
          Width = 251
          Height = 21
          DataField = 'SWITCH'
          DataSource = ds_tPONTOS
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DS_ID02
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 649
          Top = 57
          Width = 56
          Height = 21
          DataField = 'PORTA_SWITCH'
          DataSource = ds_tPONTOS
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 4
          Top = 95
          Width = 625
          Height = 21
          DataField = 'Descricao'
          DataSource = ds_tPONTOS
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 4
          Top = 135
          Width = 625
          Height = 21
          DataField = 'DetalheS'
          DataSource = ds_tPONTOS
          TabOrder = 8
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 69
          Top = 56
          Width = 273
          Height = 21
          DataField = 'Usuario'
          DataSource = ds_tPONTOS
          KeyField = 'Usuario'
          ListField = 'Nome_Completo'
          ListSource = DS_QUSU
          TabOrder = 2
        end
      end
    end
  end
  object q_PONTOS: TQuery
    AfterScroll = q_PONTOSAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Controle_Rede_Logica.PONTO, [set].descricao AS qset, Usua' +
        'rios.Nome_Completo AS qusu, crp.descricao AS qpatch, Controle_Re' +
        'de_Logica.PORTA_PATCH_PANEL AS qp1, crs.descricao AS qswitch, Co' +
        'ntrole_Rede_Logica.PORTA_SWITCH AS qp2, Controle_Rede_Logica.Pla' +
        'queta, Controle_Rede_Logica.Descricao, Controle_Rede_Logica.Deta' +
        'lheS'
      
        'FROM (((Controle_Rede_Logica LEFT JOIN Controle_Rede_Logica_PATC' +
        'HPANELS AS crp ON Controle_Rede_Logica.PATCH_PANEL = crp.codigo)' +
        ' LEFT JOIN Controle_Rede_Logica_SWITCHS AS crs ON Controle_Rede_' +
        'Logica.SWITCH = crs.codigo) LEFT JOIN Setores AS [set] ON Contro' +
        'le_Rede_Logica.Setor = [set].codigo) LEFT JOIN Usuarios ON Contr' +
        'ole_Rede_Logica.Usuario = Usuarios.Usuario'
      
        'ORDER BY Controle_Rede_Logica.PONTO, [set].descricao, Usuarios.N' +
        'ome_Completo;')
    Left = 176
    Top = 97
    object q_PONTOSPONTO: TStringField
      FieldName = 'PONTO'
      FixedChar = True
      Size = 10
    end
    object q_PONTOSqset: TStringField
      FieldName = 'qset'
      FixedChar = True
      Size = 50
    end
    object q_PONTOSqusu: TStringField
      FieldName = 'qusu'
      FixedChar = True
      Size = 45
    end
    object q_PONTOSqpatch: TStringField
      FieldName = 'qpatch'
      FixedChar = True
      Size = 50
    end
    object q_PONTOSqp1: TSmallintField
      FieldName = 'qp1'
    end
    object q_PONTOSqswitch: TStringField
      FieldName = 'qswitch'
      FixedChar = True
      Size = 50
    end
    object q_PONTOSqp2: TSmallintField
      FieldName = 'qp2'
    end
    object q_PONTOSPlaqueta: TStringField
      FieldName = 'Plaqueta'
      FixedChar = True
      Size = 6
    end
    object q_PONTOSDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 255
    end
    object q_PONTOSDetalheS: TStringField
      FieldName = 'DetalheS'
      FixedChar = True
      Size = 255
    end
  end
  object ds_qIPS: TDataSource
    DataSet = q_PONTOS
    Left = 192
    Top = 112
  end
  object t_PONTOS: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'PONTO'
    TableName = 'Controle_Rede_Logica'
    Left = 232
    Top = 89
    object t_PONTOSPONTO: TStringField
      FieldName = 'PONTO'
      FixedChar = True
      Size = 10
    end
    object t_PONTOSSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object t_PONTOSUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object t_PONTOSPATCH_PANEL: TStringField
      FieldName = 'PATCH_PANEL'
      FixedChar = True
      Size = 10
    end
    object t_PONTOSPORTA_PATCH_PANEL: TSmallintField
      FieldName = 'PORTA_PATCH_PANEL'
    end
    object t_PONTOSSWITCH: TStringField
      FieldName = 'SWITCH'
      FixedChar = True
      Size = 10
    end
    object t_PONTOSPORTA_SWITCH: TSmallintField
      FieldName = 'PORTA_SWITCH'
    end
    object t_PONTOSDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 255
    end
    object t_PONTOSDetalheS: TStringField
      FieldName = 'DetalheS'
      FixedChar = True
      Size = 255
    end
    object t_PONTOSPlaqueta: TStringField
      FieldName = 'Plaqueta'
      FixedChar = True
      Size = 6
    end
  end
  object ds_tPONTOS: TDataSource
    DataSet = t_PONTOS
    Left = 240
    Top = 104
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
      FixedChar = True
      Size = 4
    end
    object q_setoresdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Setores.descricao'
      FixedChar = True
      Size = 50
    end
  end
  object ds_qsetores: TDataSource
    DataSet = q_setores
    Left = 344
    Top = 128
  end
  object t_PONTOS2: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'PONTO'
    TableName = 'Controle_Rede_Logica'
    Left = 416
    Top = 97
    object t_PONTOS2PONTO: TStringField
      FieldName = 'PONTO'
      FixedChar = True
      Size = 10
    end
    object t_PONTOS2Setor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object t_PONTOS2Usuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object t_PONTOS2PATCH_PANEL: TStringField
      FieldName = 'PATCH_PANEL'
      FixedChar = True
      Size = 10
    end
    object t_PONTOS2PORTA_PATCH_PANEL: TSmallintField
      FieldName = 'PORTA_PATCH_PANEL'
    end
    object t_PONTOS2SWITCH: TStringField
      FieldName = 'SWITCH'
      FixedChar = True
      Size = 10
    end
    object t_PONTOS2PORTA_SWITCH: TSmallintField
      FieldName = 'PORTA_SWITCH'
    end
    object t_PONTOS2Descricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 255
    end
    object t_PONTOS2DetalheS: TStringField
      FieldName = 'DetalheS'
      FixedChar = True
      Size = 255
    end
    object t_PONTOS2Plaqueta: TStringField
      FieldName = 'Plaqueta'
      FixedChar = True
      Size = 6
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
        ';'
      '')
    Left = 408
    Top = 161
    ParamData = <
      item
        DataType = ftString
        Name = 'qpat'
        ParamType = ptUnknown
        Value = '0700'
      end>
  end
  object q_ID01: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Controle_Rede_Logica_PATCHPANELS.codigo, Controle_Rede_Lo' +
        'gica_PATCHPANELS.descricao'
      'FROM Controle_Rede_Logica_PATCHPANELS'
      'ORDER BY Controle_Rede_Logica_PATCHPANELS.descricao;')
    Left = 482
    Top = 185
    object q_ID01codigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Controle_Rede_Logica_PATCHPANELS.codigo'
      FixedChar = True
      Size = 10
    end
    object q_ID01descricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Controle_Rede_Logica_PATCHPANELS.descricao'
      FixedChar = True
      Size = 50
    end
  end
  object Q_ID02: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Controle_Rede_Logica_SWITCHS.codigo, Controle_Rede_Logica' +
        '_SWITCHS.descricao'
      'FROM Controle_Rede_Logica_SWITCHS'
      'ORDER BY Controle_Rede_Logica_SWITCHS.descricao;')
    Left = 482
    Top = 217
    object Q_ID02codigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Controle_Rede_Logica_SWITCHS.codigo'
      FixedChar = True
      Size = 10
    end
    object Q_ID02descricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Controle_Rede_Logica_SWITCHS.descricao'
      FixedChar = True
      Size = 50
    end
  end
  object DS_ID02: TDataSource
    DataSet = Q_ID02
    Left = 514
    Top = 217
  end
  object DS_QID01: TDataSource
    DataSet = q_ID01
    Left = 514
    Top = 185
  end
  object qpat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PAT.Plaqueta, PAT.Setor, USU.Nome_Completo AS QDESC, PAT.' +
        'Detalhe AS detalhes'
      
        'FROM (Patrimonio AS PAT LEFT JOIN Usuarios AS USU ON PAT.Usuario' +
        ' = USU.Usuario) LEFT JOIN Setores AS [set] ON PAT.Setor = set.co' +
        'digo'
      
        'WHERE (((PAT.Plaqueta)=:qpat) AND ((PAT.Status_Patrimonio)="0"))' +
        ';')
    Left = 408
    Top = 161
    ParamData = <
      item
        DataType = ftString
        Name = 'qpat'
        ParamType = ptUnknown
        Value = '0700'
      end>
    object StringField1: TStringField
      FieldName = 'Plaqueta'
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'Setor'
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'QDESC'
      Size = 45
    end
    object StringField4: TStringField
      FieldName = 'detalhes'
      Size = 50
    end
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
      FixedChar = True
      Size = 10
    end
    object q_usuNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object q_usuNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel'
      FixedChar = True
      Size = 4
    end
  end
  object DS_QUSU: TDataSource
    DataSet = q_usu
    Left = 530
    Top = 89
  end
  object q_up1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Controle_Rede_Logica '
      'SET Controle_Rede_Logica.Setor = [usu].[setor]'
      'FROM Controle_Rede_Logica '
      
        'INNER JOIN Usuarios AS usu ON Controle_Rede_Logica.Usuario = usu' +
        '.Usuario ')
    Left = 72
    Top = 41
  end
end
