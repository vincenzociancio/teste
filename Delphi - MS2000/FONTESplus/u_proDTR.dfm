object F_proDTR: TF_proDTR
  Left = 164
  Top = 121
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DTR - Documento de Transferência de Regime Aduaneiro '
  ClientHeight = 531
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
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
    object Label26: TLabel
      Left = 24
      Top = 10
      Width = 152
      Height = 13
      Caption = 'Digite o Nº do Processo Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 247
      Top = 10
      Width = 76
      Height = 13
      Caption = 'Informe o Local:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 457
      Top = 10
      Width = 129
      Height = 13
      Caption = 'Informe a data por extenso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ME_nossaref: TMaskEdit
      Left = 182
      Top = 6
      Width = 60
      Height = 21
      EditMask = '!99999/99;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
    object txtLocal: TEdit
      Left = 328
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'txtLocal'
    end
    object txtData: TEdit
      Left = 597
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 726
    Height = 452
    Align = alClient
    Color = 10514464
    Enabled = False
    TabOrder = 1
    Visible = False
    object GroupBox1: TGroupBox
      Left = 16
      Top = 12
      Width = 697
      Height = 222
      Caption = '1.Dados do Novo Regime Aduaneiro'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object lblRegime: TLabel
        Left = 9
        Top = 52
        Width = 39
        Height = 13
        Caption = 'Regime:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblBenef: TLabel
        Left = 9
        Top = 91
        Width = 112
        Height = 13
        Caption = 'Beneficiário do Regime:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblCPF_CNPJ: TLabel
        Left = 522
        Top = 92
        Width = 55
        Height = 13
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 131
        Width = 96
        Height = 13
        Caption = 'Endereço Completo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblCodRecFed: TLabel
        Left = 9
        Top = 174
        Width = 187
        Height = 13
        Caption = 'Código da Unidade da Receita Federal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblCodRecAlfand: TLabel
        Left = 523
        Top = 174
        Width = 154
        Height = 13
        Caption = 'Código do Recinto Alfandegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 344
        Top = 30
        Width = 173
        Height = 13
        Caption = 'D.S.I de admissão no regime anterior'
      end
      object Label9: TLabel
        Left = 9
        Top = 30
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
      object txtBene1: TEdit
        Left = 9
        Top = 107
        Width = 505
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object txtEnd1: TEdit
        Left = 9
        Top = 149
        Width = 681
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object txtUnidRF1: TEdit
        Left = 9
        Top = 190
        Width = 192
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object txtRecinto1: TEdit
        Left = 522
        Top = 190
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object txtCPFCNPJ1: TEdit
        Left = 522
        Top = 107
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object ME_nossaref_2: TMaskEdit
        Left = 140
        Top = 22
        Width = 60
        Height = 21
        Color = clWhite
        EditMask = '!99999/99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        Text = '     /  '
        OnChange = ME_nossaref_2Change
      end
      object txtDSI: TMaskEdit
        Left = 522
        Top = 24
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object txtRegime1: TDBLookupComboBox
        Left = 8
        Top = 67
        Width = 681
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = dsFund
        ParentFont = False
        TabOrder = 7
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 248
      Width = 697
      Height = 195
      Caption = '2.Dados do Regime Aduaneiro Anterior'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 9
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Regime:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 9
        Top = 63
        Width = 112
        Height = 13
        Caption = 'Beneficiário do Regime:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 9
        Top = 103
        Width = 96
        Height = 13
        Caption = 'Endereço Completo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 9
        Top = 146
        Width = 187
        Height = 13
        Caption = 'Código da Unidade da Receita Federal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 522
        Top = 63
        Width = 55
        Height = 13
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 523
        Top = 146
        Width = 154
        Height = 13
        Caption = 'Código do Recinto Alfandegado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object txtRegime2: TEdit
        Left = 9
        Top = 38
        Width = 680
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object txtBene2: TEdit
        Left = 9
        Top = 79
        Width = 505
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object txtEnd2: TEdit
        Left = 9
        Top = 121
        Width = 681
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object txtUnidRF2: TEdit
        Left = 9
        Top = 162
        Width = 192
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object txtRecinto2: TEdit
        Left = 521
        Top = 162
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object txtCPFCNPJ2: TEdit
        Left = 520
        Top = 79
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 485
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
      TabOrder = 5
      Kind = bkClose
    end
    object btnImprimirConsumo: TBitBtn
      Left = 312
      Top = 12
      Width = 177
      Height = 25
      Caption = '&Imprime Relação de Consumo'
      Enabled = False
      TabOrder = 3
      Visible = False
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
    object btnImprimirDTR: TBitBtn
      Left = 496
      Top = 12
      Width = 113
      Height = 25
      Caption = '&Imprime DTR'
      TabOrder = 4
      OnClick = btnImprimirDTRClick
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
  object alDTR: TActionList
    Left = 624
    Top = 58
    object acTempDTR: TAction
      Caption = 'acTempDTR'
    end
    object acDTRConsumo: TAction
      Caption = 'acDTRConsumo'
    end
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Data, Processos.Tipo,'
      
        'Processos.Codigo_Cliente AS refcli, Processos.Numero_RCR, Import' +
        'adores.Codigo, '
      
        'Importadores.Razao_Social  AS Cliente, TAB_TIPO_DECLARACAO.Descr' +
        'icao AS tipodecla, '
      
        'Tipos_de_Processos.DESCRICAO AS tipopro, Contratos.Descricao AS ' +
        'qcontrato, '
      
        'Locais_Inventario.Descricao AS qlocal, Importadores.CNPJ_CPF_COM' +
        'PLETO AS qcnpj, '
      
        'Processos.Fechado, Importadores.Ativo, Processos.Importador, Con' +
        'hecimento_Processo.URF_Despacho, '
      'Processos.Responsavel_empresa,  Processos.Responsavel_empresac, '
      'Importadores.Endereco, Importadores.Numero,'
      
        'Importadores.Complemento, Importadores.Bairro, Importadores.Cida' +
        'de, Importadores.CEP, Importadores.UF, '
      
        'Processos.NR_DECLARACAO_IMP as DSI,Conhecimento_Processo.Recinto' +
        '_Alfandegario, '
      
        'Conhecimento_Processo.Setor_Alfandegario, Conhecimento_Processo.' +
        'URF_chegada'
      
        'FROM ((((((Parametros INNER JOIN Processos ON (Parametros.Filial' +
        ' = Processos.Filial) '
      'AND (Parametros.Empresa = Processos.Empresa)) '
      
        'LEFT JOIN Importadores ON (Processos.Importador = Importadores.C' +
        'odigo) '
      
        'AND (Processos.Filial = Importadores.Filial) AND (Processos.Empr' +
        'esa = Importadores.Empresa)) '
      
        'LEFT JOIN Tipos_de_Processos ON Processos.Tipo = Tipos_de_Proces' +
        'sos.CODIGO) '
      
        'LEFT JOIN TAB_TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB' +
        '_TIPO_DECLARACAO.Codigo) '
      
        'LEFT JOIN Contratos ON (Processos.Contrato = Contratos.Contrato)' +
        ' '
      'AND (Processos.Importador = Contratos.Importador) '
      
        'AND (Processos.Filial = Contratos.Filial) AND (Processos.Empresa' +
        ' = Contratos.Empresa)) '
      
        'LEFT JOIN Locais_Inventario ON (Processos.Local_Inventario = Loc' +
        'ais_Inventario.Local) '
      'AND (Processos.Contrato = Locais_Inventario.Contrato) '
      'AND (Processos.Importador = Locais_Inventario.Importador) '
      'AND (Processos.Filial = Locais_Inventario.Filial) '
      'AND (Processos.Empresa = Locais_Inventario.Empresa)) '
      
        'LEFT JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecime' +
        'nto_Processo.Processo) '
      'AND (Processos.Filial = Conhecimento_Processo.Filial) '
      'AND (Processos.Empresa = Conhecimento_Processo.Empresa)'
      'where Processos.Codigo = :pProcesso'
      'ORDER BY Processos.Codigo')
    Left = 448
    Top = 58
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
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
      Size = 100
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
    object qrProcessosFechado: TIntegerField
      FieldName = 'Fechado'
    end
    object qrProcessosAtivo: TIntegerField
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
    object qrProcessosEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object qrProcessosNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object qrProcessosComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object qrProcessosBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object qrProcessosCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object qrProcessosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qrProcessosUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qrProcessosDSI: TStringField
      FieldName = 'DSI'
      FixedChar = True
      Size = 10
    end
    object qrProcessosRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      FixedChar = True
      Size = 7
    end
    object qrProcessosSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      FixedChar = True
      Size = 3
    end
    object qrProcessosURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 480
    Top = 58
  end
  object tbProcessos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Importador <> '#39'0000'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Processos'
    UpdateMode = upWhereChanged
    Left = 512
    Top = 58
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
    object tbProcessosnumero_rcr: TStringField
      FieldName = 'numero_rcr'
      Size = 15
    end
  end
  object dsProcessos: TDataSource
    DataSet = tbProcessos
    Left = 576
    Top = 58
  end
  object qrItensDTR: TQuery
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
    Left = 544
    Top = 58
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
    object qrItensDTRCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object qrItensDTRtdecla: TStringField
      FieldName = 'tdecla'
      Size = 2
    end
    object qrItensDTRNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object qrItensDTRProduto: TStringField
      FieldName = 'Produto'
      Size = 25
    end
    object qrItensDTRNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object qrItensDTRPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
    object qrItensDTRPag_proporcional: TSmallintField
      FieldName = 'Pag_proporcional'
    end
    object qrItensDTRdesc: TMemoField
      FieldName = 'desc'
      BlobType = ftMemo
    end
    object qrItensDTRFatura: TStringField
      FieldName = 'Fatura'
      Size = 30
    end
    object qrItensDTRPagina: TStringField
      FieldName = 'Pagina'
      Size = 3
    end
    object qrItensDTRSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
    object qrItensDTRSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object qrItensDTRSomaDeValor_Aduaneiro: TFloatField
      FieldName = 'SomaDeValor_Aduaneiro'
    end
    object qrItensDTRRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Size = 1
    end
    object qrItensDTRRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Size = 1
    end
    object qrItensDTRPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
  end
  object qrDelDTRTemp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE *'
      'FROM RCRtemp'
      'WHERE Processo = :pro')
    Left = 352
    Top = 58
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end>
  end
  object qrInsertDTRTemp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO RCRtemp ( Processo, Sequencial, NCM, Descricao_Produ' +
        'to, Fatura, Pagina, Quantidade, Valor, Unidade )'
      'SELECT '
      ':pro,'
      ':seq,'
      ':ncm,'
      ':dec,'
      ':fat,'
      ':pag,'
      ':qtd,'
      ':val,'
      ':uni'
      ' ')
    Left = 384
    Top = 58
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
      end
      item
        DataType = ftString
        Name = 'uni'
        ParamType = ptUnknown
      end>
  end
  object qrFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Processo, Codigo, Moeda'
      'FROM Faturas'
      'WHERE Processo = :pro AND Empresa = :emp AND Filial = :filial')
    Left = 416
    Top = 58
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
  object qrRegime: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT     TAB_REGIME_FUNDAMENTO.Descricao AS QREGIME'
      'FROM         Tributacao_Item_Fatura INNER JOIN'
      
        '                      TAB_REGIME_FUNDAMENTO ON Tributacao_Item_F' +
        'atura.Regime_Tributacao_II = TAB_REGIME_FUNDAMENTO.Regime AND '
      
        '                      Tributacao_Item_Fatura.Fundamento_Legal_II' +
        ' = TAB_REGIME_FUNDAMENTO.Codigo'
      
        'WHERE     (Tributacao_Item_Fatura.Regime_Tributacao_II = '#39'5'#39') an' +
        'd Tributacao_Item_Fatura.Processo = :processo'
      
        'GROUP BY    Tributacao_Item_Fatura.Processo, Tributacao_Item_Fat' +
        'ura.Regime_Tributacao_II, Tributacao_Item_Fatura.Fundamento_Lega' +
        'l_II, TAB_REGIME_FUNDAMENTO.Descricao'
      'ORDER BY Tributacao_Item_Fatura.Processo')
    Left = 304
    Top = 58
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptInput
      end>
    object qrRegimeQREGIME: TStringField
      FieldName = 'QREGIME'
      FixedChar = True
      Size = 120
    end
  end
  object qrFund: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Descricao'
      'FROM Fundamentacao_RCR'
      'ORDER BY Descricao')
    Left = 448
    Top = 96
  end
  object dsFund: TDataSource
    DataSet = qrFund
    Left = 496
    Top = 112
  end
end
