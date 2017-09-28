object f_atoslegais: Tf_atoslegais
  Left = 272
  Top = 156
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Atos Legais'
  ClientHeight = 319
  ClientWidth = 519
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
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
  object Bevel3: TBevel
    Left = 432
    Top = 128
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 432
    Top = 224
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel2: TBevel
    Left = 416
    Top = 8
    Width = 3
    Height = 305
    Shape = bsLeftLine
  end
  object Label1: TLabel
    Left = 80
    Top = 192
    Width = 37
    Height = 13
    Caption = 'Número'
  end
  object Label2: TLabel
    Left = 152
    Top = 192
    Width = 14
    Height = 13
    Caption = 'EX'
  end
  object Label3: TLabel
    Left = 360
    Top = 232
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label4: TLabel
    Left = 8
    Top = 232
    Width = 68
    Height = 13
    Caption = 'Orgão Emissor'
  end
  object Label5: TLabel
    Left = 192
    Top = 192
    Width = 84
    Height = 13
    Caption = 'Tipo de Ato Legal'
  end
  object Label6: TLabel
    Left = 8
    Top = 192
    Width = 55
    Height = 13
    Caption = 'Tipo de Ato'
  end
  object Label7: TLabel
    Left = 9
    Top = 272
    Width = 58
    Height = 13
    Caption = 'Observação'
  end
  object dbgAtos: TDBGrid
    Left = 8
    Top = 8
    Width = 393
    Height = 177
    DataSource = dsAtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Tipo_Ato'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ano_Ato_Legal'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obs'
        Title.Caption = 'Observação'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object btnSair: TBitBtn
    Left = 432
    Top = 240
    Width = 75
    Height = 25
    Hint = 'Sair do Cadastro de Armazéns'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnSairClick
    Kind = bkClose
  end
  object btnNovo: TBitBtn
    Left = 432
    Top = 8
    Width = 75
    Height = 25
    Hint = 'Novo Armazém'
    Caption = '&Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
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
    Left = 432
    Top = 48
    Width = 75
    Height = 25
    Hint = 'Alterar dados do  Armazém'
    Caption = '&Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
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
  object btnExcluir: TBitBtn
    Left = 432
    Top = 88
    Width = 75
    Height = 25
    Hint = 'Excluir Armazém'
    Caption = '&Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
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
    Left = 432
    Top = 144
    Width = 75
    Height = 25
    Hint = 'Gravar'
    Caption = '&Gravar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
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
    Left = 432
    Top = 184
    Width = 75
    Height = 25
    Hint = 'Cancelar'
    BiDiMode = bdLeftToRight
    Cancel = True
    Caption = '&Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
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
  object dbedtNum: TDBEdit
    Left = 80
    Top = 208
    Width = 73
    Height = 21
    DataField = 'Numero'
    DataSource = dsAtos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object dbedtEX: TDBEdit
    Left = 152
    Top = 208
    Width = 41
    Height = 21
    DataField = 'EX'
    DataSource = dsAtos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object dbcbTipoAto: TDBComboBox
    Left = 8
    Top = 208
    Width = 73
    Height = 21
    Style = csDropDownList
    DataField = 'Tipo_Ato'
    DataSource = dsAtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      '1 - II'
      '2 - IPI'
      '3 - ANALADI')
    ParentFont = False
    TabOrder = 9
  end
  object dblcbTipoAtoLegal: TDBLookupComboBox
    Left = 192
    Top = 208
    Width = 209
    Height = 21
    DataField = 'Tipo_Ato_Legal'
    DataSource = dsAtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = dsTipoAtoLegal
    ParentFont = False
    TabOrder = 10
  end
  object dblcbOrgao: TDBLookupComboBox
    Left = 8
    Top = 248
    Width = 353
    Height = 21
    DataField = 'Orgao_Emissor'
    DataSource = dsAtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = dsOrgao
    ParentFont = False
    TabOrder = 11
  end
  object dbedtAno: TDBEdit
    Left = 360
    Top = 248
    Width = 41
    Height = 21
    DataField = 'Ano_Ato_Legal'
    DataSource = dsAtos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object dbedtobs: TDBEdit
    Left = 8
    Top = 288
    Width = 393
    Height = 21
    DataField = 'obs'
    DataSource = dsAtos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object t_Atos: TTable
    AfterOpen = t_AtosAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Tipo_Ato;Numero'
    MasterFields = 'Empresa;Filial'
    MasterSource = dsParametros
    TableName = 'Atos_Legais'
    Left = 176
    Top = 40
    object t_AtosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_AtosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_AtosTipo_Ato: TStringField
      FieldName = 'Tipo_Ato'
      Size = 1
    end
    object t_AtosNumero: TStringField
      FieldName = 'Numero'
      Size = 5
    end
    object t_AtosEX: TStringField
      FieldName = 'EX'
      Size = 3
    end
    object t_AtosTipo_Ato_Legal: TStringField
      FieldName = 'Tipo_Ato_Legal'
      Size = 10
    end
    object t_AtosOrgao_Emissor: TStringField
      FieldName = 'Orgao_Emissor'
      Size = 10
    end
    object t_AtosAno_Ato_Legal: TStringField
      FieldName = 'Ano_Ato_Legal'
      Size = 4
    end
    object t_Atosobs: TStringField
      FieldName = 'obs'
      Size = 50
    end
  end
  object dsAtos: TDataSource
    DataSet = t_Atos
    Left = 184
    Top = 56
  end
  object q_Tribut: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT A.CodArmazem'
      
        'FROM Parametros AS P INNER JOIN Armazem_Processo AS A ON P.Filia' +
        'l = A.Filial AND P.Empresa = A.Empresa'
      'WHERE A.CodArmazem=:arm')
    Left = 336
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'arm'
        ParamType = ptUnknown
      end>
    object q_TributCodArmazem: TStringField
      FieldName = 'CodArmazem'
      Origin = 'DBNMSCOMEX.Armazem_Processo.CodArmazem'
      Size = 3
    end
  end
  object q_Teste: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT A.Numero'
      
        'FROM Parametros AS P INNER JOIN Atos_Legais AS A ON P.Empresa = ' +
        'A.Empresa AND P.Filial = A.Filial'
      'WHERE A.Tipo_Ato=:tipo AND A.Numero=:num')
    Left = 368
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'num'
        ParamType = ptUnknown
      end>
    object q_TesteNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Atos_Legais.Numero'
      Size = 5
    end
  end
  object t_Parametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 136
    Top = 40
    object t_ParametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object t_ParametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object t_ParametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object t_ParametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object t_ParametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object t_ParametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object t_ParametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object t_ParametrosHost: TStringField
      FieldName = 'Host'
      Size = 15
    end
    object t_ParametrosVersao: TStringField
      FieldName = 'Versao'
      Size = 50
    end
    object t_Parametroskeycrypt: TStringField
      FieldName = 'keycrypt'
      Size = 255
    end
    object t_ParametrosHost_smtp: TStringField
      FieldName = 'Host_smtp'
      Size = 15
    end
    object t_ParametrosPorta_smtp: TSmallintField
      FieldName = 'Porta_smtp'
    end
    object t_ParametrosUsuario_smtp: TStringField
      FieldName = 'Usuario_smtp'
      Size = 30
    end
    object t_ParametrosSenha_smtp: TStringField
      FieldName = 'Senha_smtp'
      Size = 16
    end
    object t_ParametrosNumerador_Transmittal: TStringField
      FieldName = 'Numerador_Transmittal'
      Size = 8
    end
    object t_ParametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Size = 100
    end
    object t_ParametrosAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object t_ParametrosAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object t_ParametrosAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object t_ParametrosAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object t_ParametrosNumerador_Sol_Cheques: TStringField
      FieldName = 'Numerador_Sol_Cheques'
      Size = 50
    end
    object t_ParametrosNumerador_Sol_Reg: TStringField
      FieldName = 'Numerador_Sol_Reg'
      Size = 50
    end
    object t_ParametrosNumerador_Sol_Tracla: TStringField
      FieldName = 'Numerador_Sol_Tracla'
      Size = 50
    end
  end
  object dsParametros: TDataSource
    DataSet = t_Parametros
    Left = 144
    Top = 56
  end
  object q_Orgao: TQuery
    DatabaseName = 'DBNTABSISCO'
    SQL.Strings = (
      'SELECT * FROM TAB_ORGAO_EMISS_ATO_LEGAL')
    Left = 256
    Top = 40
    object q_OrgaoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNTABSISCO.TAB_ORGAO_EMISS_ATO_LEGAL.Codigo'
      Size = 10
    end
    object q_OrgaoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNTABSISCO.TAB_ORGAO_EMISS_ATO_LEGAL.Descricao'
      Size = 120
    end
  end
  object dsOrgao: TDataSource
    DataSet = q_Orgao
    Left = 264
    Top = 56
  end
  object q_TipoAtoLegal: TQuery
    DatabaseName = 'DBNTABSISCO'
    SQL.Strings = (
      'SELECT * FROM TAB_TP_ATO_LEGAL')
    Left = 216
    Top = 40
    object q_TipoAtoLegalCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNTABSISCO.TAB_TP_ATO_LEGAL.Codigo'
      Size = 10
    end
    object q_TipoAtoLegalDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNTABSISCO.TAB_TP_ATO_LEGAL.Descricao'
      Size = 120
    end
  end
  object dsTipoAtoLegal: TDataSource
    DataSet = q_TipoAtoLegal
    Left = 224
    Top = 56
  end
end
