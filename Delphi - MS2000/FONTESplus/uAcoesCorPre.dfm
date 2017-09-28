object frmAcoesCoPre: TfrmAcoesCoPre
  Left = 226
  Top = 12
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'PROCEDIMENTO PARA AÇÕES CORRETIVAS E PREVENTIVAS'
  ClientHeight = 725
  ClientWidth = 1145
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefaultSizeOnly
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblNorma: TLabel
    Left = 346
    Top = 154
    Width = 96
    Height = 13
    Caption = 'Requisito da Norma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 680
    Top = 153
    Width = 60
    Height = 13
    Caption = 'Tipo de NC: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 854
    Top = 152
    Width = 29
    Height = 13
    Caption = 'Local:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 196
    Top = 154
    Width = 123
    Height = 13
    Caption = 'Responsável pela Identif.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 61
    Top = 155
    Width = 26
    Height = 13
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 8
    Top = 156
    Width = 12
    Height = 13
    Caption = 'N°'
  end
  object lblNumero: TLabel
    Left = 11
    Top = 171
    Width = 20
    Height = 13
    Caption = 'xxxx'
    Visible = False
  end
  object dbtNumero: TDBText
    Left = 8
    Top = 170
    Width = 47
    Height = 17
    DataField = 'Sequencial'
    DataSource = dsTabela_Conformidade
  end
  object lblTipo: TLabel
    Left = 533
    Top = 153
    Width = 70
    Height = 13
    Caption = 'Tipo de Ação: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox6: TGroupBox
    Left = 552
    Top = 553
    Width = 592
    Height = 137
    Caption = 'Verificação da Implementação e Eficácia '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    object Label12: TLabel
      Left = 8
      Top = 16
      Width = 146
      Height = 13
      Caption = 'Verificação da Implementação:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 5
      Top = 113
      Width = 70
      Height = 13
      Caption = 'Encerrado por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 7
      Top = 74
      Width = 112
      Height = 13
      Caption = 'Verificação da Eficácia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 443
      Top = 114
      Width = 23
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbedtVerifEficacia: TDBEdit
      Left = 7
      Top = 87
      Width = 578
      Height = 21
      DataField = 'Verifica_Eficacia'
      DataSource = dsTabela_Conformidade
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbedtEncImpEficacia: TDBEdit
      Left = 77
      Top = 110
      Width = 360
      Height = 21
      DataField = 'Encerrado_por'
      DataSource = dsTabela_Conformidade
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbedtDtEncImpEficacia: TDBEdit
      Left = 470
      Top = 111
      Width = 113
      Height = 21
      DataField = 'DT_Encerrado_por'
      DataSource = dsTabela_Conformidade
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      OnKeyPress = dbedtDtEncImpEficaciaKeyPress
    end
    object dbMmVerifImplementacao: TDBMemo
      Left = 5
      Top = 31
      Width = 581
      Height = 43
      DataField = 'Verifica_Implementacao'
      DataSource = dsTabela_Conformidade
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 6
    Top = 514
    Width = 540
    Height = 175
    Caption = 'Implementação: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    object Label10: TLabel
      Left = 9
      Top = 152
      Width = 87
      Height = 13
      Caption = 'Implementado por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 367
      Top = 153
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbMmImplementacao: TDBMemo
      Left = 5
      Top = 14
      Width = 528
      Height = 131
      DataField = 'Des_Implementacao'
      DataSource = dsTabela_Conformidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnKeyPress = dbMmImplementacaoKeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 5
    Top = 329
    Width = 542
    Height = 184
    Caption = 'Análise das Causas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    object Label8: TLabel
      Left = 9
      Top = 161
      Width = 65
      Height = 13
      Caption = 'Responsável:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 381
      Top = 160
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 9
      Top = 14
      Width = 168
      Height = 13
      Caption = 'Identificação e Análise das Causas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbMmAnaliseCausas: TDBMemo
      Left = 8
      Top = 28
      Width = 526
      Height = 124
      DataField = 'Desc_Analise_Causas'
      DataSource = dsTabela_Conformidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnKeyPress = dbMmAnaliseCausasKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 4
    Top = 193
    Width = 543
    Height = 137
    Caption = 'Descrição da Ocorrência (Fato, Requisito e Evidência):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object dbmmConformidade: TDBMemo
      Left = 8
      Top = 15
      Width = 528
      Height = 114
      DataField = 'Descricao_conformidade'
      DataSource = dsTabela_Conformidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnKeyPress = dbmmConformidadeKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 552
    Top = 193
    Width = 593
    Height = 137
    Caption = 'Descrição da disposição (Ação imediata): '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 113
      Width = 65
      Height = 13
      Caption = 'Responsável:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 430
      Top = 114
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbMmDisposicao: TDBMemo
      Left = 7
      Top = 15
      Width = 574
      Height = 91
      DataField = 'Descricao_disposicao'
      DataSource = dsTabela_Conformidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnKeyPress = dbMmDisposicaoKeyPress
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 693
    Width = 1145
    Height = 32
    Align = alBottom
    TabOrder = 2
    object btnIncluir: TBitBtn
      Left = 13
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = btnIncluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 106
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btnSalvar: TBitBtn
      Left = 504
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 2
      OnClick = btnSalvarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancelar: TBitBtn
      Left = 586
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = btnCancelarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnSair: TBitBtn
      Left = 1062
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 4
      OnClick = btnSairClick
      Kind = bkClose
    end
    object BtnFiltro: TBitBtn
      Left = 840
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Filtro'
      Default = True
      ModalResult = 1
      TabOrder = 5
      OnClick = BtnFiltroClick
      NumGlyphs = 2
    end
  end
  object dbedtNorma: TDBEdit
    Left = 345
    Top = 169
    Width = 184
    Height = 21
    DataField = 'Requisito_norma'
    DataSource = dsTabela_Conformidade
    Enabled = False
    TabOrder = 3
  end
  object dbLcTipo: TDBLookupComboBox
    Left = 679
    Top = 168
    Width = 169
    Height = 21
    DataField = 'tipo_NC'
    DataSource = dsTabela_Conformidade
    Enabled = False
    KeyField = 'Codigo'
    ListField = 'Descricao'
    ListSource = dsTipo_NC
    TabOrder = 4
  end
  object dbrgReal_potencial: TDBRadioGroup
    Left = 1000
    Top = 152
    Width = 145
    Height = 43
    Columns = 2
    DataField = 'Real_Potencial'
    DataSource = dsTabela_Conformidade
    Enabled = False
    Items.Strings = (
      'Real'
      'Potencial')
    TabOrder = 5
    Values.Strings = (
      '0'
      '1')
  end
  object dbgConformidade: TDBGrid
    Left = 3
    Top = 0
    Width = 1140
    Height = 153
    DataSource = dsTabela_Conformidade
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Sequencial'
        Title.Caption = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Responsavel_identif'
        Title.Caption = 'Responsavel pela Identif'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Requisito_norma'
        Title.Caption = 'Requisito da Norma'
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Resp_disposicao'
        Title.Caption = 'Responsavel da Disposição'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_diposicao'
        Title.Caption = 'Data da Disposicao'
        Width = 208
        Visible = True
      end>
  end
  object dbcmbLocal: TDBComboBox
    Left = 852
    Top = 167
    Width = 145
    Height = 21
    DataField = 'Local'
    DataSource = dsTabela_Conformidade
    Enabled = False
    ItemHeight = 13
    Items.Strings = (
      'Operacional'
      'RH'
      'Financeiro'
      'Gestão'
      'Informática'
      'Comercial'
      'SMS'
      'Compras')
    TabOrder = 7
  end
  object dbedtDtdisposicao: TDBEdit
    Left = 1016
    Top = 304
    Width = 121
    Height = 21
    DataField = 'Data_diposicao'
    DataSource = dsTabela_Conformidade
    Enabled = False
    MaxLength = 10
    TabOrder = 8
    OnKeyPress = dbedtDtdisposicaoKeyPress
  end
  object dbedtResponsavel: TDBEdit
    Left = 634
    Top = 304
    Width = 343
    Height = 21
    DataField = 'Resp_disposicao'
    DataSource = dsTabela_Conformidade
    Enabled = False
    TabOrder = 9
  end
  object dbedtUsuario: TDBEdit
    Left = 196
    Top = 169
    Width = 140
    Height = 21
    DataField = 'Responsavel_identif'
    DataSource = dsTabela_Conformidade
    Enabled = False
    TabOrder = 10
  end
  object dbedtData: TDBEdit
    Left = 62
    Top = 169
    Width = 125
    Height = 21
    DataField = 'data'
    DataSource = dsTabela_Conformidade
    Enabled = False
    MaxLength = 10
    TabOrder = 11
    OnKeyPress = dbedtDataKeyPress
  end
  object dbedtRespAnalise: TDBEdit
    Left = 81
    Top = 485
    Width = 301
    Height = 21
    DataField = 'Resp_Analise_Causas'
    DataSource = dsTabela_Conformidade
    Enabled = False
    TabOrder = 13
  end
  object dbEdtDTAnalise: TDBEdit
    Left = 417
    Top = 485
    Width = 121
    Height = 21
    DataField = 'Dt_Analise_Causas'
    DataSource = dsTabela_Conformidade
    Enabled = False
    MaxLength = 10
    TabOrder = 14
    OnKeyPress = dbEdtDTAnaliseKeyPress
  end
  object dbedtRespImplementacao: TDBEdit
    Left = 105
    Top = 664
    Width = 263
    Height = 21
    DataField = 'Resp_Implementacao'
    DataSource = dsTabela_Conformidade
    Enabled = False
    TabOrder = 16
  end
  object dbedtDtImplementacao: TDBEdit
    Left = 402
    Top = 664
    Width = 121
    Height = 21
    DataField = 'DT_Implementacao'
    DataSource = dsTabela_Conformidade
    Enabled = False
    MaxLength = 10
    TabOrder = 17
    OnKeyPress = dbedtDtImplementacaoKeyPress
  end
  object GroupBox5: TGroupBox
    Left = 552
    Top = 329
    Width = 592
    Height = 225
    Caption = 'Proposta de Ação Corretiva/Preventiva'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    object Label14: TLabel
      Left = 6
      Top = 131
      Width = 67
      Height = 13
      Caption = 'Aprovado por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 9
      Top = 16
      Width = 126
      Height = 13
      Caption = 'Ação Corretiva/Preventiva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 5
      Top = 155
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 175
      Top = 158
      Width = 265
      Height = 13
      Caption = 'Análise de Risco da Ação ( Aplicável à 18001)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbedtDtAcao: TDBEdit
      Left = 35
      Top = 151
      Width = 126
      Height = 21
      DataField = 'Dt_Acoes_Corretiva'
      DataSource = dsTabela_Conformidade
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      OnKeyPress = dbedtDtAcaoKeyPress
    end
    object dbedtAprovadoAcao: TDBEdit
      Left = 77
      Top = 127
      Width = 356
      Height = 21
      DataField = 'Aprovado_Acoes_Corretiva'
      DataSource = dsTabela_Conformidade
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 576
      Height = 92
      DataSource = dsProposta
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Desc_Acoes_Corretiva'
          Title.Caption = 'Descrição'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Resp_Acoes_Corretiva'
          Title.Caption = 'Responsavel'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Prazo_Acoes_Corretiva'
          Title.Caption = 'Prazo'
          Width = 140
          Visible = True
        end>
    end
    object btnIncluirAcao: TButton
      Left = 437
      Top = 126
      Width = 72
      Height = 21
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnIncluirAcaoClick
    end
    object btnAlterarAcao: TBitBtn
      Left = 515
      Top = 126
      Width = 68
      Height = 21
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnAlterarAcaoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object dbMmAcao: TDBMemo
      Left = 8
      Top = 176
      Width = 579
      Height = 43
      DataField = 'Desc_Analise_Risco'
      DataSource = dsTabela_Conformidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = dbMmAcaoKeyPress
    end
  end
  object pnlLocTipo: TPanel
    Left = 427
    Top = 323
    Width = 230
    Height = 214
    BevelWidth = 5
    BorderStyle = bsSingle
    TabOrder = 19
    Visible = False
    object Label5: TLabel
      Left = 17
      Top = 37
      Width = 54
      Height = 13
      Caption = 'Tipo de NC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 18
      Top = 83
      Width = 26
      Height = 13
      Caption = 'Local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 19
      Top = 128
      Width = 49
      Height = 13
      Caption = 'Tipo Ação'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnFiltrar: TBitBtn
      Left = 24
      Top = 174
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnFiltrarClick
      NumGlyphs = 2
    end
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 216
      Height = 27
      Align = alTop
      Caption = 'Local / Tipo'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object cmbTipo: TComboBox
      Left = 15
      Top = 53
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = cmbTipoChange
    end
    object btnFechar: TBitBtn
      Left = 128
      Top = 174
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Default = True
      ModalResult = 1
      TabOrder = 3
      OnClick = btnFecharClick
      NumGlyphs = 2
    end
    object cmbLocal: TComboBox
      Left = 17
      Top = 100
      Width = 189
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnChange = cmbLocalChange
      Items.Strings = (
        ''
        'Todos'
        'Operacional'
        'RH'
        'Financeiro'
        'Gestão'
        'Informática'
        'Comercial'
        'SMS'
        'Compras')
    end
    object cmbTipoAcao: TComboBox
      Left = 17
      Top = 144
      Width = 189
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      OnChange = cmbTipoAcaoChange
      Items.Strings = (
        ''
        'Todos'
        'Corretiva'
        'Preventiva')
    end
  end
  object pnlAcao: TPanel
    Left = 347
    Top = 267
    Width = 382
    Height = 192
    BevelWidth = 5
    BorderStyle = bsSingle
    TabOrder = 21
    Visible = False
    object Label15: TLabel
      Left = 16
      Top = 40
      Width = 132
      Height = 13
      Caption = 'Ação Corretiva / Preventiva'
    end
    object Label16: TLabel
      Left = 17
      Top = 77
      Width = 116
      Height = 13
      Caption = 'Responsável pela Ação:'
    end
    object Label21: TLabel
      Left = 18
      Top = 114
      Width = 30
      Height = 13
      Caption = 'Prazo:'
    end
    object btnOk: TBitBtn
      Left = 17
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Default = True
      ModalResult = 1
      TabOrder = 3
      OnClick = btnOkClick
      NumGlyphs = 2
    end
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 368
      Height = 27
      Align = alTop
      Caption = 'Cadastrar Proposta de Ação Corretiva/Preventiva'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object btnClose: TBitBtn
      Left = 272
      Top = 153
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Default = True
      ModalResult = 1
      TabOrder = 5
      OnClick = btnCloseClick
      NumGlyphs = 2
    end
    object edtResponsavel: TEdit
      Left = 16
      Top = 91
      Width = 344
      Height = 21
      TabOrder = 1
    end
    object edtPrazo: TEdit
      Left = 16
      Top = 127
      Width = 127
      Height = 21
      MaxLength = 10
      TabOrder = 2
      OnKeyPress = edtPrazoKeyPress
    end
    object edtAcao: TEdit
      Left = 16
      Top = 56
      Width = 345
      Height = 21
      TabOrder = 0
    end
  end
  object dgrbAcao: TDBRadioGroup
    Left = 1003
    Top = 476
    Width = 130
    Height = 28
    Columns = 2
    DataField = 'Analise_Risco'
    DataSource = dsTabela_Conformidade
    Enabled = False
    Items.Strings = (
      'Não'
      'Sim')
    TabOrder = 22
    Values.Strings = (
      '0'
      '1')
  end
  object dbcmbTipoAcao: TDBComboBox
    Left = 532
    Top = 168
    Width = 145
    Height = 21
    DataField = 'Tipo_Acao'
    DataSource = dsTabela_Conformidade
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'Corretiva'
      'Preventiva')
    ParentFont = False
    TabOrder = 23
  end
  object qrTipo_NC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Tipos_NC'
      'order by Codigo')
    Left = 216
    Top = 112
    object qrTipo_NCCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 3
    end
    object qrTipo_NCDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 100
    end
  end
  object dsTipo_NC: TDataSource
    DataSet = qrTipo_NC
    Left = 256
    Top = 112
  end
  object tbNaoConformidade: TTable
    AfterScroll = tbNaoConformidadeAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Nao_Conformidade'
    Left = 640
    Top = 72
    object tbNaoConformidadeSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
    object tbNaoConformidadeResponsavel_identif: TStringField
      FieldName = 'Responsavel_identif'
      FixedChar = True
      Size = 50
    end
    object tbNaoConformidadedata: TDateTimeField
      FieldName = 'data'
    end
    object tbNaoConformidadeRequisito_norma: TStringField
      FieldName = 'Requisito_norma'
      FixedChar = True
      Size = 200
    end
    object tbNaoConformidadeLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 100
    end
    object tbNaoConformidadeReal_Potencial: TIntegerField
      FieldName = 'Real_Potencial'
    end
    object tbNaoConformidadeDescricao_conformidade: TMemoField
      FieldName = 'Descricao_conformidade'
      BlobType = ftMemo
    end
    object tbNaoConformidadeDescricao_disposicao: TMemoField
      FieldName = 'Descricao_disposicao'
      BlobType = ftMemo
    end
    object tbNaoConformidadeResp_disposicao: TStringField
      FieldName = 'Resp_disposicao'
      FixedChar = True
      Size = 100
    end
    object tbNaoConformidadeData_diposicao: TDateTimeField
      FieldName = 'Data_diposicao'
    end
    object tbNaoConformidadetipo_NC: TIntegerField
      FieldName = 'tipo_NC'
    end
    object tbNaoConformidadeDesc_Analise_Causas: TMemoField
      FieldName = 'Desc_Analise_Causas'
      BlobType = ftMemo
    end
    object tbNaoConformidadeResp_Analise_Causas: TStringField
      FieldName = 'Resp_Analise_Causas'
      FixedChar = True
      Size = 100
    end
    object tbNaoConformidadeDt_Analise_Causas: TDateTimeField
      FieldName = 'Dt_Analise_Causas'
    end
    object tbNaoConformidadeAprovado_Acoes_Corretiva: TStringField
      FieldName = 'Aprovado_Acoes_Corretiva'
      FixedChar = True
      Size = 100
    end
    object tbNaoConformidadeDt_Acoes_Corretiva: TDateTimeField
      FieldName = 'Dt_Acoes_Corretiva'
    end
    object tbNaoConformidadeDes_Implementacao: TMemoField
      FieldName = 'Des_Implementacao'
      BlobType = ftMemo
    end
    object tbNaoConformidadeResp_Implementacao: TStringField
      FieldName = 'Resp_Implementacao'
      FixedChar = True
      Size = 100
    end
    object tbNaoConformidadeDT_Implementacao: TDateTimeField
      FieldName = 'DT_Implementacao'
    end
    object tbNaoConformidadeVerifica_Implementacao: TStringField
      FieldName = 'Verifica_Implementacao'
      FixedChar = True
      Size = 255
    end
    object tbNaoConformidadeVerifica_Eficacia: TStringField
      FieldName = 'Verifica_Eficacia'
      FixedChar = True
      Size = 255
    end
    object tbNaoConformidadeVerificado_por: TStringField
      FieldName = 'Verificado_por'
      FixedChar = True
      Size = 100
    end
    object tbNaoConformidadeDT_Verificado_por: TDateTimeField
      FieldName = 'DT_Verificado_por'
    end
    object tbNaoConformidadeEncerrado_por: TStringField
      FieldName = 'Encerrado_por'
      FixedChar = True
      Size = 100
    end
    object tbNaoConformidadeDT_Encerrado_por: TDateTimeField
      FieldName = 'DT_Encerrado_por'
    end
    object tbNaoConformidadeDesc_Analise_Risco: TMemoField
      FieldName = 'Desc_Analise_Risco'
      BlobType = ftMemo
    end
    object tbNaoConformidadeAnalise_Risco: TIntegerField
      FieldName = 'Analise_Risco'
    end
    object tbNaoConformidadeTipo_Acao: TStringField
      FieldName = 'Tipo_Acao'
      FixedChar = True
    end
  end
  object dsTabela_Conformidade: TDataSource
    DataSet = tbNaoConformidade
    Left = 680
    Top = 72
  end
  object qrInsertAcao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [MS2000].[dbo].[Proposta_de_acao]'
      '           ([Pk_ID]'
      '           ,[Desc_Acoes_Corretiva]'
      '           ,[Resp_Acoes_Corretiva]'
      '           ,[Prazo_Acoes_Corretiva]'
      '           ,[Usuario])'
      '     VALUES'
      '           (:sequencial'
      '           ,:Descricao'
      '           ,:Responsavel'
      '           ,:Prazo'
      '           ,:usuario)'
      '')
    Left = 187
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sequencial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Responsavel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Prazo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
  end
  object dsProposta: TDataSource
    DataSet = qrProposta
    Left = 115
    Top = 320
  end
  object qrProposta: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select pa.Sequencial, pa.Desc_Acoes_Corretiva,pa.Resp_Acoes_Corr' +
        'etiva,pa.Prazo_Acoes_Corretiva from Nao_Conformidade as nc '
      'inner join proposta_de_acao as pa on nc.Sequencial = pa.pk_id'
      'where nc.Sequencial =:seq')
    Left = 179
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptInput
      end>
    object qrPropostaDesc_Acoes_Corretiva: TStringField
      FieldName = 'Desc_Acoes_Corretiva'
      FixedChar = True
      Size = 255
    end
    object qrPropostaResp_Acoes_Corretiva: TStringField
      FieldName = 'Resp_Acoes_Corretiva'
      FixedChar = True
      Size = 200
    end
    object qrPropostaPrazo_Acoes_Corretiva: TDateTimeField
      FieldName = 'Prazo_Acoes_Corretiva'
    end
    object qrPropostaSequencial: TAutoIncField
      FieldName = 'Sequencial'
    end
  end
  object qrUsuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Usuarios where Usuario = :usu')
    Left = 120
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object qrUsuarioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object qrUpdateAcao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE [MS2000].[dbo].[Proposta_de_acao]'
      '   SET [Desc_Acoes_Corretiva] = :descricao '
      '   ,[Resp_Acoes_Corretiva] = :responsavel'
      '   ,[Prazo_Acoes_Corretiva] = :prazo     '
      ' WHERE sequencial = :seq')
    Left = 251
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'responsavel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prazo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq'
        ParamType = ptUnknown
      end>
  end
end
