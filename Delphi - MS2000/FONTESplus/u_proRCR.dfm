object F_proRCR: TF_proRCR
  Left = 281
  Top = 196
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RCR - Requerimento de Concessão do Regime de Admissão Temporária'
  ClientHeight = 334
  ClientWidth = 726
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 726
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 10
      Top = 10
      Width = 113
      Height = 13
      Caption = 'Digite o Nº do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object l_cliente: TLabel
      Left = 200
      Top = 11
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ME_nossaref: TMaskEdit
      Left = 128
      Top = 6
      Width = 65
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 726
    Height = 255
    Align = alClient
    Color = 10514464
    Enabled = False
    TabOrder = 1
    Visible = False
    object Label190: TLabel
      Left = 16
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Número RCR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label191: TLabel
      Left = 160
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Data Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label192: TLabel
      Left = 248
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Data Aprovação'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label193: TLabel
      Left = 376
      Top = 16
      Width = 128
      Height = 13
      Caption = 'Fundamentação do Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label225: TLabel
      Left = 16
      Top = 62
      Width = 171
      Height = 13
      Caption = 'Identificação do Meio de Transporte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLimpaFund: TSpeedButton
      Left = 686
      Top = 30
      Width = 25
      Height = 22
      Hint = 'Limpa Fundamentação do Pedido'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sbLimpaFundClick
    end
    object Label1: TLabel
      Left = 140
      Top = 130
      Width = 26
      Height = 13
      Caption = 'Local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 130
      Width = 23
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnView: TSpeedButton
      Left = 131
      Top = 30
      Width = 23
      Height = 22
      Hint = 'Visualização sem mascara'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
        330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
        830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
        F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnViewClick
    end
    object dbEdtNumRCR: TDBEdit
      Left = 16
      Top = 8
      Width = 121
      Height = 21
      DataField = 'Numero_RCR'
      DataSource = dsProcessos
      TabOrder = 0
      Visible = False
    end
    object dbEdtDtEntrada: TDBEdit
      Left = 160
      Top = 30
      Width = 81
      Height = 21
      DataField = 'Data_Entrada_RCR'
      DataSource = dsProcessos
      TabOrder = 1
      OnChange = dbEdtDtEntradaChange
      OnExit = dbEdtDtEntradaChange
    end
    object dbEdtDtAprov: TDBEdit
      Left = 248
      Top = 30
      Width = 81
      Height = 21
      DataField = 'Data_Aprovacao_RCR'
      DataSource = dsProcessos
      TabOrder = 2
      OnChange = dbEdtDtAprovChange
    end
    object dbEdtTranp1: TDBEdit
      Left = 16
      Top = 78
      Width = 697
      Height = 21
      DataField = 'ident_meio1'
      DataSource = dsProcessos
      TabOrder = 5
    end
    object dbEdtTranp2: TDBEdit
      Left = 16
      Top = 102
      Width = 697
      Height = 21
      DataField = 'ident_meio2'
      DataSource = dsProcessos
      TabOrder = 6
    end
    object dbLcbFund: TDBLookupComboBox
      Left = 376
      Top = 30
      Width = 313
      Height = 21
      DataField = 'Fundamentacao_RCR'
      DataSource = dsProcessos
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dsFund
      TabOrder = 4
    end
    object dbEdtFund: TDBEdit
      Left = 336
      Top = 30
      Width = 41
      Height = 21
      DataField = 'Fundamentacao_RCR'
      DataSource = dsProcessos
      TabOrder = 3
    end
    object me_local: TMaskEdit
      Left = 138
      Top = 146
      Width = 299
      Height = 21
      TabOrder = 8
    end
    object me_data: TMaskEdit
      Left = 16
      Top = 146
      Width = 117
      Height = 21
      TabOrder = 7
    end
    object pnlConsumo: TPanel
      Left = 16
      Top = 175
      Width = 697
      Height = 70
      BevelInner = bvLowered
      Color = 10514464
      TabOrder = 9
      Visible = False
      object Label272: TLabel
        Left = 16
        Top = 16
        Width = 176
        Height = 13
        Caption = 'Destinatário da Relação de Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object me_destcon: TMaskEdit
        Left = 14
        Top = 32
        Width = 665
        Height = 21
        TabOrder = 0
      end
    end
    object edtProcessoReceita: TMaskEdit
      Left = 16
      Top = 30
      Width = 113
      Height = 21
      EditMask = '!#####.######/##-##;1;_'
      MaxLength = 18
      TabOrder = 10
      Text = '     .      /  -  '
    end
    object GroupBox1: TGroupBox
      Left = 443
      Top = 137
      Width = 270
      Height = 29
      Caption = ' Contrato '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      object lblRepetro: TLabel
        Left = 121
        Top = 14
        Width = 46
        Height = 13
        Caption = 'Repetro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblIns: TLabel
        Left = 40
        Top = 14
        Width = 24
        Height = 13
        Caption = 'INs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRepetroResp: TLabel
        Left = 175
        Top = 15
        Width = 21
        Height = 13
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 14
        Width = 24
        Height = 13
        Caption = 'INs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 288
    Width = 726
    Height = 46
    Align = alBottom
    Color = 10514464
    TabOrder = 2
    Visible = False
    object btnAlterar: TBitBtn
      Left = 24
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
      Left = 128
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
      Left = 208
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
      Left = 632
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      Kind = bkClose
    end
    object btnImprimirConsumo: TBitBtn
      Left = 312
      Top = 12
      Width = 177
      Height = 25
      Caption = '&Imprime Relação de Consumo'
      TabOrder = 4
      OnClick = btnImprimirConsumoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object btnImprimirRCR: TBitBtn
      Left = 496
      Top = 12
      Width = 113
      Height = 25
      Caption = '&Imprime RCR'
      TabOrder = 5
      OnClick = btnImprimirRCRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object pnlObs: TPanel
    Left = 139
    Top = 106
    Width = 417
    Height = 169
    BevelWidth = 3
    TabOrder = 3
    Visible = False
    object Label3: TLabel
      Left = 10
      Top = 36
      Width = 111
      Height = 13
      Caption = 'Observação específica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 411
      Height = 22
      Align = alTop
      Caption = 'Observação específica'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnConfirmar: TBitBtn
      Left = 331
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      ModalResult = 1
      TabOrder = 1
      OnClick = btnConfirmarClick
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
    object btnCancel: TBitBtn
      Left = 331
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelClick
      Kind = bkCancel
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 52
      Width = 401
      Height = 21
      KeyField = 'PK_OBS'
      ListField = 'DESC_OBS'
      ListSource = dtsObsEsp
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 80
      Width = 313
      Height = 81
      DataField = 'DESC_OBS'
      DataSource = dtsObsEsp
      ReadOnly = True
      TabOrder = 4
    end
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        ' SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS' +
        ' Processo, Processos.Data, Processos.Tipo, Processos.Codigo_Clie' +
        'nte AS refcli, Processos.Numero_RCR,Processos.Contrato, Importad' +
        'ores.Codigo, Importadores.Razao_Social  AS Cliente, TAB_TIPO_DEC' +
        'LARACAO.Descricao AS tipodecla, Tipos_de_Processos.DESCRICAO AS ' +
        'tipopro, Contratos.Descricao AS qcontrato, Locais_Inventario.Des' +
        'cricao AS qlocal, Importadores.CNPJ_CPF_COMPLETO AS qcnpj, Proce' +
        'ssos.Fechado, Importadores.Ativo, Processos.Importador, Conhecim' +
        'ento_Processo.URF_Despacho, Processos.Responsavel_empresa,  Proc' +
        'essos.Responsavel_empresac,Processos.proc_vinc  '
      
        'FROM ((((((Parametros INNER JOIN Processos ON (Parametros.Filial' +
        ' = Processos.Filial) AND (Parametros.Empresa = Processos.Empresa' +
        ')) LEFT JOIN Importadores ON (Processos.Importador = Importadore' +
        's.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Proc' +
        'essos.Empresa = Importadores.Empresa)) LEFT JOIN Tipos_de_Proces' +
        'sos ON Processos.Tipo = Tipos_de_Processos.CODIGO) LEFT JOIN TAB' +
        '_TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARA' +
        'CAO.Codigo) LEFT JOIN Contratos ON (Processos.Contrato = Contrat' +
        'os.Contrato) AND (Processos.Importador = Contratos.Importador) A' +
        'ND (Processos.Filial = Contratos.Filial) AND (Processos.Empresa ' +
        '= Contratos.Empresa)) LEFT JOIN Locais_Inventario ON (Processos.' +
        'Local_Inventario = Locais_Inventario.Local) AND (Processos.Contr' +
        'ato = Locais_Inventario.Contrato) AND (Processos.Importador = Lo' +
        'cais_Inventario.Importador) AND (Processos.Filial = Locais_Inven' +
        'tario.Filial) AND (Processos.Empresa = Locais_Inventario.Empresa' +
        ')) LEFT JOIN Conhecimento_Processo ON (Processos.Codigo = Conhec' +
        'imento_Processo.Processo) AND (Processos.Filial = Conhecimento_P' +
        'rocesso.Filial) AND (Processos.Empresa = Conhecimento_Processo.E' +
        'mpresa)'
      'where Processos.Codigo=:Processo'
      'ORDER BY Processos.Codigo')
    Left = 160
    Top = 65528
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosrefcli: TStringField
      FieldName = 'refcli'
      FixedChar = True
      Size = 60
    end
    object qrProcessosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      FixedChar = True
    end
    object qrProcessosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 60
    end
    object qrProcessostipodecla: TStringField
      FieldName = 'tipodecla'
      FixedChar = True
      Size = 120
    end
    object qrProcessostipopro: TStringField
      FieldName = 'tipopro'
      FixedChar = True
      Size = 35
    end
    object qrProcessosqcontrato: TStringField
      FieldName = 'qcontrato'
      FixedChar = True
      Size = 50
    end
    object qrProcessosqlocal: TStringField
      FieldName = 'qlocal'
      FixedChar = True
      Size = 250
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      FixedChar = True
      Size = 14
    end
    object qrProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object qrProcessosAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qrProcessosURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object qrProcessosResponsavel_empresa: TStringField
      FieldName = 'Responsavel_empresa'
      FixedChar = True
      Size = 10
    end
    object qrProcessosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      FixedChar = True
      Size = 10
    end
    object qrProcessosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object qrProcessosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      FixedChar = True
      Size = 8
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 176
    Top = 8
  end
  object tbProcessos: TTable
    AutoCalcFields = False
    AfterScroll = tbProcessosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Importador <> '#39'0000'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Processos'
    UpdateMode = upWhereChanged
    Left = 248
    Top = 65520
    object tbProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbProcessosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbProcessosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object tbProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object tbProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object tbProcessosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      Size = 60
    end
    object tbProcessosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
    object tbProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object tbProcessosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object tbProcessosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object tbProcessosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object tbProcessosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object tbProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object tbProcessosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object tbProcessosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object tbProcessosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object tbProcessosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object tbProcessosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object tbProcessosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object tbProcessosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object tbProcessosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object tbProcessosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object tbProcessosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object tbProcessosIN_MOEDA_UNICA: TSmallintField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object tbProcessosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object tbProcessosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object tbProcessosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object tbProcessosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object tbProcessosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object tbProcessosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object tbProcessosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object tbProcessosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object tbProcessosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object tbProcessosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object tbProcessosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object tbProcessosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object tbProcessosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object tbProcessosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object tbProcessosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 50
    end
    object tbProcessosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object tbProcessosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object tbProcessosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 50
    end
    object tbProcessosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object tbProcessosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 50
    end
    object tbProcessosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object tbProcessosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 50
    end
    object tbProcessosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 18
    end
    object tbProcessosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 200
    end
    object tbProcessosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object tbProcessosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object tbProcessosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object tbProcessosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object tbProcessosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      Size = 10
    end
    object tbProcessosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object tbProcessosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      Size = 8
    end
    object tbProcessosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      Size = 10
    end
    object tbProcessosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object tbProcessosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      Size = 8
    end
    object tbProcessosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      Size = 8
    end
    object tbProcessosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      Size = 8
    end
    object tbProcessosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object tbProcessosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object tbProcessosCanalC: TStringField
      FieldName = 'CanalC'
      Size = 1
    end
    object tbProcessosFiscalC: TStringField
      FieldName = 'FiscalC'
    end
    object tbProcessosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      Size = 1
    end
    object tbProcessosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object tbProcessosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object tbProcessosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object tbProcessosident_meio1: TStringField
      FieldName = 'ident_meio1'
      Size = 100
    end
    object tbProcessosident_meio2: TStringField
      FieldName = 'ident_meio2'
      Size = 100
    end
    object tbProcessosCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object tbProcessosCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object tbProcessosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object tbProcessosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object tbProcessosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      Size = 5
    end
    object tbProcessosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object tbProcessosUrgente: TSmallintField
      FieldName = 'Urgente'
    end
    object tbProcessosconsolidado: TSmallintField
      FieldName = 'consolidado'
    end
    object tbProcessosPag_proporcional: TSmallintField
      FieldName = 'Pag_proporcional'
    end
    object tbProcessosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object tbProcessosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object tbProcessosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object tbProcessosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object tbProcessosDDE: TStringField
      FieldName = 'DDE'
      Size = 30
    end
    object tbProcessosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 30
    end
    object tbProcessosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object tbProcessosFaturado: TSmallintField
      FieldName = 'Faturado'
    end
    object tbProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object tbProcessosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 4
    end
    object tbProcessosProcurador2: TStringField
      FieldName = 'Procurador2'
      Size = 4
    end
    object tbProcessosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object tbProcessosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object tbProcessosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      Size = 100
    end
    object tbProcessosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      Size = 10
    end
    object tbProcessosvinc_processo: TSmallintField
      FieldName = 'vinc_processo'
    end
    object tbProcessosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      Size = 8
    end
  end
  object dsProcessos: TDataSource
    DataSet = tbProcessos
    Left = 248
    Top = 16
  end
  object alRCR: TActionList
    Left = 624
    object acTempRCR: TAction
      Caption = 'acTempRCR'
      OnExecute = acTempRCRExecute
    end
    object acRCRConsumo: TAction
      Caption = 'acRCRConsumo'
      OnExecute = acRCRConsumoExecute
    end
  end
  object qrDelRCRTemp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE *'
      'FROM RCRtemp'
      'WHERE Processo = :pro')
    Left = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
  end
  object qrFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Processo, Codigo, Moeda'
      'FROM Faturas'
      'WHERE Processo = :pro AND Empresa = :emp AND Filial = :filial')
    Left = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
    object qrFaturasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Faturas.Processo'
      Size = 8
    end
    object qrFaturasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Faturas.Codigo'
      Size = 30
    end
    object qrFaturasMoeda: TStringField
      FieldName = 'Moeda'
      Origin = 'DBNMSCOMEX.Faturas.Moeda'
      Size = 3
    end
  end
  object qrFilial: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Descricao'
      'FROM Filiais'
      'WHERE Codigo_Empresa = :emp AND Codigo_Filial = :filial')
    Left = 576
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
      end>
    object qrFilialDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Filiais.Descricao'
      Size = 50
    end
  end
  object qrFund: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM Fundamentacao_RCR'
      'ORDER BY Descricao')
    Left = 496
    object qrFundCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrFundDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
  end
  object dsFund: TDataSource
    DataSet = qrFund
    Left = 512
    Top = 16
  end
  object qrTransp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT CP.Processo, CP.Tipodoccarga, CP.Numerodoccarga, CP.Numer' +
        'omaster, CP.Embarcacao, T.Razao_Social, TP.DESCRICAO AS Pais'
      
        'FROM (Conhecimento_Processo AS CP LEFT JOIN Transportadores AS T' +
        ' ON (CP.Empresa = T.Empresa) AND (CP.Filial = T.Filial) AND (CP.' +
        'Transportador = T.Codigo)) LEFT JOIN TAB_PAIS AS TP ON CP.Pais_P' +
        'rocedencia = TP.CODIGO'
      
        'WHERE CP.Processo = :pro AND CP.Empresa = :emp AND CP.Filial = :' +
        'filial')
    Left = 544
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
    object qrTranspProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrTranspTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      Size = 2
    end
    object qrTranspNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      Size = 18
    end
    object qrTranspNumeromaster: TStringField
      FieldName = 'Numeromaster'
      Size = 18
    end
    object qrTranspEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      Size = 30
    end
    object qrTranspRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object qrTranspPais: TStringField
      FieldName = 'Pais'
      Size = 120
    end
  end
  object qrInsertRCRTemp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO RCRtemp ( Processo, Sequencial, NCM, Descricao_Produ' +
        'to, Fatura, Pagina, Quantidade, Valor )'
      'SELECT '
      ':pro,'
      ':seq,'
      ':ncm,'
      ':dec,'
      ':fat,'
      ':pag,'
      ':qtd,'
      ':val')
    Left = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ncm'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'dec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pag'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end>
  end
  object qrItensRCR: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Codigo, P.Tipo_Declaracao AS tdecla, IFA.NCM, IFA.Produ' +
        'to, IFA.Numero_serie, IFA.PO, P.Pag_proporcional, Max(IFA.Descri' +
        'cao_Produto) AS [desc], IFA.Fatura, IFA.Pagina, IFA.Sequencial, ' +
        'Sum(TIF.Quantidade) AS SomaDeQuantidade, Sum(IFA.Valor_Aduaneiro' +
        ') AS SomaDeValor_Aduaneiro, TIF.Regime_Tributacao_II, TIF.Regime' +
        '_Tributacao_IPI, TIF.Prazo_permanencia'
      
        'FROM (Processos AS P INNER JOIN ItensFaturas AS IFA ON (P.Codigo' +
        ' = IFA.Processo) AND (P.Filial = IFA.Filial) AND (P.Empresa = IF' +
        'A.Empresa)) INNER JOIN Tributacao_Item_Fatura AS TIF ON (IFA.Seq' +
        'uencial = TIF.Sequencial_Item) AND (IFA.Fatura = TIF.Fatura) AND' +
        ' (IFA.Processo = TIF.Processo) AND (IFA.Filial = TIF.Filial) AND' +
        ' (IFA.Empresa = TIF.Empresa)'
      
        'GROUP BY P.Codigo, P.Tipo_Declaracao, IFA.NCM, IFA.Produto, IFA.' +
        'Numero_serie, IFA.PO, P.Pag_proporcional, IFA.Fatura, IFA.Pagina' +
        ', IFA.Sequencial, TIF.Regime_Tributacao_II, TIF.Regime_Tributaca' +
        'o_IPI, TIF.Prazo_permanencia, P.Empresa, P.Filial'
      
        'HAVING P.Codigo = :processo AND P.Empresa = :emp AND P.Filial = ' +
        ':filial AND (P.Tipo_Declaracao="12" OR P.Tipo_Declaracao="05" OR' +
        ' P.Tipo_Declaracao IS NULL) AND (TIF.Regime_Tributacao_II="5" AN' +
        'D TIF.Regime_Tributacao_IPI="5" OR TIF.Prazo_permanencia<>0 OR P' +
        '.Pag_proporcional = 1)'
      
        'ORDER BY IFA.Fatura, IFA.Pagina, cast(IFA.Sequencial as integer)' +
        ';')
    Left = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
    object qrItensRCRCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrItensRCRtdecla: TStringField
      FieldName = 'tdecla'
      FixedChar = True
      Size = 2
    end
    object qrItensRCRNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object qrItensRCRProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object qrItensRCRNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object qrItensRCRPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object qrItensRCRPag_proporcional: TIntegerField
      FieldName = 'Pag_proporcional'
    end
    object qrItensRCRdesc: TMemoField
      FieldName = 'desc'
      BlobType = ftMemo
    end
    object qrItensRCRFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object qrItensRCRPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object qrItensRCRSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object qrItensRCRSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object qrItensRCRSomaDeValor_Aduaneiro: TFloatField
      FieldName = 'SomaDeValor_Aduaneiro'
    end
    object qrItensRCRRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object qrItensRCRRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object qrItensRCRPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
  end
  object qryObsEsp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' PK_OBS ,'
      ' DESC_OBS'
      'from'
      'TB_RCR_OBS_ESPECIFICA'
      'where'
      ' Excluido = 0')
    Left = 560
    Top = 225
    object qryObsEspPK_OBS: TAutoIncField
      FieldName = 'PK_OBS'
      Origin = 'DBNMSCOMEX.TB_RCR_OBS_ESPECIFICA.PK_OBS'
    end
    object qryObsEspDESC_OBS: TStringField
      FieldName = 'DESC_OBS'
      Origin = 'DBNMSCOMEX.TB_RCR_OBS_ESPECIFICA.DESC_OBS'
      FixedChar = True
      Size = 255
    end
  end
  object dtsObsEsp: TDataSource
    DataSet = qryObsEsp
    Left = 624
    Top = 225
  end
  object qryRCRT: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      '  COUNT(Descricao_Produto) as cont,'
      '  MAX(sequencial) as seq '
      'from '
      '  RCRtemp'
      'where '
      '  Descricao_Produto = '#39#39' and Processo =:Processo ')
    Left = 16
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qrValidarRCR: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      '  P.Codigo,'
      '  P.Numero_RCR,'
      '  I.Razao_Social '
      'from   '
      '  Processos P '
      '  left join '
      '  Importadores I on '
      '  P.Importador = I.Codigo '
      'where'
      '  P.Numero_RCR = :proc')
    Left = 664
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptInput
      end>
    object qrValidarRCRCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qrValidarRCRNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      FixedChar = True
    end
    object qrValidarRCRRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
  end
end
