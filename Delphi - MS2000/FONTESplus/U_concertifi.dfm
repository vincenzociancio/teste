object f_concertific: Tf_concertific
  Left = 215
  Top = 130
  BorderStyle = bsSingle
  Caption = 'Documentos vencidos e a vencer'
  ClientHeight = 407
  ClientWidth = 701
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
    Width = 701
    Height = 25
    Align = alTop
    Caption = 'Documentos vencidos e a vencer'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 701
    Height = 382
    Align = alClient
    DataSource = ds_qcertif
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qdoc'
        Title.Caption = 'Documento'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qdiastexto'
        Title.Caption = 'Vencido / a vencer'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qsubtipo'
        Title.Caption = 'Subtipo Doc'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qimp'
        Title.Caption = 'Importador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qdescont'
        Title.Caption = 'Contrato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qdescloc'
        Title.Caption = 'Local'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qvigini'
        Title.Caption = 'Vigência Inicial'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qvigfin'
        Title.Caption = 'Vigência Final'
        Visible = True
      end>
  end
  object q_certif: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Razao_Social AS qimp, Tipo_Documentos.descri' +
        'cao AS qdescon, Documentos.Vigencia_inicial AS qvigini, Document' +
        'os.Vigencia_final AS qvigfin, Documentos.Numero_Doc AS qdoc, '
      'Case when [documentos].[vigencia_final] Is Null then 3650 '
      
        'when [documentos].[vigencia_final] Is Not Null then datediff(day' +
        ',[documentos].[vigencia_final],getDate()) '
      'end AS qdias, '
      
        'case when [documentos].[vigencia_final] Is Null then "Sem previs' +
        'ão"'
      
        'when datediff(day,getDate(),[documentos].[vigencia_final]) < 0 t' +
        'hen "Vencido à "+cast((datediff(day,getDate(),[documentos].[vige' +
        'ncia_final]))*(-1) as varchar)+" dia(s)"'
      
        'when datediff(day,getDate(),[documentos].[vigencia_final]) >= 0 ' +
        'then "Vai vencer em "+cast(datediff(day,getDate(),[documentos].[' +
        'vigencia_final]) as varchar)+" dia(s)"'
      'end AS qdiastexto,'
      
        'Contratos.Descricao AS qdescont, Locais_Inventario.Descricao AS ' +
        'qdescloc, Sub_Tipo_Documentos.Descricao AS qsubtipo, Sub_Tipo_Do' +
        'cumentos.Orgao, Documentos.Observacoes, Tipos_status_documentos.' +
        'CODIGO AS qstatus, Tipos_status_documentos.DESCRICAO AS qdescsta' +
        'tus, Documentos.Processo'
      'FROM Parametros '
      
        'INNER JOIN Documentos ON Parametros.Filial = Documentos.Filial A' +
        'ND Parametros.Empresa = Documentos.Empresa '
      
        'LEFT JOIN Importadores ON Documentos.Importador = Importadores.C' +
        'odigo AND Documentos.Filial = Importadores.Filial AND Documentos' +
        '.Empresa = Importadores.Empresa '
      
        'LEFT JOIN Contratos ON Documentos.Contrato = Contratos.Contrato ' +
        'AND Documentos.Importador = Contratos.Importador AND Documentos.' +
        'Filial = Contratos.Filial AND Documentos.Empresa = Contratos.Emp' +
        'resa '
      
        'LEFT JOIN Locais_Inventario ON Documentos.[Local] = Locais_Inven' +
        'tario.[Local] AND Documentos.Contrato = Locais_Inventario.Contra' +
        'to AND Documentos.Importador = Locais_Inventario.Importador AND ' +
        'Documentos.Filial = Locais_Inventario.Filial AND Documentos.Empr' +
        'esa = Locais_Inventario.Empresa '
      
        'LEFT JOIN Tipo_Documentos ON Documentos.Tipo_Doc = Tipo_Document' +
        'os.codigo '
      
        'LEFT JOIN Sub_Tipo_Documentos ON Documentos.Sub_Tipo_Doc = Sub_T' +
        'ipo_Documentos.codigo AND Documentos.Tipo_Doc = Sub_Tipo_Documen' +
        'tos.Tipo_doc '
      
        'INNER JOIN Tipos_status_documentos ON Documentos.Status = Tipos_' +
        'status_documentos.CODIGO'
      
        'GROUP BY Importadores.Razao_Social, Tipo_Documentos.descricao, D' +
        'ocumentos.Vigencia_inicial, Documentos.Vigencia_final, Documento' +
        's.Numero_Doc, '
      'Case when [documentos].[vigencia_final] Is Null then 3650'
      
        'when [documentos].[vigencia_final] Is Not Null then DATEDIFF(day' +
        ',getDate(),[documentos].[vigencia_final]) end,'
      ''
      
        'case when [documentos].[vigencia_final] Is Null then "Sem previs' +
        'ão"'
      
        'when datediff(day,getDate(),[documentos].[vigencia_final]) < 0 t' +
        'hen "Vencido à"+cast((datediff(day,getDate(),[documentos].[vigen' +
        'cia_final]))*(-1) as varchar)+" dia(s)"'
      
        'when datediff(day,getDate(),[documentos].[vigencia_final]) >= 0 ' +
        'then "Vai vencer em "+cast(datediff(day,getDate(),[documentos].[' +
        'vigencia_final]) as varchar)+" dia(s)" end,'
      ''
      
        'Contratos.Descricao, Locais_Inventario.Descricao, Sub_Tipo_Docum' +
        'entos.Descricao, Sub_Tipo_Documentos.Orgao, Documentos.Observaco' +
        'es, Tipos_status_documentos.CODIGO, Tipos_status_documentos.DESC' +
        'RICAO, Documentos.Processo'
      
        'HAVING (Tipos_status_documentos.CODIGO = "1") Or (Tipos_status_d' +
        'ocumentos.CODIGO = "2")'
      'ORDER BY '
      'Case when [documentos].[vigencia_final] Is Null then 3650'
      
        'when [documentos].[vigencia_final] Is Not Null then DATEDIFF(day' +
        ',getDate(),[documentos].[vigencia_final]) end'
      '')
    Left = 192
    Top = 112
    object q_certifqimp: TStringField
      FieldName = 'qimp'
      FixedChar = True
      Size = 60
    end
    object q_certifqdescon: TStringField
      FieldName = 'qdescon'
      FixedChar = True
      Size = 50
    end
    object q_certifqvigini: TDateTimeField
      FieldName = 'qvigini'
    end
    object q_certifqvigfin: TDateTimeField
      FieldName = 'qvigfin'
    end
    object q_certifqdoc: TStringField
      FieldName = 'qdoc'
      FixedChar = True
      Size = 30
    end
    object q_certifqdias: TIntegerField
      FieldName = 'qdias'
    end
    object q_certifqdiastexto: TStringField
      FieldName = 'qdiastexto'
      FixedChar = True
      Size = 51
    end
    object q_certifqdescont: TStringField
      FieldName = 'qdescont'
      FixedChar = True
      Size = 50
    end
    object q_certifqdescloc: TStringField
      FieldName = 'qdescloc'
      FixedChar = True
      Size = 250
    end
    object q_certifqsubtipo: TStringField
      FieldName = 'qsubtipo'
      FixedChar = True
      Size = 70
    end
    object q_certifOrgao: TStringField
      FieldName = 'Orgao'
      FixedChar = True
      Size = 50
    end
    object q_certifObservacoes: TStringField
      FieldName = 'Observacoes'
      FixedChar = True
      Size = 255
    end
    object q_certifqstatus: TStringField
      FieldName = 'qstatus'
      FixedChar = True
      Size = 2
    end
    object q_certifqdescstatus: TStringField
      FieldName = 'qdescstatus'
      FixedChar = True
      Size = 100
    end
    object q_certifProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
  end
  object ds_qcertif: TDataSource
    DataSet = q_certif
    Left = 216
    Top = 112
  end
end
