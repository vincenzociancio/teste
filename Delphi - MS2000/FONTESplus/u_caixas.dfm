object F_caixas: TF_caixas
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Caixas'
  ClientHeight = 348
  ClientWidth = 536
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 536
    Height = 348
    Align = alClient
    DataSource = ds_caixas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Descrição'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        ReadOnly = True
        Width = 105
        Visible = True
      end>
  end
  object T_parametros: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 256
    Top = 160
  end
  object T_caixas: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Caixas'
    Left = 268
    Top = 172
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 280
    Top = 184
  end
  object ds_caixas: TDataSource
    DataSet = T_caixas
    Left = 292
    Top = 196
  end
end
