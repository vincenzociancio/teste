object f_controle_medicoes: Tf_controle_medicoes
  Left = 308
  Top = 114
  ActiveControl = edFiltDataIni
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Medições'
  ClientHeight = 703
  ClientWidth = 592
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
  object pnlPreRPS: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 703
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 0
    object Label7: TLabel
      Left = 258
      Top = 251
      Width = 67
      Height = 13
      Caption = 'Data Medição'
    end
    object Label5: TLabel
      Left = 332
      Top = 251
      Width = 60
      Height = 13
      Caption = 'Embarcação'
    end
    object Label8: TLabel
      Left = 13
      Top = 251
      Width = 37
      Height = 13
      Caption = 'Clientes'
    end
    object Label1: TLabel
      Left = 13
      Top = 304
      Width = 44
      Height = 13
      Caption = 'Processo'
    end
    object lblImportador: TLabel
      Left = 97
      Top = 323
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 453
      Top = 677
      Width = 65
      Height = 13
      Caption = 'Total Previsto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblValNota: TLabel
      Left = 572
      Top = 677
      Width = 3
      Height = 13
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel10: TPanel
      Left = 6
      Top = 6
      Width = 580
      Height = 26
      Align = alTop
      Caption = 'Controle de Medições'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object dbgridItensMedicao: TDBGrid
      Left = 13
      Top = 349
      Width = 564
      Height = 319
      TabStop = False
      DataSource = dsControle_Medicao_Itens
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = dbgridItensMedicaoKeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Processo'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Val_Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Valor Nota'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 461
          Visible = True
        end>
    end
    object btnIncluir: TBitBtn
      Left = 493
      Top = 89
      Width = 88
      Height = 25
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnIncluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 493
      Top = 121
      Width = 88
      Height = 25
      Caption = '&Alterar'
      TabOrder = 8
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
    object btnExcluir: TBitBtn
      Left = 493
      Top = 153
      Width = 88
      Height = 25
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object dbgridMedicao: TDBGrid
      Left = 13
      Top = 90
      Width = 474
      Height = 152
      TabStop = False
      DataSource = dsControle_Medicao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Medicao'
          Title.Caption = 'Data'
          Width = 62
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Status'
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Local_Inventario'
          Title.Caption = 'Embarcação'
          Width = 108
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NFiscal'
          Title.Caption = 'Rps'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Grupo'
          Title.Caption = 'Cliente'
          Width = 209
          Visible = True
        end>
    end
    object dblcbImportadores: TDBLookupComboBox
      Left = 13
      Top = 267
      Width = 242
      Height = 21
      Enabled = False
      KeyField = 'Codigo_Agrupado'
      ListField = 'Razao_Social'
      ListSource = ds_importadores
      TabOrder = 1
    end
    object btnAdicionaProcesso: TButton
      Left = 70
      Top = 320
      Width = 17
      Height = 21
      Caption = '+'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnAdicionaProcessoClick
    end
    object edEmbarcacao: TEdit
      Left = 332
      Top = 267
      Width = 154
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 3
    end
    object btnCancelar: TBitBtn
      Left = 493
      Top = 217
      Width = 88
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 11
      OnClick = btnCancelarClick
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
    object btnSalvar: TBitBtn
      Left = 493
      Top = 185
      Width = 88
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 10
      OnClick = btnSalvarClick
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
    object edDataMedicao: TMaskEdit
      Left = 258
      Top = 267
      Width = 70
      Height = 21
      Enabled = False
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      OnChange = edDataMedicaoChange
      OnKeyPress = edDataMedicaoKeyPress
    end
    object edProcesso: TMaskEdit
      Left = 13
      Top = 320
      Width = 55
      Height = 21
      Enabled = False
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 5
      Text = '     /  '
      OnChange = edProcessoChange
    end
    object Panel1: TPanel
      Left = 13
      Top = 298
      Width = 568
      Height = 3
      TabOrder = 13
    end
    object cbEmAguardo: TCheckBox
      Left = 494
      Top = 271
      Width = 80
      Height = 17
      Caption = 'Em Aguardo'
      Enabled = False
      TabOrder = 14
    end
    object pnlFiltro: TPanel
      Left = 13
      Top = 36
      Width = 569
      Height = 51
      Caption = 'pnlFiltro'
      TabOrder = 15
      object GroupBox1: TGroupBox
        Left = 358
        Top = 2
        Width = 211
        Height = 46
        Caption = ' Filtro por período '
        TabOrder = 0
        object Label3: TLabel
          Left = 88
          Top = 24
          Width = 6
          Height = 13
          Caption = 'a'
        end
        object edFiltDataFin: TMaskEdit
          Left = 104
          Top = 20
          Width = 70
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
          OnChange = edFiltDataFinChange
          OnKeyPress = edDataMedicaoKeyPress
        end
        object edFiltDataIni: TMaskEdit
          Left = 7
          Top = 20
          Width = 70
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnChange = edFiltDataFinChange
          OnKeyPress = edDataMedicaoKeyPress
        end
        object btnLocalizar: TBitBtn
          Left = 180
          Top = 20
          Width = 23
          Height = 21
          Hint = 'Localizar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnLocalizarClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000888880000080F000888880F00080F000888880F
            0008000000080000000800F000000F00000800F000800F00000800F000800F00
            00088000000000000088880F00080F0008888800000800000888888000888000
            88888880F08880F0888888800088800088888888888888888888}
        end
      end
      object RadioGroup1: TRadioGroup
        Left = 4
        Top = 2
        Width = 349
        Height = 46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object rbEmAndamento: TRadioButton
        Left = 21
        Top = 22
        Width = 97
        Height = 15
        Caption = 'em andamento'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = rbEmAndamentoClick
      end
      object rbEmAguardo: TRadioButton
        Left = 145
        Top = 22
        Width = 80
        Height = 15
        Caption = 'em aguardo'
        TabOrder = 3
        OnClick = rbFinalizadoClick
      end
      object rbFinalizado: TRadioButton
        Left = 261
        Top = 22
        Width = 73
        Height = 15
        Caption = 'finalizado'
        TabOrder = 4
        OnClick = rbFinalizadoClick
      end
    end
  end
  object dsControle_Medicao: TDataSource
    DataSet = qrControle_Medicao
    Left = 96
    Top = 152
  end
  object qrControle_Medicao: TQuery
    AfterScroll = qrControle_MedicaoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT *, (SELECT TOP 1 NOME_GRUPO FROM Importadores_Agrupados W' +
        'HERE Codigo_AGRUPADO = Controle_Medicao.Importador_Agrupado) AS ' +
        'Nome_Grupo'
      '  FROM Controle_Medicao'
      ' WHERE Status = :p0'
      'ORDER BY Data_Medicao DESC, NOME_GRUPO, NFISCAL')
    Left = 204
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
    object qrControle_MedicaoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrControle_MedicaoImportador_Agrupado: TStringField
      FieldName = 'Importador_Agrupado'
      Size = 4
    end
    object qrControle_MedicaoLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 50
    end
    object qrControle_MedicaoData_Medicao: TDateTimeField
      FieldName = 'Data_Medicao'
    end
    object qrControle_MedicaoStatus: TIntegerField
      FieldName = 'Status'
      OnGetText = qrControle_MedicaoStatusGetText
    end
    object qrControle_MedicaoNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 50
    end
    object qrControle_MedicaoNFiscal: TStringField
      FieldName = 'NFiscal'
      Size = 6
    end
  end
  object ds_importadores: TDataSource
    DataSet = q_importadores
    Left = 403
    Top = 504
  end
  object q_importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT I.Codigo, IA.Nome_Grupo, IA.Codigo_AGRUPADO, I.Razao_Soci' +
        'al'
      '  FROM Importadores I INNER JOIN Importadores_Agrupados IA'
      '    ON I.Codigo = IA.Codigo'
      
        ' WHERE I.Codigo NOT LIKE '#39'X%'#39' AND I.Codigo NOT LIKE '#39'A%'#39' AND I.C' +
        'odigo IN ('#39'252'#39','#39'271'#39','#39'238'#39','#39'217'#39','#39'187'#39','#39'177'#39','#39'424'#39') '
      'ORDER BY IA.Nome_Grupo')
    Left = 400
    Top = 432
    object q_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_importadoresNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
      Size = 50
    end
    object q_importadoresCodigo_Agrupado: TStringField
      FieldName = 'Codigo_Agrupado'
      Size = 4
    end
    object q_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
  end
  object dsControle_Medicao_Itens: TDataSource
    DataSet = qrControle_Medicao_Itens
    Left = 96
    Top = 432
  end
  object qrControle_Medicao_Itens: TQuery
    AfterOpen = qrControle_Medicao_ItensAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CMI.*, I.Razao_Social,'
      
        '     ((SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Pr' +
        'ocessos WHERE Numerario IN ('#39'HONO'#39','#39'ISS'#39') AND Processo = CMI.Pro' +
        'cesso) -'
      
        '      (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE' +
        ' Credito IN ('#39'IRRF'#39','#39'CCP'#39') AND Processo = CMI.Processo)) AS Val_' +
        'Nota'
      '  FROM Controle_Medicao_Itens CMI INNER JOIN Importadores I'
      '    ON CMI.Importador = I.Codigo'
      ' WHERE CMI.Codigo_Controle = :pCodigo_Controle'
      'ORDER BY CMI.Processo')
    Left = 232
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCodigo_Controle'
        ParamType = ptUnknown
      end>
    object qrControle_Medicao_ItensCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrControle_Medicao_ItensCodigo_Controle: TIntegerField
      FieldName = 'Codigo_Controle'
    end
    object qrControle_Medicao_ItensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object qrControle_Medicao_ItensRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object qrControle_Medicao_ItensImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object qrControle_Medicao_ItensVal_Nota: TFloatField
      FieldName = 'Val_Nota'
    end
  end
  object qrAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 376
    Top = 152
  end
end
