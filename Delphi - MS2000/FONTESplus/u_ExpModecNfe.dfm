object f_ExpModecNfe: Tf_ExpModecNfe
  Left = 580
  Top = 170
  ActiveControl = ME_nossaref
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Modec - Nfe'
  ClientHeight = 367
  ClientWidth = 591
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 367
    Align = alClient
    TabOrder = 0
    object lblCFOP: TLabel
      Left = 17
      Top = 41
      Width = 28
      Height = 13
      Caption = 'CFOP'
    end
    object Label1: TLabel
      Left = 425
      Top = 41
      Width = 65
      Height = 13
      Caption = 'Data Emissão'
    end
    object Panel2: TPanel
      Left = 0
      Top = 320
      Width = 591
      Height = 46
      Color = 10514464
      TabOrder = 0
      object btnSalvar: TBitBtn
        Left = 443
        Top = 13
        Width = 143
        Height = 25
        Caption = 'Salvar dados para .TXT'
        Enabled = False
        TabOrder = 0
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
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 589
      Height = 36
      Align = alTop
      Color = 10514464
      TabOrder = 1
      object Label14: TLabel
        Left = 8
        Top = 12
        Width = 53
        Height = 13
        Caption = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ME_nossaref: TMaskEdit
        Left = 72
        Top = 6
        Width = 57
        Height = 21
        EditMask = '!#####/##;1;_'
        MaxLength = 8
        TabOrder = 0
        Text = '     /  '
        OnChange = me_nossarefChange
      end
    end
    object Progress: TProgressBar
      Left = 3
      Top = 309
      Width = 585
      Height = 10
      Min = 0
      Max = 100
      TabOrder = 2
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 177
      Width = 584
      Height = 107
      Caption = ' Informação(ões) da(s) adição(ões) '
      TabOrder = 3
      object gridAdicao: TDBGrid
        Left = 2
        Top = 15
        Width = 580
        Height = 90
        Align = alClient
        DataSource = dsAdicoes
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
    object cbCFOP: TComboBox
      Left = 16
      Top = 56
      Width = 329
      Height = 21
      Enabled = False
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        ''
        '3.551.01  COMPRA DE BEM PARA O ATIVO IMOBILIZADO'
        '3.556.01  COMPRA PARA USO E CONSUMO'
        '3.556.02  COMPRA DE USO E CONSUMO'
        '3.556.03  COMPRA DE MATERIAL PARA USO E CONSUMO'
        '3.556.04  COMPRA DE MATERIAL PARA USO E CONSUMO'
        '3.930.01  ENTRADA MERC. REG. ADM. TEMPORARIA'
        '3.949.01  MATERIAL DE USO E CONSUMO DA SHELL'
        '3.949.02  AQUISIÇÃO DE BRINDE'
        '3.949.03  INOCORRÊNCIA DE SAIDA - EXPORTAÇÃO'
        '3.949.04  MATERIAL DE USO E CONSUMO DA SHELL'
        '3.949.05  RETORNO DE CONSERTO')
    end
    object txtDtEmissao: TEdit
      Left = 423
      Top = 56
      Width = 121
      Height = 21
      Enabled = False
      MaxLength = 10
      TabOrder = 5
      OnKeyPress = txtDtEmissaoKeyPress
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Documentos de Texto (.txt)|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'CA - Exportação de Notas'
    Left = 472
    Top = 87
  end
  object q_Processo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT P.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO, P.NR_DECLA' +
        'RACAO_IMP, NFS.Valservico, NFS.Vatotnota, P.DT_REGISTRO_DI, TU.D' +
        'ESCRICAO AS Local_Desembaraco'
      '  FROM Processos P INNER JOIN Importadores I'
      
        '    ON P.Importador = I.Codigo LEFT JOIN Notas_Fiscais_Servicos ' +
        'NFS    '
      
        '    ON NFS.Processo = P.Codigo LEFT JOIN Notas_Fiscais_Servicos_' +
        'Processos NFSP    '
      '    ON NFS.NFiscal = NFSP.NFISCAL  LEFT JOIN Faturas F'
      '    ON P.Codigo = F.Processo INNER JOIN Conhecimento_Processo CP'
      '    ON P.Codigo = CP.Processo LEFT JOIN TAB_URF TU'
      '    ON CP.URF_Despacho = TU.CODIGO'
      ' WHERE (NFS.Processo = :p0) OR (NFSP.PROCESSO = :p0) ')
    Left = 24
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object q_ProcessoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 8
    end
    object q_ProcessoRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object q_ProcessoCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object q_ProcessoNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object q_ProcessoDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
    end
    object q_ProcessoLocal_Desembaraco: TStringField
      FieldName = 'Local_Desembaraco'
      Size = 120
    end
    object q_ProcessoVatotnota: TFloatField
      FieldName = 'Vatotnota'
    end
    object q_ProcessoValServico: TFloatField
      FieldName = 'ValServico'
    end
  end
  object q_ItensFaturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ITF.Codigo_Produto, ITF.Sequencial_Produto, ITF.Quantidad' +
        'e, ITF.Valor_Unitario, ITF.Peso_Unitario, TUM.ABREV, F.DtEmissao'
      '    FROM ItensFaturas ITF INNER JOIN Faturas F'
      '      ON ITF.Fatura = F.Codigo LEFT JOIN TAB_UNID_MEDIDA TUM'
      '      ON ITF.Unidade = TUM.CODIGO'
      ' WHERE ITF.Processo = :p0')
    Left = 96
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object q_ItensFaturasCodigo_Produto: TStringField
      FieldName = 'Codigo_Produto'
      Size = 50
    end
    object q_ItensFaturasSequencial_Produto: TIntegerField
      FieldName = 'Sequencial_Produto'
    end
    object q_ItensFaturasQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_ItensFaturasValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object q_ItensFaturasPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object q_ItensFaturasAbrev: TStringField
      FieldName = 'Abrev'
      Size = 120
    end
    object q_ItensFaturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
  end
  object q_Impostos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ITF.Codigo_Produto, ITF.Sequencial_Produto, ITF.Quantidad' +
        'e, ITF.Valor_Unitario, ITF.Peso_Unitario, TUM.ABREV'
      '    FROM ItensFaturas ITF LEFT JOIN TAB_UNID_MEDIDA TUM'
      '      ON ITF.Unidade = TUM.CODIGO'
      ' WHERE Processo = :p0')
    Left = 168
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'Codigo_Produto'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Sequencial_Produto'
    end
    object FloatField1: TFloatField
      FieldName = 'Quantidade'
    end
    object FloatField2: TFloatField
      FieldName = 'Valor_Unitario'
    end
    object FloatField3: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object StringField2: TStringField
      FieldName = 'Abrev'
      Size = 120
    end
  end
  object dsAdicoes: TDataSource
    DataSet = q_Adicoes
    Left = 232
    Top = 448
  end
  object q_Adicoes: TQuery
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
        'D (itf.Processo =:p0)'
      'ORDER BY '
      '              Tributacao_Item_Fatura.Adicao')
    Left = 231
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object q_AdicoesI_xProd: TStringField
      FieldName = 'I_xProd'
      FixedChar = True
      Size = 119
    end
    object q_AdicoesI_NCM: TStringField
      FieldName = 'I_NCM'
      FixedChar = True
      Size = 8
    end
    object q_AdicoesI_uCom: TStringField
      FieldName = 'I_uCom'
      FixedChar = True
      Size = 120
    end
    object q_AdicoesI_qCom: TFloatField
      FieldName = 'I_qCom'
    end
    object q_AdicoesI_vUnCom: TFloatField
      FieldName = 'I_vUnCom'
    end
    object q_AdicoesI_vProd: TFloatField
      FieldName = 'I_vProd'
    end
    object q_AdicoesI25_nAdicao: TStringField
      FieldName = 'I25_nAdicao'
      FixedChar = True
      Size = 3
    end
    object q_AdicoesI25_nSeqAdic: TSmallintField
      FieldName = 'I25_nSeqAdic'
    end
    object q_AdicoesProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_AdicoesFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object q_AdicoesPag: TFloatField
      FieldName = 'Pag'
    end
    object q_AdicoesSeq: TFloatField
      FieldName = 'Seq'
    end
    object q_AdicoesProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object q_AdicoesFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 60
    end
    object q_AdicoesUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object q_AdicoesUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object q_AdicoesDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object q_AdicoesNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object q_AdicoesReferencia: TStringField
      FieldName = 'Referencia'
      FixedChar = True
      Size = 30
    end
    object q_AdicoesNumero_serie: TStringField
      FieldName = 'Numero_serie'
      FixedChar = True
      Size = 15
    end
    object q_AdicoesReferencia_projeto: TStringField
      FieldName = 'Referencia_projeto'
      FixedChar = True
      Size = 15
    end
    object q_AdicoesPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
    object q_AdicoesSeqpo: TStringField
      FieldName = 'Seqpo'
      FixedChar = True
      Size = 5
    end
    object q_AdicoesPeso_Unitario: TFloatField
      FieldName = 'Peso_Unitario'
    end
    object q_AdicoesPeso_Unitario_Acertado: TFloatField
      FieldName = 'Peso_Unitario_Acertado'
    end
    object q_AdicoesPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object q_AdicoesPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object q_Adicoesdesci: TStringField
      FieldName = 'desci'
      FixedChar = True
      Size = 255
    end
    object q_AdicoesRateio_Acrescimos: TFloatField
      FieldName = 'Rateio_Acrescimos'
    end
    object q_AdicoesRateio_Deducoes: TFloatField
      FieldName = 'Rateio_Deducoes'
    end
    object q_AdicoesRateio_Embalagem: TFloatField
      FieldName = 'Rateio_Embalagem'
    end
    object q_AdicoesRateio_Frete_Interno_imp: TFloatField
      FieldName = 'Rateio_Frete_Interno_imp'
    end
    object q_AdicoesRateio_Seguro_Interno: TFloatField
      FieldName = 'Rateio_Seguro_Interno'
    end
    object q_AdicoesRateio_outras_import: TFloatField
      FieldName = 'Rateio_outras_import'
    end
    object q_AdicoesRateio_startup: TFloatField
      FieldName = 'Rateio_startup'
    end
    object q_AdicoesRateio_jurosfin: TFloatField
      FieldName = 'Rateio_jurosfin'
    end
    object q_AdicoesRateio_montagem: TFloatField
      FieldName = 'Rateio_montagem'
    end
    object q_AdicoesRateio_Frete_Interno_exp: TFloatField
      FieldName = 'Rateio_Frete_Interno_exp'
    end
    object q_AdicoesRateio_carga_exp: TFloatField
      FieldName = 'Rateio_carga_exp'
    end
    object q_AdicoesRateio_outras_export: TFloatField
      FieldName = 'Rateio_outras_export'
    end
    object q_AdicoesRateio_frete_fatura: TFloatField
      FieldName = 'Rateio_frete_fatura'
    end
    object q_AdicoesRateio_seguro_fatura: TFloatField
      FieldName = 'Rateio_seguro_fatura'
    end
    object q_AdicoesRateio_carga_imp: TFloatField
      FieldName = 'Rateio_carga_imp'
    end
    object q_AdicoesRateio_Despesas_ate_FOB: TFloatField
      FieldName = 'Rateio_Despesas_ate_FOB'
    end
    object q_AdicoesRateio_Frete_prepaid: TFloatField
      FieldName = 'Rateio_Frete_prepaid'
    end
    object q_AdicoesRateio_Frete_collect: TFloatField
      FieldName = 'Rateio_Frete_collect'
    end
    object q_AdicoesRateio_Frete_ternac: TFloatField
      FieldName = 'Rateio_Frete_ternac'
    end
    object q_AdicoesRateio_Seguro: TFloatField
      FieldName = 'Rateio_Seguro'
    end
    object q_AdicoesValor_Aduaneiro: TFloatField
      FieldName = 'Valor_Aduaneiro'
    end
    object q_AdicoesValor_mercadoria: TFloatField
      FieldName = 'Valor_mercadoria'
    end
    object q_AdicoesVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object q_AdicoesTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_AdicoesVA: TFloatField
      FieldName = 'VA'
    end
    object q_AdicoesOT: TFloatField
      FieldName = 'OT'
    end
    object q_AdicoesDA: TFloatField
      FieldName = 'DA'
    end
    object q_AdicoesAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object q_AdicoesAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object q_AdicoesAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object q_AdicoesAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object q_AdicoesAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object q_AdicoesAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object q_AdicoesBASEC_PISCOFINS: TFloatField
      FieldName = 'BASEC_PISCOFINS'
    end
    object q_AdicoesBASEC_ICMS: TFloatField
      FieldName = 'BASEC_ICMS'
    end
    object q_AdicoesVALOR_II: TFloatField
      FieldName = 'VALOR_II'
    end
    object q_AdicoesVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object q_AdicoesVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object q_AdicoesVALOR_ICMS_EXTRA: TFloatField
      FieldName = 'VALOR_ICMS_EXTRA'
    end
    object q_AdicoesVALOR_PIS_PASEP: TFloatField
      FieldName = 'VALOR_PIS_PASEP'
    end
    object q_AdicoesVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object q_AdicoesPrazo_permanencia: TIntegerField
      FieldName = 'Prazo_permanencia'
    end
    object q_AdicoesVA_proporcional: TFloatField
      FieldName = 'VA_proporcional'
    end
    object q_AdicoesAliq_NCM_II_proporcional: TFloatField
      FieldName = 'Aliq_NCM_II_proporcional'
    end
    object q_AdicoesAliq_NCM_IPI_proporcional: TFloatField
      FieldName = 'Aliq_NCM_IPI_proporcional'
    end
    object q_AdicoesFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_AdicoesVA_NEW: TFloatField
      FieldName = 'VA_NEW'
    end
    object q_AdicoesFRENTE: TFloatField
      FieldName = 'FRENTE'
    end
    object q_AdicoesValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
  end
  object q_total_produtos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select SUM(valor_total) as Valor_Total from ItensFaturas'
      'where Processo = :p')
    Left = 313
    Top = 382
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
