object FrmCalculoLubrizol: TFrmCalculoLubrizol
  Left = 464
  Top = 297
  ActiveControl = edtProcessoMS2000
  BorderStyle = bsSingle
  Caption = 'Planilha de cálculo Lubrizol'
  ClientHeight = 244
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 64
    Width = 409
    Height = 161
    Visible = False
  end
  object Label1: TLabel
    Left = 8
    Top = 22
    Width = 59
    Height = 13
    Caption = 'Nº Processo'
  end
  object btnCalcular: TBitBtn
    Left = 296
    Top = 251
    Width = 75
    Height = 25
    Caption = 'Cálcular'
    TabOrder = 0
    Visible = False
  end
  object edtProcessoMS2000: TMaskEdit
    Left = 72
    Top = 18
    Width = 97
    Height = 21
    EditMask = '99999/99;1;_'
    MaxLength = 8
    TabOrder = 1
    Text = '     /  '
  end
  object btnPlanilha: TBitBtn
    Left = 182
    Top = 16
    Width = 91
    Height = 25
    Caption = 'Gerar planilha'
    TabOrder = 2
    OnClick = btnPlanilhaClick
  end
  object btnFechar: TBitBtn
    Left = 278
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btnFecharClick
  end
  object qryAdicao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      'adicao,'
      'ncm,'
      'cast(aliq_ncm_ii as varchar(5)) as aliq_ii,'
      'cast(aliq_ncm_ipi as varchar(5)) as aliq_ipi,'
      'cast(aliq_pis_pasep as varchar(5)) as aliq_pis,'
      'cast(aliq_cofins as varchar(5)) as aliq_cofins,'
      ''
      'convert(decimal(9,2), valor_ii) as vl_ii,'
      'convert(decimal(9,2),valor_ipi) as vl_ipi,'
      'convert(decimal(9,2),valor_pis_pasep) as vl_pis,'
      'convert(decimal(9,2),valor_cofins) as vl_cofins,'
      'convert(decimal(9,2),valor_icms) as vl_icms,'
      'convert(decimal(9,2),fob) as vl_fob,'
      'convert(decimal(9,2),da) as vl_tx'
      'from'
      'processos_adicoes_icms_pis_cofins'
      'where '
      'processo =:processo'
      'order by cast(adicao as int)')
    Left = 160
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptUnknown
        Value = '03265/13'
      end>
    object qryAdicaoadicao: TStringField
      FieldName = 'adicao'
      FixedChar = True
      Size = 3
    end
    object qryAdicaovl_ii: TFloatField
      FieldName = 'vl_ii'
    end
    object qryAdicaovl_ipi: TFloatField
      FieldName = 'vl_ipi'
    end
    object qryAdicaovl_pis: TFloatField
      FieldName = 'vl_pis'
    end
    object qryAdicaovl_cofins: TFloatField
      FieldName = 'vl_cofins'
    end
    object qryAdicaovl_icms: TFloatField
      FieldName = 'vl_icms'
    end
    object qryAdicaoaliq_ii: TStringField
      FieldName = 'aliq_ii'
      FixedChar = True
      Size = 5
    end
    object qryAdicaoaliq_ipi: TStringField
      FieldName = 'aliq_ipi'
      FixedChar = True
      Size = 5
    end
    object qryAdicaoaliq_pis: TStringField
      FieldName = 'aliq_pis'
      FixedChar = True
      Size = 5
    end
    object qryAdicaoaliq_cofins: TStringField
      FieldName = 'aliq_cofins'
      FixedChar = True
      Size = 5
    end
    object qryAdicaovl_fob: TFloatField
      FieldName = 'vl_fob'
    end
    object qryAdicaovl_tx: TFloatField
      FieldName = 'vl_tx'
    end
    object qryAdicaoncm: TStringField
      FieldName = 'ncm'
      FixedChar = True
      Size = 8
    end
  end
  object qryItens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      '  ncm, '
      '  sequencial, '
      '  descricao_produto,'
      '  PO'
      'from '
      '  itensfaturas'
      'where '
      '  processo=:processo and ncm=:ncm'
      'order by '
      '  sequencial')
    Left = 24
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptUnknown
        Value = '03256/13'
      end
      item
        DataType = ftString
        Name = 'ncm'
        ParamType = ptUnknown
        Value = '38112990'
      end>
    object qryItensncm: TStringField
      FieldName = 'ncm'
      FixedChar = True
      Size = 8
    end
    object qryItenssequencial: TStringField
      FieldName = 'sequencial'
      FixedChar = True
      Size = 4
    end
    object qryItensdescricao_produto: TMemoField
      FieldName = 'descricao_produto'
      BlobType = ftMemo
    end
    object qryItensPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 30
    end
  end
  object qryAcrescimo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' VL_ACRESCIMO_MOEDA,'
      ' cd_met_acres_valor'
      'from '
      ' Acrescimos_Faturas'
      'where '
      ' Processo =:Processo')
    Left = 352
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object qryAcrescimoVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object qryAcrescimocd_met_acres_valor: TStringField
      FieldName = 'cd_met_acres_valor'
      FixedChar = True
      Size = 3
    end
  end
  object qryProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' txConversaoDeAmanha,'
      ' Valor_CIF'
      'from '
      ' Processos'
      'where '
      ' Codigo =:Processo')
    Left = 288
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object qryProcessotxConversaoDeAmanha: TSmallintField
      FieldName = 'txConversaoDeAmanha'
    end
    object qryProcessoValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
      Origin = 'DBNMSCOMEX.Processos.Valor_CIF'
    end
  end
  object qryTaxaDoDia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Codigo, '
      ' Taxa_Conversao,'
      ' convert(datetime, Vigencia_Inicio_Taxa)as Vigencia_Inicio_Taxa'
      'from '
      ' TAB_CONVERSAO_CAMBIO '
      'where '
      ' Codigo = 220')
    Left = 96
    Top = 64
    object qryTaxaDoDiaCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 3
    end
    object qryTaxaDoDiaTaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      FixedChar = True
      Size = 9
    end
    object qryTaxaDoDiaVigencia_Inicio_Taxa: TDateTimeField
      FieldName = 'Vigencia_Inicio_Taxa'
    end
  end
  object qryTaxaAmanha: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Codigo, '
      ' Taxa_Conversao '
      'from '
      ' PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA '
      'where '
      ' Codigo = 220')
    Left = 256
    Top = 144
    object qryTaxaAmanhaCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Codigo'
      FixedChar = True
      Size = 3
    end
    object qryTaxaAmanhaTaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      Origin = 
        'DBNMSCOMEX.PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Taxa_Conversa' +
        'o'
      FixedChar = True
      Size = 9
    end
  end
  object qryFOB: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' sum(Valor_Total) as Valor  '
      'from '
      ' faturas'
      'where '
      ' processo =:Processo')
    Left = 96
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'processo'
        ParamType = ptInput
      end>
    object qryFOBValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.itensfaturas.Valor_Total'
    end
  end
end
