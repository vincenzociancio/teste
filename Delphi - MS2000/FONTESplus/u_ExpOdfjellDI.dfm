object f_ExpOdfjellDI: Tf_ExpOdfjellDI
  Left = 220
  Top = 452
  BorderStyle = bsSingle
  Caption = 'ODFJELL - DI'
  ClientHeight = 298
  ClientWidth = 877
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
    Width = 877
    Height = 298
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 3
      Top = 248
      Width = 870
      Height = 46
      Color = 10514464
      TabOrder = 0
      object btnSalvar: TBitBtn
        Left = 714
        Top = 14
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
      Width = 875
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
        OnChange = ME_nossarefChange
      end
    end
    object Progress: TProgressBar
      Left = 3
      Top = 237
      Width = 870
      Height = 10
      Min = 0
      Max = 100
      TabOrder = 2
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 41
      Width = 870
      Height = 189
      Caption = ' Informação(ões) da(s) adição(ões) '
      TabOrder = 3
      object gridAdicao: TDBGrid
        Left = 2
        Top = 15
        Width = 866
        Height = 172
        Align = alClient
        DataSource = dsProcesso
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
            FieldName = 'NR_DECLARACAO_IMP'
            Title.Caption = 'Num DI'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Adicao'
            Title.Caption = 'Adição'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Seq_Adicao'
            Title.Caption = 'Seq. Adição'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Title.Caption = 'Part. Number'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO_PORT'
            Title.Caption = 'Produto'
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO_ING'
            Title.Caption = 'Produto Inglês'
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Razao_Social'
            Title.Caption = 'Fabricante'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliq_NCM_II'
            Title.Caption = 'Alíq. II'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliq_NCM_IPI'
            Title.Caption = 'Alíq. IPI'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliq_PIS_PASEP'
            Title.Caption = 'Alíq. PIS'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliq_COFINS'
            Title.Caption = 'Alíq. COFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliq_ICMS'
            Title.Caption = 'Alíq. ICMS'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliq_ICMS_EXTRA'
            Title.Caption = 'Alíq. FECP'
            Width = 58
            Visible = True
          end>
      end
    end
  end
  object q_Processo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT P.Codigo, '
      '       P.DT_REGISTRO_DI, '
      '       P.NR_DECLARACAO_IMP, '
      '       TIFA.Adicao, '
      '       TIFA.Seq_Adicao,'
      '       ITF.Sequencial, '
      '       ITF.Produto,'
      '       ITF.Descricao_Produto,'
      '       ITF.Descricao_Produto_ing,'
      
        '       CAST(ITF.Descricao_Produto AS varchar(120)) AS PRODUTO_PO' +
        'RT,       '#9
      
        '       CAST(ITF.Descricao_Produto_ing AS varchar(120)) AS PRODUT' +
        'O_ING,'
      '       FP.Razao_Social,'
      '       ITF.NCM,'
      '       ITF.Quantidade,'
      '       ITF.VMLE,'
      '       ITF.Valor_Total,'
      '       PAIPC.Aliq_NCM_II, '
      '       PAIPC.Aliq_NCM_IPI,'
      '       PAIPC.Aliq_PIS_PASEP,'
      '       PAIPC.Aliq_COFINS,'
      '       PAIPC.Aliq_ICMS,'
      '       PAIPC.Aliq_ICMS_EXTRA,'
      '       PAIPC.VALOR_II,                           '
      '       PAIPC.VALOR_IPI,                                  '
      '       PAIPC.VALOR_COFINS,'
      '       PAIPC.VALOR_PIS_PASEP,'
      '       PAIPC.FOB,'
      '       PTC.Taxa_conversao,'
      
        '       ([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS VA_NEW  ' +
        '    '
      '  FROM Processos P INNER JOIN Importadores I'
      '    ON P.Importador = I.Codigo INNER JOIN Faturas F'
      '    ON P.Codigo = F.Processo INNER JOIN ItensFaturas ITF'
      
        '    ON F.Codigo = ITF.Fatura INNER JOIN Processos_ADICOES_ICMS_P' +
        'IS_COFINS PAIPC'
      '    ON P.Codigo = PAIPC.Processo AND'
      
        '       ITF.NCM = PAIPC.NCM INNER JOIN Tributacao_Item_Fatura TIF' +
        'A'
      '    ON ITF.Processo = TIFA.Processo AND'
      '       ITF.Fatura   = TIFA.Fatura AND'
      
        '       ITF.Sequencial = TIFA.Sequencial_Item INNER JOIN Processo' +
        's_Taxas_Conversao PTC'
      '    ON (F.Moeda = PTC.Moeda) AND '
      
        '       (F.Processo = PTC.Processo) INNER JOIN Fabricantes_Produt' +
        'ores FP                          '
      '    ON ITF.Fabricante = FP.Codigo   '
      
        ' WHERE P.NR_DECLARACAO_IMP IS NOT NULL AND I.Codigo IN ('#39'359'#39','#39'3' +
        '66'#39') '
      '       AND P.CODIGO = :p0'
      'ORDER BY  TIFA.Adicao, TIFA.Seq_Adicao')
    Left = 112
    Top = 159
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object q_ProcessoCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object q_ProcessoDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      FixedChar = True
      Size = 8
    end
    object q_ProcessoNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object q_ProcessoAdicao: TStringField
      FieldName = 'Adicao'
      FixedChar = True
      Size = 3
    end
    object q_ProcessoSeq_Adicao: TSmallintField
      FieldName = 'Seq_Adicao'
    end
    object q_ProcessoSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object q_ProcessoProduto: TStringField
      FieldName = 'Produto'
      FixedChar = True
      Size = 50
    end
    object q_ProcessoDescricao_Produto: TMemoField
      FieldName = 'Descricao_Produto'
      BlobType = ftMemo
    end
    object q_ProcessoDescricao_Produto_ing: TMemoField
      FieldName = 'Descricao_Produto_ing'
      BlobType = ftMemo
    end
    object q_ProcessoPRODUTO_PORT: TStringField
      FieldName = 'PRODUTO_PORT'
      FixedChar = True
      Size = 120
    end
    object q_ProcessoPRODUTO_ING: TStringField
      FieldName = 'PRODUTO_ING'
      FixedChar = True
      Size = 120
    end
    object q_ProcessoRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_ProcessoNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object q_ProcessoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object q_ProcessoVMLE: TFloatField
      FieldName = 'VMLE'
    end
    object q_ProcessoValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object q_ProcessoAliq_NCM_II: TFloatField
      FieldName = 'Aliq_NCM_II'
    end
    object q_ProcessoAliq_NCM_IPI: TFloatField
      FieldName = 'Aliq_NCM_IPI'
    end
    object q_ProcessoAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object q_ProcessoAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object q_ProcessoAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object q_ProcessoAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object q_ProcessoVALOR_II: TFloatField
      FieldName = 'VALOR_II'
    end
    object q_ProcessoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object q_ProcessoVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
    end
    object q_ProcessoVALOR_PIS_PASEP: TFloatField
      FieldName = 'VALOR_PIS_PASEP'
    end
    object q_ProcessoFOB: TFloatField
      FieldName = 'FOB'
    end
    object q_ProcessoTaxa_conversao: TFloatField
      FieldName = 'Taxa_conversao'
    end
    object q_ProcessoVA_NEW: TFloatField
      FieldName = 'VA_NEW'
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Documentos de Texto (.txt)|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'CA - Exportação de Notas'
    Left = 824
    Top = 143
  end
  object dsProcesso: TDataSource
    DataSet = q_Processo
    Left = 46
    Top = 159
  end
  object q_total_taxa_siscomex: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select sum(da) as total_taxa from Processos_ADICOES_ICMS_PIS_COF' +
        'INS'
      'where Processo = :p')
    Left = 465
    Top = 164
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
    Left = 361
    Top = 164
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
