object f_AtuProc: Tf_AtuProc
  Left = 202
  Top = 157
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Atualização por Processo na Internet'
  ClientHeight = 288
  ClientWidth = 467
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
  object Processo: TLabel
    Left = 16
    Top = 16
    Width = 44
    Height = 13
    Caption = 'Processo'
  end
  object edtProcesso: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    MaxLength = 8
    TabOrder = 0
    OnChange = edtProcessoChange
  end
  object gbTabelas: TGroupBox
    Left = 16
    Top = 40
    Width = 433
    Height = 169
    Caption = 'Tabelas para Atualização'
    TabOrder = 1
    object cb1: TCheckBox
      Left = 16
      Top = 24
      Width = 193
      Height = 17
      Caption = 'Processos'
      TabOrder = 0
    end
    object cb2: TCheckBox
      Left = 16
      Top = 48
      Width = 193
      Height = 17
      Caption = 'Conhecimento Processo'
      TabOrder = 1
    end
    object cb5: TCheckBox
      Left = 16
      Top = 120
      Width = 193
      Height = 17
      Caption = 'FollowUp'
      TabOrder = 4
    end
    object cb6: TCheckBox
      Left = 216
      Top = 24
      Width = 209
      Height = 17
      Caption = 'Faturas'
      TabOrder = 5
    end
    object cb3: TCheckBox
      Left = 16
      Top = 72
      Width = 193
      Height = 17
      Caption = 'Numerários Processo'
      TabOrder = 2
    end
    object cb9: TCheckBox
      Left = 216
      Top = 96
      Width = 209
      Height = 17
      Caption = 'Processos Taxa de Conversão'
      TabOrder = 8
    end
    object cb7: TCheckBox
      Left = 216
      Top = 48
      Width = 209
      Height = 17
      Caption = 'Itens de Fatura'
      TabOrder = 6
    end
    object cb8: TCheckBox
      Left = 216
      Top = 72
      Width = 209
      Height = 17
      Caption = 'Tributação de Itens de Fatura'
      TabOrder = 7
    end
    object cb4: TCheckBox
      Left = 16
      Top = 96
      Width = 193
      Height = 17
      Caption = 'Créditos Processos'
      TabOrder = 3
    end
    object cb10: TCheckBox
      Left = 216
      Top = 120
      Width = 209
      Height = 17
      Caption = 'Processos Adições, ICMS, PIS e Cofins'
      TabOrder = 9
    end
    object cb11: TCheckBox
      Left = 216
      Top = 144
      Width = 209
      Height = 17
      Caption = 'Produtos'
      TabOrder = 10
    end
  end
  object btnAtualizar: TBitBtn
    Left = 168
    Top = 224
    Width = 129
    Height = 41
    Caption = '&Atualizar'
    Enabled = False
    TabOrder = 2
    OnClick = btnAtualizarClick
    Kind = bkAll
  end
  object qrProcessos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT PROC.Empresa, PROC.Filial'
      
        'FROM Parametros AS PARAM INNER JOIN Processos AS [PROC] ON (PARA' +
        'M.Filial = PROC.Filial) AND (PARAM.Empresa = PROC.Empresa)'
      'WHERE PROC.Código = :proc')
    Left = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
  end
  object qrprod: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT ItensFaturas.Processo, Produtos.Empresa, Produtos.Filial,' +
        ' Produtos.Código'
      
        'FROM ItensFaturas INNER JOIN Produtos ON ItensFaturas.Produto = ' +
        'Produtos.Código'
      'WHERE (((ItensFaturas.Processo)=:qprod));')
    Left = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'qprod'
        ParamType = ptUnknown
        Value = '02380/06'
      end>
    object qrprodProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.ItensFaturas.Processo'
      Size = 8
    end
    object qrprodEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Produtos.Empresa'
      Size = 4
    end
    object qrprodFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Produtos.Filial'
      Size = 4
    end
    object qrprodCdigo: TStringField
      FieldName = 'Código'
      Origin = 'DBNMSCOMEX.Produtos.Código'
      Size = 25
    end
  end
end
