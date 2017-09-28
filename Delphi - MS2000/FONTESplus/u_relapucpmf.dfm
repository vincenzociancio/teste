object f_relapucpmf: Tf_relapucpmf
  Left = 181
  Top = 176
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relatório de Apuração de CPMF'
  ClientHeight = 156
  ClientWidth = 415
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 169
    Top = 102
    Width = 15
    Height = 13
    Caption = 'de:'
  end
  object Label6: TLabel
    Left = 260
    Top = 102
    Width = 15
    Height = 13
    Caption = 'até'
  end
  object Label1: TLabel
    Left = 16
    Top = 102
    Width = 132
    Height = 13
    Caption = 'CPMF apurados no Período'
  end
  object b_imprime: TBitBtn
    Left = 224
    Top = 123
    Width = 89
    Height = 25
    Caption = 'Imprime'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = b_imprimeClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 320
    Top = 123
    Width = 89
    Height = 25
    Caption = 'Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object me_dataini: TMaskEdit
    Left = 190
    Top = 94
    Width = 65
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '01/01/2000'
  end
  object me_datafin: TMaskEdit
    Left = 282
    Top = 94
    Width = 65
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 5
    Width = 401
    Height = 81
    DataSource = ds_qemp
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Razão Social'
        Title.Caption = 'Empresa'
        Visible = True
      end>
  end
  object q_emp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.[Razão Social]'
      
        'FROM Parametros INNER JOIN Importadores ON (Parametros.Filial = ' +
        'Importadores.Filial) AND (Parametros.Empresa = Importadores.Empr' +
        'esa)'
      'WHERE (((Importadores.Codigo) Like "00"+"*"));')
    Left = 96
    Top = 8
    object q_empEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_empFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_empCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_empRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
  end
  object ds_qemp: TDataSource
    DataSet = q_emp
    Left = 104
    Top = 13
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Data, Movimentacao_Contas_C' +
        'orrentes.Empresa, Movimentacao_Contas_Correntes.Filial, Moviment' +
        'acao_Contas_Correntes.Codigo AS ccorrente, Movimentacao_Contas_C' +
        'orrentes.Tipo, Movimentacao_Contas_Correntes.Doc, Movimentacao_C' +
        'ontas_Correntes.Historico, Movimentacao_Contas_Correntes.Usuario' +
        ', Movimentacao_Contas_Correntes.Valor, Movimentacao_Contas_Corre' +
        'ntes.Data_apuracao_cpmf_inicial, Movimentacao_Contas_Correntes.D' +
        'ata_apuracao_cpmf_final'
      'FROM Movimentacao_Contas_Correntes'
      
        'WHERE (((Movimentacao_Contas_Correntes.Cliente)=:qemp) AND ((Mov' +
        'imentacao_Contas_Correntes.Plano_Contas)="CPMF"))'
      'ORDER BY Movimentacao_Contas_Correntes.Data;')
    Left = 136
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'qemp'
        ParamType = ptUnknown
        Value = '0000'
      end>
  end
end
