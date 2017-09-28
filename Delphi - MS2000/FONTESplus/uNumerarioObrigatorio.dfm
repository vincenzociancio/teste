object frmNumerarioObrigatorio: TfrmNumerarioObrigatorio
  Left = 332
  Top = 72
  ActiveControl = edtTipoProcesso
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Numerários Obrigatórios'
  ClientHeight = 627
  ClientWidth = 661
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
  object pnlTipos: TPanel
    Left = 0
    Top = 57
    Width = 661
    Height = 112
    Align = alTop
    Color = clScrollBar
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 86
      Height = 13
      Caption = 'Tipo de Processo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 60
      Width = 97
      Height = 13
      Caption = 'Tipo de Declaração:'
    end
    object btnLimpar: TSpeedButton
      Left = 584
      Top = 55
      Width = 49
      Height = 22
      Hint = 'Limpar campo declaração'
      Caption = 'Limpar'
      Flat = True
      OnClick = btnLimparClick
    end
    object edtTipoProcesso: TDBLookupComboBox
      Left = 120
      Top = 16
      Width = 513
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsTiposProcessos
      TabOrder = 0
      OnCloseUp = edtTipoProcessoCloseUp
    end
    object edtTipoDeclaracao: TDBLookupComboBox
      Left = 120
      Top = 56
      Width = 457
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsTiposDeclaracao
      TabOrder = 1
      OnCloseUp = edtTipoDeclaracaoCloseUp
    end
    object btnAtualizar: TBitBtn
      Left = 278
      Top = 83
      Width = 105
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 2
      OnClick = btnAtualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
    end
  end
  object clist: TCheckListBox
    Left = 0
    Top = 189
    Width = 661
    Height = 397
    OnClickCheck = clistClickCheck
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 586
    Width = 661
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnFechar: TBitBtn
      Left = 544
      Top = 8
      Width = 105
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      Kind = bkClose
    end
    object btnArvore: TBitBtn
      Left = 432
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Exibir Árvore'
      Enabled = False
      TabOrder = 1
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080BFB0888880BFB080FBF0888880FBF08000008808800
        000888088808088808888808808E80880888880008E8E80008888888808E8088
        8888888888080888888888888880888888888888800000888888888880FBF088
        8888888880BFB088888888888000008888888888888888888888}
    end
    object pnlAviso: TPanel
      Left = 304
      Top = 3
      Width = 121
      Height = 35
      BevelOuter = bvNone
      Color = 33023
      TabOrder = 2
      Visible = False
    end
    object btnSalvar: TBitBtn
      Left = 311
      Top = 9
      Width = 107
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 3
      OnClick = btnSalvarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
  end
  object StaticText2: TStaticText
    Left = 0
    Top = 169
    Width = 661
    Height = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Numerários obrigatórios referente ao filtro acima.'
    Color = clOlive
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 661
    Height = 57
    Align = alTop
    Color = clInfoBk
    TabOrder = 4
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 617
      Height = 41
      AutoSize = False
      Caption = 
        'Entre com o tipo de processo e o tipo de declaração para incluir' +
        ', alterar e/ou visualizar os numerários obrigatórios.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
  end
  object dtsTiposNumerarios: TDataSource
    DataSet = qryTiposNumerarios
    Left = 416
    Top = 320
  end
  object qryTiposNumerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' TN.Codigo, '
      ' TN.Descricao, '
      ' TN.Plano_contas'
      'FROM '
      ' Parametros AS P '
      
        ' INNER JOIN Tipos_Numerario AS TN ON (P.Empresa = TN.Empresa) AN' +
        'D (P.Filial = TN.Filial)'
      'WHERE '
      ' TN.Plano_contas = '#39'NUM'#39
      'ORDER BY '
      ' TN.Descricao')
    Left = 416
    Top = 264
    object qryTiposNumerariosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      FixedChar = True
      Size = 4
    end
    object qryTiposNumerariosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      FixedChar = True
      Size = 50
    end
    object qryTiposNumerariosPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Plano_contas'
      FixedChar = True
      Size = 8
    end
  end
  object dtsTiposProcessos: TDataSource
    DataSet = qryTiposProcessos
    Left = 64
    Top = 280
  end
  object qryTiposProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' Codigo,'
      ' UPPER(Descricao) AS '#39'Descricao'#39
      'from '
      ' Tipos_de_Processos'
      'where '
      ' Ativo = 1'
      'order by'
      ' Descricao')
    Left = 64
    Top = 224
    object qryTiposProcessosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 2
    end
    object qryTiposProcessosDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 100
    end
  end
  object qryTiposDeclaracao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT DISTINCT '
      ' TAB_TIPO_DECLARACAO.Codigo, '
      ' TAB_TIPO_DECLARACAO.Descricao'
      'FROM '
      ' TAB_TIPO_DECLARACAO'
      
        ' inner join Processos on (TAB_TIPO_DECLARACAO.Codigo = Processos' +
        '.Tipo_Declaracao)'
      
        'where YEAR(Processos.Data) IN(YEAR(GETDATE())-1, YEAR(GETDATE())' +
        ')'
      'ORDER BY '
      ' Descricao')
    Left = 552
    Top = 280
    object qryTiposDeclaracaoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.TAB_TIPO_DECLARACAO.Codigo'
      FixedChar = True
      Size = 2
    end
    object qryTiposDeclaracaoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.TAB_TIPO_DECLARACAO.Descricao'
      FixedChar = True
      Size = 120
    end
  end
  object dtsTiposDeclaracao: TDataSource
    DataSet = qryTiposDeclaracao
    Left = 552
    Top = 224
  end
  object qryDelete: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from tipos_numerario_obrigatorio'
      'where '
      ' FK_Tipo_Processo=:Tipo_Processo and'
      ' FK_Tipo_Declaracao=:Tipo_Declaracao')
    Left = 48
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Tipo_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo_Declaracao'
        ParamType = ptUnknown
      end>
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into'
      'tipos_numerario_obrigatorio'
      
        '(FK_Tipo_Processo, FK_Tipo_Declaracao, FK_Tipo_Numerario,Plano_C' +
        'ontas)'
      'values'
      '(:Tipo_Processo, :Tipo_Declaracao, :Tipo_Numerario,'#39'NUM'#39')')
    Left = 112
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Tipo_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo_Declaracao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo_Numerario'
        ParamType = ptUnknown
      end>
  end
  object qrySelect: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT'
      ' FK_Tipo_Declaracao,'
      ' FK_Tipo_Numerario'
      'FROM '
      ' Tipos_Numerario_Obrigatorio'
      'WHERE '
      ' FK_Tipo_Processo=:Tipo_Processo AND '
      ' FK_Tipo_Declaracao=:Tipo_Declaracao'
      '')
    Left = 176
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'Tipo_Processo'
        ParamType = ptUnknown
        Value = '11'
      end
      item
        DataType = ftString
        Name = 'Tipo_Declaracao'
        ParamType = ptUnknown
        Value = '01'
      end>
    object qrySelectFK_Tipo_Declaracao: TStringField
      FieldName = 'FK_Tipo_Declaracao'
      FixedChar = True
      Size = 10
    end
    object qrySelectFK_Tipo_Numerario: TStringField
      FieldName = 'FK_Tipo_Numerario'
      FixedChar = True
      Size = 10
    end
  end
  object qryArvore01: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select DISTINCT'
      ' Tipos_de_Processos.Descricao'
      'from '
      ' Tipos_Numerario_Obrigatorio'
      
        ' inner join Tipos_de_Processos on (Tipos_de_Processos.Codigo = T' +
        'ipos_Numerario_Obrigatorio.FK_Tipo_Processo )'
      'order by'
      ' Tipos_de_Processos.Descricao')
    Left = 208
    Top = 464
  end
  object Timer: TTimer
    Enabled = False
    Interval = 600
    OnTimer = TimerTimer
    Left = 1120
    Top = 296
  end
end
