object f_gernormas: Tf_gernormas
  Left = 600
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerenciar as Normas de Procedimento'
  ClientHeight = 337
  ClientWidth = 651
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 209
    Width = 31
    Height = 13
    Caption = 'Norma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 256
    Width = 67
    Height = 13
    Caption = 'Nome do PDF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 425
    Top = 208
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
  object DBGrid1: TDBGrid
    Left = 6
    Top = 6
    Width = 635
    Height = 185
    DataSource = dsNormas_gerencia
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnEnter = DBGrid1Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'Norma'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_PDF'
        Width = 223
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Setor'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ativo'
        Title.Caption = 'Situação'
        Width = 138
        Visible = True
      end>
  end
  object dbeditNorma: TDBEdit
    Left = 8
    Top = 224
    Width = 367
    Height = 21
    DataField = 'Norma'
    DataSource = dsNormas_gerencia
    Enabled = False
    TabOrder = 1
  end
  object dbEditPDF: TDBEdit
    Left = 7
    Top = 272
    Width = 634
    Height = 21
    DataField = 'Nome_PDF'
    DataSource = dsNormas_gerencia
    Enabled = False
    TabOrder = 2
  end
  object dbLcbSetor: TDBLookupComboBox
    Left = 423
    Top = 224
    Width = 217
    Height = 21
    DataField = 'Setor'
    DataSource = dsNormas_gerencia
    Enabled = False
    KeyField = 'Nome_setor'
    ListField = 'Nome_setor'
    ListSource = dsNormas_setor
    TabOrder = 3
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 297
    Width = 651
    Height = 40
    Align = alBottom
    Color = 10514464
    TabOrder = 4
    object btnGravar: TBitBtn
      Left = 248
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
      Left = 161
      Top = 7
      Width = 74
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
      Left = 492
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnNovo: TBitBtn
      Left = 4
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
    object btnCancelar: TBitBtn
      Left = 328
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
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
    object btnSetor: TBitBtn
      Left = 569
      Top = 7
      Width = 75
      Height = 25
      Hint = 'Cadastrar Navios'
      Cancel = True
      Caption = '&Setor'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
    object btnAlterar: TBitBtn
      Left = 82
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 6
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
    object btnRevisa: TBitBtn
      Left = 411
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Ativar'
      TabOrder = 7
      OnClick = btnRevisaClick
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
  end
  object qrNormas_setor: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '  SELECT * '
      '   FROM controle_normas_setor  ')
    Left = 384
    Top = 88
    object qrNormas_setorPK_SETOR: TAutoIncField
      FieldName = 'PK_SETOR'
    end
    object qrNormas_setorNome_setor: TStringField
      FieldName = 'Nome_setor'
      FixedChar = True
      Size = 50
    end
    object qrNormas_setorExcluido: TBooleanField
      FieldName = 'Excluido'
    end
  end
  object dsNormas_setor: TDataSource
    DataSet = qrNormas_setor
    Left = 344
    Top = 136
  end
  object dsNormas_gerencia: TDataSource
    DataSet = tbNormas_gerencia
    Left = 176
    Top = 168
  end
  object tbNormas_gerencia: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'norma'
    TableName = 'Normas_gerencia_Proc'
    Left = 264
    Top = 88
    object tbNormas_gerenciasequencial: TAutoIncField
      FieldName = 'sequencial'
    end
    object tbNormas_gerenciaNorma: TStringField
      FieldName = 'Norma'
      FixedChar = True
      Size = 100
    end
    object tbNormas_gerenciaNome_PDF: TStringField
      FieldName = 'Nome_PDF'
      FixedChar = True
      Size = 255
    end
    object tbNormas_gerenciaSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 50
    end
    object tbNormas_gerenciaAtivo: TBooleanField
      FieldName = 'Ativo'
      OnGetText = tbNormas_gerenciaAtivoGetText
    end
  end
  object qrDelete_norma: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from '
      'normas_gerencia_proc where sequencial =:sequencia')
    Left = 48
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sequencia'
        ParamType = ptUnknown
      end>
  end
  object QryAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '')
    Left = 344
    Top = 48
  end
  object qrRevisa: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ''
      'select * from  Normas_gerencia_Proc'
      'where Sequencial = :Seq')
    Left = 136
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Seq'
        ParamType = ptUnknown
      end>
    object qrRevisasequencial: TAutoIncField
      FieldName = 'sequencial'
    end
    object qrRevisaNorma: TStringField
      FieldName = 'Norma'
      FixedChar = True
      Size = 100
    end
    object qrRevisaNome_PDF: TStringField
      FieldName = 'Nome_PDF'
      FixedChar = True
      Size = 255
    end
    object qrRevisaSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 50
    end
    object qrRevisaAtivo: TBooleanField
      FieldName = 'Ativo'
    end
  end
  object qrUpdateRevisa: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Update Normas_gerencia_Proc set Ativo =:AT  '
      'where sequencial= :seq')
    Left = 80
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq'
        ParamType = ptUnknown
      end>
  end
  object qrUpdateLetreiro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'Update ISO_letreiro  set DT_inicial = :Data , DT_Final = '#39#39' , Ex' +
        'cluido = 0'
      'Where Norma= :Desc')
    Left = 464
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Desc'
        ParamType = ptUnknown
      end>
  end
  object qrLetreiro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select * from ISO_letreiro  '
      'Where Norma= :Norma1')
    Left = 528
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Norma1'
        ParamType = ptUnknown
      end>
  end
  object qrInsertLetreiro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO ISO_Letreiro'
      '           (Norma'
      '           ,Dt_Inicial'
      '           ,Dt_Final'
      '           ,Excluido)'
      '     VALUES'
      '           (:Normas'
      '           ,:Dt'
      '           ,'#39#39
      '           ,'#39'0'#39')'
      '')
    Left = 520
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Normas'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Dt'
        ParamType = ptInput
      end>
  end
  object tbEmailAuto: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Email_Auto'
    Left = 437
    Top = 42
    object tbEmailAutoCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object tbEmailAutoPrograma: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 5
    end
    object tbEmailAutoAssunto: TStringField
      FieldName = 'Assunto'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoTitulo: TStringField
      FieldName = 'Titulo'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoDe: TStringField
      FieldName = 'De'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoPara: TStringField
      FieldName = 'Para'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCCO: TStringField
      FieldName = 'CCO'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoBody: TMemoField
      FieldName = 'Body'
      BlobType = ftMemo
    end
    object tbEmailAutoAnexo: TStringField
      FieldName = 'Anexo'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoHTML: TIntegerField
      FieldName = 'HTML'
    end
    object tbEmailAutoData: TDateTimeField
      FieldName = 'Data'
    end
    object tbEmailAutoHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  object qUsuOperac: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Email from usuarios where  Ativo = 1 and '
      '(Email is not null) ')
    Left = 584
    Top = 48
    object qUsuOperacEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
  end
end
