object frmControleHierarquicoCelula: TfrmControleHierarquicoCelula
  Left = 188
  Top = 253
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Células'
  ClientHeight = 435
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 416
    Width = 693
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object gridMain: TDBGrid
    Left = 0
    Top = 184
    Width = 587
    Height = 232
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsMain
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 487
        Visible = True
      end>
  end
  object sbControle: TScrollBox
    Left = 587
    Top = 0
    Width = 106
    Height = 416
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 2
    object btnNovo: TBitBtn
      Left = 10
      Top = 24
      Width = 89
      Height = 25
      Hint = 'Novo Produto'
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
      Left = 10
      Top = 56
      Width = 89
      Height = 25
      Hint = 'Alterar dados do Produto'
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
      Left = 10
      Top = 88
      Width = 89
      Height = 25
      Hint = 'Excluir Produto'
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
      Left = 10
      Top = 120
      Width = 89
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnGravarClick
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
      Left = 10
      Top = 160
      Width = 89
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Caption = '&Cancelar'
      Enabled = False
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnCancelarClick
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
    object btnFechar: TBitBtn
      Left = 11
      Top = 195
      Width = 88
      Height = 25
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Kind = bkClose
    end
    object btnCliente: TBitBtn
      Left = 10
      Top = 240
      Width = 89
      Height = 49
      Caption = 'Cliente(s)'
      TabOrder = 6
      OnClick = btnClienteClick
    end
    object btnColaborador: TBitBtn
      Left = 10
      Top = 296
      Width = 89
      Height = 49
      Caption = 'Colaborador(es)'
      TabOrder = 7
      OnClick = btnColaboradorClick
    end
  end
  object pnlText: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 185
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 10514464
    Enabled = False
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 121
      Height = 13
      Caption = 'Coordenador responsável'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 288
      Top = 80
      Width = 110
      Height = 13
      Caption = 'Supervisor responsável'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 94
      Height = 13
      Caption = 'Descrição da célula'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 256
      Top = 96
      Width = 23
      Height = 22
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 560
      Top = 40
      Width = 23
      Height = 22
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
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 560
      Top = 96
      Width = 23
      Height = 22
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
      OnClick = SpeedButton3Click
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 38
      Height = 13
      Caption = 'Gerente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 258
      Top = 144
      Width = 23
      Height = 22
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
      OnClick = SpeedButton1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 96
      Width = 247
      Height = 21
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dtsCoord
      TabOrder = 0
      OnCloseUp = DBLookupComboBox1CloseUp
      OnExit = DBLookupComboBox1Exit
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 288
      Top = 96
      Width = 271
      Height = 21
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dtsSuper
      TabOrder = 1
      OnCloseUp = DBLookupComboBox2CloseUp
      OnExit = DBLookupComboBox2Exit
    end
    object CheckBox1: TCheckBox
      Left = 288
      Top = 16
      Width = 217
      Height = 17
      Caption = 'Tipo Colaborador independente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object edtDescricao: TEdit
      Left = 8
      Top = 40
      Width = 273
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 288
      Top = 40
      Width = 271
      Height = 21
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dtsColabor
      TabOrder = 4
    end
    object dblGerente: TDBLookupComboBox
      Left = 8
      Top = 144
      Width = 249
      Height = 21
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dtsGerente
      TabOrder = 5
      OnCloseUp = dblGerenteCloseUp
      OnExit = dblGerenteExit
    end
  end
  object qryColabor: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Usuarios.Usuario,'
      ' Usuarios.Nome_Completo'
      'from'
      ' Controle_Hierarquico_Colaborador H'
      ' inner join Usuarios on Usuarios.Usuario = H.Colaborador'
      'where '
      ' H.Hierarquia = '#39'COLABORADOR'#39)
    Left = 144
    Top = 48
    object qryColaborUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qryColaborNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dtsColabor: TDataSource
    DataSet = qryColabor
    Left = 96
    Top = 48
  end
  object qryCoord: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Usuarios.Usuario,'
      ' Usuarios.Nome_Completo'
      'from'
      ' Controle_Hierarquico_Colaborador H'
      ' inner join Usuarios on Usuarios.Usuario = H.Colaborador'
      'where '
      ' H.Hierarquia = '#39'COORDENADOR'#39)
    Left = 56
    Top = 48
    object qryCoordUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qryCoordNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dtsCoord: TDataSource
    DataSet = qryCoord
    Left = 192
    Top = 48
  end
  object qrySuper: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Usuarios.Usuario,'
      ' Usuarios.Nome_Completo'
      'from'
      ' Controle_Hierarquico_Colaborador H'
      ' inner join Usuarios on Usuarios.Usuario = H.Colaborador'
      'where '
      ' H.Hierarquia = '#39'SUPERVISOR'#39)
    Left = 312
    Top = 40
    object qrySuperUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qrySuperNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dtsSuper: TDataSource
    DataSet = qrySuper
    Left = 352
    Top = 40
  end
  object qryMain: TQuery
    AfterScroll = qryMainAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      '*'
      'from'
      ' Controle_Hierarquico_Celulas'
      'where '
      ' Excluido = 0')
    Left = 384
    Top = 296
    object qryMainPK_Celula: TAutoIncField
      FieldName = 'PK_Celula'
      Origin = 'DBNMSCOMEX.Controle_Hierarquuico_Celulas.PK_Celula'
    end
    object qryMainDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Controle_Hierarquuico_Celulas.Descricao'
      FixedChar = True
      Size = 30
    end
    object qryMainFK_Supervisor: TStringField
      FieldName = 'FK_Supervisor'
      Origin = 'DBNMSCOMEX.Controle_Hierarquuico_Celulas.FK_Supervisor'
      FixedChar = True
    end
    object qryMainFK_Coordenador: TStringField
      FieldName = 'FK_Coordenador'
      Origin = 'DBNMSCOMEX.Controle_Hierarquuico_Celulas.FK_Coordenador'
      FixedChar = True
    end
    object qryMainFK_Colaborador_Independente: TStringField
      FieldName = 'FK_Colaborador_Independente'
      Origin = 
        'DBNMSCOMEX.Controle_Hierarquuico_Celulas.FK_Colaborador_Independ' +
        'ente'
      FixedChar = True
    end
    object qryMainTipo: TBooleanField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Controle_Hierarquuico_Celulas.Tipo'
    end
    object qryMainExcluido: TBooleanField
      FieldName = 'Excluido'
      Origin = 'DBNMSCOMEX.Controle_Hierarquuico_Celulas.Excluido'
    end
    object qryMainFK_Gerente: TStringField
      FieldName = 'FK_Gerente'
      Origin = 'DBNMSCOMEX.Controle_Hierarquico_Celulas.FK_Gerente'
      FixedChar = True
    end
  end
  object dtsMain: TDataSource
    DataSet = qryMain
    Left = 344
    Top = 296
  end
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Controle_Hierarquico_Celulas set'
      ' Descricao =:Descricao'
      ' ,FK_Supervisor=:FK_Supervisor'
      ' ,FK_Coordenador=:FK_Coordenador'
      ' ,FK_Colaborador_Independente=:FK_Colaborador_Independente'
      ' ,Tipo=:Tipo'
      ' ,FK_Gerente=:FK_Gerente'
      'where '
      ' PK_Celula=:PK_Celula')
    Left = 24
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Supervisor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Coordenador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Colaborador_Independente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Gerente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_Celula'
        ParamType = ptUnknown
      end>
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_Hierarquico_Celulas'
      ' (Descricao'
      ' ,FK_Supervisor'
      ' ,FK_Coordenador'
      ' ,FK_Colaborador_Independente'
      ' ,Tipo'
      ' ,FK_Gerente)'
      'values'
      ' (:Descricao'
      ' ,:FK_Supervisor'
      ' ,:FK_Coordenador'
      ' ,:FK_Colaborador_Independente'
      ' ,:Tipo'
      ' ,:FK_Gerente)')
    Left = 64
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Supervisor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Coordenador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Colaborador_Independente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Gerente'
        ParamType = ptUnknown
      end>
  end
  object qryExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 104
    Top = 384
  end
  object qryGerente: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Usuarios.Usuario,'
      ' Usuarios.Nome_Completo'
      'from'
      ' Controle_Hierarquico_Colaborador H'
      ' inner join Usuarios on Usuarios.Usuario = H.Colaborador'
      'where '
      ' H.Hierarquia = '#39'GERENTE'#39)
    Left = 336
    Top = 136
    object qryGerenteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qryGerenteNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dtsGerente: TDataSource
    DataSet = qryGerente
    Left = 296
    Top = 152
  end
  object qryAtualizaResp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update '
      'Controle_Numerarios_Solicitacao '
      'set Autorizador_Atual=:AutorizadoNew '
      'Where '
      'Status_Atual = '#39'1'#39' and Autorizador_Atual=:AutorizadorOld')
    Left = 208
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AutorizadoNew'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AutorizadorOld'
        ParamType = ptUnknown
      end>
  end
end
