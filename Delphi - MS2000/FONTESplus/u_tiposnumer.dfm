object f_tiposnumer: Tf_tiposnumer
  Left = 235
  Top = 143
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tipos de Numerários'
  ClientHeight = 310
  ClientWidth = 695
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
  object Label1: TLabel
    Left = 8
    Top = 232
    Width = 33
    Height = 13
    Caption = 'Código'
    FocusControl = dbedtCod
  end
  object Label2: TLabel
    Left = 56
    Top = 232
    Width = 48
    Height = 13
    Caption = 'Descrição'
    FocusControl = dbedtDesc
  end
  object Label3: TLabel
    Left = 8
    Top = 272
    Width = 63
    Height = 13
    Caption = 'Plano Contas'
  end
  object Bevel2: TBevel
    Left = 599
    Top = 8
    Width = 3
    Height = 294
    Shape = bsLeftLine
  end
  object Bevel3: TBevel
    Left = 615
    Top = 163
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 615
    Top = 248
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 288
    Top = 272
    Width = 109
    Height = 13
    Caption = 'Tipo de Rateio Unitário'
  end
  object BitBtn1: TBitBtn
    Left = 615
    Top = 127
    Width = 75
    Height = 25
    Hint = 'Localizar um Importador'
    Caption = '&Localizar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnClick = btnLocalizarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
  end
  object dbgNum: TDBGrid
    Left = 8
    Top = 8
    Width = 585
    Height = 219
    DataSource = dsTiposNum
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
        FieldName = 'Codigo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 419
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContabilizaCC'
        Title.Caption = 'Contabilizado CC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object dbedtCod: TDBEdit
    Left = 8
    Top = 248
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Codigo'
    DataSource = dsTiposNum
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dbedtDesc: TDBEdit
    Left = 56
    Top = 248
    Width = 537
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Descricao'
    DataSource = dsTiposNum
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dblcbPlano: TDBLookupComboBox
    Left = 8
    Top = 288
    Width = 275
    Height = 21
    DataField = 'Plano_contas'
    DataSource = dsTiposNum
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = dsPlano
    ParentFont = False
    TabOrder = 3
  end
  object btnNovo: TBitBtn
    Left = 615
    Top = 8
    Width = 75
    Height = 25
    Hint = 'Novo Tipo de Numerário'
    Caption = '&Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
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
    Left = 615
    Top = 48
    Width = 75
    Height = 25
    Hint = 'Alterar dados do Tipo de Numerário'
    Caption = '&Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
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
    Left = 615
    Top = 88
    Width = 75
    Height = 25
    Hint = 'Excluir Tipo de Numerário'
    Caption = '&Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
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
    Left = 615
    Top = 176
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
    TabOrder = 7
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
    Left = 615
    Top = 208
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
    TabOrder = 8
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
  object btnSair: TBitBtn
    Left = 615
    Top = 264
    Width = 75
    Height = 25
    Hint = 'Sair do Cadastro de Tipo de Numerário'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = btnSairClick
    Kind = bkClose
  end
  object dblcbrateio: TDBLookupComboBox
    Left = 288
    Top = 288
    Width = 113
    Height = 21
    DataField = 'Rateio'
    DataSource = dsTiposNum
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = ds_trateio
    ParentFont = False
    TabOrder = 10
  end
  object btnLocalizar: TBitBtn
    Left = 615
    Top = 127
    Width = 75
    Height = 25
    Hint = 'Localizar um Importador'
    Caption = '&Localizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnClick = btnLocalizarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
  end
  object pnlLocalizar: TPanel
    Left = 648
    Top = 40
    Width = 425
    Height = 241
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BiDiMode = bdLeftToRight
    BorderWidth = 1
    ParentBiDiMode = False
    TabOrder = 11
    Visible = False
    object Label14: TLabel
      Left = 16
      Top = 34
      Width = 66
      Height = 13
      Caption = 'Razão Social:'
    end
    object btnOK: TBitBtn
      Left = 160
      Top = 196
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = btnOKClick
      Kind = bkOK
    end
    object edtLocalizar: TEdit
      Left = 16
      Top = 48
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtLocalizarChange
      OnEnter = edtLocalizarChange
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 77
      Width = 393
      Height = 111
      DataSource = dsLocaliza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'Código'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descrição'
          Width = 329
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 5
      Top = 5
      Width = 415
      Height = 24
      Align = alTop
      Caption = 'Localizar Numerário'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object DBCheckBox1: TDBCheckBox
    Left = 413
    Top = 287
    Width = 177
    Height = 18
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Contabilizado no Conta Corrente'
    DataField = 'ContabilizaCC'
    DataSource = dsTiposNum
    TabOrder = 14
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object q_Teste: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT N.Codigo'
      
        'FROM Parametros AS P INNER JOIN Tipos_Numerario AS N ON P.Filial' +
        ' = N.Filial AND P.Empresa = N.Empresa'
      'WHERE N.Codigo=:loc')
    Left = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'loc'
        ParamType = ptUnknown
      end>
    object q_TesteCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
  end
  object q_Plano: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT PC.Codigo, PC.Descricao'
      'FROM Parametros AS P INNER JOIN Plano_Contas AS PC '
      'ON P.Filial = PC.Filial AND P.Empresa = PC.Empresa'
      'ORDER BY PC.Descricao')
    Left = 216
    object q_PlanoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Plano_Contas.Codigo'
      Size = 8
    end
    object q_PlanoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Plano_Contas.Descricao'
      Size = 50
    end
  end
  object dsPlano: TDataSource
    DataSet = q_Plano
    Left = 224
    Top = 16
  end
  object q_Num: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT N.Numerario'
      
        'FROM Parametros AS P INNER JOIN Numerarios_Processos AS N ON P.F' +
        'ilial = N.Filial AND P.Empresa = N.Empresa'
      'WHERE N.Numerario=:num')
    Left = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'num'
        ParamType = ptUnknown
      end>
    object q_NumNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      Size = 4
    end
  end
  object t_TiposNum: TTable
    AutoCalcFields = False
    AfterOpen = t_TiposNumAfterScroll
    AfterScroll = t_TiposNumAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'tipos_Numerario'
    Left = 176
    object t_TiposNumEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_TiposNumFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_TiposNumCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_TiposNumDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_TiposNumPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
    object t_TiposNumRateio: TStringField
      FieldName = 'Rateio'
      Size = 1
    end
    object t_TiposNumContabilizaCC: TSmallintField
      FieldName = 'ContabilizaCC'
    end
  end
  object dsTiposNum: TDataSource
    DataSet = t_TiposNum
    Left = 184
    Top = 16
  end
  object t_Parametros: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 136
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
    Top = 16
  end
  object t_rateio: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'Tipos_Rateio'
    Left = 336
    Top = 8
    object t_rateioCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 1
    end
    object t_rateioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object ds_trateio: TDataSource
    DataSet = t_rateio
    Left = 344
    Top = 24
  end
  object qrLocaliza: TQuery
    CachedUpdates = True
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Codigo, Descricao'
      'FROM Tipos_Numerario'
      'ORDER BY Tipos_Numerario.Descricao, Tipos_Numerario.Codigo')
    Left = 575
    object qrLocalizaEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Empresa'
      Size = 4
    end
    object qrLocalizaFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Filial'
      Size = 4
    end
    object qrLocalizaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
    object qrLocalizaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
  end
  object dsLocaliza: TDataSource
    DataSet = qrLocaliza
    Left = 572
    Top = 33
  end
end
