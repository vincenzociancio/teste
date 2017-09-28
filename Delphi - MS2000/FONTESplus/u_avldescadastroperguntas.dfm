object f_avldescadastroperguntas: Tf_avldescadastroperguntas
  Left = 40
  Top = 195
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Perguntas'
  ClientHeight = 382
  ClientWidth = 1058
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
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 1058
    Height = 381
    TabOrder = 0
    object Label4: TLabel
      Left = 63
      Top = 335
      Width = 58
      Height = 13
      Caption = 'Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 335
      Width = 37
      Height = 13
      Caption = 'Ordem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 291
      Width = 74
      Height = 13
      Caption = 'Competência'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 51
      Width = 965
      Height = 214
      DataSource = DataSource1
      FixedColor = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Desc_Competencia'
          Title.Caption = ' Competência'
          Width = 323
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ordem'
          Title.Alignment = taCenter
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = ' Descrição da Pergunta'
          Width = 573
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 971
      Top = 51
      Width = 85
      Height = 213
      Color = 10514464
      TabOrder = 6
      object btnIncluir: TBitBtn
        Left = 4
        Top = 5
        Width = 79
        Height = 23
        Caption = 'Incluir'
        TabOrder = 0
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
        Left = 4
        Top = 29
        Width = 79
        Height = 23
        Caption = 'Alterar'
        TabOrder = 1
        OnClick = btnAlterarClick
        Kind = bkRetry
      end
      object btnGravar: TBitBtn
        Left = 4
        Top = 77
        Width = 79
        Height = 23
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 3
        OnClick = btnGravarClick
        Kind = bkAll
      end
      object btnExcluir: TBitBtn
        Left = 4
        Top = 53
        Width = 79
        Height = 23
        Caption = 'Excluir '
        TabOrder = 2
        Visible = False
        Kind = bkCancel
      end
      object btnCancelar: TBitBtn
        Left = 4
        Top = 101
        Width = 79
        Height = 23
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 4
        OnClick = btnCancelarClick
        Kind = bkCancel
      end
      object btnSair: TBitBtn
        Left = 4
        Top = 186
        Width = 79
        Height = 23
        Caption = '&Fechar'
        TabOrder = 5
        OnClick = btnSairClick
        Kind = bkClose
      end
    end
    object GroupBox2: TGroupBox
      Left = 9
      Top = 272
      Width = 1041
      Height = 9
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 5
      Top = 18
      Width = 388
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource2
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
    object edDescricao: TEdit
      Left = 64
      Top = 352
      Width = 985
      Height = 21
      TabOrder = 4
    end
    object edOrdem: TEdit
      Left = 7
      Top = 352
      Width = 49
      Height = 21
      MaxLength = 2
      TabOrder = 3
      OnKeyPress = edOrdemKeyPress
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 5
      Top = 308
      Width = 1044
      Height = 21
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource3
      TabOrder = 2
    end
  end
  object qrPerguntas: TQuery
    AfterScroll = qrPerguntasAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Anl_Des_Perguntas.*, Anl_Des_Competencias.Descricao AS DE' +
        'SC_COMPETENCIA'
      '  FROM ANL_DES_PERGUNTAS INNER JOIN Anl_Des_Competencias '
      
        '    ON Anl_Des_Perguntas.Fk_Competencia = Anl_Des_Competencias.C' +
        'odigo'
      'ORDER BY Anl_Des_Competencias.Ordem    ')
    Left = 792
    Top = 96
    object qrPerguntasFk_Analise: TIntegerField
      FieldName = 'Fk_Analise'
    end
    object qrPerguntasFk_Competencia: TIntegerField
      FieldName = 'Fk_Competencia'
    end
    object qrPerguntasCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qrPerguntasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object qrPerguntasOrdem: TIntegerField
      FieldName = 'Ordem'
    end
    object qrPerguntasDesc_Competencia: TStringField
      FieldName = 'Desc_Competencia'
      Size = 100
    end
  end
  object QryAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '')
    Left = 864
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = qrPerguntas
    Left = 704
    Top = 96
  end
  object tbPesquisas: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Anl_Des_Analises'
    Left = 792
    Top = 152
    object tbPesquisasCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tbPesquisasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object DataSource2: TDataSource
    DataSet = tbPesquisas
    Left = 704
    Top = 152
  end
  object DataSource3: TDataSource
    DataSet = tbCompetencias
    Left = 704
    Top = 208
  end
  object tbCompetencias: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Anl_Des_Competencias'
    Left = 792
    Top = 208
    object tbCompetenciasFk_Analise: TIntegerField
      FieldName = 'Fk_Analise'
    end
    object tbCompetenciasCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tbCompetenciasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 0
    end
  end
end
