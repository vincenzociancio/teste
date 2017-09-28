object F_RelNFServicos: TF_RelNFServicos
  Left = 554
  Top = 179
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relatório de Notas Fiscais de Serviços'
  ClientHeight = 448
  ClientWidth = 548
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 548
    Height = 406
    Align = alClient
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 142
      Width = 37
      Height = 13
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 277
      Top = 76
      Width = 261
      Height = 57
      Caption = ' Período '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 122
        Top = 28
        Width = 7
        Height = 13
        Caption = 'À'
      end
      object mePerIni: TMaskEdit
        Left = 16
        Top = 24
        Width = 94
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
      end
      object mePerFin: TMaskEdit
        Left = 141
        Top = 24
        Width = 94
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
      end
    end
    object rgTipo: TRadioGroup
      Left = 9
      Top = 301
      Width = 261
      Height = 65
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Sintético'
        'Analítico')
      ParentFont = False
      TabOrder = 3
      OnClick = rgTipoClick
    end
    object dbGrdImport: TDBGrid
      Left = 8
      Top = 160
      Width = 530
      Height = 129
      DataSource = dsImport
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'Código'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Razão Social'
          Width = 454
          Visible = True
        end>
    end
    object cbTodos: TCheckBox
      Left = 55
      Top = 142
      Width = 53
      Height = 16
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object rgOp: TRadioGroup
      Left = 9
      Top = 76
      Width = 264
      Height = 37
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Emitidas'
        'Canceladas'
        'Recebidas')
      ParentFont = False
      TabOrder = 0
      OnClick = rgOpClick
    end
    object rgSubTotais: TRadioGroup
      Left = 277
      Top = 301
      Width = 261
      Height = 65
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Por Nota Fiscal'
        'Sub Totais por Data'
        'Sub Totais por Cliente')
      ParentFont = False
      TabOrder = 5
    end
    object dbgEmpFil: TDBGrid
      Left = 8
      Top = 9
      Width = 531
      Height = 57
      DataSource = dsEmpFil
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Empresa'
          Width = 383
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Filial'
          Width = 114
          Visible = True
        end>
    end
    object cb_recebe: TCheckBox
      Left = 13
      Top = 120
      Width = 97
      Height = 16
      Caption = 'Não Recebidas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object cbMedicao: TCheckBox
      Left = 11
      Top = 379
      Width = 110
      Height = 16
      Caption = 'Total em Medição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 406
    Width = 548
    Height = 42
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 10514464
    TabOrder = 1
    object btnImprimir: TBitBtn
      Left = 154
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = btnImprimirClick
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
    object btnFechar: TBitBtn
      Left = 314
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
      Kind = bkClose
    end
  end
  object qrImport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social'
      'FROM Importadores'
      'WHERE  Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 96
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'RJO'
      end>
    object qrImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
  end
  object dsImport: TDataSource
    DataSet = qrImport
    Left = 160
    Top = 24
  end
  object qrEmpFil: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Filiais.Codigo_Empresa AS empresa, Filiais.Codigo_Filial ' +
        'AS filial, Empresas.Razao_Social, Filiais.Descricao'
      
        'FROM Empresas INNER JOIN Filiais ON Empresas.Codigo = Filiais.Co' +
        'digo_Empresa'
      
        'GROUP BY Filiais.Codigo_Empresa, Filiais.Codigo_Filial, Empresas' +
        '.Razao_Social, Filiais.Descricao'
      'ORDER BY Filiais.Codigo_Empresa, Filiais.Codigo_Filial;')
    Left = 353
    Top = 31
    object qrEmpFilempresa: TStringField
      FieldName = 'empresa'
      Origin = 'DBNMSCOMEX.Filiais.Codigo_Empresa'
      Size = 4
    end
    object qrEmpFilfilial: TStringField
      FieldName = 'filial'
      Origin = 'DBNMSCOMEX.Filiais.Codigo_Filial'
      Size = 4
    end
    object qrEmpFilRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Empresas.Razao_Social'
      Size = 70
    end
    object qrEmpFilDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Filiais.Descricao'
      Size = 50
    end
  end
  object dsEmpFil: TDataSource
    DataSet = qrEmpFil
    Left = 440
    Top = 32
  end
end
