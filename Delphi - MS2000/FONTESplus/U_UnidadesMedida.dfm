object f_UnidadeMedida: Tf_UnidadeMedida
  Left = 225
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Unidades de Medidas'
  ClientHeight = 279
  ClientWidth = 647
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
    Left = 64
    Top = 232
    Width = 48
    Height = 13
    Caption = 'Descrição'
    FocusControl = dbedtDesc
  end
  object Bevel2: TBevel
    Left = 544
    Top = 8
    Width = 3
    Height = 265
    Shape = bsLeftLine
  end
  object Bevel3: TBevel
    Left = 560
    Top = 128
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 560
    Top = 224
    Width = 73
    Height = 3
    Shape = bsTopLine
    Style = bsRaised
  end
  object Label3: TLabel
    Left = 472
    Top = 232
    Width = 54
    Height = 13
    Caption = 'Abreviação'
    FocusControl = dbedtDesc
  end
  object dbedtCod: TDBEdit
    Left = 8
    Top = 248
    Width = 49
    Height = 21
    DataField = 'CODIGO'
    DataSource = dsUnidade
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
    Left = 64
    Top = 248
    Width = 401
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsUnidade
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnNovo: TBitBtn
    Left = 560
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
    Left = 560
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
    Left = 560
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
    Left = 560
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
    Left = 560
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
    Left = 560
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
    TabOrder = 9
    OnClick = btnSairClick
    Kind = bkClose
  end
  object dbedtAbrev: TDBEdit
    Left = 472
    Top = 248
    Width = 57
    Height = 21
    DataField = 'ABREV'
    DataSource = dsUnidade
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dbgNum: TDBGrid
    Left = 8
    Top = 8
    Width = 521
    Height = 219
    DataSource = dsUnidade
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
        FieldName = 'CODIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ABREV'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 413
        Visible = True
      end>
  end
  object dsUnidade: TDataSource
    DataSet = T_UnidadeMedida
    Left = 72
    Top = 16
  end
  object T_UnidadeMedida: TTable
    AfterPost = T_UnidadeMedidaAfterPost
    BeforeDelete = T_UnidadeMedidaBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'TAB_UNID_MEDIDA'
    Left = 56
    object T_UnidadeMedidaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_UnidadeMedidaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object T_UnidadeMedidaABREV: TStringField
      FieldName = 'ABREV'
      Size = 4
    end
  end
  object qrUltimo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Max(codigo) AS Ultimo'
      'FROM TAB_UNID_MEDIDA')
    Left = 128
    object qrUltimoUltimo: TStringField
      FieldName = 'Ultimo'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 255
    end
  end
  object qrProd_Unidade: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM Produtosnew '
      'WHERE Unidade = :P_Unid')
    Left = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'P_Unid'
        ParamType = ptUnknown
      end>
    object qrProd_UnidadeREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Produtosnew.REG'
    end
    object qrProd_UnidadeImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Produtosnew.Importador'
      FixedChar = True
      Size = 4
    end
    object qrProd_UnidadeFabricante: TStringField
      FieldName = 'Fabricante'
      Origin = 'DBNMSCOMEX.Produtosnew.Fabricante'
      FixedChar = True
      Size = 4
    end
    object qrProd_UnidadeCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.Produtosnew.CODIGO'
      FixedChar = True
      Size = 25
    end
    object qrProd_UnidadePART_NUMBER: TStringField
      FieldName = 'PART_NUMBER'
      Origin = 'DBNMSCOMEX.Produtosnew.PART_NUMBER'
      FixedChar = True
      Size = 25
    end
    object qrProd_UnidadeDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Produtosnew.Descricao'
      BlobType = ftMemo
    end
    object qrProd_UnidadeDescricao_ing: TMemoField
      FieldName = 'Descricao_ing'
      Origin = 'DBNMSCOMEX.Produtosnew.Descricao_ing'
      BlobType = ftMemo
    end
    object qrProd_UnidadeNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.Produtosnew.NCM'
      FixedChar = True
      Size = 8
    end
    object qrProd_UnidadeDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Origin = 'DBNMSCOMEX.Produtosnew.Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object qrProd_UnidadeNALADI: TStringField
      FieldName = 'NALADI'
      Origin = 'DBNMSCOMEX.Produtosnew.NALADI'
      FixedChar = True
      Size = 8
    end
    object qrProd_UnidadeUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'DBNMSCOMEX.Produtosnew.Unidade'
      FixedChar = True
      Size = 2
    end
    object qrProd_UnidadeUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Origin = 'DBNMSCOMEX.Produtosnew.Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object qrProd_UnidadeDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DBNMSCOMEX.Produtosnew.DATA_INCLUSAO'
    end
    object qrProd_UnidadeUsuario_INCLUSAO: TStringField
      FieldName = 'Usuario_INCLUSAO'
      Origin = 'DBNMSCOMEX.Produtosnew.Usuario_INCLUSAO'
      FixedChar = True
      Size = 10
    end
    object qrProd_UnidadeDATA_ULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DBNMSCOMEX.Produtosnew.DATA_ULTIMA_ALTERACAO'
    end
    object qrProd_UnidadeUsuario_ALTERACAO: TStringField
      FieldName = 'Usuario_ALTERACAO'
      Origin = 'DBNMSCOMEX.Produtosnew.Usuario_ALTERACAO'
      FixedChar = True
      Size = 10
    end
    object qrProd_UnidadeRevisado: TIntegerField
      FieldName = 'Revisado'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisado'
    end
    object qrProd_UnidadeRevisao_Data: TDateTimeField
      FieldName = 'Revisao_Data'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisao_Data'
    end
    object qrProd_UnidadeRevisao_Usuario: TStringField
      FieldName = 'Revisao_Usuario'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisao_Usuario'
      FixedChar = True
      Size = 10
    end
    object qrProd_UnidadeRevisao_OBS: TMemoField
      FieldName = 'Revisao_OBS'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisao_OBS'
      BlobType = ftMemo
    end
  end
  object qrConhecProc_Unid: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT * FROM Conhecimento_Processo WHERE Conhecimento_Processo.' +
        'Unidade=:P_Unid')
    Left = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'P_Unid'
        ParamType = ptUnknown
      end>
    object qrConhecProc_UnidEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Empresa'
      Size = 4
    end
    object qrConhecProc_UnidFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Filial'
      Size = 4
    end
    object qrConhecProc_UnidProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Processo'
      Size = 8
    end
    object qrConhecProc_UnidVia: TStringField
      FieldName = 'Via'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Via'
      Size = 1
    end
    object qrConhecProc_UnidMultimodal: TSmallintField
      FieldName = 'Multimodal'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Multimodal'
    end
    object qrConhecProc_UnidPLaca: TStringField
      FieldName = 'PLaca'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.PLaca'
      Size = 15
    end
    object qrConhecProc_UnidLacre: TStringField
      FieldName = 'Lacre'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Lacre'
      Size = 15
    end
    object qrConhecProc_UnidEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Embarcacao'
      Size = 30
    end
    object qrConhecProc_UnidTransportador: TStringField
      FieldName = 'Transportador'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Transportador'
      Size = 4
    end
    object qrConhecProc_UnidTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Tipodoccarga'
      Size = 2
    end
    object qrConhecProc_UnidNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Numerodoccarga'
      Size = 18
    end
    object qrConhecProc_UnidNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Numeromaster'
      Size = 18
    end
    object qrConhecProc_UnidLocal: TStringField
      FieldName = 'Local'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Local'
      Size = 50
    end
    object qrConhecProc_UnidData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Data'
    end
    object qrConhecProc_UnidUtilizacao: TStringField
      FieldName = 'Utilizacao'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Utilizacao'
      Size = 1
    end
    object qrConhecProc_UnidTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Tipomanifesto'
      Size = 1
    end
    object qrConhecProc_UnidNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Numeromanifesto'
      Size = 15
    end
    object qrConhecProc_UnidCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Codigo_Presenca_Carga'
      Size = 50
    end
    object qrConhecProc_UnidPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Peso_Bruto'
    end
    object qrConhecProc_UnidPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Peso_Liquido'
    end
    object qrConhecProc_UnidAgente: TStringField
      FieldName = 'Agente'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Agente'
      Size = 30
    end
    object qrConhecProc_UnidPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Pais_Procedencia'
      Size = 3
    end
    object qrConhecProc_UnidURF_chegada: TStringField
      FieldName = 'URF_chegada'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.URF_chegada'
      Size = 7
    end
    object qrConhecProc_UnidData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Data_Chegada_URF_Cheg'
    end
    object qrConhecProc_UnidURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.URF_Despacho'
      Size = 7
    end
    object qrConhecProc_UnidData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Data_Chegada_URF_Desp'
    end
    object qrConhecProc_UnidRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Recinto_Alfandegario'
      Size = 7
    end
    object qrConhecProc_UnidSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Setor_Alfandegario'
      Size = 3
    end
    object qrConhecProc_UnidArmazem: TStringField
      FieldName = 'Armazem'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Armazem'
      Size = 30
    end
    object qrConhecProc_UnidOperacao_FUNDAP: TSmallintField
      FieldName = 'Operacao_FUNDAP'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Operacao_FUNDAP'
    end
    object qrConhecProc_UnidContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Contratante_OPCAMBIAL'
      Size = 18
    end
    object qrConhecProc_UnidMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Moeda_Frete'
      Size = 3
    end
    object qrConhecProc_UnidFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Frete_Prepaid'
    end
    object qrConhecProc_UnidFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Frete_Collect'
    end
    object qrConhecProc_UnidFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Frete_Ter_Nac'
    end
    object qrConhecProc_UnidMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Moeda_Seguro'
      Size = 3
    end
    object qrConhecProc_UnidValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Valor_Seguro'
    end
    object qrConhecProc_UnidMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Moeda_Despesas_ate_FOB'
      Size = 3
    end
    object qrConhecProc_UnidValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Valor_Despesas_ate_FOB'
    end
    object qrConhecProc_UnidUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Unidade'
      Size = 2
    end
    object qrConhecProc_UnidQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Quantidade'
    end
  end
  object qrItensFat_Unidade: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * FROM ItensFaturas WHERE ItensFaturas.Unidade=:P_Unid')
    Left = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'P_Unid'
        ParamType = ptUnknown
      end>
  end
end
