object F_localizapro: TF_localizapro
  Left = 156
  Top = 159
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Localiza Processos'
  ClientHeight = 320
  ClientWidth = 558
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
  object Label1: TLabel
    Left = 264
    Top = 292
    Width = 135
    Height = 13
    Caption = 'Pasta Localizada no Usuário'
  end
  object b_localiza: TBitBtn
    Left = 9
    Top = 286
    Width = 149
    Height = 25
    Caption = 'Localiza'
    TabOrder = 2
    OnClick = b_localizaClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
  end
  object rg_localiza: TRadioGroup
    Left = 8
    Top = 38
    Width = 149
    Height = 217
    Caption = 'Localiza por : '
    ItemIndex = 0
    Items.Strings = (
      'Nossa Referência'
      'Referência do Cliente'
      'DI'
      'Nº RCR'
      'Nº TR'
      'Nº Doc Carga'
      'Nº Doc Carga Master'
      'Nº Doc Chegada Carga'
      'Presença Carga'
      'Fatura'
      'Data'
      'PO'
      'DDE'
      'RE')
    TabOrder = 0
  end
  object me_localiza: TMaskEdit
    Left = 8
    Top = 259
    Width = 149
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 168
    Top = 42
    Width = 365
    Height = 240
    TabStop = False
    DataSource = ds_qlocaliza
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Caption = 'Nossa Referência'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Importador'
        Width = 230
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 408
    Top = 288
    Width = 121
    Height = 21
    DataField = 'Usuario'
    DataSource = ds_pastas
    Enabled = False
    TabOrder = 3
  end
  object rgOptOrdenar: TRadioGroup
    Left = 8
    Top = 0
    Width = 529
    Height = 41
    Caption = 'Ordenar'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nossa Referência'
      'Importador')
    TabOrder = 4
  end
  object Q_localiza: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Im' +
        'portadores.Razao_Social'
      
        'FROM Processos INNER JOIN Importadores ON (Processos.Importador ' +
        '= Importadores.Codigo) AND (Processos.Filial = Importadores.Fili' +
        'al) AND (Processos.Empresa = Importadores.Empresa)'
      
        'GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, ' +
        'Importadores.Razao_Social'
      'HAVING (((Processos.Codigo) Like :qvar));')
    Left = 252
    ParamData = <
      item
        DataType = ftString
        Name = 'qvar'
        ParamType = ptUnknown
        Value = '*'
      end>
  end
  object ds_qlocaliza: TDataSource
    DataSet = Q_localiza
    Left = 292
  end
  object T_pastas: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_qlocaliza
    TableName = 'Controle_Pastas'
    Left = 336
    Top = 4
    object T_pastasEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_pastasFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_pastasProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_pastasUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
  end
  object ds_pastas: TDataSource
    DataSet = T_pastas
    Left = 360
  end
end
