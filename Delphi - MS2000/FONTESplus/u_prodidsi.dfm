object F_prodidsi: TF_prodidsi
  Left = 29
  Top = 18
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DI / DSI'
  ClientHeight = 444
  ClientWidth = 873
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p_processo1: TPanel
    Left = 0
    Top = 0
    Width = 873
    Height = 40
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 15
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
      Top = 11
      Width = 65
      Height = 21
      EditMask = '!99999/99;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
    object b_detalhes: TButton
      Left = 496
      Top = 8
      Width = 75
      Height = 25
      Caption = 'b_detalhes'
      TabOrder = 1
      Visible = False
      OnClick = b_detalhesClick
    end
    object rdgRefTaxaConversao: TRadioGroup
      Left = 690
      Top = 1
      Width = 185
      Height = 35
      Caption = 'Referência da Taxa de Conversão'
      Columns = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Hoje '
        'Amanhã')
      ParentFont = False
      TabOrder = 2
    end
  end
  object p_processo2: TPanel
    Left = 0
    Top = 40
    Width = 873
    Height = 404
    Align = alClient
    Color = 10514464
    TabOrder = 1
    object lblAviso: TPanel
      Left = 200
      Top = 124
      Width = 369
      Height = 25
      Caption = 'Não esquecer da suspensão ou pagamento do AFRMM'
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object binf: TBitBtn
      Left = 8
      Top = 374
      Width = 178
      Height = 25
      Caption = 'Informações Complementares'
      Enabled = False
      TabOrder = 5
      OnClick = binfClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object DBG_adicoes: TDBGrid
      Left = 1
      Top = 1
      Width = 871
      Height = 120
      Align = alTop
      DataSource = ds_qadicoes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NR_DECL_IMP_MICRO'
          Title.Caption = 'DI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Adicao'
          Title.Caption = 'Adição'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'URF_chegada'
          Title.Caption = 'URF Chegada'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Via'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Multimodal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_social'
          Title.Caption = 'Razão Social - Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Title.Caption = 'Endereço - Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Title.Caption = 'Número - Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento'
          Title.Caption = 'Complemento - Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Title.Caption = 'Cidade - Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Title.Caption = 'Estado - Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pais'
          Title.Caption = 'País - Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pais_Procedencia'
          Title.Caption = 'Pais Procedencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABNOME'
          Title.Caption = 'Razão Social - Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABEND'
          Title.Caption = 'Endereço - Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABNUM'
          Title.Caption = 'Número - Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABCOMP'
          Title.Caption = 'Complemento - Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABCID'
          Title.Caption = 'Cidade - Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABEST'
          Title.Caption = 'Estado - Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABPAI'
          Title.Caption = 'País - Fabricante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NBM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NALADI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso_Total_Acertado'
          Title.Caption = 'Peso Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SomaDeQuantidade'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_APLICACAO_MERC'
          Title.Caption = 'Aplicação'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'moeda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'incoterm'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Condicao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_aduaneiro'
          Title.Caption = 'Valor  Aduaneiro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Frete'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SomaDeRateio_Seguro'
          Title.Caption = 'Seguro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_METOD_VALORACAO'
          Title.Caption = 'Valoração'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CD_TIPO_ACORDO_TAR'
          Title.Caption = 'Tipo Acordo'
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
          FieldName = 'Regime_Tributacao_II'
          Title.Caption = 'Regime Tributação II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fundamento_Legal_II'
          Title.Caption = 'Fundamento Legal II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Motivo_Adm_Temp'
          Title.Caption = 'Motivo Adm.Temp.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Ato_Legal_II'
          Title.Caption = 'Numero Ato Legal II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual_Reducao_II'
          Title.Caption = 'Percentual Redução II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cobertura Cambial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Modalidade de Pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Instituicao Financiadora'
          Title.Caption = 'Instituição Financiadora'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Motivo Sem Cobertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero de parcelas'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Periodicidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Indicador Periodicidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Taxa de Juros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ROF_BACEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo Taxa de Juros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_BEM_ENCOMENDA'
          Title.Caption = 'Bem Encomenda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN_MATERIAL_USADO'
          Title.Caption = 'Material Usado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VMLE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Base_Calc_ii'
          Title.Caption = 'Base Calc II'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Certificado_Origem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ato_Concessorio'
          Title.Caption = 'Ato Concessorio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQUOTA_ALADI'
          Title.Caption = 'Aliquota Aladi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Regime_Tributacao_IPI'
          Title.Caption = 'Regime Tributaçã IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Ato_Legal_IPI'
          Title.Caption = 'Número Ato Legal IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual_Reduca_IPI'
          Title.Caption = 'Percentual Redução IPI'
          Visible = True
        end>
    end
    object PageControl8: TPageControl
      Left = 1
      Top = 149
      Width = 864
      Height = 220
      ActivePage = TS_detalhe
      TabOrder = 1
      object TS_detalhe: TTabSheet
        Caption = 'Detalhes das  Mercadorias'
        object dbg_detahes: TDBGrid
          Left = 0
          Top = 0
          Width = 856
          Height = 192
          Align = alClient
          DataSource = ds_qdetalhe_adicao
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qdesc'
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fatura'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pagina'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sequencial'
              Visible = True
            end>
        end
      end
    end
    object b_atualizasiscomex: TBitBtn
      Left = 684
      Top = 374
      Width = 181
      Height = 25
      Caption = '&Atualiza Siscomex - REGISTRO'
      Enabled = False
      TabOrder = 2
      OnClick = b_atualizasiscomexClick
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
    object b_atualizasiscomexa: TBitBtn
      Left = 344
      Top = 374
      Width = 181
      Height = 25
      Caption = 'Atualiza Siscomex - ANÁLISE'
      Enabled = False
      TabOrder = 3
      OnClick = b_atualizasiscomexClick
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
    object pinf: TPanel
      Left = 170
      Top = 0
      Width = 528
      Height = 360
      TabOrder = 4
      Visible = False
      OnExit = pinfExit
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 526
        Height = 24
        Align = alTop
        Caption = 'Informações Complementares'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 1
        Top = 320
        Width = 526
        Height = 39
        Align = alBottom
        TabOrder = 1
        object b_processa: TBitBtn
          Left = 8
          Top = 8
          Width = 89
          Height = 25
          Caption = 'Processa'
          TabOrder = 0
          OnClick = b_processaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
        end
        object b_grava: TBitBtn
          Left = 104
          Top = 8
          Width = 89
          Height = 25
          Caption = 'Grava'
          TabOrder = 1
          OnClick = b_gravaClick
          Kind = bkOK
        end
        object b_fecha: TBitBtn
          Left = 424
          Top = 8
          Width = 91
          Height = 25
          Caption = 'Fecha'
          TabOrder = 2
          OnClick = b_fechaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
            03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
            0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
            0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
            0333337F777FFFFF7F3333000000000003333377777777777333}
          NumGlyphs = 2
        end
        object b_calpiscofins: TBitBtn
          Left = 231
          Top = 8
          Width = 137
          Height = 25
          Caption = 'Calcula PIS/ COFINS'
          Default = True
          ModalResult = 1
          TabOrder = 3
          OnClick = b_calpiscofinsClick
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
      end
      object Memo_InfoComplementar: TDBMemo
        Left = 1
        Top = 25
        Width = 526
        Height = 294
        DataField = 'TX_INFO_COMPL'
        DataSource = dsprocessos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object p_piscofins: TPanel
        Left = 19
        Top = 4
        Width = 505
        Height = 312
        TabOrder = 3
        Visible = False
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 503
          Height = 24
          Align = alTop
          Caption = 'Cáculos de PIS PASEP - COFINS E ICMS'
          Color = 10514464
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 1
          Top = 269
          Width = 503
          Height = 42
          Align = alBottom
          Color = 10514464
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object b_propis: TBitBtn
            Left = 16
            Top = 9
            Width = 89
            Height = 25
            Caption = 'Reprocessa'
            TabOrder = 0
            OnClick = b_propisClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
              1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
              1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
              193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
              11155557F755F777777555000755033305555577755F75F77F55555555503335
              0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
              05555757F75F75557F5505000333555505557F777FF755557F55000000355557
              07557777777F55557F5555000005555707555577777FF5557F55553000075557
              0755557F7777FFF5755555335000005555555577577777555555}
            NumGlyphs = 2
          end
          object BitBtn3: TBitBtn
            Left = 416
            Top = 9
            Width = 75
            Height = 25
            Caption = 'Fecha'
            TabOrder = 1
            OnClick = p_piscofinsExit
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
              03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
              0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
              0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
              0333337F777FFFFF7F3333000000000003333377777777777333}
            NumGlyphs = 2
          end
          object b_recalc: TBitBtn
            Left = 222
            Top = 10
            Width = 89
            Height = 25
            Caption = 'Recalcula'
            TabOrder = 2
            OnClick = b_recalcClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
              1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
              1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
              193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
              11155557F755F777777555000755033305555577755F75F77F55555555503335
              0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
              05555757F75F75557F5505000333555505557F777FF755557F55000000355557
              07557777777F55557F5555000005555707555577777FF5557F55553000075557
              0755557F7777FFF5755555335000005555555577577777555555}
            NumGlyphs = 2
          end
        end
        object dbg_piscofins: TDBGrid
          Left = 16
          Top = 40
          Width = 473
          Height = 225
          DataSource = dsq_propis
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Adicao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VA'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_NCM_II'
              Title.Caption = 'Aliq.II'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_NCM_IPI'
              Title.Caption = 'Aliq.IPI'
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_PIS_PASEP'
              Title.Caption = 'Aliq. PIS'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_COFINS'
              Title.Caption = 'Aliq.COFINS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_ICMS'
              Title.Caption = 'Aliq.ICMS'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_ICMS_EXTRA'
              Title.Caption = 'Aliq.ICMS-fecp'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASEC_PISCOFINS'
              Title.Caption = 'Base Calc. PISCOFINS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASEC_ICMS'
              Title.Caption = 'Base Calc. ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_II'
              Title.Caption = 'Valor II'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_IPI'
              Title.Caption = 'Valor IPI'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ICMS'
              Title.Caption = 'Valor ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ICMS_EXTRA'
              Title.Caption = 'Valor ICMS FECP'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_PIS_PASEP'
              Title.Caption = 'Valor PIS'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_COFINS'
              Title.Caption = 'Valor COFINS'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Prazo_permanencia'
              Title.Caption = 'Prazo Permanência'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VA_proporcional'
              Title.Caption = 'VA Proporcional'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_NCM_II_proporcional'
              Title.Caption = 'Aliq. II Proporcional'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliq_NCM_IPI_proporcional'
              Title.Caption = 'Aliq. IPI Proporcional'
              Visible = True
            end>
        end
        object P_OT: TPanel
          Left = 85
          Top = 56
          Width = 340
          Height = 113
          TabOrder = 3
          Visible = False
          OnExit = btn_fechaotClick
          object E_OT: TEdit
            Left = 112
            Top = 45
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '0,00'
          end
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 338
            Height = 24
            Align = alTop
            Caption = 'Despesas Aduaneiras Diversas = OT TOTAL'
            Color = 10514464
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object btn_ot: TBitBtn
            Left = 92
            Top = 80
            Width = 75
            Height = 25
            Caption = 'Ok'
            TabOrder = 2
            OnClick = btn_otClick
            Kind = bkOK
          end
          object btn_fechaot: TBitBtn
            Left = 177
            Top = 81
            Width = 75
            Height = 25
            Caption = 'Fecha'
            TabOrder = 3
            OnClick = btn_fechaotClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
              03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
              0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
              0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
              0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
              0333337F777FFFFF7F3333000000000003333377777777777333}
            NumGlyphs = 2
          end
        end
      end
      object re: TRichEdit
        Left = 398
        Top = 69
        Width = 249
        Height = 223
        TabOrder = 4
        Visible = False
      end
    end
    object B_DSI: TBitBtn
      Left = 189
      Top = 374
      Width = 152
      Height = 25
      Caption = 'Atualiza Siscomex - DSI'
      Enabled = False
      TabOrder = 6
      OnClick = B_DSIClick
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
    object btnAnexar: TBitBtn
      Left = 536
      Top = 374
      Width = 105
      Height = 25
      Caption = 'Anexar ANÁLISE'
      Default = True
      Enabled = False
      TabOrder = 8
      OnClick = btnAnexarClick
    end
    object pnlAnexo: TPanel
      Left = 222
      Top = 456
      Width = 425
      Height = 137
      BevelInner = bvRaised
      BevelWidth = 3
      TabOrder = 9
      Visible = False
      object Label8: TLabel
        Left = 16
        Top = 40
        Width = 48
        Height = 13
        Caption = 'Descrição'
      end
      object Label9: TLabel
        Left = 16
        Top = 64
        Width = 41
        Height = 13
        Caption = 'Caminho'
      end
      object btnAbrir: TSpeedButton
        Left = 363
        Top = 63
        Width = 23
        Height = 22
        Hint = 'Salvar .pdf'
        Caption = '...'
        ParentShowHint = False
        ShowHint = True
        OnClick = btnAbrirClick
      end
      object btnClear: TSpeedButton
        Left = 387
        Top = 63
        Width = 23
        Height = 22
        Hint = 'Limpar caminho'
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
        OnClick = btnClearClick
      end
      object edtDescricao: TEdit
        Left = 72
        Top = 32
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object edtCaminho: TEdit
        Left = 72
        Top = 64
        Width = 289
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object StaticText2: TStaticText
        Left = 6
        Top = 6
        Width = 413
        Height = 17
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSingle
        Caption = 'Inclusão de anexo'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object btnConfirmar: TBitBtn
        Left = 131
        Top = 96
        Width = 75
        Height = 25
        Caption = 'Confirmar'
        ModalResult = 1
        TabOrder = 3
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
        Left = 211
        Top = 96
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = btnCancelClick
        Kind = bkCancel
      end
    end
    object btnViewAnexo: TBitBtn
      Left = 642
      Top = 374
      Width = 26
      Height = 25
      Hint = 'Abrir anexo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnViewAnexoClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
        330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
        830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
        F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
    end
  end
  object p_autoriza: TPanel
    Left = 260
    Top = 189
    Width = 349
    Height = 112
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 8147753
    TabOrder = 2
    Visible = False
    object Panel14: TPanel
      Left = 1
      Top = 1
      Width = 347
      Height = 26
      Align = alTop
      Caption = 'Senha de Autorização de Registro'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel16: TPanel
      Left = 1
      Top = 78
      Width = 347
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      Color = 8147753
      TabOrder = 1
      object cancelsenha: TBitBtn
        Left = 175
        Top = 0
        Width = 74
        Height = 25
        Hint = 'Cancelar inclusão do patrimônio'
        Caption = '&Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = cancelsenhaClick
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
      object oksenha: TBitBtn
        Left = 83
        Top = 0
        Width = 70
        Height = 25
        Hint = 'Confirmar inclusão do patrimônio'
        Caption = '&OK'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = oksenhaClick
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
    end
    object me_senha: TMaskEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object q_processos: TQuery
    AutoCalcFields = False
    AfterScroll = q_processosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'Processo, Processos.Importador, '
      
        'Processos.Data, Processos.Codigo_Cliente AS refcli, Importadores' +
        '.[Razao_Social] AS Cliente, Processos.Tipo AS tipo, '
      
        'Processos.Tipo_Declaracao,TAB_TIPO_DECLARACAO.Descricao AS tipod' +
        'ecla, Tipos_de_Processos.DESCRICAO AS tipopro, '
      
        'Contratos.Descricao AS qcontrato, Locais_Inventario.Descricao AS' +
        ' qlocal,'
      
        'Importadores.CNPJ_CPF_COMPLETO AS qcnpj, Processos_registro_impo' +
        'stos.Taxa_SISCOMEX, '
      
        'Processos_registro_impostos.Taxa_SISCOMEXc, Filiais.Descricao AS' +
        ' qfilial, '
      
        'Conhecimento_Processo.URF_chegada, Conhecimento_Processo.Data_Ch' +
        'egada_URF_Cheg, '
      
        'Processos.DT_DESEMBARACO, Conhecimento_Processo.URF_Despacho, Pr' +
        'ocessos.Fechado, '
      
        'Importadores.ATIVO, Importadores.UF, Processos.Responsavel_empre' +
        'sa,  Processos.Responsavel_empresac, '
      
        'Processos.BASE_ICMS,Processos.ident_meio1,Processos.ident_meio2,' +
        'Processos.Fundamentacao_RCR,'
      
        'Processos.Data_Aprovacao_RCR,Processos.Data_Entrada_RCR,Processo' +
        's.Numero_RCR,Processos.RCR_LOCAL,'
      
        'Conhecimento_Processo.Numeromanifesto, Processos.txConversaoDeAm' +
        'anha'
      
        'FROM ((((((((Parametros INNER JOIN Processos ON (Parametros.Empr' +
        'esa = Processos.Empresa) '
      'AND (Parametros.Filial = Processos.Filial)) '
      
        'LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Empr' +
        'esa) '
      
        'AND (Processos.Filial = Importadores.Filial) AND (Processos.Impo' +
        'rtador = Importadores.Codigo)) '
      
        'LEFT JOIN Tipos_de_Processos ON Processos.Tipo = Tipos_de_Proces' +
        'sos.CODIGO) '
      
        'LEFT JOIN TAB_TIPO_DECLARACAO ON Processos.Tipo_Declaracao = TAB' +
        '_TIPO_DECLARACAO.Codigo) '
      'LEFT JOIN Contratos ON (Processos.Empresa = Contratos.Empresa) '
      
        'AND (Processos.Filial = Contratos.Filial) AND (Processos.Importa' +
        'dor = Contratos.Importador) '
      'AND (Processos.Contrato = Contratos.Contrato)) '
      
        'LEFT JOIN Locais_Inventario ON (Processos.Empresa = Locais_Inven' +
        'tario.Empresa) '
      'AND (Processos.Filial = Locais_Inventario.Filial) '
      'AND (Processos.Importador = Locais_Inventario.Importador) '
      'AND (Processos.Contrato = Locais_Inventario.Contrato) '
      'AND (Processos.Local_Inventario = Locais_Inventario.Local)) '
      
        'LEFT JOIN Processos_registro_impostos ON (Processos.Codigo = Pro' +
        'cessos_registro_impostos.Processo) '
      'AND (Processos.Filial = Processos_registro_impostos.Filial) '
      'AND (Processos.Empresa = Processos_registro_impostos.Empresa)) '
      
        'INNER JOIN Filiais ON (Parametros.Empresa = Filiais.Codigo_Empre' +
        'sa) '
      'AND (Parametros.Filial = Filiais.Codigo_Filial)) '
      
        'LEFT JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecime' +
        'nto_Processo.Processo) '
      
        'AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Proce' +
        'ssos.Empresa = Conhecimento_Processo.Empresa)'
      'where Processos.Codigo=:Processo'
      'ORDER BY Processos.Codigo;'
      ''
      ''
      ' '
      ' '
      ' ')
    Left = 304
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
    object q_processosFechado: TIntegerField
      FieldName = 'Fechado'
    end
    object q_processosATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object q_processosUF: TStringField
      FieldName = 'UF'
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
    object q_processosBASE_ICMS: TIntegerField
      FieldName = 'BASE_ICMS'
    end
    object q_processostipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 2
    end
    object q_processosident_meio1: TStringField
      FieldName = 'ident_meio1'
      FixedChar = True
      Size = 100
    end
    object q_processosident_meio2: TStringField
      FieldName = 'ident_meio2'
      FixedChar = True
      Size = 100
    end
    object q_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      FixedChar = True
      Size = 4
    end
    object q_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object q_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object q_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      FixedChar = True
    end
    object q_processosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      FixedChar = True
      Size = 100
    end
    object q_processosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object q_processosNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object q_processostxConversaoDeAmanha: TSmallintField
      FieldName = 'txConversaoDeAmanha'
    end
  end
  object ds_qprocessos: TDataSource
    DataSet = q_processos
    Left = 216
    Top = 56
  end
  object ds_qadicoes: TDataSource
    DataSet = Q_adicoes
    Left = 81
    Top = 272
  end
  object Q_adicoes: TQuery
    AutoCalcFields = False
    AfterScroll = Q_adicoesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.NR_OPER_TRAT_PREV,Processos.NR_DEC' +
        'L_IMP_MICRO, Tributacao_Item_Fatura.Adicao, Conhecimento_Process' +
        'o.URF_chegada, Conhecimento_Processo.Via, Conhecimento_Processo.' +
        'Multimodal, Exportadores.[Razao_social], Exportadores.Endereco, ' +
        'Exportadores.Numero, Exportadores.Complemento, Exportadores.Cida' +
        'de, Exportadores.Estado, Exportadores.Pais, ItensFaturas.NCM, Co' +
        'nhecimento_Processo.Pais_Procedencia, [Fabricantes_Produtores].[' +
        'Razao_social] AS FABNOME, [Fabricantes_Produtores].Endereco AS F' +
        'ABEND, [Fabricantes_Produtores].Numero AS FABNUM, [Fabricantes_P' +
        'rodutores].Complemento AS FABCOMP, [Fabricantes_Produtores].Cida' +
        'de AS FABCID, [Fabricantes_Produtores].Estado AS FABEST, [Fabric' +
        'antes_Produtores].Pais AS FABPAI, ItensFaturas.NCM AS NBM, Itens' +
        'Faturas.NALADI, Sum(([itensfaturas].[peso_total_acertado]/[itens' +
        'faturas].[quantidade])*[tributacao_item_fatura].[quantidade]) AS' +
        ' Peso_Total_Acertado, Sum(Tributacao_Item_Fatura.Quantidade) AS ' +
        'SomaDeQuantidade, Sum((([ItensFaturas].[Rateio_Frete_prepaid]+[I' +
        'tensFaturas].[Rateio_Frete_collect])+[Itensfaturas].[Rateio_Fret' +
        'e_ternac])*[Tributacao_Item_Fatura].[quantidade]) AS Frete, Sum(' +
        '[ItensFaturas].[Rateio_seguro]*[Tributacao_Item_Fatura].[Quantid' +
        'ade]) AS Seguro, (Faturas.Vinculacao) AS vinculacao, Tributacao_' +
        'Item_Fatura.CD_APLICACAO_MERC, (Faturas.Moeda) AS moeda, (Fatura' +
        's.Incoterm) AS incoterm,  (Faturas.Condicao) AS Condicao, Sum(([' +
        'itensfaturas].[Valor_Aduaneiro]/[itensfaturas].[quantidade])*[Tr' +
        'ibutacao_Item_Fatura].[quantidade]) AS Valor_aduaneiro, Tributac' +
        'ao_Item_Fatura.CD_METOD_VALORACAO, Tributacao_Item_Fatura.CD_TIP' +
        'O_ACORDO_TAR, Tributacao_Item_Fatura.ACORDO_ALADI, Tributacao_It' +
        'em_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Fundament' +
        'o_Legal_II, Tributacao_Item_Fatura.Motivo_Adm_Temp, Tributacao_I' +
        'tem_Fatura.Numero_Ato_Legal_II, Tributacao_Item_Fatura.Percentua' +
        'l_Reducao_II,  (Faturas.[Cobertura_cambial]) AS [Cobertura_cambi' +
        'al],  (Faturas.[Modalidade_de_Pagamento]) AS [Modalidade_de_Paga' +
        'mento],  (Faturas.[Instituicao_Financiadora]) AS [Instituicao_Fi' +
        'nanciadora],  (Faturas.[Motivo_Sem_Cobertura]) AS [Motivo_Sem_Co' +
        'bertura],  (Faturas.[Numero_de_parcelas]) AS [Numero_de_parcelas' +
        '],  (Faturas.Periodicidade) AS Periodicidade,  (Faturas.[Valor_d' +
        'as_Parcelas]) AS [PrimeiroDeValor_das_Parcelas],  (Faturas.[Indi' +
        'cador_Periodicidade]) AS [Indicador_Periodicidade],  (Faturas.[t' +
        'axa_de_juros]) AS [taxa_de_juros],  (Faturas.[ROF_BACEN]) AS [RO' +
        'F_BACEN],  (Faturas.[Percentual_ROF]) AS [Percentual_ROF],  (Fat' +
        'uras.[Codigo_taxa_de_juros]) AS [Codigo_taxa_de_juros], Tributac' +
        'ao_Item_Fatura.IN_BEM_ENCOMENDA, Tributacao_Item_Fatura.IN_MATER' +
        'IAL_USADO, Sum(([itensfaturas].[VMLE]/[itensfaturas].[quantidade' +
        '])*[Tributacao_Item_Fatura].[quantidade]) AS VMLE, Sum(([itensfa' +
        'turas].[Base_Calc_ii]/[itensfaturas].[quantidade])*[Tributacao_I' +
        'tem_Fatura].[quantidade]) AS Base_Calc_ii, Tributacao_Item_Fatur' +
        'a.ALIQUOTA_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_IPI, ' +
        'Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributacao_Item_Fat' +
        'ura.Percentual_Reduca_IPI,  (Faturas.[Valor_taxa_de_juros]) AS [' +
        'Valor_taxa_de_juros], '
      
        'ItensFaturas.Unidade_Medida_Estat, Conhecimento_Processo.Moeda_F' +
        'rete, Conhecimento_Processo.Moeda_Seguro, CD_REGIME_TRIBUTAR_PIS' +
        'COFINS, CD_FUND_LEG_REGIME_PISCOFINS,FATURAS.PESO_LIBRA '
      
        'FROM (((((ItensFaturas INNER JOIN Tributacao_Item_Fatura ON (Ite' +
        'nsFaturas.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) A' +
        'ND (ItensFaturas.Fatura = Tributacao_Item_Fatura.Fatura) AND (It' +
        'ensFaturas.Processo = Tributacao_Item_Fatura.Processo) AND (Iten' +
        'sFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFatur' +
        'as.Empresa = Tributacao_Item_Fatura.Empresa)) INNER JOIN Faturas' +
        ' ON (ItensFaturas.Fatura = Faturas.Codigo) AND (ItensFaturas.Pro' +
        'cesso = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Fil' +
        'ial) AND (ItensFaturas.Empresa = Faturas.Empresa)) INNER JOIN Pr' +
        'ocessos ON (Faturas.Processo = Processos.Codigo) AND (Faturas.Fi' +
        'lial = Processos.Filial) AND (Faturas.Empresa = Processos.Empres' +
        'a)) INNER JOIN Conhecimento_Processo ON (Processos.Codigo = Conh' +
        'ecimento_Processo.Processo) AND (Processos.Filial = Conhecimento' +
        '_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo' +
        '.Empresa)) INNER JOIN Exportadores ON (Faturas.Exportador = Expo' +
        'rtadores.Codigo) AND (Faturas.Filial = Exportadores.Filial) AND ' +
        '(Faturas.Empresa = Exportadores.Empresa)) INNER JOIN [Fabricante' +
        's_Produtores] ON (ItensFaturas.Fabricante = [Fabricantes_Produto' +
        'res].Codigo) AND (ItensFaturas.Filial = [Fabricantes_Produtores]' +
        '.Filial) AND (ItensFaturas.Empresa = [Fabricantes_Produtores].Em' +
        'presa)'
      
        'WHERE (((Processos.Empresa)=:qempresa) AND ((Processos.Filial)=:' +
        'qfilial) AND ((Processos.Codigo)=:qprocesso))'
      
        'GROUP BY Tributacao_Item_Fatura.NR_OPER_TRAT_PREV,Processos.NR_D' +
        'ECL_IMP_MICRO, Tributacao_Item_Fatura.Adicao, Conhecimento_Proce' +
        'sso.URF_chegada, Conhecimento_Processo.Via, Conhecimento_Process' +
        'o.Multimodal, Exportadores.[Razao_social], Exportadores.Endereco' +
        ', Exportadores.Numero, Exportadores.Complemento, Exportadores.Ci' +
        'dade, Exportadores.Estado, Exportadores.Pais, ItensFaturas.NCM, ' +
        'Conhecimento_Processo.Pais_Procedencia, [Fabricantes_Produtores]' +
        '.[Razao_social], [Fabricantes_Produtores].Endereco, [Fabricantes' +
        '_Produtores].Numero, [Fabricantes_Produtores].Complemento, [Fabr' +
        'icantes_Produtores].Cidade, [Fabricantes_Produtores].Estado, [Fa' +
        'bricantes_Produtores].Pais, ItensFaturas.NCM, ItensFaturas.NALAD' +
        'I, Tributacao_Item_Fatura.CD_APLICACAO_MERC, Tributacao_Item_Fat' +
        'ura.CD_METOD_VALORACAO, Tributacao_Item_Fatura.CD_TIPO_ACORDO_TA' +
        'R, Tributacao_Item_Fatura.ACORDO_ALADI, Tributacao_Item_Fatura.R' +
        'egime_Tributacao_II, Tributacao_Item_Fatura.Fundamento_Legal_II,' +
        ' Tributacao_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item_Fatura.' +
        'Numero_Ato_Legal_II, Tributacao_Item_Fatura.Percentual_Reducao_I' +
        'I, Tributacao_Item_Fatura.IN_BEM_ENCOMENDA, Tributacao_Item_Fatu' +
        'ra.IN_MATERIAL_USADO, Tributacao_Item_Fatura.ALIQUOTA_ALADI, Tri' +
        'butacao_Item_Fatura.Regime_Tributacao_IPI, Faturas.Vinculacao, T' +
        'ributacao_Item_Fatura.Numero_Ato_Legal_IPI, Faturas.Moeda, Fatur' +
        'as.Incoterm, Faturas.Condicao, Tributacao_Item_Fatura.Percentual' +
        '_Reduca_IPI, ItensFaturas.Unidade_Medida_Estat, Conhecimento_Pro' +
        'cesso.Moeda_Frete, Conhecimento_Processo.Moeda_Seguro, CD_REGIME' +
        '_TRIBUTAR_PISCOFINS, CD_FUND_LEG_REGIME_PISCOFINS,FATURAS.PESO_L' +
        'IBRA, Faturas.Cobertura_Cambial, Faturas.Modalidade_de_Pagamento' +
        ', Faturas.Instituicao_Financiadora, Faturas.Motivo_Sem_Cobertura' +
        ', Faturas.Numero_de_parcelas, Faturas.Periodicidade, Faturas.Val' +
        'or_das_Parcelas, Faturas.Indicador_Periodicidade, Faturas.Taxa_d' +
        'e_Juros,Faturas.ROF_BACEN, Faturas.Percentual_ROF, Faturas.Codig' +
        'o_Taxa_de_Juros, Faturas.Valor_Taxa_de_Juros'
      'HAVING (((Tributacao_Item_Fatura.Adicao) Is Not Null))'
      'ORDER BY Tributacao_Item_Fatura.Adicao;')
    UpdateMode = upWhereChanged
    Left = 649
    Top = 235
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '01916/03'
      end>
    object Q_adicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object Q_adicoesAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object Q_adicoesVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesMultimodal: TIntegerField
      FieldName = 'Multimodal'
    end
    object Q_adicoesRazao_social: TStringField
      FieldName = 'Razao_social'
      FixedChar = True
      Size = 60
    end
    object Q_adicoesEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object Q_adicoesNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object Q_adicoesComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object Q_adicoesCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object Q_adicoesEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object Q_adicoesPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object Q_adicoesPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesFABNOME: TStringField
      FieldName = 'FABNOME'
      FixedChar = True
      Size = 60
    end
    object Q_adicoesFABEND: TStringField
      FieldName = 'FABEND'
      FixedChar = True
      Size = 40
    end
    object Q_adicoesFABNUM: TStringField
      FieldName = 'FABNUM'
      FixedChar = True
      Size = 6
    end
    object Q_adicoesFABCOMP: TStringField
      FieldName = 'FABCOMP'
      FixedChar = True
      Size = 21
    end
    object Q_adicoesFABCID: TStringField
      FieldName = 'FABCID'
      FixedChar = True
      Size = 25
    end
    object Q_adicoesFABEST: TStringField
      FieldName = 'FABEST'
      FixedChar = True
      Size = 25
    end
    object Q_adicoesFABPAI: TStringField
      FieldName = 'FABPAI'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesNBM: TStringField
      FieldName = 'NBM'
      FixedChar = True
      Size = 8
    end
    object Q_adicoesNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object Q_adicoesPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object Q_adicoesSomaDeQuantidade: TFloatField
      FieldName = 'SomaDeQuantidade'
    end
    object Q_adicoesFrete: TFloatField
      FieldName = 'Frete'
    end
    object Q_adicoesSeguro: TFloatField
      FieldName = 'Seguro'
    end
    object Q_adicoesvinculacao: TStringField
      FieldName = 'vinculacao'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesmoeda: TStringField
      FieldName = 'moeda'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesincoterm: TStringField
      FieldName = 'incoterm'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesCondicao: TStringField
      FieldName = 'Condicao'
      FixedChar = True
      Size = 50
    end
    object Q_adicoesValor_aduaneiro: TFloatField
      FieldName = 'Valor_aduaneiro'
    end
    object Q_adicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object Q_adicoesPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object Q_adicoesCobertura_cambial: TStringField
      FieldName = 'Cobertura_cambial'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesPrimeiroDeValor_das_Parcelas: TFloatField
      FieldName = 'PrimeiroDeValor_das_Parcelas'
    end
    object Q_adicoesIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      FixedChar = True
      Size = 1
    end
    object Q_adicoestaxa_de_juros: TIntegerField
      FieldName = 'taxa_de_juros'
    end
    object Q_adicoesROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object Q_adicoesPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object Q_adicoesCodigo_taxa_de_juros: TStringField
      FieldName = 'Codigo_taxa_de_juros'
      FixedChar = True
      Size = 4
    end
    object Q_adicoesIN_BEM_ENCOMENDA: TIntegerField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object Q_adicoesIN_MATERIAL_USADO: TIntegerField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object Q_adicoesVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object Q_adicoesBase_Calc_ii: TFloatField
      FieldName = 'Base_Calc_ii'
    end
    object Q_adicoesALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object Q_adicoesRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      FixedChar = True
      Size = 5
    end
    object Q_adicoesPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object Q_adicoesValor_taxa_de_juros: TFloatField
      FieldName = 'Valor_taxa_de_juros'
    end
    object Q_adicoesUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      FixedChar = True
      Size = 3
    end
    object Q_adicoesCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object Q_adicoesCD_FUND_LEG_REGIME_PISCOFINS: TStringField
      FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
      FixedChar = True
      Size = 2
    end
    object Q_adicoesPESO_LIBRA: TIntegerField
      FieldName = 'PESO_LIBRA'
    end
    object Q_adicoesNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      FixedChar = True
      Size = 10
    end
  end
  object ds_qdetalhe_adicao: TDataSource
    DataSet = q_detalhe_adicao
    Left = 433
    Top = 66
  end
  object q_detalhe_adicao: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, ItensFaturas.Produto, Tribut' +
        'acao_Item_Fatura.Quantidade, cast(Descricao_Produto as varchar(2' +
        '50)) AS qdesc, ItensFaturas.Fatura, ItensFaturas.Pagina, ItensFa' +
        'turas.Sequencial, Tributacao_Item_Fatura.Sequencial AS seq'
      
        'FROM ((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Empresa ' +
        '= Faturas.Empresa) AND (ItensFaturas.Filial = Faturas.Filial) AN' +
        'D (ItensFaturas.Processo = Faturas.Processo) AND (ItensFaturas.F' +
        'atura = Faturas.Codigo)) INNER JOIN Processos ON (Faturas.Empres' +
        'a = Processos.Empresa) AND (Faturas.Filial = Processos.Filial) A' +
        'ND (Faturas.Processo = Processos.Codigo)) INNER JOIN Tributacao_' +
        'Item_Fatura ON (ItensFaturas.Sequencial = Tributacao_Item_Fatura' +
        '.Sequencial_Item) AND (ItensFaturas.Fatura = Tributacao_Item_Fat' +
        'ura.Fatura) AND (ItensFaturas.Processo = Tributacao_Item_Fatura.' +
        'Processo) AND (ItensFaturas.Filial = Tributacao_Item_Fatura.Fili' +
        'al) AND (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, ItensFaturas.Produto, Trib' +
        'utacao_Item_Fatura.Quantidade, cast(Descricao_Produto as varchar' +
        '(250))  , ItensFaturas.Fatura, ItensFaturas.Pagina, ItensFaturas' +
        '.Sequencial, Tributacao_Item_Fatura.Sequencial, Tributacao_Item_' +
        'Fatura.Adicao'
      'HAVING (((Tributacao_Item_Fatura.Adicao)=:Adicao));')
    UpdateMode = upWhereChanged
    Left = 665
    Top = 338
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
      end
      item
        DataType = ftString
        Name = 'Adicao'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_detalhe_adicaoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_detalhe_adicaoProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object q_detalhe_adicaoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_detalhe_adicaoqdesc: TStringField
      FieldName = 'qdesc'
      FixedChar = True
      Size = 250
    end
    object q_detalhe_adicaoFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_detalhe_adicaoPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object q_detalhe_adicaoSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object q_detalhe_adicaoseq: TStringField
      FieldName = 'seq'
      FixedChar = True
      Size = 4
    end
  end
  object T_procdi: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_PROCESSO'
    TableName = 'PROCESSO_DI'
    Left = 77
    Top = 76
    object T_procdiNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_procdiNR_SEQ_PROCESSO: TSmallintField
      FieldName = 'NR_SEQ_PROCESSO'
    end
    object T_procdiCD_TIPO_PROCESSO: TStringField
      FieldName = 'CD_TIPO_PROCESSO'
      Size = 1
    end
    object T_procdiNR_PROCESSO_INSTR: TStringField
      FieldName = 'NR_PROCESSO_INSTR'
    end
  end
  object T_di: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO'
    TableName = 'DECLARAÇÃO_IMPORTAÇÃO'
    Left = 121
    Top = 50
    object T_diNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_diNR_IDENT_USUARIO: TStringField
      FieldName = 'NR_IDENT_USUARIO'
      Size = 15
    end
    object T_diNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object T_diNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_diDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object T_diDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object T_diDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object T_diCD_TIPO_DECLARACAO: TStringField
      FieldName = 'CD_TIPO_DECLARACAO'
      Size = 2
    end
    object T_diCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object T_diCD_TIPO_IMPORTADOR: TStringField
      FieldName = 'CD_TIPO_IMPORTADOR'
      Size = 1
    end
    object T_diNR_IMPORTADOR: TStringField
      FieldName = 'NR_IMPORTADOR'
      Size = 14
    end
    object T_diCD_PAIS_IMPORTADOR: TStringField
      FieldName = 'CD_PAIS_IMPORTADOR'
      Size = 3
    end
    object T_diNM_IMPORTADOR: TStringField
      FieldName = 'NM_IMPORTADOR'
      Size = 60
    end
    object T_diNR_TEL_IMPORTADOR: TStringField
      FieldName = 'NR_TEL_IMPORTADOR'
      Size = 15
    end
    object T_diED_LOGR_IMPORTADOR: TStringField
      FieldName = 'ED_LOGR_IMPORTADOR'
      Size = 40
    end
    object T_diED_NR_IMPORTADOR: TStringField
      FieldName = 'ED_NR_IMPORTADOR'
      Size = 6
    end
    object T_diED_COMPL_IMPO: TStringField
      FieldName = 'ED_COMPL_IMPO'
      Size = 21
    end
    object T_diED_BA_IMPORTADOR: TStringField
      FieldName = 'ED_BA_IMPORTADOR'
      Size = 25
    end
    object T_diED_MUN_IMPORTADOR: TStringField
      FieldName = 'ED_MUN_IMPORTADOR'
      Size = 25
    end
    object T_diED_UF_IMPORTADOR: TStringField
      FieldName = 'ED_UF_IMPORTADOR'
      Size = 2
    end
    object T_diED_CEP_IMPORTADOR: TStringField
      FieldName = 'ED_CEP_IMPORTADOR'
      Size = 8
    end
    object T_diNR_CPF_REPR_LEGAL: TStringField
      FieldName = 'NR_CPF_REPR_LEGAL'
      Size = 11
    end
    object T_diCD_MODALIDADE_DESP: TStringField
      FieldName = 'CD_MODALIDADE_DESP'
      Size = 1
    end
    object T_diIN_OPERACAO_FUNDAP: TBooleanField
      FieldName = 'IN_OPERACAO_FUNDAP'
    end
    object T_diCD_URF_ENTR_CARGA: TStringField
      FieldName = 'CD_URF_ENTR_CARGA'
      Size = 7
    end
    object T_diCD_URF_DESPACHO: TStringField
      FieldName = 'CD_URF_DESPACHO'
      Size = 7
    end
    object T_diCD_TIPO_CONSIG: TStringField
      FieldName = 'CD_TIPO_CONSIG'
      Size = 1
    end
    object T_diNR_CONSIGNATARIO: TStringField
      FieldName = 'NR_CONSIGNATARIO'
      Size = 14
    end
    object T_diNM_CONSIGNATARIO: TStringField
      FieldName = 'NM_CONSIGNATARIO'
      Size = 60
    end
    object T_diCD_PAIS_PROC_CARGA: TStringField
      FieldName = 'CD_PAIS_PROC_CARGA'
      Size = 3
    end
    object T_diCD_VIA_TRANSP_CARG: TStringField
      FieldName = 'CD_VIA_TRANSP_CARG'
      Size = 2
    end
    object T_diIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object T_diNR_VEICULO_TRANSP: TStringField
      FieldName = 'NR_VEICULO_TRANSP'
      Size = 15
    end
    object T_diNM_VEICULO_TRANSP: TStringField
      FieldName = 'NM_VEICULO_TRANSP'
      Size = 30
    end
    object T_diNM_TRANSPORTADOR: TStringField
      FieldName = 'NM_TRANSPORTADOR'
      Size = 60
    end
    object T_diCD_BANDEIRA_TRANSP: TStringField
      FieldName = 'CD_BANDEIRA_TRANSP'
      Size = 3
    end
    object T_diCD_TIPO_AG_CARGA: TStringField
      FieldName = 'CD_TIPO_AG_CARGA'
      Size = 1
    end
    object T_diNR_AGENTE_CARGA: TStringField
      FieldName = 'NR_AGENTE_CARGA'
      Size = 14
    end
    object T_diCD_TIPO_DCTO_CARGA: TStringField
      FieldName = 'CD_TIPO_DCTO_CARGA'
      Size = 2
    end
    object T_diNR_DCTO_CARGA: TStringField
      FieldName = 'NR_DCTO_CARGA'
      Size = 18
    end
    object T_diNR_DCTO_CARGA_MAST: TStringField
      FieldName = 'NR_DCTO_CARGA_MAST'
      Size = 18
    end
    object T_diNM_LOCAL_EMBARQUE: TStringField
      FieldName = 'NM_LOCAL_EMBARQUE'
      Size = 50
    end
    object T_diDT_EMBARQUE: TStringField
      FieldName = 'DT_EMBARQUE'
      Size = 8
    end
    object T_diCD_UTIL_DCTO_CARGA: TStringField
      FieldName = 'CD_UTIL_DCTO_CARGA'
      Size = 1
    end
    object T_diPB_CARGA: TStringField
      FieldName = 'PB_CARGA'
      Size = 15
    end
    object T_diPL_CARGA: TStringField
      FieldName = 'PL_CARGA'
      Size = 15
    end
    object T_diDT_CHEGADA_CARGA: TStringField
      FieldName = 'DT_CHEGADA_CARGA'
      Size = 8
    end
    object T_diCD_TIPO_MANIFESTO: TStringField
      FieldName = 'CD_TIPO_MANIFESTO'
      Size = 1
    end
    object T_diNR_MANIFESTO: TStringField
      FieldName = 'NR_MANIFESTO'
      Size = 15
    end
    object T_diCD_RECINTO_ALFAND: TStringField
      FieldName = 'CD_RECINTO_ALFAND'
      Size = 7
    end
    object T_diCD_SETOR_ARMAZENAM: TStringField
      FieldName = 'CD_SETOR_ARMAZENAM'
      Size = 3
    end
    object T_diCD_MOEDA_FRETE: TStringField
      FieldName = 'CD_MOEDA_FRETE'
      Size = 3
    end
    object T_diVL_TOT_FRT_PREPAID: TFloatField
      FieldName = 'VL_TOT_FRT_PREPAID'
    end
    object T_diVL_TOT_FRT_COLLECT: TFloatField
      FieldName = 'VL_TOT_FRT_COLLECT'
    end
    object T_diVL_FRETE_TNAC_MNEG: TFloatField
      FieldName = 'VL_FRETE_TNAC_MNEG'
    end
    object T_diVL_TOTAL_FRETE_MN: TFloatField
      FieldName = 'VL_TOTAL_FRETE_MN'
    end
    object T_diCD_MOEDA_SEGURO: TStringField
      FieldName = 'CD_MOEDA_SEGURO'
      Size = 3
    end
    object T_diVL_TOT_SEGURO_MNEG: TFloatField
      FieldName = 'VL_TOT_SEGURO_MNEG'
    end
    object T_diVL_TOTAL_SEG_MN: TFloatField
      FieldName = 'VL_TOTAL_SEG_MN'
    end
    object T_diCD_MOEDA_DESPESAS: TStringField
      FieldName = 'CD_MOEDA_DESPESAS'
      Size = 3
    end
    object T_diVL_TOT_DESPS_MNEG: TFloatField
      FieldName = 'VL_TOT_DESPS_MNEG'
    end
    object T_diVL_TOT_DESPS_MN: TFloatField
      FieldName = 'VL_TOT_DESPS_MN'
    end
    object T_diCD_MOEDA_MLE: TStringField
      FieldName = 'CD_MOEDA_MLE'
      Size = 3
    end
    object T_diVL_TOT_MLE_MNEG: TFloatField
      FieldName = 'VL_TOT_MLE_MNEG'
    end
    object T_diVL_TOTAL_MLE_MN: TFloatField
      FieldName = 'VL_TOTAL_MLE_MN'
    end
    object T_diIN_MOEDA_UNICA: TBooleanField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object T_diTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object T_diCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object T_diNR_CONTA_PGTO_TRIB: TStringField
      FieldName = 'NR_CONTA_PGTO_TRIB'
      Size = 19
    end
  end
  object T_adicoes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO'
    TableName = 'OP_ADIÇÃO_DE_IMPORTAÇÃO'
    Left = 233
    Top = 91
    object T_adicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_adicoesNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_adicoesCD_URF_ENTR_MERC: TStringField
      FieldName = 'CD_URF_ENTR_MERC'
      Size = 7
    end
    object T_adicoesCD_VIA_TRANSPORTE: TStringField
      FieldName = 'CD_VIA_TRANSPORTE'
      Size = 2
    end
    object T_adicoesIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object T_adicoesNM_FORN_ESTR: TStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object T_adicoesED_LOGR_FORN_ESTR: TStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object T_adicoesED_NR_FORN_ESTR: TStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object T_adicoesED_COMPL_FORN_ESTR: TStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object T_adicoesED_CIDAD_FORN_ESTR: TStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object T_adicoesED_ESTAD_FORN_ESTR: TStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object T_adicoesCD_PAIS_AQUIS_MERC: TStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object T_adicoesCD_MERCADORIA_NCM: TStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object T_adicoesCD_PAIS_PROC_MERC: TStringField
      FieldName = 'CD_PAIS_PROC_MERC'
      Size = 3
    end
    object T_adicoesCD_AUSENCIA_FABRIC: TStringField
      FieldName = 'CD_AUSENCIA_FABRIC'
      Size = 1
    end
    object T_adicoesNM_FABRICANTE_MERC: TStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object T_adicoesED_LOGR_FABRIC: TStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object T_adicoesED_NR_FABRIC: TStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object T_adicoesED_COMPL_FABRIC: TStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object T_adicoesED_CIDAD_FABRIC: TStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
    object T_adicoesED_ESTADO_FABRIC: TStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object T_adicoesCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object T_adicoesCD_MERC_NBM_SH: TStringField
      FieldName = 'CD_MERC_NBM_SH'
      Size = 10
    end
    object T_adicoesCD_MERC_NALADI_NCC: TStringField
      FieldName = 'CD_MERC_NALADI_NCC'
      Size = 7
    end
    object T_adicoesCD_MERC_NALADI_SH: TStringField
      FieldName = 'CD_MERC_NALADI_SH'
      Size = 8
    end
    object T_adicoesPL_MERCADORIA: TStringField
      FieldName = 'PL_MERCADORIA'
      Size = 15
    end
    object T_adicoesQT_UN_ESTATISTICA: TStringField
      FieldName = 'QT_UN_ESTATISTICA'
      Size = 14
    end
    object T_adicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object T_adicoesVL_MERC_EMB_MN: TFloatField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object T_adicoesCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object T_adicoesCD_INCOTERMS_VENDA: TStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object T_adicoesNM_LOC_COND_VENDA: TStringField
      FieldName = 'NM_LOC_COND_VENDA'
      Size = 60
    end
    object T_adicoesVL_MERC_COND_VENDA: TFloatField
      FieldName = 'VL_MERC_COND_VENDA'
    end
    object T_adicoesVL_MERC_VENDA_MN: TFloatField
      FieldName = 'VL_MERC_VENDA_MN'
    end
    object T_adicoesVL_FRETE_MERC_MNEG: TFloatField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object T_adicoesCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object T_adicoesVL_FRETE_MERC_MN: TFloatField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object T_adicoesVL_SEG_MERC_MNEG: TFloatField
      FieldName = 'VL_SEG_MERC_MNEG'
    end
    object T_adicoesCD_MOEDA_SEG_MERC: TStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object T_adicoesVL_SEG_MERC_MN: TFloatField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object T_adicoesVL_UNID_LOC_EMP: TFloatField
      FieldName = 'VL_UNID_LOC_EMP'
    end
    object T_adicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object T_adicoesCD_VINC_IMPO_EXPO: TStringField
      FieldName = 'CD_VINC_IMPO_EXPO'
      Size = 1
    end
    object T_adicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object T_adicoesCD_ACORDO_ALADI: TStringField
      FieldName = 'CD_ACORDO_ALADI'
      Size = 3
    end
    object T_adicoesCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object T_adicoesCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object T_adicoesCD_MOTIVO_ADM_TEMP: TStringField
      FieldName = 'CD_MOTIVO_ADM_TEMP'
      Size = 2
    end
    object T_adicoesNR_DCTO_REDUCAO: TStringField
      FieldName = 'NR_DCTO_REDUCAO'
      Size = 8
    end
    object T_adicoesVL_DESPESAS_MNEG: TFloatField
      FieldName = 'VL_DESPESAS_MNEG'
    end
    object T_adicoesCD_MOEDAS_DESPESAS: TStringField
      FieldName = 'CD_MOEDAS_DESPESAS'
      Size = 3
    end
    object T_adicoesVL_DESPESAS_MN: TFloatField
      FieldName = 'VL_DESPESAS_MN'
    end
    object T_adicoesPC_COEF_REDUC_II: TFloatField
      FieldName = 'PC_COEF_REDUC_II'
    end
    object T_adicoesVL_CALC_DCR_DOLAR: TFloatField
      FieldName = 'VL_CALC_DCR_DOLAR'
    end
    object T_adicoesVL_II_CALC_DCR_MN: TFloatField
      FieldName = 'VL_II_CALC_DCR_MN'
    end
    object T_adicoesVL_II_DEVIDO_ZFM: TFloatField
      FieldName = 'VL_II_DEVIDO_ZFM'
    end
    object T_adicoesVL_II_A_REC_ZFM: TFloatField
      FieldName = 'VL_II_A_REC_ZFM'
    end
    object T_adicoesCD_COBERT_CAMBIAL: TStringField
      FieldName = 'CD_COBERT_CAMBIAL'
      Size = 1
    end
    object T_adicoesCD_MODALIDADE_PGTO: TStringField
      FieldName = 'CD_MODALIDADE_PGTO'
      Size = 2
    end
    object T_adicoesCD_ORGAO_FIN_INTER: TStringField
      FieldName = 'CD_ORGAO_FIN_INTER'
      Size = 2
    end
    object T_adicoesCD_MOTIVO_SEM_COB: TStringField
      FieldName = 'CD_MOTIVO_SEM_COB'
      Size = 2
    end
    object T_adicoesQT_PARC_FINANC_360: TStringField
      FieldName = 'QT_PARC_FINANC_360'
      Size = 3
    end
    object T_adicoesCD_PERIOD_PGTO_360: TStringField
      FieldName = 'CD_PERIOD_PGTO_360'
      Size = 1
    end
    object T_adicoesQT_PERIOD_PGTO_360: TStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object T_adicoesVL_TOT_FINANC_360: TFloatField
      FieldName = 'VL_TOT_FINANC_360'
    end
    object T_adicoesPC_TAXA_JUROS: TFloatField
      FieldName = 'PC_TAXA_JUROS'
    end
    object T_adicoesCD_TAXA_JUROS: TStringField
      FieldName = 'CD_TAXA_JUROS'
      Size = 4
    end
    object T_adicoesVL_FINANC_SUP_360: TFloatField
      FieldName = 'VL_FINANC_SUP_360'
    end
    object T_adicoesNR_ROF: TStringField
      FieldName = 'NR_ROF'
      Size = 8
    end
    object T_adicoesIN_PGTO_VARIAV_360: TBooleanField
      FieldName = 'IN_PGTO_VARIAV_360'
    end
    object T_adicoesIN_JUROS_ATE_360: TBooleanField
      FieldName = 'IN_JUROS_ATE_360'
    end
    object T_adicoesPC_COMISSAO_AG_IMP: TFloatField
      FieldName = 'PC_COMISSAO_AG_IMP'
    end
    object T_adicoesVL_COMISSAO_AG_IMP: TFloatField
      FieldName = 'VL_COMISSAO_AG_IMP'
    end
    object T_adicoesCD_TIPO_AGENTE_IMP: TStringField
      FieldName = 'CD_TIPO_AGENTE_IMP'
      Size = 1
    end
    object T_adicoesNR_AGENTE_IMP: TStringField
      FieldName = 'NR_AGENTE_IMP'
      Size = 14
    end
    object T_adicoesCD_BANC_AGENTE_IMP: TStringField
      FieldName = 'CD_BANC_AGENTE_IMP'
      Size = 5
    end
    object T_adicoesCD_AGENC_AGENT_IMP: TStringField
      FieldName = 'CD_AGENC_AGENT_IMP'
      Size = 4
    end
    object T_adicoesIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object T_adicoesIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object T_adicoesTX_COMPL_VL_ADUAN: TStringField
      FieldName = 'TX_COMPL_VL_ADUAN'
      Size = 250
    end
    object T_adicoesIN_IPI_NAO_TRIBUT: TBooleanField
      FieldName = 'IN_IPI_NAO_TRIBUT'
    end
    object T_adicoesvl_merc_loc_emb_mn: TFloatField
      FieldName = 'vl_merc_loc_emb_mn'
    end
    object T_adicoesvl_base_calculo_mn: TFloatField
      FieldName = 'vl_base_calculo_mn'
    end
    object T_adicoesNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
    object T_adicoesVL_ALIQ_ICMS: TFloatField
      FieldName = 'VL_ALIQ_ICMS'
    end
    object T_adicoesIN_REDUC_BASE_CALC: TBooleanField
      FieldName = 'IN_REDUC_BASE_CALC'
    end
    object T_adicoesCD_FUND_LEG_REDUC: TStringField
      FieldName = 'CD_FUND_LEG_REDUC'
      Size = 2
    end
    object T_adicoesCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      Size = 1
    end
    object T_adicoesCD_FUND_LEG_REGIME_PISCOFINS: TStringField
      FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
      Size = 2
    end
    object T_adicoesIN_TIPO_CERTIFICADO: TStringField
      FieldName = 'IN_TIPO_CERTIFICADO'
      Size = 1
    end
  end
  object q_detalhe: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.A' +
        'dicao, Tributacao_Item_Fatura.Quantidade, Tributacao_Item_Fatura' +
        '.Sequencial AS seq, '
      
        '                      ItensFaturas.Produto, ItensFaturas.Codigo_' +
        'Produto, ItensFaturas.Referencia, ItensFaturas.Numero_serie, Ite' +
        'nsFaturas.Referencia_projeto, '
      
        '                      ItensFaturas.Descricao_Produto AS [desc], ' +
        'Tributacao_Item_Fatura.Certificado_Origem, ItensFaturas.Fatura, ' +
        'ItensFaturas.Pagina, '
      
        '                      ItensFaturas.Sequencial, ItensFaturas.PO, ' +
        'ItensFaturas.Seqpo, ItensFaturas.NCM, ItensFaturas.Unidade, '
      
        '                      TAB_UNID_MEDIDA.DESCRICAO AS Qunidade, Ite' +
        'nsFaturas.vmle, ItensFaturas.valor_aduaneiro'
      'FROM         ItensFaturas INNER JOIN'
      
        '                      Faturas ON ItensFaturas.Empresa = Faturas.' +
        'Empresa AND ItensFaturas.Filial = Faturas.Filial AND ItensFatura' +
        's.Processo = Faturas.Processo AND '
      
        '                      ItensFaturas.Fatura = Faturas.Codigo INNER' +
        ' JOIN'
      
        '                      Processos ON Faturas.Empresa = Processos.E' +
        'mpresa AND Faturas.Filial = Processos.Filial AND Faturas.Process' +
        'o = Processos.Codigo INNER JOIN'
      
        '                      Tributacao_Item_Fatura ON ItensFaturas.Emp' +
        'resa = Tributacao_Item_Fatura.Empresa AND ItensFaturas.Filial = ' +
        'Tributacao_Item_Fatura.Filial AND '
      
        '                      ItensFaturas.Processo = Tributacao_Item_Fa' +
        'tura.Processo AND ItensFaturas.Fatura = Tributacao_Item_Fatura.F' +
        'atura AND '
      
        '                      ItensFaturas.Sequencial = Tributacao_Item_' +
        'Fatura.Sequencial_Item LEFT OUTER JOIN'
      
        '                      TAB_UNID_MEDIDA ON ItensFaturas.Unidade = ' +
        'TAB_UNID_MEDIDA.CODIGO'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'ORDER BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, ItensFaturas.Fatura, CAST(ItensFaturas.Pagina AS integer), '
      '                      CAST(ItensFaturas.Sequencial AS integer)')
    Left = 541
    Top = 234
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
    object q_detalheNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_detalheAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_detalheQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_detalheseq: TStringField
      FieldName = 'seq'
      FixedChar = True
      Size = 4
    end
    object q_detalheProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object q_detalheCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      FixedChar = True
      Size = 50
    end
    object q_detalheReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object q_detalheNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object q_detalheReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object q_detalhedesc: TMemoField
      FieldName = 'desc'
      BlobType = ftMemo
    end
    object q_detalheCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
    object q_detalheFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_detalhePagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object q_detalheSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object q_detalhePO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object q_detalheSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object q_detalheNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object q_detalheUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object q_detalheQunidade: TStringField
      FieldName = 'Qunidade'
      FixedChar = True
      Size = 120
    end
    object q_detalhevmle: TFloatField
      FieldName = 'vmle'
    end
    object q_detalhevalor_aduaneiro: TFloatField
      FieldName = 'valor_aduaneiro'
    end
  end
  object T_detalhes: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NU_SEQ_DETALHE'
    TableName = 'DETALHE_MERCADORIA'
    Left = 317
    Top = 66
    object T_detalhesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_detalhesNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_detalhesNU_SEQ_DETALHE: TSmallintField
      FieldName = 'NU_SEQ_DETALHE'
    end
    object T_detalhesTX_DESC_DET_MERC: TMemoField
      FieldName = 'TX_DESC_DET_MERC'
      BlobType = ftMemo
    end
    object T_detalhesQT_MERC_UN_COMERC: TStringField
      FieldName = 'QT_MERC_UN_COMERC'
      Size = 14
    end
    object T_detalhesNM_UN_MEDID_COMERC: TStringField
      FieldName = 'NM_UN_MEDID_COMERC'
    end
    object T_detalhesVL_UNID_LOC_EMB: TFloatField
      FieldName = 'VL_UNID_LOC_EMB'
    end
    object T_detalhesVL_UNID_COND_VENDA: TStringField
      FieldName = 'VL_UNID_COND_VENDA'
    end
    object T_detalhesCD_PRODUTO: TStringField
      FieldName = 'CD_PRODUTO'
      Size = 15
    end
  end
  object T_itensfaturas: TTable
    AutoCalcFields = False
    AfterPost = T_itensfaturasAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial'
    TableName = 'ItensFaturas'
    Left = 332
    Top = 84
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
    AfterPost = T_tributositemAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;Sequencial_Item;Sequencial'
    TableName = 'Tributacao_Item_Fatura'
    UpdateMode = upWhereChanged
    Left = 348
    Top = 100
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
  object Q_acresdedu: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      'Processos.NR_DECL_IMP_MICRO, '
      'Tributacao_Item_Fatura.Adicao, '
      'Sum(ItensFaturas.Acresc_reduc_Valaduan) /'
      '(select COUNT(*) from Acrescimos_Faturas'
      
        'where Processo = Processos.Codigo and Fatura = ItensFaturas.Fatu' +
        'ra'
      'and Acrescimos_Faturas.CD_MET_ACRES_VALOR not in('#39'13'#39','#39'14'#39')'
      'group by Fatura)'
      'AS SomaDeAcresc_reduc_Valaduan, '
      'Faturas.Incoterm, '
      'Faturas.Moeda, '
      'Acrescimos_Faturas.CD_MET_ACRES_VALOR'
      
        'FROM (((Processos INNER JOIN Tributacao_Item_Fatura ON (Processo' +
        's.Codigo = Tributacao_Item_Fatura.Processo) AND (Processos.Filia' +
        'l = Tributacao_Item_Fatura.Filial) AND (Processos.Empresa = Trib' +
        'utacao_Item_Fatura.Empresa)) INNER JOIN ItensFaturas ON (Tributa' +
        'cao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND (' +
        'Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tribut' +
        'acao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tributac' +
        'ao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Ite' +
        'm_Fatura.Empresa = ItensFaturas.Empresa)) INNER JOIN Faturas ON ' +
        '(ItensFaturas.Fatura = Faturas.Codigo) AND (ItensFaturas.Process' +
        'o = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Filial)' +
        ' AND (ItensFaturas.Empresa = Faturas.Empresa)) INNER JOIN Acresc' +
        'imos_Faturas ON (Faturas.Empresa = Acrescimos_Faturas.Empresa) A' +
        'ND (Faturas.Filial = Acrescimos_Faturas.Filial) AND (Faturas.Pro' +
        'cesso = Acrescimos_Faturas.Processo) AND (Faturas.Codigo = Acres' +
        'cimos_Faturas.Fatura)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      'GROUP BY '
      'Processos.Codigo,'
      'ItensFaturas.Fatura,'
      'Acrescimos_Faturas.CD_MET_ACRES_VALOR,'
      ''
      'Processos.NR_DECL_IMP_MICRO, '
      'Tributacao_Item_Fatura.Adicao, '
      'Faturas.Incoterm, Faturas.Moeda, '
      'Acrescimos_Faturas.CD_MET_ACRES_VALOR'
      
        'HAVING (((Acrescimos_Faturas.CD_MET_ACRES_VALOR)<>"13" And (Acre' +
        'scimos_Faturas.CD_MET_ACRES_VALOR)<>"14"));')
    UpdateMode = upWhereChanged
    Left = 100
    Top = 380
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_acresdeduNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object Q_acresdeduAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object Q_acresdeduSomaDeAcresc_reduc_Valaduan: TFloatField
      FieldName = 'SomaDeAcresc_reduc_Valaduan'
    end
    object Q_acresdeduIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object Q_acresdeduMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object Q_acresdeduCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      FixedChar = True
      Size = 3
    end
  end
  object T_acresval: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_MET_ACRES_VALOR'
    TableName = 'ACRÉSCIMO_VALORAÇÃO'
    Left = 472
    Top = 98
    object T_acresvalNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_acresvalNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_acresvalCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Size = 3
    end
    object T_acresvalVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object T_acresvalCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object T_acresvalVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
    end
  end
  object T_deduval: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_MET_DEDUC_VALOR'
    TableName = 'DEDUÇÃO_VALORAÇÃO'
    Left = 516
    Top = 102
    object T_deduvalNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_deduvalNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_deduvalCD_MET_DEDUC_VALOR: TStringField
      FieldName = 'CD_MET_DEDUC_VALOR'
      Size = 3
    end
    object T_deduvalVL_DEDUCAO_MNEG: TFloatField
      FieldName = 'VL_DEDUCAO_MNEG'
    end
    object T_deduvalCD_MD_NEGOC_DEDUC: TStringField
      FieldName = 'CD_MD_NEGOC_DEDUC'
      Size = 3
    end
    object T_deduvalVL_DEDUCAO_MN: TFloatField
      FieldName = 'VL_DEDUCAO_MN'
    end
  end
  object T_taxaconv: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Moeda'
    TableName = 'Processos_Taxas_Conversao'
    Left = 961
    Top = 305
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
  object Q_atovinc: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, Tributacao_Item_Fatura.Numero_Ato_Legal_II, Atos_Legais.Tipo_' +
        'Ato, Atos_Legais.Tipo_Ato_Legal, Atos_Legais.Orgao_Emissor, Atos' +
        '_Legais.Ano_Ato_Legal, Atos_Legais.EX, Atos_Legais_1.Tipo_Ato, A' +
        'tos_Legais_1.Numero, Atos_Legais_1.EX, Atos_Legais_1.Tipo_Ato_Le' +
        'gal, Atos_Legais_1.Orgao_Emissor, Atos_Legais_1.Ano_Ato_Legal, A' +
        'tos_Legais_2.Tipo_Ato, Atos_Legais_2.Numero, Atos_Legais_2.EX, A' +
        'tos_Legais_2.Tipo_Ato_Legal, Atos_Legais_2.Orgao_Emissor, Atos_L' +
        'egais_2.Ano_Ato_Legal'
      
        'FROM ((((Processos INNER JOIN Tributacao_Item_Fatura ON (Process' +
        'os.Codigo = Tributacao_Item_Fatura.Processo) AND (Processos.Fili' +
        'al = Tributacao_Item_Fatura.Filial) AND (Processos.Empresa = Tri' +
        'butacao_Item_Fatura.Empresa)) INNER JOIN ItensFaturas ON (Tribut' +
        'acao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND ' +
        '(Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tribu' +
        'tacao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tributa' +
        'cao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_It' +
        'em_Fatura.Empresa = ItensFaturas.Empresa)) LEFT JOIN Atos_Legais' +
        ' ON (Tributacao_Item_Fatura.Numero_Ato_Legal_II = Atos_Legais.Nu' +
        'mero) AND (Tributacao_Item_Fatura.Filial = Atos_Legais.Filial) A' +
        'ND (Tributacao_Item_Fatura.Empresa = Atos_Legais.Empresa)) LEFT ' +
        'JOIN Atos_Legais AS Atos_Legais_1 ON (Tributacao_Item_Fatura.Num' +
        'ero_Ato_Legal_IPI = Atos_Legais_1.Numero) AND (Tributacao_Item_F' +
        'atura.Filial = Atos_Legais_1.Filial) AND (Tributacao_Item_Fatura' +
        '.Empresa = Atos_Legais_1.Empresa)) LEFT JOIN Atos_Legais AS Atos' +
        '_Legais_2 ON (Tributacao_Item_Fatura.Numero_Ato_Legal_ALADI = At' +
        'os_Legais_2.Numero) AND (Tributacao_Item_Fatura.Filial = Atos_Le' +
        'gais_2.Filial) AND (Tributacao_Item_Fatura.Empresa = Atos_Legais' +
        '_2.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, Tributacao_Item_Fatura.Numero_Ato_Legal_II, Atos_Legais.Tip' +
        'o_Ato, Atos_Legais.Tipo_Ato_Legal, Atos_Legais.Orgao_Emissor, At' +
        'os_Legais.Ano_Ato_Legal, Atos_Legais.EX, Atos_Legais_1.Tipo_Ato,' +
        ' Atos_Legais_1.Numero, Atos_Legais_1.EX, Atos_Legais_1.Tipo_Ato_' +
        'Legal, Atos_Legais_1.Orgao_Emissor, Atos_Legais_1.Ano_Ato_Legal,' +
        ' Atos_Legais_2.Tipo_Ato, Atos_Legais_2.Numero, Atos_Legais_2.EX,' +
        ' Atos_Legais_2.Tipo_Ato_Legal, Atos_Legais_2.Orgao_Emissor, Atos' +
        '_Legais_2.Ano_Ato_Legal;')
    UpdateMode = upWhereChanged
    Left = 560
    Top = 56
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_atovincNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object Q_atovincAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object Q_atovincNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object Q_atovincTipo_Ato: TStringField
      FieldName = 'Tipo_Ato'
      FixedChar = True
      Size = 1
    end
    object Q_atovincTipo_Ato_Legal: TStringField
      FieldName = 'Tipo_Ato_Legal'
      FixedChar = True
      Size = 10
    end
    object Q_atovincOrgao_Emissor: TStringField
      FieldName = 'Orgao_Emissor'
      FixedChar = True
      Size = 10
    end
    object Q_atovincAno_Ato_Legal: TStringField
      FieldName = 'Ano_Ato_Legal'
      FixedChar = True
      Size = 4
    end
    object Q_atovincEX: TStringField
      FieldName = 'EX'
      FixedChar = True
      Size = 3
    end
    object Q_atovincTipo_Ato_1: TStringField
      FieldName = 'Tipo_Ato_1'
      FixedChar = True
      Size = 1
    end
    object Q_atovincNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 5
    end
    object Q_atovincEX_1: TStringField
      FieldName = 'EX_1'
      FixedChar = True
      Size = 3
    end
    object Q_atovincTipo_Ato_Legal_1: TStringField
      FieldName = 'Tipo_Ato_Legal_1'
      FixedChar = True
      Size = 10
    end
    object Q_atovincOrgao_Emissor_1: TStringField
      FieldName = 'Orgao_Emissor_1'
      FixedChar = True
      Size = 10
    end
    object Q_atovincAno_Ato_Legal_1: TStringField
      FieldName = 'Ano_Ato_Legal_1'
      FixedChar = True
      Size = 4
    end
    object Q_atovincTipo_Ato_2: TStringField
      FieldName = 'Tipo_Ato_2'
      FixedChar = True
      Size = 1
    end
    object Q_atovincNumero_1: TStringField
      FieldName = 'Numero_1'
      FixedChar = True
      Size = 5
    end
    object Q_atovincEX_2: TStringField
      FieldName = 'EX_2'
      FixedChar = True
      Size = 3
    end
    object Q_atovincTipo_Ato_Legal_2: TStringField
      FieldName = 'Tipo_Ato_Legal_2'
      FixedChar = True
      Size = 10
    end
    object Q_atovincOrgao_Emissor_2: TStringField
      FieldName = 'Orgao_Emissor_2'
      FixedChar = True
      Size = 10
    end
    object Q_atovincAno_Ato_Legal_2: TStringField
      FieldName = 'Ano_Ato_Legal_2'
      FixedChar = True
      Size = 4
    end
  end
  object T_acrescimos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Fatura;CD_MET_ACRES_VALOR'
    TableName = 'Acrescimos_Faturas'
    Left = 672
    Top = 120
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
  object T_pagprevisto: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NU_SEQ_PAG_PREV'
    TableName = 'PAGAMENTO_PREVISTO'
    Left = 520
    Top = 134
    object T_pagprevistoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_pagprevistoNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_pagprevistoNU_SEQ_PAG_PREV: TSmallintField
      FieldName = 'NU_SEQ_PAG_PREV'
    end
    object T_pagprevistoDT_PREV_PGTO_360: TStringField
      FieldName = 'DT_PREV_PGTO_360'
      Size = 6
    end
    object T_pagprevistoVL_PREV_PGTO_360: TFloatField
      FieldName = 'VL_PREV_PGTO_360'
    end
  end
  object T_atosvinc: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_ASSUNTO_VINCUL'
    TableName = 'ATO_VINCULADO'
    Left = 260
    Top = 78
    object T_atosvincNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_atosvincNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_atosvincCD_ASSUNTO_VINCUL: TStringField
      FieldName = 'CD_ASSUNTO_VINCUL'
      Size = 1
    end
    object T_atosvincSG_TIPO_ATO_VINCUL: TStringField
      FieldName = 'SG_TIPO_ATO_VINCUL'
      Size = 5
    end
    object T_atosvincSG_ORG_ATO_VINCUL: TStringField
      FieldName = 'SG_ORG_ATO_VINCUL'
      Size = 6
    end
    object T_atosvincDT_ANO_ATO_VINCUL: TStringField
      FieldName = 'DT_ANO_ATO_VINCUL'
      Size = 4
    end
    object T_atosvincNR_ATO_VINCULADO: TStringField
      FieldName = 'NR_ATO_VINCULADO'
      Size = 6
    end
    object T_atosvincNR_EX_ATO_VINCUL: TStringField
      FieldName = 'NR_EX_ATO_VINCUL'
      Size = 3
    end
  end
  object q_embcarga: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Embalagem_Processo.TipoEmbal' +
        'agem, Embalagem_Processo.Quantidade'
      
        'FROM Processos INNER JOIN Embalagem_Processo ON (Processos.Codig' +
        'o = Embalagem_Processo.Processo) AND (Processos.Filial = Embalag' +
        'em_Processo.Filial) AND (Processos.Empresa = Embalagem_Processo.' +
        'Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Embalagem_Processo.TipoEmb' +
        'alagem, Embalagem_Processo.Quantidade;')
    UpdateMode = upWhereChanged
    Left = 249
    Top = 118
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_embcargaNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Origin = 'DBNMSCOMEX.Processos.NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_embcargaTipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.TipoEmbalagem'
      FixedChar = True
      Size = 2
    end
    object q_embcargaQuantidade: TStringField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Quantidade'
      FixedChar = True
      Size = 5
    end
  end
  object T_embcarga: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_EMBALAGEM'
    TableName = 'EMBALAGEM_CARGA'
    Left = 276
    Top = 110
    object T_embcargaNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_embcargaNR_SEQ_EMBALAGEM: TSmallintField
      FieldName = 'NR_SEQ_EMBALAGEM'
    end
    object T_embcargaCD_TIPO_EMBALAGEM: TStringField
      FieldName = 'CD_TIPO_EMBALAGEM'
      Size = 2
    end
    object T_embcargaQT_VOLUME_CARGA: TStringField
      FieldName = 'QT_VOLUME_CARGA'
      Size = 5
    end
  end
  object Q_cargaarm: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Armazem_Processo.Nome_Armaze' +
        'm'
      
        'FROM Processos INNER JOIN Armazem_Processo ON (Processos.Codigo ' +
        '= Armazem_Processo.Processo) AND (Processos.Filial = Armazem_Pro' +
        'cesso.Filial) AND (Processos.Empresa = Armazem_Processo.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Armazem_Processo.Nome_Arma' +
        'zem;')
    UpdateMode = upWhereChanged
    Left = 200
    Top = 116
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_cargaarmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Origin = 'DBNMSCOMEX.Processos.NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object Q_cargaarmNome_Armazem: TStringField
      FieldName = 'Nome_Armazem'
      Origin = 'DBNMSCOMEX.Armazem_Processo.Nome_Armazem'
      FixedChar = True
      Size = 50
    end
  end
  object T_cargaarm: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_ARMAZEM'
    TableName = 'CARGA_ARMAZÉM'
    Left = 224
    Top = 150
    object T_cargaarmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_cargaarmNR_SEQ_ARMAZEM: TSmallintField
      FieldName = 'NR_SEQ_ARMAZEM'
    end
    object T_cargaarmNM_ARMAZEM_CARGA: TStringField
      FieldName = 'NM_ARMAZEM_CARGA'
      Size = 10
    end
  end
  object q_destaquencm: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, ItensFaturas.Destaque_NCM'
      
        'FROM (Processos INNER JOIN Tributacao_Item_Fatura ON (Processos.' +
        'Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filial ' +
        '= Tributacao_Item_Fatura.Filial) AND (Processos.Codigo = Tributa' +
        'cao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tributaca' +
        'o_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao_It' +
        'em_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_Fat' +
        'ura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fatur' +
        'a.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Sequ' +
        'encial_Item = ItensFaturas.Sequencial)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, ItensFaturas.Destaque_NCM;')
    UpdateMode = upWhereChanged
    Left = 372
    Top = 152
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_destaquencmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_destaquencmAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_destaquencmDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
  end
  object t_destaquencm: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NU_SEQ_DESTAQUE'
    TableName = 'DESTAQUE_NCM'
    Left = 380
    Top = 66
    object t_destaquencmNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_destaquencmNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object t_destaquencmNU_SEQ_DESTAQUE: TSmallintField
      FieldName = 'NU_SEQ_DESTAQUE'
    end
    object t_destaquencmNR_DESTAQUE_NCM: TStringField
      FieldName = 'NR_DESTAQUE_NCM'
      Size = 3
    end
  end
  object q_docsinstru: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, '#39'01'#39' AS cod_fat, '#39'FATURA COM' +
        'ERCIAL'#39' AS tipo_doc01, Tributacao_Item_Fatura.Fatura, '#39'02'#39' AS co' +
        'd_co, '#39'CERTIFICADO DE ORIGEM'#39' AS tipo_doc02, Tributacao_Item_Fat' +
        'ura.Certificado_Origem'
      
        'FROM Processos INNER JOIN Tributacao_Item_Fatura ON (Processos.E' +
        'mpresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filial =' +
        ' Tributacao_Item_Fatura.Filial) AND (Processos.Codigo = Tributac' +
        'ao_Item_Fatura.Processo)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Fat' +
        'ura, Tributacao_Item_Fatura.Certificado_Origem;')
    UpdateMode = upWhereChanged
    Left = 656
    Top = 272
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_docsinstruNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_docsinstrucod_fat: TStringField
      FieldName = 'cod_fat'
      FixedChar = True
      Size = 2
    end
    object q_docsinstrutipo_doc01: TStringField
      FieldName = 'tipo_doc01'
      FixedChar = True
      Size = 16
    end
    object q_docsinstruFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_docsinstrucod_co: TStringField
      FieldName = 'cod_co'
      FixedChar = True
      Size = 2
    end
    object q_docsinstrutipo_doc02: TStringField
      FieldName = 'tipo_doc02'
      FixedChar = True
      Size = 21
    end
    object q_docsinstruCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
  end
  object T_docsintru: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_DCTO_INSTR'
    TableName = 'DOCUMENTO_INSTRUÇÃO'
    Left = 408
    Top = 102
    object T_docsintruNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_docsintruNR_SEQ_DCTO_INSTR: TSmallintField
      FieldName = 'NR_SEQ_DCTO_INSTR'
    end
    object T_docsintruCD_TIPO_DCTO_INSTR: TStringField
      FieldName = 'CD_TIPO_DCTO_INSTR'
      Size = 2
    end
    object T_docsintruNR_DCTO_INSTRUCAO: TStringField
      FieldName = 'NR_DCTO_INSTRUCAO'
      Size = 25
    end
    object T_docsintruNM_DCTO_INSTRUCAO: TStringField
      FieldName = 'NM_DCTO_INSTRUCAO'
      Size = 60
    end
  end
  object Q_tributos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, "0001" AS cod_II, "1" AS tipo_aliq, Sum(([itensfaturas].[Base' +
        '_Calc_II]/[itensfaturas].[quantidade])*[Tributacao_item_fatura].' +
        '[quantidade]) AS Base_Calc_II, Tributacao_Item_Fatura.Aliq_NCM_I' +
        'I, Sum(Tributacao_Item_Fatura.Valor_II_Devido) AS SomaDeValor_II' +
        '_Devido, Tributacao_Item_Fatura.Percentual_Reducao_II, Sum(Tribu' +
        'tacao_Item_Fatura.Valor_II_a_recolher) AS SomaDeValor_II_a_recol' +
        'her, "0002" AS cod_IPI, Tributacao_Item_Fatura.Regime_Tributacao' +
        '_IPI, Sum(Tributacao_Item_Fatura.Valor_IPI_a_recolher) AS SomaDe' +
        'Valor_IPI_a_recolher, Sum(Tributacao_Item_Fatura.Valor_IPI_Devid' +
        'o) AS SomaDeValor_IPI_Devido, Tributacao_Item_Fatura.Percentual_' +
        'Reduca_IPI, Faturas.Moeda, Sum(Tributacao_Item_Fatura.Base_Calc_' +
        'IPI) AS SomaDeBase_Calc_IPI, Tributacao_Item_Fatura.ALIQUOTA_ALA' +
        'DI, Tributacao_Item_Fatura.Aliq_NCM_IPI, Tributacao_Item_Fatura.' +
        'CD_REGIME_TRIBUTAR_PISCOFINS, Tributacao_Item_Fatura.PC_ALIQ_RED' +
        'UZIDA_PIS, Tributacao_Item_Fatura.PC_ALIQ_REDUZIDA_COFINS'
      
        'FROM ((Processos INNER JOIN Tributacao_Item_Fatura ON (Processos' +
        '.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filial' +
        ' = Tributacao_Item_Fatura.Filial) AND (Processos.codigo = Tribut' +
        'acao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tributac' +
        'ao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao_I' +
        'tem_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_Fa' +
        'tura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fatu' +
        'ra.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Seq' +
        'uencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON (' +
        'ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Filial' +
        ' = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Processo' +
        ') AND (ItensFaturas.Fatura = Faturas.codigo)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, Tributacao_Item_Fatura.Aliq_NCM_II, Tributacao_Item_Fatura.' +
        'Percentual_Reducao_II, Tributacao_Item_Fatura.Regime_Tributacao_' +
        'IPI, Tributacao_Item_Fatura.Percentual_Reduca_IPI, Faturas.Moeda' +
        ', Tributacao_Item_Fatura.ALIQUOTA_ALADI, Tributacao_Item_Fatura.' +
        'Aliq_NCM_IPI, Tributacao_Item_Fatura.CD_REGIME_TRIBUTAR_PISCOFIN' +
        'S, Tributacao_Item_Fatura.PC_ALIQ_REDUZIDA_PIS, Tributacao_Item_' +
        'Fatura.PC_ALIQ_REDUZIDA_COFINS;')
    UpdateMode = upWhereChanged
    Left = 724
    Top = 264
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_tributosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object Q_tributosAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object Q_tributoscod_II: TStringField
      FieldName = 'cod_II'
      FixedChar = True
      Size = 4
    end
    object Q_tributostipo_aliq: TStringField
      FieldName = 'tipo_aliq'
      FixedChar = True
      Size = 1
    end
    object Q_tributosBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object Q_tributosAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object Q_tributosSomaDeValor_II_Devido: TFloatField
      FieldName = 'SomaDeValor_II_Devido'
    end
    object Q_tributosPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object Q_tributosSomaDeValor_II_a_recolher: TFloatField
      FieldName = 'SomaDeValor_II_a_recolher'
    end
    object Q_tributoscod_IPI: TStringField
      FieldName = 'cod_IPI'
      FixedChar = True
      Size = 4
    end
    object Q_tributosRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object Q_tributosSomaDeValor_IPI_a_recolher: TFloatField
      FieldName = 'SomaDeValor_IPI_a_recolher'
    end
    object Q_tributosSomaDeValor_IPI_Devido: TFloatField
      FieldName = 'SomaDeValor_IPI_Devido'
    end
    object Q_tributosPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object Q_tributosMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object Q_tributosSomaDeBase_Calc_IPI: TFloatField
      FieldName = 'SomaDeBase_Calc_IPI'
    end
    object Q_tributosALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object Q_tributosAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object Q_tributosCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object Q_tributosPC_ALIQ_REDUZIDA_PIS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_PIS'
    end
    object Q_tributosPC_ALIQ_REDUZIDA_COFINS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_COFINS'
    end
  end
  object T_tributo: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_RECEITA_IMPOSTO'
    TableName = 'TRIBUTO'
    Left = 444
    Top = 134
    object T_tributoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_tributoNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_tributoCD_RECEITA_IMPOSTO: TStringField
      FieldName = 'CD_RECEITA_IMPOSTO'
      Size = 4
    end
    object T_tributoCD_TIPO_ALIQ_IPT: TStringField
      FieldName = 'CD_TIPO_ALIQ_IPT'
      Size = 1
    end
    object T_tributoVL_BASE_CALC_ADVAL: TFloatField
      FieldName = 'VL_BASE_CALC_ADVAL'
    end
    object T_tributoPC_ALIQ_NORM_ADVAL: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL'
    end
    object T_tributoVL_CALC_IPT_ADVAL: TFloatField
      FieldName = 'VL_CALC_IPT_ADVAL'
    end
    object T_tributoNM_UN_ALIQ_ESP_IPT: TStringField
      FieldName = 'NM_UN_ALIQ_ESP_IPT'
      Size = 15
    end
    object T_tributoCD_TIPO_RECIPIENTE: TStringField
      FieldName = 'CD_TIPO_RECIPIENTE'
      Size = 2
    end
    object T_tributoQT_ML_RECIPIENTE: TFloatField
      FieldName = 'QT_ML_RECIPIENTE'
    end
    object T_tributoQT_MERC_UN_ALIQ_ES: TFloatField
      FieldName = 'QT_MERC_UN_ALIQ_ES'
    end
    object T_tributoVL_ALIQ_ESPEC_IPT: TFloatField
      FieldName = 'VL_ALIQ_ESPEC_IPT'
    end
    object T_tributoVL_CALC_IPT_ESPEC: TFloatField
      FieldName = 'VL_CALC_IPT_ESPEC'
    end
    object T_tributoCD_TIPO_BENEF_IPI: TStringField
      FieldName = 'CD_TIPO_BENEF_IPI'
      Size = 1
    end
    object T_tributoPC_ALIQ_REDUZIDA: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA'
    end
    object T_tributoPC_REDUCAO_IPT_BLI: TFloatField
      FieldName = 'PC_REDUCAO_IPT_BLI'
    end
    object T_tributoPC_ALIQ_ACOR_TARIF: TFloatField
      FieldName = 'PC_ALIQ_ACOR_TARIF'
    end
    object T_tributoVL_CALC_II_AC_TARI: TFloatField
      FieldName = 'VL_CALC_II_AC_TARI'
    end
    object T_tributoVL_IMPOSTO_DEVIDO: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO'
    end
    object T_tributoVL_IPT_A_RECOLHER: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER'
    end
    object T_tributoCD_TIPO_DIREITO: TStringField
      FieldName = 'CD_TIPO_DIREITO'
      Size = 1
    end
    object T_tributoNR_NOTA_COMPL_TIPI: TStringField
      FieldName = 'NR_NOTA_COMPL_TIPI'
      Size = 2
    end
  end
  object q_pagprev: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, PG_PARC_VAR.[Data_de_Pagamento], PG_PARC_VAR.Percentual, Sum(' +
        '([itensfaturas].[valor_aduaneiro]/[itensfaturas].[quantidade])*[' +
        'tributacao_item_fatura].[quantidade]) AS Valor_Aduaneiro'
      
        'FROM (((Processos INNER JOIN Tributacao_Item_Fatura ON (Processo' +
        's.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filia' +
        'l = Tributacao_Item_Fatura.Filial) AND (Processos.codigo = Tribu' +
        'tacao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tributa' +
        'cao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao_' +
        'Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_F' +
        'atura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fat' +
        'ura.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Se' +
        'quencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON ' +
        '(ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Filia' +
        'l = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Process' +
        'o) AND (ItensFaturas.Fatura = Faturas.codigo)) INNER JOIN PG_PAR' +
        'C_VAR ON (Faturas.Empresa = PG_PARC_VAR.Empresa) AND (Faturas.Fi' +
        'lial = PG_PARC_VAR.Filial) AND (Faturas.Processo = PG_PARC_VAR.P' +
        'rocesso) AND (Faturas.codigo = PG_PARC_VAR.Fatura)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, PG_PARC_VAR.[Data_de_Pagamento], PG_PARC_VAR.Percentual;')
    UpdateMode = upWhereChanged
    Left = 716
    Top = 292
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_pagprevNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_pagprevAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_pagprevData_de_Pagamento: TStringField
      FieldName = 'Data_de_Pagamento'
      FixedChar = True
      Size = 6
    end
    object q_pagprevPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object q_pagprevValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
  end
  object T_pagtributos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_PGTO_TRIB'
    TableName = 'PAGAMENTO_TRIBUTOS'
    Left = 292
    Top = 174
    object T_pagtributosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_pagtributosNR_SEQ_PGTO_TRIB: TSmallintField
      FieldName = 'NR_SEQ_PGTO_TRIB'
    end
    object T_pagtributosCD_RECEITA_PGTO: TStringField
      FieldName = 'CD_RECEITA_PGTO'
      Size = 4
    end
    object T_pagtributosCD_BANCO_PGTO_TRIB: TStringField
      FieldName = 'CD_BANCO_PGTO_TRIB'
      Size = 3
    end
    object T_pagtributosNR_AGENC_PGTO_TRIB: TStringField
      FieldName = 'NR_AGENC_PGTO_TRIB'
      Size = 4
    end
    object T_pagtributosVL_TRIBUTO_PAGO: TFloatField
      FieldName = 'VL_TRIBUTO_PAGO'
    end
    object T_pagtributosDT_PGTO_TRIBUTO: TStringField
      FieldName = 'DT_PGTO_TRIBUTO'
      Size = 8
    end
    object T_pagtributosVL_MULTA_PGTO_TRIB: TFloatField
      FieldName = 'VL_MULTA_PGTO_TRIB'
    end
    object T_pagtributosVL_JUROS_PGTO_TRIB: TFloatField
      FieldName = 'VL_JUROS_PGTO_TRIB'
    end
  end
  object q_pagtributos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Max(Tributacao_Item_Fatura.A' +
        'dicao) AS nadicoes, '#39'0086'#39' AS cod_ii, '#39'1038'#39' AS cod_ipi, '#39'7811'#39' ' +
        'AS cod_sis, Importadores.Banco, Importadores.Agencia, Sum(([Valo' +
        'r_II_a_recolher]*[TAXA_CONVERSAO])) AS somadeValor_II_a_recolher' +
        ', Sum(([Valor_IPI_a_recolher]*[taxa_conversao])) AS somadeValor_' +
        'IPI_a_recolher'
      
        'FROM ((((Processos INNER JOIN Tributacao_Item_Fatura ON (Process' +
        'os.Codigo = Tributacao_Item_Fatura.Processo) AND (Processos.Fili' +
        'al = Tributacao_Item_Fatura.Filial) AND (Processos.Empresa = Tri' +
        'butacao_Item_Fatura.Empresa)) INNER JOIN ItensFaturas ON (Tribut' +
        'acao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND ' +
        '(Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tribu' +
        'tacao_Item_Fatura.Processo = ItensFaturas.Processo) AND (Tributa' +
        'cao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_It' +
        'em_Fatura.Empresa = ItensFaturas.Empresa)) INNER JOIN Faturas ON' +
        ' (ItensFaturas.Fatura = Faturas.Codigo) AND (ItensFaturas.Proces' +
        'so = Faturas.Processo) AND (ItensFaturas.Filial = Faturas.Filial' +
        ') AND (ItensFaturas.Empresa = Faturas.Empresa)) INNER JOIN Impor' +
        'tadores ON (Processos.Empresa = Importadores.Empresa) AND (Proce' +
        'ssos.Filial = Importadores.Filial) AND (Processos.Importador = I' +
        'mportadores.Codigo)) INNER JOIN Processos_Taxas_Conversao ON (Fa' +
        'turas.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas.Proc' +
        'esso = Processos_Taxas_Conversao.Processo) AND (Faturas.Filial =' +
        ' Processos_Taxas_Conversao.Filial) AND (Faturas.Empresa = Proces' +
        'sos_Taxas_Conversao.Empresa)'
      
        'WHERE (((Processos.Empresa)=:empresa) AND ((Processos.Filial)=:f' +
        'ilial) AND ((Processos.Codigo)=:processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Importadores.Banco, Import' +
        'adores.Agencia;')
    UpdateMode = upWhereChanged
    Left = 680
    Top = 304
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_pagtributosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_pagtributosnadicoes: TStringField
      FieldName = 'nadicoes'
      FixedChar = True
      Size = 3
    end
    object q_pagtributoscod_ii: TStringField
      FieldName = 'cod_ii'
      FixedChar = True
      Size = 4
    end
    object q_pagtributoscod_ipi: TStringField
      FieldName = 'cod_ipi'
      FixedChar = True
      Size = 4
    end
    object q_pagtributoscod_sis: TStringField
      FieldName = 'cod_sis'
      FixedChar = True
      Size = 4
    end
    object q_pagtributosBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object q_pagtributosAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object q_pagtributossomadeValor_II_a_recolher: TFloatField
      FieldName = 'somadeValor_II_a_recolher'
    end
    object q_pagtributossomadeValor_IPI_a_recolher: TFloatField
      FieldName = 'somadeValor_IPI_a_recolher'
    end
  end
  object T_pagvinculado: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 
      'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;NR_SEQ_PAGAMENTO;CD_FORMA_PAGA' +
      'MENTO'
    TableName = 'PAGAMENTO_VINCULADO'
    Left = 320
    Top = 194
    object T_pagvinculadoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_pagvinculadoNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_pagvinculadoNR_SEQ_PAGAMENTO: TSmallintField
      FieldName = 'NR_SEQ_PAGAMENTO'
    end
    object T_pagvinculadoCD_FORMA_PAGAMENTO: TStringField
      FieldName = 'CD_FORMA_PAGAMENTO'
      Size = 1
    end
    object T_pagvinculadoIN_PAGAMENTO_MN: TBooleanField
      FieldName = 'IN_PAGAMENTO_MN'
    end
    object T_pagvinculadoCD_BANCO_PAGAMENTO: TStringField
      FieldName = 'CD_BANCO_PAGAMENTO'
      Size = 5
    end
    object T_pagvinculadoCD_PRACA_PAGAMENTO: TStringField
      FieldName = 'CD_PRACA_PAGAMENTO'
      Size = 4
    end
    object T_pagvinculadoNR_OP_CAMBIO: TStringField
      FieldName = 'NR_OP_CAMBIO'
      Size = 8
    end
    object T_pagvinculadoVL_VINC_MD_CAMBIO: TFloatField
      FieldName = 'VL_VINC_MD_CAMBIO'
    end
    object T_pagvinculadoNR_COMPR_CAMBIO: TStringField
      FieldName = 'NR_COMPR_CAMBIO'
      Size = 14
    end
    object T_pagvinculadoCD_TP_COMPR_CAMBIO: TStringField
      FieldName = 'CD_TP_COMPR_CAMBIO'
      Size = 1
    end
  end
  object q_pagvinculados: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adica' +
        'o, PG_PERC_VINC.[forma_de_pagamento], PG_PERC_VINC.[moeda_nacion' +
        'al], PG_PERC_VINC.Banco, PG_PERC_VINC.Praca, PG_PERC_VINC.Contra' +
        'to, PG_PERC_VINC.[valor_percentual], PG_PERC_VINC.[cnpj_comprado' +
        'r], PG_PERC_VINC.[tipo_cnpj], Faturas.Incoterm, Sum(([itensfatur' +
        'as].[VMLE]/[itensfaturas].[quantidade])*[tributacao_item_fatura]' +
        '.[quantidade]) AS VMLE, Sum(([itensfaturas].[valor_aduaneiro]/[i' +
        'tensfaturas].[quantidade])*[tributacao_item_fatura].[quantidade]' +
        ') AS Valor_Aduaneiro'
      
        'FROM (((Processos INNER JOIN Tributacao_Item_Fatura ON (Processo' +
        's.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Filia' +
        'l = Tributacao_Item_Fatura.Filial) AND (Processos.Codigo = Tribu' +
        'tacao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tributa' +
        'cao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao_' +
        'Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_F' +
        'atura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fat' +
        'ura.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Se' +
        'quencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON ' +
        '(ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Filia' +
        'l = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Process' +
        'o) AND (ItensFaturas.Fatura = Faturas.Codigo)) INNER JOIN PG_PER' +
        'C_VINC ON (Faturas.Codigo = PG_PERC_VINC.Fatura) AND (Faturas.Pr' +
        'ocesso = PG_PERC_VINC.Processo) AND (Faturas.Filial = PG_PERC_VI' +
        'NC.Filial) AND (Faturas.Empresa = PG_PERC_VINC.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Tributacao_Item_Fatura.Adi' +
        'cao, PG_PERC_VINC.[forma_de_pagamento], PG_PERC_VINC.[moeda_naci' +
        'onal], PG_PERC_VINC.Banco, PG_PERC_VINC.Praca, PG_PERC_VINC.Cont' +
        'rato, PG_PERC_VINC.[valor_percentual], PG_PERC_VINC.[cnpj_compra' +
        'dor], PG_PERC_VINC.[tipo_cnpj], Faturas.Incoterm;')
    UpdateMode = upWhereChanged
    Left = 692
    Top = 264
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_pagvinculadosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_pagvinculadosAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_pagvinculadosforma_de_pagamento: TStringField
      FieldName = 'forma_de_pagamento'
      FixedChar = True
      Size = 1
    end
    object q_pagvinculadosmoeda_nacional: TIntegerField
      FieldName = 'moeda_nacional'
    end
    object q_pagvinculadosBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object q_pagvinculadosPraca: TStringField
      FieldName = 'Praca'
      FixedChar = True
      Size = 4
    end
    object q_pagvinculadosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 10
    end
    object q_pagvinculadosvalor_percentual: TFloatField
      FieldName = 'valor_percentual'
    end
    object q_pagvinculadoscnpj_comprador: TStringField
      FieldName = 'cnpj_comprador'
      FixedChar = True
      Size = 14
    end
    object q_pagvinculadostipo_cnpj: TStringField
      FieldName = 'tipo_cnpj'
      FixedChar = True
      Size = 1
    end
    object q_pagvinculadosIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object q_pagvinculadosVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object q_pagvinculadosValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
  end
  object q_apagadis: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'DELETE DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO, DECLARAÇÃO_IMPOR' +
        'TAÇÃO.NR_IDENT_USUARIO, DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_PROT, ' +
        'DECLARAÇÃO_IMPORTAÇÃO.NR_DECLARACAO_IMP, DECLARAÇÃO_IMPORTAÇÃO.D' +
        'T_PROCESSAMENTO, DECLARAÇÃO_IMPORTAÇÃO.DT_TRANSMISSAO, DECLARAÇÃ' +
        'O_IMPORTAÇÃO.DT_REGISTRO_DI, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_DECLA' +
        'RACAO, DECLARAÇÃO_IMPORTAÇÃO.CD_MOTIVO_TRANS, DECLARAÇÃO_IMPORTA' +
        'ÇÃO.CD_TIPO_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NR_IMPORTADOR, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.CD_PAIS_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NM_' +
        'IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NR_TEL_IMPORTADOR, DECLARAÇÃO_' +
        'IMPORTAÇÃO.ED_LOGR_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_NR_IMPOR' +
        'TADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_COMPL_IMPO, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.ED_BA_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_MUN_IMPORTADOR, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.ED_UF_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_CE' +
        'P_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.NR_CPF_REPR_LEGAL, DECLARAÇÃ' +
        'O_IMPORTAÇÃO.CD_MODALIDADE_DESP, DECLARAÇÃO_IMPORTAÇÃO.IN_OPERAC' +
        'AO_FUNDAP, DECLARAÇÃO_IMPORTAÇÃO.CD_URF_ENTR_CARGA, DECLARAÇÃO_I' +
        'MPORTAÇÃO.CD_URF_DESPACHO, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_CONSIG,' +
        ' DECLARAÇÃO_IMPORTAÇÃO.NR_CONSIGNATARIO, DECLARAÇÃO_IMPORTAÇÃO.N' +
        'M_CONSIGNATARIO, DECLARAÇÃO_IMPORTAÇÃO.CD_PAIS_PROC_CARGA, DECLA' +
        'RAÇÃO_IMPORTAÇÃO.CD_VIA_TRANSP_CARG, DECLARAÇÃO_IMPORTAÇÃO.IN_MU' +
        'LTIMODAL, DECLARAÇÃO_IMPORTAÇÃO.NR_VEICULO_TRANSP, DECLARAÇÃO_IM' +
        'PORTAÇÃO.NM_VEICULO_TRANSP, DECLARAÇÃO_IMPORTAÇÃO.NM_TRANSPORTAD' +
        'OR, DECLARAÇÃO_IMPORTAÇÃO.CD_BANDEIRA_TRANSP, DECLARAÇÃO_IMPORTA' +
        'ÇÃO.CD_TIPO_AG_CARGA, DECLARAÇÃO_IMPORTAÇÃO.NR_AGENTE_CARGA, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.CD_TIPO_DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.NR_' +
        'DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.NR_DCTO_CARGA_MAST, DECLARAÇÃO' +
        '_IMPORTAÇÃO.NM_LOCAL_EMBARQUE, DECLARAÇÃO_IMPORTAÇÃO.DT_EMBARQUE' +
        ', DECLARAÇÃO_IMPORTAÇÃO.CD_UTIL_DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.PB_CARGA, DECLARAÇÃO_IMPORTAÇÃO.PL_CARGA, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.DT_CHEGADA_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_MANIFESTO, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.NR_MANIFESTO, DECLARAÇÃO_IMPORTAÇÃO.CD_RECINT' +
        'O_ALFAND, DECLARAÇÃO_IMPORTAÇÃO.CD_SETOR_ARMAZENAM, DECLARAÇÃO_I' +
        'MPORTAÇÃO.CD_MOEDA_FRETE, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_FRT_PREPA' +
        'ID, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_FRT_COLLECT, DECLARAÇÃO_IMPORTA' +
        'ÇÃO.VL_FRETE_TNAC_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOTAL_FRETE_MN,' +
        ' DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_SEGURO, DECLARAÇÃO_IMPORTAÇÃO.VL' +
        '_TOT_SEGURO_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOTAL_SEG_MN, DECLARA' +
        'ÇÃO_IMPORTAÇÃO.CD_MOEDA_DESPESAS, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_D' +
        'ESPS_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_DESPS_MN, DECLARAÇÃO_IMP' +
        'ORTAÇÃO.CD_MOEDA_MLE, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_MLE_MNEG, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.VL_TOTAL_MLE_MN, DECLARAÇÃO_IMPORTAÇÃO.IN_MOE' +
        'DA_UNICA, DECLARAÇÃO_IMPORTAÇÃO.TX_INFO_COMPL, DECLARAÇÃO_IMPORT' +
        'AÇÃO.CD_TIPO_PGTO_TRIB, DECLARAÇÃO_IMPORTAÇÃO.NR_CONTA_PGTO_TRIB'
      'FROM DECLARAÇÃO_IMPORTAÇÃO'
      'WHERE (((DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 12
    Top = 428
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00103ADM'
      end>
  end
  object q_geradi: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DECLARAÇÃO_IMPORTAÇÃO ( NR_DECL_IMP_MICRO, NR_IDENT_' +
        'USUARIO, CD_TIPO_DECLARACAO, CD_MOTIVO_TRANS, CD_TIPO_IMPORTADOR' +
        ', NR_IMPORTADOR, CD_PAIS_IMPORTADOR, NM_IMPORTADOR, NR_TEL_IMPOR' +
        'TADOR, ED_LOGR_IMPORTADOR, ED_NR_IMPORTADOR, ED_COMPL_IMPO, ED_B' +
        'A_IMPORTADOR, ED_MUN_IMPORTADOR, ED_UF_IMPORTADOR, ED_CEP_IMPORT' +
        'ADOR, NR_CPF_REPR_LEGAL, CD_MODALIDADE_DESP, IN_OPERACAO_FUNDAP,' +
        ' CD_URF_ENTR_CARGA, CD_URF_DESPACHO, CD_TIPO_CONSIG, NR_CONSIGNA' +
        'TARIO, NM_CONSIGNATARIO, CD_PAIS_PROC_CARGA, CD_VIA_TRANSP_CARG,' +
        ' IN_MULTIMODAL, NR_VEICULO_TRANSP, NM_VEICULO_TRANSP, NM_TRANSPO' +
        'RTADOR, CD_BANDEIRA_TRANSP, CD_TIPO_AG_CARGA, NR_AGENTE_CARGA, C' +
        'D_TIPO_DCTO_CARGA, NR_DCTO_CARGA, NR_DCTO_CARGA_MAST, NM_LOCAL_E' +
        'MBARQUE, DT_EMBARQUE, CD_UTIL_DCTO_CARGA, PB_CARGA, PL_CARGA, DT' +
        '_CHEGADA_CARGA, CD_TIPO_MANIFESTO, NR_MANIFESTO, CD_RECINTO_ALFA' +
        'ND, CD_SETOR_ARMAZENAM, CD_MOEDA_FRETE, VL_TOT_FRT_PREPAID, VL_T' +
        'OT_FRT_COLLECT, VL_FRETE_TNAC_MNEG, VL_TOTAL_FRETE_MN, CD_MOEDA_' +
        'SEGURO, VL_TOT_SEGURO_MNEG, VL_TOTAL_SEG_MN, CD_MOEDA_DESPESAS, ' +
        'VL_TOT_DESPS_MNEG, VL_TOT_DESPS_MN, CD_MOEDA_MLE, VL_TOT_MLE_MNE' +
        'G, VL_TOTAL_MLE_MN, IN_MOEDA_UNICA, TX_INFO_COMPL, CD_TIPO_PGTO_' +
        'TRIB, NR_CONTA_PGTO_TRIB )'
      
        'SELECT Mid([declaração_importação].[NR_DECL_IMP_MICRO],1,5)+:qti' +
        'po2 AS Expr1, [declaração_importação].[NR_IDENT_USUARIO]+"-"+:QT' +
        'IPO AS Expr2, :QTIPONOVADI AS Expr3, DECLARAÇÃO_IMPORTAÇÃO.CD_MO' +
        'TIVO_TRANS, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_IMPORTADOR, DECLARAÇÃO' +
        '_IMPORTAÇÃO.NR_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.CD_PAIS_IMPORTA' +
        'DOR, DECLARAÇÃO_IMPORTAÇÃO.NM_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.' +
        'NR_TEL_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_LOGR_IMPORTADOR, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.ED_NR_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_CO' +
        'MPL_IMPO, DECLARAÇÃO_IMPORTAÇÃO.ED_BA_IMPORTADOR, DECLARAÇÃO_IMP' +
        'ORTAÇÃO.ED_MUN_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.ED_UF_IMPORTADO' +
        'R, DECLARAÇÃO_IMPORTAÇÃO.ED_CEP_IMPORTADOR, DECLARAÇÃO_IMPORTAÇÃ' +
        'O.NR_CPF_REPR_LEGAL, DECLARAÇÃO_IMPORTAÇÃO.CD_MODALIDADE_DESP, D' +
        'ECLARAÇÃO_IMPORTAÇÃO.IN_OPERACAO_FUNDAP, DECLARAÇÃO_IMPORTAÇÃO.C' +
        'D_URF_ENTR_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_URF_DESPACHO, DECLARA' +
        'ÇÃO_IMPORTAÇÃO.CD_TIPO_CONSIG, DECLARAÇÃO_IMPORTAÇÃO.NR_CONSIGNA' +
        'TARIO, DECLARAÇÃO_IMPORTAÇÃO.NM_CONSIGNATARIO, DECLARAÇÃO_IMPORT' +
        'AÇÃO.CD_PAIS_PROC_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_VIA_TRANSP_CAR' +
        'G, DECLARAÇÃO_IMPORTAÇÃO.IN_MULTIMODAL, DECLARAÇÃO_IMPORTAÇÃO.NR' +
        '_VEICULO_TRANSP, DECLARAÇÃO_IMPORTAÇÃO.NM_VEICULO_TRANSP, DECLAR' +
        'AÇÃO_IMPORTAÇÃO.NM_TRANSPORTADOR, DECLARAÇÃO_IMPORTAÇÃO.CD_BANDE' +
        'IRA_TRANSP, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_AG_CARGA, DECLARAÇÃO_I' +
        'MPORTAÇÃO.NR_AGENTE_CARGA, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_DCTO_CA' +
        'RGA, DECLARAÇÃO_IMPORTAÇÃO.NR_DCTO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.' +
        'NR_DCTO_CARGA_MAST, DECLARAÇÃO_IMPORTAÇÃO.NM_LOCAL_EMBARQUE, DEC' +
        'LARAÇÃO_IMPORTAÇÃO.DT_EMBARQUE, DECLARAÇÃO_IMPORTAÇÃO.CD_UTIL_DC' +
        'TO_CARGA, DECLARAÇÃO_IMPORTAÇÃO.PB_CARGA, DECLARAÇÃO_IMPORTAÇÃO.' +
        'PL_CARGA, DECLARAÇÃO_IMPORTAÇÃO.DT_CHEGADA_CARGA, DECLARAÇÃO_IMP' +
        'ORTAÇÃO.CD_TIPO_MANIFESTO, DECLARAÇÃO_IMPORTAÇÃO.NR_MANIFESTO, D' +
        'ECLARAÇÃO_IMPORTAÇÃO.CD_RECINTO_ALFAND, DECLARAÇÃO_IMPORTAÇÃO.CD' +
        '_SETOR_ARMAZENAM, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_FRETE, DECLARAÇ' +
        'ÃO_IMPORTAÇÃO.VL_TOT_FRT_PREPAID, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_F' +
        'RT_COLLECT, DECLARAÇÃO_IMPORTAÇÃO.VL_FRETE_TNAC_MNEG, DECLARAÇÃO' +
        '_IMPORTAÇÃO.VL_TOTAL_FRETE_MN, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_SE' +
        'GURO, DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_SEGURO_MNEG, DECLARAÇÃO_IMPOR' +
        'TAÇÃO.VL_TOTAL_SEG_MN, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_DESPESAS, ' +
        'DECLARAÇÃO_IMPORTAÇÃO.VL_TOT_DESPS_MNEG, DECLARAÇÃO_IMPORTAÇÃO.V' +
        'L_TOT_DESPS_MN, DECLARAÇÃO_IMPORTAÇÃO.CD_MOEDA_MLE, DECLARAÇÃO_I' +
        'MPORTAÇÃO.VL_TOT_MLE_MNEG, DECLARAÇÃO_IMPORTAÇÃO.VL_TOTAL_MLE_MN' +
        ', DECLARAÇÃO_IMPORTAÇÃO.IN_MOEDA_UNICA, DECLARAÇÃO_IMPORTAÇÃO.TX' +
        '_INFO_COMPL, DECLARAÇÃO_IMPORTAÇÃO.CD_TIPO_PGTO_TRIB, DECLARAÇÃO' +
        '_IMPORTAÇÃO.NR_CONTA_PGTO_TRIB'
      'FROM DECLARAÇÃO_IMPORTAÇÃO'
      'WHERE (((DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:QDI));')
    Left = 40
    Top = 428
    ParamData = <
      item
        DataType = ftString
        Name = 'qtipo2'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QTIPONOVADI'
        ParamType = ptUnknown
        Value = '5'
      end
      item
        DataType = ftString
        Name = 'QDI'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_geraadicoes: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO OP_ADIÇÃO_DE_IMPORTAÇÃO ( NR_DECL_IMP_MICRO, NR_OP_I' +
        'MP_MICRO, CD_URF_ENTR_MERC, CD_VIA_TRANSPORTE, IN_MULTIMODAL, NM' +
        '_FORN_ESTR, ED_LOGR_FORN_ESTR, ED_NR_FORN_ESTR, ED_COMPL_FORN_ES' +
        'TR, ED_CIDAD_FORN_ESTR, ED_ESTAD_FORN_ESTR, CD_PAIS_AQUIS_MERC, ' +
        'CD_MERCADORIA_NCM, CD_PAIS_PROC_MERC, CD_AUSENCIA_FABRIC, NM_FAB' +
        'RICANTE_MERC, ED_LOGR_FABRIC, ED_NR_FABRIC, ED_COMPL_FABRIC, ED_' +
        'CIDAD_FABRIC, ED_ESTADO_FABRIC, CD_PAIS_ORIG_MERC, CD_MERC_NBM_S' +
        'H, CD_MERC_NALADI_NCC, CD_MERC_NALADI_SH, PL_MERCADORIA, QT_UN_E' +
        'STATISTICA, CD_APLICACAO_MERC, VL_MERC_EMB_MN, CD_MOEDA_NEGOCIAD' +
        'A, CD_INCOTERMS_VENDA, NM_LOC_COND_VENDA, VL_MERC_COND_VENDA, VL' +
        '_MERC_VENDA_MN, VL_FRETE_MERC_MNEG, CD_MD_FRETE_MERC, VL_FRETE_M' +
        'ERC_MN, VL_SEG_MERC_MNEG, CD_MOEDA_SEG_MERC, VL_SEG_MERC_MN, VL_' +
        'UNID_LOC_EMP, CD_METOD_VALORACAO, CD_VINC_IMPO_EXPO, CD_TIPO_ACO' +
        'RDO_TAR, CD_ACORDO_ALADI, CD_REGIME_TRIBUTAR, CD_FUND_LEG_REGIME' +
        ', CD_MOTIVO_ADM_TEMP, NR_DCTO_REDUCAO, VL_DESPESAS_MNEG, CD_MOED' +
        'AS_DESPESAS, VL_DESPESAS_MN, PC_COEF_REDUC_II, VL_CALC_DCR_DOLAR' +
        ', VL_II_CALC_DCR_MN, VL_II_DEVIDO_ZFM, VL_II_A_REC_ZFM, CD_COBER' +
        'T_CAMBIAL, CD_MODALIDADE_PGTO, CD_ORGAO_FIN_INTER, CD_MOTIVO_SEM' +
        '_COB, QT_PARC_FINANC_360, CD_PERIOD_PGTO_360, QT_PERIOD_PGTO_360' +
        ', VL_TOT_FINANC_360, PC_TAXA_JUROS, CD_TAXA_JUROS, VL_FINANC_SUP' +
        '_360, NR_ROF, IN_PGTO_VARIAV_360, IN_JUROS_ATE_360, PC_COMISSAO_' +
        'AG_IMP, VL_COMISSAO_AG_IMP, CD_TIPO_AGENTE_IMP, NR_AGENTE_IMP, C' +
        'D_BANC_AGENTE_IMP, CD_AGENC_AGENT_IMP, IN_BEM_ENCOMENDA, IN_MATE' +
        'RIAL_USADO, TX_COMPL_VL_ADUAN, IN_IPI_NAO_TRIBUT, vl_merc_loc_em' +
        'b_mn, vl_base_calculo_mn, NR_OPER_TRAT_PREV, VL_ALIQ_ICMS, IN_RE' +
        'DUC_BASE_CALC, CD_FUND_LEG_REDUC, CD_REGIME_TRIBUTAR_PISCOFINS, ' +
        'CD_FUND_LEG_REGIME_PISCOFINS )'
      
        'SELECT Mid([OP_ADIÇÃO_DE_IMPORTAÇÃO].[NR_DECL_IMP_MICRO],1,5)+:Q' +
        'TIPO AS Expr1, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO, OP_ADIÇÃ' +
        'O_DE_IMPORTAÇÃO.CD_URF_ENTR_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_VIA' +
        '_TRANSPORTE, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_MULTIMODAL, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.NM_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_LOGR_FORN_E' +
        'STR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_NR_FORN_ESTR, OP_ADIÇÃO_DE_IMPOR' +
        'TAÇÃO.ED_COMPL_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_CIDAD_FORN_' +
        'ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_ESTAD_FORN_ESTR, OP_ADIÇÃO_DE_I' +
        'MPORTAÇÃO.CD_PAIS_AQUIS_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERCADO' +
        'RIA_NCM, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_PAIS_PROC_MERC, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.CD_AUSENCIA_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.NM_FABRI' +
        'CANTE_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_LOGR_FABRIC, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.ED_NR_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_COMPL_FABRI' +
        'C, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_CIDAD_FABRIC, OP_ADIÇÃO_DE_IMPORTA' +
        'ÇÃO.ED_ESTADO_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_PAIS_ORIG_MERC,' +
        ' OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERC_NBM_SH, OP_ADIÇÃO_DE_IMPORTAÇÃO' +
        '.CD_MERC_NALADI_NCC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERC_NALADI_SH, ' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.PL_MERCADORIA, OP_ADIÇÃO_DE_IMPORTAÇÃO.Q' +
        'T_UN_ESTATISTICA, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_APLICACAO_MERC, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.VL_MERC_EMB_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_' +
        'MOEDA_NEGOCIADA, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_INCOTERMS_VENDA, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.NM_LOC_COND_VENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'VL_MERC_COND_VENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_MERC_VENDA_MN, OP' +
        '_ADIÇÃO_DE_IMPORTAÇÃO.VL_FRETE_MERC_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃ' +
        'O.CD_MD_FRETE_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_FRETE_MERC_MN, OP' +
        '_ADIÇÃO_DE_IMPORTAÇÃO.VL_SEG_MERC_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'CD_MOEDA_SEG_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_SEG_MERC_MN, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.VL_UNID_LOC_EMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_M' +
        'ETOD_VALORACAO, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_VINC_IMPO_EXPO, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.CD_TIPO_ACORDO_TAR, OP_ADIÇÃO_DE_IMPORTAÇÃO.C' +
        'D_ACORDO_ALADI, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR, OP_A' +
        'DIÇÃO_DE_IMPORTAÇÃO.CD_FUND_LEG_REGIME, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'CD_MOTIVO_ADM_TEMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DCTO_REDUCAO, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.VL_DESPESAS_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃO.C' +
        'D_MOEDAS_DESPESAS, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_DESPESAS_MN, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.PC_COEF_REDUC_II, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_' +
        'CALC_DCR_DOLAR, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_II_CALC_DCR_MN, OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO.VL_II_DEVIDO_ZFM, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_' +
        'II_A_REC_ZFM, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_COBERT_CAMBIAL, OP_ADIÇ' +
        'ÃO_DE_IMPORTAÇÃO.CD_MODALIDADE_PGTO, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_' +
        'ORGAO_FIN_INTER, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MOTIVO_SEM_COB, OP_A' +
        'DIÇÃO_DE_IMPORTAÇÃO.QT_PARC_FINANC_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'CD_PERIOD_PGTO_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.QT_PERIOD_PGTO_360, ' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_TOT_FINANC_360, OP_ADIÇÃO_DE_IMPORTAÇ' +
        'ÃO.PC_TAXA_JUROS, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_TAXA_JUROS, OP_ADIÇ' +
        'ÃO_DE_IMPORTAÇÃO.VL_FINANC_SUP_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_R' +
        'OF, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_PGTO_VARIAV_360, OP_ADIÇÃO_DE_IMP' +
        'ORTAÇÃO.IN_JUROS_ATE_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.PC_COMISSAO_AG' +
        '_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_COMISSAO_AG_IMP, OP_ADIÇÃO_DE_I' +
        'MPORTAÇÃO.CD_TIPO_AGENTE_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_AGENTE_' +
        'IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_BANC_AGENTE_IMP, OP_ADIÇÃO_DE_IM' +
        'PORTAÇÃO.CD_AGENC_AGENT_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_BEM_ENCO' +
        'MENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_MATERIAL_USADO, OP_ADIÇÃO_DE_I' +
        'MPORTAÇÃO.TX_COMPL_VL_ADUAN, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_IPI_NAO_' +
        'TRIBUT, OP_ADIÇÃO_DE_IMPORTAÇÃO.vl_merc_loc_emb_mn, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.vl_base_calculo_mn, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OPER_' +
        'TRAT_PREV , VL_ALIQ_ICMS, IN_REDUC_BASE_CALC, CD_FUND_LEG_REDUC,' +
        ' CD_REGIME_TRIBUTAR_PISCOFINS, CD_FUND_LEG_REGIME_PISCOFINS'
      'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:QREGIME) A' +
        'ND ((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:QNUM));')
    Left = 68
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_geradet: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DETALHE_MERCADORIA ( NR_DECL_IMP_MICRO, NR_OP_IMP_MI' +
        'CRO, NU_SEQ_DETALHE, TX_DESC_DET_MERC, QT_MERC_UN_COMERC, NM_UN_' +
        'MEDID_COMERC, VL_UNID_LOC_EMB, VL_UNID_COND_VENDA, CD_PRODUTO )'
      
        'SELECT Mid([DETALHE_MERCADORIA].[NR_DECL_IMP_MICRO],1,5)+:QTIPO ' +
        'AS Expr1, DETALHE_MERCADORIA.NR_OP_IMP_MICRO, DETALHE_MERCADORIA' +
        '.NU_SEQ_DETALHE, DETALHE_MERCADORIA.TX_DESC_DET_MERC, DETALHE_ME' +
        'RCADORIA.QT_MERC_UN_COMERC, DETALHE_MERCADORIA.NM_UN_MEDID_COMER' +
        'C, DETALHE_MERCADORIA.VL_UNID_LOC_EMB, DETALHE_MERCADORIA.VL_UNI' +
        'D_COND_VENDA, DETALHE_MERCADORIA.CD_PRODUTO'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN DETALHE_MERCADORIA ON (O' +
        'P_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = DETALHE_MERCADORIA.NR_O' +
        'P_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = DE' +
        'TALHE_MERCADORIA.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 96
    Top = 428
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_acresval: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO ACRÉSCIMO_VALORAÇÃO ( NR_DECL_IMP_MICRO, NR_OP_IMP_M' +
        'ICRO, CD_MET_ACRES_VALOR, VL_ACRESCIMO_MOEDA, CD_MD_NEGOC_ACRES,' +
        ' VL_ACRESCIMO_MN )'
      
        'SELECT Mid([ACRÉSCIMO_VALORAÇÃO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO' +
        ' AS Expr1, ACRÉSCIMO_VALORAÇÃO.NR_OP_IMP_MICRO, ACRÉSCIMO_VALORA' +
        'ÇÃO.CD_MET_ACRES_VALOR, ACRÉSCIMO_VALORAÇÃO.VL_ACRESCIMO_MOEDA, ' +
        'ACRÉSCIMO_VALORAÇÃO.CD_MD_NEGOC_ACRES, ACRÉSCIMO_VALORAÇÃO.VL_AC' +
        'RESCIMO_MN'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN ACRÉSCIMO_VALORAÇÃO ON (' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = ACRÉSCIMO_VALORAÇÃO.NR' +
        '_OP_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = ' +
        'ACRÉSCIMO_VALORAÇÃO.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 152
    Top = 444
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_atos: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO ATO_VINCULADO ( NR_DECL_IMP_MICRO, NR_OP_IMP_MICRO, ' +
        'CD_ASSUNTO_VINCUL, SG_TIPO_ATO_VINCUL, SG_ORG_ATO_VINCUL, DT_ANO' +
        '_ATO_VINCUL, NR_ATO_VINCULADO, NR_EX_ATO_VINCUL )'
      
        'SELECT Mid([ATO_VINCULADO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Ex' +
        'pr1, ATO_VINCULADO.NR_OP_IMP_MICRO, ATO_VINCULADO.CD_ASSUNTO_VIN' +
        'CUL, ATO_VINCULADO.SG_TIPO_ATO_VINCUL, ATO_VINCULADO.SG_ORG_ATO_' +
        'VINCUL, ATO_VINCULADO.DT_ANO_ATO_VINCUL, ATO_VINCULADO.NR_ATO_VI' +
        'NCULADO, ATO_VINCULADO.NR_EX_ATO_VINCUL'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN ATO_VINCULADO ON (OP_ADI' +
        'ÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = ATO_VINCULADO.NR_OP_IMP_MICR' +
        'O) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = ATO_VINCULAD' +
        'O.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 192
    Top = 252
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_emb: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO EMBALAGEM_CARGA ( NR_DECL_IMP_MICRO, NR_SEQ_EMBALAGE' +
        'M, CD_TIPO_EMBALAGEM, QT_VOLUME_CARGA )'
      
        'SELECT Mid([EMBALAGEM_CARGA].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS ' +
        'Expr1, EMBALAGEM_CARGA.NR_SEQ_EMBALAGEM, EMBALAGEM_CARGA.CD_TIPO' +
        '_EMBALAGEM, EMBALAGEM_CARGA.QT_VOLUME_CARGA'
      'FROM EMBALAGEM_CARGA'
      'WHERE (((EMBALAGEM_CARGA.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 180
    Top = 268
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_car: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO CARGA_ARMAZÉM ( NR_DECL_IMP_MICRO, NR_SEQ_ARMAZEM, N' +
        'M_ARMAZEM_CARGA )'
      
        'SELECT Mid([CARGA_ARMAZÉM].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Ex' +
        'pr1, CARGA_ARMAZÉM.NR_SEQ_ARMAZEM, CARGA_ARMAZÉM.NM_ARMAZEM_CARG' +
        'A'
      'FROM CARGA_ARMAZÉM'
      'WHERE (((CARGA_ARMAZÉM.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 176
    Top = 244
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_desncm: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DESTAQUE_NCM ( NR_DECL_IMP_MICRO, NR_OP_IMP_MICRO, N' +
        'U_SEQ_DESTAQUE, NR_DESTAQUE_NCM )'
      
        'SELECT Mid([DESTAQUE_NCM].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Exp' +
        'r1, DESTAQUE_NCM.NR_OP_IMP_MICRO, DESTAQUE_NCM.NU_SEQ_DESTAQUE, ' +
        'DESTAQUE_NCM.NR_DESTAQUE_NCM'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN DESTAQUE_NCM ON (OP_ADIÇ' +
        'ÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = DESTAQUE_NCM.NR_OP_IMP_MICRO)' +
        ' AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = DESTAQUE_NCM.N' +
        'R_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 172
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'QREGIME'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object t_arrumaadicoes: TTable
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO'
    TableName = 'OP_ADIÇÃO_DE_IMPORTAÇÃO'
    Left = 124
    Top = 428
    object t_arrumaadicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_arrumaadicoesNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object t_arrumaadicoesCD_URF_ENTR_MERC: TStringField
      FieldName = 'CD_URF_ENTR_MERC'
      Size = 7
    end
    object t_arrumaadicoesCD_VIA_TRANSPORTE: TStringField
      FieldName = 'CD_VIA_TRANSPORTE'
      Size = 2
    end
    object t_arrumaadicoesIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object t_arrumaadicoesNM_FORN_ESTR: TStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object t_arrumaadicoesED_LOGR_FORN_ESTR: TStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object t_arrumaadicoesED_NR_FORN_ESTR: TStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object t_arrumaadicoesED_COMPL_FORN_ESTR: TStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object t_arrumaadicoesED_CIDAD_FORN_ESTR: TStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object t_arrumaadicoesED_ESTAD_FORN_ESTR: TStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object t_arrumaadicoesCD_PAIS_AQUIS_MERC: TStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object t_arrumaadicoesCD_MERCADORIA_NCM: TStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object t_arrumaadicoesCD_PAIS_PROC_MERC: TStringField
      FieldName = 'CD_PAIS_PROC_MERC'
      Size = 3
    end
    object t_arrumaadicoesCD_AUSENCIA_FABRIC: TStringField
      FieldName = 'CD_AUSENCIA_FABRIC'
      Size = 1
    end
    object t_arrumaadicoesNM_FABRICANTE_MERC: TStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object t_arrumaadicoesED_LOGR_FABRIC: TStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object t_arrumaadicoesED_NR_FABRIC: TStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object t_arrumaadicoesED_COMPL_FABRIC: TStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object t_arrumaadicoesED_CIDAD_FABRIC: TStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
    object t_arrumaadicoesED_ESTADO_FABRIC: TStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object t_arrumaadicoesCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object t_arrumaadicoesCD_MERC_NBM_SH: TStringField
      FieldName = 'CD_MERC_NBM_SH'
      Size = 10
    end
    object t_arrumaadicoesCD_MERC_NALADI_NCC: TStringField
      FieldName = 'CD_MERC_NALADI_NCC'
      Size = 7
    end
    object t_arrumaadicoesCD_MERC_NALADI_SH: TStringField
      FieldName = 'CD_MERC_NALADI_SH'
      Size = 8
    end
    object t_arrumaadicoesPL_MERCADORIA: TStringField
      FieldName = 'PL_MERCADORIA'
      Size = 15
    end
    object t_arrumaadicoesQT_UN_ESTATISTICA: TStringField
      FieldName = 'QT_UN_ESTATISTICA'
      Size = 14
    end
    object t_arrumaadicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object t_arrumaadicoesVL_MERC_EMB_MN: TFloatField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object t_arrumaadicoesCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object t_arrumaadicoesCD_INCOTERMS_VENDA: TStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object t_arrumaadicoesNM_LOC_COND_VENDA: TStringField
      FieldName = 'NM_LOC_COND_VENDA'
      Size = 60
    end
    object t_arrumaadicoesVL_MERC_COND_VENDA: TFloatField
      FieldName = 'VL_MERC_COND_VENDA'
    end
    object t_arrumaadicoesVL_MERC_VENDA_MN: TFloatField
      FieldName = 'VL_MERC_VENDA_MN'
    end
    object t_arrumaadicoesVL_FRETE_MERC_MNEG: TFloatField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object t_arrumaadicoesCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object t_arrumaadicoesVL_FRETE_MERC_MN: TFloatField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object t_arrumaadicoesVL_SEG_MERC_MNEG: TFloatField
      FieldName = 'VL_SEG_MERC_MNEG'
    end
    object t_arrumaadicoesCD_MOEDA_SEG_MERC: TStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object t_arrumaadicoesVL_SEG_MERC_MN: TFloatField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object t_arrumaadicoesVL_UNID_LOC_EMP: TFloatField
      FieldName = 'VL_UNID_LOC_EMP'
    end
    object t_arrumaadicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object t_arrumaadicoesCD_VINC_IMPO_EXPO: TStringField
      FieldName = 'CD_VINC_IMPO_EXPO'
      Size = 1
    end
    object t_arrumaadicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object t_arrumaadicoesCD_ACORDO_ALADI: TStringField
      FieldName = 'CD_ACORDO_ALADI'
      Size = 3
    end
    object t_arrumaadicoesCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object t_arrumaadicoesCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object t_arrumaadicoesCD_MOTIVO_ADM_TEMP: TStringField
      FieldName = 'CD_MOTIVO_ADM_TEMP'
      Size = 2
    end
    object t_arrumaadicoesNR_DCTO_REDUCAO: TStringField
      FieldName = 'NR_DCTO_REDUCAO'
      Size = 8
    end
    object t_arrumaadicoesVL_DESPESAS_MNEG: TFloatField
      FieldName = 'VL_DESPESAS_MNEG'
    end
    object t_arrumaadicoesCD_MOEDAS_DESPESAS: TStringField
      FieldName = 'CD_MOEDAS_DESPESAS'
      Size = 3
    end
    object t_arrumaadicoesVL_DESPESAS_MN: TFloatField
      FieldName = 'VL_DESPESAS_MN'
    end
    object t_arrumaadicoesPC_COEF_REDUC_II: TFloatField
      FieldName = 'PC_COEF_REDUC_II'
    end
    object t_arrumaadicoesVL_CALC_DCR_DOLAR: TFloatField
      FieldName = 'VL_CALC_DCR_DOLAR'
    end
    object t_arrumaadicoesVL_II_CALC_DCR_MN: TFloatField
      FieldName = 'VL_II_CALC_DCR_MN'
    end
    object t_arrumaadicoesVL_II_DEVIDO_ZFM: TFloatField
      FieldName = 'VL_II_DEVIDO_ZFM'
    end
    object t_arrumaadicoesVL_II_A_REC_ZFM: TFloatField
      FieldName = 'VL_II_A_REC_ZFM'
    end
    object t_arrumaadicoesCD_COBERT_CAMBIAL: TStringField
      FieldName = 'CD_COBERT_CAMBIAL'
      Size = 1
    end
    object t_arrumaadicoesCD_MODALIDADE_PGTO: TStringField
      FieldName = 'CD_MODALIDADE_PGTO'
      Size = 2
    end
    object t_arrumaadicoesCD_ORGAO_FIN_INTER: TStringField
      FieldName = 'CD_ORGAO_FIN_INTER'
      Size = 2
    end
    object t_arrumaadicoesCD_MOTIVO_SEM_COB: TStringField
      FieldName = 'CD_MOTIVO_SEM_COB'
      Size = 2
    end
    object t_arrumaadicoesQT_PARC_FINANC_360: TStringField
      FieldName = 'QT_PARC_FINANC_360'
      Size = 3
    end
    object t_arrumaadicoesCD_PERIOD_PGTO_360: TStringField
      FieldName = 'CD_PERIOD_PGTO_360'
      Size = 1
    end
    object t_arrumaadicoesQT_PERIOD_PGTO_360: TStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object t_arrumaadicoesVL_TOT_FINANC_360: TFloatField
      FieldName = 'VL_TOT_FINANC_360'
    end
    object t_arrumaadicoesPC_TAXA_JUROS: TFloatField
      FieldName = 'PC_TAXA_JUROS'
    end
    object t_arrumaadicoesCD_TAXA_JUROS: TStringField
      FieldName = 'CD_TAXA_JUROS'
      Size = 4
    end
    object t_arrumaadicoesVL_FINANC_SUP_360: TFloatField
      FieldName = 'VL_FINANC_SUP_360'
    end
    object t_arrumaadicoesNR_ROF: TStringField
      FieldName = 'NR_ROF'
      Size = 8
    end
    object t_arrumaadicoesIN_PGTO_VARIAV_360: TBooleanField
      FieldName = 'IN_PGTO_VARIAV_360'
    end
    object t_arrumaadicoesIN_JUROS_ATE_360: TBooleanField
      FieldName = 'IN_JUROS_ATE_360'
    end
    object t_arrumaadicoesPC_COMISSAO_AG_IMP: TFloatField
      FieldName = 'PC_COMISSAO_AG_IMP'
    end
    object t_arrumaadicoesVL_COMISSAO_AG_IMP: TFloatField
      FieldName = 'VL_COMISSAO_AG_IMP'
    end
    object t_arrumaadicoesCD_TIPO_AGENTE_IMP: TStringField
      FieldName = 'CD_TIPO_AGENTE_IMP'
      Size = 1
    end
    object t_arrumaadicoesNR_AGENTE_IMP: TStringField
      FieldName = 'NR_AGENTE_IMP'
      Size = 14
    end
    object t_arrumaadicoesCD_BANC_AGENTE_IMP: TStringField
      FieldName = 'CD_BANC_AGENTE_IMP'
      Size = 5
    end
    object t_arrumaadicoesCD_AGENC_AGENT_IMP: TStringField
      FieldName = 'CD_AGENC_AGENT_IMP'
      Size = 4
    end
    object t_arrumaadicoesIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object t_arrumaadicoesIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object t_arrumaadicoesTX_COMPL_VL_ADUAN: TStringField
      FieldName = 'TX_COMPL_VL_ADUAN'
      Size = 250
    end
    object t_arrumaadicoesIN_IPI_NAO_TRIBUT: TBooleanField
      FieldName = 'IN_IPI_NAO_TRIBUT'
    end
    object t_arrumaadicoesvl_merc_loc_emb_mn: TFloatField
      FieldName = 'vl_merc_loc_emb_mn'
    end
    object t_arrumaadicoesvl_base_calculo_mn: TFloatField
      FieldName = 'vl_base_calculo_mn'
    end
    object t_arrumaadicoesNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
  end
  object q_doci: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO DOCUMENTO_INSTRUÇÃO ( NR_DECL_IMP_MICRO, NR_SEQ_DCTO' +
        '_INSTR, CD_TIPO_DCTO_INSTR, NR_DCTO_INSTRUCAO, NM_DCTO_INSTRUCAO' +
        ' )'
      
        'SELECT Mid([DOCUMENTO_INSTRUÇÃO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO' +
        ' AS Expr1, DOCUMENTO_INSTRUÇÃO.NR_SEQ_DCTO_INSTR, DOCUMENTO_INST' +
        'RUÇÃO.CD_TIPO_DCTO_INSTR, DOCUMENTO_INSTRUÇÃO.NR_DCTO_INSTRUCAO,' +
        ' DOCUMENTO_INSTRUÇÃO.NM_DCTO_INSTRUCAO'
      'FROM DOCUMENTO_INSTRUÇÃO'
      'WHERE (((DOCUMENTO_INSTRUÇÃO.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 412
    Top = 212
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_trib: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO TRIBUTO ( NR_DECL_IMP_MICRO, NR_OP_IMP_MICRO, CD_REC' +
        'EITA_IMPOSTO, CD_TIPO_ALIQ_IPT, VL_BASE_CALC_ADVAL, PC_ALIQ_NORM' +
        '_ADVAL, VL_CALC_IPT_ADVAL, NM_UN_ALIQ_ESP_IPT, CD_TIPO_RECIPIENT' +
        'E, QT_ML_RECIPIENTE, QT_MERC_UN_ALIQ_ES, VL_ALIQ_ESPEC_IPT, VL_C' +
        'ALC_IPT_ESPEC, CD_TIPO_BENEF_IPI, PC_ALIQ_REDUZIDA, PC_REDUCAO_I' +
        'PT_BLI, PC_ALIQ_ACOR_TARIF, VL_CALC_II_AC_TARI, VL_IMPOSTO_DEVID' +
        'O, VL_IPT_A_RECOLHER, CD_TIPO_DIREITO, NR_NOTA_COMPL_TIPI )'
      
        'SELECT Mid([TRIBUTO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Expr1, T' +
        'RIBUTO.NR_OP_IMP_MICRO, TRIBUTO.CD_RECEITA_IMPOSTO, TRIBUTO.CD_T' +
        'IPO_ALIQ_IPT, TRIBUTO.VL_BASE_CALC_ADVAL, TRIBUTO.PC_ALIQ_NORM_A' +
        'DVAL, TRIBUTO.VL_CALC_IPT_ADVAL, TRIBUTO.NM_UN_ALIQ_ESP_IPT, TRI' +
        'BUTO.CD_TIPO_RECIPIENTE, TRIBUTO.QT_ML_RECIPIENTE, TRIBUTO.QT_ME' +
        'RC_UN_ALIQ_ES, TRIBUTO.VL_ALIQ_ESPEC_IPT, TRIBUTO.VL_CALC_IPT_ES' +
        'PEC, TRIBUTO.CD_TIPO_BENEF_IPI, TRIBUTO.PC_ALIQ_REDUZIDA, TRIBUT' +
        'O.PC_REDUCAO_IPT_BLI, TRIBUTO.PC_ALIQ_ACOR_TARIF, TRIBUTO.VL_CAL' +
        'C_II_AC_TARI, TRIBUTO.VL_IMPOSTO_DEVIDO, TRIBUTO.VL_IPT_A_RECOLH' +
        'ER, TRIBUTO.CD_TIPO_DIREITO, TRIBUTO.NR_NOTA_COMPL_TIPI'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN TRIBUTO ON (OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.NR_OP_IMP_MICRO = TRIBUTO.NR_OP_IMP_MICRO) AND (OP_A' +
        'DIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = TRIBUTO.NR_DECL_IMP_MICR' +
        'O)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 448
    Top = 252
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_pagpre: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PAGAMENTO_PREVISTO ( NR_DECL_IMP_MICRO, NR_OP_IMP_MI' +
        'CRO, NU_SEQ_PAG_PREV, DT_PREV_PGTO_360, VL_PREV_PGTO_360 )'
      
        'SELECT Mid([PAGAMENTO_PREVISTO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO ' +
        'AS Expr1, PAGAMENTO_PREVISTO.NR_OP_IMP_MICRO, PAGAMENTO_PREVISTO' +
        '.NU_SEQ_PAG_PREV, PAGAMENTO_PREVISTO.DT_PREV_PGTO_360, PAGAMENTO' +
        '_PREVISTO.VL_PREV_PGTO_360'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN PAGAMENTO_PREVISTO ON (O' +
        'P_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = PAGAMENTO_PREVISTO.NR_O' +
        'P_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = PA' +
        'GAMENTO_PREVISTO.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 464
    Top = 268
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_pagvin: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PAGAMENTO_VINCULADO ( NR_DECL_IMP_MICRO, NR_OP_IMP_M' +
        'ICRO, NR_SEQ_PAGAMENTO, CD_FORMA_PAGAMENTO, IN_PAGAMENTO_MN, CD_' +
        'BANCO_PAGAMENTO, CD_PRACA_PAGAMENTO, NR_OP_CAMBIO, VL_VINC_MD_CA' +
        'MBIO, NR_COMPR_CAMBIO, CD_TP_COMPR_CAMBIO )'
      
        'SELECT Mid([PAGAMENTO_VINCULADO].[NR_DECL_IMP_MICRO],1,5)+:QTIPO' +
        ' AS Expr1, PAGAMENTO_VINCULADO.NR_OP_IMP_MICRO, PAGAMENTO_VINCUL' +
        'ADO.NR_SEQ_PAGAMENTO, PAGAMENTO_VINCULADO.CD_FORMA_PAGAMENTO, PA' +
        'GAMENTO_VINCULADO.IN_PAGAMENTO_MN, PAGAMENTO_VINCULADO.CD_BANCO_' +
        'PAGAMENTO, PAGAMENTO_VINCULADO.CD_PRACA_PAGAMENTO, PAGAMENTO_VIN' +
        'CULADO.NR_OP_CAMBIO, PAGAMENTO_VINCULADO.VL_VINC_MD_CAMBIO, PAGA' +
        'MENTO_VINCULADO.NR_COMPR_CAMBIO, PAGAMENTO_VINCULADO.CD_TP_COMPR' +
        '_CAMBIO'
      
        'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO INNER JOIN PAGAMENTO_VINCULADO ON (' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OP_IMP_MICRO = PAGAMENTO_VINCULADO.NR' +
        '_OP_IMP_MICRO) AND (OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO = ' +
        'PAGAMENTO_VINCULADO.NR_DECL_IMP_MICRO)'
      
        'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum) AND (' +
        '(OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_REGIME_TRIBUTAR)=:qregime));')
    Left = 468
    Top = 244
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'QNUM'
        ParamType = ptUnknown
        Value = '00103/01'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '5'
      end>
  end
  object q_procdi: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PROCESSO_DI ( NR_DECL_IMP_MICRO, NR_SEQ_PROCESSO, CD' +
        '_TIPO_PROCESSO, NR_PROCESSO_INSTR )'
      
        'SELECT Mid([PROCESSO_DI].[NR_DECL_IMP_MICRO],1,5)+:QTIPO AS Expr' +
        '1, PROCESSO_DI.NR_SEQ_PROCESSO, PROCESSO_DI.CD_TIPO_PROCESSO, PR' +
        'OCESSO_DI.NR_PROCESSO_INSTR'
      'FROM PROCESSO_DI'
      'WHERE (((PROCESSO_DI.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 432
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'QTIPO'
        ParamType = ptUnknown
        Value = 'ADM'
      end
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
  end
  object q_acertapesodi: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      
        'SELECT OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO, Sum(Val([OP_AD' +
        'IÇÃO_DE_IMPORTAÇÃO].[PL_MERCADORIA])/100000) AS peso_liquido'
      'FROM OP_ADIÇÃO_DE_IMPORTAÇÃO'
      'GROUP BY OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO'
      'HAVING (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:qnum));')
    Left = 484
    Top = 212
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00103/01'
      end>
    object q_acertapesodiNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object q_acertapesodipeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
  end
  object q_acertafretseg: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Faturas.Processo, Tributacao_Item_Fatura.Regime_Tributaca' +
        'o_II, Sum([itensfaturas].[Rateio_Frete_prepaid]*[itensfaturas].[' +
        'quantidade]) AS prepaid, Sum(([itensfaturas].[Rateio_Frete_colle' +
        'ct]*[itensfaturas].[quantidade])) AS collect, Sum(([itensfaturas' +
        '].[Rateio_Frete_ternac]*[itensfaturas].[quantidade])) AS ternac,' +
        ' Sum(([itensfaturas].[Rateio_seguro]*[itensfaturas].[quantidade]' +
        ')) AS seguro, Faturas.Moeda, Processos_Taxas_Conversao.Taxa_conv' +
        'ersao, Processos_Taxas_Conversao.Taxa_conversaoc, fre.Moeda, fre' +
        '.Taxa_conversao AS Taxa_conversaofre, fre.Taxa_conversaoc AS Tax' +
        'a_conversaocfre, seg.Moeda, seg.Taxa_conversao AS Taxa_conversao' +
        'seg, seg.Taxa_conversaoc AS Taxa_conversaocseg'
      
        'FROM (((((Faturas INNER JOIN Processos_Taxas_Conversao ON (Fatur' +
        'as.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas.Process' +
        'o = Processos_Taxas_Conversao.Processo) AND (Faturas.Filial = Pr' +
        'ocessos_Taxas_Conversao.Filial) AND (Faturas.Empresa = Processos' +
        '_Taxas_Conversao.Empresa)) INNER JOIN ItensFaturas ON (Faturas.C' +
        'odigo = ItensFaturas.Fatura) AND (Faturas.Processo = ItensFatura' +
        's.Processo) AND (Faturas.Filial = ItensFaturas.Filial) AND (Fatu' +
        'ras.Empresa = ItensFaturas.Empresa)) INNER JOIN Tributacao_Item_' +
        'Fatura ON (ItensFaturas.Sequencial = Tributacao_Item_Fatura.Sequ' +
        'encial_Item) AND (ItensFaturas.Fatura = Tributacao_Item_Fatura.F' +
        'atura) AND (ItensFaturas.Processo = Tributacao_Item_Fatura.Proce' +
        'sso) AND (ItensFaturas.Filial = Tributacao_Item_Fatura.Filial) A' +
        'ND (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa)) INNE' +
        'R JOIN Conhecimento_Processo ON (Faturas.Processo = Conhecimento' +
        '_Processo.Processo) AND (Faturas.Filial = Conhecimento_Processo.' +
        'Filial) AND (Faturas.Empresa = Conhecimento_Processo.Empresa)) I' +
        'NNER JOIN Processos_Taxas_Conversao AS fre ON (Conhecimento_Proc' +
        'esso.Moeda_Frete = fre.Moeda) AND (Conhecimento_Processo.Process' +
        'o = fre.Processo) AND (Conhecimento_Processo.Empresa = fre.Empre' +
        'sa) AND (Conhecimento_Processo.Filial = fre.Filial)) LEFT JOIN P' +
        'rocessos_Taxas_Conversao AS seg ON (Conhecimento_Processo.Moeda_' +
        'Seguro = seg.Moeda) AND (Conhecimento_Processo.Processo = seg.Pr' +
        'ocesso) AND (Conhecimento_Processo.Filial = seg.Filial) AND (Con' +
        'hecimento_Processo.Empresa = seg.Empresa)'
      
        'GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Regime_Tributa' +
        'cao_II, Faturas.Moeda, Processos_Taxas_Conversao.Taxa_conversao,' +
        ' Processos_Taxas_Conversao.Taxa_conversaoc, fre.Moeda, fre.Taxa_' +
        'conversao, fre.Taxa_conversaoc, seg.Moeda, seg.Taxa_conversao, s' +
        'eg.Taxa_conversaoc'
      
        'HAVING (((Faturas.Processo)=:qnum) AND ((Tributacao_Item_Fatura.' +
        'Regime_Tributacao_II)=:qregime));')
    Left = 1144
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00001180'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_acertafretsegProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_acertafretsegRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_acertafretsegprepaid: TFloatField
      FieldName = 'prepaid'
    end
    object q_acertafretsegcollect: TFloatField
      FieldName = 'collect'
    end
    object q_acertafretsegternac: TFloatField
      FieldName = 'ternac'
    end
    object q_acertafretsegseguro: TFloatField
      FieldName = 'seguro'
    end
    object q_acertafretsegMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object q_acertafretsegTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_acertafretsegTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
    object q_acertafretsegMoeda_1: TStringField
      FieldName = 'Moeda_1'
      FixedChar = True
      Size = 3
    end
    object q_acertafretsegTaxa_conversaofre: TFloatField
      FieldName = 'Taxa_conversaofre'
    end
    object q_acertafretsegTaxa_conversaocfre: TFloatField
      FieldName = 'Taxa_conversaocfre'
    end
    object q_acertafretsegMoeda_2: TStringField
      FieldName = 'Moeda_2'
      FixedChar = True
      Size = 3
    end
    object q_acertafretsegTaxa_conversaoseg: TFloatField
      FieldName = 'Taxa_conversaoseg'
    end
    object q_acertafretsegTaxa_conversaocseg: TFloatField
      FieldName = 'Taxa_conversaocseg'
    end
  end
  object q_acertapagtrib: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Max(Tributacao_Item_Fatura.A' +
        'dicao) AS nadicoes, "0086" AS cod_ii, "1038" AS cod_ipi, "7811" ' +
        'AS cod_sis, Importadores.Banco, Importadores.Agencia, Sum(Tribut' +
        'acao_Item_Fatura.Valor_II_a_recolher) AS SomaDeValor_II_a_recolh' +
        'er, Sum(Tributacao_Item_Fatura.Valor_IPI_a_recolher) AS SomaDeVa' +
        'lor_IPI_a_recolher, Tributacao_Item_Fatura.Regime_Tributacao_II,' +
        ' Processos_Taxas_Conversao.Taxa_conversao, Processos_Taxas_Conve' +
        'rsao.Taxa_conversaoc'
      
        'FROM ((((Processos INNER JOIN Tributacao_Item_Fatura ON (Process' +
        'os.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Fili' +
        'al = Tributacao_Item_Fatura.Filial) AND (Processos.Codigo = Trib' +
        'utacao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tribut' +
        'acao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao' +
        '_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_' +
        'Fatura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fa' +
        'tura.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.S' +
        'equencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON' +
        ' (ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Fili' +
        'al = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Proces' +
        'so) AND (ItensFaturas.Fatura = Faturas.Codigo)) INNER JOIN Impor' +
        'tadores ON (Processos.Importador = Importadores.Codigo) AND (Pro' +
        'cessos.Filial = Importadores.Filial) AND (Processos.Empresa = Im' +
        'portadores.Empresa)) INNER JOIN Processos_Taxas_Conversao ON (Fa' +
        'turas.Empresa = Processos_Taxas_Conversao.Empresa) AND (Faturas.' +
        'Filial = Processos_Taxas_Conversao.Filial) AND (Faturas.Processo' +
        ' = Processos_Taxas_Conversao.Processo) AND (Faturas.Moeda = Proc' +
        'essos_Taxas_Conversao.Moeda)'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Importadores.Banco, Import' +
        'adores.Agencia, Tributacao_Item_Fatura.Regime_Tributacao_II, Pro' +
        'cessos_Taxas_Conversao.Taxa_conversao, Processos_Taxas_Conversao' +
        '.Taxa_conversaoc'
      
        'HAVING (((Processos.NR_DECL_IMP_MICRO)=:qnum) AND ((Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_II)=:qregime));')
    Left = 1164
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00001180'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_acertapagtribNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_acertapagtribnadicoes: TStringField
      FieldName = 'nadicoes'
      FixedChar = True
      Size = 3
    end
    object q_acertapagtribcod_ii: TStringField
      FieldName = 'cod_ii'
      FixedChar = True
      Size = 4
    end
    object q_acertapagtribcod_ipi: TStringField
      FieldName = 'cod_ipi'
      FixedChar = True
      Size = 4
    end
    object q_acertapagtribcod_sis: TStringField
      FieldName = 'cod_sis'
      FixedChar = True
      Size = 4
    end
    object q_acertapagtribBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object q_acertapagtribAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object q_acertapagtribSomaDeValor_II_a_recolher: TFloatField
      FieldName = 'SomaDeValor_II_a_recolher'
    end
    object q_acertapagtribSomaDeValor_IPI_a_recolher: TFloatField
      FieldName = 'SomaDeValor_IPI_a_recolher'
    end
    object q_acertapagtribRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_acertapagtribTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_acertapagtribTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
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
    Left = 136
    Top = 272
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
  object T_transpprocesso: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Conhecimento_Processo'
    UpdateMode = upWhereChanged
    Left = 108
    Top = 108
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
    object T_transpprocessoMultimodal: TIntegerField
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
    object T_transpprocessoOperacao_FUNDAP: TIntegerField
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
    object T_transpprocessoBandeira: TStringField
      FieldName = 'Bandeira'
      FixedChar = True
      Size = 5
    end
  end
  object T_importadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Importador'
    TableName = 'Importadores'
    Left = 20
    Top = 144
    object T_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_importadoresFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object T_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object T_importadoresPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object T_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object T_importadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object T_importadoresTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      FixedChar = True
      Size = 1
    end
    object T_importadoresEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object T_importadoresNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object T_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object T_importadoresBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object T_importadoresCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object T_importadoresCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object T_importadoresUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object T_importadoresEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object T_importadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object T_importadoresBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object T_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object T_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object T_importadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object T_importadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object T_importadoreslink: TStringField
      FieldName = 'link'
      FixedChar = True
      Size = 50
    end
    object T_importadoresCAE: TStringField
      FieldName = 'CAE'
      FixedChar = True
      Size = 15
    end
    object T_importadoresTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 15
    end
    object T_importadoresAtivo: TIntegerField
      FieldName = 'Ativo'
    end
    object T_importadoresAcesso_WEB_MS: TIntegerField
      FieldName = 'Acesso_WEB_MS'
    end
    object T_importadoresAcesso_WEB_CLI: TIntegerField
      FieldName = 'Acesso_WEB_CLI'
    end
    object T_importadoresAcesso_WEB_REC: TIntegerField
      FieldName = 'Acesso_WEB_REC'
    end
    object T_importadoresBASE_ICMS: TIntegerField
      FieldName = 'BASE_ICMS'
    end
    object T_importadoresExporta_Para_Siscomex: TBooleanField
      FieldName = 'Exporta_Para_Siscomex'
    end
  end
  object T_numerador: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNSISCOMEX'
    TableName = 'NUMERADOR_DECLARAÇÃO'
    Left = 61
    Top = 218
    object T_numeradorNR_PROV_DECLARACAO: TIntegerField
      FieldName = 'NR_PROV_DECLARACAO'
    end
    object T_numeradorNR_ANO_DECLARACAO: TSmallintField
      FieldName = 'NR_ANO_DECLARACAO'
    end
  end
  object q_infcomp: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresas.Razao_Social, Filiais.Descricao, Conhecimento_Pr' +
        'ocesso.PLaca, Conhecimento_Processo.Embarcacao, Conhecimento_Pro' +
        'cesso.Tipodoccarga, Conhecimento_Processo.Numerodoccarga, Conhec' +
        'imento_Processo.Numeromaster, Conhecimento_Processo.Tipomanifest' +
        'o, Conhecimento_Processo.Numeromanifesto, Conhecimento_Processo.' +
        'Codigo_Presenca_Carga, Conhecimento_Processo.URF_chegada, Conhec' +
        'imento_Processo.Data_Chegada_URF_Cheg, Conhecimento_Processo.URF' +
        '_Despacho, Conhecimento_Processo.Data_Chegada_URF_Desp, Conhecim' +
        'ento_Processo.Recinto_Alfandegario, Conhecimento_Processo.Setor_' +
        'Alfandegario, Concargas.Codigo, Concargas.Descricao_tipo, Concar' +
        'gas.Lacre, Faturas.Codigo, Faturas.ROF_BACEN,PG_PERC_VINC.Contra' +
        'to, Tributacao_Item_Fatura.Adicao, Tributacao_Item_Fatura.Certif' +
        'icado_Origem, Tributacao_Item_Fatura.Ato_Concessorio, Tributacao' +
        '_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item_Fatura.Numero_Ato_' +
        'Legal_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_II, Tribut' +
        'acao_Item_Fatura.Fundamento_Legal_II, Tributacao_Item_Fatura.Num' +
        'ero_Ato_Legal_II, Tributacao_Item_Fatura.Regime_Tributacao_IPI, ' +
        'Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributacao_Item_Fat' +
        'ura.Percentual_Reducao_II, Tributacao_Item_Fatura.Percentual_Red' +
        'uca_IPI, Tributacao_Item_Fatura.ALIQUOTA_ALADI'
      
        'FROM (((((((Processos INNER JOIN Empresas ON Processos.Empresa =' +
        ' Empresas.Codigo) INNER JOIN Filiais ON (Processos.Filial = Fili' +
        'ais.Codigo_Filial) AND (Processos.Empresa = Filiais.Codigo_Empre' +
        'sa)) INNER JOIN Conhecimento_Processo ON (Processos.Codigo = Con' +
        'hecimento_Processo.Processo) AND (Processos.Filial = Conheciment' +
        'o_Processo.Filial) AND (Processos.Empresa = Conhecimento_Process' +
        'o.Empresa)) LEFT JOIN Concargas ON (Processos.Codigo = Concargas' +
        '.Processo) AND (Processos.Filial = Concargas.Filial) AND (Proces' +
        'sos.Empresa = Concargas.Empresa)) INNER JOIN Faturas ON (Process' +
        'os.Codigo = Faturas.Processo) AND (Processos.Filial = Faturas.Fi' +
        'lial) AND (Processos.Empresa = Faturas.Empresa)) LEFT JOIN PG_PE' +
        'RC_VINC ON (Faturas.Codigo = PG_PERC_VINC.Fatura) AND (Faturas.P' +
        'rocesso = PG_PERC_VINC.Processo) AND (Faturas.Filial = PG_PERC_V' +
        'INC.Filial) AND (Faturas.Empresa = PG_PERC_VINC.Empresa)) INNER ' +
        'JOIN ItensFaturas ON (Faturas.Codigo = ItensFaturas.Fatura) AND ' +
        '(Faturas.Processo = ItensFaturas.Processo) AND (Faturas.Filial =' +
        ' ItensFaturas.Filial) AND (Faturas.Empresa = ItensFaturas.Empres' +
        'a)) INNER JOIN Tributacao_Item_Fatura ON (ItensFaturas.Sequencia' +
        'l = Tributacao_Item_Fatura.Sequencial_Item) AND (ItensFaturas.Fa' +
        'tura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Processo' +
        ' = Tributacao_Item_Fatura.Processo) AND (ItensFaturas.Filial = T' +
        'ributacao_Item_Fatura.Filial) AND (ItensFaturas.Empresa = Tribut' +
        'acao_Item_Fatura.Empresa)'
      
        'WHERE (((Processos.Empresa)=:Empresa) AND ((Processos.Filial)=:F' +
        'ilial) AND ((Processos.Codigo)=:Processo))'
      
        'GROUP BY Empresas.Razao_Social, Filiais.Descricao, Conhecimento_' +
        'Processo.PLaca, Conhecimento_Processo.Embarcacao, Conhecimento_P' +
        'rocesso.Tipodoccarga, Conhecimento_Processo.Numerodoccarga, Conh' +
        'ecimento_Processo.Numeromaster, Conhecimento_Processo.Tipomanife' +
        'sto, Conhecimento_Processo.Numeromanifesto, Conhecimento_Process' +
        'o.Codigo_Presenca_Carga, Conhecimento_Processo.URF_chegada, Conh' +
        'ecimento_Processo.Data_Chegada_URF_Cheg, Conhecimento_Processo.U' +
        'RF_Despacho, Conhecimento_Processo.Data_Chegada_URF_Desp, Conhec' +
        'imento_Processo.Recinto_Alfandegario, Conhecimento_Processo.Seto' +
        'r_Alfandegario, Concargas.Codigo, Concargas.Descricao_tipo, Conc' +
        'argas.Lacre, Faturas.Codigo, Faturas.ROF_BACEN, PG_PERC_VINC.Con' +
        'trato, Tributacao_Item_Fatura.Adicao, Tributacao_Item_Fatura.Cer' +
        'tificado_Origem, Tributacao_Item_Fatura.Ato_Concessorio, Tributa' +
        'cao_Item_Fatura.Motivo_Adm_Temp, Tributacao_Item_Fatura.Numero_A' +
        'to_Legal_ALADI, Tributacao_Item_Fatura.Regime_Tributacao_II, Tri' +
        'butacao_Item_Fatura.Fundamento_Legal_II, Tributacao_Item_Fatura.' +
        'Numero_Ato_Legal_II, Tributacao_Item_Fatura.Regime_Tributacao_IP' +
        'I, Tributacao_Item_Fatura.Numero_Ato_Legal_IPI, Tributacao_Item_' +
        'Fatura.Percentual_Reducao_II, Tributacao_Item_Fatura.Percentual_' +
        'Reduca_IPI, Tributacao_Item_Fatura.ALIQUOTA_ALADI;')
    UpdateMode = upWhereChanged
    Left = 133
    Top = 66
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infcompRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 70
    end
    object q_infcompDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object q_infcompPLaca: TStringField
      FieldName = 'PLaca'
      FixedChar = True
      Size = 15
    end
    object q_infcompEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object q_infcompTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      FixedChar = True
      Size = 2
    end
    object q_infcompNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object q_infcompNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object q_infcompTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      FixedChar = True
      Size = 1
    end
    object q_infcompNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object q_infcompCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      FixedChar = True
      Size = 50
    end
    object q_infcompURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object q_infcompData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object q_infcompURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object q_infcompData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object q_infcompRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      FixedChar = True
      Size = 7
    end
    object q_infcompSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      FixedChar = True
      Size = 3
    end
    object q_infcompCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object q_infcompDescricao_tipo: TStringField
      FieldName = 'Descricao_tipo'
      FixedChar = True
      Size = 50
    end
    object q_infcompLacre: TStringField
      FieldName = 'Lacre'
      FixedChar = True
      Size = 15
    end
    object q_infcompCodigo_1: TStringField
      FieldName = 'Codigo_1'
      FixedChar = True
      Size = 30
    end
    object q_infcompROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object q_infcompContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 10
    end
    object q_infcompAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_infcompCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
    object q_infcompAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
    object q_infcompMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object q_infcompNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      FixedChar = True
      Size = 5
    end
    object q_infcompRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_infcompFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object q_infcompNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object q_infcompRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object q_infcompNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      FixedChar = True
      Size = 5
    end
    object q_infcompPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object q_infcompPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object q_infcompALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
  end
  object Q_infocomp2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Concargas.Processo, Concargas.Codigo, [Tipos_de_Cargas].D' +
        'escricao, Concargas.Lacre'
      
        'FROM Concargas LEFT JOIN [Tipos_de_Cargas] ON Concargas.[Tipo_Ca' +
        'rga] = [Tipos_de_Cargas].Codigo'
      'WHERE (((Concargas.Processo)=:qprocesso));')
    Left = 164
    Top = 108
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object Q_infocomp2Processo: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object Q_infocomp2Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object Q_infocomp2Descricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object Q_infocomp2Lacre: TStringField
      FieldName = 'Lacre'
      FixedChar = True
      Size = 15
    end
  end
  object q_infocomp3: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Faturas.Processo, Faturas.Codigo, Exportadores.[razao_soc' +
        'ial], Faturas.[Modalidade_de_Pagamento], TAB_MODALID_PAGAMENTO.D' +
        'ESCRICAO, Faturas.[Instituicao_Financiadora], Faturas.[Tipo_Parc' +
        'ela], Faturas.[Numero_de_parcelas], Faturas.Periodicidade, Fatur' +
        'as.[Valor_das_Parcelas], Faturas.[Indicador_Periodicidade], Fatu' +
        'ras.[Taxa_de_Juros], Faturas.[Codigo_Taxa_de_Juros], Faturas.[Va' +
        'lor_Taxa_de_Juros], Faturas.[ROF_BACEN], Faturas.[Percentual_ROF' +
        '], Faturas.[Cobertura_Cambial], TAB_MOT_SEM_COBERT_CAMBIAL.DESCR' +
        'ICAO AS desc_motscamb, Faturas.[Valor_Total], Faturas.DtEmissao'
      
        'FROM ((Faturas LEFT JOIN Exportadores ON (Faturas.Empresa = Expo' +
        'rtadores.Empresa) AND (Faturas.Filial = Exportadores.Filial) AND' +
        ' (Faturas.Exportador = Exportadores.Codigo)) LEFT JOIN TAB_MODAL' +
        'ID_PAGAMENTO ON Faturas.[Modalidade_de_Pagamento] = TAB_MODALID_' +
        'PAGAMENTO.CODIGO) LEFT JOIN TAB_MOT_SEM_COBERT_CAMBIAL ON Fatura' +
        's.[Motivo_Sem_Cobertura] = TAB_MOT_SEM_COBERT_CAMBIAL.CODIGO'
      'WHERE (((Faturas.Processo)=:qprocesso))'
      
        'ORDER BY Exportadores.[razao_social], Faturas.[Modalidade_de_Pag' +
        'amento], TAB_MODALID_PAGAMENTO.DESCRICAO, Faturas.Periodicidade,' +
        ' Faturas.[Valor_das_Parcelas], Faturas.[Indicador_Periodicidade]' +
        ', TAB_MOT_SEM_COBERT_CAMBIAL.DESCRICAO;')
    Left = 176
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp3Processo: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_infocomp3Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 30
    end
    object q_infocomp3razao_social: TStringField
      FieldName = 'razao_social'
      FixedChar = True
      Size = 60
    end
    object q_infocomp3Modalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      FixedChar = True
      Size = 2
    end
    object q_infocomp3DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_infocomp3Instituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      FixedChar = True
      Size = 2
    end
    object q_infocomp3Tipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      FixedChar = True
      Size = 1
    end
    object q_infocomp3Numero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      FixedChar = True
      Size = 3
    end
    object q_infocomp3Periodicidade: TStringField
      FieldName = 'Periodicidade'
      FixedChar = True
      Size = 3
    end
    object q_infocomp3Valor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
    end
    object q_infocomp3Indicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      FixedChar = True
      Size = 1
    end
    object q_infocomp3Taxa_de_Juros: TIntegerField
      FieldName = 'Taxa_de_Juros'
    end
    object q_infocomp3Codigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      FixedChar = True
      Size = 4
    end
    object q_infocomp3Valor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
    end
    object q_infocomp3ROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object q_infocomp3Percentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object q_infocomp3Cobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      FixedChar = True
      Size = 1
    end
    object q_infocomp3desc_motscamb: TStringField
      FieldName = 'desc_motscamb'
      FixedChar = True
      Size = 120
    end
    object q_infocomp3Valor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object q_infocomp3DtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
  end
  object q_infocomp4: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Embalagem_Processo.Processo, Embalagem_Processo.TipoEmbal' +
        'agem, Embalagem_Processo.DescricaoEmbalagem, Embalagem_Processo.' +
        'Quantidade, TAB_TP_EMBALAGEM.Descricao'
      
        'FROM Embalagem_Processo INNER JOIN TAB_TP_EMBALAGEM ON Embalagem' +
        '_Processo.TipoEmbalagem = TAB_TP_EMBALAGEM.Codigo'
      'WHERE (((Embalagem_Processo.Processo)=:qprocesso));')
    Left = 192
    Top = 148
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp4Processo: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Processo'
      FixedChar = True
      Size = 8
    end
    object q_infocomp4TipoEmbalagem: TStringField
      FieldName = 'TipoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.TipoEmbalagem'
      FixedChar = True
      Size = 2
    end
    object q_infocomp4DescricaoEmbalagem: TStringField
      FieldName = 'DescricaoEmbalagem'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.DescricaoEmbalagem'
      FixedChar = True
      Size = 50
    end
    object q_infocomp4Quantidade: TStringField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Embalagem_Processo.Quantidade'
      FixedChar = True
      Size = 5
    end
    object q_infocomp4Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.TAB_TP_EMBALAGEM.Descricao'
      FixedChar = True
      Size = 120
    end
  end
  object q_infocomp5: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos_Taxas_Conversao.Processo, TAB_MOEDA.DESCRICAO, ' +
        'Processos_Taxas_Conversao.Taxa_conversao, Processos_Taxas_Conver' +
        'sao.Taxa_conversaoc'
      
        'FROM Processos_Taxas_Conversao LEFT JOIN TAB_MOEDA ON Processos_' +
        'Taxas_Conversao.Moeda = TAB_MOEDA.CODIGO'
      'WHERE (((Processos_Taxas_Conversao.Processo)=:qprocesso))')
    Left = 1080
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp5Processo: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Processo'
      FixedChar = True
      Size = 8
    end
    object q_infocomp5DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_infocomp5Taxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversao'
    end
    object q_infocomp5Taxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
      Origin = 'DBNMSCOMEX.Processos_Taxas_Conversao.Taxa_conversaoc'
    end
  end
  object q_infocomp6: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.C' +
        'ertificado_Origem'
      'FROM Tributacao_Item_Fatura'
      
        'GROUP BY Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura' +
        '.Certificado_Origem'
      'HAVING (((Tributacao_Item_Fatura.Processo)=:qprocesso));')
    Left = 192
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp6Processo: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      FixedChar = True
      Size = 8
    end
    object q_infocomp6Certificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Certificado_Origem'
      FixedChar = True
      Size = 15
    end
  end
  object T_unidades: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_UNID_MEDIDA'
    Left = 384
    Top = 188
    object T_unidadesCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 2
    end
    object T_unidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object T_unidadesABREV: TStringField
      FieldName = 'ABREV'
      FixedChar = True
      Size = 4
    end
  end
  object t_contacorrente_reg: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Conta_Corrente_Registro'
    TableName = 'Contas_Correntes'
    Left = 564
    Top = 96
    object t_contacorrente_regEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_regFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_regCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_contacorrente_regBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      FixedChar = True
      Size = 1
    end
    object t_contacorrente_regDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object t_contacorrente_regBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object t_contacorrente_regAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object t_contacorrente_regConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object t_contacorrente_regSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object t_contacorrente_regNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_regData: TDateTimeField
      FieldName = 'Data'
    end
    object t_contacorrente_regEmpresacc: TStringField
      FieldName = 'Empresacc'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_regFilialcc: TStringField
      FieldName = 'Filialcc'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_regASCAA: TIntegerField
      FieldName = 'ASCAA'
    end
  end
  object t_contacorrente_dep: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Conta_Corrente_Deposito'
    TableName = 'Contas_Correntes'
    Left = 564
    Top = 144
    object t_contacorrente_depEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_depFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_depCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_contacorrente_depBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      FixedChar = True
      Size = 1
    end
    object t_contacorrente_depDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object t_contacorrente_depBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object t_contacorrente_depAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object t_contacorrente_depConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object t_contacorrente_depSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object t_contacorrente_depNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_depData: TDateTimeField
      FieldName = 'Data'
    end
    object t_contacorrente_depEmpresacc: TStringField
      FieldName = 'Empresacc'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_depFilialcc: TStringField
      FieldName = 'Filialcc'
      FixedChar = True
      Size = 4
    end
    object t_contacorrente_depASCAA: TIntegerField
      FieldName = 'ASCAA'
    end
  end
  object q_infocomp1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Conhecimento_Processo.Processo, Conhecimento_Processo.Emb' +
        'arcacao, Tipo_Doc_Carga.descricao AS qtipodoccarga, Conhecimento' +
        '_Processo.Numerodoccarga, Conhecimento_Processo.Numeromaster, Ti' +
        'po_Doc_Chegada.descricao AS qtipomanifesto, Conhecimento_Process' +
        'o.Numeromanifesto, TAB_URF.DESCRICAO AS qurf, TAB_REC_ALFANDEGAD' +
        'O.DESCRICAO AS qrecalfa, Conhecimento_Processo.Data_Chegada_URF_' +
        'Desp, Conhecimento_Processo.Peso_Bruto, Conhecimento_Processo.Pe' +
        'so_Liquido, Conhecimento_Processo.Data_Chegada_URF_Cheg, Conheci' +
        'mento_Processo.Codigo_Presenca_Carga, Conhecimento_Processo.Via'
      
        'FROM (((Conhecimento_Processo LEFT JOIN Tipo_Doc_Carga ON (Conhe' +
        'cimento_Processo.Tipodoccarga = Tipo_Doc_Carga.codigo) AND (Conh' +
        'ecimento_Processo.Via = Tipo_Doc_Carga.via)) LEFT JOIN Tipo_Doc_' +
        'Chegada ON Conhecimento_Processo.Tipomanifesto = Tipo_Doc_Chegad' +
        'a.codigo) LEFT JOIN TAB_URF ON Conhecimento_Processo.URF_chegada' +
        ' = TAB_URF.CODIGO) LEFT JOIN TAB_REC_ALFANDEGADO ON Conhecimento' +
        '_Processo.Recinto_Alfandegario = TAB_REC_ALFANDEGADO.CODIGO'
      'WHERE (((Conhecimento_Processo.Processo)=:qprocesso));')
    Left = 144
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '00001152'
      end>
    object q_infocomp1Processo: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_infocomp1Embarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object q_infocomp1qtipodoccarga: TStringField
      FieldName = 'qtipodoccarga'
      FixedChar = True
      Size = 25
    end
    object q_infocomp1Numerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object q_infocomp1Numeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object q_infocomp1qtipomanifesto: TStringField
      FieldName = 'qtipomanifesto'
      FixedChar = True
      Size = 25
    end
    object q_infocomp1Numeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object q_infocomp1qurf: TStringField
      FieldName = 'qurf'
      FixedChar = True
      Size = 120
    end
    object q_infocomp1qrecalfa: TStringField
      FieldName = 'qrecalfa'
      FixedChar = True
      Size = 120
    end
    object q_infocomp1Data_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object q_infocomp1Peso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object q_infocomp1Peso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object q_infocomp1Data_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object q_infocomp1Codigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      FixedChar = True
      Size = 50
    end
    object q_infocomp1Via: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
  end
  object T_transportadores: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Transportadores'
    Left = 92
    Top = 124
    object T_transportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_transportadoresFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_transportadoresCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object T_transportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object T_transportadoresPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object T_transportadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 18
    end
    object T_transportadoresEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object T_transportadoresNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object T_transportadoresComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object T_transportadoresBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object T_transportadoresCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object T_transportadoresCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object T_transportadoresUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object T_transportadoresEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object T_transportadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
  end
  object T_ncm: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_NCM'
    Left = 444
    Top = 204
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
  object T_cambio: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_CONVERSAO_CAMBIO'
    Left = 1145
    Top = 291
    object T_cambioCodigo: TStringField
      FieldName = 'Codigo'
      Size = 3
    end
    object T_cambioDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object T_cambioTaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      Size = 9
    end
    object T_cambioVigencia_Inicio_Taxa: TStringField
      FieldName = 'Vigencia_Inicio_Taxa'
      Size = 10
    end
    object T_cambioVigencia_Fim_Taxa: TStringField
      FieldName = 'Vigencia_Fim_Taxa'
      Size = 10
    end
  end
  object Q_update1: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE ItensFaturas SET ItensFaturas.Rateio_Frete_prepaid = :qra' +
        'tpre, ItensFaturas.Rateio_Frete_collect = :qratcol, ItensFaturas' +
        '.Rateio_Frete_ternac = :qratter, ItensFaturas.Rateio_Despesas_at' +
        'e_FOB = :qdespfob, ItensFaturas.Valor_Aduaneiro = :qvaladua, Ite' +
        'nsFaturas.Valor_mercadoria = :qvalmerc, ItensFaturas.VMLE = :qvm' +
        'le, ItensFaturas.Base_Calc_II = :qbaseii, ItensFaturas.Acresc_re' +
        'duc_Valaduan = :qarval, ItensFaturas.rateio_seguro = :qratseg, I' +
        'tensFaturas.Rateio_seguro_fatura = :qratsegf'
      
        'WHERE (((ItensFaturas.Processo)=:qprocesso) AND ((ItensFaturas.F' +
        'atura)=:qfatura) AND ((ItensFaturas.Sequencial)=:qseq));')
    UpdateMode = upWhereChanged
    Left = 360
    Top = 168
    ParamData = <
      item
        DataType = ftFloat
        Name = 'qratpre'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qratcol'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qratter'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'qdespfob'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qvaladua'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qvalmerc'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qvmle'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qbaseii'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qarval'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qratseg'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'qratsegf'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfatura'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qseq'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_update2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE ItensFaturas SET ItensFaturas.Rateio_frete_Prepaid = Iten' +
        'sFaturas.Rateio_frete_fatura'
      'WHERE (((ItensFaturas.Processo)=:qprocesso));')
    UpdateMode = upWhereChanged
    Left = 408
    Top = 156
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
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
    Left = 596
    Top = 156
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_sub: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Atos_subcontratadas.Empresa, Atos_subcontratadas.Filial, ' +
        'Atos_subcontratadas.Numero, Atos_subcontratadas.Importador, Atos' +
        '_subcontratadas.CNPJ_CPF_COMPLETO, Atos_subcontratadas.Razao_Soc' +
        'ial'
      
        'FROM Parametros INNER JOIN Atos_subcontratadas ON (Parametros.Fi' +
        'lial = Atos_subcontratadas.Filial) AND (Parametros.Empresa = Ato' +
        's_subcontratadas.Empresa)'
      
        'WHERE (((Atos_subcontratadas.Numero)=:qato) AND ((Atos_subcontra' +
        'tadas.Importador)=:qimport));')
    Left = 588
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'qato'
        ParamType = ptUnknown
        Value = 'teste'
      end
      item
        DataType = ftString
        Name = 'qimport'
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
  object q_fobcif12c: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, Processos.Tipo_Declaracao, Faturas.Moeda, TAB_MOEDA.DES' +
        'CRICAO, Processos_Taxas_Conversao.Taxa_conversao, Sum(ItensFatur' +
        'as.VMLE) AS FOB, 0+Sum([ITENSFATURAS].[VMLE]*[PROCESSOS_TAXAS_CO' +
        'NVERSAO].[TAXA_CONVERSAO]) AS FOBREAL, 0+Sum([VMLE]+(([RATEIO_FR' +
        'ETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*[iten' +
        'sfaturas].[QUANTIDADE])+([RATEIO_SEGURO]*[itensfaturas].[QUANTID' +
        'ADE])) AS CIF, 0+(Sum([VMLE]+(([RATEIO_FRETE_PREPAID]+[RATEIO_FR' +
        'ETE_COLLECT]-[RATEIO_FRETE_TERNAC])*itensfaturas.[QUANTIDADE])+(' +
        '[RATEIO_SEGURO]*itensfaturas.[QUANTIDADE]))*[PROCESSOS_TAXAS_CON' +
        'VERSAO].[TAXA_CONVERSAO]) AS CIFREAL, Tributacao_Item_Fatura.Reg' +
        'ime_Tributacao_II, Tributacao_Item_Fatura.Regime_Tributacao_IPI'
      
        'FROM ((((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Fatura' +
        ' = Faturas.Codigo) AND (ItensFaturas.Processo = Faturas.Processo' +
        ') AND (ItensFaturas.Filial = Faturas.Filial) AND (ItensFaturas.E' +
        'mpresa = Faturas.Empresa)) LEFT JOIN Processos_Taxas_Conversao O' +
        'N (Faturas.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas' +
        '.Processo = Processos_Taxas_Conversao.Processo) AND (Faturas.Fil' +
        'ial = Processos_Taxas_Conversao.Filial) AND (Faturas.Empresa = P' +
        'rocessos_Taxas_Conversao.Empresa)) INNER JOIN TAB_MOEDA ON Fatur' +
        'as.Moeda = TAB_MOEDA.CODIGO) INNER JOIN Tributacao_Item_Fatura O' +
        'N (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa) AND (I' +
        'tensFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFa' +
        'turas.Processo = Tributacao_Item_Fatura.Processo) AND (ItensFatu' +
        'ras.Fatura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Se' +
        'quencial = Tributacao_Item_Fatura.Sequencial_Item)) INNER JOIN P' +
        'rocessos ON (Faturas.Processo = Processos.Codigo) AND (Faturas.F' +
        'ilial = Processos.Filial) AND (Faturas.Empresa = Processos.Empre' +
        'sa)'
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, Processos.Tipo_Declaracao, Faturas.Moeda, TAB_MOEDA.D' +
        'ESCRICAO, Processos_Taxas_Conversao.Taxa_conversao, Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Regime_T' +
        'ributacao_IPI'
      
        'HAVING (((ItensFaturas.Processo)=:qprocesso) AND ((Processos.Tip' +
        'o_Declaracao)="12") AND ((Tributacao_Item_Fatura.Regime_Tributac' +
        'ao_II)="1") AND ((Tributacao_Item_Fatura.Regime_Tributacao_IPI)=' +
        '"4"));')
    Left = 676
    Top = 172
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_fobcif12cEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_fobcif12cFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_fobcif12cProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_fobcif12cTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object q_fobcif12cMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object q_fobcif12cDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_fobcif12cTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_fobcif12cFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_fobcif12cFOBREAL: TFloatField
      FieldName = 'FOBREAL'
    end
    object q_fobcif12cCIF: TFloatField
      FieldName = 'CIF'
    end
    object q_fobcif12cCIFREAL: TFloatField
      FieldName = 'CIFREAL'
    end
    object q_fobcif12cRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_fobcif12cRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object q_fobcif12a: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, Processos.Tipo_Declaracao, Faturas.Moeda, TAB_MOEDA.DES' +
        'CRICAO, Processos_Taxas_Conversao.Taxa_conversao, 0+Sum(ItensFat' +
        'uras.VMLE) AS FOB, 0+Sum([ITENSFATURAS].[VMLE]*[PROCESSOS_TAXAS_' +
        'CONVERSAO].[TAXA_CONVERSAO]) AS FOBREAL, 0+Sum([VMLE]+(([RATEIO_' +
        'FRETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*[it' +
        'ensfaturas].[QUANTIDADE])+([RATEIO_SEGURO]*[itensfaturas].[QUANT' +
        'IDADE])) AS CIF, 0+(Sum([VMLE]+(([RATEIO_FRETE_PREPAID]+[RATEIO_' +
        'FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*itensfaturas.[QUANTIDADE])' +
        '+([RATEIO_SEGURO]*itensfaturas.[QUANTIDADE]))*[PROCESSOS_TAXAS_C' +
        'ONVERSAO].[TAXA_CONVERSAO]) AS CIFREAL, Tributacao_Item_Fatura.R' +
        'egime_Tributacao_II, Tributacao_Item_Fatura.Regime_Tributacao_IP' +
        'I'
      
        'FROM ((((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Fatura' +
        ' = Faturas.Codigo) AND (ItensFaturas.Processo = Faturas.Processo' +
        ') AND (ItensFaturas.Filial = Faturas.Filial) AND (ItensFaturas.E' +
        'mpresa = Faturas.Empresa)) LEFT JOIN Processos_Taxas_Conversao O' +
        'N (Faturas.Moeda = Processos_Taxas_Conversao.Moeda) AND (Faturas' +
        '.Processo = Processos_Taxas_Conversao.Processo) AND (Faturas.Fil' +
        'ial = Processos_Taxas_Conversao.Filial) AND (Faturas.Empresa = P' +
        'rocessos_Taxas_Conversao.Empresa)) INNER JOIN TAB_MOEDA ON Fatur' +
        'as.Moeda = TAB_MOEDA.CODIGO) INNER JOIN Tributacao_Item_Fatura O' +
        'N (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa) AND (I' +
        'tensFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFa' +
        'turas.Processo = Tributacao_Item_Fatura.Processo) AND (ItensFatu' +
        'ras.Fatura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Se' +
        'quencial = Tributacao_Item_Fatura.Sequencial_Item)) INNER JOIN P' +
        'rocessos ON (Faturas.Processo = Processos.Codigo) AND (Faturas.F' +
        'ilial = Processos.Filial) AND (Faturas.Empresa = Processos.Empre' +
        'sa)'
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, Processos.Tipo_Declaracao, Faturas.Moeda, TAB_MOEDA.D' +
        'ESCRICAO, Processos_Taxas_Conversao.Taxa_conversao, Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.Regime_T' +
        'ributacao_IPI'
      
        'HAVING (((ItensFaturas.Processo)=:qprocesso) AND ((Processos.Tip' +
        'o_Declaracao)="12") AND ((Tributacao_Item_Fatura.Regime_Tributac' +
        'ao_II)="5") AND ((Tributacao_Item_Fatura.Regime_Tributacao_IPI)=' +
        '"5"));')
    Left = 636
    Top = 188
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_fobcif12aEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_fobcif12aFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_fobcif12aProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_fobcif12aTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object q_fobcif12aMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object q_fobcif12aDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_fobcif12aTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_fobcif12aFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_fobcif12aFOBREAL: TFloatField
      FieldName = 'FOBREAL'
    end
    object q_fobcif12aCIF: TFloatField
      FieldName = 'CIF'
    end
    object q_fobcif12aCIFREAL: TFloatField
      FieldName = 'CIFREAL'
    end
    object q_fobcif12aRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_fobcif12aRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
  end
  object q_fobcif: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.P' +
        'rocesso, Processos.Tipo_Declaracao, Faturas.Moeda, TAB_MOEDA.DES' +
        'CRICAO, Processos_Taxas_Conversao.Taxa_conversao, 0+Sum(ItensFat' +
        'uras.VMLE) AS FOB, 0+Sum([ITENSFATURAS].[VMLE]*[PROCESSOS_TAXAS_' +
        'CONVERSAO].[TAXA_CONVERSAO]) AS FOBREAL, 0+Sum([VMLE]+(([RATEIO_' +
        'FRETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TERNAC])*[QU' +
        'ANTIDADE])+([RATEIO_SEGURO]*[QUANTIDADE])) AS CIF, (Sum([VMLE]+(' +
        '([RATEIO_FRETE_PREPAID]+[RATEIO_FRETE_COLLECT]-[RATEIO_FRETE_TER' +
        'NAC])*[QUANTIDADE])+([RATEIO_SEGURO]*[QUANTIDADE]))*[PROCESSOS_T' +
        'AXAS_CONVERSAO].[TAXA_CONVERSAO]) AS CIFREAL'
      
        'FROM (((ItensFaturas INNER JOIN Faturas ON (ItensFaturas.Empresa' +
        ' = Faturas.Empresa) AND (ItensFaturas.Filial = Faturas.Filial) A' +
        'ND (ItensFaturas.Processo = Faturas.Processo) AND (ItensFaturas.' +
        'Fatura = Faturas.Codigo)) LEFT JOIN Processos_Taxas_Conversao ON' +
        ' (Faturas.Empresa = Processos_Taxas_Conversao.Empresa) AND (Fatu' +
        'ras.Filial = Processos_Taxas_Conversao.Filial) AND (Faturas.Proc' +
        'esso = Processos_Taxas_Conversao.Processo) AND (Faturas.Moeda = ' +
        'Processos_Taxas_Conversao.Moeda)) INNER JOIN TAB_MOEDA ON Fatura' +
        's.Moeda = TAB_MOEDA.CODIGO) INNER JOIN Processos ON (Faturas.Pro' +
        'cesso = Processos.Codigo) AND (Faturas.Filial = Processos.Filial' +
        ') AND (Faturas.Empresa = Processos.Empresa)'
      
        'GROUP BY ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas' +
        '.Processo, Processos.Tipo_Declaracao, Faturas.Moeda, TAB_MOEDA.D' +
        'ESCRICAO, Processos_Taxas_Conversao.Taxa_conversao'
      
        'HAVING (((ItensFaturas.Processo)=:qprocesso) AND ((Processos.Tip' +
        'o_Declaracao)<>"12"));'
      '')
    Left = 636
    Top = 156
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_fobcifEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_fobcifFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_fobcifProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_fobcifTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object q_fobcifMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object q_fobcifDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_fobcifTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_fobcifFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_fobcifFOBREAL: TFloatField
      FieldName = 'FOBREAL'
    end
    object q_fobcifCIF: TFloatField
      FieldName = 'CIF'
    end
    object q_fobcifCIFREAL: TFloatField
      FieldName = 'CIFREAL'
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
    Left = 117
    Top = 214
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
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfatura'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qseq'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object t_aju: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Ajudantes'
    Left = 512
    Top = 65
    object t_ajuEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_ajuFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_ajuCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object t_ajuRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object t_ajuPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object t_ajuCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 18
    end
    object t_ajuEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object t_ajuNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object t_ajuComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object t_ajuBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object t_ajuCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object t_ajuCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object t_ajuUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object t_ajuEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object t_ajuInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object t_ajuRegistro: TStringField
      FieldName = 'Registro'
      FixedChar = True
      Size = 15
    end
    object t_ajuexibe_complementares: TIntegerField
      FieldName = 'exibe_complementares'
    end
  end
  object q_infocomp7: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT T.Processo, T.Regime_Tributacao_II, T.Fundamento_Legal_II' +
        ', FUN.Descricao AS QFUN, T.Motivo_Adm_Temp, MOT.Descricao AS QMO' +
        'T, T.Numero_Ato_Legal_II, alii.Tipo_Ato_Legal AS Tipo_Ato_ii, al' +
        'ii.Ano_Ato_Legal AS Ano_Ato_Legal_ii, alii.obs AS obs_alii, T.Pe' +
        'rcentual_Reducao_II, T.Ato_Concessorio, Ato.Descricao AS QATO, A' +
        'to.Vigencia_inicial, Ato.Vigencia_final, T.Regime_Tributacao_IPI' +
        ', T.Numero_Ato_Legal_IPI, T.Percentual_Reduca_IPI, alipi.Tipo_At' +
        'o_Legal AS Tipo_Ato_ipi, alipi.Ano_Ato_Legal AS Ano_Ato_Legal_ip' +
        'i, alipi.obs AS obs_alipi, cast([Adicao] as integer) AS qdaicao,' +
        ' T.Adicao, T.ACORDO_ALADI, T.Numero_Ato_Legal_ALADI'
      
        'FROM ((((Tributacao_Item_Fatura AS T LEFT JOIN Atos_concessorios' +
        ' AS Ato ON T.Ato_Concessorio = Ato.Numero) LEFT JOIN TAB_REGIME_' +
        'FUNDAMENTO AS FUN ON (T.Regime_Tributacao_II = FUN.Regime) AND (' +
        'T.Fundamento_Legal_II = FUN.Codigo)) LEFT JOIN TAB_MOT_ADMISSAO_' +
        'TEMP AS MOT ON T.Motivo_Adm_Temp = MOT.Codigo) LEFT JOIN Atos_Le' +
        'gais AS alii ON (T.Numero_Ato_Legal_II = alii.Numero) AND (T.Fil' +
        'ial = alii.Filial) AND (T.Empresa = alii.Empresa)) LEFT JOIN Ato' +
        's_Legais AS alipi ON (T.Numero_Ato_Legal_IPI = alipi.Numero) AND' +
        ' (T.Filial = alipi.Filial) AND (T.Empresa = alipi.Empresa)'
      
        'GROUP BY T.Processo, T.Regime_Tributacao_II, T.Fundamento_Legal_' +
        'II, FUN.Descricao, T.Motivo_Adm_Temp, MOT.Descricao, T.Numero_At' +
        'o_Legal_II, alii.Tipo_Ato_Legal, alii.Ano_Ato_Legal, alii.obs, T' +
        '.Percentual_Reducao_II, T.Ato_Concessorio, Ato.Descricao, Ato.Vi' +
        'gencia_inicial, Ato.Vigencia_final, T.Regime_Tributacao_IPI, T.N' +
        'umero_Ato_Legal_IPI, T.Percentual_Reduca_IPI, alipi.Tipo_Ato_Leg' +
        'al, alipi.Ano_Ato_Legal, alipi.obs, cast([Adicao] as integer), T' +
        '.Adicao, T.ACORDO_ALADI, T.Numero_Ato_Legal_ALADI'
      'HAVING (((T.Processo)=:qprocesso))'
      
        'ORDER BY T.Processo, T.Regime_Tributacao_II, T.Fundamento_Legal_' +
        'II, T.Motivo_Adm_Temp, T.Numero_Ato_Legal_II, alii.Tipo_Ato_Lega' +
        'l, alii.Ano_Ato_Legal, T.Percentual_Reducao_II, T.Ato_Concessori' +
        'o, T.Regime_Tributacao_IPI, T.Numero_Ato_Legal_IPI, T.Percentual' +
        '_Reduca_IPI, alipi.Tipo_Ato_Legal, cast([Adicao] as integer);')
    Left = 712
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '01916/03'
      end>
    object q_infocomp7Processo: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_infocomp7Regime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_infocomp7Fundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object q_infocomp7QFUN: TStringField
      FieldName = 'QFUN'
      FixedChar = True
      Size = 120
    end
    object q_infocomp7Motivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object q_infocomp7QMOT: TStringField
      FieldName = 'QMOT'
      FixedChar = True
      Size = 253
    end
    object q_infocomp7Numero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object q_infocomp7Tipo_Ato_ii: TStringField
      FieldName = 'Tipo_Ato_ii'
      FixedChar = True
      Size = 10
    end
    object q_infocomp7Ano_Ato_Legal_ii: TStringField
      FieldName = 'Ano_Ato_Legal_ii'
      FixedChar = True
      Size = 4
    end
    object q_infocomp7obs_alii: TStringField
      FieldName = 'obs_alii'
      FixedChar = True
      Size = 50
    end
    object q_infocomp7Percentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object q_infocomp7Ato_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
    object q_infocomp7QATO: TStringField
      FieldName = 'QATO'
      FixedChar = True
      Size = 50
    end
    object q_infocomp7Vigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object q_infocomp7Vigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object q_infocomp7Regime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object q_infocomp7Numero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      FixedChar = True
      Size = 5
    end
    object q_infocomp7Percentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object q_infocomp7Tipo_Ato_ipi: TStringField
      FieldName = 'Tipo_Ato_ipi'
      FixedChar = True
      Size = 10
    end
    object q_infocomp7Ano_Ato_Legal_ipi: TStringField
      FieldName = 'Ano_Ato_Legal_ipi'
      FixedChar = True
      Size = 4
    end
    object q_infocomp7obs_alipi: TStringField
      FieldName = 'obs_alipi'
      FixedChar = True
      Size = 50
    end
    object q_infocomp7qdaicao: TIntegerField
      FieldName = 'qdaicao'
    end
    object q_infocomp7Adicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_infocomp7ACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      FixedChar = True
      Size = 3
    end
    object q_infocomp7Numero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      FixedChar = True
      Size = 5
    end
  end
  object T_DSI_DG: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNDSI'
    IndexFieldNames = 'CD_DSI_MICRO'
    TableName = 'DSI_DADOS_GERAIS'
    Left = 61
    Top = 150
    object T_DSI_DGCD_DSI_MICRO: TStringField
      FieldName = 'CD_DSI_MICRO'
      Size = 15
    end
    object T_DSI_DGDT_CRIACAO: TDateTimeField
      FieldName = 'DT_CRIACAO'
    end
    object T_DSI_DGCD_ORIGEM_DSI: TSmallintField
      FieldName = 'CD_ORIGEM_DSI'
    end
    object T_DSI_DGNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object T_DSI_DGCD_MOTIVO_TRANS: TSmallintField
      FieldName = 'CD_MOTIVO_TRANS'
    end
    object T_DSI_DGDT_TRANSMISSAO: TDateTimeField
      FieldName = 'DT_TRANSMISSAO'
    end
    object T_DSI_DGNR_DECL_SIMPL_IMP: TStringField
      FieldName = 'NR_DECL_SIMPL_IMP'
      Size = 10
    end
    object T_DSI_DGDT_REGISTRO_DSI: TDateTimeField
      FieldName = 'DT_REGISTRO_DSI'
    end
    object T_DSI_DGHO_REGISTRO_DSI: TDateTimeField
      FieldName = 'HO_REGISTRO_DSI'
    end
    object T_DSI_DGNR_SEQ_RETIFICACAO: TSmallintField
      FieldName = 'NR_SEQ_RETIFICACAO'
    end
    object T_DSI_DGDT_SEQ_RETIFICACAO: TDateTimeField
      FieldName = 'DT_SEQ_RETIFICACAO'
    end
    object T_DSI_DGHO_SEQ_RETIFICACAO: TDateTimeField
      FieldName = 'HO_SEQ_RETIFICACAO'
    end
    object T_DSI_DGIN_BLOQUEIO_RETIF: TBooleanField
      FieldName = 'IN_BLOQUEIO_RETIF'
    end
    object T_DSI_DGCD_TIPO_NATUREZA: TSmallintField
      FieldName = 'CD_TIPO_NATUREZA'
    end
    object T_DSI_DGQT_ADICAO_DSI: TSmallintField
      FieldName = 'QT_ADICAO_DSI'
    end
    object T_DSI_DGCD_TIPO_IMPORTADOR: TStringField
      FieldName = 'CD_TIPO_IMPORTADOR'
      Size = 1
    end
    object T_DSI_DGNR_IMPORTADOR: TStringField
      FieldName = 'NR_IMPORTADOR'
      Size = 14
    end
    object T_DSI_DGNM_IMPORTADOR: TStringField
      FieldName = 'NM_IMPORTADOR'
      Size = 60
    end
    object T_DSI_DGNR_TEL_IMPORTADOR: TStringField
      FieldName = 'NR_TEL_IMPORTADOR'
      Size = 15
    end
    object T_DSI_DGED_LOGR_IMPORTADOR: TStringField
      FieldName = 'ED_LOGR_IMPORTADOR'
      Size = 40
    end
    object T_DSI_DGED_NR_IMPORTADOR: TStringField
      FieldName = 'ED_NR_IMPORTADOR'
      Size = 6
    end
    object T_DSI_DGED_COMPL_IMPO: TStringField
      FieldName = 'ED_COMPL_IMPO'
      Size = 21
    end
    object T_DSI_DGED_BA_IMPORTADOR: TStringField
      FieldName = 'ED_BA_IMPORTADOR'
      Size = 25
    end
    object T_DSI_DGED_MUN_IMPORTADOR: TStringField
      FieldName = 'ED_MUN_IMPORTADOR'
      Size = 25
    end
    object T_DSI_DGED_UF_IMPORTADOR: TStringField
      FieldName = 'ED_UF_IMPORTADOR'
      Size = 2
    end
    object T_DSI_DGED_CEP_IMPORTADOR: TStringField
      FieldName = 'ED_CEP_IMPORTADOR'
      Size = 8
    end
    object T_DSI_DGCD_PAIS_IMPORTADOR: TStringField
      FieldName = 'CD_PAIS_IMPORTADOR'
      Size = 3
    end
    object T_DSI_DGIN_REPR_LEGAL: TBooleanField
      FieldName = 'IN_REPR_LEGAL'
    end
    object T_DSI_DGNR_REPR_LEGAL: TStringField
      FieldName = 'NR_REPR_LEGAL'
      Size = 14
    end
    object T_DSI_DGNR_CPF_USUARIO: TStringField
      FieldName = 'NR_CPF_USUARIO'
      Size = 11
    end
    object T_DSI_DGCD_URF_DESPACHO: TStringField
      FieldName = 'CD_URF_DESPACHO'
      Size = 7
    end
    object T_DSI_DGCD_PAIS_PROC_CARGA: TStringField
      FieldName = 'CD_PAIS_PROC_CARGA'
      Size = 3
    end
    object T_DSI_DGCD_VIA_TRANSP_CARGA: TStringField
      FieldName = 'CD_VIA_TRANSP_CARGA'
      Size = 2
    end
    object T_DSI_DGNR_TERMO_ENTRADA: TStringField
      FieldName = 'NR_TERMO_ENTRADA'
      Size = 9
    end
    object T_DSI_DGCD_TIPO_DCTO_CARGA: TStringField
      FieldName = 'CD_TIPO_DCTO_CARGA'
      Size = 2
    end
    object T_DSI_DGNR_DCTO_CARGA_HOUSE: TStringField
      FieldName = 'NR_DCTO_CARGA_HOUSE'
      Size = 11
    end
    object T_DSI_DGNR_DCTO_CARGA_MAST: TStringField
      FieldName = 'NR_DCTO_CARGA_MAST'
      Size = 11
    end
    object T_DSI_DGNR_IDENT_CARGA: TStringField
      FieldName = 'NR_IDENT_CARGA'
      Size = 36
    end
    object T_DSI_DGDT_EMBARQUE: TDateTimeField
      FieldName = 'DT_EMBARQUE'
    end
    object T_DSI_DGDT_EMISSAO_CONHEC: TDateTimeField
      FieldName = 'DT_EMISSAO_CONHEC'
    end
    object T_DSI_DGPB_CARGA: TFloatField
      FieldName = 'PB_CARGA'
    end
    object T_DSI_DGPL_CARGA: TFloatField
      FieldName = 'PL_CARGA'
    end
    object T_DSI_DGCD_RECINTO_ALFAND: TStringField
      FieldName = 'CD_RECINTO_ALFAND'
      Size = 7
    end
    object T_DSI_DGCD_SETOR_ARMAZENAM: TStringField
      FieldName = 'CD_SETOR_ARMAZENAM'
      Size = 3
    end
    object T_DSI_DGCD_MOEDA_FRETE: TStringField
      FieldName = 'CD_MOEDA_FRETE'
      Size = 3
    end
    object T_DSI_DGVL_TOT_FRETE_MNEG: TFloatField
      FieldName = 'VL_TOT_FRETE_MNEG'
    end
    object T_DSI_DGVL_TOTAL_FRETE_MN: TFloatField
      FieldName = 'VL_TOTAL_FRETE_MN'
    end
    object T_DSI_DGCD_MOEDA_SEGURO: TStringField
      FieldName = 'CD_MOEDA_SEGURO'
      Size = 3
    end
    object T_DSI_DGVL_TOT_SEGURO_MNEG: TFloatField
      FieldName = 'VL_TOT_SEGURO_MNEG'
    end
    object T_DSI_DGVL_TOTAL_SEG_MN: TFloatField
      FieldName = 'VL_TOTAL_SEG_MN'
    end
    object T_DSI_DGVL_TOTAL_SEG_DOLAR: TFloatField
      FieldName = 'VL_TOTAL_SEG_DOLAR'
    end
    object T_DSI_DGVL_TOTAL_MLE_MN: TFloatField
      FieldName = 'VL_TOTAL_MLE_MN'
    end
    object T_DSI_DGVL_TOTAL_MLE_DOLAR: TFloatField
      FieldName = 'VL_TOTAL_MLE_DOLAR'
    end
    object T_DSI_DGVL_TOTAL_MLD_MN: TFloatField
      FieldName = 'VL_TOTAL_MLD_MN'
    end
    object T_DSI_DGDT_DSE_MANUAL: TDateTimeField
      FieldName = 'DT_DSE_MANUAL'
    end
    object T_DSI_DGCD_UL_DSE_MANUAL: TStringField
      FieldName = 'CD_UL_DSE_MANUAL'
      Size = 7
    end
    object T_DSI_DGNR_DSE: TStringField
      FieldName = 'NR_DSE'
      Size = 11
    end
    object T_DSI_DGNR_DDE: TStringField
      FieldName = 'NR_DDE'
      Size = 11
    end
    object T_DSI_DGNR_PROCESSO_EXPO: TStringField
      FieldName = 'NR_PROCESSO_EXPO'
      Size = 15
    end
    object T_DSI_DGVL_TOTAL_II_CALC: TFloatField
      FieldName = 'VL_TOTAL_II_CALC'
    end
    object T_DSI_DGVL_TOTAL_IPI_CALC: TFloatField
      FieldName = 'VL_TOTAL_IPI_CALC'
    end
    object T_DSI_DGVL_TOTAL_II_A_REC: TFloatField
      FieldName = 'VL_TOTAL_II_A_REC'
    end
    object T_DSI_DGVL_TOTAL_IPI_A_REC: TFloatField
      FieldName = 'VL_TOTAL_IPI_A_REC'
    end
    object T_DSI_DGVL_TOT_TRIB_A_REC: TFloatField
      FieldName = 'VL_TOT_TRIB_A_REC'
    end
    object T_DSI_DGCD_TIPO_PGTO_TRIB: TSmallintField
      FieldName = 'CD_TIPO_PGTO_TRIB'
    end
    object T_DSI_DGNR_CONTA_PGTO_TRIB: TStringField
      FieldName = 'NR_CONTA_PGTO_TRIB'
      Size = 19
    end
    object T_DSI_DGTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object T_DSI_DGIN_SERVIDOR_UL: TBooleanField
      FieldName = 'IN_SERVIDOR_UL'
    end
    object T_DSI_DGVL_TOTAL_PIS_CALC: TFloatField
      FieldName = 'VL_TOTAL_PIS_CALC'
    end
    object T_DSI_DGVL_TOTAL_COFINS_CALC: TFloatField
      FieldName = 'VL_TOTAL_COFINS_CALC'
    end
    object T_DSI_DGVL_TOTAL_PIS_A_REC: TFloatField
      FieldName = 'VL_TOTAL_PIS_A_REC'
    end
    object T_DSI_DGVL_TOTAL_COFINS_A_REC: TFloatField
      FieldName = 'VL_TOTAL_COFINS_A_REC'
    end
  end
  object T_DSI_BENS: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNDSI'
    IndexFieldNames = 'CD_DSI_MICRO;NR_BEM'
    TableName = 'DSI_BENS'
    Left = 77
    Top = 166
    object T_DSI_BENSCD_DSI_MICRO: TStringField
      FieldName = 'CD_DSI_MICRO'
      Size = 15
    end
    object T_DSI_BENSNR_BEM: TSmallintField
      FieldName = 'NR_BEM'
    end
    object T_DSI_BENSNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
    object T_DSI_BENSCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object T_DSI_BENSCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object T_DSI_BENSCD_MOTIVO_FUND_LEG: TStringField
      FieldName = 'CD_MOTIVO_FUND_LEG'
      Size = 2
    end
    object T_DSI_BENSIN_CLASSIFICACAO: TSmallintField
      FieldName = 'IN_CLASSIFICACAO'
    end
    object T_DSI_BENSCD_MERCADORIA: TStringField
      FieldName = 'CD_MERCADORIA'
      Size = 8
    end
    object T_DSI_BENSCD_DESTAQUE_NCM: TStringField
      FieldName = 'CD_DESTAQUE_NCM'
      Size = 3
    end
    object T_DSI_BENSNM_DESCRICAO_MERC: TStringField
      FieldName = 'NM_DESCRICAO_MERC'
      Size = 120
    end
    object T_DSI_BENSCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object T_DSI_BENSIN_MERCOSUL: TBooleanField
      FieldName = 'IN_MERCOSUL'
    end
    object T_DSI_BENSIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object T_DSI_BENSNM_UN_MEDID_ESTAT: TStringField
      FieldName = 'NM_UN_MEDID_ESTAT'
    end
    object T_DSI_BENSQT_UN_ESTATISTICA: TFloatField
      FieldName = 'QT_UN_ESTATISTICA'
    end
    object T_DSI_BENSNM_UN_MEDID_COMERC: TStringField
      FieldName = 'NM_UN_MEDID_COMERC'
    end
    object T_DSI_BENSQT_MERC_UN_COMERC: TFloatField
      FieldName = 'QT_MERC_UN_COMERC'
    end
    object T_DSI_BENSPB_BEM: TFloatField
      FieldName = 'PB_BEM'
    end
    object T_DSI_BENSPL_BEM: TFloatField
      FieldName = 'PL_BEM'
    end
    object T_DSI_BENSVL_UNID_LOC_EMB: TFloatField
      FieldName = 'VL_UNID_LOC_EMB'
    end
    object T_DSI_BENSVL_MERC_LOC_EMB: TFloatField
      FieldName = 'VL_MERC_LOC_EMB'
    end
    object T_DSI_BENSCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object T_DSI_BENSVL_ADUANEIRO: TFloatField
      FieldName = 'VL_ADUANEIRO'
    end
    object T_DSI_BENSVL_FRETE_MERC_MNEG: TFloatField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object T_DSI_BENSCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object T_DSI_BENSVL_FRETE_MERC_MN: TFloatField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object T_DSI_BENSVL_SEG_MERC_DOLAR: TFloatField
      FieldName = 'VL_SEG_MERC_DOLAR'
    end
    object T_DSI_BENSVL_SEG_MERC_MN: TFloatField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object T_DSI_BENSVL_MERC_EMB_DOLAR: TFloatField
      FieldName = 'VL_MERC_EMB_DOLAR'
    end
    object T_DSI_BENSVL_MERC_EMB_MN: TFloatField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object T_DSI_BENSTX_DESC_DET_MERC: TMemoField
      FieldName = 'TX_DESC_DET_MERC'
      BlobType = ftMemo
    end
    object T_DSI_BENSVL_ALIQ_ICMS: TFloatField
      FieldName = 'VL_ALIQ_ICMS'
    end
    object T_DSI_BENSCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      Size = 1
    end
    object T_DSI_BENSCD_FUND_LEG_REGIME_PISCOFINS: TStringField
      FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
      Size = 2
    end
  end
  object T_DSI_TRIB: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNDSI'
    IndexFieldNames = 'CD_DSI_MICRO;NR_BEM'
    TableName = 'DSI_TRIBUTOS_BEM'
    Left = 101
    Top = 190
    object T_DSI_TRIBCD_DSI_MICRO: TStringField
      FieldName = 'CD_DSI_MICRO'
      Size = 15
    end
    object T_DSI_TRIBNR_BEM: TSmallintField
      FieldName = 'NR_BEM'
    end
    object T_DSI_TRIBPC_ALIQ_NORM_ADVAL_II: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL_II'
    end
    object T_DSI_TRIBVL_IMPOSTO_DEVIDO_II: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO_II'
    end
    object T_DSI_TRIBVL_IPT_A_RECOLHER_II: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER_II'
    end
    object T_DSI_TRIBVL_BASE_CALC_ADVAL_II: TFloatField
      FieldName = 'VL_BASE_CALC_ADVAL_II'
    end
    object T_DSI_TRIBPC_ALIQ_NORM_ADVAL_IPI: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL_IPI'
    end
    object T_DSI_TRIBVL_IMPOSTO_DEVIDO_IPI: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO_IPI'
    end
    object T_DSI_TRIBVL_IPT_A_RECOLHER_IPI: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER_IPI'
    end
    object T_DSI_TRIBVL_BASE_CALC_ADVAL_IPI: TFloatField
      FieldName = 'VL_BASE_CALC_ADVAL_IPI'
    end
    object T_DSI_TRIBVL_BASE_CALC_ADVAL_PISCOF: TFloatField
      FieldName = 'VL_BASE_CALC_ADVAL_PISCOF'
    end
    object T_DSI_TRIBPC_ALIQ_NORM_ADVAL_PIS: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL_PIS'
    end
    object T_DSI_TRIBVL_ALIQ_ESPEC_PIS: TFloatField
      FieldName = 'VL_ALIQ_ESPEC_PIS'
    end
    object T_DSI_TRIBNM_UN_ALIQ_ESPEC_PIS: TStringField
      FieldName = 'NM_UN_ALIQ_ESPEC_PIS'
      Size = 15
    end
    object T_DSI_TRIBQT_MERC_UN_ALIQ_ESPEC_PIS: TFloatField
      FieldName = 'QT_MERC_UN_ALIQ_ESPEC_PIS'
    end
    object T_DSI_TRIBVL_IMPOSTO_CALCULADO_PIS: TFloatField
      FieldName = 'VL_IMPOSTO_CALCULADO_PIS'
    end
    object T_DSI_TRIBVL_IMPOSTO_DEVIDO_PIS: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO_PIS'
    end
    object T_DSI_TRIBVL_IPT_A_RECOLHER_PIS: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER_PIS'
    end
    object T_DSI_TRIBPC_ALIQ_NORM_ADVAL_COF: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL_COF'
    end
    object T_DSI_TRIBVL_ALIQ_ESPEC_COF: TFloatField
      FieldName = 'VL_ALIQ_ESPEC_COF'
    end
    object T_DSI_TRIBNM_UN_ALIQ_ESPEC_COF: TStringField
      FieldName = 'NM_UN_ALIQ_ESPEC_COF'
      Size = 15
    end
    object T_DSI_TRIBQT_MERC_UN_ALIQ_ESPEC_COF: TFloatField
      FieldName = 'QT_MERC_UN_ALIQ_ESPEC_COF'
    end
    object T_DSI_TRIBVL_IMPOSTO_CALCULADO_COF: TFloatField
      FieldName = 'VL_IMPOSTO_CALCULADO_COF'
    end
    object T_DSI_TRIBVL_IMPOSTO_DEVIDO_COF: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO_COF'
    end
    object T_DSI_TRIBVL_IPT_A_RECOLHER_COF: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER_COF'
    end
  end
  object T_DSI_VOLUMES: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNDSI'
    IndexFieldNames = 'CD_DSI_MICRO;NR_SEQUENCIAL'
    TableName = 'DSI_VOLUMES'
    Left = 109
    Top = 198
    object T_DSI_VOLUMESCD_DSI_MICRO: TStringField
      FieldName = 'CD_DSI_MICRO'
      Size = 15
    end
    object T_DSI_VOLUMESNR_SEQUENCIAL: TSmallintField
      FieldName = 'NR_SEQUENCIAL'
    end
    object T_DSI_VOLUMESCD_TIPO_EMBALAGEM: TStringField
      FieldName = 'CD_TIPO_EMBALAGEM'
      Size = 2
    end
    object T_DSI_VOLUMESQT_VOLUME_CARGA: TIntegerField
      FieldName = 'QT_VOLUME_CARGA'
    end
  end
  object q_bens: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Faturas.Empresa, Faturas.Filial, Faturas.Processo, Fatura' +
        's.Codigo AS fatura, cast([itensfaturas].[Pagina] as integer) AS ' +
        'qpag, cast([itensfaturas].[Sequencial] as integer) AS qseq, Trib' +
        'utacao_Item_Fatura.Regime_Tributacao_II, Tributacao_Item_Fatura.' +
        'Fundamento_Legal_II, Tributacao_Item_Fatura.Motivo_Adm_Temp, Ite' +
        'nsFaturas.NCM, ItensFaturas.Destaque_NCM, TAB_NCM.DESCRICAO AS d' +
        'escr_ncm, [Fabricantes_Produtores].Pais, Tributacao_Item_Fatura.' +
        'IN_MATERIAL_USADO, Tributacao_Item_Fatura.IN_BEM_ENCOMENDA, Iten' +
        'sFaturas.Unidade_Medida_Estat, TAB_UNID_MEDIDA_1.DESCRICAO AS de' +
        'scr_ume, ItensFaturas.Unidade, TAB_UNID_MEDIDA.DESCRICAO AS desc' +
        'r_um, ItensFaturas.Quantidade, ItensFaturas.Peso_Unitario_Acerta' +
        'do, ItensFaturas.Peso_Total_Acertado, ItensFaturas.[Valor_Unitar' +
        'io], ItensFaturas.[Valor_Total], Faturas.Moeda, ItensFaturas.Val' +
        'or_Aduaneiro, ItensFaturas.Valor_mercadoria, ItensFaturas.Rateio' +
        '_Frete_prepaid, ItensFaturas.Rateio_Frete_collect, ItensFaturas.' +
        'Rateio_Frete_ternac, ItensFaturas.Rateio_Seguro, substring([Desc' +
        'ricao_Produto],1,255) AS [desc], ItensFaturas.Produto, ItensFatu' +
        'ras.Numero_serie, Tributacao_Item_Fatura.Certificado_Origem, Ite' +
        'nsFaturas.Referencia, ItensFaturas.Referencia_projeto, ItensFatu' +
        'ras.PO, ItensFaturas.Seqpo, ItensFaturas.Pagina, Tributacao_Item' +
        '_Fatura.Aliq_NCM_II, ItensFaturas.Base_Calc_II, Tributacao_Item_' +
        'Fatura.Valor_II_Devido, Tributacao_Item_Fatura.Valor_II_a_recolh' +
        'er, Tributacao_Item_Fatura.Aliq_NCM_IPI, Tributacao_Item_Fatura.' +
        'Base_Calc_IPI, Tributacao_Item_Fatura.Valor_IPI_Devido, Tributac' +
        'ao_Item_Fatura.Valor_IPI_a_recolher, Tributacao_Item_Fatura.CD_R' +
        'EGIME_TRIBUTAR_PISCOFINS, Tributacao_Item_Fatura.CD_FUND_LEG_REG' +
        'IME_PISCOFINS, Tributacao_Item_Fatura.PC_ALIQ_REDUZIDA_PIS, Trib' +
        'utacao_Item_Fatura.PC_ALIQ_REDUZIDA_COFINS, Tributacao_Item_Fatu' +
        'ra.Aliq_ICMS, Tributacao_Item_Fatura.Aliq_ICMS_EXTRA, Processos_' +
        'ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_P' +
        'IS_COFINS.Aliq_COFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_P' +
        'ISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Pro' +
        'cessos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS, ItensFaturas.VMLE, ' +
        'Faturas.Peso_Libra'
      
        'FROM ((((((Faturas INNER JOIN ItensFaturas ON (Faturas.Empresa =' +
        ' ItensFaturas.Empresa) AND (Faturas.Filial = ItensFaturas.Filial' +
        ') AND (Faturas.Processo = ItensFaturas.Processo) AND (Faturas.Co' +
        'digo = ItensFaturas.Fatura)) INNER JOIN Tributacao_Item_Fatura O' +
        'N (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa) AND (I' +
        'tensFaturas.Filial = Tributacao_Item_Fatura.Filial) AND (ItensFa' +
        'turas.Processo = Tributacao_Item_Fatura.Processo) AND (ItensFatu' +
        'ras.Fatura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Se' +
        'quencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN TA' +
        'B_NCM ON ItensFaturas.NCM = TAB_NCM.CODIGO) LEFT JOIN [Fabricant' +
        'es_Produtores] ON (Faturas.Empresa = [Fabricantes_Produtores].Em' +
        'presa) AND (Faturas.Filial = [Fabricantes_Produtores].Filial) AN' +
        'D (Faturas.Exportador = [Fabricantes_Produtores].Codigo)) LEFT J' +
        'OIN TAB_UNID_MEDIDA ON ItensFaturas.Unidade = TAB_UNID_MEDIDA.CO' +
        'DIGO) LEFT JOIN TAB_UNID_MEDIDA AS TAB_UNID_MEDIDA_1 ON ItensFat' +
        'uras.Unidade_Medida_Estat = TAB_UNID_MEDIDA_1.CODIGO) INNER JOIN' +
        ' Processos_ADICOES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Em' +
        'presa = Processos_ADICOES_ICMS_PIS_COFINS.Empresa) AND (Tributac' +
        'ao_Item_Fatura.Filial = Processos_ADICOES_ICMS_PIS_COFINS.Filial' +
        ') AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_' +
        'PIS_COFINS.Processo) AND (Tributacao_Item_Fatura.Adicao = Proces' +
        'sos_ADICOES_ICMS_PIS_COFINS.Adicao)'
      
        'GROUP BY Faturas.Empresa, Faturas.Filial, Faturas.Processo, Fatu' +
        'ras.Codigo, cast([itensfaturas].[Pagina] as integer), cast([iten' +
        'sfaturas].[Sequencial] as integer), Tributacao_Item_Fatura.Regim' +
        'e_Tributacao_II, Tributacao_Item_Fatura.Fundamento_Legal_II, Tri' +
        'butacao_Item_Fatura.Motivo_Adm_Temp, ItensFaturas.NCM, ItensFatu' +
        'ras.Destaque_NCM, TAB_NCM.DESCRICAO, [Fabricantes_Produtores].Pa' +
        'is, Tributacao_Item_Fatura.IN_MATERIAL_USADO, Tributacao_Item_Fa' +
        'tura.IN_BEM_ENCOMENDA, ItensFaturas.Unidade_Medida_Estat, TAB_UN' +
        'ID_MEDIDA_1.DESCRICAO, ItensFaturas.Unidade, TAB_UNID_MEDIDA.DES' +
        'CRICAO, ItensFaturas.Quantidade, ItensFaturas.Peso_Unitario_Acer' +
        'tado, ItensFaturas.Peso_Total_Acertado, ItensFaturas.[Valor_Unit' +
        'ario], ItensFaturas.[Valor_Total], Faturas.Moeda, ItensFaturas.V' +
        'alor_Aduaneiro, ItensFaturas.Valor_mercadoria, ItensFaturas.Rate' +
        'io_Frete_prepaid, ItensFaturas.Rateio_Frete_collect, ItensFatura' +
        's.Rateio_Frete_ternac, ItensFaturas.Rateio_Seguro, substring([De' +
        'scricao_Produto],1,255), ItensFaturas.Produto, ItensFaturas.Nume' +
        'ro_serie, Tributacao_Item_Fatura.Certificado_Origem, ItensFatura' +
        's.Referencia, ItensFaturas.Referencia_projeto, ItensFaturas.PO, ' +
        'ItensFaturas.Seqpo, ItensFaturas.Pagina, Tributacao_Item_Fatura.' +
        'Aliq_NCM_II, ItensFaturas.Base_Calc_II, Tributacao_Item_Fatura.V' +
        'alor_II_Devido, Tributacao_Item_Fatura.Valor_II_a_recolher, Trib' +
        'utacao_Item_Fatura.Aliq_NCM_IPI, Tributacao_Item_Fatura.Base_Cal' +
        'c_IPI, Tributacao_Item_Fatura.Valor_IPI_Devido, Tributacao_Item_' +
        'Fatura.Valor_IPI_a_recolher, Tributacao_Item_Fatura.CD_REGIME_TR' +
        'IBUTAR_PISCOFINS, Tributacao_Item_Fatura.CD_FUND_LEG_REGIME_PISC' +
        'OFINS, Tributacao_Item_Fatura.PC_ALIQ_REDUZIDA_PIS, Tributacao_I' +
        'tem_Fatura.PC_ALIQ_REDUZIDA_COFINS, Tributacao_Item_Fatura.Aliq_' +
        'ICMS, Tributacao_Item_Fatura.Aliq_ICMS_EXTRA, Processos_ADICOES_' +
        'ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFIN' +
        'S.Aliq_COFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS' +
        ', Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_A' +
        'DICOES_ICMS_PIS_COFINS.VALOR_COFINS, ItensFaturas.VMLE, Faturas.' +
        'Peso_Libra'
      'HAVING (((Faturas.Processo)=:qpro))'
      
        'ORDER BY Faturas.Processo, Faturas.Codigo, cast([itensfaturas].[' +
        'Pagina] as integer ), cast([itensfaturas].[Sequencial] as intege' +
        'r);')
    Left = 541
    Top = 206
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02134/02'
      end>
    object q_bensEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_bensFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_bensProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_bensfatura: TStringField
      FieldName = 'fatura'
      FixedChar = True
      Size = 30
    end
    object q_bensqpag: TIntegerField
      FieldName = 'qpag'
    end
    object q_bensqseq: TIntegerField
      FieldName = 'qseq'
    end
    object q_bensRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_bensFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object q_bensMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object q_bensNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object q_bensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object q_bensdescr_ncm: TStringField
      FieldName = 'descr_ncm'
      FixedChar = True
      Size = 120
    end
    object q_bensPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object q_bensIN_MATERIAL_USADO: TIntegerField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object q_bensIN_BEM_ENCOMENDA: TIntegerField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object q_bensUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object q_bensdescr_ume: TStringField
      FieldName = 'descr_ume'
      FixedChar = True
      Size = 120
    end
    object q_bensUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object q_bensdescr_um: TStringField
      FieldName = 'descr_um'
      FixedChar = True
      Size = 120
    end
    object q_bensQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_bensPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object q_bensPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object q_bensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object q_bensValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object q_bensMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object q_bensValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object q_bensValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object q_bensRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object q_bensRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object q_bensRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object q_bensRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object q_bensdesc: TMemoField
      FieldName = 'desc'
      BlobType = ftMemo
    end
    object q_bensProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object q_bensNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object q_bensCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
    object q_bensReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object q_bensReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object q_bensPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object q_bensSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object q_bensPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object q_bensAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object q_bensBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object q_bensValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object q_bensValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object q_bensAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object q_bensBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object q_bensValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object q_bensValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object q_bensCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object q_bensCD_FUND_LEG_REGIME_PISCOFINS: TStringField
      FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
      FixedChar = True
      Size = 2
    end
    object q_bensPC_ALIQ_REDUZIDA_PIS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_PIS'
    end
    object q_bensPC_ALIQ_REDUZIDA_COFINS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_COFINS'
    end
    object q_bensAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object q_bensAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object q_bensAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object q_bensAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object q_bensBASEC_PISCOFINS: TFloatField
      FieldName = 'BASEC_PISCOFINS'
    end
    object q_bensVALOR_PIS_PASEP: TFloatField
      FieldName = 'VALOR_PIS_PASEP'
    end
    object q_bensVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object q_bensVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object q_bensPeso_Libra: TIntegerField
      FieldName = 'Peso_Libra'
    end
  end
  object q_excpiscofins: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE FROM Processos_ADICOES_ICMS_PIS_COFINS'
      'WHERE (((Processos_ADICOES_ICMS_PIS_COFINS.Processo)=:qpro));')
    Left = 597
    Top = 297
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_incpiscofins: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Processos_ADICOES_ICMS_PIS_COFINS ( Empresa, Filial,' +
        ' Processo, Adicao, NCM, VA, OT, DA, Aliq_NCM_II, Aliq_NCM_IPI, A' +
        'liq_PIS_PASEP, Aliq_COFINS, Aliq_ICMS, Aliq_ICMS_EXTRA, BASEC_PI' +
        'SCOFINS, BASEC_ICMS, VALOR_II, VALOR_IPI, VALOR_ICMS, VALOR_ICMS' +
        '_EXTRA, VALOR_PIS_PASEP, VALOR_COFINS, Prazo_permanencia, FOB )'
      
        'SELECT ITF.Empresa, ITF.Filial, ITF.Processo, tif.Adicao, ITF.NC' +
        'M, Sum(([ITF].[Base_Calc_II]*[PTC].[taxa_conversao])) AS VA, 0, ' +
        '0, ([TIF].[Aliq_NCM_II]*(100-[tif].[Percentual_Reducao_II]))/100' +
        ' AS qaliqii, ([TIF].[Aliq_NCM_IPI]*(100-[tif].[Percentual_reduca' +
        '_ipi]))/100 AS qaliqipi, CASE WHEN ([TIF].[CD_REGIME_TRIBUTAR_PI' +
        'SCOFINS]='#39'4'#39') THEN replace([tif].[PC_ALIQ_REDUZIDA_PIS],'#39','#39','#39'.'#39')' +
        ' ELSE replace([TAB_NCM].[ALIQUOTA_PIS_ADVAL],'#39','#39','#39'.'#39') END , CASE' +
        ' WHEN ([TIF].[CD_REGIME_TRIBUTAR_PISCOFINS]='#39'4'#39') THEN replace([t' +
        'if].[PC_ALIQ_REDUZIDA_COFINS],'#39','#39','#39'.'#39') ELSE replace([TAB_NCM].[A' +
        'LIQUOTA_COFINS_ADVAL],'#39','#39','#39'.'#39') END, tif.Aliq_ICMS, tif.Aliq_ICMS' +
        '_EXTRA, 0, 0, Sum(([TIF].[valor_II_a_recolher]*[PTC].[taxa_conve' +
        'rsao])) AS VII, Sum(([TIF].[valor_IPI_a_recolher]*[PTC].[taxa_co' +
        'nversao])) AS VIpI, 0, 0, 0, 0, tif.Prazo_permanencia, Sum(([itf' +
        '].[VALOR_MERCADORIA]*[ptc].[taxa_conversao])) AS FOB'
      
        'FROM ((((ItensFaturas AS ITF LEFT JOIN Tributacao_Item_Fatura AS' +
        ' tif ON (ITF.Empresa = tif.Empresa) AND (ITF.Filial = tif.Filial' +
        ') AND (ITF.Processo = tif.Processo) AND (ITF.Fatura = tif.Fatura' +
        ') AND (ITF.Sequencial = tif.Sequencial_Item)) LEFT JOIN Faturas ' +
        'ON (ITF.Empresa = Faturas.Empresa) AND (ITF.Filial = Faturas.Fil' +
        'ial) AND (ITF.Processo = Faturas.Processo) AND (ITF.Fatura = Fat' +
        'uras.Codigo)) LEFT JOIN Processos_Taxas_Conversao AS PTC ON (Fat' +
        'uras.Moeda = PTC.Moeda) AND (Faturas.Processo = PTC.Processo)) L' +
        'EFT JOIN Parametros ON (ITF.Empresa = Parametros.Empresa) AND (I' +
        'TF.Filial = Parametros.Filial)) INNER JOIN TAB_NCM ON ITF.NCM = ' +
        'TAB_NCM.CODIGO'
      
        'GROUP BY ITF.Empresa, ITF.Filial, ITF.Processo, tif.Adicao, ITF.' +
        'NCM, ([TIF].[Aliq_NCM_II]*(100-[tif].[Percentual_Reducao_II]))/1' +
        '00, ([TIF].[Aliq_NCM_IPI]*(100-[tif].[Percentual_Reduca_IPI]))/1' +
        '00, [TIF].[CD_REGIME_TRIBUTAR_PISCOFINS],[tif].[PC_ALIQ_REDUZIDA' +
        '_PIS],[TAB_NCM].[ALIQUOTA_PIS_ADVAL], [tif].[PC_ALIQ_REDUZIDA_CO' +
        'FINS],[TAB_NCM].[ALIQUOTA_COFINS_ADVAL], tif.Aliq_ICMS, tif.Aliq' +
        '_ICMS_EXTRA, tif.Prazo_permanencia, tif.CD_FUND_LEG_REGIME_PISCO' +
        'FINS, tif.PC_ALIQ_REDUZIDA_PIS, tif.CD_REGIME_TRIBUTAR_PISCOFINS' +
        ', tif.Aliq_NCM_II, tif.Aliq_NCM_IPI'
      
        'HAVING (((ITF.Empresa)=:qemp) AND ((ITF.Filial)=:qfil) AND ((ITF' +
        '.Processo)=:qpro))'
      ''
      ''
      '')
    Left = 592
    Top = 249
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
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object ds_propis: TDataSource
    Left = 720
    Top = 80
  end
  object q_isen_sus: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Empresa, Tributacao_Item_Fatura.Fi' +
        'lial, Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.Re' +
        'gime_Tributacao_II, Tributacao_Item_Fatura.Fundamento_Legal_II, ' +
        'Tributacao_Item_Fatura.Adicao'
      'FROM Tributacao_Item_Fatura'
      
        'GROUP BY Tributacao_Item_Fatura.Empresa, Tributacao_Item_Fatura.' +
        'Filial, Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.' +
        'Regime_Tributacao_II, Tributacao_Item_Fatura.Fundamento_Legal_II' +
        ', Tributacao_Item_Fatura.Adicao'
      
        'HAVING (((Tributacao_Item_Fatura.Processo)=:qpro) AND ((Tributac' +
        'ao_Item_Fatura.Regime_Tributacao_II)=:qtrib) AND ((Tributacao_It' +
        'em_Fatura.Fundamento_Legal_II)=:qfund))'
      
        'ORDER BY Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao' +
        '_Item_Fatura.Fundamento_Legal_II, Tributacao_Item_Fatura.Adicao;')
    Left = 664
    Top = 73
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qtrib'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfund'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_isen_susEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_isen_susFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Filial'
      FixedChar = True
      Size = 4
    end
    object q_isen_susProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      FixedChar = True
      Size = 8
    end
    object q_isen_susRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_isen_susFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object q_isen_susAdicao: TStringField
      FieldName = 'Adicao'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Adicao'
      FixedChar = True
      Size = 3
    end
  end
  object t_ncm_vutil: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'ncm'
    TableName = 'NCM_VIDA_UTIL'
    Left = 612
    Top = 116
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
  object q_piscofinstrib: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.A' +
        'dicao, Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_IPI, TAB_REG_TRIBUTARIO.DESCRICAO, ' +
        'Tributacao_Item_Fatura.CD_REGIME_TRIBUTAR_PISCOFINS, Tributacao_' +
        'Item_Fatura.Tratamento_Tributario'
      
        'FROM Tributacao_Item_Fatura INNER JOIN TAB_REG_TRIBUTARIO ON Tri' +
        'butacao_Item_Fatura.Regime_Tributacao_II = TAB_REG_TRIBUTARIO.CO' +
        'DIGO'
      
        'GROUP BY Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura' +
        '.Adicao, Tributacao_Item_Fatura.Regime_Tributacao_II, Tributacao' +
        '_Item_Fatura.Regime_Tributacao_IPI, TAB_REG_TRIBUTARIO.DESCRICAO' +
        ', Tributacao_Item_Fatura.CD_REGIME_TRIBUTAR_PISCOFINS, Tributaca' +
        'o_Item_Fatura.Tratamento_Tributario'
      'HAVING (((Tributacao_Item_Fatura.Processo)=:qpro))'
      'ORDER BY Tributacao_Item_Fatura.Adicao;')
    Left = 664
    Top = 49
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '01132/04'
      end>
    object q_piscofinstribProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Processo'
      FixedChar = True
      Size = 8
    end
    object q_piscofinstribAdicao: TStringField
      FieldName = 'Adicao'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Adicao'
      FixedChar = True
      Size = 3
    end
    object q_piscofinstribRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_piscofinstribRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object q_piscofinstribDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_REG_TRIBUTARIO.DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_piscofinstribCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object q_piscofinstribTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      Origin = 'DBNMSCOMEX.Tributacao_Item_Fatura.Tratamento_Tributario'
      FixedChar = True
      Size = 1
    end
  end
  object tbproregimp: TTable
    AfterPost = tbproregimpAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = dsprocessos
    TableName = 'Processos_registro_impostos'
    Left = 412
    Top = 13
    object tbproregimpEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object tbproregimpFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object tbproregimpProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object tbproregimpBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object tbproregimpAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object tbproregimpConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object tbproregimpII: TFloatField
      FieldName = 'II'
    end
    object tbproregimpIPI: TFloatField
      FieldName = 'IPI'
    end
    object tbproregimpTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object tbproregimpBancoc: TStringField
      FieldName = 'Bancoc'
      Size = 5
    end
    object tbproregimpAgenciac: TStringField
      FieldName = 'Agenciac'
      Size = 5
    end
    object tbproregimpConta_Correntec: TStringField
      FieldName = 'Conta_Correntec'
      Size = 8
    end
    object tbproregimpIIc: TFloatField
      FieldName = 'IIc'
    end
    object tbproregimpIPIc: TFloatField
      FieldName = 'IPIc'
    end
    object tbproregimpTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object tbproregimpEnviou_adcc: TIntegerField
      FieldName = 'Enviou_adcc'
    end
    object tbproregimpEnviou_adcc_c: TIntegerField
      FieldName = 'Enviou_adcc_c'
    end
    object tbproregimpEnviou_adr: TIntegerField
      FieldName = 'Enviou_adr'
    end
    object tbproregimpEnviou_adr_c: TIntegerField
      FieldName = 'Enviou_adr_c'
    end
  end
  object q_gravaFOB: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT papc.Processo, papc.Adicao, papc.FOB, Sum(([itf].[Valor_M' +
        'ercadoria]*[ptc].[taxa_conversao])) AS FOBnovo'
      
        'FROM (((Processos_ADICOES_ICMS_PIS_COFINS AS papc INNER JOIN Tri' +
        'butacao_Item_Fatura AS tif ON (papc.Adicao = tif.Adicao) AND (pa' +
        'pc.Processo = tif.Processo) AND (papc.Filial = tif.Filial) AND (' +
        'papc.Empresa = tif.Empresa)) INNER JOIN ItensFaturas AS itf ON (' +
        'tif.Sequencial_Item = itf.Sequencial) AND (tif.Fatura = itf.Fatu' +
        'ra) AND (tif.Processo = itf.Processo) AND (tif.Filial = itf.Fili' +
        'al) AND (tif.Empresa = itf.Empresa)) INNER JOIN Faturas AS fat O' +
        'N (itf.Fatura = fat.Codigo) AND (itf.Processo = fat.Processo) AN' +
        'D (itf.Filial = fat.Filial) AND (itf.Empresa = fat.Empresa)) INN' +
        'ER JOIN Processos_Taxas_Conversao AS ptc ON (fat.Moeda = ptc.Moe' +
        'da) AND (fat.Processo = ptc.Processo) AND (fat.Filial = ptc.Fili' +
        'al) AND (fat.Empresa = ptc.Empresa)'
      'GROUP BY papc.Processo, papc.Adicao, papc.FOB'
      'HAVING (((papc.Processo)=:qpro))'
      'ORDER BY papc.Processo;')
    Left = 624
    Top = 97
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '00020/05'
      end>
    object q_gravaFOBProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_gravaFOBAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_gravaFOBFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_gravaFOBFOBnovo: TFloatField
      FieldName = 'FOBnovo'
    end
  end
  object T_aladi: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_ALADI'
    Left = 212
    Top = 223
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
  object T_atos: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Tipo_Ato;Numero'
    TableName = 'Atos_Legais'
    Left = 216
    Top = 250
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
  object t_tpato: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_TP_ATO_LEGAL'
    Left = 328
    Top = 202
    object t_tpatoCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 10
    end
    object t_tpatoDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
  end
  object q_prodocs: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos_Docs_Instrucao.Empresa, Processos_Docs_Instruca' +
        'o.Filial, Processos_Docs_Instrucao.Processo, Processos_Docs_Inst' +
        'rucao.REG, TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO, Processos_Docs_' +
        'Instrucao.CD_TIPO_DCTO_INSTR, Processos_Docs_Instrucao.NR_DCTO_I' +
        'NSTRUCAO, Processos_Docs_Instrucao.NM_DCTO_INSTRUCAO '
      
        'FROM Processos_Docs_Instrucao LEFT JOIN TAB_DOC_INSTRUCAO_DESPAC' +
        'HO ON Processos_Docs_Instrucao.CD_TIPO_DCTO_INSTR = TAB_DOC_INST' +
        'RUCAO_DESPACHO.CODIGO'
      'WHERE (((Processos_Docs_Instrucao.Processo)=:qpro))'
      'ORDER BY TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO;')
    Left = 400
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02348/07'
      end>
    object q_prodocsEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_prodocsFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.Filial'
      FixedChar = True
      Size = 4
    end
    object q_prodocsProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.Processo'
      FixedChar = True
      Size = 8
    end
    object q_prodocsREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.REG'
    end
    object q_prodocsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_DOC_INSTRUCAO_DESPACHO.DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_prodocsCD_TIPO_DCTO_INSTR: TStringField
      FieldName = 'CD_TIPO_DCTO_INSTR'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.CD_TIPO_DCTO_INSTR'
      FixedChar = True
      Size = 2
    end
    object q_prodocsNR_DCTO_INSTRUCAO: TStringField
      FieldName = 'NR_DCTO_INSTRUCAO'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.NR_DCTO_INSTRUCAO'
      FixedChar = True
      Size = 25
    end
    object q_prodocsNM_DCTO_INSTRUCAO: TStringField
      FieldName = 'NM_DCTO_INSTRUCAO'
      Origin = 'DBNMSCOMEX.Processos_Docs_Instrucao.NM_DCTO_INSTRUCAO'
      FixedChar = True
      Size = 60
    end
  end
  object q_tributacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tributacao_Item_Fatura.Empresa, Tributacao_Item_Fatura.Fi' +
        'lial, Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura.Fa' +
        'tura, cast([Sequencial_Item] as integer) AS seq, Tributacao_Item' +
        '_Fatura.Sequencial_Item, Tributacao_Item_Fatura.Sequencial'
      'FROM Tributacao_Item_Fatura'
      'WHERE (((Tributacao_Item_Fatura.Processo)=:qpro))'
      
        'ORDER BY Tributacao_Item_Fatura.Processo, Tributacao_Item_Fatura' +
        '.Fatura, cast([Sequencial_Item] as integer), Tributacao_Item_Fat' +
        'ura.Sequencial')
    Left = 144
    Top = 326
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '00052/08'
      end>
    object q_tributacaoEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_tributacaoFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_tributacaoProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_tributacaoFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_tributacaoseq: TIntegerField
      FieldName = 'seq'
    end
    object q_tributacaoSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      FixedChar = True
      Size = 4
    end
    object q_tributacaoSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
  end
  object q_uppropis: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Processos_ADICOES_ICMS_PIS_COFINS SET '
      'Processos_ADICOES_ICMS_PIS_COFINS.NCM  = :NCM,'
      'Processos_ADICOES_ICMS_PIS_COFINS.VA  = :VA,'
      'Processos_ADICOES_ICMS_PIS_COFINS.OT  = :OT,'
      'Processos_ADICOES_ICMS_PIS_COFINS.DA  = :DA,'
      'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II  = :ALIQ_II,'
      'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI  = :ALIQ_IPI,'
      
        'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP = :ALIQ_PISPASE' +
        'P,'
      'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS = :ALIQ_COFINS,'
      'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS = :ALIQ_ICMS,'
      
        'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA = :ALIQ_ICMSEX' +
        'TRA,'
      'Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS = :BASE_PISCO,'
      'Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS = :BASE_ICMS,'
      'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II = :VALOR_II,'
      'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI = :VALOR_IPI,'
      'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS = :VALOR_ICMS,'
      
        'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA = :VALOR_ICMS' +
        'EXTRA,'
      
        'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP = :VALOR_PISPA' +
        'SEP,'
      'Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS = :VALOR_COFINS,'
      'Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia = :PRAZO,'
      'Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional = :VA_P,'
      
        'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional = :AL' +
        'IQ_II_P,'
      
        'Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional = :A' +
        'LIQ_IPI_P,'
      'Processos_ADICOES_ICMS_PIS_COFINS.FOB = :FOB '
      
        'WHERE (((Processos_ADICOES_ICMS_PIS_COFINS.Processo)=:qpro) AND ' +
        '((Processos_ADICOES_ICMS_PIS_COFINS.Adicao)=:qadi))')
    Left = 509
    Top = 294
    ParamData = <
      item
        DataType = ftString
        Name = 'NCM'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'OT'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'DA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_II'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_IPI'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_PISPASEP'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_COFINS'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_ICMS'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_ICMSEXTRA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'BASE_PISCO'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'BASE_ICMS'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VALOR_II'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VALOR_IPI'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ICMS'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ICMSEXTRA'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PISPASEP'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VALOR_COFINS'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'PRAZO'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'VA_p'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_II_p'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ALIQ_IPI_p'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FOB'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'qadi'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object q_propis: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos_ADICOES_ICMS_PIS_COFINS.Empresa, Processos_ADIC' +
        'OES_ICMS_PIS_COFINS.Filial, Processos_ADICOES_ICMS_PIS_COFINS.Pr' +
        'ocesso, Processos_ADICOES_ICMS_PIS_COFINS.Adicao, Processos_ADIC' +
        'OES_ICMS_PIS_COFINS.NCM, Processos_ADICOES_ICMS_PIS_COFINS.VA, P' +
        'rocessos_ADICOES_ICMS_PIS_COFINS.OT, Processos_ADICOES_ICMS_PIS_' +
        'COFINS.DA, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Proces' +
        'sos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI, Processos_ADICOES_ICMS' +
        '_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.Al' +
        'iq_COFINS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processo' +
        's_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA, Processos_ADICOES_ICM' +
        'S_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.' +
        'BASEC_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II, Processo' +
        's_ADICOES_ICMS_PIS_COFINS.VALOR_IPI, Processos_ADICOES_ICMS_PIS_' +
        'COFINS.VALOR_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_' +
        'EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Proces' +
        'sos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS, Processos_ADICOES_ICMS' +
        '_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS' +
        '.VA_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_' +
        'proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_pro' +
        'porcional, Processos_ADICOES_ICMS_PIS_COFINS.FOB'
      'FROM Processos_ADICOES_ICMS_PIS_COFINS'
      'WHERE (((Processos_ADICOES_ICMS_PIS_COFINS.Processo)=:qpro))'
      'ORDER BY Processos_ADICOES_ICMS_PIS_COFINS.Adicao;')
    Left = 296
    Top = 377
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02541/08'
      end>
    object q_propisEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_propisFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Filial'
      FixedChar = True
      Size = 4
    end
    object q_propisProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Processo'
      FixedChar = True
      Size = 8
    end
    object q_propisAdicao: TStringField
      FieldName = 'Adicao'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Adicao'
      FixedChar = True
      Size = 3
    end
    object q_propisNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.NCM'
      FixedChar = True
      Size = 8
    end
    object q_propisVA: TFloatField
      FieldName = 'VA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VA'
    end
    object q_propisOT: TFloatField
      FieldName = 'OT'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.OT'
    end
    object q_propisDA: TFloatField
      FieldName = 'DA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.DA'
    end
    object q_propisAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II'
    end
    object q_propisAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI'
    end
    object q_propisAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP'
    end
    object q_propisAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS'
    end
    object q_propisAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS'
    end
    object q_propisAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA'
    end
    object q_propisBASEC_PISCOFINS: TFloatField
      FieldName = 'BASEC_PISCOFINS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS'
    end
    object q_propisBASEC_ICMS: TFloatField
      FieldName = 'BASEC_ICMS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS'
    end
    object q_propisVALOR_II: TFloatField
      FieldName = 'VALOR_II'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II'
    end
    object q_propisVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI'
    end
    object q_propisVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS'
    end
    object q_propisVALOR_ICMS_EXTRA: TFloatField
      FieldName = 'VALOR_ICMS_EXTRA'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA'
    end
    object q_propisVALOR_PIS_PASEP: TFloatField
      FieldName = 'VALOR_PIS_PASEP'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP'
    end
    object q_propisVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS'
    end
    object q_propisPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia'
    end
    object q_propisVA_proporcional: TFloatField
      FieldName = 'VA_proporcional'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional'
    end
    object q_propisAliq_NCM_II_proporcional: TFloatField
      FieldName = 'Aliq_NCM_II_proporcional'
      Origin = 
        'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporc' +
        'ional'
    end
    object q_propisAliq_NCM_IPI_proporcional: TFloatField
      FieldName = 'Aliq_NCM_IPI_proporcional'
      Origin = 
        'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_propor' +
        'cional'
    end
    object q_propisFOB: TFloatField
      FieldName = 'FOB'
      Origin = 'DBNMSCOMEX.Processos_ADICOES_ICMS_PIS_COFINS.FOB'
    end
  end
  object dsq_propis: TDataSource
    DataSet = q_propis
    Left = 392
    Top = 288
  end
  object t_processos: TTable
    AutoCalcFields = False
    AfterPost = t_processosAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Processos'
    Left = 261
    Top = 6
    object t_processosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_processosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_processosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object t_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object t_processosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object t_processosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      FixedChar = True
      Size = 60
    end
    object t_processosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      FixedChar = True
      Size = 2
    end
    object t_processosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 2
    end
    object t_processosContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object t_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object t_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      FixedChar = True
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object t_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object t_processosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object t_processosCanal: TStringField
      FieldName = 'Canal'
      FixedChar = True
      Size = 1
    end
    object t_processosFiscal: TStringField
      FieldName = 'Fiscal'
      FixedChar = True
    end
    object t_processosStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 3
    end
    object t_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object t_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      FixedChar = True
      Size = 1
    end
    object t_processosIN_MOEDA_UNICA: TIntegerField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object t_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object t_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      FixedChar = True
      Size = 1
    end
    object t_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
      FixedChar = True
    end
    object t_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object t_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object t_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      FixedChar = True
      Size = 4
    end
    object t_processosProcurador: TStringField
      FieldName = 'Procurador'
      FixedChar = True
      Size = 4
    end
    object t_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
      FixedChar = True
    end
    object t_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object t_processosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object t_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object t_processosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object t_processosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object t_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      FixedChar = True
      Size = 1
    end
    object t_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      FixedChar = True
      Size = 5
    end
    object t_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object t_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
      FixedChar = True
    end
    object t_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      FixedChar = True
      Size = 50
    end
    object t_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      FixedChar = True
      Size = 18
    end
    object t_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      FixedChar = True
      Size = 200
    end
    object t_processosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object t_processosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object t_processosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object t_processosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object t_processosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      FixedChar = True
      Size = 10
    end
    object t_processosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object t_processosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      FixedChar = True
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      FixedChar = True
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      FixedChar = True
      Size = 10
    end
    object t_processosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      FixedChar = True
      Size = 8
    end
    object t_processosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object t_processosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object t_processosCanalC: TStringField
      FieldName = 'CanalC'
      FixedChar = True
      Size = 1
    end
    object t_processosFiscalC: TStringField
      FieldName = 'FiscalC'
      FixedChar = True
    end
    object t_processosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      FixedChar = True
      Size = 1
    end
    object t_processosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object t_processosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object t_processosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object t_processosident_meio1: TStringField
      FieldName = 'ident_meio1'
      FixedChar = True
      Size = 100
    end
    object t_processosident_meio2: TStringField
      FieldName = 'ident_meio2'
      FixedChar = True
      Size = 100
    end
    object t_processosCodevento: TStringField
      FieldName = 'Codevento'
      FixedChar = True
      Size = 4
    end
    object t_processosCodobs: TStringField
      FieldName = 'Codobs'
      FixedChar = True
      Size = 4
    end
    object t_processosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      FixedChar = True
      Size = 120
    end
    object t_processosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object t_processosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      FixedChar = True
      Size = 5
    end
    object t_processosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object t_processosUrgente: TIntegerField
      FieldName = 'Urgente'
    end
    object t_processosconsolidado: TIntegerField
      FieldName = 'consolidado'
    end
    object t_processosPag_proporcional: TIntegerField
      FieldName = 'Pag_proporcional'
    end
    object t_processosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object t_processosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object t_processosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object t_processosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object t_processosDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 30
    end
    object t_processosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      FixedChar = True
      Size = 30
    end
    object t_processosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object t_processosFaturado: TIntegerField
      FieldName = 'Faturado'
    end
    object t_processosFechado: TIntegerField
      FieldName = 'Fechado'
    end
    object t_processosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      FixedChar = True
      Size = 4
    end
    object t_processosProcurador2: TStringField
      FieldName = 'Procurador2'
      FixedChar = True
      Size = 4
    end
    object t_processosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object t_processosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object t_processosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      FixedChar = True
      Size = 100
    end
    object t_processosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      FixedChar = True
      Size = 10
    end
    object t_processosvinc_processo: TIntegerField
      FieldName = 'vinc_processo'
    end
    object t_processosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      FixedChar = True
      Size = 8
    end
    object t_processossem_nfs: TIntegerField
      FieldName = 'sem_nfs'
    end
  end
  object dsprocessos: TDataSource
    DataSet = t_processos
    Left = 232
    Top = 24
  end
  object q_uptrib: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Tributacao_Item_Fatura set Seq_Adicao=:qseq'
      
        'where Processo=:qpro and Fatura=:qfat and Sequencial_Item=:qitse' +
        'q and Sequencial=:qittrib')
    Left = 516
    Top = 325
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qseq'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '05932/09'
      end
      item
        DataType = ftString
        Name = 'qfat'
        ParamType = ptUnknown
        Value = '09-3170'
      end
      item
        DataType = ftString
        Name = 'qitseq'
        ParamType = ptUnknown
        Value = '55'
      end
      item
        DataType = ftString
        Name = 'qittrib'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_updet: TQuery
    DatabaseName = 'DBNSISCOMEX'
    Left = 536
    Top = 329
  end
  object q_tributaup: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT     Tributacao_Item_Fatura.*, ItensFaturas.*, Faturas.*'
      'FROM         ItensFaturas INNER JOIN'
      
        '                      Tributacao_Item_Fatura ON ItensFaturas.Emp' +
        'resa = Tributacao_Item_Fatura.Empresa AND ItensFaturas.Filial = ' +
        'Tributacao_Item_Fatura.Filial AND '
      
        '                      ItensFaturas.Processo = Tributacao_Item_Fa' +
        'tura.Processo AND ItensFaturas.Fatura = Tributacao_Item_Fatura.F' +
        'atura AND '
      
        '                      ItensFaturas.Sequencial = Tributacao_Item_' +
        'Fatura.Sequencial_Item INNER JOIN'
      
        '                      Faturas ON ItensFaturas.Empresa = Faturas.' +
        'Empresa AND ItensFaturas.Filial = Faturas.Filial AND ItensFatura' +
        's.Processo = Faturas.Processo AND '
      '                      ItensFaturas.Fatura = Faturas.Codigo'
      
        'WHERE     (Tributacao_Item_Fatura.Empresa = :qemp) AND (Tributac' +
        'ao_Item_Fatura.Filial = :qfil) AND (Tributacao_Item_Fatura.Proce' +
        'sso = :qpro)')
    Left = 445
    Top = 301
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
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '05932/09'
      end>
    object q_tributaupEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_tributaupFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_tributaupProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_tributaupFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_tributaupSequencial_Item: TStringField
      FieldName = 'Sequencial_Item'
      FixedChar = True
      Size = 4
    end
    object q_tributaupSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object q_tributaupCertificado_Origem: TStringField
      FieldName = 'Certificado_Origem'
      FixedChar = True
      Size = 15
    end
    object q_tributaupAto_Concessorio: TStringField
      FieldName = 'Ato_Concessorio'
      FixedChar = True
    end
    object q_tributaupCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object q_tributaupMotivo_Adm_Temp: TStringField
      FieldName = 'Motivo_Adm_Temp'
      FixedChar = True
      Size = 2
    end
    object q_tributaupCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      FixedChar = True
      Size = 2
    end
    object q_tributaupCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      FixedChar = True
      Size = 1
    end
    object q_tributaupIN_BEM_ENCOMENDA: TIntegerField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object q_tributaupIN_MATERIAL_USADO: TIntegerField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object q_tributaupCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      FixedChar = True
      Size = 1
    end
    object q_tributaupACORDO_ALADI: TStringField
      FieldName = 'ACORDO_ALADI'
      FixedChar = True
      Size = 3
    end
    object q_tributaupNumero_Ato_Legal_ALADI: TStringField
      FieldName = 'Numero_Ato_Legal_ALADI'
      FixedChar = True
      Size = 5
    end
    object q_tributaupALIQUOTA_ALADI: TFloatField
      FieldName = 'ALIQUOTA_ALADI'
    end
    object q_tributaupRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_tributaupAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object q_tributaupValor_II_Devido: TFloatField
      FieldName = 'Valor_II_Devido'
    end
    object q_tributaupValor_II_a_recolher: TFloatField
      FieldName = 'Valor_II_a_recolher'
    end
    object q_tributaupFundamento_Legal_II: TStringField
      FieldName = 'Fundamento_Legal_II'
      FixedChar = True
      Size = 2
    end
    object q_tributaupNumero_Ato_Legal_II: TStringField
      FieldName = 'Numero_Ato_Legal_II'
      FixedChar = True
      Size = 5
    end
    object q_tributaupRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object q_tributaupBase_Calc_IPI: TFloatField
      FieldName = 'Base_Calc_IPI'
    end
    object q_tributaupAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object q_tributaupValor_IPI_Devido: TFloatField
      FieldName = 'Valor_IPI_Devido'
    end
    object q_tributaupValor_IPI_a_recolher: TFloatField
      FieldName = 'Valor_IPI_a_recolher'
    end
    object q_tributaupNumero_Ato_Legal_IPI: TStringField
      FieldName = 'Numero_Ato_Legal_IPI'
      FixedChar = True
      Size = 5
    end
    object q_tributaupPercentual_Reducao_II: TFloatField
      FieldName = 'Percentual_Reducao_II'
    end
    object q_tributaupPercentual_EX: TFloatField
      FieldName = 'Percentual_EX'
    end
    object q_tributaupPercentual_Reduca_IPI: TFloatField
      FieldName = 'Percentual_Reduca_IPI'
    end
    object q_tributaupQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_tributaupAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_tributaupSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object q_tributaupDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 15
    end
    object q_tributaupRE: TStringField
      FieldName = 'RE'
      FixedChar = True
      Size = 15
    end
    object q_tributaupPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object q_tributaupTratamento_Tributario: TStringField
      FieldName = 'Tratamento_Tributario'
      FixedChar = True
      Size = 1
    end
    object q_tributaupFundamento_Legal: TStringField
      FieldName = 'Fundamento_Legal'
      FixedChar = True
      Size = 2
    end
    object q_tributaupCD_REGIME_TRIBUTAR_PISCOFINS: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object q_tributaupCD_FUND_LEG_REGIME_PISCOFINS: TStringField
      FieldName = 'CD_FUND_LEG_REGIME_PISCOFINS'
      FixedChar = True
      Size = 2
    end
    object q_tributaupPC_ALIQ_REDUZIDA_PIS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_PIS'
    end
    object q_tributaupPC_ALIQ_REDUZIDA_COFINS: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA_COFINS'
    end
    object q_tributaupAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object q_tributaupAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object q_tributaupEmpresa_1: TStringField
      FieldName = 'Empresa_1'
      FixedChar = True
      Size = 4
    end
    object q_tributaupFilial_1: TStringField
      FieldName = 'Filial_1'
      FixedChar = True
      Size = 4
    end
    object q_tributaupProcesso_1: TStringField
      FieldName = 'Processo_1'
      FixedChar = True
      Size = 8
    end
    object q_tributaupFatura_1: TStringField
      FieldName = 'Fatura_1'
      FixedChar = True
      Size = 30
    end
    object q_tributaupSequencial_1: TStringField
      FieldName = 'Sequencial_1'
      FixedChar = True
      Size = 4
    end
    object q_tributaupPagina: TStringField
      FieldName = 'Pagina'
      FixedChar = True
      Size = 3
    end
    object q_tributaupProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object q_tributaupDescricao_Produto: TMemoField
      FieldName = 'Descricao_Produto'
      BlobType = ftMemo
    end
    object q_tributaupFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 6
    end
    object q_tributaupNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object q_tributaupUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object q_tributaupUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object q_tributaupDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object q_tributaupNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object q_tributaupReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object q_tributaupNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object q_tributaupReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object q_tributaupPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object q_tributaupSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object q_tributaupQuantidade_1: TFloatField
      FieldName = 'Quantidade_1'
    end
    object q_tributaupValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object q_tributaupValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object q_tributaupPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object q_tributaupPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object q_tributaupPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object q_tributaupPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object q_tributaupSaldo_Tributavel: TFloatField
      FieldName = 'Saldo_Tributavel'
    end
    object q_tributaupRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object q_tributaupRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object q_tributaupRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object q_tributaupRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object q_tributaupRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object q_tributaupRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object q_tributaupRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object q_tributaupRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object q_tributaupRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object q_tributaupRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object q_tributaupRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object q_tributaupRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object q_tributaupRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object q_tributaupRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object q_tributaupRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object q_tributaupRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object q_tributaupRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object q_tributaupRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object q_tributaupRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object q_tributaupRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object q_tributaupValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object q_tributaupValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object q_tributaupVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object q_tributaupBase_Calc_II: TFloatField
      FieldName = 'Base_Calc_II'
    end
    object q_tributaupAcresc_reduc_Valaduan: TFloatField
      FieldName = 'Acresc_reduc_Valaduan'
    end
    object q_tributaupCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      FixedChar = True
      Size = 1
    end
    object q_tributaupCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 18
    end
    object q_tributaupFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      FixedChar = True
      Size = 100
    end
    object q_tributaupFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      FixedChar = True
      Size = 18
    end
    object q_tributaupContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object q_tributaupLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      FixedChar = True
      Size = 4
    end
    object q_tributaupRateio_Taxa_Siscomex: TFloatField
      FieldName = 'Rateio_Taxa_Siscomex'
    end
    object q_tributaupDescricao_Produto_ing: TMemoField
      FieldName = 'Descricao_Produto_ing'
      BlobType = ftMemo
    end
    object q_tributaupCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      FixedChar = True
      Size = 50
    end
    object q_tributaupSequencial_Produto: TIntegerField
      FieldName = 'Sequencial_Produto'
    end
    object q_tributaupEmpresa_2: TStringField
      FieldName = 'Empresa_2'
      FixedChar = True
      Size = 4
    end
    object q_tributaupFilial_2: TStringField
      FieldName = 'Filial_2'
      FixedChar = True
      Size = 4
    end
    object q_tributaupProcesso_2: TStringField
      FieldName = 'Processo_2'
      FixedChar = True
      Size = 8
    end
    object q_tributaupCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 30
    end
    object q_tributaupExportador: TStringField
      FieldName = 'Exportador'
      FixedChar = True
      Size = 4
    end
    object q_tributaupIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object q_tributaupVinculacao: TStringField
      FieldName = 'Vinculacao'
      FixedChar = True
      Size = 1
    end
    object q_tributaupCondicao: TStringField
      FieldName = 'Condicao'
      FixedChar = True
      Size = 50
    end
    object q_tributaupValor_Total_1: TFloatField
      FieldName = 'Valor_Total_1'
    end
    object q_tributaupPeso_Total_1: TFloatField
      FieldName = 'Peso_Total_1'
    end
    object q_tributaupPeso_Total_Acertado_1: TFloatField
      FieldName = 'Peso_Total_Acertado_1'
    end
    object q_tributaupAcrescimos_Reducoes: TIntegerField
      FieldName = 'Acrescimos_Reducoes'
    end
    object q_tributaupMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object q_tributaupCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      FixedChar = True
      Size = 1
    end
    object q_tributaupMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      FixedChar = True
      Size = 2
    end
    object q_tributaupModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      FixedChar = True
      Size = 2
    end
    object q_tributaupInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      FixedChar = True
      Size = 2
    end
    object q_tributaupTipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      FixedChar = True
      Size = 1
    end
    object q_tributaupNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      FixedChar = True
      Size = 3
    end
    object q_tributaupPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      FixedChar = True
      Size = 3
    end
    object q_tributaupValor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
    end
    object q_tributaupIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      FixedChar = True
      Size = 1
    end
    object q_tributaupTaxa_de_Juros: TIntegerField
      FieldName = 'Taxa_de_Juros'
    end
    object q_tributaupCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      FixedChar = True
      Size = 4
    end
    object q_tributaupValor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
    end
    object q_tributaupROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object q_tributaupPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object q_tributaupDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
    end
    object q_tributaupDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object q_tributaupSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      FixedChar = True
      Size = 1
    end
    object q_tributaupCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      FixedChar = True
      Size = 10
    end
    object q_tributaupSALDO_CAMBIO: TFloatField
      FieldName = 'SALDO_CAMBIO'
    end
    object q_tributaupDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object q_tributaupPeso_Libra: TIntegerField
      FieldName = 'Peso_Libra'
    end
  end
  object q_updatetributa: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Tributacao_Item_Fatura set '
      'Tributacao_Item_Fatura.Aliq_NCM_II =:Aliq_NCM_II ,'
      'Tributacao_Item_Fatura.Valor_II_Devido   =:Valor_II_Devido   ,'
      
        'Tributacao_Item_Fatura.Valor_II_a_recolher =:Valor_II_a_recolher' +
        ','
      'Tributacao_Item_Fatura.Aliq_NCM_IPI  =:Aliq_NCM_IPI,'
      'Tributacao_Item_Fatura.Base_Calc_IPI  =:Base_Calc_IPI,'
      'Tributacao_Item_Fatura.Valor_IPI_Devido  =:Valor_IPI_Devido,   '
      
        'Tributacao_Item_Fatura.Valor_IPI_a_recolher = :Valor_IPI_a_recol' +
        'her'
      
        'where Processo=:qpro and Fatura=:qfat and Sequencial_Item=:qitse' +
        'q and Sequencial=:qittrib'
      ' ')
    Left = 492
    Top = 309
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Aliq_NCM_II'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'Valor_II_Devido'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'Valor_II_a_recolher'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'Aliq_NCM_IPI'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'Base_Calc_IPI'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'Valor_IPI_Devido'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'Valor_IPI_a_recolher'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '05932/09'
      end
      item
        DataType = ftString
        Name = 'qfat'
        ParamType = ptUnknown
        Value = '09-3170'
      end
      item
        DataType = ftString
        Name = 'qitseq'
        ParamType = ptUnknown
        Value = '55'
      end
      item
        DataType = ftString
        Name = 'qittrib'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_proreg: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Processos_registro_impostos set'
      'Processos_registro_impostos.II = :ii,'
      'Processos_registro_impostos.IPI = :ipi,'
      'Processos_registro_impostos.TAXA_SISCOMEX = :TAXA_SISCOMEX,'
      'Processos_registro_impostos.IIC = :iiC,'
      'Processos_registro_impostos.IPIC = :ipiC,'
      'Processos_registro_impostos.TAXA_SISCOMEXC = :TAXA_SISCOMEXC'
      'WHERE PROCESSO=:qpro')
    Left = 376
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ii'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'ipi'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'TAXA_SISCOMEX'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'iiC'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'ipiC'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'TAXA_SISCOMEXC'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '06692/09'
      end>
  end
  object q_upinsertproreg: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Processos_registro_impostos'
      '       (Empresa,Filial,Processo)'
      '     VALUES'
      '       (:qemp,:qfil,:qpro)'
      ''
      '')
    Left = 344
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = 'x'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_temproreg: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from  Processos_registro_impostos where '
      'empresa=:qemp and filial=:qfil and processo=:qpro'
      ''
      '')
    Left = 344
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = 'x'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object q_update_processo_taxasiscomex: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Processos_registro_impostos '
      '     SET Taxa_SISCOMEX = :taxa'
      'WHERE Processo = :processo')
    Left = 286
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'taxa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end>
  end
  object q_Documentos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Sub_Tipo_Doc, Numero_Doc from Documentos where Processo =' +
        ':pProcesso')
    Left = 37
    Top = 270
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object q_DocumentosSub_Tipo_Doc: TStringField
      FieldName = 'Sub_Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object q_DocumentosNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      FixedChar = True
      Size = 30
    end
  end
  object q_TipoProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select tipo from Processos where Codigo =:pProcesso ')
    Left = 32
    Top = 81
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object q_TipoProcessotipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 2
    end
  end
  object q_update_infcomp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'EXEC SP_Informacoes_Complementares :p2, :p1'
      '')
    Left = 13
    Top = 318
    ParamData = <
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
  end
  object q_update_infcomp1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'EXEC SP_Informacoes_Complementares :p2, :p1')
    Left = 45
    Top = 318
    ParamData = <
      item
        DataType = ftString
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
  end
  object qUsuarioHierarquia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Hierarquia from Usuarios where Usuario =:pUsuario')
    Left = 32
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'pUsuario'
        ParamType = ptInput
      end>
    object qUsuarioHierarquiaHierarquia: TIntegerField
      FieldName = 'Hierarquia'
    end
  end
  object qCGCdoImportador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select distinct CGC_CPF from Importadores where Codigo =:pCodigo')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    object qCGCdoImportadorCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
  end
  object qSenhasAutorizadas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Usuario, Senha from Usuarios where Hierarquia in (1, 2) a' +
        'nd Senha =:pSenha')
    Left = 88
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'pSenha'
        ParamType = ptInput
      end>
    object qSenhasAutorizadasUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qSenhasAutorizadasSenha: TStringField
      FieldName = 'Senha'
      FixedChar = True
      Size = 10
    end
  end
  object OP: TOpenDialog
    FileName = '*.jpg'
    Filter = '*.jpg|*.jpg'
    Left = 681
    Top = 529
  end
  object qryInsertAnexo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Processos_Anexo'
      '(Descricao, Caminho, FK_Processo, FK_Usuario)'
      'values'
      '(:Descricao, :Caminho, :FK_Processo, :FK_Usuario)')
    Left = 752
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Caminho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryDeleteAnexo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from Processos_Anexo'
      'where FK_Processo=:Processo')
    Left = 824
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qrySelectAnexo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Select fk_processo, caminho from Processos_Anexo'
      'where FK_Processo=:Processo')
    Left = 712
    Top = 648
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qrySelectAnexofk_processo: TStringField
      FieldName = 'fk_processo'
      FixedChar = True
      Size = 8
    end
    object qrySelectAnexocaminho: TStringField
      FieldName = 'caminho'
      FixedChar = True
      Size = 200
    end
  end
  object qryImportadorExportaSiscomex: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Codigo, Exporta_Para_Siscomex, Razao_Social'
      'from Importadores'
      'where Codigo =:Importador')
    Left = 789
    Top = 374
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Importador'
        ParamType = ptUnknown
      end>
  end
  object qryDeleteSiscomex: TQuery
    DatabaseName = 'DBNSISCOMEX'
    SQL.Strings = (
      'delete from DECLARAÇÃO_IMPORTAÇÃO'
      'where NR_IDENT_USUARIO =:MS')
    Left = 565
    Top = 414
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MS'
        ParamType = ptUnknown
      end>
  end
  object t_pro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT TOP 1000 [Empresa]'
      '      ,[Filial]'
      '      ,[Codigo]'
      '      ,[Razao_Social]'
      '      ,[Pais]'
      '      ,[CGC_CPF]'
      '      ,[Endereco]'
      '      ,[Numero]'
      '      ,[Complemento]'
      '      ,[Bairro]'
      '      ,[Cidade]'
      '      ,[CEP]'
      '      ,[UF]'
      '      ,[Estado]'
      '      ,[Inscricao_Estadual]'
      '      ,[Registro]'
      '      ,[Telefone]'
      '      ,[exibe_complementares]'
      '  FROM [MS2000].[dbo].[Procuradores]'
      '  where exibe_complementares = 1'
      '  order by 4')
    Left = 478
    Top = 62
    object t_proEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_proFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_proCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object t_proRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object t_proPais: TStringField
      FieldName = 'Pais'
      FixedChar = True
      Size = 3
    end
    object t_proCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 18
    end
    object t_proEndereco: TStringField
      FieldName = 'Endereco'
      FixedChar = True
      Size = 40
    end
    object t_proNumero: TStringField
      FieldName = 'Numero'
      FixedChar = True
      Size = 6
    end
    object t_proComplemento: TStringField
      FieldName = 'Complemento'
      FixedChar = True
      Size = 21
    end
    object t_proBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
      Size = 25
    end
    object t_proCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 25
    end
    object t_proCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object t_proUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object t_proEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 25
    end
    object t_proInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      FixedChar = True
      Size = 15
    end
    object t_proRegistro: TStringField
      FieldName = 'Registro'
      FixedChar = True
      Size = 15
    end
    object t_proTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 15
    end
    object t_proexibe_complementares: TIntegerField
      FieldName = 'exibe_complementares'
    end
  end
  object qrConhecimento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select  Autorizacao_Marinha from Conhecimento_Processo  where Pr' +
        'ocesso =:pProcesso')
    Left = 802
    Top = 307
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qrConhecimentoAutorizacao_Marinha: TStringField
      FieldName = 'Autorizacao_Marinha'
      Origin = 'DBNMSCOMEX.Conhecimento_Processo.Autorizacao_Marinha'
      FixedChar = True
      Size = 15
    end
  end
  object qMaterialUsado: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select IN_MATERIAL_USADO from Tributacao_Item_Fatura '
      'where IN_MATERIAL_USADO = 1 and  processo =:pProcesso')
    Left = 768
    Top = 177
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qMaterialUsadoIN_MATERIAL_USADO: TIntegerField
      FieldName = 'IN_MATERIAL_USADO'
    end
  end
  object qMaterialUsadoNoProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Material_Usado from processos where Codigo =:pProcesso')
    Left = 816
    Top = 161
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qMaterialUsadoNoProcessoMaterial_Usado: TSmallintField
      FieldName = 'Material_Usado'
    end
  end
  object q_infocomp8: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT AF.Descricao, AF.VL_ACRESCIMO_MOEDA, T.DESCRICAO AS MOEDA'
      '  FROM Acrescimos_Faturas AF inner join TAB_MOEDA T'
      '    ON AF.CD_MD_NEGOC_ACRES = T.CODIGO'
      ' WHERE Processo = :pProcesso')
    Left = 792
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pProcesso'
        ParamType = ptUnknown
      end>
    object q_infocomp8Descricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object q_infocomp8VL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object q_infocomp8MOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 120
    end
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
  object T_cambioAmanha: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    TableName = 'PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA'
    Left = 1209
    Top = 291
    object T_cambioAmanhaCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 3
    end
    object T_cambioAmanhaDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
    object T_cambioAmanhaTaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      FixedChar = True
      Size = 9
    end
    object T_cambioAmanhaVigencia_Inicio_Taxa: TStringField
      FieldName = 'Vigencia_Inicio_Taxa'
      FixedChar = True
      Size = 10
    end
    object T_cambioAmanhaVigencia_Fim_Taxa: TStringField
      FieldName = 'Vigencia_Fim_Taxa'
      FixedChar = True
      Size = 10
    end
  end
  object q_acertafretsega: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Faturas.Processo, Tributacao_Item_Fatura.Regime_Tributaca' +
        'o_II, Sum([itensfaturas].[Rateio_Frete_prepaid]*[itensfaturas].[' +
        'quantidade]) AS prepaid, Sum(([itensfaturas].[Rateio_Frete_colle' +
        'ct]*[itensfaturas].[quantidade])) AS collect, Sum(([itensfaturas' +
        '].[Rateio_Frete_ternac]*[itensfaturas].[quantidade])) AS ternac,' +
        ' Sum(([itensfaturas].[Rateio_seguro]*[itensfaturas].[quantidade]' +
        ')) AS seguro, Faturas.Moeda, Processos_Taxas_ConversaoDoDiaSegui' +
        'nte.Taxa_conversao, Processos_Taxas_ConversaoDoDiaSeguinte.Taxa_' +
        'conversaoc, fre.Moeda, fre.Taxa_conversao AS Taxa_conversaofre, ' +
        'fre.Taxa_conversaoc AS Taxa_conversaocfre, seg.Moeda, seg.Taxa_c' +
        'onversao AS Taxa_conversaoseg, seg.Taxa_conversaoc AS Taxa_conve' +
        'rsaocseg'
      
        'FROM (((((Faturas INNER JOIN Processos_Taxas_ConversaoDoDiaSegui' +
        'nte ON (Faturas.Moeda = Processos_Taxas_ConversaoDoDiaSeguinte.M' +
        'oeda) AND (Faturas.Processo = Processos_Taxas_ConversaoDoDiaSegu' +
        'inte.Processo) AND (Faturas.Filial = Processos_Taxas_ConversaoDo' +
        'DiaSeguinte.Filial) AND (Faturas.Empresa = Processos_Taxas_Conve' +
        'rsaoDoDiaSeguinte.Empresa)) INNER JOIN ItensFaturas ON (Faturas.' +
        'Codigo = ItensFaturas.Fatura) AND (Faturas.Processo = ItensFatur' +
        'as.Processo) AND (Faturas.Filial = ItensFaturas.Filial) AND (Fat' +
        'uras.Empresa = ItensFaturas.Empresa)) INNER JOIN Tributacao_Item' +
        '_Fatura ON (ItensFaturas.Sequencial = Tributacao_Item_Fatura.Seq' +
        'uencial_Item) AND (ItensFaturas.Fatura = Tributacao_Item_Fatura.' +
        'Fatura) AND (ItensFaturas.Processo = Tributacao_Item_Fatura.Proc' +
        'esso) AND (ItensFaturas.Filial = Tributacao_Item_Fatura.Filial) ' +
        'AND (ItensFaturas.Empresa = Tributacao_Item_Fatura.Empresa)) INN' +
        'ER JOIN Conhecimento_Processo ON (Faturas.Processo = Conheciment' +
        'o_Processo.Processo) AND (Faturas.Filial = Conhecimento_Processo' +
        '.Filial) AND (Faturas.Empresa = Conhecimento_Processo.Empresa)) ' +
        'INNER JOIN Processos_Taxas_ConversaoDoDiaSeguinte AS fre ON (Con' +
        'hecimento_Processo.Moeda_Frete = fre.Moeda) AND (Conhecimento_Pr' +
        'ocesso.Processo = fre.Processo) AND (Conhecimento_Processo.Empre' +
        'sa = fre.Empresa) AND (Conhecimento_Processo.Filial = fre.Filial' +
        ')) LEFT JOIN Processos_Taxas_ConversaoDoDiaSeguinte AS seg ON (C' +
        'onhecimento_Processo.Moeda_Seguro = seg.Moeda) AND (Conhecimento' +
        '_Processo.Processo = seg.Processo) AND (Conhecimento_Processo.Fi' +
        'lial = seg.Filial) AND (Conhecimento_Processo.Empresa = seg.Empr' +
        'esa)'
      
        'GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Regime_Tributa' +
        'cao_II, Faturas.Moeda, Processos_Taxas_ConversaoDoDiaSeguinte.Ta' +
        'xa_conversao, Processos_Taxas_ConversaoDoDiaSeguinte.Taxa_conver' +
        'saoc, fre.Moeda, fre.Taxa_conversao, fre.Taxa_conversaoc, seg.Mo' +
        'eda, seg.Taxa_conversao, seg.Taxa_conversaoc'
      
        'HAVING (((Faturas.Processo)=:qnum) AND ((Tributacao_Item_Fatura.' +
        'Regime_Tributacao_II)=:qregime));')
    Left = 1232
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00001180'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_acertafretsegaProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_acertafretsegaRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_acertafretsegaprepaid: TFloatField
      FieldName = 'prepaid'
    end
    object q_acertafretsegacollect: TFloatField
      FieldName = 'collect'
    end
    object q_acertafretsegaternac: TFloatField
      FieldName = 'ternac'
    end
    object q_acertafretsegaseguro: TFloatField
      FieldName = 'seguro'
    end
    object q_acertafretsegaMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object q_acertafretsegaTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_acertafretsegaTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
    object q_acertafretsegaMoeda_1: TStringField
      FieldName = 'Moeda_1'
      FixedChar = True
      Size = 3
    end
    object q_acertafretsegaTaxa_conversaofre: TFloatField
      FieldName = 'Taxa_conversaofre'
    end
    object q_acertafretsegaTaxa_conversaocfre: TFloatField
      FieldName = 'Taxa_conversaocfre'
    end
    object q_acertafretsegaMoeda_2: TStringField
      FieldName = 'Moeda_2'
      FixedChar = True
      Size = 3
    end
    object q_acertafretsegaTaxa_conversaoseg: TFloatField
      FieldName = 'Taxa_conversaoseg'
    end
    object q_acertafretsegaTaxa_conversaocseg: TFloatField
      FieldName = 'Taxa_conversaocseg'
    end
  end
  object q_acertapagtriba: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.NR_DECL_IMP_MICRO, Max(Tributacao_Item_Fatura.A' +
        'dicao) AS nadicoes, "0086" AS cod_ii, "1038" AS cod_ipi, "7811" ' +
        'AS cod_sis, Importadores.Banco, Importadores.Agencia, Sum(Tribut' +
        'acao_Item_Fatura.Valor_II_a_recolher) AS SomaDeValor_II_a_recolh' +
        'er, Sum(Tributacao_Item_Fatura.Valor_IPI_a_recolher) AS SomaDeVa' +
        'lor_IPI_a_recolher, Tributacao_Item_Fatura.Regime_Tributacao_II,' +
        ' Processos_Taxas_ConversaoDoDiaSeguinte.Taxa_conversao, Processo' +
        's_Taxas_ConversaoDoDiaSeguinte.Taxa_conversaoc'
      
        'FROM ((((Processos INNER JOIN Tributacao_Item_Fatura ON (Process' +
        'os.Empresa = Tributacao_Item_Fatura.Empresa) AND (Processos.Fili' +
        'al = Tributacao_Item_Fatura.Filial) AND (Processos.Codigo = Trib' +
        'utacao_Item_Fatura.Processo)) INNER JOIN ItensFaturas ON (Tribut' +
        'acao_Item_Fatura.Empresa = ItensFaturas.Empresa) AND (Tributacao' +
        '_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_' +
        'Fatura.Processo = ItensFaturas.Processo) AND (Tributacao_Item_Fa' +
        'tura.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.S' +
        'equencial_Item = ItensFaturas.Sequencial)) INNER JOIN Faturas ON' +
        ' (ItensFaturas.Empresa = Faturas.Empresa) AND (ItensFaturas.Fili' +
        'al = Faturas.Filial) AND (ItensFaturas.Processo = Faturas.Proces' +
        'so) AND (ItensFaturas.Fatura = Faturas.Codigo)) INNER JOIN Impor' +
        'tadores ON (Processos.Importador = Importadores.Codigo) AND (Pro' +
        'cessos.Filial = Importadores.Filial) AND (Processos.Empresa = Im' +
        'portadores.Empresa)) INNER JOIN Processos_Taxas_ConversaoDoDiaSe' +
        'guinte ON (Faturas.Empresa = Processos_Taxas_ConversaoDoDiaSegui' +
        'nte.Empresa) AND (Faturas.Filial = Processos_Taxas_ConversaoDoDi' +
        'aSeguinte.Filial) AND (Faturas.Processo = Processos_Taxas_Conver' +
        'saoDoDiaSeguinte.Processo) AND (Faturas.Moeda = Processos_Taxas_' +
        'ConversaoDoDiaSeguinte.Moeda)'
      
        'GROUP BY Processos.NR_DECL_IMP_MICRO, Importadores.Banco, Import' +
        'adores.Agencia, Tributacao_Item_Fatura.Regime_Tributacao_II, Pro' +
        'cessos_Taxas_ConversaoDoDiaSeguinte.Taxa_conversao, Processos_Ta' +
        'xas_ConversaoDoDiaSeguinte.Taxa_conversaoc'
      
        'HAVING (((Processos.NR_DECL_IMP_MICRO)=:qnum) AND ((Tributacao_I' +
        'tem_Fatura.Regime_Tributacao_II)=:qregime));')
    Left = 1068
    Top = 225
    ParamData = <
      item
        DataType = ftString
        Name = 'qnum'
        ParamType = ptUnknown
        Value = '00001180'
      end
      item
        DataType = ftString
        Name = 'qregime'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_acertapagtribaNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object q_acertapagtribanadicoes: TStringField
      FieldName = 'nadicoes'
      FixedChar = True
      Size = 3
    end
    object q_acertapagtribacod_ii: TStringField
      FieldName = 'cod_ii'
      FixedChar = True
      Size = 4
    end
    object q_acertapagtribacod_ipi: TStringField
      FieldName = 'cod_ipi'
      FixedChar = True
      Size = 4
    end
    object q_acertapagtribacod_sis: TStringField
      FieldName = 'cod_sis'
      FixedChar = True
      Size = 4
    end
    object q_acertapagtribaBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object q_acertapagtribaAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object q_acertapagtribaSomaDeValor_II_a_recolher: TFloatField
      FieldName = 'SomaDeValor_II_a_recolher'
    end
    object q_acertapagtribaSomaDeValor_IPI_a_recolher: TFloatField
      FieldName = 'SomaDeValor_IPI_a_recolher'
    end
    object q_acertapagtribaRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_acertapagtribaTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_acertapagtribaTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
    end
  end
  object q_infocomp5a: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos_Taxas_ConversaoDoDiaSeguinte.Processo, TAB_MOED' +
        'A.DESCRICAO, Processos_Taxas_ConversaoDoDiaSeguinte.Taxa_convers' +
        'ao, Processos_Taxas_ConversaoDoDiaSeguinte.Taxa_conversaoc'
      
        'FROM Processos_Taxas_ConversaoDoDiaSeguinte LEFT JOIN TAB_MOEDA ' +
        'ON Processos_Taxas_ConversaoDoDiaSeguinte.Moeda = TAB_MOEDA.CODI' +
        'GO'
      
        'WHERE (((Processos_Taxas_ConversaoDoDiaSeguinte.Processo)=:qproc' +
        'esso));')
    Left = 984
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_infocomp5aProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Processos_Taxas_ConversaoDoDiaSeguinte.Processo'
      FixedChar = True
      Size = 8
    end
    object q_infocomp5aDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_infocomp5aTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
      Origin = 'DBNMSCOMEX.Processos_Taxas_ConversaoDoDiaSeguinte.Taxa_conversao'
    end
    object q_infocomp5aTaxa_conversaoc: TFloatField
      FieldName = 'Taxa_conversaoc'
      Origin = 
        'DBNMSCOMEX.Processos_Taxas_ConversaoDoDiaSeguinte.Taxa_conversao' +
        'c'
    end
  end
  object qAcrescimoProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select CD_MET_ACRES_VALOR, VL_ACRESCIMO_MOEDA from Acrescimos_Fa' +
        'turas where processo =:pProcesso and  CD_MET_ACRES_VALOR =:pCD_M' +
        'ET_ACRES_VALOR')
    Left = 1224
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCD_MET_ACRES_VALOR'
        ParamType = ptInput
      end>
    object qAcrescimoProcessoCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      FixedChar = True
      Size = 3
    end
    object qAcrescimoProcessoVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
  end
  object qCountAdicao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT distinct Adicao from Tributacao_Item_Fatura where process' +
        'o =:pProcesso')
    Left = 1000
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qCountAdicaoAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
  end
  object qSomaQtdItensFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'Select Sum(Quantidade) as QtdTotal from Tributacao_Item_Fatura  ' +
        'where processo =:pProcesso')
    Left = 616
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qSomaQtdItensFaturasQtdTotal: TFloatField
      FieldName = 'QtdTotal'
    end
  end
  object qSomaQtdPorAdicao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'Select Adicao, Sum(Quantidade) as QtdTotalporAdicao from Tributa' +
        'cao_Item_Fatura  where processo =:pProcesso'
      'group by Adicao')
    Left = 680
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qSomaQtdPorAdicaoAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object qSomaQtdPorAdicaoQtdTotalporAdicao: TFloatField
      FieldName = 'QtdTotalporAdicao'
    end
  end
  object qCD_E_VL_ACRESCIMO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select CD_ACRESC_ICMS, VL_ACRESCIMO from Acrescimos_ICMS where p' +
        'rocesso =:pProcesso')
    Left = 800
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qCD_E_VL_ACRESCIMOCD_ACRESC_ICMS: TIntegerField
      FieldName = 'CD_ACRESC_ICMS'
    end
    object qCD_E_VL_ACRESCIMOVL_ACRESCIMO: TFloatField
      FieldName = 'VL_ACRESCIMO'
    end
  end
  object qUpRateio_Acresc_ICMS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update ItensFaturas set ItensFaturas.Rateio_Acresc_ICMS=:pRateio' +
        '_Acresc_ICMS'
      
        'FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ' +
        'ON itf.Fabricante = Fabricantes_Produtores.Codigo ) INNER JOIN T' +
        'ributacao_Item_Fatura ON (itf. Sequencial = Tributacao_Item_Fatu' +
        'ra.Sequencial_Item )'
      
        'AND ( itf.Fatura = Tributacao_Item_Fatura.Fatura ) AND (itf .Pro' +
        'cesso = Tributacao_Item_Fatura.Processo )) INNER JOIN Processos_' +
        'ADICOES_ICMS_PIS_COFINS ON ( Tributacao_Item_Fatura.Adicao = Pro' +
        'cessos_ADICOES_ICMS_PIS_COFINS .Adicao)'
      
        'AND ( Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_P' +
        'IS_COFINS .Processo)) INNER JOIN Processos ON itf.Processo = Pro' +
        'cessos.Codigo ) INNER JOIN Faturas ON (itf. Fatura = Faturas.Cod' +
        'igo ) AND (itf .Processo = Faturas .Processo))'
      
        'INNER JOIN Processos_Taxas_Conversao AS ptc ON ( Faturas.Moeda =' +
        ' ptc.Moeda ) AND (Faturas .Processo = ptc .Processo)) INNER JOIN' +
        ' Conhecimento_Processo ON Processos. Codigo = Conhecimento_Proce' +
        'sso.Processo'
      
        'WHERE [Pagina] <> '#39'XXX'#39'  AND [itf]. [Sequencial] <> '#39'XXX'#39' AND (I' +
        'tf. Processo=:pProc) and Tributacao_Item_Fatura.Adicao =:pAdicao' +
        ' and cast([itf] .[Sequencial] as real )=:pSeq'
      ' ')
    Left = 656
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pRateio_Acresc_ICMS'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAdicao'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pSeq'
        ParamType = ptInput
      end>
  end
  object qAdicao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select rateio_acresc_ICMS from Processos_ADICOES_ICMS_PIS_COFINS' +
        ' where processo =:pProcesso and adicao =:pAdicao')
    Left = 576
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAdicao'
        ParamType = ptInput
      end>
    object qAdicaorateio_acresc_ICMS: TFloatField
      FieldName = 'rateio_acresc_ICMS'
    end
  end
  object qZERA_ACRESC_ICMS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE Processos_ADICOES_ICMS_PIS_COFINS SET Rateio_Acresc_ICMS ' +
        '= 0 WHERE Processo =:pProcesso')
    Left = 744
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
  end
  object qryGetAcrescimos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' p.NR_DECL_IMP_MICRO,     '
      ' t.Adicao,'
      ' f.Incoterm, '
      ' f.Moeda, '
      
        ' CAST(SUM(it.Rateio_Embalagem * it.Quantidade) AS decimal(9,2)) ' +
        'AS '#39'1'#39','
      
        ' CAST(SUM(it.Rateio_Frete_Interno_imp * it.Quantidade) AS decima' +
        'l(9,2)) AS '#39'2'#39','
      
        ' CAST(SUM(it.Rateio_Seguro_Interno * it.Quantidade) AS decimal(9' +
        ',2)) AS '#39'3'#39','
      
        ' CAST(SUM(it.Rateio_outras_import * it.Quantidade) AS decimal(9,' +
        '2)) AS '#39'4'#39','
      
        ' CAST(SUM(it.Rateio_Frete_Interno_exp * it.Quantidade) AS decima' +
        'l(9,2)) AS '#39'5'#39','
      
        ' CAST(SUM(it.Rateio_carga_exp * it.Quantidade) AS decimal(9,2)) ' +
        'AS '#39'6'#39','
      
        ' CAST(SUM(it.Rateio_outras_export * it.Quantidade) AS decimal(9,' +
        '2)) AS '#39'7'#39','
      
        ' CAST(SUM(it.Rateio_carga_imp * it.Quantidade) AS decimal(9,2)) ' +
        'AS '#39'8'#39
      'FROM Processos p'
      ' INNER JOIN Faturas f ON (f.Processo = p.Codigo)'
      
        ' INNER JOIN ItensFaturas it ON (it.Fatura = f.Codigo)and(it.proc' +
        'esso = p.codigo)'
      
        ' INNER JOIN Tributacao_Item_Fatura t ON (t.Sequencial_Item = it.' +
        'Sequencial) AND (t.Fatura = f.Codigo) AND (t.Processo = p.Codigo' +
        ')'
      'WHERE '
      ' p.Codigo =:Processo'
      'GROUP BY'
      ' p.NR_DECL_IMP_MICRO, '
      ' t.Adicao, '
      ' f.Incoterm, '
      ' f.Moeda')
    Left = 200
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptUnknown
        Value = '00886/13'
      end>
    object qryGetAcrescimosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      FixedChar = True
      Size = 8
    end
    object qryGetAcrescimosAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object qryGetAcrescimosIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object qryGetAcrescimosMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object qryGetAcrescimosBDEDesigner1: TFloatField
      FieldName = '1'
    end
    object qryGetAcrescimosBDEDesigner2: TFloatField
      FieldName = '2'
    end
    object qryGetAcrescimosBDEDesigner3: TFloatField
      FieldName = '3'
    end
    object qryGetAcrescimosBDEDesigner4: TFloatField
      FieldName = '4'
    end
    object qryGetAcrescimosBDEDesigner5: TFloatField
      FieldName = '5'
    end
    object qryGetAcrescimosBDEDesigner6: TFloatField
      FieldName = '6'
    end
    object qryGetAcrescimosBDEDesigner7: TFloatField
      FieldName = '7'
    end
    object qryGetAcrescimosBDEDesigner8: TFloatField
      FieldName = '8'
    end
  end
  object q_incpiscofins_ds: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Processos_ADICOES_ICMS_PIS_COFINS ( Empresa, Filial,' +
        ' Processo, Adicao, NCM, VA, OT, DA, Aliq_NCM_II, Aliq_NCM_IPI, A' +
        'liq_PIS_PASEP, Aliq_COFINS, Aliq_ICMS, Aliq_ICMS_EXTRA, BASEC_PI' +
        'SCOFINS, BASEC_ICMS, VALOR_II, VALOR_IPI, VALOR_ICMS, VALOR_ICMS' +
        '_EXTRA, VALOR_PIS_PASEP, VALOR_COFINS, Prazo_permanencia, FOB )'
      
        'SELECT ITF.Empresa, ITF.Filial, ITF.Processo, tif.Adicao, ITF.NC' +
        'M, Sum(([ITF].[Base_Calc_II]*[PTC].[taxa_conversao])) AS VA, 0, ' +
        '0, ([TIF].[Aliq_NCM_II]*(100-[tif].[Percentual_Reducao_II]))/100' +
        ' AS qaliqii, ([TIF].[Aliq_NCM_IPI]*(100-[tif].[Percentual_reduca' +
        '_ipi]))/100 AS qaliqipi, CASE WHEN ([TIF].[CD_REGIME_TRIBUTAR_PI' +
        'SCOFINS]='#39'4'#39') THEN replace([tif].[PC_ALIQ_REDUZIDA_PIS],'#39','#39','#39'.'#39')' +
        ' ELSE replace([TAB_NCM].[ALIQUOTA_PIS_ADVAL],'#39','#39','#39'.'#39') END , CASE' +
        ' WHEN ([TIF].[CD_REGIME_TRIBUTAR_PISCOFINS]='#39'4'#39') THEN replace([t' +
        'if].[PC_ALIQ_REDUZIDA_COFINS],'#39','#39','#39'.'#39') ELSE replace([TAB_NCM].[A' +
        'LIQUOTA_COFINS_ADVAL],'#39','#39','#39'.'#39') END, tif.Aliq_ICMS, tif.Aliq_ICMS' +
        '_EXTRA, 0, 0, Sum(([TIF].[valor_II_a_recolher]*[PTC].[taxa_conve' +
        'rsao])) AS VII, Sum(([TIF].[valor_IPI_a_recolher]*[PTC].[taxa_co' +
        'nversao])) AS VIpI, 0, 0, 0, 0, tif.Prazo_permanencia, Sum(([itf' +
        '].[VALOR_MERCADORIA]*[ptc].[taxa_conversao])) AS FOB'
      
        'FROM ((((ItensFaturas AS ITF LEFT JOIN Tributacao_Item_Fatura AS' +
        ' tif ON (ITF.Empresa = tif.Empresa) AND (ITF.Filial = tif.Filial' +
        ') AND (ITF.Processo = tif.Processo) AND (ITF.Fatura = tif.Fatura' +
        ') AND (ITF.Sequencial = tif.Sequencial_Item)) LEFT JOIN Faturas ' +
        'ON (ITF.Empresa = Faturas.Empresa) AND (ITF.Filial = Faturas.Fil' +
        'ial) AND (ITF.Processo = Faturas.Processo) AND (ITF.Fatura = Fat' +
        'uras.Codigo)) LEFT JOIN Processos_Taxas_ConversaoDoDiaSeguinte A' +
        'S PTC ON (Faturas.Moeda = PTC.Moeda) AND (Faturas.Processo = PTC' +
        '.Processo)) LEFT JOIN Parametros ON (ITF.Empresa = Parametros.Em' +
        'presa) AND (ITF.Filial = Parametros.Filial)) INNER JOIN TAB_NCM ' +
        'ON ITF.NCM = TAB_NCM.CODIGO'
      
        'GROUP BY ITF.Empresa, ITF.Filial, ITF.Processo, tif.Adicao, ITF.' +
        'NCM, ([TIF].[Aliq_NCM_II]*(100-[tif].[Percentual_Reducao_II]))/1' +
        '00, ([TIF].[Aliq_NCM_IPI]*(100-[tif].[Percentual_Reduca_IPI]))/1' +
        '00, [TIF].[CD_REGIME_TRIBUTAR_PISCOFINS],[tif].[PC_ALIQ_REDUZIDA' +
        '_PIS],[TAB_NCM].[ALIQUOTA_PIS_ADVAL], [tif].[PC_ALIQ_REDUZIDA_CO' +
        'FINS],[TAB_NCM].[ALIQUOTA_COFINS_ADVAL], tif.Aliq_ICMS, tif.Aliq' +
        '_ICMS_EXTRA, tif.Prazo_permanencia, tif.CD_FUND_LEG_REGIME_PISCO' +
        'FINS, tif.PC_ALIQ_REDUZIDA_PIS, tif.CD_REGIME_TRIBUTAR_PISCOFINS' +
        ', tif.Aliq_NCM_II, tif.Aliq_NCM_IPI'
      
        'HAVING (((ITF.Empresa)=:qemp) AND ((ITF.Filial)=:qfil) AND ((ITF' +
        '.Processo)=:qpro))'
      ''
      ''
      ''
      ' ')
    Left = 608
    Top = 305
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfil'
        ParamType = ptInput
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptInput
        Value = '1'
      end>
  end
  object qTR: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Termo from Termos_De_Responsabilidade '
      'where Importador =:pImportador'
      'and Contrato =:pContrato and Local=:pLocal')
    Left = 789
    Top = 261
    ParamData = <
      item
        DataType = ftString
        Name = 'pImportador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pContrato'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pLocal'
        ParamType = ptInput
      end>
    object qTRTermo: TMemoField
      FieldName = 'Termo'
      BlobType = ftMemo
    end
  end
  object qFreteTotal: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT sum((itf.Rateio_Frete_prepaid*ptc.Taxa_conversao)*(itf.Qu' +
        'antidade)) as Rateio_Frete_prepaid, sum((itf.Rateio_Frete_collec' +
        't*ptc.Taxa_conversao)*(itf.Quantidade)) as Rateio_Frete_collect,' +
        ' sum((itf.Rateio_Frete_ternac*ptc.Taxa_conversao) * (itf.Quantid' +
        'ade)) as Rateio_Frete_ternac'
      
        'FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ' +
        'ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tr' +
        'ibutacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura' +
        '.Sequencial_Item) '
      
        'AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Proces' +
        'so = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADIC' +
        'OES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processo' +
        's_ADICOES_ICMS_PIS_COFINS.Adicao) '
      
        'AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PI' +
        'S_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Proce' +
        'ssos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo)' +
        ' AND (itf.Processo = Faturas.Processo)) '
      
        'INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ' +
        'ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Con' +
        'hecimento_Processo ON Processos.Codigo = Conhecimento_Processo.P' +
        'rocesso '
      
        'WHERE [Pagina] <> '#39'XXX'#39'  AND [itf].[Sequencial] <> '#39'XXX'#39' AND (It' +
        'f.Processo=:pProcesso)'
      'group by itf.Processo')
    Left = 944
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qFreteTotalRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object qFreteTotalRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object qFreteTotalRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
  end
  object qFreteRateio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT itf.Quantidade,(itf.Rateio_Frete_prepaid*ptc.Taxa_convers' +
        'ao)*(itf.Quantidade) as Rateio_Frete_prepaid, (itf.Rateio_Frete_' +
        'collect*ptc.Taxa_conversao)*(itf.Quantidade) as Rateio_Frete_col' +
        'lect, (itf.Rateio_Frete_ternac*ptc.Taxa_conversao) * (itf.Quanti' +
        'dade) as Rateio_Frete_ternac,ptc.Taxa_conversao'
      
        'FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ' +
        'ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tr' +
        'ibutacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura' +
        '.Sequencial_Item) '
      
        'AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Proces' +
        'so = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADIC' +
        'OES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processo' +
        's_ADICOES_ICMS_PIS_COFINS.Adicao) '
      
        'AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PI' +
        'S_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Proce' +
        'ssos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo)' +
        ' AND (itf.Processo = Faturas.Processo)) '
      
        'INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ' +
        'ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Con' +
        'hecimento_Processo ON Processos.Codigo = Conhecimento_Processo.P' +
        'rocesso '
      
        'WHERE [Pagina] <> '#39'XXX'#39'  AND [itf].[Sequencial] <> '#39'XXX'#39' AND (It' +
        'f.Processo=:pProcesso) AND (Tributacao_Item_Fatura.Adicao =:pAdi' +
        'cao)'
      'ORDER BY Tributacao_Item_Fatura.Adicao  ')
    Left = 1032
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAdicao'
        ParamType = ptInput
      end>
    object qFreteRateioQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qFreteRateioRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object qFreteRateioRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object qFreteRateioRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object qFreteRateioTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
  end
  object qSomaVA: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT SUM(VA) AS VA_TOTAL'
      'FROM Processos_ADICOES_ICMS_PIS_COFINS'
      'WHERE Processos_ADICOES_ICMS_PIS_COFINS .Processo=:pProcesso'
      'GROUP BY PROCESSO')
    Left = 976
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qSomaVAVA_TOTAL: TFloatField
      FieldName = 'VA_TOTAL'
    end
  end
  object qDiv: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT  COUNT(cast([itf].[Sequencial] as real)) AS Seq'
      
        'FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ' +
        'ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tr' +
        'ibutacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura' +
        '.Sequencial_Item) '
      
        'AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Proces' +
        'so = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADIC' +
        'OES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processo' +
        's_ADICOES_ICMS_PIS_COFINS.Adicao) '
      
        'AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PI' +
        'S_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Proce' +
        'ssos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo)' +
        ' AND (itf.Processo = Faturas.Processo)) '
      
        'INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ' +
        'ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Con' +
        'hecimento_Processo ON Processos.Codigo = Conhecimento_Processo.P' +
        'rocesso '
      
        'WHERE [Pagina] <> '#39'XXX'#39'  AND [itf].[Sequencial] <> '#39'XXX'#39' AND (It' +
        'f.Processo=:pProc) and Tributacao_Item_Fatura.Adicao =:pAdicao ')
    Left = 350
    Top = 377
    ParamData = <
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAdicao'
        ParamType = ptInput
      end>
    object qDivSeq: TIntegerField
      FieldName = 'Seq'
    end
  end
  object qFrete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT cast([Pagina] as real) AS Pag , cast([itf] .[Sequencial] ' +
        'as real ) AS Seq,'
      
        '((itf.Rateio_Frete_prepaid*ptc.Taxa_conversao)*itf.Quantidade) a' +
        's Rateio_Frete_prepaid,'
      
        '((itf.Rateio_Frete_collect*ptc.Taxa_conversao)*itf.Quantidade) a' +
        's Rateio_Frete_collect,'
      
        '((itf.Rateio_Frete_ternac*ptc.Taxa_conversao) *itf.Quantidade) a' +
        's Rateio_Frete_ternac,'
      
        'itf .Rateio_Acrescimos, itf. Rateio_Deducoes, itf.Rateio_Embalag' +
        'em , itf .Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno , ' +
        'itf .Rateio_outras_import, itf. Rateio_startup,'
      
        'itf. Rateio_Seguro, itf.Valor_Aduaneiro , itf .Valor_mercadoria,' +
        ' (itf. VMLE-itf .Acresc_reduc_Valaduan) as VMLE,Processos_ADICOE' +
        'S_ICMS_PIS_COFINS .VA, Processos_ADICOES_ICMS_PIS_COFINS .OT,'
      'Tributacao_Item_Fatura.Adicao'
      
        'FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ' +
        'ON itf.Fabricante = Fabricantes_Produtores.Codigo ) INNER JOIN T' +
        'ributacao_Item_Fatura ON (itf. Sequencial = Tributacao_Item_Fatu' +
        'ra.Sequencial_Item )'
      
        'AND ( itf.Fatura = Tributacao_Item_Fatura.Fatura ) AND (itf .Pro' +
        'cesso = Tributacao_Item_Fatura.Processo )) INNER JOIN Processos_' +
        'ADICOES_ICMS_PIS_COFINS ON ( Tributacao_Item_Fatura.Adicao = Pro' +
        'cessos_ADICOES_ICMS_PIS_COFINS .Adicao)'
      
        'AND ( Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_P' +
        'IS_COFINS .Processo)) INNER JOIN Processos ON itf.Processo = Pro' +
        'cessos.Codigo ) INNER JOIN Faturas ON (itf. Fatura = Faturas.Cod' +
        'igo ) AND (itf .Processo = Faturas .Processo))'
      
        'INNER JOIN Processos_Taxas_Conversao AS ptc ON ( Faturas.Moeda =' +
        ' ptc.Moeda ) AND (Faturas .Processo = ptc .Processo)) INNER JOIN' +
        ' Conhecimento_Processo ON Processos. Codigo = Conhecimento_Proce' +
        'sso.Processo'
      
        'WHERE [Pagina] <> '#39'XXX'#39'  AND [itf]. [Sequencial] <> '#39'XXX'#39' AND (I' +
        'tf. Processo=:pProc) and Tributacao_Item_Fatura.Adicao =:pAdicao' +
        ' '
      ''
      ' ')
    Left = 318
    Top = 329
    ParamData = <
      item
        DataType = ftString
        Name = 'pProc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAdicao'
        ParamType = ptInput
      end>
    object qFretePag: TFloatField
      FieldName = 'Pag'
    end
    object qFreteSeq: TFloatField
      FieldName = 'Seq'
    end
    object qFreteRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object qFreteRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object qFreteRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object qFreteRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object qFreteRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object qFreteRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object qFreteRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object qFreteRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object qFreteRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object qFreteRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object qFreteRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object qFreteValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object qFreteValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object qFreteVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object qFreteVA: TFloatField
      FieldName = 'VA'
    end
    object qFreteOT: TFloatField
      FieldName = 'OT'
    end
    object qFreteAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
  end
  object qUPAdicaoAcrescICMS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Processos_ADICOES_ICMS_PIS_COFINS'
      '   SET [Rateio_Acresc_ICMS] =:pRateio'
      ' WHERE Processo =:pProcesso and Adicao =:pAdicao')
    Left = 316
    Top = 261
    ParamData = <
      item
        DataType = ftFloat
        Name = 'pRateio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAdicao'
        ParamType = ptInput
      end>
  end
end
