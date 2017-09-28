object f_avldesavaliacaocolaboradores: Tf_avldesavaliacaocolaboradores
  Left = 310
  Top = 154
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Avaliação de Colaboradores'
  ClientHeight = 533
  ClientWidth = 457
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 533
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 9
      Top = 7
      Width = 123
      Height = 13
      Caption = 'Selecione a Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 288
      Top = 512
      Width = 161
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object list1: TListBox
      Left = -1
      Top = 113
      Width = 176
      Height = 391
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      MultiSelect = True
      ParentFont = False
      TabOrder = 0
      OnDblClick = list1DblClick
    end
    object list2: TListBox
      Left = 281
      Top = 113
      Width = 176
      Height = 391
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      MultiSelect = True
      ParentFont = False
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 1
      Top = 57
      Width = 455
      Height = 56
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      object lb1: TLabel
        Left = 56
        Top = 11
        Width = 61
        Height = 13
        Caption = 'Pendentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 336
        Top = 11
        Width = 64
        Height = 13
        Caption = 'Finalizados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 0
        Top = 40
        Width = 457
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 
          '* Para avaliar o colaborador pendente de avaliação, dê dois cliq' +
          'ues no respectivo nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
    object dblcbPesquisa: TDBLookupComboBox
      Left = 8
      Top = 24
      Width = 441
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DataSource2
      TabOrder = 3
      OnClick = dblcbPesquisaClick
    end
  end
  object DataSource1: TDataSource
    DataSet = qrControleHierarquia
    Left = 124
    Top = 440
  end
  object qrControleHierarquia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT ADHA.Colaborador '
      
        '  FROM Anl_Des_Hierarquia_Analise ADHA INNER JOIN Anl_Des_Result' +
        'ados ADR'
      '    ON ADHA.Fk_Analise  = ADR.Fk_Analise AND'
      '       ADHA.Colaborador = ADR.Colaborador       '
      ' WHERE (Supervisor = :Usuario OR Gestor = :Usuario) AND '
      '       (Resp_Supervisor IS NULL OR Resp_Gestor IS NULL)')
    Left = 212
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object QryAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 300
    Top = 440
  end
  object tbPesquisas: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Anl_Des_Analises'
    Left = 400
    Top = 128
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
    Left = 312
    Top = 128
  end
end
