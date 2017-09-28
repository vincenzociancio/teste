object f_associacao_numerarios_documentos: Tf_associacao_numerarios_documentos
  Left = 401
  Top = 193
  ActiveControl = btnNovo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Associação Numerários = Documentos'
  ClientHeight = 276
  ClientWidth = 666
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 232
    Width = 53
    Height = 13
    Caption = 'Numerários'
  end
  object Label2: TLabel
    Left = 192
    Top = 232
    Width = 79
    Height = 13
    Caption = 'Tipo Documento'
  end
  object Bevel2: TBevel
    Left = 567
    Top = 8
    Width = 3
    Height = 260
    Shape = bsLeftLine
  end
  object Bevel3: TBevel
    Left = 583
    Top = 130
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 583
    Top = 218
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 376
    Top = 232
    Width = 101
    Height = 13
    Caption = 'Sub Tipo Documento'
  end
  object dbgNum: TDBGrid
    Left = 8
    Top = 8
    Width = 548
    Height = 219
    DataSource = ds_qAssociacao
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
        Title.Caption = 'Código'
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
        FieldName = 'Descricao1'
        Title.Caption = 'Numerário'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao2'
        Title.Caption = 'Tipo Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao3'
        Title.Caption = 'Sub Tipo Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 137
        Visible = True
      end>
  end
  object btnNovo: TBitBtn
    Left = 583
    Top = 7
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
    TabOrder = 1
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
    Left = 583
    Top = 46
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
    TabOrder = 2
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
    Left = 583
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
    TabOrder = 3
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
    Left = 583
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
    TabOrder = 4
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
    Left = 583
    Top = 184
    Width = 75
    Height = 25
    Hint = 'Cancelar'
    BiDiMode = bdLeftToRight
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
  object btnSair: TBitBtn
    Left = 583
    Top = 240
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
    TabOrder = 6
    Kind = bkClose
  end
  object dblcbNumerarios: TDBLookupComboBox
    Left = 8
    Top = 249
    Width = 182
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = ds_tipos_numerarios
    ParentFont = False
    TabOrder = 7
  end
  object dblcbTipoDocumento: TDBLookupComboBox
    Left = 192
    Top = 249
    Width = 182
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = ds_tipos_documentos
    ParentFont = False
    TabOrder = 8
    OnClick = dblcbTipoDocumentoClick
  end
  object dblcbSubTipoDocumento: TDBLookupComboBox
    Left = 376
    Top = 249
    Width = 182
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = ds_sub_tipos_documentos
    ParentFont = False
    TabOrder = 9
  end
  object ds_tipos_numerarios: TDataSource
    DataSet = q_tipos_numerarios
    Left = 64
    Top = 152
  end
  object ds_tipos_documentos: TDataSource
    DataSet = q_tipos_documentos
    Left = 168
    Top = 152
  end
  object ds_sub_tipos_documentos: TDataSource
    DataSet = q_sub_tipos_documentos
    Left = 288
    Top = 152
  end
  object q_Associacao: TQuery
    AfterScroll = q_AssociacaoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT AD.*, TP.Descricao AS Descricao1, TD.descricao AS Descric' +
        'ao2, STP.Descricao AS Descricao3'
      
        '  FROM Associacao_Numerario_Documento AD LEFT JOIN Tipos_Numerar' +
        'io TP'
      
        '    ON AD.Cod_Tp_Numerarios = TP.Codigo LEFT JOIN Tipo_Documento' +
        's TD'
      
        '    ON AD.Cod_Tp_Documentos = TD.codigo LEFT JOIN Sub_Tipo_Docum' +
        'entos STP'
      '    ON AD.Cod_Tp_Documentos = STP.Tipo_doc AND '
      '       AD.Cod_Sub_Tp_Documentos = STP.codigo'
      'ORDER BY TP.Descricao    ')
    Left = 480
    Top = 87
    object q_AssociacaoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object q_AssociacaoCod_Tp_Numerarios: TStringField
      FieldName = 'Cod_Tp_Numerarios'
      Size = 4
    end
    object q_AssociacaoCod_Tp_Documentos: TStringField
      FieldName = 'Cod_Tp_Documentos'
      Size = 4
    end
    object q_AssociacaoCod_Sub_Tp_Documentos: TStringField
      FieldName = 'Cod_Sub_Tp_Documentos'
      Size = 4
    end
    object q_AssociacaoDescricao1: TStringField
      FieldName = 'Descricao1'
      Size = 50
    end
    object q_AssociacaoDescricao2: TStringField
      FieldName = 'Descricao2'
      Size = 50
    end
    object q_AssociacaoDescricao3: TStringField
      FieldName = 'Descricao3'
      Size = 70
    end
  end
  object ds_qAssociacao: TDataSource
    DataSet = q_Associacao
    Left = 480
    Top = 151
  end
  object q_tipos_numerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' SELECT Codigo, Descricao '
      '   FROM Tipos_Numerario'
      'ORDER BY Descricao   '
      '')
    Left = 48
    Top = 95
    object q_tipos_numerariosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_tipos_numerariosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object q_tipos_documentos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao '
      '  FROM Tipo_Documentos '
      'ORDER BY descricao')
    Left = 152
    Top = 95
    object q_tipos_documentosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_tipos_documentosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object q_sub_tipos_documentos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Tipo_doc, Codigo, Descricao '
      '  FROM Sub_Tipo_Documentos'
      'ORDER BY Tipo_doc, Descricao   ')
    Left = 272
    Top = 95
    object q_sub_tipos_documentosTipo_Doc: TStringField
      FieldName = 'Tipo_Doc'
      Size = 4
    end
    object q_sub_tipos_documentosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_sub_tipos_documentosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 70
    end
  end
end
