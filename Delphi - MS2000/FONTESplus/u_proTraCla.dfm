object F_proTraCla: TF_proTraCla
  Left = 29
  Top = 76
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tradução / Classificação'
  ClientHeight = 445
  ClientWidth = 752
  Color = clBtnFace
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 752
    Height = 366
    Align = alClient
    Color = 10514464
    TabOrder = 1
    object Label39: TLabel
      Left = 16
      Top = 192
      Width = 22
      Height = 13
      Caption = 'Pág.'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label40: TLabel
      Left = 16
      Top = 272
      Width = 24
      Height = 13
      Caption = 'NCM'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 56
      Top = 192
      Width = 22
      Height = 13
      Caption = 'Seq.'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label42: TLabel
      Left = 96
      Top = 192
      Width = 37
      Height = 13
      Caption = 'Produto'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label44: TLabel
      Left = 392
      Top = 272
      Width = 46
      Height = 13
      Caption = 'Destaque'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label171: TLabel
      Left = 472
      Top = 272
      Width = 39
      Height = 13
      Caption = 'NALADI'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 312
      Width = 146
      Height = 13
      Caption = 'Unidade de Medida Estatística'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 192
      Width = 116
      Height = 13
      Caption = 'Descrição em Português'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 256
      Top = 232
      Width = 96
      Height = 13
      Caption = 'Descrição em Inglês'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbGrdItens: TDBGrid
      Left = 16
      Top = 16
      Width = 721
      Height = 165
      DataSource = dsQItens
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Pagina'
          Title.Caption = 'Página'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequencial'
          Title.Caption = 'Seq.'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Produto'
          Title.Caption = 'Descrição em Português'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Produto_Ing'
          Title.Caption = 'Descrição em Inglês'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Destaque_NCM'
          Title.Caption = 'Destaque NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NALADI'
          Visible = True
        end>
    end
    object dbEdtPag: TDBEdit
      Left = 16
      Top = 208
      Width = 33
      Height = 21
      DataField = 'Pagina'
      DataSource = dsItens
      Enabled = False
      TabOrder = 1
    end
    object dbEdtSeq: TDBEdit
      Left = 56
      Top = 208
      Width = 33
      Height = 21
      DataField = 'Sequencial'
      DataSource = dsItens
      Enabled = False
      TabOrder = 2
    end
    object dbEdtDesc: TDBEdit
      Left = 256
      Top = 208
      Width = 481
      Height = 21
      DataField = 'Descricao_Produto'
      DataSource = dsItens
      Enabled = False
      TabOrder = 4
      OnEnter = dbEdtDescEnter
      OnKeyPress = dbEdtDescKeyPress
    end
    object dbEdtNALADI: TDBEdit
      Left = 472
      Top = 288
      Width = 73
      Height = 21
      DataField = 'NALADI'
      DataSource = dsItens
      Enabled = False
      TabOrder = 11
      OnKeyPress = dbEdtNALADIKeyPress
    end
    object dbLcbUniMedEstat: TDBLookupComboBox
      Left = 16
      Top = 328
      Width = 281
      Height = 21
      DataField = 'Unidade_Medida_Estat'
      DataSource = dsItens
      Enabled = False
      KeyField = 'CODIGO'
      ListField = 'CODIGO;DESCRICAO;ABREV'
      ListFieldIndex = 1
      ListSource = dsUniMedEstat
      TabOrder = 12
      OnKeyPress = dbLcbUniMedEstatKeyPress
    end
    object dbLcbNCM: TDBLookupComboBox
      Left = 72
      Top = 288
      Width = 313
      Height = 21
      DataField = 'NCM'
      DataSource = dsItens
      Enabled = False
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsNCM
      TabOrder = 9
      OnExit = dbLcbNCMExit
      OnKeyPress = dbLcbNCMKeyPress
    end
    object dbEdtDestaque: TDBEdit
      Left = 392
      Top = 288
      Width = 73
      Height = 21
      DataField = 'Destaque_NCM'
      DataSource = dsItens
      Enabled = False
      TabOrder = 10
      OnKeyPress = dbEdtDestaqueKeyPress
    end
    object dbEdtProduto: TDBEdit
      Left = 96
      Top = 208
      Width = 153
      Height = 21
      DataField = 'Produto'
      DataSource = dsItens
      Enabled = False
      TabOrder = 3
      OnKeyPress = dbEdtProdutoKeyPress
    end
    object dbEdtNCM: TDBEdit
      Left = 16
      Top = 288
      Width = 57
      Height = 21
      DataField = 'NCM'
      DataSource = dsItens
      Enabled = False
      TabOrder = 8
      OnExit = dbLcbNCMExit
      OnKeyPress = dbEdtNCMKeyPress
    end
    object dbEdtDescIng: TDBEdit
      Left = 256
      Top = 248
      Width = 481
      Height = 21
      DataField = 'Descricao_Produto_Ing'
      DataSource = dsItens
      Enabled = False
      TabOrder = 6
      OnEnter = dbEdtDescIngEnter
      OnKeyPress = dbEdtDescIngKeyPress
    end
    object memoDesc: TMemo
      Left = 168
      Top = 229
      Width = 569
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnExit = memoDescExit
      OnKeyPress = memoDescKeyPress
    end
    object memoDescIng: TMemo
      Left = 168
      Top = 269
      Width = 569
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnExit = memoDescIngExit
      OnKeyPress = memoDescIngKeyPress
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 10
      Width = 44
      Height = 13
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object l_cliente: TLabel
      Left = 296
      Top = 10
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 10
      Width = 30
      Height = 13
      Caption = 'Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ME_nossaref: TMaskEdit
      Left = 56
      Top = 6
      Width = 65
      Height = 21
      Enabled = False
      MaxLength = 8
      TabOrder = 0
    end
    object edtFatura: TEdit
      Left = 160
      Top = 6
      Width = 129
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 399
    Width = 752
    Height = 46
    Align = alBottom
    Color = 10514464
    TabOrder = 2
    object btnAlterar: TBitBtn
      Left = 17
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 0
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
    object btnSalvar: TBitBtn
      Left = 296
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 1
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
      Left = 384
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 2
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
      Left = 664
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btnSairClick
      Kind = bkClose
    end
  end
  object qrItens: TQuery
    AfterOpen = qrItensAfterOpen
    AfterScroll = qrItensAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Fatura, Sequencial, Pagina, Pr' +
        'oduto, Descricao_Produto, Descricao_Produto_Ing, NCM, Unidade_Me' +
        'dida_Estat, Destaque_NCM, NALADI'
      'FROM ItensFaturas'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat'
      'ORDER BY Val(Sequencial)')
    Left = 296
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrItensEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrItensFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrItensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrItensFatura: TStringField
      FieldName = 'Fatura'
      Size = 30
    end
    object qrItensSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object qrItensPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object qrItensProduto: TStringField
      FieldName = 'Produto'
      Size = 25
    end
    object qrItensDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object qrItensDescricao_Produto_Ing: TStringField
      FieldName = 'Descricao_Produto_Ing'
      Size = 120
    end
    object qrItensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object qrItensUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object qrItensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object qrItensNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
  end
  object dsQItens: TDataSource
    DataSet = qrItens
    Left = 312
    Top = 16
  end
  object tbItens: TTable
    AfterInsert = tbItensAfterEdit
    AfterEdit = tbItensAfterEdit
    AfterCancel = qrItensAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    TableName = 'ItensFaturas'
    Left = 344
    object tbItensEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbItensFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbItensProcesso: TStringField
      FieldName = 'Processo'
      Required = True
      Size = 8
    end
    object tbItensFatura: TStringField
      FieldName = 'Fatura'
      Required = True
      Size = 30
    end
    object tbItensSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object tbItensPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object tbItensProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 25
    end
    object tbItensDescricao_Produto: TStringField
      FieldName = 'Descricao_Produto'
      Size = 120
    end
    object tbItensFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object tbItensNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tbItensUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object tbItensUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object tbItensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object tbItensNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object tbItensReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object tbItensNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object tbItensReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      Size = 15
    end
    object tbItensPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object tbItensSeqpo: TStringField
      FieldName = 'Seqpo'
      Size = 5
    end
    object tbItensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object tbItensValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object tbItensValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
    object tbItensPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object tbItensPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object tbItensPesoTotal: TFloatField
      FieldName = 'Peso Total'
    end
    object tbItensPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object tbItensSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object tbItensRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object tbItensRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object tbItensRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object tbItensRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object tbItensRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object tbItensRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object tbItensRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object tbItensRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object tbItensRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object tbItensRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object tbItensRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object tbItensRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object tbItensRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object tbItensRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object tbItensRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object tbItensRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object tbItensRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object tbItensRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object tbItensRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object tbItensRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object tbItensValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object tbItensValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object tbItensVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object tbItensBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object tbItensAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object tbItensCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object tbItensCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object tbItensFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object tbItensFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
    object tbItensContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object tbItensLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object tbItensDescricao_Produto_Ing: TStringField
      FieldName = 'Descricao_Produto_Ing'
      Size = 120
    end
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 360
    Top = 16
  end
  object qrNCM: TQuery
    DatabaseName = 'DBNTABSISCO'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, UNIDADE_MEDIDA'
      'FROM TAB_NCM'
      'ORDER BY DESCRICAO')
    Left = 440
    object qrNCMCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object qrNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object qrNCMUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Size = 4
    end
  end
  object dsNCM: TDataSource
    DataSet = qrNCM
    Left = 456
    Top = 16
  end
  object qrDelTributacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE *'
      'FROM Tributacao_Item_Fatura'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat AND Sequencial_Item = :seq')
    Left = 544
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end>
  end
  object qrUniMedEstat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, ABREV'
      'FROM TAB_UNID_MEDIDA'
      'ORDER BY DESCRICAO')
    Left = 488
    object qrUniMedEstatCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrUniMedEstatDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
    object qrUniMedEstatABREV: TStringField
      FieldName = 'ABREV'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.ABREV'
      Size = 4
    end
  end
  object dsUniMedEstat: TDataSource
    DataSet = qrUniMedEstat
    Left = 504
    Top = 16
  end
  object qrProdutos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Código, [Descrição] AS DescI, [Descrição' +
        '_Ing] AS DescIng, NCM, Importador, Fabricante, Unidade, [Peso Un' +
        'itário], [Valor Unitário], Moeda, Unidade_Medida_Estat, Destaque' +
        '_NCM, NALADI'
      'FROM Produtos'
      'WHERE Empresa = :emp AND Filial = :filial'
      'AND Código = :cod')
    Left = 400
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
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrProdutosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrProdutosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrProdutosCdigo: TStringField
      FieldName = 'Código'
      Size = 25
    end
    object qrProdutosDescI: TMemoField
      FieldName = 'DescI'
      BlobType = ftMemo
    end
    object qrProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object qrProdutosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrProdutosFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object qrProdutosUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object qrProdutosPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object qrProdutosValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object qrProdutosMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object qrProdutosUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object qrProdutosDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object qrProdutosNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object qrProdutosDescIng: TMemoField
      FieldName = 'DescIng'
      BlobType = ftMemo
    end
  end
  object alAtuValor: TActionList
    Left = 616
    object acAlterarProduto: TAction
      Caption = 'acAlterarProduto'
      OnExecute = acAlterarProdutoExecute
    end
  end
  object tbIncProd: TTable
    AutoCalcFields = False
    AfterPost = tbIncProdAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexName = 'PrimaryKey'
    TableName = 'Produtos'
    Left = 576
    object tbIncProdEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbIncProdFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbIncProdCdigo: TStringField
      FieldName = 'Código'
      Size = 25
    end
    object tbIncProdDescrio: TMemoField
      FieldName = 'Descrição'
      BlobType = ftMemo
    end
    object tbIncProdNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object tbIncProdImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object tbIncProdFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object tbIncProdUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object tbIncProdPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object tbIncProdValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object tbIncProdMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object tbIncProdUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Size = 2
    end
    object tbIncProdDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Size = 3
    end
    object tbIncProdNALADI: TStringField
      FieldName = 'NALADI'
      Size = 8
    end
    object tbIncProdDescrio_Ing: TMemoField
      FieldName = 'Descrição_Ing'
      BlobType = ftMemo
    end
  end
  object tbprodlog: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    TableName = 'Produtos_LOG'
    Left = 656
    Top = 8
    object tbprodlogEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbprodlogFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbprodlogCdigo: TStringField
      FieldName = 'Código'
      Size = 25
    end
    object tbprodlogDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
    end
    object tbprodlogUsuario_INCLUSAO: TStringField
      FieldName = 'Usuario_INCLUSAO'
      Size = 10
    end
    object tbprodlogDATA_ULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
    end
    object tbprodlogUsuario_ALTERACAO: TStringField
      FieldName = 'Usuario_ALTERACAO'
      Size = 10
    end
  end
end
