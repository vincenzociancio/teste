object f_avldeshierarquiaanalise: Tf_avldeshierarquiaanalise
  Left = 167
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Hierarquia de Análise'
  ClientHeight = 342
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p_itens: TPanel
    Left = 0
    Top = 0
    Width = 561
    Height = 342
    Align = alClient
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
    object SpeedButton3: TSpeedButton
      Left = 338
      Top = 312
      Width = 23
      Height = 22
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
      OnClick = SpeedButton3Click
    end
    object Label3: TLabel
      Left = 6
      Top = 296
      Width = 57
      Height = 13
      Caption = 'Colaborador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 180
      Top = 296
      Width = 50
      Height = 13
      Caption = 'Supervisor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 376
      Top = 296
      Width = 31
      Height = 13
      Caption = 'Gestor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 535
      Top = 312
      Width = 23
      Height = 22
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
      OnClick = SpeedButton4Click
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 8
      Width = 552
      Height = 277
      DataSource = DataSource5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
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
          FieldName = 'Colaborador'
          Title.Alignment = taCenter
          Width = 174
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Supervisor'
          Title.Alignment = taCenter
          Width = 174
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Gestor'
          Title.Alignment = taCenter
          Width = 174
          Visible = True
        end>
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 5
      Top = 312
      Width = 158
      Height = 21
      DataField = 'Colaborador'
      DataSource = DataSource5
      Enabled = False
      KeyField = 'Usuario'
      ListField = 'Usuario'
      ListSource = DataSource2
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 179
      Top = 312
      Width = 158
      Height = 21
      DataField = 'Supervisor'
      DataSource = DataSource5
      KeyField = 'Usuario'
      ListField = 'Usuario'
      ListSource = DataSource3
      TabOrder = 2
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 376
      Top = 312
      Width = 158
      Height = 21
      DataField = 'Gestor'
      DataSource = DataSource5
      KeyField = 'Usuario'
      ListField = 'Usuario'
      ListSource = DataSource4
      TabOrder = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = tbPesquisas
    Left = 416
    Top = 48
  end
  object tbPesquisas: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Anl_Des_Analises'
    Left = 504
    Top = 48
    object tbPesquisasCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tbPesquisasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object DataSource2: TDataSource
    DataSet = tbColaboradores
    Left = 416
    Top = 104
  end
  object tbColaboradores: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    TableName = 'Anl_Des_Controle_Hierarquia'
    Left = 504
    Top = 104
    object tbColaboradoresUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object tbColaboradoresNivel: TIntegerField
      FieldName = 'Nivel'
    end
  end
  object DataSource3: TDataSource
    DataSet = tbSupervisores
    Left = 416
    Top = 168
  end
  object tbSupervisores: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Nivel <= 2'
    Filtered = True
    TableName = 'Anl_Des_Controle_Hierarquia'
    Left = 504
    Top = 168
    object tbSupervisoresUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object tbSupervisoresNivel: TIntegerField
      FieldName = 'Nivel'
    end
  end
  object DataSource4: TDataSource
    DataSet = tbGestores
    Left = 416
    Top = 232
  end
  object tbGestores: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Nivel = 1'
    Filtered = True
    TableName = 'Anl_Des_Controle_Hierarquia'
    Left = 504
    Top = 232
    object tbGestoresUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object tbGestoresNivel: TIntegerField
      FieldName = 'Nivel'
    end
  end
  object tbHierarquiaAnalise: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Anl_Des_Hierarquia_Analise'
    Left = 328
    Top = 48
    object tbHierarquiaAnaliseFk_Analise: TIntegerField
      FieldName = 'Fk_Analise'
    end
    object tbHierarquiaAnaliseCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tbHierarquiaAnaliseColaborador: TStringField
      FieldName = 'Colaborador'
      Size = 10
    end
    object tbHierarquiaAnaliseSupervisor: TStringField
      FieldName = 'Supervisor'
      Size = 10
    end
    object tbHierarquiaAnaliseGestor: TStringField
      FieldName = 'Gestor'
      Size = 10
    end
  end
  object DataSource5: TDataSource
    DataSet = tbHierarquiaAnalise
    Left = 240
    Top = 48
  end
end
