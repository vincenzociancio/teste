object F_usuarios: TF_usuarios
  Left = 322
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usuários'
  ClientHeight = 669
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCampos: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 669
    Align = alClient
    Color = clGray
    TabOrder = 0
    OnEnter = pnlCamposEnter
    OnExit = pnlCamposExit
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 41
      Width = 20
      Height = 13
      Caption = 'Filial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 64
      Width = 36
      Height = 13
      Caption = 'Usuário'
      FocusControl = dbEdtUsuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 90
      Width = 31
      Height = 13
      Caption = 'Senha'
      FocusControl = dbEdtSenha
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 112
      Width = 75
      Height = 13
      Caption = 'Nome Completo'
      FocusControl = dbEdtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 163
      Width = 97
      Height = 13
      Caption = 'Diretório SISCOMEX'
      FocusControl = dbEdtSiscomex
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 189
      Width = 26
      Height = 13
      Caption = 'Nível'
      FocusControl = dbEdtNivel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 7
      Top = 234
      Width = 110
      Height = 13
      Caption = 'Supervisor Operacional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 258
      Width = 27
      Height = 13
      Caption = 'e-mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 296
      Top = 160
      Width = 100
      Height = 13
      Caption = 'Nível Conta Corrente'
      FocusControl = dbEdtNivelCC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpaTipo: TSpeedButton
      Left = 431
      Top = 226
      Width = 25
      Height = 22
      Hint = 'Limpa Supervisor'
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
      OnClick = sbLimpaTipoClick
    end
    object Label14: TLabel
      Left = 7
      Top = 211
      Width = 99
      Height = 13
      Caption = 'Supervisor Comercial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 431
      Top = 203
      Width = 25
      Height = 22
      Hint = 'Limpa o Tipo de Documento de Carga'
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
    object Label15: TLabel
      Left = 7
      Top = 282
      Width = 25
      Height = 13
      Caption = 'Setor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 431
      Top = 274
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
    object Label16: TLabel
      Left = 288
      Top = 64
      Width = 30
      Height = 13
      Caption = 'Ramal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 288
      Top = 87
      Width = 32
      Height = 13
      Caption = 'Celular'
      FocusControl = dbEditCelular
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 8
      Top = 307
      Width = 48
      Height = 13
      Caption = 'Hierarquia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 9
      Top = 133
      Width = 20
      Height = 13
      Caption = 'CPF'
      FocusControl = dbEdtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbEdtUsuario: TDBEdit
      Left = 128
      Top = 56
      Width = 145
      Height = 21
      DataField = 'Usuario'
      DataSource = dsUsuarios
      TabOrder = 2
      OnKeyPress = dbEdtUsuarioKeyPress
    end
    object dbEdtSenha: TDBEdit
      Left = 128
      Top = 80
      Width = 145
      Height = 21
      DataField = 'Senha'
      DataSource = dsUsuarios
      PasswordChar = '*'
      TabOrder = 3
      OnKeyPress = dbEdtUsuarioKeyPress
    end
    object dbEdtNome: TDBEdit
      Left = 128
      Top = 104
      Width = 305
      Height = 21
      DataField = 'Nome_Completo'
      DataSource = dsUsuarios
      TabOrder = 4
    end
    object dbEdtSiscomex: TDBEdit
      Left = 128
      Top = 155
      Width = 305
      Height = 21
      DataField = 'Diretorio_SISCOMEX'
      DataSource = dsUsuarios
      TabOrder = 5
    end
    object dbEdtNivel: TDBEdit
      Left = 128
      Top = 179
      Width = 33
      Height = 21
      DataField = 'Nivel'
      DataSource = dsUsuarios
      TabOrder = 6
      OnKeyPress = dbEdtNivelKeyPress
    end
    object dbLcbEmpresas: TDBLookupComboBox
      Left = 128
      Top = 8
      Width = 409
      Height = 21
      DataField = 'Empresa'
      DataSource = dsUsuarios
      KeyField = 'Codigo'
      ListField = 'Codigo;Razao_Social'
      ListFieldIndex = 1
      ListSource = dsEmpresas
      TabOrder = 0
    end
    object dbLcbFiliais: TDBLookupComboBox
      Left = 128
      Top = 32
      Width = 409
      Height = 21
      DataField = 'Filial'
      DataSource = dsUsuarios
      KeyField = 'Codigo_Filial'
      ListField = 'Codigo_Filial;Descricao'
      ListFieldIndex = 1
      ListSource = dsFiliais
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 347
      Width = 177
      Height = 137
      Caption = ' Recebimento de e-mail '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object DBCheckBox1: TDBCheckBox
        Left = 9
        Top = 82
        Width = 145
        Height = 17
        Caption = 'Solicitação de Numerário'
        DataField = 'Email_Sol_Num'
        DataSource = dsUsuarios
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 9
        Top = 18
        Width = 144
        Height = 17
        Caption = 'Aviso Operacional'
        DataField = 'Email_aviso_oper'
        DataSource = dsUsuarios
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 9
        Top = 34
        Width = 144
        Height = 17
        Caption = 'Aviso Financeiro'
        DataField = 'Email_aviso_finan'
        DataSource = dsUsuarios
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 9
        Top = 50
        Width = 145
        Height = 17
        Caption = 'Aviso de Sistema'
        DataField = 'Email_aviso_sistema'
        DataSource = dsUsuarios
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 9
        Top = 66
        Width = 144
        Height = 17
        Caption = 'Aviso à Diretoria'
        DataField = 'Email_aviso_diretoria'
        DataSource = dsUsuarios
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object GroupBox2: TGroupBox
      Left = 192
      Top = 301
      Width = 345
      Height = 183
      Caption = ' Permissões por Usuário '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      object DBCheckBox7: TDBCheckBox
        Left = 8
        Top = 66
        Width = 123
        Height = 17
        Caption = 'Traduz e Classifica'
        DataField = 'Traduz_Classifica'
        DataSource = dsUsuarios
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 8
        Top = 18
        Width = 123
        Height = 17
        Caption = 'Abre Processos'
        DataField = 'Abre_processos'
        DataSource = dsUsuarios
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 8
        Top = 50
        Width = 126
        Height = 17
        Caption = 'Digitaliza Documentos'
        DataField = 'Digitalizador'
        DataSource = dsUsuarios
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 136
        Top = 34
        Width = 201
        Height = 17
        Caption = 'Inativa Cliente'
        DataField = 'Inativa_Cliente'
        DataSource = dsUsuarios
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox11: TDBCheckBox
        Left = 8
        Top = 34
        Width = 122
        Height = 17
        Caption = 'Distribui Processos'
        DataField = 'Distribui_processo'
        DataSource = dsUsuarios
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox12: TDBCheckBox
        Left = 136
        Top = 50
        Width = 201
        Height = 17
        Caption = 'Edita Processos de Clientes Inativos'
        DataField = 'Edita_cliente_inativo'
        DataSource = dsUsuarios
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 136
        Top = 66
        Width = 201
        Height = 17
        Caption = 'Fecha Processos'
        DataField = 'Fecha_Processo'
        DataSource = dsUsuarios
        TabOrder = 8
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 136
        Top = 82
        Width = 201
        Height = 17
        Caption = 'Edita Processos Fechados'
        DataField = 'Edita_Processo_Fechado'
        DataSource = dsUsuarios
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 8
        Top = 82
        Width = 120
        Height = 17
        Caption = 'Acessa Patrimônio'
        DataField = 'Acessa_Patrimonio'
        DataSource = dsUsuarios
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox15: TDBCheckBox
        Left = 136
        Top = 18
        Width = 201
        Height = 17
        Caption = 'Edita Observações e Eventos (Follow)'
        DataField = 'Edita_eventos'
        DataSource = dsUsuarios
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox16: TDBCheckBox
        Left = 8
        Top = 98
        Width = 233
        Height = 17
        Caption = 'Acessa Cadastro de Parâmetros Faturamento'
        DataField = 'Acessa_ParaFat'
        DataSource = dsUsuarios
        TabOrder = 10
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox17: TDBCheckBox
        Left = 8
        Top = 114
        Width = 178
        Height = 17
        Caption = 'Resp. Operacional por Processos'
        DataField = 'Responsavel'
        DataSource = dsUsuarios
        TabOrder = 11
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox18: TDBCheckBox
        Left = 8
        Top = 130
        Width = 168
        Height = 17
        Caption = 'Resp. Comercial por Processos'
        DataField = 'ResponsavelC'
        DataSource = dsUsuarios
        TabOrder = 12
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox19: TDBCheckBox
        Left = 152
        Top = 2
        Width = 169
        Height = 17
        Caption = 'Distribui Processos Comercial'
        DataField = 'Distribui_processoC'
        DataSource = dsUsuarios
        TabOrder = 13
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox20: TDBCheckBox
        Left = 189
        Top = 131
        Width = 151
        Height = 17
        Caption = 'Edição Follow Up Liberado'
        DataField = 'FOLLOW_LIBERADO'
        DataSource = dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object TDBCheckBox
        Left = 189
        Top = 115
        Width = 139
        Height = 17
        Caption = 'Scanner'
        DataField = 'scanner'
        DataSource = dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dbcbRegistraDi: TDBCheckBox
        Left = 8
        Top = 146
        Width = 81
        Height = 17
        Caption = 'Registra DI'
        DataField = 'Registra_Di'
        DataSource = dsUsuarios
        TabOrder = 16
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dbcbAuditaDI: TDBCheckBox
        Left = 8
        Top = 162
        Width = 73
        Height = 17
        Caption = 'Audita DI'
        DataField = 'Audita_Di'
        DataSource = dsUsuarios
        TabOrder = 17
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object dbLcbSupervisor: TDBLookupComboBox
      Left = 127
      Top = 226
      Width = 305
      Height = 21
      DataField = 'Supervisor'
      DataSource = dsUsuarios
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dsSupervisores
      TabOrder = 8
    end
    object dbEdtEmail: TDBEdit
      Left = 127
      Top = 250
      Width = 305
      Height = 21
      DataField = 'Email'
      DataSource = dsUsuarios
      TabOrder = 9
      OnKeyPress = dbEdtEmailKeyPress
    end
    object dbEdtNivelCC: TDBEdit
      Left = 400
      Top = 179
      Width = 33
      Height = 21
      DataField = 'Nivel_ccorrente'
      DataSource = dsUsuarios
      TabOrder = 7
      OnKeyPress = dbEdtNivelKeyPress
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 127
      Top = 203
      Width = 305
      Height = 21
      DataField = 'SupervisorC'
      DataSource = dsUsuarios
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dsSupervisores
      TabOrder = 12
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 127
      Top = 274
      Width = 305
      Height = 21
      DataField = 'Setor'
      DataSource = dsUsuarios
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = ds_qsetores
      TabOrder = 13
    end
    object dbEditRamal: TDBEdit
      Left = 328
      Top = 56
      Width = 104
      Height = 21
      DataField = 'Ramal'
      DataSource = dsUsuarios
      TabOrder = 14
    end
    object dbEditCelular: TDBEdit
      Left = 328
      Top = 80
      Width = 105
      Height = 21
      DataField = 'Celular'
      DataSource = dsUsuarios
      TabOrder = 15
    end
    object cbHierarquia: TComboBox
      Left = 64
      Top = 306
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 16
      Items.Strings = (
        ''
        'Gerência'
        'Coordenação'
        'Supervisor'
        'Analista')
    end
    object DBCheckBox21: TDBCheckBox
      Left = 447
      Top = 60
      Width = 89
      Height = 17
      Caption = 'Usuário ativo?'
      DataField = 'Ativo'
      DataSource = dsUsuarios
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = DBCheckBox21Click
    end
    object dbEdtCPF: TDBEdit
      Left = 128
      Top = 129
      Width = 305
      Height = 21
      DataField = 'CPF'
      DataSource = dsUsuarios
      MaxLength = 11
      TabOrder = 18
      OnKeyPress = dbEdtCPFKeyPress
    end
  end
  object pnlBotoes: TPanel
    Left = 545
    Top = 0
    Width = 89
    Height = 669
    Align = alRight
    Color = 10514464
    TabOrder = 1
    object Bevel3: TBevel
      Left = 8
      Top = 120
      Width = 73
      Height = 2
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel1: TBevel
      Left = 8
      Top = 207
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 8
      Top = 420
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object Bevel4: TBevel
      Left = 8
      Top = 506
      Width = 73
      Height = 3
      Shape = bsTopLine
      Style = bsRaised
    end
    object btnImprimir: TBitBtn
      Left = 8
      Top = 224
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = btnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object btnFechar: TBitBtn
      Left = 8
      Top = 525
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 13
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object btnNovo: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Hint = 'Novo Armazém'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 8
      Top = 48
      Width = 75
      Height = 25
      Hint = 'Alterar dados do  Armazém'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btnExcluir: TBitBtn
      Left = 8
      Top = 80
      Width = 75
      Height = 25
      Hint = 'Excluir Armazém'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object btnGravar: TBitBtn
      Left = 8
      Top = 136
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnGravarClick
      OnEnter = pnlCamposEnter
      OnExit = pnlCamposExit
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btnCancelar: TBitBtn
      Left = 8
      Top = 168
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnCancelarClick
      OnEnter = pnlCamposEnter
      OnExit = pnlCamposExit
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnAcesso: TBitBtn
      Left = 8
      Top = 256
      Width = 75
      Height = 25
      Hint = 'Restringir acesso do usuário a um cliente'
      Caption = 'A&cesso'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnAcessoClick
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
    object btnMenu: TBitBtn
      Left = 8
      Top = 288
      Width = 75
      Height = 25
      Hint = 'Opções de menu'
      Caption = '&Menu'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnMenuClick
    end
    object btnCheck: TBitBtn
      Left = 8
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Check'
      TabOrder = 9
      OnClick = btnCheckClick
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
    object btnCopiar: TBitBtn
      Left = 8
      Top = 320
      Width = 75
      Height = 25
      Caption = 'Copiar Perfil'
      TabOrder = 8
      OnClick = btnCopiarClick
      NumGlyphs = 2
    end
    object btnLiberaFollow: TBitBtn
      Left = 8
      Top = 382
      Width = 75
      Height = 23
      Caption = 'Follow'
      TabOrder = 10
      OnClick = btnLiberaFollowClick
    end
    object btnAtivarDesativar: TBitBtn
      Left = 8
      Top = 469
      Width = 75
      Height = 25
      Caption = 'Ativar'
      TabOrder = 12
      OnClick = btnAtivarDesativarClick
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
    object btnFerias: TBitBtn
      Left = 8
      Top = 437
      Width = 75
      Height = 25
      Caption = '&Férias'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnFeriasClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
        99999FFFFFFF8888FFF997FFFFCCCC8888F9977FCCCCCCCC8889977CCCC3CCCC
        C889977CCCC3CCCCC88997CCCC33CCCCC38997CCCC333CCCC38997CCC333CCCC
        C38997CCC3CCCCCC3389977C33333CCC38F9977C33333C3C3FF99777C33C33C3
        7FF9977777CCCC7777F997777777777777799999999999999999}
    end
  end
  object pnlPrint: TPanel
    Left = 174
    Top = 84
    Width = 219
    Height = 221
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object Panel4: TPanel
      Left = 6
      Top = 6
      Width = 207
      Height = 27
      Align = alTop
      Caption = 'Impressão de Relatório'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object btnFecharPrint: TBitBtn
      Left = 120
      Top = 176
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnFecharPrintClick
      Kind = bkIgnore
    end
    object rgTipo: TRadioGroup
      Left = 24
      Top = 40
      Width = 177
      Height = 73
      Caption = ' Tipo de Relatório '
      ItemIndex = 0
      Items.Strings = (
        'Relação de usuários'
        'Menu de acesso')
      TabOrder = 0
      OnClick = rgTipoClick
    end
    object rgUsuario: TRadioGroup
      Left = 24
      Top = 120
      Width = 177
      Height = 41
      Caption = ' Usuário '
      Columns = 2
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'Atual'
        'Todos')
      TabOrder = 1
    end
    object btnImprimirRel: TBitBtn
      Left = 24
      Top = 176
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = btnImprimirRelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 488
    Width = 545
    Height = 187
    Color = 10514464
    TabOrder = 3
    object Label17: TLabel
      Left = 8
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Localizar por usuário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbGrdUsuarios: TDBGrid
      Left = 8
      Top = 27
      Width = 529
      Height = 155
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsUsuarios
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
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
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Completo'
          Width = 388
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nivel'
          Width = 32
          Visible = True
        end>
    end
    object edtLocalizar: TEdit
      Left = 112
      Top = 4
      Width = 425
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = edtLocalizarChange
    end
  end
  object pnlAcesso: TPanel
    Left = 4
    Top = 483
    Width = 593
    Height = 134
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Label11: TLabel
      Left = 16
      Top = 40
      Width = 37
      Height = 13
      Caption = 'Clientes'
    end
    object Label12: TLabel
      Left = 320
      Top = 40
      Width = 81
      Height = 13
      Caption = 'Clientes Restritos'
    end
    object Panel1: TPanel
      Left = 6
      Top = 6
      Width = 581
      Height = 27
      Align = alTop
      Caption = 'Acesso Restrito'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnFecharAcesso: TBitBtn
      Left = 258
      Top = 224
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnFecharAcessoClick
      Kind = bkIgnore
    end
    object dbLcbCli: TDBLookupListBox
      Left = 16
      Top = 56
      Width = 257
      Height = 160
      KeyField = 'Codigo'
      ListField = 'Codigo;Razao_Social'
      ListFieldIndex = 1
      ListSource = dsCli
      TabOrder = 2
    end
    object dbLcbCliAcesso: TDBLookupListBox
      Left = 320
      Top = 56
      Width = 257
      Height = 160
      KeyField = 'Importador'
      ListField = 'Importador;Razao_Social'
      ListFieldIndex = 1
      ListSource = dsCliAcesso
      TabOrder = 3
    end
    object btnIncAcesso: TBitBtn
      Left = 280
      Top = 104
      Width = 33
      Height = 25
      TabOrder = 4
      OnClick = btnIncAcessoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnExcAcesso: TBitBtn
      Left = 280
      Top = 144
      Width = 33
      Height = 25
      TabOrder = 5
      OnClick = btnExcAcessoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object pnlMenu: TPanel
    Left = 4
    Top = 488
    Width = 593
    Height = 121
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 5
    Visible = False
    object Label13: TLabel
      Left = 16
      Top = 40
      Width = 80
      Height = 13
      Caption = 'Menu de Acesso'
    end
    object Panel3: TPanel
      Left = 6
      Top = 6
      Width = 581
      Height = 27
      Align = alTop
      Caption = 'Menu de Acesso'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnFecharMenu: TBitBtn
      Left = 314
      Top = 304
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnFecharMenuClick
      Kind = bkIgnore
    end
    object btnGravarMenu: TBitBtn
      Left = 200
      Top = 304
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnGravarMenuClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object ctvLista: TCheckTreeView
      Left = 16
      Top = 56
      Width = 561
      Height = 241
      CheckBitmap.Data = {
        36100000424D3610000000000000360000002800000040000000100000000100
        2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
        C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
        C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
        C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0
        C000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFF0000000000FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000C0C0C0FFFFFFFF00C0C0C08080808000C0C0C0FFFFFF
        FF00C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF000000000000000000000000FFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFC0C0C0C0008080808080808000808080C0C0C0
        C000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFF00000000000000000000000000000000000000
        0000FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000C0C0C080808080008080808080808000808080808080
        8000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFF0000000000000000FFFFFFFF00000000000000
        0000000000FFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFF8080808000808080C0C0C0C000808080808080
        8000808080C0C0C0C000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFF0000000000FFFFFFFFFFFFFF00FFFFFF000000
        00000000000000000000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000C0C0C08080808000C0C0C0FFFFFFFF00C0C0C0808080
        80008080808080808000C0C0C0C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF000000000000000000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0
        C0008080808080808000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFF0000000000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000C0C0C0FFFFFFFF00C0C0C0FFFFFFFF00C0C0C0FFFFFF
        FF00C0C0C08080808000C0C0C0C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF008080800000000000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0
        C000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080000000000000000000000000000000000000000000000000000000
        00000000000000000000000000C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080000000000000000000000000000000000000000000000000000000
        00000000000000000000000000C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080000000000000000000000000000000000000000000000000000000
        00000000000000000000000000C0C0C0C000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080808080800080808080808080008080808080808000808080808080
        800080808080808080008080808080808000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080808080800080808080808080008080808080808000808080808080
        800080808080808080008080808080808000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00808080808080800080808080808080008080808080808000808080808080
        800080808080808080008080808080808000FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00}
      Indent = 19
      StateImages = IMG
      TabOrder = 3
    end
  end
  object pnlCopiarPerfil: TPanel
    Left = 153
    Top = 93
    Width = 297
    Height = 190
    BevelWidth = 4
    TabOrder = 6
    Visible = False
    object Label20: TLabel
      Left = 16
      Top = 32
      Width = 73
      Height = 13
      Caption = 'Copiar perfil de:'
    end
    object Label21: TLabel
      Left = 16
      Top = 64
      Width = 25
      Height = 13
      Caption = 'Para:'
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 88
      Width = 265
      Height = 57
      Caption = 'Opções'
      TabOrder = 0
      object chkAcesso: TCheckBox
        Left = 32
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Acesso'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object chkMenu: TCheckBox
        Left = 128
        Top = 24
        Width = 57
        Height = 17
        Caption = 'Menu'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object StaticText1: TStaticText
      Left = 4
      Top = 4
      Width = 289
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Copiar perfil'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object btnCopiarCopiar: TBitBtn
      Left = 128
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Copiar'
      TabOrder = 2
      OnClick = btnCopiarCopiarClick
    end
    object btnCopiarFechar: TBitBtn
      Left = 205
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = btnCopiarFecharClick
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 104
      Top = 32
      Width = 177
      Height = 21
      KeyField = 'usuario'
      ListField = 'usuario'
      ListSource = dtsPerfill_Usuarios
      TabOrder = 4
    end
    object edtPerfil_Para: TEdit
      Left = 104
      Top = 56
      Width = 177
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object pnlLiberarFollow: TPanel
    Left = 277
    Top = 514
    Width = 321
    Height = 201
    TabOrder = 7
    Visible = False
    object btnIncluir: TBitBtn
      Left = 84
      Top = 24
      Width = 70
      Height = 22
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnExcluiFollow: TBitBtn
      Left = 159
      Top = 24
      Width = 74
      Height = 22
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = btnExcluiFollowClick
    end
    object ME_nossaref: TMaskEdit
      Left = 9
      Top = 26
      Width = 66
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 2
      Text = '     /  '
    end
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 319
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Edição Follow Up Liberado'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 67
      Width = 307
      Height = 120
      DataSource = dsUsu_follow
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'processo'
          Title.Caption = 'Processo'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'usuario'
          Title.Caption = 'Usuario'
          Width = 156
          Visible = True
        end>
    end
    object btnFollowfecha: TBitBtn
      Left = 238
      Top = 24
      Width = 75
      Height = 22
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = btnFollowfechaClick
    end
  end
  object pnlDistribuicaoProcessos: TPanel
    Left = 110
    Top = 290
    Width = 371
    Height = 100
    BevelWidth = 4
    TabOrder = 8
    Visible = False
    object Label23: TLabel
      Left = 10
      Top = 38
      Width = 106
      Height = 13
      Caption = 'Enviar Processos para'
    end
    object StaticText3: TStaticText
      Left = 4
      Top = 4
      Width = 363
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Distribuição de Processos'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object btnEnviaDistribuicao: TBitBtn
      Left = 281
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = btnEnviaDistribuicaoClick
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 124
      Top = 32
      Width = 234
      Height = 21
      KeyField = 'Usuario'
      ListField = 'Email'
      ListSource = dsDistribuiProcessos
      TabOrder = 1
    end
  end
  object dsEmpresas: TDataSource
    DataSet = qrEmpresas
    Left = 248
    Top = 24
  end
  object tbUsuariosT: TTable
    AfterInsert = tbUsuariosTAfterInsert
    AfterEdit = tbUsuariosTAfterInsert
    AfterPost = tbUsuariosTAfterCancel
    AfterCancel = tbUsuariosTAfterCancel
    BeforeDelete = tbUsuariosTBeforeDelete
    AfterScroll = tbUsuariosTAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Usuarios'
    Left = 440
    Top = 144
    object tbUsuariosTEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosTFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosTUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosTSenha: TStringField
      FieldName = 'Senha'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosTNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object tbUsuariosTDiretorio_SISCOMEX: TStringField
      FieldName = 'Diretorio_SISCOMEX'
      FixedChar = True
      Size = 50
    end
    object tbUsuariosTNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosTNivel_ccorrente: TStringField
      FieldName = 'Nivel_ccorrente'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosTData_validade_senha: TDateTimeField
      FieldName = 'Data_validade_senha'
    end
    object tbUsuariosTEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
    object tbUsuariosTEmail_Sol_Num: TIntegerField
      FieldName = 'Email_Sol_Num'
    end
    object tbUsuariosTEmail_aviso_oper: TIntegerField
      FieldName = 'Email_aviso_oper'
    end
    object tbUsuariosTEmail_aviso_finan: TIntegerField
      FieldName = 'Email_aviso_finan'
    end
    object tbUsuariosTEmail_aviso_diretoria: TIntegerField
      FieldName = 'Email_aviso_diretoria'
    end
    object tbUsuariosTEmail_aviso_sistema: TIntegerField
      FieldName = 'Email_aviso_sistema'
    end
    object tbUsuariosTDistribui_processo: TIntegerField
      FieldName = 'Distribui_processo'
    end
    object tbUsuariosTAbre_processos: TIntegerField
      FieldName = 'Abre_processos'
    end
    object tbUsuariosTEdita_eventos: TIntegerField
      FieldName = 'Edita_eventos'
    end
    object tbUsuariosTDigitalizador: TIntegerField
      FieldName = 'Digitalizador'
    end
    object tbUsuariosTTraduz_Classifica: TIntegerField
      FieldName = 'Traduz_Classifica'
    end
    object tbUsuariosTInativa_Cliente: TIntegerField
      FieldName = 'Inativa_Cliente'
    end
    object tbUsuariosTEdita_cliente_inativo: TIntegerField
      FieldName = 'Edita_cliente_inativo'
    end
    object tbUsuariosTFecha_Processo: TIntegerField
      FieldName = 'Fecha_Processo'
    end
    object tbUsuariosTEdita_Processo_Fechado: TIntegerField
      FieldName = 'Edita_Processo_Fechado'
    end
    object tbUsuariosTAcessa_Patrimonio: TIntegerField
      FieldName = 'Acessa_Patrimonio'
    end
    object tbUsuariosTSupervisor: TStringField
      FieldName = 'Supervisor'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosTAcessa_PARAFAT: TIntegerField
      FieldName = 'Acessa_PARAFAT'
    end
    object tbUsuariosTDesconto_Faturamento: TIntegerField
      FieldName = 'Desconto_Faturamento'
    end
    object tbUsuariosTResponsavel: TIntegerField
      FieldName = 'Responsavel'
    end
    object tbUsuariosTDistribui_processoC: TIntegerField
      FieldName = 'Distribui_processoC'
    end
    object tbUsuariosTResponsavelC: TIntegerField
      FieldName = 'ResponsavelC'
    end
    object tbUsuariosTSupervisorC: TStringField
      FieldName = 'SupervisorC'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosTSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosTCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 15
    end
    object tbUsuariosTFOLLOW_LIBERADO: TIntegerField
      FieldName = 'FOLLOW_LIBERADO'
    end
    object tbUsuariosTPK_USUARIO: TIntegerField
      FieldName = 'PK_USUARIO'
    end
    object tbUsuariosTRamal: TStringField
      FieldName = 'Ramal'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosTCelular: TStringField
      FieldName = 'Celular'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosTHierarquia: TIntegerField
      FieldName = 'Hierarquia'
    end
    object tbUsuariosTAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tbUsuariosTscanner: TBooleanField
      FieldName = 'scanner'
    end
    object tbUsuariosTMontador: TBooleanField
      FieldName = 'Montador'
    end
    object tbUsuariosTDocumentador: TBooleanField
      FieldName = 'Documentador'
    end
    object tbUsuariosTArquivista: TBooleanField
      FieldName = 'Arquivista'
    end
    object tbUsuariosTAcessoWeb: TBooleanField
      FieldName = 'AcessoWeb'
    end
    object tbUsuariosTRegistra_Di: TIntegerField
      FieldName = 'Registra_Di'
    end
    object tbUsuariosTAudita_Di: TIntegerField
      FieldName = 'Audita_Di'
    end
  end
  object dsFiliais: TDataSource
    DataSet = qrFiliais
    Left = 296
    Top = 24
  end
  object dsUsuarios: TDataSource
    DataSet = tbUsuarios
    Left = 408
    Top = 120
  end
  object dsSupervisores: TDataSource
    DataSet = qrSupervisores
    Left = 344
    Top = 24
  end
  object qrEmpresas: TQuery
    AfterOpen = qrEmpresasAfterScroll
    AfterScroll = qrEmpresasAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Empresas ORDER BY Razao_Social')
    Left = 240
    Top = 8
    object qrEmpresasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Empresas.Codigo'
      Size = 4
    end
    object qrEmpresasRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Empresas.Razao_Social'
      Size = 70
    end
  end
  object qrFiliais: TQuery
    AfterOpen = qrFiliaisAfterScroll
    AfterScroll = qrFiliaisAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT * FROM Filiais WHERE Codigo_Empresa = :emp ORDER BY Descr' +
        'icao')
    Left = 288
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end>
    object qrFiliaisCodigo_Filial: TStringField
      FieldName = 'Codigo_Filial'
      Origin = 'DBNMSCOMEX.Filiais.Codigo_Filial'
      Size = 4
    end
    object qrFiliaisDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Filiais.Descricao'
      Size = 50
    end
  end
  object qrSupervisores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Usuarios'
      'WHERE Empresa = :emp AND Filial = :filial AND Usuario <> :usu'
      'ORDER BY Nome_Completo')
    Left = 336
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
        Name = 'usu'
        ParamType = ptUnknown
        Value = ' '
      end>
  end
  object qrCli: TQuery
    AfterOpen = qrCliAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO'
      'FROM Importadores AS I '
      
        'WHERE I.Empresa = :emp AND I.Filial = :filial AND I.CGC_CPF <> '#39 +
        #39
      
        'AND Not Exists ( SELECT *  FROM UsuariosClientes AS U  WHERE U.I' +
        'mportador = I.Codigo'
      'AND U.Usuario = :usu )'
      'ORDER BY I.Razao_Social, I.Codigo')
    Left = 16
    Top = 328
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
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrCliCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrCliRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrCliCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object qrCliAcesso: TQuery
    AfterOpen = qrCliAcessoAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT G.Importador, I.Razao_Social, I.CNPJ_CPF_COMPLETO'
      
        'FROM UsuariosClientes AS G INNER JOIN Importadores AS I ON G.Imp' +
        'ortador = I.Codigo'
      'WHERE G.Usuario = :usu'
      'ORDER BY I.Razao_Social, I.Codigo')
    Left = 64
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrCliAcessoImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.UsuariosClientes.Importador'
      FixedChar = True
      Size = 4
    end
    object qrCliAcessoRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrCliAcessoCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object dsCli: TDataSource
    DataSet = qrCli
    Left = 32
    Top = 344
  end
  object dsCliAcesso: TDataSource
    DataSet = qrCliAcesso
    Left = 80
    Top = 344
  end
  object qrCliInc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO UsuariosClientes (Usuario, Importador)'
      'SELECT :usu, :imp')
    Left = 120
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end>
  end
  object qrCliExc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE'
      'FROM UsuariosClientes'
      'WHERE Usuario = :usu AND Importador = :imp')
    Left = 152
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
      end>
  end
  object qrMenu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT M.Codigo, M.Descricao, M.Nivel, M.Habilitado, UM.ACESSA'
      
        'FROM Menus AS M LEFT JOIN UsuariosMenus AS UM ON M.Codigo = UM.M' +
        'enu'
      'WHERE UM.Usuario = :usu AND M.Habilitado = 1'
      'ORDER BY M.Codigo')
    Left = 496
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrMenuCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Menus.Codigo'
      FixedChar = True
      Size = 8
    end
    object qrMenuDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Menus.Descricao'
      FixedChar = True
      Size = 150
    end
    object qrMenuNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Menus.Nivel'
      FixedChar = True
      Size = 4
    end
    object qrMenuHabilitado: TSmallintField
      FieldName = 'Habilitado'
      Origin = 'DBNMSCOMEX.Menus.Habilitado'
    end
    object qrMenuACESSA: TSmallintField
      FieldName = 'ACESSA'
      Origin = 'DBNMSCOMEX.UsuariosMenus.ACESSA'
    end
  end
  object qrMenuInc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO UsuariosMenus (Usuario, Menu, Acessa)'
      
        'SELECT :usu, Codigo, Case When Nivel < :nivel Then 0 When Nivel ' +
        '>= :nivel Then Habilitado end'
      'FROM Menus')
    Left = 168
    Top = 376
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nivel'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nivel'
        ParamType = ptUnknown
      end>
  end
  object qrMenuExc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM UsuariosMenus'
      'WHERE Usuario = :usu')
    Left = 208
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end>
  end
  object qrMenuAtu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE UsuariosMenus'
      'SET Acessa = :acesso'
      'WHERE Usuario = :usu AND Menu = :cod')
    Left = 240
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'acesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'usu'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
  end
  object quppro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Processos '
      'SET Processos.Responsavel_Empresa = Usuarios.SUPERVISOR'
      'FROM Processos'
      
        'INNER JOIN Usuarios ON Processos.Responsavel_Empresa = Usuarios.' +
        'Usuario '
      
        'WHERE (((Usuarios.Usuario)=:QUSU) AND ((Usuarios.Responsavel)=0)' +
        ');')
    Left = 488
    Top = 287
    ParamData = <
      item
        DataType = ftString
        Name = 'QUSU'
        ParamType = ptUnknown
        Value = 'xxx'
      end>
  end
  object Q_IN_RES_HAB: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Usuarios_Resp_habilitados ( Usuarios, Usuarios_HABIL' +
        'ITADO )'
      'SELECT Usuarios.Usuario, Usuarios_1.Usuario'
      'FROM Usuarios, Usuarios AS Usuarios_1')
    Left = 278
    Top = 384
  end
  object q_setores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Setores.codigo, Setores.descricao'
      'FROM Setores'
      'where Excluido <> 1'
      'ORDER BY Setores.descricao;')
    Left = 248
    Top = 81
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
    Left = 368
    Top = 88
  end
  object tbUsuarios: TTable
    AfterInsert = tbUsuariosAfterInsert
    AfterEdit = tbUsuariosAfterEdit
    AfterPost = tbUsuariosAfterPost
    AfterCancel = tbUsuariosAfterCancel
    BeforeDelete = tbUsuariosBeforeDelete
    AfterScroll = tbUsuariosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'usuarios'
    Left = 398
    Top = 56
    object tbUsuariosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosSenha: TStringField
      FieldName = 'Senha'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object tbUsuariosDiretorio_SISCOMEX: TStringField
      FieldName = 'Diretorio_SISCOMEX'
      FixedChar = True
      Size = 50
    end
    object tbUsuariosNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosNivel_ccorrente: TStringField
      FieldName = 'Nivel_ccorrente'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosData_validade_senha: TDateTimeField
      FieldName = 'Data_validade_senha'
    end
    object tbUsuariosEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
    object tbUsuariosEmail_Sol_Num: TIntegerField
      FieldName = 'Email_Sol_Num'
    end
    object tbUsuariosEmail_aviso_oper: TIntegerField
      FieldName = 'Email_aviso_oper'
    end
    object tbUsuariosEmail_aviso_finan: TIntegerField
      FieldName = 'Email_aviso_finan'
    end
    object tbUsuariosEmail_aviso_diretoria: TIntegerField
      FieldName = 'Email_aviso_diretoria'
    end
    object tbUsuariosEmail_aviso_sistema: TIntegerField
      FieldName = 'Email_aviso_sistema'
    end
    object tbUsuariosDistribui_processo: TIntegerField
      FieldName = 'Distribui_processo'
    end
    object tbUsuariosAbre_processos: TIntegerField
      FieldName = 'Abre_processos'
    end
    object tbUsuariosEdita_eventos: TIntegerField
      FieldName = 'Edita_eventos'
    end
    object tbUsuariosDigitalizador: TIntegerField
      FieldName = 'Digitalizador'
    end
    object tbUsuariosTraduz_Classifica: TIntegerField
      FieldName = 'Traduz_Classifica'
    end
    object tbUsuariosInativa_Cliente: TIntegerField
      FieldName = 'Inativa_Cliente'
    end
    object tbUsuariosEdita_cliente_inativo: TIntegerField
      FieldName = 'Edita_cliente_inativo'
    end
    object tbUsuariosFecha_Processo: TIntegerField
      FieldName = 'Fecha_Processo'
    end
    object tbUsuariosEdita_Processo_Fechado: TIntegerField
      FieldName = 'Edita_Processo_Fechado'
    end
    object tbUsuariosAcessa_Patrimonio: TIntegerField
      FieldName = 'Acessa_Patrimonio'
    end
    object tbUsuariosSupervisor: TStringField
      FieldName = 'Supervisor'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosAcessa_PARAFAT: TIntegerField
      FieldName = 'Acessa_PARAFAT'
    end
    object tbUsuariosDesconto_Faturamento: TIntegerField
      FieldName = 'Desconto_Faturamento'
    end
    object tbUsuariosResponsavel: TIntegerField
      FieldName = 'Responsavel'
    end
    object tbUsuariosDistribui_processoC: TIntegerField
      FieldName = 'Distribui_processoC'
    end
    object tbUsuariosResponsavelC: TIntegerField
      FieldName = 'ResponsavelC'
    end
    object tbUsuariosSupervisorC: TStringField
      FieldName = 'SupervisorC'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object tbUsuariosFOLLOW_LIBERADO: TIntegerField
      FieldName = 'FOLLOW_LIBERADO'
    end
    object tbUsuariosPK_USUARIO: TIntegerField
      FieldName = 'PK_USUARIO'
    end
    object tbUsuariosRamal: TStringField
      FieldName = 'Ramal'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosCelular: TStringField
      FieldName = 'Celular'
      FixedChar = True
      Size = 10
    end
    object tbUsuariosHierarquia: TIntegerField
      FieldName = 'Hierarquia'
    end
    object tbUsuariosAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object tbUsuariosscanner: TBooleanField
      FieldName = 'scanner'
    end
    object tbUsuariosCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 15
    end
    object tbUsuariosMontador: TBooleanField
      FieldName = 'Montador'
    end
    object tbUsuariosDocumentador: TBooleanField
      FieldName = 'Documentador'
    end
    object tbUsuariosArquivista: TBooleanField
      FieldName = 'Arquivista'
    end
    object tbUsuariosAcessoWeb: TBooleanField
      FieldName = 'AcessoWeb'
    end
    object tbUsuariosRegistra_Di: TIntegerField
      FieldName = 'Registra_Di'
    end
    object tbUsuariosAudita_Di: TIntegerField
      FieldName = 'Audita_Di'
    end
    object tbUsuariosFerias: TBooleanField
      FieldName = 'Ferias'
    end
  end
  object qr_tot_usuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Usuario from Usuarios')
    Left = 202
    Top = 358
    object qr_tot_usuarioUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
  end
  object qrUltimoUsuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select max(PK_USUARIO) as ultimo_usuario from MSLOGIN_USUARIOS')
    Left = 470
    Top = 144
    object qrUltimoUsuarioultimo_usuario: TIntegerField
      FieldName = 'ultimo_usuario'
      Origin = 'DBNMSCOMEX.MSLOGIN_USUARIOS.PK_USUARIO'
    end
  end
  object qrManipulaMSLOGIN_USUARIOS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuarios.USUARIO, Usuarios.SENHA, Usuarios.NOME_COMPLETO,'
      
        'Usuarios.EMAIL, Usuarios.DATA_VALIDADE_SENHA, Controle_Usuarios_' +
        'Senhas.Senha_Email'
      
        'FROM Usuarios INNER JOIN Controle_Usuarios_Senhas ON Usuarios.Us' +
        'uario = Controle_Usuarios_Senhas.Usuario')
    Left = 470
    Top = 184
    object qrManipulaMSLOGIN_USUARIOSUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 10
    end
    object qrManipulaMSLOGIN_USUARIOSSENHA: TStringField
      FieldName = 'SENHA'
      FixedChar = True
      Size = 10
    end
    object qrManipulaMSLOGIN_USUARIOSNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      FixedChar = True
      Size = 45
    end
    object qrManipulaMSLOGIN_USUARIOSEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object qrManipulaMSLOGIN_USUARIOSDATA_VALIDADE_SENHA: TDateTimeField
      FieldName = 'DATA_VALIDADE_SENHA'
    end
    object qrManipulaMSLOGIN_USUARIOSSenha_Email: TStringField
      FieldName = 'Senha_Email'
      FixedChar = True
      Size = 50
    end
  end
  object tbMSLOGIN_USUARIOS: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'MSLOGIN_Usuarios'
    Left = 510
    Top = 144
    object tbMSLOGIN_USUARIOSPK_USUARIO: TIntegerField
      FieldName = 'PK_USUARIO'
    end
    object tbMSLOGIN_USUARIOSLOGIN: TStringField
      FieldName = 'LOGIN'
      FixedChar = True
      Size = 50
    end
    object tbMSLOGIN_USUARIOSSENHA: TStringField
      FieldName = 'SENHA'
      FixedChar = True
      Size = 30
    end
    object tbMSLOGIN_USUARIOSFRASE_SECRETA: TStringField
      FieldName = 'FRASE_SECRETA'
      FixedChar = True
      Size = 255
    end
    object tbMSLOGIN_USUARIOSNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      FixedChar = True
      Size = 140
    end
    object tbMSLOGIN_USUARIOSDATA_VALIDADE_SENHA: TStringField
      FieldName = 'DATA_VALIDADE_SENHA'
      FixedChar = True
    end
    object tbMSLOGIN_USUARIOSEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 200
    end
    object tbMSLOGIN_USUARIOSSENHA_EMAIL: TStringField
      FieldName = 'SENHA_EMAIL'
      FixedChar = True
      Size = 30
    end
    object tbMSLOGIN_USUARIOSTAMANHO_MAXIMO_ANEXO: TIntegerField
      FieldName = 'TAMANHO_MAXIMO_ANEXO'
    end
    object tbMSLOGIN_USUARIOSATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object tbMSLOGIN_USUARIOSTIPO_USUARIO: TStringField
      FieldName = 'TIPO_USUARIO'
      FixedChar = True
      Size = 3
    end
    object tbMSLOGIN_USUARIOSEMAIL_MSW: TStringField
      FieldName = 'EMAIL_MSW'
      FixedChar = True
      Size = 200
    end
    object tbMSLOGIN_USUARIOSSENHA_EMAIL_MSW: TStringField
      FieldName = 'SENHA_EMAIL_MSW'
      FixedChar = True
      Size = 30
    end
  end
  object qrySolicitacaoNumerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' Solicitante'
      'from'
      ' Controle_Numerarios_Solicitacao'
      'where '
      ' Solicitante=:Usuario'
      ' and Status_Atual = 1')
    Left = 62
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object IMG: TImageList
    Left = 64
    Top = 136
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080C0C0C0
      C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
      C000C0C0C0C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0
      C000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF000000000000000000000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000C0C0C0FF00000000C0C0C08080808000C0C0C0FF00000000C0C0C0FF0000
      0000C0C0C0C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF000000000000000000000000000000FF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFC0C0C0C0008080808080808000808080C0C0C0C000FFFFFFC0C0C0
      C000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000000000000000000000000000000000000000000000000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000C0C0C0808080800080808080808080008080808080808000C0C0C0FF0000
      0000C0C0C0C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      00000000000000000000000000FF000000000000000000000000000000FF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFF8080808000808080C0C0C0C0008080808080808000808080C0C0C0
      C000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      00000000000000000000FFFFFFFF000000000000000000000000000000000000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000C0C0C08080808000C0C0C0FF00000000C0C0C08080808000808080808080
      8000C0C0C0C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000000000000000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0C000808080808080
      8000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000000000000000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000C0C0C0FF00000000C0C0C0FF00000000C0C0C0FF00000000C0C0C0808080
      8000C0C0C0C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0C000FFFFFFC0C0C0
      C000FFFFFFC0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0C0C0C000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000808080808080
      8000808080808080800080808080808080008080808080808000808080808080
      80008080808080808000FFFFFFFF00000000FFFFFFFF00000000808080808080
      8000808080808080800080808080808080008080808080808000808080808080
      80008080808080808000FFFFFFFF00000000FFFFFFFF00000000808080808080
      8000808080808080800080808080808080008080808080808000808080808080
      80008080808080808000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000
      0000FFFFFFFF00000000FFFFFFFF00000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000055555555555555555555555555555555
      5555400140014001555545514551400155554551465144515555455144514001
      5555455148114011555545514911400155554551498141015555455145414001
      5555455145614541555545514551400155554001400140015555400140014001
      5555555555555555555555555555555500000000000000000000000000000000
      000000000000}
  end
  object qryDelete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from usuarios'
      'where usuario=:Usuario')
    Left = 56
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
  end
  object qryPerfill_Usuarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select usuario'
      'from usuarios'
      'order by usuario')
    Left = 808
    Top = 408
    object qryPerfill_Usuariosusuario: TStringField
      FieldName = 'usuario'
      FixedChar = True
      Size = 10
    end
  end
  object dtsPerfill_Usuarios: TDataSource
    DataSet = qryPerfill_Usuarios
    Left = 928
    Top = 296
  end
  object qryPerfil_Delete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 952
    Top = 208
  end
  object qryPerfil_Gravar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 984
    Top = 440
  end
  object qrinsertUsu_Follow: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [MS2000].[dbo].[Usuario_Follow_aberto]'
      '           ([processo]'
      '           ,[usuario])'
      '     VALUES'
      '           (:Processo,:usuario)')
    Left = 485
    Top = 506
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Processos where Codigo =:qProcesso')
    Left = 389
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'qProcesso'
        ParamType = ptUnknown
      end>
  end
  object qrUsu_Follow: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * From Usuario_Follow_aberto  where  usuario =:qUsuario')
    Left = 317
    Top = 546
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'qUsuario'
        ParamType = ptUnknown
      end>
    object qrUsu_Followprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object qrUsu_Followusuario: TStringField
      FieldName = 'usuario'
      FixedChar = True
      Size = 10
    end
  end
  object dsUsu_follow: TDataSource
    DataSet = qrUsu_Follow
    Left = 413
    Top = 506
  end
  object qrDeleteUsu_follow: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete  From Usuario_Follow_aberto where processo =:processo ')
    Left = 293
    Top = 506
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
  object qrProcessoUsu_follow: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' select * From Usuario_Follow_aberto where processo =:Processo')
    Left = 453
    Top = 554
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object qrProcessoUsu_followprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object qrProcessoUsu_followusuario: TStringField
      FieldName = 'usuario'
      FixedChar = True
      Size = 10
    end
  end
  object dsDistribuiProcessos: TDataSource
    DataSet = qryDistribuiProcessos
    Left = 912
    Top = 728
  end
  object qryDistribuiProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Email, Usuario'
      '  from usuarios'
      ' where (Email <> '#39#39') and (Ativo = 1)'
      'order by Email')
    Left = 808
    Top = 728
    object qryDistribuiProcessosEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.usuarios.Email'
      FixedChar = True
      Size = 50
    end
    object qryDistribuiProcessosUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.usuarios.Usuario'
      FixedChar = True
      Size = 15
    end
  end
end
