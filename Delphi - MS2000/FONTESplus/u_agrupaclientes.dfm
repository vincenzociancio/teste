object f_agrupaclientes: Tf_agrupaclientes
  Left = 191
  Top = 147
  ActiveControl = edFiltroCliente
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Agrupamento de Clientes'
  ClientHeight = 410
  ClientWidth = 990
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p_itens: TPanel
    Left = -6
    Top = 0
    Width = 999
    Height = 413
    Color = 10514464
    TabOrder = 0
    object lblImportador: TLabel
      Left = 241
      Top = 50
      Width = 4
      Height = 16
      Alignment = taCenter
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 4
      Width = 101
      Height = 13
      Caption = 'Busca por Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 311
      Top = 4
      Width = 96
      Height = 13
      Caption = 'Busca por Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edFiltroCliente: TEdit
      Left = 15
      Top = 19
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 0
      OnChange = edFiltroClienteChange
    end
    object cbClientesDesagrupados: TCheckBox
      Left = 612
      Top = 24
      Width = 213
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'somente clientes desagrupados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = cbClientesDesagrupadosClick
    end
    object Panel2: TPanel
      Left = 2
      Top = 47
      Width = 996
      Height = 169
      TabOrder = 3
      object DBGrid1: TDBGrid
        Left = 4
        Top = 3
        Width = 885
        Height = 164
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Status'
            Title.Alignment = taCenter
            Width = 98
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Código'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Razao_Social'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 389
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Nome_Grupo'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Grupo'
            Width = 313
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 888
        Top = 2
        Width = 107
        Height = 165
        Color = 10514464
        TabOrder = 1
        object b_desagrupar: TBitBtn
          Left = 4
          Top = 29
          Width = 101
          Height = 23
          Caption = 'Desagrupar'
          TabOrder = 0
          OnClick = b_desagruparClick
          Kind = bkCancel
        end
        object b_agrupar: TBitBtn
          Left = 4
          Top = 5
          Width = 101
          Height = 23
          BiDiMode = bdLeftToRight
          Caption = 'Agrupamento'
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = b_agruparClick
          Kind = bkRetry
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 216
      Width = 998
      Height = 195
      Color = 10514464
      TabOrder = 4
      object Label4: TLabel
        Left = 25
        Top = 15
        Width = 233
        Height = 19
        Alignment = taCenter
        Caption = '     Clientes a serem agrupados'
        Color = 10514464
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 241
        Top = 50
        Width = 4
        Height = 16
        Alignment = taCenter
        Color = 10514464
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblGrupoNovo: TLabel
        Left = 423
        Top = 48
        Width = 153
        Height = 13
        Caption = 'Nome a ser dado ao Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lblGrupoExistente: TLabel
        Left = 423
        Top = 48
        Width = 110
        Height = 13
        Caption = 'Adicionar ao Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnSalvar: TBitBtn
        Left = 576
        Top = 100
        Width = 101
        Height = 23
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 4
        OnClick = btnSalvarClick
        Kind = bkAll
      end
      object btnCancelar: TBitBtn
        Left = 677
        Top = 100
        Width = 101
        Height = 23
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 5
        OnClick = btnCancelarClick
        Kind = bkCancel
      end
      object lstClientesAgrupamento: TListBox
        Left = 24
        Top = 48
        Width = 377
        Height = 137
        ItemHeight = 13
        TabOrder = 0
      end
      object edNomeGrupo: TEdit
        Left = 423
        Top = 67
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object dblcbListaGrupos: TDBLookupComboBox
        Left = 423
        Top = 67
        Width = 354
        Height = 21
        Enabled = False
        KeyField = 'Nome_Grupo1'
        ListField = 'Nome_Grupo1'
        ListSource = DataSource2
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 423
        Top = 6
        Width = 217
        Height = 33
        Enabled = False
        TabOrder = 1
        object rbGrupoNovo: TRadioButton
          Left = 121
          Top = 12
          Width = 85
          Height = 17
          Caption = 'Grupo Novo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = rbGrupoNovoClick
        end
        object rbGrupoExistente: TRadioButton
          Left = 17
          Top = 12
          Width = 97
          Height = 17
          Caption = 'Grupo Existente'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = True
          OnClick = rbGrupoNovoClick
        end
      end
    end
    object edFiltroGrupo: TEdit
      Left = 311
      Top = 19
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      OnChange = edFiltroClienteChange
    end
  end
  object qrClientes: TQuery
    AfterScroll = qrClientesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        '(SELECT '#39'AGRUPADO'#39' AS STATUS, I.Codigo, I.Razao_Social, IA.Nome_' +
        'Grupo, IA.Nome_Grupo1 ,IA.Codigo_AGRUPADO, IA.Codigo_AGRUPADO1, ' +
        'IA.reg'
      '   FROM Importadores_Agrupados IA INNER JOIN Importadores I'
      '     ON I.Codigo = IA.Codigo '
      
        '  WHERE I.Codigo NOT LIKE '#39'X%'#39' AND IA.Nome_Grupo <> '#39'*** DESAGRU' +
        'PADOS ***'#39' AND IA.Codigo_AGRUPADO <> '#39'0000'#39')'
      'UNION  '
      
        '(SELECT '#39'DESAGRUPADO'#39' AS STATUS, I.Codigo, I.Razao_Social, '#39'*** ' +
        'DESAGRUPADOS ***'#39' AS Nome_Grupo, IA.Nome_Grupo1 ,'#39'0000'#39' AS Codig' +
        'o_AGRUPADO, IA.Codigo_AGRUPADO1, IA.reg'
      '   FROM Importadores_Agrupados IA INNER JOIN Importadores I'
      '     ON I.Codigo = IA.Codigo '
      
        '  WHERE I.Codigo NOT LIKE '#39'X%'#39' AND IA.Nome_Grupo = '#39'*** DESAGRUP' +
        'ADOS ***'#39' AND IA.Codigo_AGRUPADO = '#39'0000'#39')'
      'ORDER BY STATUS, IA.Nome_Grupo1')
    Left = 736
    Top = 136
    object qrClientesStatus: TStringField
      FieldName = 'Status'
    end
    object qrClientesCodigo: TStringField
      FieldName = 'Codigo'
      Size = 0
    end
    object qrClientesRazao_Social: TStringField
      FieldName = 'Razao_Social'
    end
    object qrClientesNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
    end
    object qrClientesNome_Grupo1: TStringField
      FieldName = 'Nome_Grupo1'
    end
    object qrClientesCodigo_Agrupado: TStringField
      FieldName = 'Codigo_Agrupado'
    end
    object qrClientesCodigo_Agrupado1: TStringField
      FieldName = 'Codigo_Agrupado1'
    end
    object qrClientesReg: TIntegerField
      FieldName = 'Reg'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrClientes
    Left = 800
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = qrListaGrupos
    Left = 922
    Top = 224
  end
  object qrListaGrupos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT DISTINCT Codigo_AGRUPADO1, Nome_Grupo1 FROM Importadores_' +
        'Agrupados WHERE Codigo_AGRUPADO NOT LIKE '#39'X%'#39' AND Codigo_AGRUPAD' +
        'O NOT LIKE '#39'A%'#39' AND Codigo_AGRUPADO1 <> '#39'0000'#39' ORDER BY Nome_Gru' +
        'po1')
    Left = 850
    Top = 224
    object qrListaGruposCodigo_Agrupado1: TStringField
      FieldName = 'Codigo_Agrupado1'
      Size = 4
    end
    object qrListaGruposNome_Grupo1: TStringField
      FieldName = 'Nome_Grupo1'
      Size = 50
    end
  end
end
