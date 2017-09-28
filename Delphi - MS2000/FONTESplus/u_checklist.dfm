object f_checklist: Tf_checklist
  Left = 291
  Top = 230
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Check List Documentação'
  ClientHeight = 484
  ClientWidth = 714
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
  object Panel2: TPanel
    Left = 0
    Top = -1
    Width = 713
    Height = 172
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 129
      Width = 53
      Height = 13
      Caption = 'Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 81
      Top = 129
      Width = 76
      Height = 13
      Caption = 'Razão Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 473
      Top = 127
      Width = 100
      Height = 13
      Caption = 'Tipo de Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 3
      Width = 621
      Height = 120
      DataSource = DataSource1
      FixedColor = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Processo'
          Width = 62
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Alignment = taCenter
          Title.Caption = 'Razão Social'
          Width = 388
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo de Processo'
          Width = 147
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 626
      Top = 4
      Width = 85
      Height = 165
      Color = 10514464
      TabOrder = 3
      object b_incluir: TBitBtn
        Left = 4
        Top = 5
        Width = 79
        Height = 23
        Caption = 'Incluir'
        TabOrder = 0
        OnClick = b_incluirClick
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
      object b_alterar: TBitBtn
        Left = 4
        Top = 29
        Width = 79
        Height = 23
        Caption = 'Alterar'
        TabOrder = 1
        OnClick = b_alterarClick
        Kind = bkRetry
      end
      object b_salvar: TBitBtn
        Left = 4
        Top = 77
        Width = 79
        Height = 23
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 2
        OnClick = b_salvarClick
        Kind = bkAll
      end
      object b_excluir: TBitBtn
        Left = 4
        Top = 53
        Width = 79
        Height = 23
        Caption = 'Excluir '
        TabOrder = 3
        OnClick = b_excluirClick
        Kind = bkCancel
      end
      object b_cancelar: TBitBtn
        Left = 4
        Top = 101
        Width = 79
        Height = 23
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 4
        OnClick = b_cancelarClick
        Kind = bkCancel
      end
      object b_imprimir: TBitBtn
        Left = 4
        Top = 138
        Width = 79
        Height = 23
        Caption = 'Imprimir'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 5
        OnClick = b_imprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
      end
    end
    object edProcesso: TEdit
      Left = 3
      Top = 144
      Width = 70
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 100
      TabOrder = 1
      OnChange = edProcessoChange
    end
    object edRazaoSocial: TEdit
      Left = 80
      Top = 144
      Width = 385
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
    end
    object edTipoProcesso: TEdit
      Left = 472
      Top = 144
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
    end
  end
  object p_itens: TPanel
    Left = -1
    Top = 170
    Width = 714
    Height = 313
    Caption = 'p_itens'
    Color = 10514464
    TabOrder = 1
    object Label4: TLabel
      Left = 4
      Top = 13
      Width = 388
      Height = 19
      Alignment = taCenter
      Caption = '     Relação de Documentos referentes ao Processo'
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 48
      Width = 105
      Height = 16
      Caption = 'Documentação'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 293
      Width = 490
      Height = 13
      Caption = 
        '* Para excluir um documento do Processo, selecione a linha refer' +
        'ente ao documento e pressione delete.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object b_incluiritem: TBitBtn
      Left = 640
      Top = 42
      Width = 69
      Height = 22
      Caption = 'Incluir'
      Enabled = False
      TabOrder = 1
      OnClick = b_incluiritemClick
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
    object edDocumentacao: TEdit
      Left = 120
      Top = 42
      Width = 241
      Height = 21
      MaxLength = 50
      TabOrder = 0
      OnChange = edDocumentacaoChange
    end
    object DBGrid2: TDBGrid
      Left = 4
      Top = 72
      Width = 706
      Height = 216
      Color = clWhite
      DataSource = DataSource2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBG_documentosCellClick
      OnDrawColumnCell = DBG_documentosDrawColumnCell
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Documentacao'
          Width = 340
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clAqua
          Expanded = False
          FieldName = 'Original'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clAqua
          Expanded = False
          FieldName = 'Assinado'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clAqua
          Expanded = False
          FieldName = 'Carimbado'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clAqua
          Expanded = False
          FieldName = 'Impresso'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clAqua
          Expanded = False
          FieldName = 'Copia'
          Title.Alignment = taCenter
          Title.Caption = 'Cópia'
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = q_Processos
    Left = 202
    Top = 52
  end
  object q_Processos: TQuery
    AfterScroll = q_ProcessosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT FCL.Codigo, FCL.Processo, I.Razao_Social, TP.DESCRICAO '
      '  FROM Faturamento_Check_List FCL INNER JOIN Processos P'
      '    ON FCL.Processo = P.Codigo INNER JOIN Importadores I'
      '    ON P.Importador = I.Codigo INNER JOIN Tipos_de_Processos TP'
      '    ON P.Tipo = TP.CODIGO    '
      'ORDER BY P.CODIGO DESC')
    Left = 271
    Top = 52
    object q_ProcessosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object q_ProcessosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_ProcessosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object q_ProcessosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object q_Aux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 330
    Top = 52
  end
  object DataSource2: TDataSource
    DataSet = t_documentos_processos
    Left = 90
    Top = 348
  end
  object t_documentos_processos: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Fk_Codigo'
    MasterFields = 'Codigo'
    MasterSource = DataSource1
    TableName = 'Faturamento_Check_List_Itens'
    Left = 199
    Top = 346
    object t_documentos_processosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_documentos_processosFk_Codigo: TIntegerField
      FieldName = 'Fk_Codigo'
    end
    object t_documentos_processosDocumentacao: TStringField
      FieldName = 'Documentacao'
      Size = 50
    end
    object t_documentos_processosOriginal: TIntegerField
      FieldName = 'Original'
    end
    object t_documentos_processosAssinado: TIntegerField
      FieldName = 'Assinado'
    end
    object t_documentos_processosCarimbado: TIntegerField
      FieldName = 'Carimbado'
    end
    object t_documentos_processosImpresso: TIntegerField
      FieldName = 'Impresso'
    end
    object t_documentos_processosCopia: TIntegerField
      FieldName = 'Copia'
    end
  end
end
