object f_taxas: Tf_taxas
  Left = 381
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Taxas de Conersão - SISCOMEX'
  ClientHeight = 342
  ClientWidth = 410
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
  object p_taxas: TPanel
    Left = 7
    Top = 2
    Width = 397
    Height = 337
    Color = clSilver
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 395
      Height = 32
      Align = alTop
      Caption = 'Taxas de Conversão das Moedas - SISCOMEX'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 40
      Width = 381
      Height = 285
      DataSource = ds_taxas
      TabOrder = 1
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Moeda'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Taxa_Conversao'
          Title.Caption = 'Taxa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vigencia_Inicio_Taxa'
          Title.Caption = 'Início'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vigencia_Fim_Taxa'
          Title.Caption = 'Fim'
          Visible = True
        end>
    end
  end
  object t_taxas: TTable
    Active = True
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    MasterFields = 'Moeda'
    TableName = 'TAB_CONVERSAO_CAMBIO'
    Left = 108
    Top = 100
    object t_taxasCodigo: TStringField
      FieldName = 'Codigo'
      Size = 3
    end
    object t_taxasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object t_taxasTaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      Size = 9
    end
    object t_taxasVigencia_Inicio_Taxa: TStringField
      FieldName = 'Vigencia_Inicio_Taxa'
      Size = 10
    end
    object t_taxasVigencia_Fim_Taxa: TStringField
      FieldName = 'Vigencia_Fim_Taxa'
      Size = 10
    end
  end
  object ds_taxas: TDataSource
    DataSet = t_taxas
    Left = 140
    Top = 100
  end
end
