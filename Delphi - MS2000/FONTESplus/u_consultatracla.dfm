object f_consultatracla: Tf_consultatracla
  Left = 5
  Top = 41
  Width = 789
  Height = 506
  AutoSize = True
  Caption = 'Consulta de Traduções e Classificações'
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
  object gb_filtro: TGroupBox
    Left = 0
    Top = 0
    Width = 781
    Height = 77
    Caption = '> Filtros <'
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 17
      Width = 43
      Height = 13
      Caption = 'Ref.MS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 38
      Width = 64
      Height = 13
      Caption = 'Ref.Cliente'
    end
    object Label3: TLabel
      Left = 244
      Top = 57
      Width = 40
      Height = 13
      Caption = 'Cliente'
    end
    object Label4: TLabel
      Left = 475
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Exportador'
    end
    object Label5: TLabel
      Left = 36
      Top = 57
      Width = 37
      Height = 13
      Caption = 'Fatura'
    end
    object Label6: TLabel
      Left = 211
      Top = 16
      Width = 71
      Height = 13
      Caption = 'Part Number'
    end
    object Label7: TLabel
      Left = 253
      Top = 38
      Width = 28
      Height = 13
      Caption = 'NCM'
    end
    object Label8: TLabel
      Left = 419
      Top = 38
      Width = 119
      Height = 13
      Caption = 'Descrição Português'
    end
    object Label9: TLabel
      Left = 442
      Top = 57
      Width = 96
      Height = 13
      Caption = 'Descrição Inglês'
    end
    object edt_refms: TEdit
      Left = 78
      Top = 9
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edt_refcliente: TEdit
      Left = 78
      Top = 30
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edt_fatura: TEdit
      Left = 78
      Top = 50
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object edt_export: TEdit
      Left = 540
      Top = 9
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object edt_port: TEdit
      Left = 540
      Top = 30
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object edt_ing: TEdit
      Left = 540
      Top = 50
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object BitBtn1: TBitBtn
      Left = 695
      Top = 28
      Width = 78
      Height = 25
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn1Click
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
    object edt_part: TEdit
      Left = 286
      Top = 11
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object edt_ncm: TEdit
      Left = 286
      Top = 32
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object edt_cliente: TEdit
      Left = 286
      Top = 50
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 77
    Width = 780
    Height = 402
    Color = clNavy
    TabOrder = 1
    object l_reg: TLabel
      Left = 1
      Top = 1
      Width = 778
      Height = 13
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbg_itens: TDBGrid
      Left = 1
      Top = 16
      Width = 778
      Height = 379
      Color = clWhite
      DataSource = ds_qitens
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFMS'
          Title.Caption = 'Ref.MS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFCLIENTE'
          Title.Caption = 'Ref.Cliente'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FATURA'
          Title.Caption = 'Fatura'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_EXPORTADOR'
          Title.Caption = 'Exportador'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARTNUMBER'
          Title.Caption = 'Part Number'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC'
          Title.Caption = 'Descrição Português'
          Width = 257
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_ing'
          Title.Caption = 'Descrição Inglês'
          Width = 265
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Destaque_NCM'
          Title.Caption = 'Destaque NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NALADI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM_NOME'
          Title.Caption = 'Descrição NCM'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAB_REG_TRIBUTARIO.DESCRICAO'
          Title.Caption = 'Tributação II'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAB_REG_TRIBUTARIO_1.DESCRICAO'
          Title.Caption = 'Tributação IPI'
          Width = 277
          Visible = True
        end>
    end
  end
  object q_itens: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Razao_Social AS CLIENTE, Processos.Codigo AS' +
        ' REFMS, Processos.Codigo_Cliente AS REFCLIENTE, Faturas.Codigo A' +
        'S FATURA, ItensFaturas.Produto AS PARTNUMBER, cast(ItensFaturas.' +
        'Descricao_Produto as varchar) AS [DESC], cast(ItensFaturas.Descr' +
        'icao_Produto_ing as varchar) AS DESC_ing, ItensFaturas.NCM, Iten' +
        'sFaturas.Destaque_NCM, ItensFaturas.NALADI, TAB_NCM.DESCRICAO AS' +
        ' NCM_NOME, Exportadores.Razao_Social AS NOME_EXPORTADOR, ItensFa' +
        'turas.Empresa, ItensFaturas.Filial, ItensFaturas.Processo, Itens' +
        'Faturas.Sequencial, Tributacao_Item_Fatura.Regime_Tributacao_II,' +
        ' TAB_REG_TRIBUTARIO.DESCRICAO, Tributacao_Item_Fatura.Regime_Tri' +
        'butacao_IPI, TAB_REG_TRIBUTARIO_1.DESCRICAO'
      
        'FROM (((((((Importadores INNER JOIN Processos ON Importadores.Co' +
        'digo = Processos.Importador) LEFT JOIN Faturas ON Processos.Codi' +
        'go = Faturas.Processo) LEFT JOIN Exportadores ON Faturas.Exporta' +
        'dor = Exportadores.Codigo) LEFT JOIN ItensFaturas ON (Faturas.Co' +
        'digo = ItensFaturas.Fatura) AND (Faturas.Processo = ItensFaturas' +
        '.Processo)) LEFT JOIN TAB_NCM ON ItensFaturas.NCM = TAB_NCM.CODI' +
        'GO) LEFT JOIN Tributacao_Item_Fatura ON (ItensFaturas.Sequencial' +
        ' = Tributacao_Item_Fatura.Sequencial_Item) AND (ItensFaturas.Fat' +
        'ura = Tributacao_Item_Fatura.Fatura) AND (ItensFaturas.Processo ' +
        '= Tributacao_Item_Fatura.Processo)) LEFT JOIN TAB_REG_TRIBUTARIO' +
        ' ON Tributacao_Item_Fatura.Regime_Tributacao_II = TAB_REG_TRIBUT' +
        'ARIO.CODIGO) LEFT JOIN TAB_REG_TRIBUTARIO AS TAB_REG_TRIBUTARIO_' +
        '1 ON Tributacao_Item_Fatura.Regime_Tributacao_IPI = TAB_REG_TRIB' +
        'UTARIO_1.CODIGO')
    Left = 237
    Top = 137
    object q_itensCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 60
    end
    object q_itensREFMS: TStringField
      FieldName = 'REFMS'
      FixedChar = True
      Size = 8
    end
    object q_itensREFCLIENTE: TStringField
      FieldName = 'REFCLIENTE'
      FixedChar = True
      Size = 60
    end
    object q_itensFATURA: TStringField
      FieldName = 'FATURA'
      FixedChar = True
      Size = 30
    end
    object q_itensPARTNUMBER: TStringField
      FieldName = 'PARTNUMBER'
      FixedChar = True
      Size = 25
    end
    object q_itensDESC: TStringField
      FieldName = 'DESC'
      FixedChar = True
      Size = 30
    end
    object q_itensDESC_ing: TStringField
      FieldName = 'DESC_ing'
      FixedChar = True
      Size = 30
    end
    object q_itensNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object q_itensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object q_itensNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object q_itensNCM_NOME: TStringField
      FieldName = 'NCM_NOME'
      FixedChar = True
      Size = 120
    end
    object q_itensNOME_EXPORTADOR: TStringField
      FieldName = 'NOME_EXPORTADOR'
      FixedChar = True
      Size = 60
    end
    object q_itensEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_itensFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_itensProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_itensSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object q_itensRegime_Tributacao_II: TStringField
      FieldName = 'Regime_Tributacao_II'
      FixedChar = True
      Size = 1
    end
    object q_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object q_itensRegime_Tributacao_IPI: TStringField
      FieldName = 'Regime_Tributacao_IPI'
      FixedChar = True
      Size = 1
    end
    object q_itensDESCRICAO_1: TStringField
      FieldName = 'DESCRICAO_1'
      FixedChar = True
      Size = 120
    end
  end
  object ds_qitens: TDataSource
    DataSet = q_itens
    Left = 253
    Top = 153
  end
end
