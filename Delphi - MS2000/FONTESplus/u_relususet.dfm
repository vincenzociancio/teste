object F_RelUsuset: TF_RelUsuset
  Left = 378
  Top = 246
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Relação entre o Usuario e os Setores das Normas'
  ClientHeight = 266
  ClientWidth = 496
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label222: TLabel
    Left = 220
    Top = 181
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
  object Label221: TLabel
    Left = 12
    Top = 181
    Width = 36
    Height = 13
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 226
    Width = 496
    Height = 40
    Align = alBottom
    Color = 10514464
    TabOrder = 0
    object btnGravar: TBitBtn
      Left = 86
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 0
      OnClick = btnGravarClick
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
    object btnExcluir: TBitBtn
      Left = 250
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
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
    object btnSair: TBitBtn
      Left = 333
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnNovo: TBitBtn
      Left = 5
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 3
      OnClick = btnNovoClick
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
    object btnSetor: TBitBtn
      Left = 415
      Top = 7
      Width = 75
      Height = 25
      Hint = 'Cadastrar Navios'
      Cancel = True
      Caption = '&Setor'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnSetorClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnCancelar: TBitBtn
      Left = 168
      Top = 7
      Width = 75
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
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 481
    Height = 154
    DataSource = dsNormas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Usuario'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Setor'
        Width = 232
        Visible = True
      end>
  end
  object dblcbUsuario: TDBLookupComboBox
    Left = 8
    Top = 200
    Width = 145
    Height = 21
    DataField = 'Usuario'
    DataSource = dsNormas_Usu
    Enabled = False
    KeyField = 'Nome_Completo'
    ListField = 'Nome_Completo'
    ListSource = dsUsuario
    TabOrder = 2
  end
  object dblcbSetor: TDBLookupComboBox
    Left = 216
    Top = 198
    Width = 145
    Height = 21
    DataField = 'Setor'
    DataSource = dsNormas_Usu
    Enabled = False
    KeyField = 'Nome_setor'
    ListField = 'Nome_setor'
    ListSource = dsNormas_setor
    TabOrder = 3
  end
  object dsUsuario: TDataSource
    DataSet = qrUsuario
    Left = 104
    Top = 120
  end
  object qrUsuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select usuario, nome_completo from Usuarios where Ativo = '#39'1'#39)
    Left = 120
    Top = 80
    object qrUsuarioUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qrUsuarioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dsNormas_Usu: TDataSource
    DataSet = tbNormas_Usu
    Left = 232
    Top = 104
  end
  object qrNormas_Usu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from normas_usuario_setor')
    Left = 176
    Top = 56
    object qrNormas_UsuUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
    end
    object qrNormas_UsuSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
    end
    object qrNormas_Ususequencial: TAutoIncField
      FieldName = 'sequencial'
    end
  end
  object tbNormas_Usu: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Normas_Usuario_Setor'
    Left = 304
    Top = 56
    object tbNormas_UsuUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
    end
    object tbNormas_UsuSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
    end
    object tbNormas_Ususequencial: TAutoIncField
      FieldName = 'sequencial'
    end
  end
  object dsNormas: TDataSource
    DataSet = qrNormas_Usu
    Left = 240
    Top = 56
  end
  object qrDelete_usu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from '
      'Normas_Usuario_Setor where sequencial =:sequencia')
    Left = 64
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sequencia'
        ParamType = ptUnknown
      end>
  end
  object dsNormas_setor: TDataSource
    DataSet = qrNormas_setor
    Left = 344
    Top = 136
  end
  object qrNormas_setor: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '  SELECT * '
      '   FROM controle_normas_setor  ')
    Left = 384
    Top = 88
  end
  object QryAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '')
    Left = 344
    Top = 48
  end
end
