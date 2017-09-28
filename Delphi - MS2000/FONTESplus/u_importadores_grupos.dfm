object f_importadores_grupos: Tf_importadores_grupos
  Left = 58
  Top = 120
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Agrupamento de Empresas / Listas de E-mail Avisos'
  ClientHeight = 295
  ClientWidth = 879
  Color = 10514464
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
  object DBGrid1: TDBGrid
    Left = 4
    Top = 7
    Width = 469
    Height = 242
    DataSource = ds_qimportadores
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CNPJ_CPF_COMPLETO'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Alignment = taCenter
        Title.Caption = 'Clientes'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 321
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 480
    Top = 96
    Width = 393
    Height = 153
    Color = clSilver
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 30
      Width = 96
      Height = 13
      Caption = 'Avisos Operacionais'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 8
      Top = 71
      Width = 88
      Height = 13
      Caption = 'Avisos Financeiros'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 8
      Top = 113
      Width = 84
      Height = 13
      Caption = 'Avisos Gerenciais'
      FocusControl = DBEdit6
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 391
      Height = 24
      Align = alTop
      Caption = 'Lista de E-mail / Avisos'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 45
      Width = 377
      Height = 21
      DataField = 'Avisos_Operacionais'
      DataSource = ds_importadores_grupos
      Enabled = False
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 87
      Width = 377
      Height = 21
      DataField = 'Avisos_Financeiros'
      DataSource = ds_importadores_grupos
      Enabled = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 128
      Width = 377
      Height = 21
      DataField = 'Avisos_Gerenciais'
      DataSource = ds_importadores_grupos
      Enabled = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 480
    Top = 8
    Width = 393
    Height = 87
    Color = clSilver
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 95
      Height = 13
      Caption = 'Descrição do Grupo'
    end
    object Label1: TLabel
      Left = 217
      Top = 29
      Width = 33
      Height = 13
      Caption = 'Código'
      Visible = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 391
      Height = 24
      Align = alTop
      Caption = 'Grupo'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 48
      Width = 377
      Height = 21
      DataField = 'Codigo_AGRUPADO'
      DataSource = ds_importadores_agrupados
      KeyField = 'Codigo'
      ListField = 'Nome_Grupo'
      ListSource = ds_importadores_grupos
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 8
      Top = 64
      Width = 377
      Height = 21
      Enabled = False
      TabOrder = 3
      Visible = False
    end
    object Edit2: TEdit
      Left = 254
      Top = 25
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 2
      Visible = False
    end
  end
  object btnFechar: TBitBtn
    Left = 712
    Top = 260
    Width = 81
    Height = 25
    Caption = '&Fechar'
    TabOrder = 8
    OnClick = btnFecharClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object btnSalvar: TBitBtn
    Left = 272
    Top = 260
    Width = 81
    Height = 25
    Caption = '&Salvar'
    Enabled = False
    TabOrder = 4
    OnClick = btnSalvarClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object btnCancelar: TBitBtn
    Left = 360
    Top = 260
    Width = 81
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
    TabOrder = 5
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
  object btnAlterar: TBitBtn
    Left = 96
    Top = 260
    Width = 81
    Height = 25
    Hint = 'Alterar dados do Importador'
    Caption = '&Alterar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
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
  object btnIncluirNovoGrupo: TBitBtn
    Left = 576
    Top = 260
    Width = 121
    Height = 25
    Hint = 'Novo Importador'
    Caption = '&Incluir Novo Grupo'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnClick = btnIncluirNovoGrupoClick
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
  object btnFiltrar: TBitBtn
    Left = 448
    Top = 260
    Width = 89
    Height = 25
    Hint = 'Localizar um Importador'
    Caption = 'Fil&trar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    OnClick = btnFiltrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
      33003377333337F33377333333333C333300333F333337F33377339333333C33
      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
      3000333333333377377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object ds_qimportadores: TDataSource
    DataSet = q_importadores
    Left = 64
    Top = 168
  end
  object ds_importadores_grupos: TDataSource
    DataSet = t_importadores_grupos
    Left = 352
    Top = 80
  end
  object t_importadores_grupos: TTable
    ObjectView = True
    DatabaseName = 'DBNMSCOMEX'
    FieldDefs = <
      item
        Name = 'Codigo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Nome_Grupo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Avisos_Operacionais'
        Attributes = [faFixed]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Avisos_Financeiros'
        Attributes = [faFixed]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Avisos_Gerenciais'
        Attributes = [faFixed]
        DataType = ftString
        Size = 255
      end>
    IndexFieldNames = 'Codigo'
    MasterSource = ds_importadores_agrupados
    StoreDefs = True
    TableName = 'Importadores_Grupos'
    Left = 320
    Top = 80
    object t_importadores_gruposCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object t_importadores_gruposNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      FixedChar = True
      Size = 50
    end
    object t_importadores_gruposAvisos_Operacionais: TStringField
      FieldName = 'Avisos_Operacionais'
      FixedChar = True
      Size = 255
    end
    object t_importadores_gruposAvisos_Financeiros: TStringField
      FieldName = 'Avisos_Financeiros'
      FixedChar = True
      Size = 255
    end
    object t_importadores_gruposAvisos_Gerenciais: TStringField
      FieldName = 'Avisos_Gerenciais'
      FixedChar = True
      Size = 255
    end
  end
  object q_importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Importadores.Empresa, Importadores.Filial, Importador' +
        'es.Codigo, Importadores.CNPJ_CPF_COMPLETO, Importadores.Razao_So' +
        'cial'
      'FROM         Importadores INNER JOIN'
      
        '                      Parametros ON Importadores.Empresa = Param' +
        'etros.Empresa AND Importadores.Filial = Parametros.Filial'
      'ORDER BY Importadores.Razao_Social')
    Left = 32
    Top = 168
    object q_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_importadoresFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      FixedChar = True
      Size = 4
    end
    object q_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object q_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object q_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
  end
  object t_importadores_agrupados: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_qimportadores
    TableName = 'Importadores_Agrupados'
    Left = 200
    Top = 168
    object t_importadores_agrupadosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_importadores_agrupadosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_importadores_agrupadosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object t_importadores_agrupadosCodigo_AGRUPADO: TStringField
      FieldName = 'Codigo_AGRUPADO'
      FixedChar = True
      Size = 4
    end
    object t_importadores_agrupadosNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      FixedChar = True
      Size = 50
    end
  end
  object ds_importadores_agrupados: TDataSource
    DataSet = t_importadores_agrupados
    Left = 232
    Top = 168
  end
  object q_manipula: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 352
    Top = 168
  end
end
