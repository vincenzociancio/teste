object F_proTributacao: TF_proTributacao
  Left = 274
  Top = 67
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tributa��o'
  ClientHeight = 551
  ClientWidth = 941
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object p_processo1: TPanel
    Left = 0
    Top = 0
    Width = 941
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 14
      Width = 113
      Height = 13
      Caption = 'Digite o N� do Processo'
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
    object chkTxConversaodeAmanha: TCheckBox
      Left = 762
      Top = 11
      Width = 174
      Height = 17
      Caption = 'Taxa de Convers�o de Amanh�'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = chkTxConversaodeAmanhaClick
    end
  end
  object p_processo2: TPanel
    Left = 0
    Top = 33
    Width = 941
    Height = 518
    Align = alClient
    Color = 10514464
    TabOrder = 1
    Visible = False
    object Label164: TLabel
      Left = 1
      Top = 1
      Width = 939
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Itens de Faturas do Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label165: TLabel
      Left = 258
      Top = 212
      Width = 246
      Height = 20
      Alignment = taCenter
      Caption = 'Tributa��o por Itens de Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox9: TGroupBox
      Left = 5
      Top = 409
      Width = 761
      Height = 37
      Caption = ' Contrato '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object lblRepetro: TLabel
        Left = 600
        Top = 16
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
        Left = 544
        Top = 16
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
      object lblDescricao: TLabel
        Left = 120
        Top = 16
        Width = 58
        Height = 13
        Caption = 'Descri��o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRepetroResp: TLabel
        Left = 656
        Top = 16
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
      object Label8: TLabel
        Left = 512
        Top = 16
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
      object Label9: TLabel
        Left = 48
        Top = 16
        Width = 58
        Height = 13
        Caption = 'Descri��o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBG_tributositem: TDBGrid
      Left = 1
      Top = 237
      Width = 763
      Height = 122
      Color = clWhite
      DataSource = ds_qtributoitem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DBG_tributositemEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'Fatura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequencial_Item'
          Title.Caption = 'Seq Fat'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequencial'
          Title.Caption = 'Seq Trib.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Certificado_Origem'
          Title.Caption = 'Certific.Origem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ato_Concessorio'
          Title.Caption = 'Ato Concess�rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_TIPO_ACORDO_TAR'
          Title.Caption = 'Tipo Acordo Aladi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACORDO_ALADI'
          Title.Caption = 'Acordo Aladi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQUOTA_ALADI'
          Title.Caption = 'Al�quota Aladi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Regime_Tributacao_II'
          Title.Caption = 'Reg.Tributa��o II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fundamento_Legal_II'
          Title.Caption = 'Fund. Legal II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Ato_Legal_II'
          Title.Caption = 'N�mero Ato Legal II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Regime_Tributacao_IPI'
          Title.Caption = 'Reg.Tributa��o IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Ato_Legal_IPI'
          Title.Caption = 'N�mero Ato Legal IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual_Reducao_II'
          Title.Caption = '% Redu��o II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual_Reduca_IPI'
          Title.Caption = '% Redu��o IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
          Title.Caption = 'Regime Tributa��o PISCOFINS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
          Title.Caption = 'FUNDAMENTO LEGAL PISCOFINS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PC_ALIQ_REDUZIDA_PIS'
          Title.Caption = 'Al�quota Reduzida PIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PC_ALIQ_REDUZIDA_COFINS'
          Title.Caption = 'Al�quota Reduzida Cofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Aliq_ICMS'
          Title.Caption = 'Aliq.ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Aliq_ICMS_EXTRA'
          Title.Caption = 'Aliq.FECP'
          Visible = True
        end>
    end
    object b_incluitrib: TBitBtn
      Left = 687
      Top = 209
      Width = 74
      Height = 25
      Caption = '&Inclui'
      TabOrder = 3
      OnClick = b_incluitribClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object b_excluitrib: TBitBtn
      Left = 592
      Top = 365
      Width = 169
      Height = 25
      Caption = '&Exclui Tributa��o'
      Enabled = False
      TabOrder = 2
      OnClick = VerificaAutorizacaoParaExcluirDiRegistrada
      Kind = bkCancel
    end
    object DBG_itenstributaveis: TDBGrid
      Left = 1
      Top = 21
      Width = 939
      Height = 184
      Align = alTop
      Color = clWhite
      DataSource = ds_qitenstributaveis
      DragCursor = crDefault
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Fatura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pagina'
          Title.Caption = 'Pag.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sequencial'
          Title.Caption = 'Seq'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo_Tributavel'
          Title.Caption = 'Saldo Tribut�vel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qdesc'
          Visible = True
        end>
    end
    object b_todos: TBitBtn
      Left = 3
      Top = 3
      Width = 65
      Height = 16
      Caption = 'Todos'
      TabOrder = 5
      OnClick = b_todosClick
      Kind = bkAll
    end
    object b_todose: TBitBtn
      Left = 3
      Top = 219
      Width = 65
      Height = 16
      Caption = 'Todos'
      TabOrder = 6
      OnClick = b_todoseClick
      Kind = bkAll
    end
    object P_tributacao: TPanel
      Left = 130
      Top = 3
      Width = 699
      Height = 496
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object Label184: TLabel
        Left = 354
        Top = 20
        Width = 87
        Height = 13
        Caption = 'M�todo Valora��o'
      end
      object Label5: TLabel
        Left = 27
        Top = 5
        Width = 135
        Height = 13
        Caption = 'ICMS - Base de C�lculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblMaterialUsado: TLabel
        Left = 352
        Top = 82
        Width = 332
        Height = 16
        Caption = 'ESTE PROCESSO CONT�M MATERIAL USADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 697
        Height = 18
        Align = alTop
        Caption = 'Tributa��o'
        Color = clMaroon
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object GroupBox4: TGroupBox
        Left = 4
        Top = 21
        Width = 344
        Height = 220
        Caption = ' II - IMPOSTO DE IMPORTA��O '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label175: TLabel
          Left = 6
          Top = 12
          Width = 90
          Height = 13
          Caption = 'Regime Tributa��o'
        end
        object Label176: TLabel
          Left = 6
          Top = 45
          Width = 88
          Height = 13
          Caption = 'Fundamento Legal'
        end
        object Label180: TLabel
          Left = -241
          Top = 204
          Width = 60
          Height = 13
          Caption = 'N� Ato Legal'
        end
        object Label158: TLabel
          Left = 9
          Top = 146
          Width = 77
          Height = 13
          Caption = 'Ato Concess�rio'
        end
        object Label166: TLabel
          Left = 7
          Top = 113
          Width = 60
          Height = 13
          Caption = 'N� Ato Legal'
        end
        object Label168: TLabel
          Left = 109
          Top = 114
          Width = 55
          Height = 13
          Caption = '% Redu��o'
        end
        object Label182: TLabel
          Left = 8
          Top = 78
          Width = 136
          Height = 13
          Caption = 'Motivo Admiss�o Tempor�ria'
        end
        object Label75: TLabel
          Left = 175
          Top = 114
          Width = 25
          Height = 13
          Caption = '% EX'
        end
        object Label235: TLabel
          Left = 9
          Top = 180
          Width = 169
          Height = 13
          Caption = 'Sub Contratada do Ato Concess�rio'
        end
        object Label283: TLabel
          Left = 243
          Top = 114
          Width = 92
          Height = 13
          Caption = 'Prazo Perman�ncia'
        end
        object Label284: TLabel
          Left = 291
          Top = 134
          Width = 36
          Height = 13
          Caption = 'mes(es)'
        end
        object cb_regtrib1: TComboBox
          Left = 6
          Top = 25
          Width = 334
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cb_regtrib1Change
          Items.Strings = (
            '1 RECOLHIMENTO INTEGRAL'
            '9 RECOLHIMENTO INTEGRAL (Al�q. Reduzida IN 285/03 art 6�)'
            '2 IMUNIDADE'
            '3 ISEN��O'
            '4 REDU��O'
            '5 SUSPENS�O'
            '6 N�O INCID�NCIA'
            '7 TRIBUTA��O SIMPLIFICADA'
            '8 TRIBUTA��O SIMPLIFICADA DE BAGAGEM')
        end
        object cb_fundale: TComboBox
          Left = 7
          Top = 58
          Width = 332
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          OnChange = cb_fundaleChange
        end
        object cb_atolegalii: TComboBox
          Left = -241
          Top = 216
          Width = 145
          Height = 21
          ItemHeight = 13
          TabOrder = 6
        end
        object me_atoconce: TMaskEdit
          Left = 116
          Top = 154
          Width = 97
          Height = 21
          TabOrder = 5
          Visible = False
        end
        object cb_atoii: TComboBox
          Left = 7
          Top = 126
          Width = 98
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
        end
        object me_perccorII: TMaskEdit
          Left = 107
          Top = 126
          Width = 62
          Height = 21
          TabOrder = 4
          Text = '0'
        end
        object cb_motadmtemp: TComboBox
          Left = 7
          Top = 92
          Width = 332
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          OnChange = cb_motadmtempChange
        end
        object me_percex: TMaskEdit
          Left = 173
          Top = 126
          Width = 64
          Height = 21
          TabOrder = 7
          Text = '0'
        end
        object cb_atoconce: TComboBox
          Left = 7
          Top = 159
          Width = 330
          Height = 21
          ItemHeight = 13
          TabOrder = 8
          OnChange = cb_atoconceChange
        end
        object cb_sub: TComboBox
          Left = 7
          Top = 193
          Width = 330
          Height = 21
          ItemHeight = 13
          TabOrder = 9
        end
        object me_sub: TMaskEdit
          Left = 208
          Top = 184
          Width = 97
          Height = 21
          TabOrder = 10
          Visible = False
        end
        object me_prazo: TMaskEdit
          Left = 241
          Top = 126
          Width = 48
          Height = 21
          Enabled = False
          TabOrder = 11
        end
      end
      object GroupBox5: TGroupBox
        Left = 4
        Top = 244
        Width = 344
        Height = 84
        Caption = ' IPI - IMPOSTO DE PRODUTOS INDUSTRIALIZADOS'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label177: TLabel
          Left = 6
          Top = 11
          Width = 90
          Height = 13
          Caption = 'Regime Tributa��o'
        end
        object Label183: TLabel
          Left = 4
          Top = 45
          Width = 60
          Height = 13
          Caption = 'N� Ato Legal'
        end
        object Label169: TLabel
          Left = 108
          Top = 45
          Width = 70
          Height = 13
          Caption = '% de Redu��o'
        end
        object cb_regtrib2: TComboBox
          Left = 4
          Top = 24
          Width = 335
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cb_regtrib2Change
          Items.Strings = (
            '4 RECOLHIMENTO INTEGRAL'
            '9 RECOLHIMENTO INTEGRAL (Al�q. Reduzida IN 285/03 art 6�)'
            '2 REDU��O'
            '5 SUSPENS�O'
            '1 ISEN��O'
            '3 N�O TRIBUT�VEL')
        end
        object cb_atoipi: TComboBox
          Left = 4
          Top = 58
          Width = 101
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
        end
        object me_perccoripi: TMaskEdit
          Left = 107
          Top = 58
          Width = 74
          Height = 21
          TabOrder = 2
          Text = '0'
        end
      end
      object B_aplica: TBitBtn
        Left = 618
        Top = 455
        Width = 75
        Height = 27
        Caption = '&Aplica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = B_aplicaClick
        Kind = bkOK
      end
      object GroupBox3: TGroupBox
        Left = 351
        Top = 99
        Width = 347
        Height = 160
        Caption = ' Acordo Tarif�rio '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object Label157: TLabel
          Left = 10
          Top = 119
          Width = 101
          Height = 13
          Caption = 'Certificado de Origem'
        end
        object Label159: TLabel
          Left = 7
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Tipo Acordo'
        end
        object Label160: TLabel
          Left = 7
          Top = 49
          Width = 68
          Height = 13
          Caption = 'Acordo ALADI'
        end
        object Label161: TLabel
          Left = 7
          Top = 84
          Width = 60
          Height = 13
          Caption = 'N� Ato Legal'
        end
        object Label167: TLabel
          Left = 101
          Top = 83
          Width = 95
          Height = 13
          Caption = 'Redu��o Acordo(%)'
        end
        object me_certificado: TMaskEdit
          Left = 8
          Top = 132
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object cb_tipoacordo: TComboBox
          Left = 5
          Top = 27
          Width = 338
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            '2 - ALADI'
            '3 - OMC'
            '4 - SGPC')
        end
        object cb_acordoaladi: TComboBox
          Left = 5
          Top = 61
          Width = 338
          Height = 21
          ItemHeight = 13
          TabOrder = 1
        end
        object cb_atoaladi: TComboBox
          Left = 6
          Top = 96
          Width = 91
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 4
        end
        object me_aliquotaacordo: TMaskEdit
          Left = 99
          Top = 96
          Width = 97
          Height = 21
          TabOrder = 2
          Text = '0'
        end
      end
      object b_cancelaapli: TBitBtn
        Left = 541
        Top = 456
        Width = 75
        Height = 25
        Caption = '&Cancela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = b_cancelaapliClick
        Kind = bkCancel
      end
      object cb_bemencomenda: TCheckBox
        Left = 354
        Top = 65
        Width = 121
        Height = 17
        Caption = 'Bem sob Encomenda'
        TabOrder = 5
      end
      object cb_materialusado: TCheckBox
        Left = 543
        Top = 65
        Width = 121
        Height = 17
        Caption = 'Material Usado'
        TabOrder = 6
      end
      object cb_valoracao: TComboBox
        Left = 353
        Top = 33
        Width = 177
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 7
      end
      object rg_aplicacao: TRadioGroup
        Left = 540
        Top = 18
        Width = 155
        Height = 44
        Caption = 'Aplica��o Mercadoria'
        Columns = 2
        ItemIndex = 2
        Items.Strings = (
          'Consumo'
          'Revenda'
          'N�o usar')
        TabOrder = 8
      end
      object GroupBox1: TGroupBox
        Left = 351
        Top = 291
        Width = 344
        Height = 156
        Caption = ' Exonera��o  ICMS '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 9
        object cb_confirma: TCheckBox
          Left = 270
          Top = 0
          Width = 64
          Height = 17
          Caption = 'Confirma'
          TabOrder = 0
          OnClick = cb_confirmaClick
        end
        object dbg_trat: TDBGrid
          Left = 2
          Top = 14
          Width = 337
          Height = 139
          DataSource = ds_trat
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'qtratd'
              Title.Caption = 'Tratamento Tribut�rio'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qfund'
              Title.Caption = 'Fundamento Legal'
              Width = 5000
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 4
        Top = 331
        Width = 344
        Height = 106
        Caption = 'PIS/COFINS'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        object Label1: TLabel
          Left = 6
          Top = 11
          Width = 90
          Height = 13
          Caption = 'Regime Tributa��o'
        end
        object Label2: TLabel
          Left = 6
          Top = 45
          Width = 88
          Height = 13
          Caption = 'Fundamento Legal'
        end
        object cb_regtribPC: TComboBox
          Left = 4
          Top = 24
          Width = 335
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cb_regtribPCChange
          Items.Strings = (
            '1 RECOLHIMENTO INTEGRAL'
            '2 IMUNIDADE'
            '3 ISEN��O'
            '4 REDU��O'
            '5 SUSPENS�O'
            '6 N�O INCID�NCIA')
        end
        object cb_fundPC: TComboBox
          Left = 7
          Top = 58
          Width = 332
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          OnChange = cb_fundPCChange
        end
        object p_reduz: TPanel
          Left = 5
          Top = 80
          Width = 332
          Height = 23
          BevelOuter = bvNone
          Color = clSilver
          Enabled = False
          TabOrder = 2
          object Label3: TLabel
            Left = 5
            Top = 7
            Width = 88
            Height = 13
            Caption = 'Aliq. Reduzida PIS'
          end
          object Label4: TLabel
            Left = 149
            Top = 7
            Width = 100
            Height = 13
            Caption = 'Aliq. Reduzida Cofins'
          end
          object me_aliq_reduzida_pis: TMaskEdit
            Left = 96
            Top = 3
            Width = 41
            Height = 21
            TabOrder = 0
          end
          object me_aliq_reduzida_cofins: TMaskEdit
            Left = 255
            Top = 3
            Width = 41
            Height = 21
            TabOrder = 1
          end
        end
      end
      object GroupBox6: TGroupBox
        Left = 351
        Top = 259
        Width = 344
        Height = 32
        Caption = ' ICMS / FECP - AL�QUOTAS '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        object Label6: TLabel
          Left = 162
          Top = 13
          Width = 26
          Height = 13
          Caption = 'ICMS'
        end
        object Label7: TLabel
          Left = 252
          Top = 13
          Width = 27
          Height = 13
          Caption = 'FECP'
        end
        object me_fecp: TMaskEdit
          Left = 284
          Top = 8
          Width = 50
          Height = 21
          TabOrder = 0
          Text = '0'
        end
        object me_icms: TMaskEdit
          Left = 193
          Top = 8
          Width = 50
          Height = 21
          TabOrder = 1
          Text = '0'
        end
      end
      object GroupBox7: TGroupBox
        Left = 10
        Top = 439
        Width = 223
        Height = 51
        Caption = 'ICMS - Base de C�lculo '
        TabOrder = 13
        object chkICMS_BASE: TCheckBox
          Left = 7
          Top = 25
          Width = 180
          Height = 17
          Caption = 'SEM IMPOSTOS SUSPENSOS'
          TabOrder = 0
        end
      end
      object GroupBox8: TGroupBox
        Left = 351
        Top = 446
        Width = 172
        Height = 44
        Caption = 'N�mero da LI'
        TabOrder = 14
        object txtNumeroDaLI: TEdit
          Left = 10
          Top = 16
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object gb_senha: TGroupBox
      Left = 232
      Top = 154
      Width = 305
      Height = 121
      Caption = ' Senha do Supervisor para exclus�o '
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      Visible = False
      object L_SUPER: TLabel
        Left = 8
        Top = 24
        Width = 289
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 48
        Top = 56
        Width = 41
        Height = 13
        Caption = 'Senha:'
      end
      object e_senha: TEdit
        Left = 96
        Top = 48
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
      end
      object b_ok: TBitBtn
        Left = 80
        Top = 80
        Width = 75
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = b_okClick
        Kind = bkOK
      end
      object b_cancela: TBitBtn
        Left = 160
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Cancela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = b_cancelaClick
        Kind = bkCancel
      end
    end
    object PanelRepetroICMS: TPanel
      Left = 1
      Top = 432
      Width = 939
      Height = 85
      Align = alBottom
      Color = clYellow
      Locked = True
      TabOrder = 9
      Visible = False
      object Label10: TLabel
        Left = 312
        Top = 8
        Width = 325
        Height = 13
        Caption = 'RESOLU��O SEFAZ N� 631 DE 14 DE MAIO DE 2013'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 44
        Top = 25
        Width = 865
        Height = 32
        AutoSize = False
        Caption = 
          'DISP�E SOBRE A REDU��O DA BASE DE C�LCULO DO ICMS EM OPERA��O DE' +
          ' IMPORTA��O DE BENS OU MERCADORIAS PARA APLICA��O NAS INTALA��ES' +
          ' DE EXPLORA��O DE PETR�LEO E G�S NATURAL.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label13: TLabel
        Left = 40
        Top = 56
        Width = 809
        Height = 13
        Caption = 
          ' A redu��o de base de c�lculo a que se refere o art. 1� desta re' +
          'solu��o produzir� seus efeitos at� 31 de dezembro de 2016.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object q_processos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Material_Usado, Processos.Empresa, Processos.Fi' +
        'lial, Processos.Codigo AS Processo, '
      
        'Processos.Importador, Processos.Data, Processos.Codigo_Cliente A' +
        'S refcli, Importadores.Razao_Social AS Cliente,'
      
        ' TAB_TIPO_DECLARACAO.Descricao AS tipodecla, Tipos_de_Processos.' +
        'DESCRICAO AS tipopro,Processos.Contrato, '
      
        ' Contratos.Descricao AS qcontrato, Locais_Inventario.Descricao A' +
        'S qlocal, Importadores.CNPJ_CPF_COMPLETO AS qcnpj, '
      
        ' Processos_registro_impostos.Taxa_SISCOMEX, Processos_registro_i' +
        'mpostos.Taxa_SISCOMEXc, '
      
        ' Filiais.Descricao AS qfilial, Conhecimento_Processo.URF_chegada' +
        ', Conhecimento_Processo.Data_Chegada_URF_Cheg, '
      
        ' Processos.DT_DESEMBARACO, Conhecimento_Processo.URF_Despacho, P' +
        'rocessos.Fechado, Importadores.ATIVO, '
      
        ' Importadores.UF, Processos.Tipo as qtipo , Processos.Responsave' +
        'l_empresa,  Processos.Responsavel_empresac, '
      ' Processos.NR_DECLARACAO_IMP,   Processos.txConversaoDeAmanha'
      'FROM ((((((((Parametros INNER JOIN '
      
        'Processos ON (Parametros.Empresa = Processos.Empresa) AND (Param' +
        'etros.Filial = Processos.Filial)) '
      
        'LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Empr' +
        'esa) AND (Processos.Filial = Importadores.Filial)'
      ' AND (Processos.Importador = Importadores.Codigo)) '
      
        ' LEFT JOIN Tipos_de_Processos ON Processos.Tipo = Tipos_de_Proce' +
        'ssos.CODIGO) '
      
        ' LEFT JOIN TAB_TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TA' +
        'B_TIPO_DECLARACAO.Codigo) '
      
        ' LEFT JOIN Contratos ON (Processos.Empresa = Contratos.Empresa) ' +
        'AND (Processos.Filial = Contratos.Filial) AND '
      
        ' (Processos.Importador = Contratos.Importador) AND (Processos.Co' +
        'ntrato = Contratos.Contrato)) '
      
        ' LEFT JOIN Locais_Inventario ON (Processos.Empresa = Locais_Inve' +
        'ntario.Empresa) AND '
      
        ' (Processos.Filial = Locais_Inventario.Filial) AND (Processos.Im' +
        'portador = Locais_Inventario.Importador) AND '
      
        ' (Processos.Contrato = Locais_Inventario.Contrato) AND (Processo' +
        's.Local_Inventario = Locais_Inventario.Local)) '
      
        ' LEFT JOIN Processos_registro_impostos ON (Processos.Codigo = Pr' +
        'ocessos_registro_impostos.Processo) AND '
      ' (Processos.Filial = Processos_registro_impostos.Filial) AND '
      ' (Processos.Empresa = Processos_registro_impostos.Empresa)) '
      
        ' INNER JOIN Filiais ON (Parametros.Empresa = Filiais.Codigo_Empr' +
        'esa) AND '
      ' (Parametros.Filial = Filiais.Codigo_Filial)) '
      
        ' LEFT JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecim' +
        'ento_Processo.Processo) AND '
      
        ' (Processos.Filial = Conhecimento_Processo.Filial) AND (Processo' +
        's.Empresa = Conhecimento_Processo.Empresa)'
      ''
      'WHERE Processos.Codigo =:Processo'
      'ORDER BY Processos.Codigo;')
    Left = 416
    Top = 51
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object q_processosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_processosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_processosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_processosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object q_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object q_processosrefcli: TStringField
      FieldName = 'refcli'
      FixedChar = True
      Size = 60
    end
    object q_processosCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 60
    end
    object q_processostipodecla: TStringField
      FieldName = 'tipodecla'
      FixedChar = True
      Size = 120
    end
    object q_processostipopro: TStringField
      FieldName = 'tipopro'
      FixedChar = True
      Size = 35
    end
    object q_processosqcontrato: TStringField
      FieldName = 'qcontrato'
      FixedChar = True
      Size = 50
    end
    object q_processosqlocal: TStringField
      FieldName = 'qlocal'
      FixedChar = True
      Size = 250
    end
    object q_processosqcnpj: TStringField
      FieldName = 'qcnpj'
      FixedChar = True
      Size = 14
    end
    object q_processosTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object q_processosTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object q_processosqfilial: TStringField
      FieldName = 'qfilial'
      FixedChar = True
      Size = 50
    end
    object q_processosURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object q_processosData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object q_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object q_processosURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object q_processosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object q_processosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object q_processosUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object q_processosqtipo: TStringField
      FieldName = 'qtipo'
      FixedChar = True
      Size = 2
    end
    object q_processosResponsavel_empresa: TStringField
      FieldName = 'Responsavel_empresa'
      FixedChar = True
      Size = 10
    end
    object q_processosResponsavel_empresac: TStringField
      FieldName = 'Responsavel_empresac'
      FixedChar = True
      Size = 10
    end
    object q_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object q_processosMaterial_Usado: TSmallintField
      FieldName = 'Material_Usado'
    end
    object q_processosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object q_processostxConversaoDeAmanha: TSmallintField
      FieldName = 'txConversaoDeAmanha'
    end
  end
  object ds_qprocessos: TDataSource
    DataSet = q_processos
    Left = 416
    Top = 80
  end
  object Q_itenstributaveis: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso,  ItensFaturas.Fatura,  ItensFaturas.Sequencial, ItensFa' +
        'turas.Pagina, ItensFaturas.Produto, cast(Descricao_Produto as va' +
        'rchar(250)) AS qdesc, ItensFaturas.Fabricante, ItensFaturas.NCM,' +
        ' ItensFaturas.Unidade, ItensFaturas.Unidade_Medida_Estat, ItensF' +
        'aturas.Destaque_NCM, ItensFaturas.NALADI, ItensFaturas.Referenci' +
        'a, ItensFaturas.Numero_serie, ItensFaturas.Referencia_projeto, I' +
        'tensFaturas.PO, ItensFaturas.Seqpo, ItensFaturas.Quantidade, Ite' +
        'nsFaturas.Valor_Unitario, ItensFaturas.Valor_Total, ItensFaturas' +
        '.Peso_Unitario, ItensFaturas.Peso_Unitario_Acertado, ItensFatura' +
        's.Peso_Total, ItensFaturas.Peso_Total_Acertado, ItensFaturas.Rat' +
        'eio_Acrescimos, ItensFaturas.Rateio_Deducoes, ItensFaturas.Ratei' +
        'o_Embalagem, ItensFaturas.Rateio_Frete_Interno_imp, ItensFaturas' +
        '.Rateio_Seguro_Interno, ItensFaturas.Rateio_outras_import, Itens' +
        'Faturas.Rateio_startup, ItensFaturas.Rateio_jurosfin, ItensFatur' +
        'as.Rateio_montagem, ItensFaturas.Rateio_Frete_Interno_exp, Itens' +
        'Faturas.Rateio_carga_exp, ItensFaturas.Rateio_outras_export, Ite' +
        'nsFaturas.Rateio_frete_fatura, ItensFaturas.Rateio_seguro_fatura' +
        ', ItensFaturas.Rateio_carga_imp, ItensFaturas.Rateio_Despesas_at' +
        'e_FOB, ItensFaturas.Rateio_Frete_prepaid, ItensFaturas.Rateio_Fr' +
        'ete_collect, ItensFaturas.Rateio_Frete_ternac, ItensFaturas.Rate' +
        'io_Seguro, ItensFaturas.Valor_Aduaneiro, ItensFaturas.Valor_merc' +
        'adoria, ItensFaturas.VMLE, ItensFaturas.Base_Calc_II, ItensFatur' +
        'as.Acresc_reduc_Valaduan, ItensFaturas.COD_SIT, ItensFaturas.CNP' +
        'J, ItensFaturas.Fiel_nome, ItensFaturas.Fiel_cpf, ItensFaturas.C' +
        'ontrato, ItensFaturas.Local_Inventario, ItensFaturas.Rateio_Taxa' +
        '_Siscomex, substring([Descricao_Produto_ing],1,255) AS qdesci, I' +
        'tensFaturas.Codigo_Produto, ItensFaturas.Sequencial_Produto, Ite' +
        'nsFaturas.Saldo_Tributavel '
      'FROM ItensFaturas'
      
        'Where empresa = :empresa and filial = :filial and Processo = :Pr' +
        'ocesso and (ItensFaturas.Saldo_Tributavel >0) '
      
        'ORDER BY ItensFaturas.Fatura, CAST(ItensFaturas.sequencial AS re' +
        'al);')
    Left = 616
    Top = 102
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_itenstributaveisEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object Q_itenstributaveisFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object Q_itenstributaveisProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object Q_itenstributaveisFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object Q_itenstributaveisSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object Q_itenstributaveisPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object Q_itenstributaveisProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 25
    end
    object Q_itenstributaveisqdesc: TStringField
      FieldName = 'qdesc'
      FixedChar = True
      Size = 250
    end
    object Q_itenstributaveisFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 4
    end
    object Q_itenstributaveisNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object Q_itenstributaveisUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object Q_itenstributaveisUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object Q_itenstributaveisDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object Q_itenstributaveisNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object Q_itenstributaveisReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object Q_itenstributaveisNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object Q_itenstributaveisReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object Q_itenstributaveisPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object Q_itenstributaveisSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object Q_itenstributaveisQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object Q_itenstributaveisValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object Q_itenstributaveisValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object Q_itenstributaveisPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object Q_itenstributaveisPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object Q_itenstributaveisPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object Q_itenstributaveisPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object Q_itenstributaveisRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object Q_itenstributaveisRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object Q_itenstributaveisRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object Q_itenstributaveisRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object Q_itenstributaveisRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object Q_itenstributaveisRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object Q_itenstributaveisRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object Q_itenstributaveisRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object Q_itenstributaveisRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object Q_itenstributaveisRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object Q_itenstributaveisRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object Q_itenstributaveisRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object Q_itenstributaveisRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object Q_itenstributaveisRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object Q_itenstributaveisRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object Q_itenstributaveisRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object Q_itenstributaveisRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object Q_itenstributaveisRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object Q_itenstributaveisRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object Q_itenstributaveisRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object Q_itenstributaveisValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object Q_itenstributaveisValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object Q_itenstributaveisVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object Q_itenstributaveisBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object Q_itenstributaveisAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object Q_itenstributaveisCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object Q_itenstributaveisCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object Q_itenstributaveisFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      FixedChar = True
      Size = 100
    end
    object Q_itenstributaveisFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      FixedChar = True
      Size = 18
    end
    object Q_itenstributaveisContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object Q_itenstributaveisLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object Q_itenstributaveisRateio_Taxa_Siscomex: TFloatField
      FieldName = 'Rateio_Taxa_Siscomex'
    end
    object Q_itenstributaveisqdesci: TMemoField
      FieldName = 'qdesci'
      BlobType = ftMemo
    end
    object Q_itenstributaveisCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      FixedChar = True
      Size = 25
    end
    object Q_itenstributaveisSequencial_Produto: TIntegerField
      FieldName = 'Sequencial_Produto'
    end
    object Q_itenstributaveisSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
  end
  object q_tributoitem: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select * from Tributacao_Item_Fatura'
      
        'Where empresa = :empresa and filial = :filial and Processo = :Pr' +
        'ocesso '
      
        'ORDER BY Tributacao_Item_Fatura.fatura, CAST(Tributacao_Item_Fat' +
        'ura.sequencial_item as real), CAST(Tributacao_Item_Fatura.sequen' +
        'cial as real)')
    UpdateMode = upWhereChanged
    Left = 610
    Top = 173
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_tributoitemEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_tributoitemFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_tributoitemProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_tributoitemFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_tributoitemSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      FixedChar = True
      Size = 4
    end
    object q_tributoitemSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object q_tributoitemCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
    object q_tributoitemAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
    object q_tributoitemCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object q_tributoitemMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object q_tributoitemCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      FixedChar = True
      Size = 2
    end
    object q_tributoitemCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      FixedChar = True
      Size = 1
    end
    object q_tributoitemIN_BEM_ENCOMENDA: TIntegerField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object q_tributoitemIN_MATERIAL_USADO: TIntegerField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object q_tributoitemCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      FixedChar = True
      Size = 1
    end
    object q_tributoitemACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      FixedChar = True
      Size = 3
    end
    object q_tributoitemNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      FixedChar = True
      Size = 5
    end
    object q_tributoitemALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object q_tributoitemRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_tributoitemAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object q_tributoitemValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object q_tributoitemValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object q_tributoitemFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object q_tributoitemNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object q_tributoitemRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object q_tributoitemBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object q_tributoitemAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object q_tributoitemValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object q_tributoitemValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object q_tributoitemNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      FixedChar = True
      Size = 5
    end
    object q_tributoitemPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object q_tributoitemPercentual_EX: TFloatField
      FieldName = 'Percentual_EX'
    end
    object q_tributoitemPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object q_tributoitemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_tributoitemAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_tributoitemSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object q_tributoitemDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 15
    end
    object q_tributoitemRE: TStringField
      FieldName = 'RE'
      FixedChar = True
      Size = 15
    end
    object q_tributoitemPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object q_tributoitemTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      FixedChar = True
      Size = 1
    end
    object q_tributoitemFundamento_Legal: TStringField
      FieldName = 'Fundamento_Legal'
      FixedChar = True
      Size = 2
    end
    object q_tributoitemCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object q_tributoitemCD_FUND_LEG_REGIME_PISCOFINS: TStringField
      FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
      FixedChar = True
      Size = 2
    end
    object q_tributoitemPC_ALIQ_REDUZIDA_PIS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_PIS'
    end
    object q_tributoitemPC_ALIQ_REDUZIDA_COFINS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_COFINS'
    end
    object q_tributoitemAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object q_tributoitemAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
  end
  object ds_qtributoitem: TDataSource
    DataSet = q_tributoitem
    Left = 807
    Top = 188
  end
  object ds_qitenstributaveis: TDataSource
    DataSet = Q_itenstributaveis
    Left = 698
    Top = 148
  end
  object T_faturas: TTable
    AutoCalcFields = False
    ObjectView = True
    DatabaseName = 'DBNMSCOMEX'
    FieldDefs = <
      item
        Name = 'Empresa'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Filial'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Processo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Codigo'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Exportador'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Incoterm'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Vinculacao'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Condicao'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Valor_Total'
        DataType = ftFloat
      end
      item
        Name = 'Peso_Total'
        DataType = ftFloat
      end
      item
        Name = 'Peso_Total_Acertado'
        DataType = ftFloat
      end
      item
        Name = 'Acrescimos_Reducoes'
        DataType = ftInteger
      end
      item
        Name = 'Moeda'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Cobertura_Cambial'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Motivo_Sem_Cobertura'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Modalidade_de_Pagamento'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Instituicao_Financiadora'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Tipo_Parcela'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Numero_de_parcelas'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Periodicidade'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Valor_das_Parcelas'
        DataType = ftFloat
      end
      item
        Name = 'Indicador_Periodicidade'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Taxa_de_Juros'
        DataType = ftInteger
      end
      item
        Name = 'Codigo_Taxa_de_Juros'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Valor_Taxa_de_Juros'
        DataType = ftFloat
      end
      item
        Name = 'ROF_BACEN'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Percentual_ROF'
        DataType = ftFloat
      end
      item
        Name = 'DT_PREV_PAG_CAMBIO'
        DataType = ftDateTime
      end
      item
        Name = 'DT_PAG_CAMBIO'
        DataType = ftDateTime
      end
      item
        Name = 'STATUS_CAMBIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONTRATO_CAMBIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SALDO_CAMBIO'
        DataType = ftFloat
      end
      item
        Name = 'DtEmissao'
        DataType = ftDateTime
      end
      item
        Name = 'Peso_Libra'
        DataType = ftInteger
      end
      item
        Name = 'Contrato'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Local_Inventario'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'FK_Plataforma'
        DataType = ftInteger
      end
      item
        Name = 'Frete_Incluso'
        DataType = ftInteger
      end>
    IndexFieldNames = 'Empresa;Filial;Processo;Codigo'
    StoreDefs = True
    TableName = 'Faturas'
    UpdateMode = upWhereChanged
    Left = 160
    Top = 168
    object T_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_faturasFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_faturasProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_faturasCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 30
    end
    object T_faturasExportador: TStringField
      FieldName = 'Exportador'
      FixedChar = True
      Size = 4
    end
    object T_faturasIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object T_faturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      FixedChar = True
      Size = 1
    end
    object T_faturasCondicao: TStringField
      FieldName = 'Condicao'
      FixedChar = True
      Size = 50
    end
    object T_faturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object T_faturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object T_faturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object T_faturasAcrescimos_Reducoes: TIntegerField
      FieldName = 'Acrescimos_Reducoes'
    end
    object T_faturasMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object T_faturasCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      FixedChar = True
      Size = 1
    end
    object T_faturasMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      FixedChar = True
      Size = 2
    end
    object T_faturasModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      FixedChar = True
      Size = 2
    end
    object T_faturasInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      FixedChar = True
      Size = 2
    end
    object T_faturasTipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      FixedChar = True
      Size = 1
    end
    object T_faturasNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      FixedChar = True
      Size = 3
    end
    object T_faturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      FixedChar = True
      Size = 3
    end
    object T_faturasValor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
    end
    object T_faturasIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      FixedChar = True
      Size = 1
    end
    object T_faturasTaxa_de_Juros: TIntegerField
      FieldName = 'Taxa_de_Juros'
    end
    object T_faturasCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      FixedChar = True
      Size = 4
    end
    object T_faturasValor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
    end
    object T_faturasROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object T_faturasPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object T_faturasDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
    end
    object T_faturasDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object T_faturasSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      FixedChar = True
      Size = 1
    end
    object T_faturasCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      FixedChar = True
      Size = 10
    end
    object T_faturasSALDO_CAMBIO: TFloatField
      FieldName = 'SALDO_CAMBIO'
    end
    object T_faturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object T_faturasPeso_Libra: TIntegerField
      FieldName = 'Peso_Libra'
    end
    object T_faturasFrete_Incluso: TIntegerField
      FieldName = 'Frete_Incluso'
    end
  end
  object T_acrescimos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;CD_MET_ACRES_VALOR'
    TableName = 'Acrescimos_Faturas'
    Left = 208
    Top = 88
    object T_acrescimosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_acrescimosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_acrescimosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_acrescimosFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object T_acrescimosCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      FixedChar = True
      Size = 3
    end
    object T_acrescimosDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object T_acrescimosVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object T_acrescimosCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      FixedChar = True
      Size = 3
    end
    object T_acrescimosVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
    end
  end
  object T_atos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Tipo_Ato;Numero'
    TableName = 'Atos_Legais'
    Left = 40
    Top = 358
    object T_atosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_atosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_atosTipo_Ato: TStringField
      FieldName = 'Tipo_Ato'
      FixedChar = True
      Size = 1
    end
    object T_atosNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 5
    end
    object T_atosEX: TStringField
      FieldName = 'EX'
      FixedChar = True
      Size = 3
    end
    object T_atosTipo_Ato_Legal: TStringField
      FieldName = 'Tipo_Ato_Legal'
      FixedChar = True
      Size = 10
    end
    object T_atosOrgao_Emissor: TStringField
      FieldName = 'Orgao_Emissor'
      FixedChar = True
      Size = 10
    end
    object T_atosAno_Ato_Legal: TStringField
      FieldName = 'Ano_Ato_Legal'
      FixedChar = True
      Size = 4
    end
    object T_atosobs: TStringField
      FieldName = 'obs'
      FixedChar = True
      Size = 50
    end
  end
  object T_motadmtemp: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_MOT_ADMISSAO_TEMP'
    Left = 288
    Top = 90
    object T_motadmtempCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object T_motadmtempDescricao: TStringField
      FieldName = 'Descricao'
      Size = 253
    end
  end
  object q_atosconce: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Atos_Importador.Numero, Atos_concessorios.Descricao, Atos' +
        '_Importador.Importador'
      
        'FROM (Parametros INNER JOIN Atos_Importador ON (Parametros.Filia' +
        'l = Atos_Importador.Filial) AND (Parametros.Empresa = Atos_Impor' +
        'tador.Empresa)) INNER JOIN Atos_concessorios ON (Atos_Importador' +
        '.Numero = Atos_concessorios.Numero) AND (Atos_Importador.Filial ' +
        '= Atos_concessorios.Filial) AND (Atos_Importador.Empresa = Atos_' +
        'concessorios.Empresa)'
      'WHERE (((Atos_Importador.Importador)=:qimport));')
    Left = 114
    Top = 418
    ParamData = <
      item
        DataType = ftString
        Name = 'qimport'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_atosconceNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
    end
    object q_atosconceDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object q_atosconceImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
  end
  object T_valoracao: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_METODO_VALOR_ADUANEIRA'
    Left = 290
    Top = 374
    object T_valoracaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object T_valoracaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object T_aladi: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'TAB_ALADI'
    Left = 300
    Top = 359
    object T_aladiCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 3
    end
    object T_aladiDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
  end
  object T_itensfaturas: TTable
    AutoCalcFields = False
    AfterPost = T_itensfaturasAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    TableName = 'ItensFaturas'
    Left = 364
    Top = 348
    object T_itensfaturasEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_itensfaturasFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_itensfaturasProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_itensfaturasFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object T_itensfaturasSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object T_itensfaturasPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object T_itensfaturasProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object T_itensfaturasDescricao_Produto: TMemoField
      FieldName = 'Descricao_Produto'
      BlobType = ftMemo
    end
    object T_itensfaturasFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 6
    end
    object T_itensfaturasNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object T_itensfaturasUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object T_itensfaturasUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object T_itensfaturasDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object T_itensfaturasNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object T_itensfaturasReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object T_itensfaturasNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object T_itensfaturasReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object T_itensfaturasPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object T_itensfaturasSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object T_itensfaturasQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_itensfaturasValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object T_itensfaturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object T_itensfaturasPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object T_itensfaturasPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object T_itensfaturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object T_itensfaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object T_itensfaturasSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object T_itensfaturasRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object T_itensfaturasRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object T_itensfaturasRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object T_itensfaturasRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object T_itensfaturasRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object T_itensfaturasRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object T_itensfaturasRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object T_itensfaturasRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object T_itensfaturasRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object T_itensfaturasRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object T_itensfaturasRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object T_itensfaturasRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object T_itensfaturasRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object T_itensfaturasRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object T_itensfaturasRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object T_itensfaturasRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object T_itensfaturasRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object T_itensfaturasRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object T_itensfaturasRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object T_itensfaturasRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object T_itensfaturasValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object T_itensfaturasValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object T_itensfaturasVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object T_itensfaturasBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object T_itensfaturasAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object T_itensfaturasCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object T_itensfaturasCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object T_itensfaturasFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      FixedChar = True
      Size = 100
    end
    object T_itensfaturasFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      FixedChar = True
      Size = 18
    end
    object T_itensfaturasContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object T_itensfaturasLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object T_itensfaturasRateio_Taxa_Siscomex: TFloatField
      FieldName = 'Rateio_Taxa_Siscomex'
    end
    object T_itensfaturasDescricao_Produto_ing: TMemoField
      FieldName = 'Descricao_Produto_ing'
      BlobType = ftMemo
    end
    object T_itensfaturasCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      FixedChar = True
      Size = 50
    end
    object T_itensfaturasSequencial_Produto: TIntegerField
      FieldName = 'Sequencial_Produto'
    end
  end
  object T_tributositem: TTable
    AutoCalcFields = False
    BeforeDelete = T_tributositemBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial_Item;Sequencial'
    TableName = 'Tributacao_Item_Fatura'
    UpdateMode = upWhereChanged
    Left = 260
    Top = 348
    object T_tributositemEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_tributositemFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_tributositemProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_tributositemFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object T_tributositemSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      FixedChar = True
      Size = 4
    end
    object T_tributositemSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object T_tributositemCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
    object T_tributositemAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
    object T_tributositemCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object T_tributositemMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object T_tributositemCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      FixedChar = True
      Size = 2
    end
    object T_tributositemCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      FixedChar = True
      Size = 1
    end
    object T_tributositemIN_BEM_ENCOMENDA: TIntegerField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object T_tributositemIN_MATERIAL_USADO: TIntegerField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object T_tributositemCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      FixedChar = True
      Size = 1
    end
    object T_tributositemACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      FixedChar = True
      Size = 3
    end
    object T_tributositemNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      FixedChar = True
      Size = 5
    end
    object T_tributositemALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object T_tributositemRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object T_tributositemAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object T_tributositemValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object T_tributositemValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object T_tributositemFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object T_tributositemNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object T_tributositemRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object T_tributositemBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object T_tributositemAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object T_tributositemValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object T_tributositemValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object T_tributositemNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      FixedChar = True
      Size = 5
    end
    object T_tributositemPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object T_tributositemPercentual_EX: TFloatField
      FieldName = 'Percentual_EX'
    end
    object T_tributositemPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object T_tributositemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_tributositemAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object T_tributositemSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object T_tributositemDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 15
    end
    object T_tributositemRE: TStringField
      FieldName = 'RE'
      FixedChar = True
      Size = 15
    end
    object T_tributositemPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object T_tributositemTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      FixedChar = True
      Size = 1
    end
    object T_tributositemFundamento_Legal: TStringField
      FieldName = 'Fundamento_Legal'
      FixedChar = True
      Size = 2
    end
    object T_tributositemCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object T_tributositemCD_FUND_LEG_REGIME_PISCOFINS: TStringField
      FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
      FixedChar = True
      Size = 2
    end
    object T_tributositemPC_ALIQ_REDUZIDA_PIS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_PIS'
    end
    object T_tributositemPC_ALIQ_REDUZIDA_COFINS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_COFINS'
    end
    object T_tributositemAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object T_tributositemAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
  end
  object T_ncm: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_NCM'
    Left = 308
    Top = 348
    object T_ncmCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 8
    end
    object T_ncmDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object T_ncmUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      FixedChar = True
      Size = 4
    end
    object T_ncmALIQUOTA_II: TStringField
      FieldName = 'ALIQUOTA_II'
      FixedChar = True
      Size = 6
    end
    object T_ncmDATA_INICIO_VIG_II: TStringField
      FieldName = 'DATA_INICIO_VIG_II'
      FixedChar = True
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_II: TStringField
      FieldName = 'DATA_FIM_VIG_II'
      FixedChar = True
      Size = 10
    end
    object T_ncmALIQUOTA_II_MERCOSUL: TStringField
      FieldName = 'ALIQUOTA_II_MERCOSUL'
      FixedChar = True
      Size = 6
    end
    object T_ncmDATA_INICIO_VIG_II_MSUL: TStringField
      FieldName = 'DATA_INICIO_VIG_II_MSUL'
      FixedChar = True
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_II_MSUL: TStringField
      FieldName = 'DATA_FIM_VIG_II_MSUL'
      FixedChar = True
      Size = 10
    end
    object T_ncmALIQUOTA_IPI: TStringField
      FieldName = 'ALIQUOTA_IPI'
      FixedChar = True
      Size = 6
    end
    object T_ncmDATA_INICIO_VIG_IPI: TStringField
      FieldName = 'DATA_INICIO_VIG_IPI'
      FixedChar = True
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_IPI: TStringField
      FieldName = 'DATA_FIM_VIG_IPI'
      FixedChar = True
      Size = 10
    end
    object T_ncmALIQUOTA_PIS_ADVAL: TStringField
      FieldName = 'ALIQUOTA_PIS_ADVAL'
      FixedChar = True
      Size = 6
    end
    object T_ncmDATA_INI_VIG_PIS_ADVAL: TStringField
      FieldName = 'DATA_INI_VIG_PIS_ADVAL'
      FixedChar = True
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_PIS_ADVAL: TStringField
      FieldName = 'DATA_FIM_VIG_PIS_ADVAL'
      FixedChar = True
      Size = 10
    end
    object T_ncmALIQUOTA_COFINS_ADVAL: TStringField
      FieldName = 'ALIQUOTA_COFINS_ADVAL'
      FixedChar = True
      Size = 6
    end
    object T_ncmDATA_INI_VIG_COFINS_ADVAL: TStringField
      FieldName = 'DATA_INI_VIG_COFINS_ADVAL'
      FixedChar = True
      Size = 10
    end
    object T_ncmDATA_FIM_VIG_COFINS_ADVAL: TStringField
      FieldName = 'DATA_FIM_VIG_COFINS_ADVAL'
      FixedChar = True
      Size = 10
    end
  end
  object Q_itensadicoes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Sequencial_Item AS sequencial, Tri' +
        'butacao_Item_Fatura.Sequencial AS seq, Processos.NR_DECL_IMP_MIC' +
        'RO, Faturas.Codigo, Faturas.Vinculacao, Conhecimento_Processo.UR' +
        'F_chegada, Conhecimento_Processo.Via, Conhecimento_Processo.Mult' +
        'imodal, Exportadores.Razao_Social, Exportadores.Endereco, Export' +
        'adores.Numero, Exportadores.Complemento, Exportadores.Cidade, Ex' +
        'portadores.Estado, Exportadores.Pais, ItensFaturas.NCM, Conhecim' +
        'ento_Processo.Pais_Procedencia, Fabricantes_Produtores.Razao_Soc' +
        'ial AS FABNOME, Fabricantes_Produtores.Endereco AS FABEND, Fabri' +
        'cantes_Produtores.Numero AS FABNUM, Fabricantes_Produtores.Compl' +
        'emento AS FABCOMP, Fabricantes_Produtores.Cidade AS FABCID, Fabr' +
        'icantes_Produtores.Estado AS FABEST, Fabricantes_Produtores.Pais' +
        ' AS FABPAI, ItensFaturas.NCM AS NBM, ItensFaturas.NALADI, Sum(It' +
        'ensFaturas.Peso_Total_Acertado) AS SomaDePeso_Total_Acertado, Su' +
        'm(ItensFaturas.Quantidade) AS SomaDeQuantidade, Tributacao_Item_' +
        'Fatura.CD_APLICACAO_MERC, Faturas.Moeda, Faturas.Incoterm, Fatur' +
        'as.Condicao, Sum(ItensFaturas.Valor_Aduaneiro) AS SomaDeValor_Ad' +
        'uaneiro, Sum((([ItensFaturas].[Rateio_Frete_prepaid]+[ItensFatur' +
        'as].[Rateio_Frete_collect]-[ItensFaturas].[Rateio_Frete_ternac])' +
        ')) AS Frete, Sum(ItensFaturas.Rateio_Seguro) AS SomaDeRateio_Seg' +
        'uro, Tributacao_Item_Fatura.CD_METOD_VALORACAO, Tributacao_Item_' +
        'Fatura.CD_TIPO_ACORDO_TAR, Tributacao_Item_Fatura.ACORDO_ALADI, ' +
        'Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao_Item_Fat' +
        'ura.Fundamento_Legal_II, Tributacao_Item_Fatura.Motivo_Adm_Temp,' +
        ' Tributacao_Item_Fatura.Numero_Ato_Legal_II, Tributacao_Item_Fat' +
        'ura.Percentual_Reducao_II, Faturas.Cobertura_Cambial, Faturas.Mo' +
        'dalidade_de_Pagamento, Faturas.Instituicao_Financiadora, Faturas' +
        '.Motivo_Sem_Cobertura, Faturas.Numero_de_parcelas, Faturas.Perio' +
        'dicidade, Faturas.Indicador_Periodicidade, Faturas.Taxa_de_Juros' +
        ', Faturas.ROF_BACEN, Faturas.Codigo_Taxa_de_Juros, Tributacao_It' +
        'em_Fatura.IN_BEM_ENCOMENDA, Tributacao_Item_Fatura.IN_MATERIAL_U' +
        'SADO, Sum(ItensFaturas.VMLE) AS SomaDeVMLE, Sum(ItensFaturas.Bas' +
        'e_Calc_II) AS SomaDeBase_Calc_II, Tributacao_Item_Fatura.Certifi' +
        'cado_Origem, Tributacao_Item_Fatura.Ato_Concessorio, Tributacao_' +
        'Item_Fatura.ALIQUOTA_ALADI, Tributacao_Item_Fatura.Regime_Tribut' +
        'acao_IPI, Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributaca' +
        'o_Item_Fatura.Percentual_Reduca_IPI, Tributacao_Item_Fatura.Fatu' +
        'ra, ItensFaturas.Unidade_Medida_Estat, ItensFaturas.Destaque_NCM' +
        ', Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao_Item_F' +
        'atura.Prazo_permanencia , itensfaturas.pagina '
      
        'FROM (((((ItensFaturas INNER JOIN Tributacao_Item_Fatura ON (Ite' +
        'nsFaturas.Empresa = Tributacao_Item_Fatura.Empresa) AND (ItensFa' +
        'turas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFaturas.' +
        'Processo = Tributacao_Item_Fatura.Processo) AND (ItensFaturas.Fa' +
        'tura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Sequenci' +
        'al = Tributacao_Item_Fatura.Sequencial_Item)) INNER JOIN Faturas' +
        ' ON (ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.F' +
        'ilial = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Pro' +
        'cesso) AND (ItensFaturas.Fatura = Faturas.Codigo)) INNER JOIN Pr' +
        'ocessos ON (Faturas.Empresa = Processos.Empresa) AND (Faturas.Fi' +
        'lial = Processos.Filial) AND (Faturas.Processo = Processos.Codig' +
        'o)) INNER JOIN Conhecimento_Processo ON (Processos.Empresa = Con' +
        'hecimento_Processo.Empresa) AND (Processos.Filial = Conhecimento' +
        '_Processo.Filial) AND (Processos.Codigo = Conhecimento_Processo.' +
        'Processo)) INNER JOIN Exportadores ON (Faturas.Empresa = Exporta' +
        'dores.Empresa) AND (Faturas.Filial = Exportadores.Filial) AND (F' +
        'aturas.Exportador = Exportadores.Codigo)) INNER JOIN Fabricantes' +
        '_Produtores ON (ItensFaturas.Empresa = Fabricantes_Produtores.Em' +
        'presa) AND (ItensFaturas.Filial = Fabricantes_Produtores.Filial)' +
        ' AND (ItensFaturas.Fabricante = Fabricantes_Produtores.Codigo)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Tributacao_Item_Fatura.Sequencial_Item, Tributacao_Item' +
        '_Fatura.Sequencial, Processos.NR_DECL_IMP_MICRO, Faturas.Codigo,' +
        ' Faturas.Vinculacao, Conhecimento_Processo.URF_chegada, Conhecim' +
        'ento_Processo.Via, Conhecimento_Processo.Multimodal, Exportadore' +
        's.Razao_Social, Exportadores.Endereco, Exportadores.Numero, Expo' +
        'rtadores.Complemento, Exportadores.Cidade, Exportadores.Estado, ' +
        'Exportadores.Pais, ItensFaturas.NCM, Conhecimento_Processo.Pais_' +
        'Procedencia, Fabricantes_Produtores.Razao_Social, Fabricantes_Pr' +
        'odutores.Endereco, Fabricantes_Produtores.Numero, Fabricantes_Pr' +
        'odutores.Complemento, Fabricantes_Produtores.Cidade, Fabricantes' +
        '_Produtores.Estado, Fabricantes_Produtores.Pais, ItensFaturas.NC' +
        'M, ItensFaturas.NALADI, Tributacao_Item_Fatura.CD_APLICACAO_MERC' +
        ', Faturas.Moeda, Faturas.Incoterm, Faturas.Condicao, Tributacao_' +
        'Item_Fatura.CD_METOD_VALORACAO, Tributacao_Item_Fatura.CD_TIPO_A' +
        'CORDO_TAR, Tributacao_Item_Fatura.ACORDO_ALADI, Tributacao_Item_' +
        'Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Fundamento_L' +
        'egal_II, Tributacao_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item' +
        '_Fatura.Numero_Ato_Legal_II, Tributacao_Item_Fatura.Percentual_R' +
        'educao_II, Faturas.Cobertura_Cambial, Faturas.Modalidade_de_Paga' +
        'mento, Faturas.Instituicao_Financiadora, Faturas.Motivo_Sem_Cobe' +
        'rtura, Faturas.Numero_de_parcelas, Faturas.Periodicidade, Fatura' +
        's.Indicador_Periodicidade, Faturas.Taxa_de_Juros, Faturas.ROF_BA' +
        'CEN, Faturas.Codigo_Taxa_de_Juros, Tributacao_Item_Fatura.IN_BEM' +
        '_ENCOMENDA, Tributacao_Item_Fatura.IN_MATERIAL_USADO, Tributacao' +
        '_Item_Fatura.Certificado_Origem, Tributacao_Item_Fatura.Ato_Conc' +
        'essorio, Tributacao_Item_Fatura.ALIQUOTA_ALADI, Tributacao_Item_' +
        'Fatura.Regime_Tributacao_IPI, Tributacao_Item_Fatura.Numero_Ato_' +
        'Legal_IPI, Tributacao_Item_Fatura.Percentual_Reduca_IPI, Tributa' +
        'cao_Item_Fatura.Fatura, ItensFaturas.Unidade_Medida_Estat, Itens' +
        'Faturas.Destaque_NCM, ItensFaturas.Produto, Tributacao_Item_Fatu' +
        'ra.Prazo_permanencia , itensfaturas.pagina '
      
        'ORDER BY Conhecimento_Processo.Via, Exportadores.Razao_Social,Ex' +
        'portadores.Endereco,Exportadores.Numero,Exportadores.Complemento' +
        ',Exportadores.Cidade,Exportadores.Estado,Exportadores.Pais,Conhe' +
        'cimento_Processo.Pais_Procedencia,Fabricantes_Produtores.Razao_S' +
        'ocial,Fabricantes_Produtores.Endereco,Fabricantes_Produtores.Num' +
        'ero,Fabricantes_Produtores.Complemento,Fabricantes_Produtores.Ci' +
        'dade,Fabricantes_Produtores.Estado,Fabricantes_Produtores.Pais,F' +
        'aturas.Incoterm,Tributacao_Item_Fatura.Ato_Concessorio,ItensFatu' +
        'ras.NCM,ItensFaturas.Destaque_NCM, Faturas.Moeda, ItensFaturas.N' +
        'ALADI, Faturas.Cobertura_Cambial, Faturas.Modalidade_de_Pagament' +
        'o, Faturas.Instituicao_Financiadora, Faturas.Motivo_Sem_Cobertur' +
        'a, Faturas.ROF_BACEN, Tributacao_Item_Fatura.IN_BEM_ENCOMENDA, T' +
        'ributacao_Item_Fatura.Certificado_Origem, Tributacao_Item_Fatura' +
        '.Regime_Tributacao_II, Tributacao_Item_Fatura.Regime_Tributacao_' +
        'IPI, Tributacao_Item_Fatura.Prazo_permanencia;')
    UpdateMode = upWhereChanged
    Left = 392
    Top = 375
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_itensadicoessequencial: TStringField
      FieldName = 'sequencial'
      FixedChar = True
      Size = 4
    end
    object Q_itensadicoesseq: TStringField
      FieldName = 'seq'
      FixedChar = True
      Size = 4
    end
    object Q_itensadicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object Q_itensadicoesCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 30
    end
    object Q_itensadicoesVinculacao: TStringField
      FieldName = 'Vinculacao'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object Q_itensadicoesVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesMultimodal: TIntegerField
      FieldName = 'Multimodal'
    end
    object Q_itensadicoesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object Q_itensadicoesEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object Q_itensadicoesNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object Q_itensadicoesComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object Q_itensadicoesCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object Q_itensadicoesEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object Q_itensadicoesPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object Q_itensadicoesPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesFABNOME: TStringField
      FieldName = 'FABNOME'
      FixedChar = True
      Size = 60
    end
    object Q_itensadicoesFABEND: TStringField
      FieldName = 'FABEND'
      FixedChar = True
      Size = 40
    end
    object Q_itensadicoesFABNUM: TStringField
      FieldName = 'FABNUM'
      FixedChar = True
      Size = 6
    end
    object Q_itensadicoesFABCOMP: TStringField
      FieldName = 'FABCOMP'
      FixedChar = True
      Size = 21
    end
    object Q_itensadicoesFABCID: TStringField
      FieldName = 'FABCID'
      FixedChar = True
      Size = 25
    end
    object Q_itensadicoesFABEST: TStringField
      FieldName = 'FABEST'
      FixedChar = True
      Size = 25
    end
    object Q_itensadicoesFABPAI: TStringField
      FieldName = 'FABPAI'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesNBM: TStringField
      FieldName = 'NBM'
      FixedChar = True
      Size = 8
    end
    object Q_itensadicoesNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object Q_itensadicoesSomaDePeso_Total_Acertado: TFloatField
      FieldName = 'SomaDePeso_Total_Acertado'
    end
    object Q_itensadicoesSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object Q_itensadicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesCondicao: TStringField
      FieldName = 'Condicao'
      FixedChar = True
      Size = 50
    end
    object Q_itensadicoesSomaDeValor_Aduaneiro: TFloatField
      FieldName = 'SomaDeValor_Aduaneiro'
    end
    object Q_itensadicoesFrete: TFloatField
      FieldName = 'Frete'
    end
    object Q_itensadicoesSomaDeRateio_Seguro: TFloatField
      FieldName = 'SomaDeRateio_Seguro'
    end
    object Q_itensadicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      FixedChar = True
      Size = 2
    end
    object Q_itensadicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object Q_itensadicoesMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object Q_itensadicoesNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object Q_itensadicoesPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object Q_itensadicoesCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      FixedChar = True
      Size = 2
    end
    object Q_itensadicoesInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      FixedChar = True
      Size = 2
    end
    object Q_itensadicoesMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      FixedChar = True
      Size = 2
    end
    object Q_itensadicoesNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesTaxa_de_Juros: TIntegerField
      FieldName = 'Taxa_de_Juros'
    end
    object Q_itensadicoesROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object Q_itensadicoesCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      FixedChar = True
      Size = 4
    end
    object Q_itensadicoesIN_BEM_ENCOMENDA: TIntegerField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object Q_itensadicoesIN_MATERIAL_USADO: TIntegerField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object Q_itensadicoesSomaDeVMLE: TFloatField
      FieldName = 'SomaDeVMLE'
    end
    object Q_itensadicoesSomaDeBase_Calc_II: TFloatField
      FieldName = 'SomaDeBase_Calc_II'
    end
    object Q_itensadicoesCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
    object Q_itensadicoesAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
    object Q_itensadicoesALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object Q_itensadicoesRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      FixedChar = True
      Size = 5
    end
    object Q_itensadicoesPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object Q_itensadicoesFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object Q_itensadicoesUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object Q_itensadicoesDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object Q_itensadicoesRegime_Tributacao_II_1: TStringField
      FieldName = 'Regime_Tributacao_II_1'
      FixedChar = True
      Size = 1
    end
    object Q_itensadicoesPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object Q_itensadicoespagina: TStringField
      FieldName = 'pagina'
      FixedChar = True
      Size = 3
    end
  end
  object t_ncm_vutil: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'ncm'
    TableName = 'NCM_VIDA_UTIL'
    Left = 388
    Top = 180
    object t_ncm_vutilncm: TStringField
      FieldName = 'ncm'
      FixedChar = True
      Size = 8
    end
    object t_ncm_vutilvida_util: TStringField
      FieldName = 'vida_util'
      FixedChar = True
      Size = 2
    end
  end
  object q_upitens: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas SET ItensFaturas.Saldo_Tributavel = :QVALOR'
      
        'WHERE (((ItensFaturas.Empresa)=:qemp) AND ((ItensFaturas.Filial)' +
        '=:qfil) AND ((ItensFaturas.Processo)=:qpro) AND ((ItensFaturas.F' +
        'atura)=:qfat) AND ((ItensFaturas.Sequencial)=:qseq));')
    Left = 610
    Top = 243
    ParamData = <
      item
        DataType = ftFloat
        Name = 'QVALOR'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '00049/02'
      end
      item
        DataType = ftString
        Name = 'qfat'
        ParamType = ptUnknown
        Value = '111'
      end
      item
        DataType = ftString
        Name = 'qseq'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_uptrib: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE Tributacao_Item_Fatura SET Tributacao_Item_Fatura.Adicao ' +
        '= :qadicao'
      
        'WHERE (((Tributacao_Item_Fatura.Empresa)=:qemp) AND ((Tributacao' +
        '_Item_Fatura.Filial)=:qfil) AND ((Tributacao_Item_Fatura.Process' +
        'o)=:qpro) AND ((Tributacao_Item_Fatura.Fatura)=:qfat) AND ((Trib' +
        'utacao_Item_Fatura.Sequencial_Item)=:qseq) AND ((Tributacao_Item' +
        '_Fatura.Sequencial)=:qseq2));')
    Left = 714
    Top = 227
    ParamData = <
      item
        DataType = ftString
        Name = 'qadicao'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '00049/02'
      end
      item
        DataType = ftString
        Name = 'qfat'
        ParamType = ptUnknown
        Value = '111'
      end
      item
        DataType = ftString
        Name = 'qseq'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qseq2'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_intrib: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Tributacao_Item_Fatura ( Empresa, Filial, Processo, ' +
        'Fatura, Sequencial_Item, Sequencial, Certificado_Origem, Ato_Con' +
        'cessorio, CNPJ_CPF_COMPLETO, Motivo_Adm_Temp, CD_METOD_VALORACAO' +
        ', CD_APLICACAO_MERC, IN_BEM_ENCOMENDA, IN_MATERIAL_USADO, CD_TIP' +
        'O_ACORDO_TAR, ACORDO_ALADI, Numero_Ato_Legal_ALADI, ALIQUOTA_ALA' +
        'DI, Regime_Tributacao_II, Aliq_NCM_II, Valor_II_Devido, Valor_II' +
        '_a_recolher, Fundamento_Legal_II, Numero_Ato_Legal_II, Regime_Tr' +
        'ibutacao_IPI, Base_Calc_IPI, Aliq_NCM_IPI, Valor_IPI_Devido, Val' +
        'or_IPI_a_recolher, Numero_Ato_Legal_IPI, Percentual_Reducao_II, ' +
        'Percentual_EX, Percentual_Reduca_IPI, Quantidade, Prazo_permanen' +
        'cia, tratamento_tributario, fundamento_legal, CD_REGIME_TRIBUTAR' +
        '_PISCOFINS, CD_FUND_LEG_REGIME_PISCOFINS, PC_ALIQ_REDUZIDA_PIS, ' +
        'PC_ALIQ_REDUZIDA_COFINS, ALIQ_ICMS, ALIQ_ICMS_EXTRA, NR_OPER_TRA' +
        'T_PREV )'
      
        'SELECT :0qemp, :1qfil, :2qpro, :3qfat, :4qseq, :5qseq2, :6qcert,' +
        ' :7qato, :8qcnpj, :9qmot, :10qcdmet, :11qcdapli, :12qinbem, :13q' +
        'inmat, :14qcdtipo, :15qacordo, :16qnumato, :17qalialadi, :18qreg' +
        'tribii, :19qaliqncm, :20qvaliidev, :21qvaliiarec, :22qfunleg, :2' +
        '3qnumatoleg, :24qregtribipi, :25qbasecalcipi, :26qaliqncmipi, :2' +
        '7qvalipidev, :28qvalipiarec, :29qnumatoipipr, :30qpercredii, :31' +
        'qperex, :32qpercredipi, :33qquant, :34qprazo, :35trat, :36fun, :' +
        '37qtribpc, :38qfunpc, :39reduzpis, :40reduzcofins, :41icms, :42f' +
        'ecp, :43fnropertratprev'
      ' ')
    Left = 666
    Top = 203
    ParamData = <
      item
        DataType = ftString
        Name = '0qemp'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '1qfil'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '2qpro'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '3qfat'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '4qseq'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '5qseq2'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '6qcert'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '7qato'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '8qcnpj'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '9qmot'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '10qcdmet'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '11qcdapli'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = '12qinbem'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '13qinmat'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftString
        Name = '14qcdtipo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '15qacordo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '16qnumato'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '17qalialadi'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '18qregtribii'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '19qaliqncm'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '20qvaliidev'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '21qvaliiarec'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '22qfunleg'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '23qnumatoleg'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '24qregtribipi'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '25qbasecalcipi'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '26qaliqncmipi'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '27qvalipidev'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '28qvalipiarec'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '29qnumatoipipr'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '30qpercredii'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '31qperex'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '32qpercredipi'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '33qquant'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '34qprazo'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = '35trat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = '36fun'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = '37qtribpc'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = '38qfunpc'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = '39reduzpis'
        ParamType = ptUnknown
        Value = ' '
      end
      item
        DataType = ftString
        Name = '40reduzcofins'
        ParamType = ptUnknown
        Value = ' '
      end
      item
        DataType = ftString
        Name = '41icms'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = '42fecp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = '43fnropertratprev'
        ParamType = ptInput
      end>
  end
  object T_fundamentolegal: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'TAB_REGIME_FUNDAMENTO'
    Left = 668
    Top = 350
    object T_fundamentolegalRegime: TStringField
      FieldName = 'Regime'
      FixedChar = True
      Size = 1
    end
    object T_fundamentolegalCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 2
    end
    object T_fundamentolegalDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
  end
  object T_transpprocesso: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Conhecimento_Processo'
    UpdateMode = upWhereChanged
    Left = 316
    Top = 276
    object T_transpprocessoEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_transpprocessoFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_transpprocessoProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_transpprocessoVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
    object T_transpprocessoMultimodal: TSmallintField
      FieldName = 'Multimodal'
    end
    object T_transpprocessoPLaca: TStringField
      FieldName = 'PLaca'
      FixedChar = True
      Size = 15
    end
    object T_transpprocessoLacre: TStringField
      FieldName = 'Lacre'
      FixedChar = True
      Size = 15
    end
    object T_transpprocessoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object T_transpprocessoTransportador: TStringField
      FieldName = 'Transportador'
      FixedChar = True
      Size = 4
    end
    object T_transpprocessoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      FixedChar = True
      Size = 2
    end
    object T_transpprocessoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object T_transpprocessoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object T_transpprocessoLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 50
    end
    object T_transpprocessoData: TDateTimeField
      FieldName = 'Data'
    end
    object T_transpprocessoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      FixedChar = True
      Size = 1
    end
    object T_transpprocessoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      FixedChar = True
      Size = 1
    end
    object T_transpprocessoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object T_transpprocessoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      FixedChar = True
      Size = 50
    end
    object T_transpprocessoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object T_transpprocessoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object T_transpprocessoAgente: TStringField
      FieldName = 'Agente'
      FixedChar = True
      Size = 30
    end
    object T_transpprocessoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object T_transpprocessoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object T_transpprocessoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object T_transpprocessoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object T_transpprocessoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      FixedChar = True
      Size = 7
    end
    object T_transpprocessoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoArmazem: TStringField
      FieldName = 'Armazem'
      FixedChar = True
      Size = 30
    end
    object T_transpprocessoOperacao_FUNDAP: TSmallintField
      FieldName = 'Operacao_FUNDAP'
    end
    object T_transpprocessoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      FixedChar = True
      Size = 18
    end
    object T_transpprocessoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object T_transpprocessoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object T_transpprocessoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object T_transpprocessoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object T_transpprocessoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
    object T_transpprocessoUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object T_transpprocessoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object T_taxaconv: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Moeda'
    TableName = 'Processos_Taxas_Conversao'
    Left = 562
    Top = 241
    object T_taxaconvEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_taxaconvFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_taxaconvProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_taxaconvMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object T_taxaconvTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object T_taxaconvTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
  end
  object q_up_itens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas SET '
      'ItensFaturas.Rateio_Frete_prepaid = :qpre'
      ', ItensFaturas.Rateio_Frete_collect = :qcol'
      ', ItensFaturas.Rateio_Frete_ternac = :qter'
      ', ItensFaturas.Rateio_Despesas_ate_FOB = :qdfob'
      ', ItensFaturas.Valor_Aduaneiro = :qvadu'
      ', ItensFaturas.Valor_mercadoria = :qvmer'
      ', ItensFaturas.VMLE = :qvmle'
      ', ItensFaturas.Base_Calc_II = :qbase'
      ', ItensFaturas.Acresc_reduc_Valaduan = :qacres'
      ''
      ', ItensFaturas.rateio_seguro = :qseguro'
      ', ItensFaturas.rateio_seguro_fatura = :qsegurofat'
      ''
      ''
      'WHERE (((ItensFaturas.Empresa)=:qempresa) '
      'AND ((ItensFaturas.Filial)=:qfilial) '
      'AND ((ItensFaturas.Processo)=:qprocesso) '
      'AND ((ItensFaturas.Fatura)=:qfatura) '
      'AND ((ItensFaturas.Sequencial)=:qseq));')
    Left = 221
    Top = 230
    ParamData = <
      item
        DataType = ftFloat
        Name = 'qpre'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qcol'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qter'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qdfob'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qvadu'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qvmer'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qvmle'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qbase'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qacres'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qseguro'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qsegurofat'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qfatura'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'qseq'
        ParamType = ptUnknown
      end>
  end
  object q_update2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE ItensFaturas SET ItensFaturas.Rateio_frete_fatura = (([it' +
        'ensfaturas].[rateio_frete_prepaid]+[itensfaturas].[rateio_frete_' +
        'collect])-[itensfaturas].[rateio_frete_ternac])'
      
        'WHERE ItensFaturas.Processo=:pProc and ItensFaturas.Fatura =:pFa' +
        't and ItensFaturas.Sequencial =:pseq'
      '')
    UpdateMode = upWhereChanged
    Left = 408
    Top = 308
    ParamData = <
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFat'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pseq'
        ParamType = ptInput
      end>
  end
  object q_upacrescimos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE ItensFaturas SET ItensFaturas.Rateio_acrescimos = '
      '([itensfaturas].[Rateio_Embalagem]+'
      '[itensfaturas].[Rateio_Frete_Interno_imp]+'
      '[itensfaturas].[Rateio_Seguro_Interno]+'
      '[itensfaturas].[Rateio_outras_import]+'
      '[itensfaturas].[Rateio_startup]+'
      '[itensfaturas].[Rateio_jurosfin]+'
      '[itensfaturas].[Rateio_montagem]+'
      '[itensfaturas].[Rateio_Frete_Interno_exp]+'
      '[itensfaturas].[Rateio_carga_exp]+'
      '[itensfaturas].[Rateio_outras_export]+'
      '[itensfaturas].[Rateio_frete_fatura]+'
      '[itensfaturas].[Rateio_seguro_fatura]+'
      '[itensfaturas].[Rateio_carga_imp])'
      'WHERE (((ItensFaturas.Processo)=:qprocesso));')
    UpdateMode = upWhereChanged
    Left = 612
    Top = 308
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object ds_trat: TDataSource
    DataSet = qtrat
    Left = 616
    Top = 368
  end
  object qtrat: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tratamento_Tributario_ICMS.codigo AS qtrat, (Tratamento_T' +
        'ributario_ICMS.codigo +" - "+Tratamento_Tributario_ICMS.descrica' +
        'o) AS qtratd, Fundamento_Legal_ICMS.codigo AS qfun, Fundamento_L' +
        'egal_ICMS.descricao AS qfund'
      
        'FROM Tratamento_Tributario_ICMS INNER JOIN Fundamento_Legal_ICMS' +
        ' ON Tratamento_Tributario_ICMS.codigo = Fundamento_Legal_ICMS.Tr' +
        'atamento_Tributario'
      'order by Tratamento_Tributario_ICMS.codigo;')
    Left = 540
    Top = 361
    object qtratqtrat: TStringField
      FieldName = 'qtrat'
      Origin = 'DBNMSCOMEX.Tratamento_Tributario_ICMS.codigo'
      FixedChar = True
      Size = 1
    end
    object qtratqtratd: TStringField
      FieldName = 'qtratd'
      Origin = 'DBNMSCOMEX.Tratamento_Tributario_ICMS.codigo'
      FixedChar = True
      Size = 54
    end
    object qtratqfun: TStringField
      FieldName = 'qfun'
      Origin = 'DBNMSCOMEX.Fundamento_Legal_ICMS.codigo'
      FixedChar = True
      Size = 2
    end
    object qtratqfund: TStringField
      FieldName = 'qfund'
      Origin = 'DBNMSCOMEX.Fundamento_Legal_ICMS.descricao'
      FixedChar = True
      Size = 255
    end
  end
  object q_sub: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Atos_subcontratadas.Empresa, Atos_subcontratadas.Filial, ' +
        'Atos_subcontratadas.Numero, Atos_subcontratadas.Importador, Atos' +
        '_subcontratadas.CNPJ_CPF_COMPLETO, Atos_subcontratadas.Razao_Soc' +
        'ial'
      'FROM Atos_subcontratadas'
      
        'WHERE (((Atos_subcontratadas.Empresa)=:qemp) AND ((Atos_subcontr' +
        'atadas.Filial)=:qfil) AND ((Atos_subcontratadas.Numero)=:qato));')
    Left = 269
    Top = 246
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qato'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_subEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_subFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Filial'
      FixedChar = True
      Size = 4
    end
    object q_subNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Numero'
      FixedChar = True
    end
    object q_subImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Importador'
      FixedChar = True
      Size = 4
    end
    object q_subCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object q_subRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Atos_subcontratadas.Razao_Social'
      FixedChar = True
      Size = 50
    end
  end
  object t_motfund39: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_MOTIVOS_FUND39'
    Left = 320
    Top = 90
    object t_motfund39Codigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object t_motfund39Descricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object qregtribPC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR_II, TAB_REG_' +
        'TRIBUTARIO.CODIGO, TAB_REG_TRIBUTARIO.DESCRICAO'
      
        'FROM TAB_REGRAS_DSI_PIS_COFINS INNER JOIN TAB_REG_TRIBUTARIO ON ' +
        'TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR = TAB_REG_TRIBUTARI' +
        'O.CODIGO'
      
        'GROUP BY TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR_II, TAB_RE' +
        'G_TRIBUTARIO.CODIGO, TAB_REG_TRIBUTARIO.DESCRICAO'
      
        'HAVING (((TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR_II)=:QII)' +
        ');')
    Left = 516
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'QII'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qregtribPCCD_REGIME_TRIBUTAR_II: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_II'
      Origin = 'DBNMSCOMEX.TAB_REGRAS_DSI_PIS_COFINS.CD_REGIME_TRIBUTAR_II'
      FixedChar = True
      Size = 1
    end
    object qregtribPCCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_REG_TRIBUTARIO.CODIGO'
      FixedChar = True
      Size = 1
    end
    object qregtribPCDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_REG_TRIBUTARIO.DESCRICAO'
      FixedChar = True
      Size = 120
    end
  end
  object qfundpc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT TAB_FUND_LEGAL_PIS_COFINS.CODIGO, TAB_FUND_LEGAL_PIS_COFI' +
        'NS.DESCRICAO, TAB_FUND_LEGAL_PIS_COFINS.REG_TRIBUT_1, TAB_FUND_L' +
        'EGAL_PIS_COFINS.REG_TRIBUT_2, TAB_FUND_LEGAL_PIS_COFINS.REG_TRIB' +
        'UT_3, TAB_FUND_LEGAL_PIS_COFINS.REG_TRIBUT_4'
      'FROM TAB_FUND_LEGAL_PIS_COFINS'
      'WHERE (((TAB_FUND_LEGAL_PIS_COFINS.REG_TRIBUT_1)=:qpc))'
      'ORDER BY TAB_FUND_LEGAL_PIS_COFINS.CODIGO;')
    Left = 548
    Top = 129
    ParamData = <
      item
        DataType = ftString
        Name = 'qpc'
        ParamType = ptUnknown
        Value = '3'
      end>
    object qfundpcCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_FUND_LEGAL_PIS_COFINS.CODIGO'
      FixedChar = True
      Size = 2
    end
    object qfundpcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_FUND_LEGAL_PIS_COFINS.DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object qfundpcREG_TRIBUT_1: TStringField
      FieldName = 'REG_TRIBUT_1'
      Origin = 'DBNMSCOMEX.TAB_FUND_LEGAL_PIS_COFINS.REG_TRIBUT_1'
      FixedChar = True
      Size = 1
    end
    object qfundpcREG_TRIBUT_2: TStringField
      FieldName = 'REG_TRIBUT_2'
      Origin = 'DBNMSCOMEX.TAB_FUND_LEGAL_PIS_COFINS.REG_TRIBUT_2'
      FixedChar = True
      Size = 1
    end
    object qfundpcREG_TRIBUT_3: TStringField
      FieldName = 'REG_TRIBUT_3'
      Origin = 'DBNMSCOMEX.TAB_FUND_LEGAL_PIS_COFINS.REG_TRIBUT_3'
      FixedChar = True
      Size = 1
    end
    object qfundpcREG_TRIBUT_4: TStringField
      FieldName = 'REG_TRIBUT_4'
      Origin = 'DBNMSCOMEX.TAB_FUND_LEGAL_PIS_COFINS.REG_TRIBUT_4'
      FixedChar = True
      Size = 1
    end
  end
  object qr_AtualizaProcessaBaseICMS: TQuery
    Left = 551
    Top = 413
  end
  object q_update_baseICMS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update processos set base_icms =:pBase_icms where codigo =:pcodi' +
        'go')
    Left = 202
    Top = 452
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'pBase_icms'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pcodigo'
        ParamType = ptInput
      end>
  end
  object q_base_icms: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select base_icms from processos where codigo =:pCodigo')
    Left = 384
    Top = 475
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    object q_base_icmsbase_icms: TIntegerField
      FieldName = 'base_icms'
    end
  end
  object qryVerificaPesoLiq: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Peso_Liquido from Conhecimento_Processo'
      'where Peso_Liquido > 0 and Processo =:Processo')
    Left = 872
    Top = 411
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '15065/11'
      end>
    object qryVerificaPesoLiqPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Peso_Liquido'
    end
  end
  object qRateioFreteFatura: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select fatura, Sequencial, (([itensfaturas].[rateio_frete_prepai' +
        'd]+[itensfaturas].[rateio_frete_collect])-[itensfaturas].[rateio' +
        '_frete_ternac]) as Rateio_frete_fatura from  ItensFaturas'
      'WHERE (((ItensFaturas.Processo)=:pProc))')
    Left = 474
    Top = 472
    ParamData = <
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end>
    object qRateioFreteFaturafatura: TStringField
      FieldName = 'fatura'
      FixedChar = True
      Size = 30
    end
    object qRateioFreteFaturaSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object qRateioFreteFaturaRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
  end
  object qVerificaSaldoTributacao0: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Saldo_Tributavel, Quantidade from ItensFaturas where proc' +
        'esso =:pProc')
    Left = 864
    Top = 259
    ParamData = <
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end>
    object qVerificaSaldoTributacao0Saldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object qVerificaSaldoTributacao0Quantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object qAtualizaSaldoTributacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update ItensFaturas set Saldo_Tributavel = Quantidade where proc' +
        'esso =:pProc')
    Left = 864
    Top = 315
    ParamData = <
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end>
  end
  object qUpdtProcessosFlag: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update processos set txConversaoDeAmanha =:ptxConversaoDeAmanha ' +
        'where codigo =:pCodigo')
    Left = 568
    Top = 8
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'ptxConversaoDeAmanha'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
  end
  object T_taxaconvDeAmanha: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Moeda'
    TableName = 'Processos_Taxas_ConversaoDoDiaSeguinte'
    Left = 1054
    Top = 291
    object T_taxaconvDeAmanhaEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_taxaconvDeAmanhaFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_taxaconvDeAmanhaProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_taxaconvDeAmanhaMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object T_taxaconvDeAmanhaTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object T_taxaconvDeAmanhaTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
  end
end
