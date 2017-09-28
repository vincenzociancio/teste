object f_avlresultadoanalises: Tf_avlresultadoanalises
  Left = 388
  Top = 310
  Width = 366
  Height = 118
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Resultado Supervisionados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 19
    Top = 9
    Width = 102
    Height = 13
    Caption = 'Selecione a Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object dblcbPesquisa: TDBLookupComboBox
    Left = 19
    Top = 28
    Width = 321
    Height = 21
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = DataSource2
    TabOrder = 0
  end
  object btnImprimir: TBitBtn
    Left = 141
    Top = 60
    Width = 89
    Height = 25
    Hint = 'Localizar um Importador'
    Caption = '&Visualizar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = btnImprimirClick
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
  object DataSource2: TDataSource
    DataSet = tbPesquisas
    Left = 251
    Top = 4
  end
  object tbPesquisas: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Anl_Des_Analises'
    Left = 315
    Top = 4
    object tbPesquisasCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tbPesquisasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object qryColaborador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT DISTINCT U.Nome_Completo, U.Usuario      '
      
        '  FROM Anl_Des_Resultados ADR INNER JOIN Anl_Des_Competencias AD' +
        'C      '
      '    ON ADR.Fk_Competencia = ADC.Codigo INNER JOIN Usuarios U'
      
        '    ON ADR.Colaborador = U.Usuario INNER JOIN Anl_Des_Hierarquia' +
        '_Analise ADHA'
      '    ON ADR.Colaborador = ADHA.Colaborador'
      
        ' WHERE (Resp_Usuario IS NOT NULL OR Resp_Supervisor IS NOT NULL ' +
        'OR Resp_Gestor IS NOT NULL)'
      
        '   AND ((ADHA.Supervisor LIKE :Usuario) OR (ADHA.Gestor LIKE :Us' +
        'uario))'
      'ORDER BY U.Nome_Completo')
    Left = 78
    Top = 6
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
    object StringField1: TStringField
      FieldName = 'Nome_Completo'
    end
    object qryColaboradorUsuario: TStringField
      FieldName = 'Usuario'
    end
  end
end
