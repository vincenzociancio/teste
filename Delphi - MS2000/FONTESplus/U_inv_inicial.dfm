object f_invinicial: Tf_invinicial
  Left = 9
  Top = 63
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Inventário Inicial'
  ClientHeight = 408
  ClientWidth = 769
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 46
    Align = alTop
    Color = clTeal
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 50
      Height = 13
      Caption = 'Importador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 287
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Contrato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 524
      Top = 2
      Width = 91
      Height = 13
      Caption = 'Local de Inventário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 17
      Width = 281
      Height = 19
      DataSource = ds_importadores
      Options = [dgConfirmDelete, dgCancelOnExit]
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
          Width = 270
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 292
      Top = 17
      Width = 229
      Height = 19
      DataSource = ds_contratos
      Options = [dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 270
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 524
      Top = 17
      Width = 229
      Height = 19
      DataSource = ds_locais
      Options = [dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 270
          Visible = True
        end>
    end
  end
  object p_inventinicial: TPanel
    Left = 0
    Top = 46
    Width = 769
    Height = 359
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 84
      Top = 280
      Width = 37
      Height = 13
      Caption = 'Produto'
    end
    object Label5: TLabel
      Left = 565
      Top = 280
      Width = 79
      Height = 13
      Caption = 'Número de Série'
    end
    object Label6: TLabel
      Left = 689
      Top = 280
      Width = 55
      Height = 13
      Caption = 'Quantidade'
    end
    object Label7: TLabel
      Left = 8
      Top = 280
      Width = 26
      Height = 13
      Caption = 'Data '
    end
    object b_fechaii: TBitBtn
      Left = 682
      Top = 328
      Width = 75
      Height = 25
      Caption = '&Fecha'
      TabOrder = 7
      OnClick = b_fechaiiClick
      Kind = bkCancel
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 767
      Height = 24
      Align = alTop
      Caption = 'Inventário Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DBG_inventinicial: TDBGrid
      Left = 1
      Top = 25
      Width = 767
      Height = 252
      Align = alTop
      DataSource = ds_qinventinicial
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBG_inventinicialCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Data_movimentacao'
          Title.Caption = 'Data'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_serie'
          Title.Caption = 'Número de Série'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descrição'
          Width = 417
          Visible = True
        end>
    end
    object me_produto: TMaskEdit
      Left = 79
      Top = 296
      Width = 121
      Height = 21
      TabOrder = 1
      OnExit = me_produtoExit
      OnKeyPress = me_produtoKeyPress
    end
    object me_numeroserie: TMaskEdit
      Left = 562
      Top = 296
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '.'
      OnKeyPress = me_numeroserieKeyPress
    end
    object me_quantidade: TMaskEdit
      Left = 687
      Top = 296
      Width = 78
      Height = 21
      TabOrder = 4
      Text = '1'
      OnChange = me_quantidadeChange
      OnKeyPress = me_quantidadeKeyPress
    end
    object me_descricao: TMaskEdit
      Left = 202
      Top = 296
      Width = 357
      Height = 21
      Enabled = False
      TabOrder = 2
      OnKeyPress = me_descricaoKeyPress
    end
    object b_inclui: TBitBtn
      Left = 482
      Top = 328
      Width = 75
      Height = 25
      Caption = '&Inclui'
      Enabled = False
      TabOrder = 5
      OnClick = b_incluiClick
      Kind = bkOK
    end
    object b_exclui: TBitBtn
      Left = 561
      Top = 328
      Width = 75
      Height = 25
      Caption = '&Exclui'
      Enabled = False
      TabOrder = 6
      OnClick = b_excluiClick
      Kind = bkNo
    end
    object P_qprodutos: TPanel
      Left = 84
      Top = 34
      Width = 613
      Height = 237
      TabOrder = 10
      Visible = False
      object L_busca: TLabel
        Left = 12
        Top = 8
        Width = 200
        Height = 16
        Caption = 'Selecione o Produto na Lista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBG_qprodutos: TDBGrid
        Left = 12
        Top = 25
        Width = 589
        Height = 172
        DataSource = ds_qprodutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindow
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Código'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descrição'
            Width = 390
            Visible = True
          end>
      end
      object B_cancela: TBitBtn
        Left = 448
        Top = 208
        Width = 75
        Height = 25
        Caption = '&Cancela'
        TabOrder = 1
        OnClick = B_cancelaClick
        Kind = bkCancel
      end
      object B_ok: TBitBtn
        Left = 528
        Top = 208
        Width = 75
        Height = 25
        TabOrder = 2
        OnClick = B_okClick
        Kind = bkOK
      end
    end
    object me_data: TMaskEdit
      Left = 4
      Top = 296
      Width = 73
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnKeyPress = me_dataKeyPress
    end
  end
  object Q_produtos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Produtos.Empresa, Produtos.Filial, Produtos.Código, Produ' +
        'tos.Descrição, Produtos.NCM, Produtos.Importador'
      'FROM Produtos'
      
        'GROUP BY Produtos.Empresa, Produtos.Filial, Produtos.Código, Pro' +
        'dutos.Descrição, Produtos.NCM, Produtos.Importador'
      
        'HAVING (((Produtos.Empresa)=:empresa) AND ((Produtos.Filial)=:fi' +
        'lial) AND ((Produtos.Descrição) Like :codigo));')
    Left = 504
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '*PRO*'
      end>
    object Q_produtosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Produtos.Empresa'
      Size = 4
    end
    object Q_produtosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Produtos.Filial'
      Size = 4
    end
    object Q_produtosCdigo: TStringField
      FieldName = 'Código'
      Origin = 'DBNMSCOMEX.Produtos.Código'
      Size = 15
    end
    object Q_produtosDescrio: TStringField
      FieldName = 'Descrição'
      Origin = 'DBNMSCOMEX.Produtos.Descrição'
      Size = 120
    end
    object Q_produtosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.Produtos.NCM'
      Size = 8
    end
    object Q_produtosImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Produtos.Importador'
      Size = 4
    end
  end
  object ds_qprodutos: TDataSource
    DataSet = Q_produtos
    Left = 512
    Top = 52
  end
  object DS_produtos: TDataSource
    DataSet = T_produtos
    Left = 548
    Top = 40
  end
  object T_produtos: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Código'
    TableName = 'Produtos'
    Left = 564
    Top = 52
    object T_produtosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_produtosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_produtosCdigo: TStringField
      FieldName = 'Código'
      Size = 15
    end
    object T_produtosDescrio: TStringField
      FieldName = 'Descrição'
      Size = 120
    end
    object T_produtosNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object T_produtosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_produtosFabricante: TStringField
      FieldName = 'Fabricante'
      Size = 4
    end
    object T_produtosUnidade: TStringField
      FieldName = 'Unidade'
      Size = 4
    end
    object T_produtosPesoUnitrio: TFloatField
      FieldName = 'Peso Unitário'
    end
    object T_produtosValorUnitrio: TFloatField
      FieldName = 'Valor Unitário'
    end
    object T_produtosMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
  end
  object q_inventinicial: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Inventario.Empresa, Movimentacao_Inventario.' +
        'Filial, Movimentacao_Inventario.Importador, Movimentacao_Inventa' +
        'rio.Contrato, Movimentacao_Inventario.Local, Movimentacao_Invent' +
        'ario.Produto, Produtos.Descrição, Movimentacao_Inventario.Numero' +
        '_serie, Movimentacao_Inventario.Processo, Movimentacao_Inventari' +
        'o.DI, Movimentacao_Inventario.ADICAO, Movimentacao_Inventario.Qu' +
        'antidade,Movimentacao_Inventario.Data_movimentacao'
      
        'FROM Movimentacao_Inventario INNER JOIN Produtos ON (Movimentaca' +
        'o_Inventario.Produto = Produtos.Código) AND (Movimentacao_Invent' +
        'ario.Filial = Produtos.Filial) AND (Movimentacao_Inventario.Empr' +
        'esa = Produtos.Empresa)'
      
        'GROUP BY Movimentacao_Inventario.Empresa, Movimentacao_Inventari' +
        'o.Filial, Movimentacao_Inventario.Importador, Movimentacao_Inven' +
        'tario.Contrato, Movimentacao_Inventario.Local, Movimentacao_Inve' +
        'ntario.Produto, Produtos.Descrição, Movimentacao_Inventario.Nume' +
        'ro_serie, Movimentacao_Inventario.Processo, Movimentacao_Inventa' +
        'rio.DI, Movimentacao_Inventario.ADICAO, Movimentacao_Inventario.' +
        'Quantidade,Movimentacao_Inventario.Data_movimentacao'
      
        'HAVING (((Movimentacao_Inventario.Empresa)=:Empresa) AND ((Movim' +
        'entacao_Inventario.Filial)=:Filial) AND ((Movimentacao_Inventari' +
        'o.Importador)=:Importador) AND ((Movimentacao_Inventario.Contrat' +
        'o)=:Contrato) AND ((Movimentacao_Inventario.Local)=:Local) AND (' +
        '(Movimentacao_Inventario.Processo)="INICIAL") AND ((Movimentacao' +
        '_Inventario.DI)=".") AND ((Movimentacao_Inventario.ADICAO)="."))'
      'ORDER BY Movimentacao_Inventario.Data_movimentacao;')
    Left = 592
    Top = 38
    ParamData = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Filial'
        ParamType = ptUnknown
        Value = 'CWB'
      end
      item
        DataType = ftString
        Name = 'Importador'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Contrato'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'Local'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_inventinicialEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Empresa'
      Size = 4
    end
    object q_inventinicialFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Filial'
      Size = 4
    end
    object q_inventinicialImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Importador'
      Size = 4
    end
    object q_inventinicialContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Contrato'
      Size = 8
    end
    object q_inventinicialLocal: TStringField
      FieldName = 'Local'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Local'
      Size = 4
    end
    object q_inventinicialProduto: TStringField
      FieldName = 'Produto'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Produto'
      Size = 15
    end
    object q_inventinicialDescrio: TStringField
      FieldName = 'Descrição'
      Origin = 'DBNMSCOMEX.Produtos.Descrição'
      Size = 120
    end
    object q_inventinicialNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Numero_serie'
      Size = 15
    end
    object q_inventinicialProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Processo'
      Size = 8
    end
    object q_inventinicialDI: TStringField
      FieldName = 'DI'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.DI'
      Size = 10
    end
    object q_inventinicialADICAO: TStringField
      FieldName = 'ADICAO'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.ADICAO'
      Size = 3
    end
    object q_inventinicialQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Quantidade'
    end
    object q_inventinicialData_movimentacao: TDateTimeField
      FieldName = 'Data_movimentacao'
      Origin = 'DBNMSCOMEX.Movimentacao_Inventario.Data_movimentacao'
    end
  end
  object ds_qinventinicial: TDataSource
    DataSet = q_inventinicial
    Left = 604
    Top = 48
  end
  object T_parametros: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 140
    Top = 40
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
  end
  object T_importadores: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Importadores'
    Left = 180
    Top = 40
    object T_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_importadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_importadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
    object T_importadoresPas: TStringField
      FieldName = 'País'
      Size = 3
    end
    object T_importadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_importadoresTipoImportador: TStringField
      FieldName = 'Tipo Importador'
      Size = 1
    end
    object T_importadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 40
    end
    object T_importadoresNmero: TStringField
      FieldName = 'Número'
      Size = 6
    end
    object T_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_importadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_importadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_importadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_importadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
    object T_importadoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object T_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object T_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
  end
  object T_contratos: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_importadores
    TableName = 'Contratos'
    Left = 212
    Top = 40
    object T_contratosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_contratosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_contratosImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_contratosContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_contratosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_contratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object T_contratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
  end
  object T_locais: TTable
    Active = True
    AfterScroll = T_locaisAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato'
    MasterFields = 'Empresa;Filial;Importador;Contrato'
    MasterSource = ds_contratos
    TableName = 'Locais_Inventario'
    Left = 256
    Top = 40
    object T_locaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_locaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_locaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_locaisContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_locaisLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_locaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_locaisTipo_local: TStringField
      FieldName = 'Tipo_local'
      Size = 4
    end
  end
  object T_inventario: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Local'
    MasterFields = 'Empresa;Filial;Importador;Contrato;Local'
    MasterSource = ds_locais
    TableName = 'Inventario'
    Left = 296
    Top = 38
    object T_inventarioEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_inventarioFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_inventarioImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_inventarioContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_inventarioLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_inventarioProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 15
    end
    object T_inventarioNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_inventarioSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_inventarioDescrio: TStringField
      FieldName = 'Descrição'
      Size = 120
    end
  end
  object T_movinventario: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Importador;Contrato;Local;Produto;Numero_serie'
    MasterFields = 'Importador;Contrato;Local;Produto;Numero_serie'
    MasterSource = ds_inventario
    TableName = 'Movimentacao_Inventario'
    Left = 332
    Top = 38
    object T_movinventarioEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_movinventarioFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_movinventarioImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_movinventarioContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_movinventarioLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_movinventarioProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 15
    end
    object T_movinventarioNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_movinventarioDI: TStringField
      FieldName = 'DI'
      Size = 10
    end
    object T_movinventarioADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 3
    end
    object T_movinventarioSeq_Adicao: TStringField
      FieldName = 'Seq_Adicao'
      Size = 2
    end
    object T_movinventarioData_movimentacao: TDateTimeField
      FieldName = 'Data_movimentacao'
    end
    object T_movinventarioDDE: TStringField
      FieldName = 'DDE'
      Size = 10
    end
    object T_movinventarioRE: TStringField
      FieldName = 'RE'
      Size = 3
    end
    object T_movinventarioProcesso_ADM: TStringField
      FieldName = 'Processo_ADM'
    end
    object T_movinventarioImportador_Transf: TStringField
      FieldName = 'Importador_Transf'
      Size = 4
    end
    object T_movinventarioContrato_Transf: TStringField
      FieldName = 'Contrato_Transf'
      Size = 8
    end
    object T_movinventarioLocal_Transf: TStringField
      FieldName = 'Local_Transf'
      Size = 4
    end
    object T_movinventarioTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object T_movinventarioProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object T_movinventarioTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object T_movinventarioQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_movinventarioForma_Admissao: TStringField
      FieldName = 'Forma_Admissao'
      Size = 2
    end
    object T_movinventarioProtocolo_Processo_ADM: TStringField
      FieldName = 'Protocolo_Processo_ADM'
    end
    object T_movinventarioFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object T_movinventarioSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object T_inv: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato;Local;Produto;Numero_serie'
    TableName = 'Inventario'
    Left = 372
    Top = 40
    object T_invEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_invFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_invImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_invContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_invLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_invProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 15
    end
    object T_invNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_invSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_invDescrio: TStringField
      FieldName = 'Descrição'
      Size = 120
    end
  end
  object T_movinv: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 
      'Importador;Contrato;Local;Produto;Numero_serie;Processo;Fatura;D' +
      'I;ADICAO;Seq_Adicao'
    TableName = 'Movimentacao_Inventario'
    Left = 416
    Top = 40
    object T_movinvMovimento: TAutoIncField
      FieldName = 'Movimento'
    end
    object T_movinvEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_movinvFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_movinvImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_movinvContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_movinvLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_movinvProduto: TStringField
      FieldName = 'Produto'
      Required = True
      Size = 15
    end
    object T_movinvNumero_serie: TStringField
      FieldName = 'Numero_serie'
      Size = 15
    end
    object T_movinvProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object T_movinvDI: TStringField
      FieldName = 'DI'
      Size = 10
    end
    object T_movinvADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 3
    end
    object T_movinvSeq_Adicao: TStringField
      FieldName = 'Seq_Adicao'
      Size = 2
    end
    object T_movinvData_movimentacao: TDateTimeField
      FieldName = 'Data_movimentacao'
    end
    object T_movinvDDE: TStringField
      FieldName = 'DDE'
      Size = 11
    end
    object T_movinvRE: TStringField
      FieldName = 'RE'
      Size = 12
    end
    object T_movinvProcesso_ADM: TStringField
      FieldName = 'Processo_ADM'
    end
    object T_movinvProtocolo_Processo_ADM: TStringField
      FieldName = 'Protocolo_Processo_ADM'
    end
    object T_movinvFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object T_movinvImportador_Transf: TStringField
      FieldName = 'Importador_Transf'
      Size = 4
    end
    object T_movinvContrato_Transf: TStringField
      FieldName = 'Contrato_Transf'
      Size = 8
    end
    object T_movinvLocal_Transf: TStringField
      FieldName = 'Local_Transf'
      Size = 4
    end
    object T_movinvTipo_Declarao: TStringField
      FieldName = 'Tipo_Declaração'
      Size = 2
    end
    object T_movinvForma_Admissao: TStringField
      FieldName = 'Forma_Admissao'
      Size = 2
    end
    object T_movinvTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object T_movinvQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_movinvSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 148
    Top = 44
  end
  object ds_importadores: TDataSource
    DataSet = T_importadores
    Left = 180
    Top = 44
  end
  object ds_contratos: TDataSource
    DataSet = T_contratos
    Left = 220
    Top = 44
  end
  object ds_locais: TDataSource
    DataSet = T_locais
    Left = 260
    Top = 44
  end
  object ds_inventario: TDataSource
    DataSet = T_inventario
    Left = 300
    Top = 44
  end
  object ds_movinventario: TDataSource
    DataSet = T_movinventario
    Left = 336
    Top = 44
  end
  object ds_inv: TDataSource
    DataSet = T_inv
    Left = 380
    Top = 44
  end
  object ds_movinv: TDataSource
    DataSet = T_movinv
    Left = 420
    Top = 44
  end
end
