object frmNotaFiscalEE: TfrmNotaFiscalEE
  Left = 254
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Nota Fiscal Eletrônica - Exportação de dados'
  ClientHeight = 664
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 645
    Width = 720
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object tituloEmitente: TStaticText
    Left = 0
    Top = 31
    Width = 720
    Height = 17
    Align = alTop
    Caption = ' Dados do Emitente'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 31
    Align = alTop
    Color = clInfoBk
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 135
      Height = 13
      Caption = 'Digite o número do processo'
    end
    object edtProcesso: TMaskEdit
      Left = 152
      Top = 6
      Width = 97
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
    end
    object btnBuscar: TBitBtn
      Left = 258
      Top = 2
      Width = 161
      Height = 25
      Caption = 'Buscar dados do processo'
      TabOrder = 1
      OnClick = btnBuscarClick
    end
    object btnFechar: TBitBtn
      Left = 423
      Top = 2
      Width = 108
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      Kind = bkClose
    end
  end
  object pnlDadosEmitente: TPanel
    Left = 0
    Top = 48
    Width = 720
    Height = 237
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label2: TLabel
      Left = 150
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Razão Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 406
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
    end
    object Label4: TLabel
      Left = 22
      Top = 8
      Width = 27
      Height = 13
      Caption = 'CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 22
      Top = 48
      Width = 84
      Height = 13
      Caption = 'Inscrição Estatual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 406
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Número'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 462
      Top = 48
      Width = 64
      Height = 13
      Caption = 'Complemento'
    end
    object Label8: TLabel
      Left = 22
      Top = 88
      Width = 27
      Height = 13
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 294
      Top = 88
      Width = 47
      Height = 13
      Caption = 'Município'
    end
    object Label10: TLabel
      Left = 518
      Top = 88
      Width = 14
      Height = 13
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 574
      Top = 88
      Width = 21
      Height = 13
      Caption = 'CEP'
    end
    object Label12: TLabel
      Left = 150
      Top = 48
      Width = 46
      Height = 13
      Caption = 'Endereço'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtEmitente_CNPJ: TEdit
      Left = 22
      Top = 24
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
      OnExit = edtEmitente_CNPJExit
    end
    object edtEmitente_RazaoSocial: TEdit
      Left = 150
      Top = 24
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 1
    end
    object edtEmitente_NomeFantasia: TEdit
      Left = 406
      Top = 24
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 2
    end
    object edtEmitente_IE: TEdit
      Left = 22
      Top = 64
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 3
    end
    object edtEmitente_Endereco: TEdit
      Left = 150
      Top = 64
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 4
    end
    object edtEmitente_Numero: TEdit
      Left = 406
      Top = 64
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 5
    end
    object edtEmitente_Complemento: TEdit
      Left = 462
      Top = 64
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 6
    end
    object edtEmitente_Bairro: TEdit
      Left = 22
      Top = 104
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 7
    end
    object edtEmitente_Municipio: TEdit
      Left = 294
      Top = 104
      Width = 217
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 8
    end
    object edtEmitente_CEP: TEdit
      Left = 574
      Top = 104
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 9
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 126
      Width = 673
      Height = 107
      Caption = ' Informação(ões) da(s) adição(ões) '
      TabOrder = 10
      object gridAdicao: TDBGrid
        Left = 2
        Top = 15
        Width = 669
        Height = 90
        Align = alClient
        DataSource = dtsAdicao
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'I_xProd'
            Title.Caption = 'Produto'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'I_NCM'
            Title.Caption = 'NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'I25_nAdicao'
            Title.Caption = 'Adicao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fatura'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Taxa_conversao'
            Title.Caption = 'Taxa Conversão'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTE'
            Title.Caption = 'Frete'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Total'
            Title.Caption = 'Valor Total'
            Visible = True
          end>
      end
    end
    object edtEmitente_UF: TEdit
      Left = 518
      Top = 104
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 11
    end
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 285
    Width = 720
    Height = 17
    Align = alTop
    Caption = ' Dados do Destinatário'
    Color = 16744576
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 302
    Width = 720
    Height = 136
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object Label14: TLabel
      Left = 150
      Top = 8
      Width = 142
      Height = 13
      Caption = 'Razão Social/ Nome Fantasia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 22
      Top = 8
      Width = 27
      Height = 13
      Caption = 'CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 550
      Top = 8
      Width = 84
      Height = 13
      Caption = 'Inscrição Estatual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 350
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Número'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 438
      Top = 48
      Width = 64
      Height = 13
      Caption = 'Complemento'
    end
    object Label19: TLabel
      Left = 22
      Top = 88
      Width = 27
      Height = 13
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 246
      Top = 88
      Width = 246
      Height = 13
      Caption = 'Município: ("EXTERIOR" operações com o exterior)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 511
      Top = 88
      Width = 169
      Height = 13
      Caption = 'UF ("EX" operações com o exterior)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 22
      Top = 48
      Width = 46
      Height = 13
      Caption = 'Endereço'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtDestinatario_CNPJ: TEdit
      Left = 22
      Top = 24
      Width = 121
      Height = 21
      Hint = 'Digite somente números'
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = edtDestinatario_CNPJExit
    end
    object edtDestinatario_Nome: TEdit
      Left = 150
      Top = 24
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object edtDestinatario_IE: TEdit
      Left = 550
      Top = 24
      Width = 145
      Height = 21
      Hint = 'Digite somente números'
      CharCase = ecUpperCase
      TabOrder = 2
      OnExit = edtDestinatario_IEExit
    end
    object edtDestinatario_Endereco: TEdit
      Left = 22
      Top = 64
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object edtDestinatario_Numero: TEdit
      Left = 350
      Top = 64
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object edtDestinatario_Complemento: TEdit
      Left = 438
      Top = 64
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object edtDestinatario_Bairro: TEdit
      Left = 22
      Top = 104
      Width = 211
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object edtDestinatario_Municipio: TEdit
      Left = 246
      Top = 104
      Width = 251
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object edtDestinatario_UF: TComboBox
      Left = 512
      Top = 104
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'RJ'
        'EX')
    end
  end
  object pnlGerar: TPanel
    Left = 0
    Top = 438
    Width = 720
    Height = 207
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 6
    object Label13: TLabel
      Left = 24
      Top = -1
      Width = 28
      Height = 13
      Caption = 'CFOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 136
      Top = -1
      Width = 242
      Height = 13
      Caption = 'Informações adicionais de interesse do Contribuinte'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 97
      Width = 705
      Height = 9
      Shape = bsTopLine
    end
    object Label24: TLabel
      Left = 23
      Top = 91
      Width = 112
      Height = 13
      Caption = 'Totais para conferência'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblTotalBaseCalculo: TLabel
      Left = 24
      Top = 112
      Width = 103
      Height = 13
      Caption = 'Total base de cáculo:'
    end
    object lblTotalProdutos: TLabel
      Left = 24
      Top = 136
      Width = 91
      Height = 13
      Caption = 'Total dos produtos:'
    end
    object lblTotalII: TLabel
      Left = 288
      Top = 112
      Width = 51
      Height = 13
      Caption = 'Total do II:'
    end
    object lblTotalOutrasDesp: TLabel
      Left = 24
      Top = 160
      Width = 143
      Height = 13
      Caption = 'Total Outras desp. acessórias:'
    end
    object lblTotalFrete: TLabel
      Left = 288
      Top = 136
      Width = 69
      Height = 13
      Caption = 'Total do Frete:'
    end
    object lblTotalIPI: TLabel
      Left = 288
      Top = 160
      Width = 58
      Height = 13
      Caption = 'Total do IPI:'
    end
    object lblPIS: TLabel
      Left = 504
      Top = 112
      Width = 47
      Height = 13
      Caption = 'Total PIS:'
    end
    object lblTotalCOFINS: TLabel
      Left = 504
      Top = 136
      Width = 66
      Height = 13
      Caption = 'Total COFINS'
    end
    object lblTotalICMS: TLabel
      Left = 504
      Top = 160
      Width = 71
      Height = 13
      Caption = 'Total do ICMS:'
    end
    object Label25: TLabel
      Left = 24
      Top = 42
      Width = 138
      Height = 13
      Caption = 'Selecione o Tipo Declaração'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 216
      Top = 42
      Width = 102
      Height = 13
      Caption = 'Alíquota Proporcional'
      Visible = False
    end
    object lblTotalSeguro: TLabel
      Left = 24
      Top = 184
      Width = 79
      Height = 13
      Caption = 'Total do Seguro:'
    end
    object btnGerar: TBitBtn
      Left = 329
      Top = 56
      Width = 180
      Height = 25
      Caption = 'Gerar dados para NFE'
      Enabled = False
      TabOrder = 0
      OnClick = btnGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object mmTXT: TMemo
      Left = 888
      Top = 80
      Width = 153
      Height = 65
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 1
      Visible = False
    end
    object edtCFOP: TEdit
      Left = 22
      Top = 15
      Width = 105
      Height = 21
      TabOrder = 2
    end
    object edtInformacaoAdicionais: TEdit
      Left = 136
      Top = 15
      Width = 561
      Height = 21
      TabOrder = 3
    end
    object btnSalvar: TBitBtn
      Left = 515
      Top = 56
      Width = 180
      Height = 25
      Caption = 'Salvar dados para .TXT'
      Enabled = False
      TabOrder = 4
      OnClick = btnSalvarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
    object edtTipoDeclaracao: TComboBox
      Left = 24
      Top = 59
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      OnChange = edtTipoDeclaracaoChange
      Items.Strings = (
        'Consumo'
        'Admissão')
    end
    object edtAliqProporcional: TEdit
      Left = 216
      Top = 58
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 6
      Visible = False
    end
  end
  object qryEmitente: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      'i.Codigo,'
      ' i.CNPJ_CPF_COMPLETO,'
      ' i.Razao_Social,'
      ' i.Inscricao_Estadual,'
      ' i.Endereco,'
      ' i.Numero,'
      ' i.Complemento,'
      ' i.Bairro,'
      ' i.Cidade,'
      ' i.UF,'
      ' i.CEP'
      'FROM Processos p'
      ' INNER JOIN'#9'Importadores i on (p.Importador = i.Codigo)'
      'WHERE'
      ' p.Codigo=:Processo')
    Left = 592
    Top = 49
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '01296/11'
      end>
    object qryEmitenteCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qryEmitenteCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object qryEmitenteRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryEmitenteInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Importadores.Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object qryEmitenteEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Importadores.Endereco'
      FixedChar = True
      Size = 40
    end
    object qryEmitenteNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Importadores.Numero'
      FixedChar = True
      Size = 6
    end
    object qryEmitenteComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Importadores.Complemento'
      FixedChar = True
      Size = 21
    end
    object qryEmitenteBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Importadores.Bairro'
      FixedChar = True
      Size = 25
    end
    object qryEmitenteCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      FixedChar = True
      Size = 25
    end
    object qryEmitenteUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Importadores.UF'
      FixedChar = True
      Size = 2
    end
    object qryEmitenteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Importadores.CEP'
      FixedChar = True
      Size = 10
    end
  end
  object dtsAdicao: TDataSource
    DataSet = q_plafat
    Left = 344
    Top = 100
  end
  object q_plafat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT     '
      #9'CAST(itf.Descricao_Produto AS varchar(119)) AS I_xProd, '
      #9'itf.NCM AS I_NCM, '
      #9'TAB_UNID_MEDIDA.DESCRICAO AS I_uCom,  '
      #9'itf.Quantidade AS I_qCom, '
      #9'(itf.Valor_Unitario * ptc.Taxa_conversao) AS I_vUnCom, '
      
        #9'CAST((itf.Valor_Unitario * ptc.Taxa_conversao)AS DECIMAL(9,2))*' +
        'itf.Quantidade AS I_vProd,'
      #9'Tributacao_Item_Fatura.Adicao AS I25_nAdicao, '
      #9'Tributacao_Item_Fatura.Seq_Adicao AS I25_nSeqAdic,'
      
        #9'itf.Processo, itf.Fatura, CAST(itf.Pagina AS real) AS Pag, CAST' +
        '(itf.Sequencial AS real) '
      
        #9'AS Seq, itf.Produto, Fabricantes_Produtores.Razao_Social AS Fab' +
        'ricante, itf.Unidade, itf.Unidade_Medida_Estat, itf.Destaque_NCM' +
        ', itf.NALADI, '
      
        #9'itf.Referencia, itf.Numero_serie, itf.Referencia_projeto, itf.P' +
        'O, itf.Seqpo,   itf.Peso_Unitario, '
      
        #9'itf.Peso_Unitario_Acertado, itf.Peso_Total, itf.Peso_Total_Acer' +
        'tado, CAST(itf.Descricao_Produto_ing AS varchar(5000)) AS desci,' +
        ' itf.Rateio_Acrescimos, '
      
        #9'itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Int' +
        'erno_imp, itf.Rateio_Seguro_Interno, itf.Rateio_outras_import, i' +
        'tf.Rateio_startup, '
      
        #9'itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Inte' +
        'rno_exp, itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rat' +
        'eio_frete_fatura, '
      
        #9'itf.Rateio_seguro_fatura, itf.Rateio_carga_imp, itf.Rateio_Desp' +
        'esas_ate_FOB, itf.Rateio_Frete_prepaid, itf.Rateio_Frete_collect' +
        ', '
      
        #9'itf.Rateio_Frete_ternac, itf.Rateio_Seguro, itf.Valor_Aduaneiro' +
        ', itf.Valor_mercadoria, itf.VMLE, ptc.Taxa_conversao, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PI' +
        'S_COFINS.OT, Processos_ADICOES_ICMS_PIS_COFINS.DA, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Processos_ADICOE' +
        'S_ICMS_PIS_COFINS.Aliq_NCM_IPI, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADI' +
        'COES_ICMS_PIS_COFINS.Aliq_COFINS, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processos_ADICOES_' +
        'ICMS_PIS_COFINS.Aliq_ICMS_EXTRA, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_AD' +
        'ICOES_ICMS_PIS_COFINS.BASEC_ICMS, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II, Processos_ADICOES_I' +
        'CMS_PIS_COFINS.VALOR_IPI, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, Processos_ADICOES' +
        '_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_AD' +
        'ICOES_ICMS_PIS_COFINS.VALOR_COFINS, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_' +
        'ADICOES_ICMS_PIS_COFINS.VA_proporcional, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Pro' +
        'cessos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional, '
      
        #9'Processos_ADICOES_ICMS_PIS_COFINS.FOB, itf.Base_Calc_II * ptc.T' +
        'axa_conversao AS VA_NEW,'
      
        'CAST((((itf.Rateio_Frete_prepaid + itf.Rateio_Frete_collect + it' +
        'f.Rateio_Frete_ternac)* ptc.Taxa_conversao )* itf.Quantidade)AS ' +
        'DECIMAL(9,2)) AS FRENTE,'
      'itf.Valor_Total'
      'FROM         '
      #9'ItensFaturas AS itf '
      
        #9'LEFT OUTER JOIN Fabricantes_Produtores ON itf.Fabricante = Fabr' +
        'icantes_Produtores.Codigo '
      
        #9'INNER JOIN Tributacao_Item_Fatura ON itf.Sequencial = Tributaca' +
        'o_Item_Fatura.Sequencial_Item AND itf.Fatura = Tributacao_Item_F' +
        'atura.Fatura AND itf.Processo = Tributacao_Item_Fatura.Processo '
      
        #9'INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS ON Tributacao_Item' +
        '_Fatura.Adicao = Processos_ADICOES_ICMS_PIS_COFINS.Adicao AND Tr' +
        'ibutacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PIS_COFIN' +
        'S.Processo '
      #9'INNER JOIN Processos ON itf.Processo = Processos.Codigo '
      
        #9'INNER JOIN Faturas ON itf.Fatura = Faturas.Codigo AND itf.Proce' +
        'sso = Faturas.Processo'
      
        #9'INNER JOIN Processos_Taxas_Conversao AS ptc ON Faturas.Moeda = ' +
        'ptc.Moeda AND Faturas.Processo = ptc.Processo'
      
        #9'INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecim' +
        'ento_Processo.Processo'
      
        #9'INNER JOIN TAB_UNID_MEDIDA ON TAB_UNID_MEDIDA.CODIGO = itf.Unid' +
        'ade'
      
        'WHERE     (itf.Pagina <> '#39'XXX'#39') AND (itf.Sequencial <> '#39'XXX'#39') AN' +
        'D (itf.Processo =:Processo)'
      'ORDER BY '
      '              Tributacao_Item_Fatura.Adicao')
    Left = 176
    Top = 103
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '01296/11'
      end>
    object q_plafatI_xProd: TStringField
      FieldName = 'I_xProd'
      FixedChar = True
      Size = 119
    end
    object q_plafatI_NCM: TStringField
      FieldName = 'I_NCM'
      FixedChar = True
      Size = 8
    end
    object q_plafatI_uCom: TStringField
      FieldName = 'I_uCom'
      FixedChar = True
      Size = 120
    end
    object q_plafatI_qCom: TFloatField
      FieldName = 'I_qCom'
    end
    object q_plafatI_vUnCom: TFloatField
      FieldName = 'I_vUnCom'
    end
    object q_plafatI_vProd: TFloatField
      FieldName = 'I_vProd'
    end
    object q_plafatI25_nAdicao: TStringField
      FieldName = 'I25_nAdicao'
      FixedChar = True
      Size = 3
    end
    object q_plafatI25_nSeqAdic: TSmallintField
      FieldName = 'I25_nSeqAdic'
    end
    object q_plafatProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_plafatFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_plafatPag: TFloatField
      FieldName = 'Pag'
    end
    object q_plafatSeq: TFloatField
      FieldName = 'Seq'
    end
    object q_plafatProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object q_plafatFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 60
    end
    object q_plafatUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object q_plafatUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object q_plafatDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object q_plafatNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object q_plafatReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object q_plafatNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object q_plafatReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object q_plafatPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object q_plafatSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object q_plafatPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object q_plafatPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object q_plafatPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object q_plafatPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object q_plafatdesci: TStringField
      FieldName = 'desci'
      FixedChar = True
      Size = 255
    end
    object q_plafatRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object q_plafatRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object q_plafatRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object q_plafatRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object q_plafatRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object q_plafatRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object q_plafatRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object q_plafatRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object q_plafatRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object q_plafatRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object q_plafatRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object q_plafatRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object q_plafatRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object q_plafatRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object q_plafatRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object q_plafatRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object q_plafatRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object q_plafatRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object q_plafatRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object q_plafatRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object q_plafatValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object q_plafatValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object q_plafatVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object q_plafatTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_plafatVA: TFloatField
      FieldName = 'VA'
    end
    object q_plafatOT: TFloatField
      FieldName = 'OT'
    end
    object q_plafatDA: TFloatField
      FieldName = 'DA'
    end
    object q_plafatAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object q_plafatAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object q_plafatAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object q_plafatAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object q_plafatAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object q_plafatAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object q_plafatBASEC_PISCOFINS: TFloatField
      FieldName = 'BASEC_PISCOFINS'
    end
    object q_plafatBASEC_ICMS: TFloatField
      FieldName = 'BASEC_ICMS'
    end
    object q_plafatVALOR_II: TFloatField
      FieldName = 'VALOR_II'
    end
    object q_plafatVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object q_plafatVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object q_plafatVALOR_ICMS_EXTRA: TFloatField
      FieldName = 'VALOR_ICMS_EXTRA'
    end
    object q_plafatVALOR_PIS_PASEP: TFloatField
      FieldName = 'VALOR_PIS_PASEP'
    end
    object q_plafatVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object q_plafatPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object q_plafatVA_proporcional: TFloatField
      FieldName = 'VA_proporcional'
    end
    object q_plafatAliq_NCM_II_proporcional: TFloatField
      FieldName = 'Aliq_NCM_II_proporcional'
    end
    object q_plafatAliq_NCM_IPI_proporcional: TFloatField
      FieldName = 'Aliq_NCM_IPI_proporcional'
    end
    object q_plafatFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_plafatVA_NEW: TFloatField
      FieldName = 'VA_NEW'
    end
    object q_plafatFRENTE: TFloatField
      FieldName = 'FRENTE'
    end
    object q_plafatValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
  end
  object q_DI: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT NR_DECLARACAO_IMP, NR_DECLARACAO_IMPC, DT_REGISTRO_DI, DT' +
        '_REGISTRO_DIC, cast(DT_DESEMBARACO as date) as DT_DESEMBARACO, c' +
        'ast(DT_DESEMBARACOC as date) as DT_DESEMBARACOC   '
      'FROM [MS2000].[dbo].[Processos] where Codigo =:Processo')
    Left = 256
    Top = 103
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object q_DINR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object q_DINR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      FixedChar = True
      Size = 10
    end
    object q_DIDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object q_DIDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      FixedChar = True
      Size = 8
    end
    object q_DIDT_DESEMBARACO: TStringField
      FieldName = 'DT_DESEMBARACO'
      FixedChar = True
    end
    object q_DIDT_DESEMBARACOC: TStringField
      FieldName = 'DT_DESEMBARACOC'
      FixedChar = True
    end
  end
  object q_LocalDesemb: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TAB_URF.DESCRICAO AS I18_xLocDesemb     '
      'FROM [MS2000].[dbo].[Conhecimento_Processo]'
      
        'INNER JOIN TAB_URF ON TAB_URF.CODIGO = Conhecimento_Processo.[UR' +
        'F_Despacho]'
      'WHERE Processo =:Processo')
    Left = 424
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object q_LocalDesembI18_xLocDesemb: TStringField
      FieldName = 'I18_xLocDesemb'
      FixedChar = True
      Size = 120
    end
  end
  object SD: TSaveDialog
    DefaultExt = '.txt'
    Filter = '.txt|.txt'
    Title = 'Salvar como...'
    Left = 327
    Top = 202
  end
  object q_total_taxa_siscomex: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select sum(da) as total_taxa from Processos_ADICOES_ICMS_PIS_COF' +
        'INS'
      'where Processo = :p')
    Left = 561
    Top = 212
    ParamData = <
      item
        DataType = ftString
        Name = 'p'
        ParamType = ptUnknown
      end>
    object q_total_taxa_siscomextotal_taxa: TFloatField
      FieldName = 'total_taxa'
    end
  end
  object q_total_produtos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select SUM(valor_total) as Valor_Total from ItensFaturas'
      'where Processo = :p')
    Left = 561
    Top = 4
    ParamData = <
      item
        DataType = ftString
        Name = 'p'
        ParamType = ptUnknown
      end>
    object q_total_produtosValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
  end
end
