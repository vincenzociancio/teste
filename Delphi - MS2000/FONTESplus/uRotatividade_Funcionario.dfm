object frmRotatividade: TfrmRotatividade
  Left = 418
  Top = 239
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Lançamento de Rotatividade'
  ClientHeight = 374
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gridMain: TDBGrid
    Left = 0
    Top = 184
    Width = 466
    Height = 190
    Align = alBottom
    DataSource = dtsMain
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Ano'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mes'
        Title.Caption = 'Mês'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contratado'
        Title.Caption = 'Contratado(s)'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dispensado'
        Title.Caption = 'Dispensado(s)'
        Width = 109
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 466
    Height = 184
    Align = alClient
    BevelOuter = bvNone
    Color = clHighlightText
    TabOrder = 1
    object lbNovo: TLabel
      Left = 8
      Top = 6
      Width = 41
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbNovoClick
    end
    object lbGravar: TLabel
      Left = 56
      Top = 6
      Width = 49
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbGravarClick
    end
    object lbExcluir: TLabel
      Left = 229
      Top = 6
      Width = 49
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbExcluirClick
    end
    object lbCancelar: TLabel
      Left = 165
      Top = 6
      Width = 57
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbCancelarClick
    end
    object Label8: TLabel
      Left = 160
      Top = 4
      Width = 3
      Height = 16
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 51
      Top = 4
      Width = 3
      Height = 16
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 105
      Top = 4
      Width = 3
      Height = 16
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 154
      Top = 40
      Width = 20
      Height = 13
      Caption = 'Mês'
    end
    object Label2: TLabel
      Left = 18
      Top = 40
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 51
      Height = 13
      Caption = 'Contrato(s)'
    end
    object Bevel1: TBevel
      Left = 8
      Top = 24
      Width = 449
      Height = 17
      Shape = bsTopLine
    end
    object lbPrior: TLabel
      Left = 208
      Top = 165
      Width = 17
      Height = 16
      Cursor = crHandPoint
      Hint = 'Registro anterior'
      Alignment = taCenter
      AutoSize = False
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lbPriorClick
    end
    object lbFirst: TLabel
      Left = 176
      Top = 165
      Width = 24
      Height = 16
      Cursor = crHandPoint
      Hint = 'Primeiro registro'
      Alignment = taCenter
      AutoSize = False
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lbFirstClick
    end
    object lbNext: TLabel
      Left = 242
      Top = 165
      Width = 15
      Height = 16
      Cursor = crHandPoint
      Hint = 'Próximo registro'
      Alignment = taCenter
      AutoSize = False
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lbNextClick
    end
    object lbLast: TLabel
      Left = 266
      Top = 165
      Width = 23
      Height = 16
      Cursor = crHandPoint
      Hint = 'Último registro'
      Alignment = taCenter
      AutoSize = False
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lbLastClick
    end
    object Label15: TLabel
      Left = 224
      Top = 4
      Width = 3
      Height = 16
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 8
      Top = 163
      Width = 449
      Height = 6
      Shape = bsTopLine
    end
    object lbAlterar: TLabel
      Left = 110
      Top = 6
      Width = 49
      Height = 13
      Cursor = crHandPoint
      Alignment = taCenter
      AutoSize = False
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbAlterarClick
    end
    object Label12: TLabel
      Left = 280
      Top = 4
      Width = 3
      Height = 16
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 152
      Top = 88
      Width = 67
      Height = 13
      Caption = 'Dispensado(s)'
    end
    object edtAno: TSpinEdit
      Left = 16
      Top = 56
      Width = 121
      Height = 22
      MaxLength = 4
      MaxValue = 3000
      MinValue = 2010
      ReadOnly = True
      TabOrder = 0
      Value = 2012
    end
    object edtContratado: TEdit
      Left = 16
      Top = 104
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object txtModo: TStaticText
      Left = 313
      Top = 3
      Width = 144
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Modo (Navegação)'
      Color = 4227327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object edtMes: TComboBox
      Left = 152
      Top = 56
      Width = 137
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Março'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object edtDispensado: TEdit
      Left = 152
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object dtsMain: TDataSource
    DataSet = qryMain
    Left = 264
    Top = 248
  end
  object qryMain: TQuery
    AfterScroll = qryMainAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' PK_ID'
      ' ,Ano'
      ' ,Mes'
      ' ,Contratado'
      ' ,Dispensado'
      'FROM '
      ' Rotatividade_Funcionario'
      'ORDER BY'
      ' Ano'
      ' ,Mes')
    Left = 96
    Top = 264
    object qryMainPK_ID: TAutoIncField
      FieldName = 'PK_ID'
      Origin = 'DBNMSCOMEX.Rotatividade_Funcionario.PK_ID'
    end
    object qryMainAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'DBNMSCOMEX.Rotatividade_Funcionario.Ano'
    end
    object qryMainMes: TIntegerField
      FieldName = 'Mes'
      Origin = 'DBNMSCOMEX.Rotatividade_Funcionario.Mes'
      OnGetText = qryMainMesGetText
    end
    object qryMainContratado: TIntegerField
      FieldName = 'Contratado'
      Origin = 'DBNMSCOMEX.Rotatividade_Funcionario.Contratado'
    end
    object qryMainDispensado: TIntegerField
      FieldName = 'Dispensado'
      Origin = 'DBNMSCOMEX.Rotatividade_Funcionario.Dispensado'
    end
  end
  object qryG: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Rotatividade_Funcionario '
      '(Ano, Mes, Contratado, Dispensado)'
      'values'
      '(:Ano, :Mes, :Contratado, :Dispensado)')
    Left = 336
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Contratado'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Dispensado'
        ParamType = ptUnknown
      end>
  end
  object qryE: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'Delete from Rotatividade_Funcionario'
      'where PK_ID=:ID')
    Left = 240
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object qryU: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Rotatividade_Funcionario set'
      
        'Ano=:Ano, Mes=:Mes, Contratado=:Contratado, Dispensado=:Dispensa' +
        'do'
      'where pk_id=:id')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Contratado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Dispensado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
end
