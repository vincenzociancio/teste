object f_tipocred: Tf_tipocred
  Left = 40
  Top = 158
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tipos de Créditos'
  ClientHeight = 277
  ClientWidth = 718
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
  end
  object Label2: TLabel
    Left = 48
    Top = 232
    Width = 48
    Height = 13
    Caption = 'Descrição'
  end
  object Label3: TLabel
    Left = 336
    Top = 232
    Width = 78
    Height = 13
    Caption = 'Plano de Contas'
  end
  object Bevel2: TBevel
    Left = 616
    Top = 8
    Width = 3
    Height = 265
    Shape = bsLeftLine
  end
  object Bevel3: TBevel
    Left = 632
    Top = 128
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 632
    Top = 224
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object dbGrdCreditos: TDBGrid
    Left = 8
    Top = 8
    Width = 593
    Height = 219
    DataSource = dsQCreditos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        Width = 286
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Plano'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 234
        Visible = True
      end>
  end
  object dbEdtCod: TDBEdit
    Left = 8
    Top = 248
    Width = 41
    Height = 21
    DataField = 'Codigo'
    DataSource = dsCreditos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dbEdtDesc: TDBEdit
    Left = 48
    Top = 248
    Width = 289
    Height = 21
    DataField = 'Descricao'
    DataSource = dsCreditos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dbLcbPlano: TDBLookupComboBox
    Left = 336
    Top = 248
    Width = 265
    Height = 21
    DataField = 'Plano_contas'
    DataSource = dsCreditos
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
  object btnIncluir: TBitBtn
    Left = 632
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Incluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnIncluirClick
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
    Left = 632
    Top = 48
    Width = 75
    Height = 25
    Caption = '&Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
    Left = 632
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
    Left = 632
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Default = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnGravarClick
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
    Left = 632
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
    Left = 632
    Top = 240
    Width = 75
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btnSairClick
    Kind = bkClose
  end
  object tbCreditos: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = dsQCreditos
    TableName = 'Tipos_creditos'
    Left = 192
    object tbCreditosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbCreditosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbCreditosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object tbCreditosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object tbCreditosPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
  end
  object dsCreditos: TDataSource
    DataSet = tbCreditos
    Left = 208
    Top = 16
  end
  object qrCreditos: TQuery
    AfterOpen = qrCreditosAfterScroll
    AfterScroll = qrCreditosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Empresa, P.Filial, C.Codigo, C.Descricao, PC.Descricao ' +
        'AS Plano'
      
        'FROM (Parametros AS P INNER JOIN Tipos_creditos AS C ON P.Filial' +
        ' = C.Filial'
      
        'AND P.Empresa = C.Empresa) INNER JOIN Plano_Contas AS PC ON C.Pl' +
        'ano_contas = PC.Codigo'
      'AND C.Filial = PC.Filial AND C.Empresa = PC.Empresa'
      'ORDER BY C.Descricao')
    Left = 144
    object qrCreditosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrCreditosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrCreditosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object qrCreditosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object qrCreditosPlano: TStringField
      FieldName = 'Plano'
      Size = 50
    end
  end
  object dsQCreditos: TDataSource
    DataSet = qrCreditos
    Left = 160
    Top = 16
  end
  object qrPlano: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT PC.Codigo, PC.Descricao'
      
        'FROM Parametros AS P INNER JOIN Plano_Contas AS PC ON P.Filial =' +
        ' PC.Filial AND P.Empresa = PC.Empresa'
      'ORDER BY PC.Descricao')
    Left = 240
    object qrPlanoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Plano_Contas.Codigo'
      Size = 8
    end
    object qrPlanoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Plano_Contas.Descricao'
      Size = 50
    end
  end
  object dsPlano: TDataSource
    DataSet = qrPlano
    Left = 256
    Top = 16
  end
  object qrTeste: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT C.Codigo'
      
        'FROM Parametros AS P INNER JOIN Tipos_Creditos AS C ON P.Filial ' +
        '= C.Filial AND P.Empresa = C.Empresa'
      'WHERE C.Codigo=:cod')
    Left = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrTesteCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_creditos.Codigo'
      Size = 4
    end
  end
end
