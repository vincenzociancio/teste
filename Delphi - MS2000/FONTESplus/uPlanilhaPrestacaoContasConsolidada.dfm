object frmPCConsolidada: TfrmPCConsolidada
  Left = 142
  Top = 147
  BorderStyle = bsSingle
  Caption = 'Prestação de contas consolidada'
  ClientHeight = 474
  ClientWidth = 874
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
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
    object lblImportador: TLabel
      Left = 200
      Top = 8
      Width = 47
      Height = 16
      Caption = 'Cliente: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtMS: TMaskEdit
      Left = 128
      Top = 6
      Width = 65
      Height = 21
      EditMask = '!99999/99;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = edtMSChange
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 455
    Width = 874
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object SGrid: TStringGrid
    Left = 0
    Top = 33
    Width = 874
    Height = 381
    Align = alClient
    BorderStyle = bsNone
    DefaultColWidth = 100
    DefaultRowHeight = 25
    RowCount = 12
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnDrawCell = SGridDrawCell
    RowHeights = (
      25
      25
      25
      25
      25
      25
      25
      25
      25
      25
      25
      25)
  end
  object Panel1: TPanel
    Left = 0
    Top = 414
    Width = 874
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 762
      Top = 8
      Width = 105
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      TabOrder = 0
      Kind = bkClose
    end
    object btnExcel: TBitBtn
      Left = 650
      Top = 8
      Width = 105
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Gerar Excel'
      Enabled = False
      TabOrder = 1
      OnClick = btnExcelClick
      Glyph.Data = {
        26050000424D260500000000000036040000280000000F0000000F0000000100
        080000000000F0000000120B0000120B00000001000000000000EFEFEF0011A7
        210030C861008DA38D006D8C6E00D5D5D50021B8410053715400B3B6B30043AF
        6000DEDEDE00D1D1D100E9E9E900F8F8F80000990000FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000B0303030303
        03030303030303030A00080E0E0E0E0E0E0E0E0E0E0E0E0E0B00030E000F000F
        000F000F000F080E0800080E0A080B0808080B080803030E0B00030E040E0E0E
        0E0E0E0E0E0E030E080008010F020E01010604010E030B0E0B00030E000F0306
        0104010E0106080E080008010F0F0A01070106010F0F08010A000806000B0706
        06060206030F080E080008010B0702020208020206030B010A00080608020309
        0A0F080303080801080008020F0F0F0F0F0F0F0F0F0F0B060A00080608030808
        08030808080303060B0008020601060606060606060106020A000A0A080B0B0A
        080B0B0A080A0B0A0000}
    end
  end
  object qryMain: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      
        '  sum((pa.valor_ii/pa.FOB)*((itf.VMLE-itf.Acresc_reduc_Valaduan)' +
        ' * ptc.taxa_conversao)) as '#39'VL_II'#39','
      
        '  sum((pa.valor_ipi/pa.fob)*((itf.VMLE-itf.Acresc_reduc_Valaduan' +
        ') * ptc.taxa_conversao)) as '#39'VL_IPI'#39','
      
        '  sum((pa.VALOR_PIS_PASEP/pa.FOB)*((itf.VMLE-itf.Acresc_reduc_Va' +
        'laduan) * ptc.Taxa_conversao)) as '#39'VL_PIS'#39','
      '  sum(itf.Valor_Total) as '#39'Valor_Total'#39',   '
      
        '  sum((pa.VALOR_COFINS/pa.FOB)*((itf.VMLE-itf.Acresc_reduc_Valad' +
        'uan) * ptc.taxa_conversao)) as '#39'VL_COFINS'#39','
      
        '  sum((valor_icms_extra/pa.FOB)*((itf.VMLE-itf.Acresc_reduc_Vala' +
        'duan) * ptc.taxa_conversao)) AS '#39'VL_FECP'#39',  '
      '  sum(itf.Base_Calc_II * ptc.taxa_conversao) AS VA_NEW,'
      '  max(pa.Aliq_ICMS) as '#39'Aliq_ICMS'#39','
      '  max(pa.Aliq_ICMS_EXTRA) as '#39'Aliq_ICMS_EXTRA'#39','
      '  Faturas.FK_Plataforma,'
      '  Plataformas.Plataforma,'
      '  Plataformas.Sigla,'
      '  Importadores.Razao_Social,'
      '  Importadores.CNPJ_CPF_COMPLETO as CNPJ,'
      '  Processos.Codigo,'
      '  Processos.NR_DECLARACAO_IMP'
      'FROM '
      ' ItensFaturas AS itf '
      
        ' INNER JOIN Fabricantes_Produtores ON itf.Fabricante = Fabricant' +
        'es_Produtores.Codigo'
      
        ' INNER JOIN Tributacao_Item_Fatura ON (itf.Sequencial = Tributac' +
        'ao_Item_Fatura.Sequencial_Item) AND (itf.Fatura = Tributacao_Ite' +
        'm_Fatura.Fatura) AND (itf.Processo = Tributacao_Item_Fatura.Proc' +
        'esso)'
      
        ' INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS pa ON (Tributacao_' +
        'Item_Fatura.Adicao = pa.Adicao) AND (Tributacao_Item_Fatura.Proc' +
        'esso = pa.Processo)'
      ' INNER JOIN Processos ON itf.Processo = Processos.Codigo '
      
        ' INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Pr' +
        'ocesso = Faturas.Processo)'
      
        ' INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda =' +
        ' ptc.Moeda) AND (Faturas.Processo = ptc.Processo)'
      
        ' INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecim' +
        'ento_Processo.Processo'
      
        ' INNER JOIN Importadores ON Processos.Importador = Importadores.' +
        'Codigo '
      
        ' INNER JOIN Plataformas ON Plataformas.PK_Plataforma = Faturas.F' +
        'K_Plataforma'
      'WHERE Processos.Codigo =:Processo'
      'GROUP BY '
      ' Faturas.FK_Plataforma,'
      ' Plataformas.Plataforma,'
      ' Plataformas.Sigla,'
      ' Importadores.Razao_Social,'
      ' Importadores.CNPJ_CPF_COMPLETO,'
      ' Processos.Codigo,'
      ' Processos.NR_DECLARACAO_IMP '
      'ORDER BY'
      ' Plataformas.Sigla'
      ''
      ''
      '')
    Left = 440
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qryMainVL_II: TFloatField
      FieldName = 'VL_II'
    end
    object qryMainVL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object qryMainVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object qryMainValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object qryMainVA_NEW: TFloatField
      FieldName = 'VA_NEW'
    end
    object qryMainVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object qryMainVL_FECP: TFloatField
      FieldName = 'VL_FECP'
    end
    object qryMainFK_Plataforma: TIntegerField
      FieldName = 'FK_Plataforma'
    end
    object qryMainPlataforma: TStringField
      FieldName = 'Plataforma'
      FixedChar = True
      Size = 30
    end
    object qryMainSigla: TStringField
      FieldName = 'Sigla'
      FixedChar = True
      Size = 10
    end
    object qryMainRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryMainCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object qryMainCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qryMainNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object qryMainAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object qryMainAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
  end
  object qryAuto_Reg: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' Contabilizado_cliente,'
      ' Contabilizado_cliente_icms'
      'from'
      ' Autorizacao_Registros'
      'where '
      ' REF_MS=:Processo')
    Left = 712
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qryQT: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' select COUNT(*) as QT from '
      ' Processos_ADICOES_ICMS_PIS_COFINS'
      ' where '
      ' Processos_ADICOES_ICMS_PIS_COFINS.Processo =:Processo ')
    Left = 440
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qryTotal_Taxa_Siscomex: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select sum(da) as total_taxa from Processos_ADICOES_ICMS_PIS_COF' +
        'INS'
      'where Processo = :Processo')
    Left = 657
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qryTotal_Taxa_Siscomextotal_taxa: TFloatField
      FieldName = 'total_taxa'
    end
  end
  object qryTotal_Produtos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select SUM(valor_total) as Valor_Total from ItensFaturas'
      'where Processo = :Processo')
    Left = 521
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qryTotal_ProdutosValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
  end
end
