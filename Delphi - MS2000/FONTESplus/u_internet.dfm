object f_internet: Tf_internet
  Left = 198
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Atualização dos arquivos para Internet'
  ClientHeight = 424
  ClientWidth = 786
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
  object reLog: TRichEdit
    Left = 0
    Top = 0
    Width = 786
    Height = 424
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object pnlOp: TPanel
    Left = 0
    Top = 16
    Width = 753
    Height = 409
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 721
      Height = 353
      Caption = ' Tabelas para Atualização '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cb1: TCheckBox
        Left = 16
        Top = 24
        Width = 170
        Height = 17
        Caption = 'Filiais'
        TabOrder = 0
      end
      object cb2: TCheckBox
        Left = 16
        Top = 44
        Width = 170
        Height = 17
        Caption = 'Usuário'
        TabOrder = 1
      end
      object cb3: TCheckBox
        Left = 16
        Top = 64
        Width = 170
        Height = 17
        Caption = 'Usuário Net'
        TabOrder = 2
      end
      object cb4: TCheckBox
        Left = 16
        Top = 84
        Width = 170
        Height = 17
        Caption = 'Processos'
        TabOrder = 3
      end
      object cb5: TCheckBox
        Left = 16
        Top = 104
        Width = 170
        Height = 17
        Caption = 'Importadores'
        TabOrder = 4
      end
      object cb6: TCheckBox
        Left = 16
        Top = 124
        Width = 170
        Height = 17
        Caption = 'Exportadores'
        TabOrder = 5
      end
      object cb7: TCheckBox
        Left = 16
        Top = 144
        Width = 170
        Height = 17
        Caption = 'Transportadores'
        TabOrder = 6
      end
      object cb8: TCheckBox
        Left = 16
        Top = 164
        Width = 170
        Height = 17
        Caption = 'Conhecimento Processo'
        TabOrder = 7
      end
      object cb9: TCheckBox
        Left = 16
        Top = 184
        Width = 170
        Height = 17
        Caption = 'FollowUp'
        TabOrder = 8
      end
      object cb10: TCheckBox
        Left = 16
        Top = 204
        Width = 170
        Height = 17
        Caption = 'Controle de Cargas'
        TabOrder = 9
      end
      object cb11: TCheckBox
        Left = 16
        Top = 224
        Width = 170
        Height = 17
        Caption = 'Faturas'
        TabOrder = 10
      end
      object cb12: TCheckBox
        Left = 16
        Top = 244
        Width = 170
        Height = 17
        Caption = 'Produtos'
        TabOrder = 11
      end
      object cb13: TCheckBox
        Left = 16
        Top = 264
        Width = 170
        Height = 17
        Caption = 'Contratos'
        TabOrder = 12
      end
      object cb14: TCheckBox
        Left = 16
        Top = 284
        Width = 170
        Height = 17
        Caption = 'Locais de Inventário'
        TabOrder = 13
      end
      object cb15: TCheckBox
        Left = 16
        Top = 304
        Width = 170
        Height = 17
        Caption = 'Numerários Processo'
        TabOrder = 14
      end
      object cb16: TCheckBox
        Left = 16
        Top = 324
        Width = 170
        Height = 17
        Caption = 'URF'
        TabOrder = 15
      end
      object cb17: TCheckBox
        Left = 192
        Top = 24
        Width = 170
        Height = 17
        Caption = 'Recinto Alfandegado'
        TabOrder = 16
      end
      object cb18: TCheckBox
        Left = 192
        Top = 44
        Width = 170
        Height = 17
        Caption = 'Armazem'
        TabOrder = 17
      end
      object cb19: TCheckBox
        Left = 192
        Top = 64
        Width = 170
        Height = 17
        Caption = 'Processos Taxa de Conversão'
        TabOrder = 18
      end
      object cb20: TCheckBox
        Left = 192
        Top = 84
        Width = 170
        Height = 17
        Caption = 'Moeda'
        TabOrder = 19
      end
      object cb21: TCheckBox
        Left = 192
        Top = 104
        Width = 170
        Height = 17
        Caption = 'País'
        TabOrder = 20
      end
      object cb22: TCheckBox
        Left = 192
        Top = 124
        Width = 170
        Height = 17
        Caption = 'Eventos'
        TabOrder = 21
      end
      object cb23: TCheckBox
        Left = 192
        Top = 144
        Width = 170
        Height = 17
        Caption = 'Obs. Eventos'
        TabOrder = 22
      end
      object cb24: TCheckBox
        Left = 192
        Top = 164
        Width = 170
        Height = 17
        Caption = 'Tipo de Status do Processo'
        TabOrder = 23
      end
      object cb25: TCheckBox
        Left = 192
        Top = 184
        Width = 170
        Height = 17
        Caption = 'Tipos de Numerários'
        TabOrder = 24
      end
      object cb26: TCheckBox
        Left = 192
        Top = 204
        Width = 170
        Height = 17
        Caption = 'Tipo de Declaração'
        TabOrder = 25
      end
      object cb27: TCheckBox
        Left = 192
        Top = 224
        Width = 170
        Height = 17
        Caption = 'Tipos de Processos'
        TabOrder = 26
      end
      object cb28: TCheckBox
        Left = 192
        Top = 244
        Width = 170
        Height = 17
        Caption = 'Canais'
        TabOrder = 27
      end
      object cb29: TCheckBox
        Left = 192
        Top = 264
        Width = 170
        Height = 17
        Caption = 'Tipo de Doc. Carga'
        TabOrder = 28
      end
      object cb30: TCheckBox
        Left = 192
        Top = 284
        Width = 170
        Height = 17
        Caption = 'Via Transportadora'
        TabOrder = 29
      end
      object cb31: TCheckBox
        Left = 192
        Top = 304
        Width = 170
        Height = 17
        Caption = 'Tipo de Doc. Chegada'
        TabOrder = 30
      end
      object cb32: TCheckBox
        Left = 192
        Top = 324
        Width = 170
        Height = 17
        Caption = 'Tipo de Utilização'
        TabOrder = 31
      end
      object cb33: TCheckBox
        Left = 368
        Top = 24
        Width = 170
        Height = 17
        Caption = 'Tipos de Cargas'
        TabOrder = 32
      end
      object cb34: TCheckBox
        Left = 368
        Top = 44
        Width = 170
        Height = 17
        Caption = 'Documentos'
        TabOrder = 33
      end
      object cb35: TCheckBox
        Left = 368
        Top = 64
        Width = 170
        Height = 17
        Caption = 'Tipos de Documentos'
        TabOrder = 34
      end
      object cb36: TCheckBox
        Left = 368
        Top = 84
        Width = 170
        Height = 17
        Caption = 'Sub Tipos de Documentos'
        TabOrder = 35
      end
      object cb37: TCheckBox
        Left = 368
        Top = 104
        Width = 170
        Height = 17
        Caption = 'Fiel Depositário'
        TabOrder = 36
      end
      object cb40: TCheckBox
        Left = 368
        Top = 164
        Width = 170
        Height = 17
        Caption = 'Tipo de Movimentação Repetro'
        TabOrder = 39
      end
      object cb41: TCheckBox
        Left = 368
        Top = 184
        Width = 170
        Height = 17
        Caption = 'Tipo Situação Fiscal'
        TabOrder = 40
      end
      object cb38: TCheckBox
        Left = 368
        Top = 124
        Width = 170
        Height = 17
        Caption = 'Repetro'
        TabOrder = 37
      end
      object cb39: TCheckBox
        Left = 368
        Top = 144
        Width = 170
        Height = 17
        Caption = 'Movimentação Repetro'
        TabOrder = 38
      end
      object cb42: TCheckBox
        Left = 368
        Top = 204
        Width = 170
        Height = 17
        Caption = 'Itens de Fatura'
        TabOrder = 41
      end
      object cb43: TCheckBox
        Left = 368
        Top = 224
        Width = 170
        Height = 17
        Caption = 'Tributação de Itens de Fatura'
        TabOrder = 42
      end
      object cb44: TCheckBox
        Left = 368
        Top = 244
        Width = 170
        Height = 17
        Caption = 'Créditos Processos'
        TabOrder = 43
      end
      object cb45: TCheckBox
        Left = 368
        Top = 264
        Width = 170
        Height = 17
        Caption = 'Tipos de Créditos'
        TabOrder = 44
      end
      object cb46: TCheckBox
        Left = 368
        Top = 284
        Width = 170
        Height = 17
        Caption = 'Movimentação Conta Corrente'
        TabOrder = 45
      end
      object cb47: TCheckBox
        Left = 368
        Top = 304
        Width = 170
        Height = 17
        Caption = 'Tipos de Lançamento da C/C'
        TabOrder = 46
      end
      object cb48: TCheckBox
        Left = 368
        Top = 324
        Width = 170
        Height = 17
        Caption = 'Atos Concessórios'
        TabOrder = 47
      end
      object cb49: TCheckBox
        Left = 544
        Top = 24
        Width = 170
        Height = 17
        Caption = 'Atos Importador'
        TabOrder = 48
      end
      object cb50: TCheckBox
        Left = 544
        Top = 44
        Width = 170
        Height = 17
        Caption = 'Atos Sub-Contratadas'
        TabOrder = 49
      end
      object cb51: TCheckBox
        Left = 544
        Top = 64
        Width = 170
        Height = 17
        Caption = 'Atos Tipos Beneficiário'
        TabOrder = 50
      end
      object cb52: TCheckBox
        Left = 544
        Top = 84
        Width = 170
        Height = 17
        Caption = 'Tipos de Locais de Inventário'
        TabOrder = 51
      end
      object cb53: TCheckBox
        Left = 544
        Top = 104
        Width = 170
        Height = 17
        Caption = 'Unidade de Medida'
        TabOrder = 52
      end
      object cb54: TCheckBox
        Left = 544
        Top = 124
        Width = 170
        Height = 17
        Caption = 'Pagamento Parcela Var'
        TabOrder = 53
      end
      object cb55: TCheckBox
        Left = 544
        Top = 144
        Width = 170
        Height = 17
        Caption = 'Pagamento Parcela Vinculada'
        TabOrder = 54
      end
      object cb56: TCheckBox
        Left = 544
        Top = 164
        Width = 170
        Height = 17
        Caption = 'FollowUp Comercial'
        TabOrder = 55
      end
      object cb57: TCheckBox
        Left = 544
        Top = 184
        Width = 170
        Height = 17
        Caption = 'Tipos de Status do Documento'
        TabOrder = 56
      end
      object cb58: TCheckBox
        Left = 544
        Top = 204
        Width = 170
        Height = 17
        Caption = 'Cambio Antecipado'
        TabOrder = 57
      end
      object cb59: TCheckBox
        Left = 544
        Top = 224
        Width = 170
        Height = 17
        Caption = 'Cambio Antecipado Faturas'
        TabOrder = 58
      end
      object cb60: TCheckBox
        Left = 544
        Top = 244
        Width = 170
        Height = 17
        Caption = 'Fiadores'
        TabOrder = 59
      end
      object cb61: TCheckBox
        Left = 544
        Top = 264
        Width = 170
        Height = 17
        Caption = 'NCM'
        TabOrder = 60
      end
    end
    object btnAtualizar: TBitBtn
      Left = 296
      Top = 376
      Width = 75
      Height = 25
      Hint = 'Atualizar Tabela'
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnAtualizarClick
      Kind = bkOK
    end
    object btnSair: TBitBtn
      Left = 384
      Top = 376
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Kind = bkClose
    end
    object cbTodas: TCheckBox
      Left = 560
      Top = 340
      Width = 170
      Height = 17
      Caption = 'Todas as Tabelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = cbTodasClick
    end
  end
end
