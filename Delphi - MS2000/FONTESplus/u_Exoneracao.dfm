object f_Exoneracao: Tf_Exoneracao
  Left = 376
  Top = 134
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Guia de Exoneração'
  ClientHeight = 464
  ClientWidth = 762
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 10
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
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 415
    Width = 762
    Height = 49
    Align = alBottom
    Color = 10514464
    TabOrder = 1
    Visible = False
    object Label3: TLabel
      Left = 5
      Top = 22
      Width = 80
      Height = 13
      Caption = 'Data de Emissão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnSair: TBitBtn
      Left = 672
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnImprimirVerso: TBitBtn
      Left = 448
      Top = 12
      Width = 103
      Height = 25
      Caption = 'Imprimir &Verso'
      TabOrder = 1
      OnClick = btnImprimirVersoClick
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
    object ImprimirFrente: TBitBtn
      Left = 336
      Top = 12
      Width = 103
      Height = 25
      Caption = 'Imprime &Frente'
      TabOrder = 2
      OnClick = ImprimirFrenteClick
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
    object me_dtemi: TMaskEdit
      Left = 88
      Top = 17
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 560
      Top = 12
      Width = 103
      Height = 25
      Caption = 'Frent&e / Verso'
      TabOrder = 4
      OnClick = BitBtn1Click
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
    object editarguia: TBitBtn
      Left = 196
      Top = 12
      Width = 129
      Height = 25
      Caption = 'Editar Itens da Guia'
      TabOrder = 5
      OnClick = editarguiaClick
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 762
    Height = 382
    Align = alClient
    Color = 10514464
    TabOrder = 2
    Visible = False
    object l_aviso: TLabel
      Left = 66
      Top = 216
      Width = 642
      Height = 13
      Caption = 
        'ATENÇÃO! nas guias editadas, quando o valor da linha = 0, não im' +
        'prime ADIÇÃO,NCM,TRATAMENTO e VALOR '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Panel1: TPanel
      Left = 122
      Top = 13
      Width = 488
      Height = 183
      BorderStyle = bsSingle
      Color = clTeal
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 138
        Width = 482
        Height = 40
        Align = alClient
        Color = 10514464
        TabOrder = 3
      end
      object btnAlterar: TBitBtn
        Left = 304
        Top = 148
        Width = 75
        Height = 25
        Caption = '&Alterar'
        TabOrder = 0
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
        Left = 384
        Top = 148
        Width = 75
        Height = 25
        Caption = '&Salvar'
        Enabled = False
        TabOrder = 1
        OnClick = btnSalvarClick
        Kind = bkOK
      end
      object pnlProcurador: TPanel
        Left = 1
        Top = 1
        Width = 482
        Height = 137
        Align = alTop
        Color = 10514464
        Enabled = False
        TabOrder = 2
        object Label1: TLabel
          Left = 24
          Top = 21
          Width = 63
          Height = 13
          Caption = 'Procurador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sbLimpaProcurador: TSpeedButton
          Left = 433
          Top = 34
          Width = 25
          Height = 22
          Hint = 'Limpa Procurador'
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
          OnClick = sbLimpaProcuradorClick
        end
        object Label2: TLabel
          Left = 25
          Top = 63
          Width = 131
          Height = 13
          Caption = 'Local de Desembaraço'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 425
          Top = 63
          Width = 17
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dblcProc: TDBLookupComboBox
          Left = 24
          Top = 34
          Width = 409
          Height = 21
          DataField = 'Procurador'
          DataSource = dsProcessos
          KeyField = 'Codigo'
          ListField = 'Razao_Social'
          ListSource = dsProcurador
          TabOrder = 0
        end
        object me_local: TMaskEdit
          Left = 24
          Top = 80
          Width = 393
          Height = 21
          TabOrder = 1
        end
        object me_uf: TMaskEdit
          Left = 424
          Top = 80
          Width = 33
          Height = 21
          TabOrder = 2
        end
      end
    end
    object dbg_edita: TDBGrid
      Left = 8
      Top = 231
      Width = 749
      Height = 137
      DataSource = ds_guia
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnExit = dbg_editaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'adicao'
          Title.Caption = 'Adição'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tratamento'
          Title.Caption = 'Tratamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fundamento'
          Title.Caption = 'Fundamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pagina'
          Title.Caption = 'Página'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ato_concessorio'
          Title.Caption = 'Ato Concessório'
          Visible = True
        end>
    end
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS ' +
        'processo, Processos.Tipo, TAB_UF.Descricao AS secretaria, Import' +
        'adores.Razao_Social AS cliente, Importadores.Inscricao_Estadual,' +
        ' Importadores.CNPJ_CPF_COMPLETO, Importadores.CAE, Importadores.' +
        'Endereco, Importadores.Numero, Importadores.Complemento, Importa' +
        'dores.Bairro, Importadores.CEP, Importadores.Cidade, Importadore' +
        's.UF, Importadores.Telefone, Processos.NR_DECLARACAO_IMP AS di, ' +
        'Processos.DT_REGISTRO_DI, substring(TAB_REC_ALFANDEGADO.DESCRICA' +
        'O,1,50) AS local, Procuradores.Razao_Social AS procurador, Procu' +
        'radores.CGC_CPF AS procpf, Procuradores.Endereco AS proend, Proc' +
        'uradores.Numero AS pronum, Procuradores.Complemento AS procom, P' +
        'rocuradores.Bairro AS probai, Procuradores.Cidade AS procid, Pro' +
        'curadores.CEP AS procep, Procuradores.UF AS prouf, Procuradores.' +
        'Telefone AS protel, Processos.Valor_CIF, Processos.NR_DECLARACAO' +
        '_IMPC AS dic, Processos.Tipo_Declaracao AS tipodecla, Processos.' +
        'Importador,Importadores.ATIVO, Processos.Fechado, TAB_REC_ALFAND' +
        'EGADO.CODIGO as TAB_REC_ALFANDEGADO_CODIGO'
      
        'FROM ((((Processos LEFT JOIN Importadores ON (Processos.Importad' +
        'or = Importadores.Codigo) AND (Processos.Filial = Importadores.F' +
        'ilial) AND (Processos.Empresa = Importadores.Empresa)) LEFT JOIN' +
        ' Conhecimento_Processo ON (Processos.Codigo = Conhecimento_Proce' +
        'sso.Processo) AND (Processos.Filial = Conhecimento_Processo.Fili' +
        'al) AND (Processos.Empresa = Conhecimento_Processo.Empresa)) LEF' +
        'T JOIN TAB_UF ON Importadores.UF = TAB_UF.Codigo) LEFT JOIN Proc' +
        'uradores ON (Processos.Procurador = Procuradores.Codigo) AND (Pr' +
        'ocessos.Filial = Procuradores.Filial) AND (Processos.Empresa = P' +
        'rocuradores.Empresa)) LEFT JOIN TAB_REC_ALFANDEGADO ON Conhecime' +
        'nto_Processo.Recinto_Alfandegario = TAB_REC_ALFANDEGADO.CODIGO'
      'WHERE Processos.Codigo=:Processo'
      'ORDER BY Processos.Codigo;')
    Left = 56
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object qrProcessosprocesso: TStringField
      FieldName = 'processo'
      Size = 8
    end
    object qrProcessossecretaria: TStringField
      FieldName = 'secretaria'
      Size = 120
    end
    object qrProcessoscliente: TStringField
      FieldName = 'cliente'
      Size = 60
    end
    object qrProcessosInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Size = 15
    end
    object qrProcessosCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object qrProcessosCAE: TStringField
      FieldName = 'CAE'
      Size = 15
    end
    object qrProcessosEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object qrProcessosNumero: TStringField
      FieldName = 'Numero'
      Size = 6
    end
    object qrProcessosComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object qrProcessosBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object qrProcessosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrProcessosCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object qrProcessosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrProcessosTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object qrProcessosdi: TStringField
      FieldName = 'di'
      Size = 10
    end
    object qrProcessosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object qrProcessosprocurador: TStringField
      FieldName = 'procurador'
      Size = 60
    end
    object qrProcessosprocpf: TStringField
      FieldName = 'procpf'
      Size = 18
    end
    object qrProcessosproend: TStringField
      FieldName = 'proend'
      Size = 40
    end
    object qrProcessospronum: TStringField
      FieldName = 'pronum'
      Size = 6
    end
    object qrProcessosprocom: TStringField
      FieldName = 'procom'
      Size = 21
    end
    object qrProcessosprobai: TStringField
      FieldName = 'probai'
      Size = 25
    end
    object qrProcessosprocid: TStringField
      FieldName = 'procid'
      Size = 25
    end
    object qrProcessosprocep: TStringField
      FieldName = 'procep'
      Size = 10
    end
    object qrProcessosprouf: TStringField
      FieldName = 'prouf'
      Size = 2
    end
    object qrProcessosprotel: TStringField
      FieldName = 'protel'
      Size = 15
    end
    object qrProcessosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object qrProcessosdic: TStringField
      FieldName = 'dic'
      Size = 10
    end
    object qrProcessostipodecla: TStringField
      FieldName = 'tipodecla'
      Size = 2
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrProcessosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object qrProcessosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object qrProcessosTAB_REC_ALFANDEGADO_CODIGO: TStringField
      FieldName = 'TAB_REC_ALFANDEGADO_CODIGO'
      FixedChar = True
      Size = 7
    end
    object qrProcessoslocal: TStringField
      DisplayWidth = 50
      FieldName = 'local'
      FixedChar = True
      Size = 50
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
  end
  object dsQProcessos: TDataSource
    DataSet = qrProcessos
    Left = 216
    Top = 32
  end
  object q_excluiguia: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM GUIAtemp'
      'WHERE (((GUIAtemp.Processo)=:qprocesso));')
    Left = 264
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '01916/03'
      end>
  end
  object q_incluiguia: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundam' +
        'ento, Valor, Valorcif, Pagina, Ato_concessorio )'
      
        'SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Mid([i].' +
        '[NCM],1,4)+"."+Mid([i].[NCM],5,2)+"."+Mid([i].[NCM],7,2) AS qncm' +
        ', Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal' +
        '_ICMS.descricao, Sum([i].[Valor_Aduaneiro]*[ptc].[taxa_conversao' +
        ']) AS qvalor, Sum(([i].[Valor_Total]+(([i].[rateio_frete_prepaid' +
        ']*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade]' +
        ')-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_con' +
        'versao]) AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Conces' +
        'sorio'
      
        'FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa ' +
        '= i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Proces' +
        'so = i.Processo) AND (Faturas.Codigo = i.Fatura)) LEFT JOIN Proc' +
        'essos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) ' +
        'AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Pr' +
        'ocesso) AND (Faturas.Moeda = ptc.Moeda)) LEFT JOIN Tributacao_It' +
        'em_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i' +
        '.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tribu' +
        'tacao_Item_Fatura.Processo) AND (i.Fatura = Tributacao_Item_Fatu' +
        'ra.Fatura) AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial' +
        '_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatu' +
        'ra.Tratamento_Tributario = Fundamento_Legal_ICMS.Tratamento_Trib' +
        'utario) AND (Tributacao_Item_Fatura.Fundamento_Legal = Fundament' +
        'o_Legal_ICMS.codigo)'
      
        'GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Adicao, Mid([i' +
        '].[NCM],1,4)+"."+Mid([i].[NCM],5,2)+"."+Mid([i].[NCM],7,2), Trib' +
        'utacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.' +
        'descricao, 1, Tributacao_Item_Fatura.Ato_Concessorio, Val([Adica' +
        'o])'
      
        'HAVING (((Faturas.Processo)=:qprocesso) AND ((Tributacao_Item_Fa' +
        'tura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_' +
        'ICMS.descricao) Is Not Null))'
      'ORDER BY Val([Adicao]);')
    Left = 304
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
      end>
  end
  object t_guia: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    IndexFieldNames = 'Processo;adicao'
    MasterFields = 'processo'
    MasterSource = dsQProcessos
    TableName = 'GUIAtemp'
    Left = 344
    Top = 1
    object t_guiaProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object t_guiaadicao: TStringField
      FieldName = 'adicao'
      Size = 3
    end
    object t_guiaNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 10
    end
    object t_guiatratamento: TStringField
      FieldName = 'tratamento'
      Size = 1
    end
    object t_guiafundamento: TStringField
      FieldName = 'fundamento'
      Size = 255
    end
    object t_guiaValor: TFloatField
      FieldName = 'Valor'
    end
    object t_guiaValorcif: TFloatField
      FieldName = 'Valorcif'
    end
    object t_guiaPagina: TIntegerField
      FieldName = 'Pagina'
    end
    object t_guiaato_concessorio: TStringField
      FieldName = 'ato_concessorio'
    end
  end
  object qrInsertBranco: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO GUIAtemp ( Processo, Adicao, NCM, tratamento, fundam' +
        'ento, valor, valorcif, pagina)'
      'SELECT '
      ':pro,'
      ':adi,'
      ':ncm,'
      ':trat,'
      ':fun,'
      ':val,'
      ':vac,'
      ':pag')
    Left = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'adi'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ncm'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'trat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fun'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'vac'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pag'
        ParamType = ptUnknown
      end>
  end
  object dsProcurador: TDataSource
    DataSet = qrProcurador
    Left = 480
    Top = 16
  end
  object qrProcurador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Procuradores.Empresa, Procuradores.Filial, Procuradores.C' +
        'odigo, Procuradores.Razao_Social, Procuradores.Pais, Procuradore' +
        's.CGC_CPF, Procuradores.Endereco, Procuradores.Numero, Procurado' +
        'res.Complemento, Procuradores.Bairro, Procuradores.Cidade, Procu' +
        'radores.CEP, Procuradores.UF, Procuradores.Estado, Procuradores.' +
        'Inscricao_Estadual, Procuradores.Registro, Procuradores.Telefone'
      
        'FROM Parametros INNER JOIN Procuradores ON (Parametros.Filial = ' +
        'Procuradores.Filial) AND (Parametros.Empresa = Procuradores.Empr' +
        'esa);')
    Left = 464
    object qrProcuradorEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Procuradores.Empresa'
      Size = 4
    end
    object qrProcuradorFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Procuradores.Filial'
      Size = 4
    end
    object qrProcuradorCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Procuradores.Codigo'
      Size = 4
    end
    object qrProcuradorRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Procuradores.Razao_Social'
      Size = 60
    end
    object qrProcuradorPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Procuradores.Pais'
      Size = 3
    end
    object qrProcuradorCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Procuradores.CGC_CPF'
      Size = 18
    end
    object qrProcuradorEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Procuradores.Endereco'
      Size = 40
    end
    object qrProcuradorNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Procuradores.Numero'
      Size = 6
    end
    object qrProcuradorComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Procuradores.Complemento'
      Size = 21
    end
    object qrProcuradorBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Procuradores.Bairro'
      Size = 25
    end
    object qrProcuradorCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Procuradores.Cidade'
      Size = 25
    end
    object qrProcuradorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Procuradores.CEP'
      Size = 10
    end
    object qrProcuradorUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Procuradores.UF'
      Size = 2
    end
    object qrProcuradorEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Procuradores.Estado'
      Size = 25
    end
    object qrProcuradorInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Procuradores.Inscricao_Estadual'
      Size = 15
    end
    object qrProcuradorRegistro: TStringField
      FieldName = 'Registro'
      Origin = 'DBNMSCOMEX.Procuradores.Registro'
      Size = 15
    end
    object qrProcuradorTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Procuradores.Telefone'
      Size = 15
    end
  end
  object tbProcessos: TTable
    AutoCalcFields = False
    AfterPost = tbProcessosAfterPost
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Importador <> '#39'0000'#39
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Processo'
    MasterSource = dsQProcessos
    TableName = 'Processos'
    UpdateMode = upWhereChanged
    Left = 512
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
    object tbProcessosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
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
  end
  object dsProcessos: TDataSource
    DataSet = tbProcessos
    Left = 528
    Top = 16
  end
  object ds_guia: TDataSource
    DataSet = t_guia
    Left = 360
    Top = 16
  end
  object qrFatura: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select processo, incoterm from faturas'
      'where processo = :p1')
    Left = 56
    Top = 105
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object qrFaturaprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object qrFaturaincoterm: TStringField
      FieldName = 'incoterm'
      FixedChar = True
      Size = 3
    end
  end
end
