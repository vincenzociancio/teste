object F_nfiscais: TF_nfiscais
  Left = 38
  Top = 99
  BorderStyle = bsSingle
  Caption = 'Notas Fiscais'
  ClientHeight = 442
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  PrintScale = poNone
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 4
    Top = 0
    Width = 68
    Height = 13
    Caption = 'Nº Nota Fiscal'
  end
  object Label4: TLabel
    Left = 262
    Top = 34
    Width = 108
    Height = 13
    Caption = 'Natureza de Operação'
  end
  object Label5: TLabel
    Left = 517
    Top = 34
    Width = 28
    Height = 13
    Caption = 'CFOP'
    FocusControl = DBE_cfop
  end
  object Label6: TLabel
    Left = 584
    Top = 34
    Width = 87
    Height = 13
    Caption = 'Inscrição Estadual'
    FocusControl = DBE_inscest1
  end
  object Label7: TLabel
    Left = 231
    Top = 0
    Width = 11
    Height = 13
    Caption = 'DI'
  end
  object Label8: TLabel
    Left = 377
    Top = 0
    Width = 33
    Height = 13
    Caption = 'Adição'
  end
  object Label9: TLabel
    Left = 108
    Top = 80
    Width = 49
    Height = 13
    Caption = 'Dest/Rem'
    FocusControl = DBE_nome
  end
  object Label10: TLabel
    Left = 496
    Top = 76
    Width = 47
    Height = 13
    Caption = 'CNPJCPF'
    FocusControl = DBE_cnpj
  end
  object Label11: TLabel
    Left = 108
    Top = 100
    Width = 46
    Height = 13
    Caption = 'Endereço'
    FocusControl = DBE_endereco
  end
  object Label12: TLabel
    Left = 108
    Top = 120
    Width = 64
    Height = 13
    Caption = 'Bairro/Distrito'
    FocusControl = DBE_bairro
  end
  object Label13: TLabel
    Left = 392
    Top = 120
    Width = 19
    Height = 13
    Caption = 'Cep'
    FocusControl = DBE_cep
  end
  object Label14: TLabel
    Left = 108
    Top = 140
    Width = 45
    Height = 13
    Caption = 'Municipio'
    FocusControl = DBE_municipio
  end
  object Label15: TLabel
    Left = 496
    Top = 100
    Width = 46
    Height = 13
    Caption = 'Fone/Fax'
    FocusControl = DBE_fone
  end
  object Label16: TLabel
    Left = 336
    Top = 140
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBE_uf
  end
  object Label17: TLabel
    Left = 491
    Top = 120
    Width = 87
    Height = 13
    Caption = 'Inscrição Estadual'
    FocusControl = DBE_inscest2
  end
  object Label18: TLabel
    Left = 465
    Top = 0
    Width = 65
    Height = 13
    Caption = 'Data Emissão'
    FocusControl = DBE_emissao
  end
  object Label19: TLabel
    Left = 534
    Top = 0
    Width = 50
    Height = 13
    Caption = 'Data Mov.'
    FocusControl = DBE_dtmov
  end
  object Label20: TLabel
    Left = 606
    Top = 0
    Width = 55
    Height = 13
    Caption = 'Hora Saída'
    FocusControl = DBE_hora
  end
  object Label21: TLabel
    Left = 108
    Top = 159
    Width = 60
    Height = 13
    Caption = 'Nº Duplicata'
    FocusControl = DBE_duplicata
  end
  object Label22: TLabel
    Left = 176
    Top = 159
    Width = 56
    Height = 13
    Caption = 'Vencimento'
    FocusControl = DBE_venc
  end
  object Label23: TLabel
    Left = 286
    Top = 159
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = DBE_valor
  end
  object Label24: TLabel
    Left = 352
    Top = 160
    Width = 98
    Height = 13
    Caption = 'Condições Especiais'
    FocusControl = DBE_condespe
  end
  object Label32: TLabel
    Left = 4
    Top = 308
    Width = 106
    Height = 13
    Caption = 'Base de Cálculo ICMS'
    FocusControl = DBE_baseicms
  end
  object Label33: TLabel
    Left = 120
    Top = 308
    Width = 68
    Height = 13
    Caption = 'Valor do ICMS'
    FocusControl = DBE_valicms
  end
  object Label34: TLabel
    Left = 236
    Top = 308
    Width = 110
    Height = 13
    Caption = 'Base Calc ICMS Subst.'
    FocusControl = DBE_icmssubs
  end
  object Label35: TLabel
    Left = 352
    Top = 308
    Width = 86
    Height = 13
    Caption = 'Valor ICMS Subst.'
    FocusControl = DBE_valicmssubst
  end
  object Label36: TLabel
    Left = 464
    Top = 308
    Width = 112
    Height = 13
    Caption = 'Valor total dos Produtos'
    FocusControl = DBE_vtprod
  end
  object Label37: TLabel
    Left = 4
    Top = 340
    Width = 66
    Height = 13
    Caption = 'Valor do Frete'
    FocusControl = DBE_frete
  end
  object Label38: TLabel
    Left = 120
    Top = 340
    Width = 76
    Height = 13
    Caption = 'Valor do Seguro'
    FocusControl = DBE_seguro
  end
  object Label39: TLabel
    Left = 240
    Top = 340
    Width = 81
    Height = 13
    Caption = 'Outras Despesas'
    FocusControl = DBE_outras
  end
  object Label40: TLabel
    Left = 352
    Top = 340
    Width = 82
    Height = 13
    Caption = 'Valor Total do IPI'
    FocusControl = DBE_vtipi
  end
  object Label41: TLabel
    Left = 470
    Top = 340
    Width = 92
    Height = 13
    Caption = 'Valor Total da Nota'
    FocusControl = DBE_vtnota
  end
  object Label42: TLabel
    Left = 4
    Top = 404
    Width = 66
    Height = 13
    Caption = 'Transportador'
  end
  object Label43: TLabel
    Left = 189
    Top = 405
    Width = 24
    Height = 13
    Caption = 'Frete'
  end
  object Label44: TLabel
    Left = 225
    Top = 405
    Width = 27
    Height = 13
    Caption = 'Placa'
    FocusControl = DBE_placa
  end
  object Label45: TLabel
    Left = 293
    Top = 405
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBE_uftrans
  end
  object Label46: TLabel
    Left = 4
    Top = 372
    Width = 55
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBE_quantidade
  end
  object Label47: TLabel
    Left = 87
    Top = 372
    Width = 38
    Height = 13
    Caption = 'Especie'
    FocusControl = DBE_especie
  end
  object Label48: TLabel
    Left = 195
    Top = 372
    Width = 30
    Height = 13
    Caption = 'Marca'
    FocusControl = DBE_marca
  end
  object Label49: TLabel
    Left = 286
    Top = 372
    Width = 37
    Height = 13
    Caption = 'Número'
    FocusControl = DBE_numero
  end
  object Label50: TLabel
    Left = 378
    Top = 372
    Width = 52
    Height = 13
    Caption = 'Peso Bruto'
    FocusControl = DBE_pb
  end
  object Label51: TLabel
    Left = 482
    Top = 372
    Width = 63
    Height = 13
    Caption = 'Peso Líquido'
    FocusControl = DBE_pl
  end
  object Label52: TLabel
    Left = 632
    Top = 308
    Width = 41
    Height = 13
    Caption = 'Incoterm'
    FocusControl = DBE_incoterm
  end
  object Label53: TLabel
    Left = 596
    Top = 340
    Width = 78
    Height = 13
    Caption = 'Taxa Conversão'
    FocusControl = DBE_txcon
  end
  object Label1: TLabel
    Left = 82
    Top = 0
    Width = 38
    Height = 13
    Caption = 'Tipo NF'
  end
  object DBE_cfop: TDBEdit
    Left = 518
    Top = 45
    Width = 64
    Height = 21
    DataField = 'CFOP'
    DataSource = DS_nfiscais
    TabOrder = 7
  end
  object DBE_inscest1: TDBEdit
    Left = 583
    Top = 45
    Width = 94
    Height = 21
    DataField = 'InscEstadual'
    DataSource = DS_nfiscais
    TabOrder = 8
  end
  object DBE_nome: TDBEdit
    Left = 176
    Top = 72
    Width = 304
    Height = 21
    DataField = 'Nomedestrem'
    DataSource = DS_nfiscais
    TabOrder = 9
  end
  object DBE_cnpj: TDBEdit
    Left = 564
    Top = 72
    Width = 112
    Height = 21
    DataField = 'CNPJCPF'
    DataSource = DS_nfiscais
    TabOrder = 10
  end
  object DBE_endereco: TDBEdit
    Left = 176
    Top = 92
    Width = 304
    Height = 21
    DataField = 'Endereco'
    DataSource = DS_nfiscais
    TabOrder = 11
  end
  object DBE_bairro: TDBEdit
    Left = 176
    Top = 112
    Width = 124
    Height = 21
    DataField = 'Bairrodistrito'
    DataSource = DS_nfiscais
    TabOrder = 12
  end
  object DBE_cep: TDBEdit
    Left = 416
    Top = 112
    Width = 64
    Height = 21
    DataField = 'Cep'
    DataSource = DS_nfiscais
    TabOrder = 13
  end
  object DBE_municipio: TDBEdit
    Left = 176
    Top = 132
    Width = 154
    Height = 21
    DataField = 'Municipio'
    DataSource = DS_nfiscais
    TabOrder = 14
  end
  object DBE_fone: TDBEdit
    Left = 552
    Top = 92
    Width = 124
    Height = 21
    DataField = 'FoneFax'
    DataSource = DS_nfiscais
    TabOrder = 15
  end
  object DBE_uf: TDBEdit
    Left = 352
    Top = 132
    Width = 21
    Height = 21
    DataField = 'UF'
    DataSource = DS_nfiscais
    TabOrder = 16
  end
  object DBE_inscest2: TDBEdit
    Left = 582
    Top = 112
    Width = 94
    Height = 21
    DataField = 'InscEstDestRem'
    DataSource = DS_nfiscais
    TabOrder = 17
  end
  object DBE_emissao: TDBEdit
    Left = 463
    Top = 12
    Width = 70
    Height = 21
    DataField = 'DtEmissao'
    DataSource = DS_nfiscais
    TabOrder = 4
  end
  object DBE_dtmov: TDBEdit
    Left = 533
    Top = 12
    Width = 71
    Height = 21
    DataField = 'Dtsaidaentrada'
    DataSource = DS_nfiscais
    TabOrder = 5
  end
  object DBE_hora: TDBEdit
    Left = 604
    Top = 12
    Width = 70
    Height = 21
    DataField = 'Horasaida'
    DataSource = DS_nfiscais
    TabOrder = 6
  end
  object DBE_duplicata: TDBEdit
    Left = 108
    Top = 172
    Width = 64
    Height = 21
    DataField = 'DuplicataNr'
    DataSource = DS_nfiscais
    TabOrder = 18
  end
  object DBE_venc: TDBEdit
    Left = 172
    Top = 172
    Width = 112
    Height = 21
    DataField = 'Vencimento'
    DataSource = DS_nfiscais
    TabOrder = 19
  end
  object DBE_valor: TDBEdit
    Left = 284
    Top = 172
    Width = 64
    Height = 21
    DataField = 'Valor'
    DataSource = DS_nfiscais
    TabOrder = 20
  end
  object DBE_condespe: TDBEdit
    Left = 348
    Top = 172
    Width = 329
    Height = 21
    DataField = 'CondEspeciais'
    DataSource = DS_nfiscais
    TabOrder = 21
  end
  object DBE_da1: TDBEdit
    Left = 5
    Top = 52
    Width = 168
    Height = 21
    DataField = 'DA1'
    DataSource = DS_nfiscais
    TabOrder = 22
  end
  object DBE_da2: TDBEdit
    Left = 5
    Top = 72
    Width = 99
    Height = 21
    DataField = 'DA2'
    DataSource = DS_nfiscais
    TabOrder = 23
  end
  object DBE_da3: TDBEdit
    Left = 5
    Top = 92
    Width = 99
    Height = 21
    DataField = 'DA3'
    DataSource = DS_nfiscais
    TabOrder = 24
  end
  object DBE_da4: TDBEdit
    Left = 5
    Top = 112
    Width = 99
    Height = 21
    DataField = 'DA4'
    DataSource = DS_nfiscais
    TabOrder = 25
  end
  object DBE_da5: TDBEdit
    Left = 5
    Top = 132
    Width = 99
    Height = 21
    DataField = 'DA5'
    DataSource = DS_nfiscais
    TabOrder = 26
  end
  object DBE_da6: TDBEdit
    Left = 5
    Top = 152
    Width = 99
    Height = 21
    DataField = 'DA6'
    DataSource = DS_nfiscais
    TabOrder = 27
  end
  object DBE_da7: TDBEdit
    Left = 5
    Top = 172
    Width = 99
    Height = 21
    DataField = 'DA7'
    DataSource = DS_nfiscais
    TabOrder = 28
  end
  object DBE_baseicms: TDBEdit
    Left = 3
    Top = 320
    Width = 109
    Height = 21
    DataField = 'BaseCalcICMS'
    DataSource = DS_nfiscais
    TabOrder = 29
  end
  object DBE_valicms: TDBEdit
    Left = 119
    Top = 320
    Width = 109
    Height = 21
    DataField = 'ValICMS'
    DataSource = DS_nfiscais
    TabOrder = 30
  end
  object DBE_icmssubs: TDBEdit
    Left = 235
    Top = 320
    Width = 109
    Height = 21
    DataField = 'BaseCalcICMSsubst'
    DataSource = DS_nfiscais
    TabOrder = 31
  end
  object DBE_valicmssubst: TDBEdit
    Left = 351
    Top = 320
    Width = 109
    Height = 21
    DataField = 'ValICMSsubs'
    DataSource = DS_nfiscais
    TabOrder = 32
  end
  object DBE_vtprod: TDBEdit
    Left = 467
    Top = 320
    Width = 109
    Height = 21
    DataField = 'Valtotprodutos'
    DataSource = DS_nfiscais
    TabOrder = 33
  end
  object DBE_frete: TDBEdit
    Left = 4
    Top = 352
    Width = 109
    Height = 21
    DataField = 'Valfrete'
    DataSource = DS_nfiscais
    TabOrder = 34
  end
  object DBE_seguro: TDBEdit
    Left = 120
    Top = 352
    Width = 109
    Height = 21
    DataField = 'Valseguro'
    DataSource = DS_nfiscais
    TabOrder = 35
  end
  object DBE_outras: TDBEdit
    Left = 236
    Top = 352
    Width = 109
    Height = 21
    DataField = 'Outrasdesp'
    DataSource = DS_nfiscais
    TabOrder = 36
  end
  object DBE_vtipi: TDBEdit
    Left = 352
    Top = 352
    Width = 109
    Height = 21
    DataField = 'ValtotIPI'
    DataSource = DS_nfiscais
    TabOrder = 37
  end
  object DBE_vtnota: TDBEdit
    Left = 468
    Top = 352
    Width = 109
    Height = 21
    DataField = 'Vatotnota'
    DataSource = DS_nfiscais
    TabOrder = 38
  end
  object DBE_placa: TDBEdit
    Left = 224
    Top = 418
    Width = 64
    Height = 21
    DataField = 'Placa'
    DataSource = DS_nfiscais
    TabOrder = 48
  end
  object DBE_uftrans: TDBEdit
    Left = 292
    Top = 418
    Width = 21
    Height = 21
    DataField = 'UFVeiculo'
    DataSource = DS_nfiscais
    TabOrder = 49
  end
  object DBE_quantidade: TDBEdit
    Left = 3
    Top = 384
    Width = 78
    Height = 21
    DataField = 'Quantidade'
    DataSource = DS_nfiscais
    TabOrder = 39
  end
  object DBE_especie: TDBEdit
    Left = 86
    Top = 384
    Width = 99
    Height = 21
    DataField = 'Especie'
    DataSource = DS_nfiscais
    TabOrder = 40
  end
  object DBE_marca: TDBEdit
    Left = 193
    Top = 384
    Width = 84
    Height = 21
    DataField = 'Marca'
    DataSource = DS_nfiscais
    TabOrder = 41
  end
  object DBE_numero: TDBEdit
    Left = 284
    Top = 384
    Width = 85
    Height = 21
    DataField = 'Numero'
    DataSource = DS_nfiscais
    TabOrder = 42
  end
  object DBE_pb: TDBEdit
    Left = 376
    Top = 384
    Width = 97
    Height = 21
    DataField = 'PesoBruto'
    DataSource = DS_nfiscais
    TabOrder = 43
  end
  object DBE_pl: TDBEdit
    Left = 480
    Top = 384
    Width = 97
    Height = 21
    DataField = 'PesoLiquido'
    DataSource = DS_nfiscais
    TabOrder = 44
  end
  object DBE_incoterm: TDBEdit
    Left = 636
    Top = 320
    Width = 38
    Height = 21
    DataField = 'Incoterm'
    DataSource = DS_nfiscais
    TabOrder = 45
  end
  object DBE_txcon: TDBEdit
    Left = 600
    Top = 352
    Width = 76
    Height = 21
    DataField = 'TaxaConversao'
    DataSource = DS_nfiscais
    TabOrder = 46
  end
  object DBL_di: TDBLookupComboBox
    Left = 228
    Top = 12
    Width = 145
    Height = 21
    DataField = 'DI'
    DataSource = DS_nfiscais
    KeyField = 'NR_DECL_IMP_MICRO'
    ListField = 'NR_IDENT_USUARIO'
    ListSource = DS_di
    TabOrder = 2
    OnClick = DBL_diClick
  end
  object DBL_transportador: TDBLookupComboBox
    Left = 4
    Top = 418
    Width = 181
    Height = 21
    DataField = 'Transportador'
    DataSource = DS_nfiscais
    KeyField = 'Codigo'
    ListField = 'Razão Social'
    ListSource = DS_transportadores
    TabOrder = 47
  end
  object DBG_detalhe: TDBGrid
    Left = 4
    Top = 196
    Width = 673
    Height = 110
    DataSource = DS_temdet
    TabOrder = 50
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Sequencial'
        Title.Caption = 'Seq'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codproduto'
        Title.Caption = 'Código'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Descrição'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classificacao'
        Title.Caption = 'Classificação'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ST'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Title.Caption = 'UNID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor Mercadoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Frete Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Seguro Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Acrescimo Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dedução Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tributo Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor unitário'
        Title.Caption = 'Valor Unitário'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor total'
        Title.Caption = 'Valor Total'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AliquotaICMS'
        Title.Caption = 'ICMS'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AliquotaIPI'
        Title.Caption = 'IPI'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValIPI'
        Title.Caption = 'Valor do IPI'
        Width = 67
        Visible = True
      end>
  end
  object DBL_adicoes: TDBLookupComboBox
    Left = 374
    Top = 12
    Width = 61
    Height = 21
    DataField = 'ADICAO'
    DataSource = DS_nfiscais
    KeyField = 'NR_OP_IMP_MICRO'
    ListField = 'NR_OP_IMP_MICRO'
    ListSource = DS_consultaaidc
    TabOrder = 3
    OnClick = DBL_adicoesClick
  end
  object DBListBox1: TDBListBox
    Left = 188
    Top = 418
    Width = 33
    Height = 20
    DataField = 'Frete'
    DataSource = DS_nfiscais
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    IntegralHeight = True
    ItemHeight = 16
    Items.Strings = (
      '2'
      '1')
    ParentFont = False
    TabOrder = 51
  end
  object DBL_NATOPER: TDBLookupComboBox
    Left = 252
    Top = 46
    Width = 265
    Height = 21
    DataField = 'NatOpe'
    DataSource = DS_nfiscais
    KeyField = 'Descrição'
    ListField = 'Descrição;CFOP'
    ListSource = DS_natoper
    TabOrder = 52
    OnClick = DBL_NATOPERClick
  end
  object E_nf: TEdit
    Left = 4
    Top = 12
    Width = 73
    Height = 21
    TabOrder = 0
    OnExit = E_nfExit
  end
  object DBL_tiponf: TDBLookupComboBox
    Left = 80
    Top = 12
    Width = 145
    Height = 21
    DataField = 'Tiponf'
    DataSource = DS_nfiscais
    DropDownRows = 3
    KeyField = 'Codigo'
    ListField = 'Descrição'
    ListSource = DS_tiponf
    TabOrder = 1
    OnExit = DBL_tiponfExit
  end
  object Panel1: TPanel
    Left = 496
    Top = 414
    Width = 185
    Height = 26
    Anchors = []
    BevelOuter = bvNone
    TabOrder = 53
    object B_grava: TBitBtn
      Left = 20
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Grava'
      Enabled = False
      TabOrder = 0
      OnClick = B_gravaClick
      Kind = bkOK
    end
    object B_fecha: TBitBtn
      Left = 101
      Top = 0
      Width = 75
      Height = 25
      Caption = '&Fecha'
      TabOrder = 1
      OnClick = B_fechaClick
      Kind = bkClose
    end
  end
  object T_parametros: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 188
    Top = 160
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
  end
  object T_nfiscais: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;NFiscal'
    TableName = 'NFiscais'
    Left = 236
    Top = 160
    object T_nfiscaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_nfiscaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_nfiscaisNFiscal: TStringField
      FieldName = 'NFiscal'
      Required = True
      Size = 10
    end
    object T_nfiscaisNatOpe: TStringField
      FieldName = 'NatOpe'
      Size = 30
    end
    object T_nfiscaisCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object T_nfiscaisInscEstadual: TStringField
      FieldName = 'InscEstadual'
      Size = 15
    end
    object T_nfiscaisDI: TStringField
      FieldName = 'DI'
      Size = 8
    end
    object T_nfiscaisADICAO: TStringField
      FieldName = 'ADICAO'
      Size = 3
    end
    object T_nfiscaisNomedestrem: TStringField
      FieldName = 'Nomedestrem'
      Size = 50
    end
    object T_nfiscaisCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 18
    end
    object T_nfiscaisEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object T_nfiscaisCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object T_nfiscaisMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 25
    end
    object T_nfiscaisFoneFax: TStringField
      FieldName = 'FoneFax'
    end
    object T_nfiscaisUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_nfiscaisInscEstDestRem: TStringField
      FieldName = 'InscEstDestRem'
      Size = 15
    end
    object T_nfiscaisDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
      EditMask = '!99/99/9999;1;_'
    end
    object T_nfiscaisDtsaidaentrada: TDateTimeField
      FieldName = 'Dtsaidaentrada'
      EditMask = '!99/99/9999;1;_'
    end
    object T_nfiscaisHorasaida: TDateTimeField
      FieldName = 'Horasaida'
      EditMask = '!90:00;1;_'
    end
    object T_nfiscaisDuplicataNr: TStringField
      FieldName = 'DuplicataNr'
      Size = 10
    end
    object T_nfiscaisVencimento: TDateTimeField
      FieldName = 'Vencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object T_nfiscaisValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisCondEspeciais: TStringField
      FieldName = 'CondEspeciais'
      Size = 50
    end
    object T_nfiscaisBaseCalcICMS: TFloatField
      FieldName = 'BaseCalcICMS'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisValICMS: TFloatField
      FieldName = 'ValICMS'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisBaseCalcICMSsubst: TFloatField
      FieldName = 'BaseCalcICMSsubst'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisValICMSsubs: TFloatField
      FieldName = 'ValICMSsubs'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisValtotprodutos: TFloatField
      FieldName = 'Valtotprodutos'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisValfrete: TFloatField
      FieldName = 'Valfrete'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisValseguro: TFloatField
      FieldName = 'Valseguro'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisOutrasdesp: TFloatField
      FieldName = 'Outrasdesp'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisValtotIPI: TFloatField
      FieldName = 'ValtotIPI'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisVatotnota: TFloatField
      FieldName = 'Vatotnota'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisTransportador: TStringField
      FieldName = 'Transportador'
      Size = 4
    end
    object T_nfiscaisFrete: TStringField
      FieldName = 'Frete'
      Size = 1
    end
    object T_nfiscaisPlaca: TStringField
      FieldName = 'Placa'
      Size = 10
    end
    object T_nfiscaisUFVeiculo: TStringField
      FieldName = 'UFVeiculo'
      Size = 2
    end
    object T_nfiscaisQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_nfiscaisEspecie: TStringField
      FieldName = 'Especie'
    end
    object T_nfiscaisMarca: TStringField
      FieldName = 'Marca'
      Size = 10
    end
    object T_nfiscaisNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object T_nfiscaisPesoBruto: TFloatField
      FieldName = 'PesoBruto'
      DisplayFormat = '0.00#'
    end
    object T_nfiscaisPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
      DisplayFormat = '0.00#'
    end
    object T_nfiscaisIncoterm: TStringField
      FieldName = 'Incoterm'
      Size = 3
    end
    object T_nfiscaisTaxaConversao: TFloatField
      FieldName = 'TaxaConversao'
      DisplayFormat = '0.##'
    end
    object T_nfiscaisDA1: TStringField
      FieldName = 'DA1'
      Size = 60
    end
    object T_nfiscaisDA2: TStringField
      FieldName = 'DA2'
      Size = 60
    end
    object T_nfiscaisDA3: TStringField
      FieldName = 'DA3'
      Size = 60
    end
    object T_nfiscaisDA4: TStringField
      FieldName = 'DA4'
      Size = 60
    end
    object T_nfiscaisDA5: TStringField
      FieldName = 'DA5'
      Size = 60
    end
    object T_nfiscaisDA6: TStringField
      FieldName = 'DA6'
      Size = 60
    end
    object T_nfiscaisDA7: TStringField
      FieldName = 'DA7'
      Size = 60
    end
    object T_nfiscaisBairrodistrito: TStringField
      FieldName = 'Bairrodistrito'
    end
    object T_nfiscaisTiponf: TStringField
      FieldName = 'Tiponf'
      Size = 4
    end
  end
  object T_nfdetalhes: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;NFiscal;Sequencial'
    TableName = 'NFDetalhes'
    Left = 284
    Top = 160
    object T_nfdetalhesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_nfdetalhesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_nfdetalhesNFiscal: TStringField
      FieldName = 'NFiscal'
      Required = True
      Size = 10
    end
    object T_nfdetalhesSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object T_nfdetalhesCodproduto: TStringField
      FieldName = 'Codproduto'
      Size = 15
    end
    object T_nfdetalhesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
    object T_nfdetalhesClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 8
    end
    object T_nfdetalhesST: TStringField
      FieldName = 'ST'
      Size = 4
    end
    object T_nfdetalhesUnidade: TStringField
      FieldName = 'Unidade'
    end
    object T_nfdetalhesQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object T_nfdetalhesValorunitrio: TFloatField
      FieldName = 'Valor unitário'
    end
    object T_nfdetalhesValortotal: TFloatField
      FieldName = 'Valor total'
    end
    object T_nfdetalhesAliquotaICMS: TFloatField
      FieldName = 'AliquotaICMS'
    end
    object T_nfdetalhesAliquotaIPI: TFloatField
      FieldName = 'AliquotaIPI'
    end
    object T_nfdetalhesValIPI: TFloatField
      FieldName = 'ValIPI'
    end
    object T_nfdetalhesValorMercadoria: TFloatField
      FieldName = 'Valor Mercadoria'
    end
    object T_nfdetalhesFreteUnitrio: TFloatField
      FieldName = 'Frete Unitário'
    end
    object T_nfdetalhesSeguroUnitrio: TFloatField
      FieldName = 'Seguro Unitário'
    end
    object T_nfdetalhesAcrescimoUnitrio: TFloatField
      FieldName = 'Acrescimo Unitário'
    end
    object T_nfdetalhesDeduoUnitrio: TFloatField
      FieldName = 'Dedução Unitário'
    end
    object T_nfdetalhesTributoUnitrio: TFloatField
      FieldName = 'Tributo Unitário'
    end
  end
  object T_di: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO'
    TableName = 'DECLARAÇÃO_IMPORTAÇÃO'
    Left = 332
    Top = 160
    object T_diNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_diNR_IDENT_USUARIO: TStringField
      FieldName = 'NR_IDENT_USUARIO'
      Size = 15
    end
    object T_diNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object T_diNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object T_diDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object T_diDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object T_diDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object T_diCD_TIPO_DECLARACAO: TStringField
      FieldName = 'CD_TIPO_DECLARACAO'
      Size = 2
    end
    object T_diCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object T_diCD_TIPO_IMPORTADOR: TStringField
      FieldName = 'CD_TIPO_IMPORTADOR'
      Size = 1
    end
    object T_diNR_IMPORTADOR: TStringField
      FieldName = 'NR_IMPORTADOR'
      Size = 14
    end
    object T_diCD_PAIS_IMPORTADOR: TStringField
      FieldName = 'CD_PAIS_IMPORTADOR'
      Size = 3
    end
    object T_diNM_IMPORTADOR: TStringField
      FieldName = 'NM_IMPORTADOR'
      Size = 60
    end
    object T_diNR_TEL_IMPORTADOR: TStringField
      FieldName = 'NR_TEL_IMPORTADOR'
      Size = 15
    end
    object T_diED_LOGR_IMPORTADOR: TStringField
      FieldName = 'ED_LOGR_IMPORTADOR'
      Size = 40
    end
    object T_diED_NR_IMPORTADOR: TStringField
      FieldName = 'ED_NR_IMPORTADOR'
      Size = 6
    end
    object T_diED_COMPL_IMPO: TStringField
      FieldName = 'ED_COMPL_IMPO'
      Size = 21
    end
    object T_diED_BA_IMPORTADOR: TStringField
      FieldName = 'ED_BA_IMPORTADOR'
      Size = 25
    end
    object T_diED_MUN_IMPORTADOR: TStringField
      FieldName = 'ED_MUN_IMPORTADOR'
      Size = 25
    end
    object T_diED_UF_IMPORTADOR: TStringField
      FieldName = 'ED_UF_IMPORTADOR'
      Size = 2
    end
    object T_diED_CEP_IMPORTADOR: TStringField
      FieldName = 'ED_CEP_IMPORTADOR'
      Size = 8
    end
    object T_diNR_CPF_REPR_LEGAL: TStringField
      FieldName = 'NR_CPF_REPR_LEGAL'
      Size = 11
    end
    object T_diCD_MODALIDADE_DESP: TStringField
      FieldName = 'CD_MODALIDADE_DESP'
      Size = 1
    end
    object T_diIN_OPERACAO_FUNDAP: TBooleanField
      FieldName = 'IN_OPERACAO_FUNDAP'
    end
    object T_diCD_URF_ENTR_CARGA: TStringField
      FieldName = 'CD_URF_ENTR_CARGA'
      Size = 7
    end
    object T_diCD_URF_DESPACHO: TStringField
      FieldName = 'CD_URF_DESPACHO'
      Size = 7
    end
    object T_diCD_TIPO_CONSIG: TStringField
      FieldName = 'CD_TIPO_CONSIG'
      Size = 1
    end
    object T_diNR_CONSIGNATARIO: TStringField
      FieldName = 'NR_CONSIGNATARIO'
      Size = 14
    end
    object T_diNM_CONSIGNATARIO: TStringField
      FieldName = 'NM_CONSIGNATARIO'
      Size = 60
    end
    object T_diCD_PAIS_PROC_CARGA: TStringField
      FieldName = 'CD_PAIS_PROC_CARGA'
      Size = 3
    end
    object T_diCD_VIA_TRANSP_CARG: TStringField
      FieldName = 'CD_VIA_TRANSP_CARG'
      Size = 2
    end
    object T_diIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object T_diNR_VEICULO_TRANSP: TStringField
      FieldName = 'NR_VEICULO_TRANSP'
      Size = 15
    end
    object T_diNM_VEICULO_TRANSP: TStringField
      FieldName = 'NM_VEICULO_TRANSP'
      Size = 30
    end
    object T_diNM_TRANSPORTADOR: TStringField
      FieldName = 'NM_TRANSPORTADOR'
      Size = 60
    end
    object T_diCD_BANDEIRA_TRANSP: TStringField
      FieldName = 'CD_BANDEIRA_TRANSP'
      Size = 3
    end
    object T_diCD_TIPO_AG_CARGA: TStringField
      FieldName = 'CD_TIPO_AG_CARGA'
      Size = 1
    end
    object T_diNR_AGENTE_CARGA: TStringField
      FieldName = 'NR_AGENTE_CARGA'
      Size = 14
    end
    object T_diCD_TIPO_DCTO_CARGA: TStringField
      FieldName = 'CD_TIPO_DCTO_CARGA'
      Size = 2
    end
    object T_diNR_DCTO_CARGA: TStringField
      FieldName = 'NR_DCTO_CARGA'
      Size = 18
    end
    object T_diNR_DCTO_CARGA_MAST: TStringField
      FieldName = 'NR_DCTO_CARGA_MAST'
      Size = 18
    end
    object T_diNM_LOCAL_EMBARQUE: TStringField
      FieldName = 'NM_LOCAL_EMBARQUE'
      Size = 50
    end
    object T_diDT_EMBARQUE: TStringField
      FieldName = 'DT_EMBARQUE'
      Size = 8
    end
    object T_diCD_UTIL_DCTO_CARGA: TStringField
      FieldName = 'CD_UTIL_DCTO_CARGA'
      Size = 1
    end
    object T_diPB_CARGA: TStringField
      FieldName = 'PB_CARGA'
      Size = 15
    end
    object T_diPL_CARGA: TStringField
      FieldName = 'PL_CARGA'
      Size = 15
    end
    object T_diDT_CHEGADA_CARGA: TStringField
      FieldName = 'DT_CHEGADA_CARGA'
      Size = 8
    end
    object T_diCD_TIPO_MANIFESTO: TStringField
      FieldName = 'CD_TIPO_MANIFESTO'
      Size = 1
    end
    object T_diNR_MANIFESTO: TStringField
      FieldName = 'NR_MANIFESTO'
      Size = 15
    end
    object T_diCD_RECINTO_ALFAND: TStringField
      FieldName = 'CD_RECINTO_ALFAND'
      Size = 7
    end
    object T_diCD_SETOR_ARMAZENAM: TStringField
      FieldName = 'CD_SETOR_ARMAZENAM'
      Size = 3
    end
    object T_diCD_MOEDA_FRETE: TStringField
      FieldName = 'CD_MOEDA_FRETE'
      Size = 3
    end
    object T_diVL_TOT_FRT_PREPAID: TFloatField
      FieldName = 'VL_TOT_FRT_PREPAID'
    end
    object T_diVL_TOT_FRT_COLLECT: TFloatField
      FieldName = 'VL_TOT_FRT_COLLECT'
    end
    object T_diVL_FRETE_TNAC_MNEG: TFloatField
      FieldName = 'VL_FRETE_TNAC_MNEG'
    end
    object T_diVL_TOTAL_FRETE_MN: TFloatField
      FieldName = 'VL_TOTAL_FRETE_MN'
    end
    object T_diCD_MOEDA_SEGURO: TStringField
      FieldName = 'CD_MOEDA_SEGURO'
      Size = 3
    end
    object T_diVL_TOT_SEGURO_MNEG: TFloatField
      FieldName = 'VL_TOT_SEGURO_MNEG'
    end
    object T_diVL_TOTAL_SEG_MN: TFloatField
      FieldName = 'VL_TOTAL_SEG_MN'
    end
    object T_diCD_MOEDA_DESPESAS: TStringField
      FieldName = 'CD_MOEDA_DESPESAS'
      Size = 3
    end
    object T_diVL_TOT_DESPS_MNEG: TFloatField
      FieldName = 'VL_TOT_DESPS_MNEG'
    end
    object T_diVL_TOT_DESPS_MN: TFloatField
      FieldName = 'VL_TOT_DESPS_MN'
    end
    object T_diCD_MOEDA_MLE: TStringField
      FieldName = 'CD_MOEDA_MLE'
      Size = 3
    end
    object T_diVL_TOT_MLE_MNEG: TFloatField
      FieldName = 'VL_TOT_MLE_MNEG'
    end
    object T_diVL_TOTAL_MLE_MN: TFloatField
      FieldName = 'VL_TOTAL_MLE_MN'
    end
    object T_diIN_MOEDA_UNICA: TBooleanField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object T_diTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object T_diCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object T_diNR_CONTA_PGTO_TRIB: TStringField
      FieldName = 'NR_CONTA_PGTO_TRIB'
      Size = 19
    end
  end
  object T_adicao: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    Filtered = True
    FieldDefs = <
      item
        Name = 'NR_DECL_IMP_MICRO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NR_OP_IMP_MICRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CD_URF_ENTR_MERC'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'CD_VIA_TRANSPORTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IN_MULTIMODAL'
        DataType = ftBoolean
      end
      item
        Name = 'NM_FORN_ESTR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ED_LOGR_FORN_ESTR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ED_NR_FORN_ESTR'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ED_COMPL_FORN_ESTR'
        DataType = ftString
        Size = 21
      end
      item
        Name = 'ED_CIDAD_FORN_ESTR'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ED_ESTAD_FORN_ESTR'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CD_PAIS_AQUIS_MERC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CD_MERCADORIA_NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CD_PAIS_PROC_MERC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CD_AUSENCIA_FABRIC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NM_FABRICANTE_MERC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ED_LOGR_FABRIC'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ED_NR_FABRIC'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ED_COMPL_FABRIC'
        DataType = ftString
        Size = 21
      end
      item
        Name = 'ED_CIDAD_FABRIC'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ED_ESTADO_FABRIC'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CD_PAIS_ORIG_MERC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CD_MERC_NBM_SH'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CD_MERC_NALADI_NCC'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'CD_MERC_NALADI_SH'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PL_MERCADORIA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'QT_UN_ESTATISTICA'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CD_APLICACAO_MERC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VL_MERC_EMB_MN'
        DataType = ftFloat
      end
      item
        Name = 'CD_MOEDA_NEGOCIADA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CD_INCOTERMS_VENDA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NM_LOC_COND_VENDA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VL_MERC_COND_VENDA'
        DataType = ftFloat
      end
      item
        Name = 'VL_MERC_VENDA_MN'
        DataType = ftFloat
      end
      item
        Name = 'VL_FRETE_MERC_MNEG'
        DataType = ftFloat
      end
      item
        Name = 'CD_MD_FRETE_MERC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VL_FRETE_MERC_MN'
        DataType = ftFloat
      end
      item
        Name = 'VL_SEG_MERC_MNEG'
        DataType = ftFloat
      end
      item
        Name = 'CD_MOEDA_SEG_MERC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VL_SEG_MERC_MN'
        DataType = ftFloat
      end
      item
        Name = 'VL_UNID_LOC_EMP'
        DataType = ftFloat
      end
      item
        Name = 'CD_METOD_VALORACAO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CD_VINC_IMPO_EXPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CD_TIPO_ACORDO_TAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CD_ACORDO_ALADI'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CD_REGIME_TRIBUTAR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CD_FUND_LEG_REGIME'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CD_MOTIVO_ADM_TEMP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NR_DCTO_REDUCAO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'VL_DESPESAS_MNEG'
        DataType = ftFloat
      end
      item
        Name = 'CD_MOEDAS_DESPESAS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VL_DESPESAS_MN'
        DataType = ftFloat
      end
      item
        Name = 'PC_COEF_REDUC_II'
        DataType = ftFloat
      end
      item
        Name = 'VL_CALC_DCR_DOLAR'
        DataType = ftFloat
      end
      item
        Name = 'VL_II_CALC_DCR_MN'
        DataType = ftFloat
      end
      item
        Name = 'VL_II_DEVIDO_ZFM'
        DataType = ftFloat
      end
      item
        Name = 'VL_II_A_REC_ZFM'
        DataType = ftFloat
      end
      item
        Name = 'CD_COBERT_CAMBIAL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CD_MODALIDADE_PGTO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CD_ORGAO_FIN_INTER'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CD_MOTIVO_SEM_COB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'QT_PARC_FINANC_360'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CD_PERIOD_PGTO_360'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QT_PERIOD_PGTO_360'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'VL_TOT_FINANC_360'
        DataType = ftFloat
      end
      item
        Name = 'PC_TAXA_JUROS'
        DataType = ftFloat
      end
      item
        Name = 'CD_TAXA_JUROS'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'VL_FINANC_SUP_360'
        DataType = ftFloat
      end
      item
        Name = 'NR_ROF'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'IN_PGTO_VARIAV_360'
        DataType = ftBoolean
      end
      item
        Name = 'IN_JUROS_ATE_360'
        DataType = ftBoolean
      end
      item
        Name = 'PC_COMISSAO_AG_IMP'
        DataType = ftFloat
      end
      item
        Name = 'VL_COMISSAO_AG_IMP'
        DataType = ftFloat
      end
      item
        Name = 'CD_TIPO_AGENTE_IMP'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NR_AGENTE_IMP'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CD_BANC_AGENTE_IMP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CD_AGENC_AGENT_IMP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'IN_BEM_ENCOMENDA'
        DataType = ftBoolean
      end
      item
        Name = 'IN_MATERIAL_USADO'
        DataType = ftBoolean
      end
      item
        Name = 'TX_COMPL_VL_ADUAN'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'IN_IPI_NAO_TRIBUT'
        DataType = ftBoolean
      end
      item
        Name = 'vl_merc_loc_emb_mn'
        DataType = ftFloat
      end
      item
        Name = 'vl_base_calculo_mn'
        DataType = ftFloat
      end
      item
        Name = 'NR_OPER_TRAT_PREV'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'PrimaryKey'
        Fields = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO'
        Options = [ixPrimary, ixUnique, ixCaseInsensitive]
      end>
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO'
    StoreDefs = True
    TableName = 'OP_ADIÇÃO_DE_IMPORTAÇÃO'
    Left = 372
    Top = 160
    object T_adicaoNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      LookupDataSet = T_di
      LookupKeyFields = 'NR_DECL_IMP_MICRO'
      KeyFields = 'NR_DECL_IMP_MICRO'
      Size = 3
    end
    object T_adicaoCD_URF_ENTR_MERC: TStringField
      FieldName = 'CD_URF_ENTR_MERC'
      Size = 7
    end
    object T_adicaoCD_VIA_TRANSPORTE: TStringField
      FieldName = 'CD_VIA_TRANSPORTE'
      Size = 2
    end
    object T_adicaoIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object T_adicaoNM_FORN_ESTR: TStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object T_adicaoED_LOGR_FORN_ESTR: TStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object T_adicaoED_NR_FORN_ESTR: TStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object T_adicaoED_COMPL_FORN_ESTR: TStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object T_adicaoED_CIDAD_FORN_ESTR: TStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object T_adicaoED_ESTAD_FORN_ESTR: TStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object T_adicaoCD_PAIS_AQUIS_MERC: TStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object T_adicaoCD_MERCADORIA_NCM: TStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object T_adicaoCD_PAIS_PROC_MERC: TStringField
      FieldName = 'CD_PAIS_PROC_MERC'
      Size = 3
    end
    object T_adicaoCD_AUSENCIA_FABRIC: TStringField
      FieldName = 'CD_AUSENCIA_FABRIC'
      Size = 1
    end
    object T_adicaoNM_FABRICANTE_MERC: TStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object T_adicaoED_LOGR_FABRIC: TStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object T_adicaoED_NR_FABRIC: TStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object T_adicaoED_COMPL_FABRIC: TStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object T_adicaoED_CIDAD_FABRIC: TStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
    object T_adicaoED_ESTADO_FABRIC: TStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object T_adicaoCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object T_adicaoCD_MERC_NBM_SH: TStringField
      FieldName = 'CD_MERC_NBM_SH'
      Size = 10
    end
    object T_adicaoCD_MERC_NALADI_NCC: TStringField
      FieldName = 'CD_MERC_NALADI_NCC'
      Size = 7
    end
    object T_adicaoCD_MERC_NALADI_SH: TStringField
      FieldName = 'CD_MERC_NALADI_SH'
      Size = 8
    end
    object T_adicaoPL_MERCADORIA: TStringField
      FieldName = 'PL_MERCADORIA'
      Size = 15
    end
    object T_adicaoQT_UN_ESTATISTICA: TStringField
      FieldName = 'QT_UN_ESTATISTICA'
      Size = 14
    end
    object T_adicaoCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object T_adicaoVL_MERC_EMB_MN: TFloatField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object T_adicaoCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object T_adicaoCD_INCOTERMS_VENDA: TStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object T_adicaoNM_LOC_COND_VENDA: TStringField
      FieldName = 'NM_LOC_COND_VENDA'
      Size = 60
    end
    object T_adicaoVL_MERC_COND_VENDA: TFloatField
      FieldName = 'VL_MERC_COND_VENDA'
    end
    object T_adicaoVL_MERC_VENDA_MN: TFloatField
      FieldName = 'VL_MERC_VENDA_MN'
    end
    object T_adicaoVL_FRETE_MERC_MNEG: TFloatField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object T_adicaoCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object T_adicaoVL_FRETE_MERC_MN: TFloatField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object T_adicaoVL_SEG_MERC_MNEG: TFloatField
      FieldName = 'VL_SEG_MERC_MNEG'
    end
    object T_adicaoCD_MOEDA_SEG_MERC: TStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object T_adicaoVL_SEG_MERC_MN: TFloatField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object T_adicaoVL_UNID_LOC_EMP: TFloatField
      FieldName = 'VL_UNID_LOC_EMP'
    end
    object T_adicaoCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object T_adicaoCD_VINC_IMPO_EXPO: TStringField
      FieldName = 'CD_VINC_IMPO_EXPO'
      Size = 1
    end
    object T_adicaoCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object T_adicaoCD_ACORDO_ALADI: TStringField
      FieldName = 'CD_ACORDO_ALADI'
      Size = 3
    end
    object T_adicaoCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object T_adicaoCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object T_adicaoCD_MOTIVO_ADM_TEMP: TStringField
      FieldName = 'CD_MOTIVO_ADM_TEMP'
      Size = 2
    end
    object T_adicaoNR_DCTO_REDUCAO: TStringField
      FieldName = 'NR_DCTO_REDUCAO'
      Size = 8
    end
    object T_adicaoVL_DESPESAS_MNEG: TFloatField
      FieldName = 'VL_DESPESAS_MNEG'
    end
    object T_adicaoCD_MOEDAS_DESPESAS: TStringField
      FieldName = 'CD_MOEDAS_DESPESAS'
      Size = 3
    end
    object T_adicaoVL_DESPESAS_MN: TFloatField
      FieldName = 'VL_DESPESAS_MN'
    end
    object T_adicaoPC_COEF_REDUC_II: TFloatField
      FieldName = 'PC_COEF_REDUC_II'
    end
    object T_adicaoVL_CALC_DCR_DOLAR: TFloatField
      FieldName = 'VL_CALC_DCR_DOLAR'
    end
    object T_adicaoVL_II_CALC_DCR_MN: TFloatField
      FieldName = 'VL_II_CALC_DCR_MN'
    end
    object T_adicaoVL_II_DEVIDO_ZFM: TFloatField
      FieldName = 'VL_II_DEVIDO_ZFM'
    end
    object T_adicaoVL_II_A_REC_ZFM: TFloatField
      FieldName = 'VL_II_A_REC_ZFM'
    end
    object T_adicaoCD_COBERT_CAMBIAL: TStringField
      FieldName = 'CD_COBERT_CAMBIAL'
      Size = 1
    end
    object T_adicaoCD_MODALIDADE_PGTO: TStringField
      FieldName = 'CD_MODALIDADE_PGTO'
      Size = 2
    end
    object T_adicaoCD_ORGAO_FIN_INTER: TStringField
      FieldName = 'CD_ORGAO_FIN_INTER'
      Size = 2
    end
    object T_adicaoCD_MOTIVO_SEM_COB: TStringField
      FieldName = 'CD_MOTIVO_SEM_COB'
      Size = 2
    end
    object T_adicaoQT_PARC_FINANC_360: TStringField
      FieldName = 'QT_PARC_FINANC_360'
      Size = 3
    end
    object T_adicaoCD_PERIOD_PGTO_360: TStringField
      FieldName = 'CD_PERIOD_PGTO_360'
      Size = 1
    end
    object T_adicaoQT_PERIOD_PGTO_360: TStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object T_adicaoVL_TOT_FINANC_360: TFloatField
      FieldName = 'VL_TOT_FINANC_360'
    end
    object T_adicaoPC_TAXA_JUROS: TFloatField
      FieldName = 'PC_TAXA_JUROS'
    end
    object T_adicaoCD_TAXA_JUROS: TStringField
      FieldName = 'CD_TAXA_JUROS'
      Size = 4
    end
    object T_adicaoVL_FINANC_SUP_360: TFloatField
      FieldName = 'VL_FINANC_SUP_360'
    end
    object T_adicaoNR_ROF: TStringField
      FieldName = 'NR_ROF'
      Size = 8
    end
    object T_adicaoIN_PGTO_VARIAV_360: TBooleanField
      FieldName = 'IN_PGTO_VARIAV_360'
    end
    object T_adicaoIN_JUROS_ATE_360: TBooleanField
      FieldName = 'IN_JUROS_ATE_360'
    end
    object T_adicaoPC_COMISSAO_AG_IMP: TFloatField
      FieldName = 'PC_COMISSAO_AG_IMP'
    end
    object T_adicaoVL_COMISSAO_AG_IMP: TFloatField
      FieldName = 'VL_COMISSAO_AG_IMP'
    end
    object T_adicaoCD_TIPO_AGENTE_IMP: TStringField
      FieldName = 'CD_TIPO_AGENTE_IMP'
      Size = 1
    end
    object T_adicaoNR_AGENTE_IMP: TStringField
      FieldName = 'NR_AGENTE_IMP'
      Size = 14
    end
    object T_adicaoCD_BANC_AGENTE_IMP: TStringField
      FieldName = 'CD_BANC_AGENTE_IMP'
      Size = 5
    end
    object T_adicaoCD_AGENC_AGENT_IMP: TStringField
      FieldName = 'CD_AGENC_AGENT_IMP'
      Size = 4
    end
    object T_adicaoIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object T_adicaoIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object T_adicaoTX_COMPL_VL_ADUAN: TStringField
      FieldName = 'TX_COMPL_VL_ADUAN'
      Size = 250
    end
    object T_adicaoIN_IPI_NAO_TRIBUT: TBooleanField
      FieldName = 'IN_IPI_NAO_TRIBUT'
    end
    object T_adicaovl_merc_loc_emb_mn: TFloatField
      FieldName = 'vl_merc_loc_emb_mn'
    end
    object T_adicaovl_base_calculo_mn: TFloatField
      FieldName = 'vl_base_calculo_mn'
    end
    object T_adicaoNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
    object T_adicaoNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
  end
  object DS_parametros: TDataSource
    DataSet = T_parametros
    Left = 204
    Top = 168
  end
  object DS_nfiscais: TDataSource
    DataSet = T_nfiscais
    Left = 252
    Top = 168
  end
  object DS_nfdetalhes: TDataSource
    DataSet = T_nfdetalhes
    Left = 300
    Top = 168
  end
  object T_detalhemerc: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    TableName = 'DETALHE_MERCADORIA'
    Left = 420
    Top = 160
    object T_detalhemercNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_detalhemercNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_detalhemercNU_SEQ_DETALHE: TSmallintField
      FieldName = 'NU_SEQ_DETALHE'
    end
    object T_detalhemercTX_DESC_DET_MERC: TMemoField
      FieldName = 'TX_DESC_DET_MERC'
      BlobType = ftMemo
    end
    object T_detalhemercQT_MERC_UN_COMERC: TStringField
      FieldName = 'QT_MERC_UN_COMERC'
      Size = 14
    end
    object T_detalhemercNM_UN_MEDID_COMERC: TStringField
      FieldName = 'NM_UN_MEDID_COMERC'
    end
    object T_detalhemercVL_UNID_LOC_EMB: TFloatField
      FieldName = 'VL_UNID_LOC_EMB'
    end
    object T_detalhemercVL_UNID_COND_VENDA: TStringField
      FieldName = 'VL_UNID_COND_VENDA'
    end
    object T_detalhemercCD_PRODUTO: TStringField
      FieldName = 'CD_PRODUTO'
      Size = 15
    end
  end
  object T_tributoII: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    Filter = 'CD_RECEITA_IMPOSTO = '#39'0001'#39
    Filtered = True
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_RECEITA_IMPOSTO'
    TableName = 'TRIBUTO'
    Left = 460
    Top = 160
    object T_tributoIINR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_tributoIINR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_tributoIICD_RECEITA_IMPOSTO: TStringField
      FieldName = 'CD_RECEITA_IMPOSTO'
      Size = 4
    end
    object T_tributoIICD_TIPO_ALIQ_IPT: TStringField
      FieldName = 'CD_TIPO_ALIQ_IPT'
      Size = 1
    end
    object T_tributoIIVL_BASE_CALC_ADVAL: TFloatField
      FieldName = 'VL_BASE_CALC_ADVAL'
    end
    object T_tributoIIPC_ALIQ_NORM_ADVAL: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL'
    end
    object T_tributoIIVL_CALC_IPT_ADVAL: TFloatField
      FieldName = 'VL_CALC_IPT_ADVAL'
    end
    object T_tributoIINM_UN_ALIQ_ESP_IPT: TStringField
      FieldName = 'NM_UN_ALIQ_ESP_IPT'
      Size = 15
    end
    object T_tributoIICD_TIPO_RECIPIENTE: TStringField
      FieldName = 'CD_TIPO_RECIPIENTE'
      Size = 2
    end
    object T_tributoIIQT_ML_RECIPIENTE: TFloatField
      FieldName = 'QT_ML_RECIPIENTE'
    end
    object T_tributoIIQT_MERC_UN_ALIQ_ES: TFloatField
      FieldName = 'QT_MERC_UN_ALIQ_ES'
    end
    object T_tributoIIVL_ALIQ_ESPEC_IPT: TFloatField
      FieldName = 'VL_ALIQ_ESPEC_IPT'
    end
    object T_tributoIIVL_CALC_IPT_ESPEC: TFloatField
      FieldName = 'VL_CALC_IPT_ESPEC'
    end
    object T_tributoIICD_TIPO_BENEF_IPI: TStringField
      FieldName = 'CD_TIPO_BENEF_IPI'
      Size = 1
    end
    object T_tributoIIPC_ALIQ_REDUZIDA: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA'
    end
    object T_tributoIIPC_REDUCAO_IPT_BLI: TFloatField
      FieldName = 'PC_REDUCAO_IPT_BLI'
    end
    object T_tributoIIPC_ALIQ_ACOR_TARIF: TFloatField
      FieldName = 'PC_ALIQ_ACOR_TARIF'
    end
    object T_tributoIIVL_CALC_II_AC_TARI: TFloatField
      FieldName = 'VL_CALC_II_AC_TARI'
    end
    object T_tributoIIVL_IMPOSTO_DEVIDO: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO'
    end
    object T_tributoIIVL_IPT_A_RECOLHER: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER'
    end
    object T_tributoIICD_TIPO_DIREITO: TStringField
      FieldName = 'CD_TIPO_DIREITO'
      Size = 1
    end
    object T_tributoIINR_NOTA_COMPL_TIPI: TStringField
      FieldName = 'NR_NOTA_COMPL_TIPI'
      Size = 2
    end
  end
  object DS_di: TDataSource
    DataSet = T_di
    Left = 340
    Top = 168
  end
  object DS_adicao: TDataSource
    DataSet = T_adicao
    Left = 380
    Top = 168
  end
  object DS_detalhemerc: TDataSource
    DataSet = T_detalhemerc
    Left = 428
    Top = 168
  end
  object DS_tributoII: TDataSource
    DataSet = T_tributoII
    Left = 468
    Top = 168
  end
  object T_transportadores: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Transportadores'
    Left = 504
    Top = 159
    object T_transportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_transportadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_transportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_transportadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 50
    end
    object T_transportadoresCGCCPF: TStringField
      FieldName = 'CGC/CPF'
      Size = 18
    end
    object T_transportadoresEndereo: TStringField
      FieldName = 'Endereço'
      Size = 50
    end
    object T_transportadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object T_transportadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object T_transportadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_transportadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_transportadoresInscrioEstadual: TStringField
      FieldName = 'Inscrição Estadual'
      Size = 15
    end
  end
  object DS_transportadores: TDataSource
    DataSet = T_transportadores
    Left = 508
    Top = 167
  end
  object Q_adicoes: TQuery
    DatabaseName = 'DBNSISCOMEX'
    DataSource = DS_adicao
    SQL.Strings = (
      
        'SELECT OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO, OP_ADIÇÃO_DE_I' +
        'MPORTAÇÃO.NR_OP_IMP_MICRO, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_URF_ENTR_M' +
        'ERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_VIA_TRANSPORTE, OP_ADIÇÃO_DE_IMP' +
        'ORTAÇÃO.IN_MULTIMODAL, OP_ADIÇÃO_DE_IMPORTAÇÃO.NM_FORN_ESTR, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.ED_LOGR_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'ED_NR_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_COMPL_FORN_ESTR, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.ED_CIDAD_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO' +
        '.ED_ESTAD_FORN_ESTR, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_PAIS_AQUIS_MERC,' +
        ' OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERCADORIA_NCM, OP_ADIÇÃO_DE_IMPORTA' +
        'ÇÃO.CD_PAIS_PROC_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_AUSENCIA_FABRI' +
        'C, OP_ADIÇÃO_DE_IMPORTAÇÃO.NM_FABRICANTE_MERC, OP_ADIÇÃO_DE_IMPO' +
        'RTAÇÃO.ED_LOGR_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_NR_FABRIC, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.ED_COMPL_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED' +
        '_CIDAD_FABRIC, OP_ADIÇÃO_DE_IMPORTAÇÃO.ED_ESTADO_FABRIC, OP_ADIÇ' +
        'ÃO_DE_IMPORTAÇÃO.CD_PAIS_ORIG_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_M' +
        'ERC_NBM_SH, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MERC_NALADI_NCC, OP_ADIÇÃ' +
        'O_DE_IMPORTAÇÃO.CD_MERC_NALADI_SH, OP_ADIÇÃO_DE_IMPORTAÇÃO.PL_ME' +
        'RCADORIA, OP_ADIÇÃO_DE_IMPORTAÇÃO.QT_UN_ESTATISTICA, OP_ADIÇÃO_D' +
        'E_IMPORTAÇÃO.CD_APLICACAO_MERC, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_MERC_' +
        'EMB_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MOEDA_NEGOCIADA, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.CD_INCOTERMS_VENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.NM_LOC_C' +
        'OND_VENDA, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_MERC_COND_VENDA, OP_ADIÇÃO' +
        '_DE_IMPORTAÇÃO.VL_MERC_VENDA_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_FRET' +
        'E_MERC_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MD_FRETE_MERC, OP_ADIÇÃO' +
        '_DE_IMPORTAÇÃO.VL_FRETE_MERC_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_SEG_' +
        'MERC_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MOEDA_SEG_MERC, OP_ADIÇÃO_' +
        'DE_IMPORTAÇÃO.VL_SEG_MERC_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_UNID_LO' +
        'C_EMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_METOD_VALORACAO, OP_ADIÇÃO_DE_' +
        'IMPORTAÇÃO.CD_VINC_IMPO_EXPO, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_TIPO_AC' +
        'ORDO_TAR, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_ACORDO_ALADI, OP_ADIÇÃO_DE_' +
        'IMPORTAÇÃO.CD_REGIME_TRIBUTAR, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_FUND_L' +
        'EG_REGIME, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MOTIVO_ADM_TEMP, OP_ADIÇÃO' +
        '_DE_IMPORTAÇÃO.NR_DCTO_REDUCAO, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_DESPE' +
        'SAS_MNEG, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MOEDAS_DESPESAS, OP_ADIÇÃO_' +
        'DE_IMPORTAÇÃO.VL_DESPESAS_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.PC_COEF_RE' +
        'DUC_II, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_CALC_DCR_DOLAR, OP_ADIÇÃO_DE_' +
        'IMPORTAÇÃO.VL_II_CALC_DCR_MN, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_II_DEVI' +
        'DO_ZFM, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_II_A_REC_ZFM, OP_ADIÇÃO_DE_IM' +
        'PORTAÇÃO.CD_COBERT_CAMBIAL, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_MODALIDAD' +
        'E_PGTO, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_ORGAO_FIN_INTER, OP_ADIÇÃO_DE' +
        '_IMPORTAÇÃO.CD_MOTIVO_SEM_COB, OP_ADIÇÃO_DE_IMPORTAÇÃO.QT_PARC_F' +
        'INANC_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_PERIOD_PGTO_360, OP_ADIÇÃO' +
        '_DE_IMPORTAÇÃO.QT_PERIOD_PGTO_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_TO' +
        'T_FINANC_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.PC_TAXA_JUROS, OP_ADIÇÃO_D' +
        'E_IMPORTAÇÃO.CD_TAXA_JUROS, OP_ADIÇÃO_DE_IMPORTAÇÃO.VL_FINANC_SU' +
        'P_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_ROF, OP_ADIÇÃO_DE_IMPORTAÇÃO.I' +
        'N_PGTO_VARIAV_360, OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_JUROS_ATE_360, OP_' +
        'ADIÇÃO_DE_IMPORTAÇÃO.PC_COMISSAO_AG_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO' +
        '.VL_COMISSAO_AG_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_TIPO_AGENTE_IMP,' +
        ' OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_AGENTE_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.' +
        'CD_BANC_AGENTE_IMP, OP_ADIÇÃO_DE_IMPORTAÇÃO.CD_AGENC_AGENT_IMP, ' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_BEM_ENCOMENDA, OP_ADIÇÃO_DE_IMPORTAÇÃ' +
        'O.IN_MATERIAL_USADO, OP_ADIÇÃO_DE_IMPORTAÇÃO.TX_COMPL_VL_ADUAN, ' +
        'OP_ADIÇÃO_DE_IMPORTAÇÃO.IN_IPI_NAO_TRIBUT, OP_ADIÇÃO_DE_IMPORTAÇ' +
        'ÃO.vl_merc_loc_emb_mn, OP_ADIÇÃO_DE_IMPORTAÇÃO.vl_base_calculo_m' +
        'n, OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_OPER_TRAT_PREV'
      
        'FROM DECLARAÇÃO_IMPORTAÇÃO INNER JOIN OP_ADIÇÃO_DE_IMPORTAÇÃO ON' +
        ' DECLARAÇÃO_IMPORTAÇÃO.NR_DECL_IMP_MICRO = OP_ADIÇÃO_DE_IMPORTAÇ' +
        'ÃO.NR_DECL_IMP_MICRO'
      'WHERE (((OP_ADIÇÃO_DE_IMPORTAÇÃO.NR_DECL_IMP_MICRO)=:DI));')
    Left = 460
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DI'
        ParamType = ptUnknown
      end>
    object Q_adicoesNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object Q_adicoesNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object Q_adicoesCD_URF_ENTR_MERC: TStringField
      FieldName = 'CD_URF_ENTR_MERC'
      Size = 7
    end
    object Q_adicoesCD_VIA_TRANSPORTE: TStringField
      FieldName = 'CD_VIA_TRANSPORTE'
      Size = 2
    end
    object Q_adicoesIN_MULTIMODAL: TBooleanField
      FieldName = 'IN_MULTIMODAL'
    end
    object Q_adicoesNM_FORN_ESTR: TStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object Q_adicoesED_LOGR_FORN_ESTR: TStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object Q_adicoesED_NR_FORN_ESTR: TStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object Q_adicoesED_COMPL_FORN_ESTR: TStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object Q_adicoesED_CIDAD_FORN_ESTR: TStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object Q_adicoesED_ESTAD_FORN_ESTR: TStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object Q_adicoesCD_PAIS_AQUIS_MERC: TStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object Q_adicoesCD_MERCADORIA_NCM: TStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object Q_adicoesCD_PAIS_PROC_MERC: TStringField
      FieldName = 'CD_PAIS_PROC_MERC'
      Size = 3
    end
    object Q_adicoesCD_AUSENCIA_FABRIC: TStringField
      FieldName = 'CD_AUSENCIA_FABRIC'
      Size = 1
    end
    object Q_adicoesNM_FABRICANTE_MERC: TStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object Q_adicoesED_LOGR_FABRIC: TStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object Q_adicoesED_NR_FABRIC: TStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object Q_adicoesED_COMPL_FABRIC: TStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object Q_adicoesED_CIDAD_FABRIC: TStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
    object Q_adicoesED_ESTADO_FABRIC: TStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object Q_adicoesCD_PAIS_ORIG_MERC: TStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object Q_adicoesCD_MERC_NBM_SH: TStringField
      FieldName = 'CD_MERC_NBM_SH'
      Size = 10
    end
    object Q_adicoesCD_MERC_NALADI_NCC: TStringField
      FieldName = 'CD_MERC_NALADI_NCC'
      Size = 7
    end
    object Q_adicoesCD_MERC_NALADI_SH: TStringField
      FieldName = 'CD_MERC_NALADI_SH'
      Size = 8
    end
    object Q_adicoesPL_MERCADORIA: TStringField
      FieldName = 'PL_MERCADORIA'
      Size = 15
    end
    object Q_adicoesQT_UN_ESTATISTICA: TStringField
      FieldName = 'QT_UN_ESTATISTICA'
      Size = 14
    end
    object Q_adicoesCD_APLICACAO_MERC: TStringField
      FieldName = 'CD_APLICACAO_MERC'
      Size = 1
    end
    object Q_adicoesVL_MERC_EMB_MN: TFloatField
      FieldName = 'VL_MERC_EMB_MN'
    end
    object Q_adicoesCD_MOEDA_NEGOCIADA: TStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object Q_adicoesCD_INCOTERMS_VENDA: TStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object Q_adicoesNM_LOC_COND_VENDA: TStringField
      FieldName = 'NM_LOC_COND_VENDA'
      Size = 60
    end
    object Q_adicoesVL_MERC_COND_VENDA: TFloatField
      FieldName = 'VL_MERC_COND_VENDA'
    end
    object Q_adicoesVL_MERC_VENDA_MN: TFloatField
      FieldName = 'VL_MERC_VENDA_MN'
    end
    object Q_adicoesVL_FRETE_MERC_MNEG: TFloatField
      FieldName = 'VL_FRETE_MERC_MNEG'
    end
    object Q_adicoesCD_MD_FRETE_MERC: TStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object Q_adicoesVL_FRETE_MERC_MN: TFloatField
      FieldName = 'VL_FRETE_MERC_MN'
    end
    object Q_adicoesVL_SEG_MERC_MNEG: TFloatField
      FieldName = 'VL_SEG_MERC_MNEG'
    end
    object Q_adicoesCD_MOEDA_SEG_MERC: TStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object Q_adicoesVL_SEG_MERC_MN: TFloatField
      FieldName = 'VL_SEG_MERC_MN'
    end
    object Q_adicoesVL_UNID_LOC_EMP: TFloatField
      FieldName = 'VL_UNID_LOC_EMP'
    end
    object Q_adicoesCD_METOD_VALORACAO: TStringField
      FieldName = 'CD_METOD_VALORACAO'
      Size = 2
    end
    object Q_adicoesCD_VINC_IMPO_EXPO: TStringField
      FieldName = 'CD_VINC_IMPO_EXPO'
      Size = 1
    end
    object Q_adicoesCD_TIPO_ACORDO_TAR: TStringField
      FieldName = 'CD_TIPO_ACORDO_TAR'
      Size = 1
    end
    object Q_adicoesCD_ACORDO_ALADI: TStringField
      FieldName = 'CD_ACORDO_ALADI'
      Size = 3
    end
    object Q_adicoesCD_REGIME_TRIBUTAR: TStringField
      FieldName = 'CD_REGIME_TRIBUTAR'
      Size = 1
    end
    object Q_adicoesCD_FUND_LEG_REGIME: TStringField
      FieldName = 'CD_FUND_LEG_REGIME'
      Size = 2
    end
    object Q_adicoesCD_MOTIVO_ADM_TEMP: TStringField
      FieldName = 'CD_MOTIVO_ADM_TEMP'
      Size = 2
    end
    object Q_adicoesNR_DCTO_REDUCAO: TStringField
      FieldName = 'NR_DCTO_REDUCAO'
      Size = 8
    end
    object Q_adicoesVL_DESPESAS_MNEG: TFloatField
      FieldName = 'VL_DESPESAS_MNEG'
    end
    object Q_adicoesCD_MOEDAS_DESPESAS: TStringField
      FieldName = 'CD_MOEDAS_DESPESAS'
      Size = 3
    end
    object Q_adicoesVL_DESPESAS_MN: TFloatField
      FieldName = 'VL_DESPESAS_MN'
    end
    object Q_adicoesPC_COEF_REDUC_II: TFloatField
      FieldName = 'PC_COEF_REDUC_II'
    end
    object Q_adicoesVL_CALC_DCR_DOLAR: TFloatField
      FieldName = 'VL_CALC_DCR_DOLAR'
    end
    object Q_adicoesVL_II_CALC_DCR_MN: TFloatField
      FieldName = 'VL_II_CALC_DCR_MN'
    end
    object Q_adicoesVL_II_DEVIDO_ZFM: TFloatField
      FieldName = 'VL_II_DEVIDO_ZFM'
    end
    object Q_adicoesVL_II_A_REC_ZFM: TFloatField
      FieldName = 'VL_II_A_REC_ZFM'
    end
    object Q_adicoesCD_COBERT_CAMBIAL: TStringField
      FieldName = 'CD_COBERT_CAMBIAL'
      Size = 1
    end
    object Q_adicoesCD_MODALIDADE_PGTO: TStringField
      FieldName = 'CD_MODALIDADE_PGTO'
      Size = 2
    end
    object Q_adicoesCD_ORGAO_FIN_INTER: TStringField
      FieldName = 'CD_ORGAO_FIN_INTER'
      Size = 2
    end
    object Q_adicoesCD_MOTIVO_SEM_COB: TStringField
      FieldName = 'CD_MOTIVO_SEM_COB'
      Size = 2
    end
    object Q_adicoesQT_PARC_FINANC_360: TStringField
      FieldName = 'QT_PARC_FINANC_360'
      Size = 3
    end
    object Q_adicoesCD_PERIOD_PGTO_360: TStringField
      FieldName = 'CD_PERIOD_PGTO_360'
      Size = 1
    end
    object Q_adicoesQT_PERIOD_PGTO_360: TStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object Q_adicoesVL_TOT_FINANC_360: TFloatField
      FieldName = 'VL_TOT_FINANC_360'
    end
    object Q_adicoesPC_TAXA_JUROS: TFloatField
      FieldName = 'PC_TAXA_JUROS'
    end
    object Q_adicoesCD_TAXA_JUROS: TStringField
      FieldName = 'CD_TAXA_JUROS'
      Size = 4
    end
    object Q_adicoesVL_FINANC_SUP_360: TFloatField
      FieldName = 'VL_FINANC_SUP_360'
    end
    object Q_adicoesNR_ROF: TStringField
      FieldName = 'NR_ROF'
      Size = 8
    end
    object Q_adicoesIN_PGTO_VARIAV_360: TBooleanField
      FieldName = 'IN_PGTO_VARIAV_360'
    end
    object Q_adicoesIN_JUROS_ATE_360: TBooleanField
      FieldName = 'IN_JUROS_ATE_360'
    end
    object Q_adicoesPC_COMISSAO_AG_IMP: TFloatField
      FieldName = 'PC_COMISSAO_AG_IMP'
    end
    object Q_adicoesVL_COMISSAO_AG_IMP: TFloatField
      FieldName = 'VL_COMISSAO_AG_IMP'
    end
    object Q_adicoesCD_TIPO_AGENTE_IMP: TStringField
      FieldName = 'CD_TIPO_AGENTE_IMP'
      Size = 1
    end
    object Q_adicoesNR_AGENTE_IMP: TStringField
      FieldName = 'NR_AGENTE_IMP'
      Size = 14
    end
    object Q_adicoesCD_BANC_AGENTE_IMP: TStringField
      FieldName = 'CD_BANC_AGENTE_IMP'
      Size = 5
    end
    object Q_adicoesCD_AGENC_AGENT_IMP: TStringField
      FieldName = 'CD_AGENC_AGENT_IMP'
      Size = 4
    end
    object Q_adicoesIN_BEM_ENCOMENDA: TBooleanField
      FieldName = 'IN_BEM_ENCOMENDA'
    end
    object Q_adicoesIN_MATERIAL_USADO: TBooleanField
      FieldName = 'IN_MATERIAL_USADO'
    end
    object Q_adicoesTX_COMPL_VL_ADUAN: TStringField
      FieldName = 'TX_COMPL_VL_ADUAN'
      Size = 250
    end
    object Q_adicoesIN_IPI_NAO_TRIBUT: TBooleanField
      FieldName = 'IN_IPI_NAO_TRIBUT'
    end
    object Q_adicoesvl_merc_loc_emb_mn: TFloatField
      FieldName = 'vl_merc_loc_emb_mn'
    end
    object Q_adicoesvl_base_calculo_mn: TFloatField
      FieldName = 'vl_base_calculo_mn'
    end
    object Q_adicoesNR_OPER_TRAT_PREV: TStringField
      FieldName = 'NR_OPER_TRAT_PREV'
      Size = 10
    end
  end
  object DS_consultaaidc: TDataSource
    DataSet = Q_adicoes
    Left = 468
    Top = 72
  end
  object T_tributoIPI: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    Filter = 'CD_RECEITA_IMPOSTO = '#39'0002'#39
    Filtered = True
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_RECEITA_IMPOSTO'
    TableName = 'TRIBUTO'
    Left = 444
    Top = 128
    object T_tributoIPINR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_tributoIPINR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_tributoIPICD_RECEITA_IMPOSTO: TStringField
      FieldName = 'CD_RECEITA_IMPOSTO'
      Size = 4
    end
    object T_tributoIPICD_TIPO_ALIQ_IPT: TStringField
      FieldName = 'CD_TIPO_ALIQ_IPT'
      Size = 1
    end
    object T_tributoIPIVL_BASE_CALC_ADVAL: TFloatField
      FieldName = 'VL_BASE_CALC_ADVAL'
    end
    object T_tributoIPIPC_ALIQ_NORM_ADVAL: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL'
    end
    object T_tributoIPIVL_CALC_IPT_ADVAL: TFloatField
      FieldName = 'VL_CALC_IPT_ADVAL'
    end
    object T_tributoIPINM_UN_ALIQ_ESP_IPT: TStringField
      FieldName = 'NM_UN_ALIQ_ESP_IPT'
      Size = 15
    end
    object T_tributoIPICD_TIPO_RECIPIENTE: TStringField
      FieldName = 'CD_TIPO_RECIPIENTE'
      Size = 2
    end
    object T_tributoIPIQT_ML_RECIPIENTE: TFloatField
      FieldName = 'QT_ML_RECIPIENTE'
    end
    object T_tributoIPIQT_MERC_UN_ALIQ_ES: TFloatField
      FieldName = 'QT_MERC_UN_ALIQ_ES'
    end
    object T_tributoIPIVL_ALIQ_ESPEC_IPT: TFloatField
      FieldName = 'VL_ALIQ_ESPEC_IPT'
    end
    object T_tributoIPIVL_CALC_IPT_ESPEC: TFloatField
      FieldName = 'VL_CALC_IPT_ESPEC'
    end
    object T_tributoIPICD_TIPO_BENEF_IPI: TStringField
      FieldName = 'CD_TIPO_BENEF_IPI'
      Size = 1
    end
    object T_tributoIPIPC_ALIQ_REDUZIDA: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA'
    end
    object T_tributoIPIPC_REDUCAO_IPT_BLI: TFloatField
      FieldName = 'PC_REDUCAO_IPT_BLI'
    end
    object T_tributoIPIPC_ALIQ_ACOR_TARIF: TFloatField
      FieldName = 'PC_ALIQ_ACOR_TARIF'
    end
    object T_tributoIPIVL_CALC_II_AC_TARI: TFloatField
      FieldName = 'VL_CALC_II_AC_TARI'
    end
    object T_tributoIPIVL_IMPOSTO_DEVIDO: TFloatField
      FieldName = 'VL_IMPOSTO_DEVIDO'
    end
    object T_tributoIPIVL_IPT_A_RECOLHER: TFloatField
      FieldName = 'VL_IPT_A_RECOLHER'
    end
    object T_tributoIPICD_TIPO_DIREITO: TStringField
      FieldName = 'CD_TIPO_DIREITO'
      Size = 1
    end
    object T_tributoIPINR_NOTA_COMPL_TIPI: TStringField
      FieldName = 'NR_NOTA_COMPL_TIPI'
      Size = 2
    end
  end
  object DS_tributoIPI: TDataSource
    DataSet = T_tributoIPI
    Left = 460
    Top = 144
  end
  object T_embalagem: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_SEQ_EMBALAGEM'
    TableName = 'EMBALAGEM_CARGA'
    Left = 240
    Top = 44
    object T_embalagemNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_embalagemNR_SEQ_EMBALAGEM: TSmallintField
      FieldName = 'NR_SEQ_EMBALAGEM'
    end
    object T_embalagemCD_TIPO_EMBALAGEM: TStringField
      FieldName = 'CD_TIPO_EMBALAGEM'
      Size = 2
    end
    object T_embalagemQT_VOLUME_CARGA: TStringField
      FieldName = 'QT_VOLUME_CARGA'
      Size = 5
    end
  end
  object DS_embalagem: TDataSource
    DataSet = T_embalagem
    Left = 248
    Top = 56
  end
  object T_tipoembalagem: TTable
    Active = True
    DatabaseName = 'DBNTABSISCO'
    IndexFieldNames = 'Codigo'
    TableName = 'TAB_TP_EMBALAGEM'
    Left = 204
    Top = 44
    object T_tipoembalagemCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object T_tipoembalagemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 120
    end
  end
  object DS_tpembalagem: TDataSource
    DataSet = T_tipoembalagem
    Left = 212
    Top = 56
  end
  object Q_detalhes: TQuery
    DatabaseName = 'DBNSISCOMEX'
    DataSource = DS_detalhemerc
    SQL.Strings = (
      
        'SELECT DETALHE_MERCADORIA.NR_DECL_IMP_MICRO      , DETALHE_MERCA' +
        'DORIA.NR_OP_IMP_MICRO, DETALHE_MERCADORIA.NU_SEQ_DETALHE AS SEQ,' +
        ' (CVar([TX_DESC_DET_MERC])) AS DESCRICAO, (Val([QT_MERC_UN_COMER' +
        'C])/100000) AS QUANTIDADE, DETALHE_MERCADORIA.NM_UN_MEDID_COMERC' +
        ' AS UNIDADE, ((Val([VL_UNID_COND_VENDA])/10000000)*(:taxa1))  , ' +
        '(((Val([QT_MERC_UN_COMERC])/100000)*((Val([VL_UNID_COND_VENDA])/' +
        '10000000))*:taxa2)) AS VTOTAL,:CLASSIFICACAO,:ST'
      'FROM DETALHE_MERCADORIA'
      
        'GROUP BY DETALHE_MERCADORIA.NR_DECL_IMP_MICRO , DETALHE_MERCADOR' +
        'IA.NR_OP_IMP_MICRO, DETALHE_MERCADORIA.NU_SEQ_DETALHE           ' +
        '   , (CVar([TX_DESC_DET_MERC]))                            , (Va' +
        'l([QT_MERC_UN_COMERC])/100000)                              , DE' +
        'TALHE_MERCADORIA.NM_UN_MEDID_COMERC                       , ((Va' +
        'l([VL_UNID_COND_VENDA])/10000000)*(:taxa1))   , (((Val([QT_MERC_' +
        'UN_COMERC])/100000)*((Val([VL_UNID_COND_VENDA])/10000000))*:taxa' +
        '2)),:CLASSIFICACAO,:ST'
      
        'HAVING ( (DETALHE_MERCADORIA.NR_DECL_IMP_MICRO = :DI ) AND ( DET' +
        'ALHE_MERCADORIA.NR_OP_IMP_MICRO = :ADICAO ))')
    Left = 344
    Top = 100
    ParamData = <
      item
        DataType = ftFloat
        Name = 'taxa1'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'taxa2'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CLASSIFICACAO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'ST'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'taxa1'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'taxa2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CLASSIFICACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ST'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DI'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'ADICAO'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object DS_qdetalhes: TDataSource
    DataSet = Q_detalhes
    Left = 364
    Top = 112
  end
  object T_acresval: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_MET_ACRES_VALOR'
    TableName = 'ACRÉSCIMO_VALORAÇÃO'
    Left = 500
    Top = 120
    object T_acresvalNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_acresvalNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_acresvalCD_MET_ACRES_VALOR: TStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Size = 3
    end
    object T_acresvalVL_ACRESCIMO_MOEDA: TFloatField
      FieldName = 'VL_ACRESCIMO_MOEDA'
    end
    object T_acresvalCD_MD_NEGOC_ACRES: TStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object T_acresvalVL_ACRESCIMO_MN: TFloatField
      FieldName = 'VL_ACRESCIMO_MN'
    end
  end
  object DS_acresval: TDataSource
    DataSet = T_acresval
    Left = 516
    Top = 132
  end
  object T_deduval: TTable
    Active = True
    DatabaseName = 'DBNSISCOMEX'
    IndexFieldNames = 'NR_DECL_IMP_MICRO;NR_OP_IMP_MICRO;CD_MET_DEDUC_VALOR'
    TableName = 'DEDUÇÃO_VALORAÇÃO'
    Left = 540
    Top = 112
    object T_deduvalNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object T_deduvalNR_OP_IMP_MICRO: TStringField
      FieldName = 'NR_OP_IMP_MICRO'
      Size = 3
    end
    object T_deduvalCD_MET_DEDUC_VALOR: TStringField
      FieldName = 'CD_MET_DEDUC_VALOR'
      Size = 3
    end
    object T_deduvalVL_DEDUCAO_MNEG: TFloatField
      FieldName = 'VL_DEDUCAO_MNEG'
    end
    object T_deduvalCD_MD_NEGOC_DEDUC: TStringField
      FieldName = 'CD_MD_NEGOC_DEDUC'
      Size = 3
    end
    object T_deduvalVL_DEDUCAO_MN: TFloatField
      FieldName = 'VL_DEDUCAO_MN'
    end
  end
  object DS_deduval: TDataSource
    DataSet = T_deduval
    Left = 556
    Top = 128
  end
  object T_tempdetalhes: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    IndexName = 'PrimaryKey'
    TableName = 'tempdetalhe'
    Left = 440
    Top = 32
    object T_tempdetalhesEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_tempdetalhesFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_tempdetalhesUsuario: TStringField
      FieldName = 'Usuario'
      Required = True
      Size = 10
    end
    object T_tempdetalhesNFiscal: TStringField
      FieldName = 'NFiscal'
      Required = True
      Size = 10
    end
    object T_tempdetalhesSequencial: TStringField
      FieldName = 'Sequencial'
      Required = True
      Size = 4
    end
    object T_tempdetalhesCodproduto: TStringField
      FieldName = 'Codproduto'
      Size = 15
    end
    object T_tempdetalhesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
    object T_tempdetalhesClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 8
    end
    object T_tempdetalhesST: TStringField
      FieldName = 'ST'
      Size = 4
    end
    object T_tempdetalhesUnidade: TStringField
      FieldName = 'Unidade'
    end
    object T_tempdetalhesQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = '0.##'
    end
    object T_tempdetalhesValorunitrio: TFloatField
      FieldName = 'Valor unitário'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesValorMercadoria: TFloatField
      FieldName = 'Valor Mercadoria'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesFreteUnitrio: TFloatField
      FieldName = 'Frete Unitário'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesSeguroUnitrio: TFloatField
      FieldName = 'Seguro Unitário'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesAcrescimoUnitrio: TFloatField
      FieldName = 'Acrescimo Unitário'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesDeduoUnitrio: TFloatField
      FieldName = 'Dedução Unitário'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesTributoUnitrio: TFloatField
      FieldName = 'Tributo Unitário'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesValortotal: TFloatField
      FieldName = 'Valor total'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesAliquotaICMS: TFloatField
      FieldName = 'AliquotaICMS'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesAliquotaIPI: TFloatField
      FieldName = 'AliquotaIPI'
      DisplayFormat = '0.###'
    end
    object T_tempdetalhesValIPI: TFloatField
      FieldName = 'ValIPI'
      DisplayFormat = '0.##'
    end
  end
  object DS_temdet: TDataSource
    DataSet = T_tempdetalhes
    Left = 428
    Top = 48
  end
  object T_natoper: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Código'
    TableName = 'Natureza de Operação'
    Left = 292
    Top = 44
    object T_natoperCdigo: TStringField
      FieldName = 'Código'
      Size = 4
    end
    object T_natoperDescrio: TStringField
      FieldName = 'Descrição'
      Size = 30
    end
    object T_natoperCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
  end
  object DS_natoper: TDataSource
    DataSet = T_natoper
    Left = 304
    Top = 60
  end
  object T_tiponf: TTable
    Active = True
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Tipos de Notas Fiscais'
    Left = 340
    Top = 180
    object T_tiponfCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_tiponfDescrio: TStringField
      FieldName = 'Descrição'
      Required = True
      Size = 25
    end
  end
  object DS_tiponf: TDataSource
    DataSet = T_tiponf
    Left = 364
    Top = 192
  end
end
