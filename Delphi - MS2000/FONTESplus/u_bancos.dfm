object f_bancos: Tf_bancos
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Bancos'
  ClientHeight = 348
  ClientWidth = 571
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
    Width = 571
    Height = 348
    Align = alClient
    DataSource = ds_bancos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Agencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Conta_Corrente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 284
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        ReadOnly = True
        Width = 92
        Visible = True
      end>
  end
  object T_parametros: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 160
    Top = 24
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 172
    Top = 36
  end
  object T_bancos: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Bancos'
    Left = 156
    Top = 52
  end
  object ds_bancos: TDataSource
    DataSet = T_bancos
    Left = 164
    Top = 68
  end
end
