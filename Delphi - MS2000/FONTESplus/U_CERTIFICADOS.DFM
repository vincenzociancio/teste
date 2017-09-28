object F_Certificados: TF_Certificados
  Left = 165
  Top = 103
  BorderStyle = bsSingle
  Caption = 'Certificados'
  ClientHeight = 233
  ClientWidth = 628
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 233
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 1
    TabOrder = 0
    object Label18: TLabel
      Left = 8
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Certificado'
    end
    object Label19: TLabel
      Left = 73
      Top = 16
      Width = 89
      Height = 13
      Caption = 'Tipo de Certificado'
    end
    object Label20: TLabel
      Left = 360
      Top = 16
      Width = 71
      Height = 13
      Caption = 'Vigência Inicial'
    end
    object Label21: TLabel
      Left = 9
      Top = 176
      Width = 58
      Height = 13
      Caption = 'Observação'
    end
    object Bevel1: TBevel
      Left = 532
      Top = 3
      Width = 9
      Height = 227
      Shape = bsLeftLine
    end
    object Label1: TLabel
      Left = 440
      Top = 16
      Width = 66
      Height = 13
      Caption = 'Vigência Final'
    end
    object Label16: TLabel
      Left = 8
      Top = 136
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object Label17: TLabel
      Left = 73
      Top = 136
      Width = 91
      Height = 13
      Caption = 'Local de Inventário'
    end
    object Label13: TLabel
      Left = 73
      Top = 56
      Width = 50
      Height = 13
      Caption = 'Importador'
    end
    object Label22: TLabel
      Left = 73
      Top = 96
      Width = 40
      Height = 13
      Caption = 'Contrato'
    end
    object Label15: TLabel
      Left = 8
      Top = 96
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Código'
    end
    object cmbTipo: TDBLookupComboBox
      Left = 73
      Top = 32
      Width = 272
      Height = 21
      DataField = 'Tipo'
      DataSource = DS_Certificados
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = DS_Tipo
      TabOrder = 0
    end
    object btnNovo: TBitBtn
      Left = 544
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Novo Exportador'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object btnExcluir: TBitBtn
      Left = 544
      Top = 30
      Width = 75
      Height = 25
      Hint = 'Excluir Exportador'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 544
      Top = 57
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Exportador'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
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
    object btnGravar: TBitBtn
      Left = 544
      Top = 84
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btnGravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btnCancelar: TBitBtn
      Left = 544
      Top = 111
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
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
    object btnLocalizar: TBitBtn
      Left = 544
      Top = 138
      Width = 75
      Height = 25
      Hint = 'Localizar um Exportador'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = btnLocalizarClick
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
    object btnImprime: TBitBtn
      Left = 544
      Top = 165
      Width = 75
      Height = 25
      Hint = 'Imprimir dados do Exportador'
      Caption = '&Imprimir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
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
    object btnFecha: TBitBtn
      Left = 544
      Top = 202
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Exportadores'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnClick = btnFechaClick
      Kind = bkClose
    end
    object edtObs: TDBEdit
      Left = 9
      Top = 192
      Width = 512
      Height = 21
      DataField = 'Observacoes'
      DataSource = DS_Certificados
      Enabled = False
      TabOrder = 9
    end
    object cmbImport: TDBLookupComboBox
      Left = 73
      Top = 72
      Width = 448
      Height = 21
      DataField = 'Importador'
      DataSource = DS_Certificados
      Enabled = False
      KeyField = 'Codigo'
      ListField = 'Razão Social'
      ListFieldIndex = 1
      ListSource = DS_Importadores
      TabOrder = 4
    end
    object cmbContrato: TDBLookupComboBox
      Left = 73
      Top = 112
      Width = 448
      Height = 21
      DataField = 'Contrato'
      DataSource = DS_Certificados
      Enabled = False
      KeyField = 'Contrato'
      ListField = 'Descricao'
      ListSource = DS_Contratos
      TabOrder = 6
    end
    object cmbLocal: TDBLookupComboBox
      Left = 73
      Top = 152
      Width = 448
      Height = 21
      DataField = 'Local'
      DataSource = DS_Certificados
      Enabled = False
      KeyField = 'Local'
      ListField = 'Descricao'
      ListSource = DS_Locais
      TabOrder = 8
    end
    object edtCertificado: TDBEdit
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      Color = clSilver
      DataField = 'reg'
      DataSource = DS_Certificados
      Enabled = False
      TabOrder = 18
    end
    object edtImport: TEdit
      Left = 8
      Top = 72
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 3
      OnChange = edtImportChange
    end
    object edtContrato: TEdit
      Left = 8
      Top = 112
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 5
      OnChange = edtContratoChange
    end
    object edtLocal: TEdit
      Left = 8
      Top = 152
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 7
      OnChange = edtLocalChange
    end
    object edtInicial: TEdit
      Left = 360
      Top = 32
      Width = 81
      Height = 21
      Enabled = False
      MaxLength = 10
      TabOrder = 1
      OnChange = edtInicialChange
      OnEnter = edtInicialEnter
      OnExit = edtInicialExit
    end
    object calInicial: TMonthCalendar
      Left = 251
      Top = 51
      Width = 191
      Height = 154
      BorderWidth = 1
      Date = 36882.5901342593
      TabOrder = 19
      Visible = False
      OnClick = calInicialClick
      OnGetMonthInfo = calInicialGetMonthInfo
    end
    object edtFinal: TEdit
      Left = 440
      Top = 32
      Width = 81
      Height = 21
      Enabled = False
      MaxLength = 10
      TabOrder = 2
      OnChange = edtFinalChange
      OnEnter = edtFinalEnter
      OnExit = edtFinalExit
    end
  end
  object calFinal: TMonthCalendar
    Left = 331
    Top = 51
    Width = 191
    Height = 154
    BorderWidth = 1
    Date = 36882.5901342593
    TabOrder = 2
    Visible = False
    OnClick = calFinalClick
    OnGetMonthInfo = calFinalGetMonthInfo
  end
  object pnlLocalizar: TPanel
    Left = 96
    Top = 216
    Width = 417
    Height = 225
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BiDiMode = bdLeftToRight
    BorderWidth = 1
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    object Label26: TLabel
      Left = 16
      Top = 34
      Width = 50
      Height = 13
      Caption = 'Importador'
    end
    object L_busca: TLabel
      Left = 16
      Top = 10
      Width = 143
      Height = 16
      Caption = 'Localizar Certificado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 184
      Top = 24
      Width = 217
      Height = 21
      DataField = 'Reg'
      DataSource = DS_Localizar
      KeyField = 'reg'
      ListField = 'Importador'
      ListSource = DS_Certificados
      TabOrder = 3
      Visible = False
    end
    object btnOK: TBitBtn
      Left = 171
      Top = 187
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = btnOKClick
      Kind = bkOK
    end
    object edtLocalizar: TEdit
      Left = 16
      Top = 48
      Width = 385
      Height = 21
      TabOrder = 0
      OnChange = edtLocalizarChange
      OnEnter = edtLocalizarChange
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 72
      Width = 385
      Height = 109
      DataSource = DS_Localizar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Reg'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao'
          Width = 368
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescCon'
          Width = 368
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescLoc'
          Width = 368
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Obs'
          Width = 369
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VigIni'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VigFin'
          Width = 75
          Visible = True
        end>
    end
  end
  object T_parametros: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 96
    Top = 65528
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
  end
  object DS_parametros: TDataSource
    DataSet = T_parametros
    Left = 112
  end
  object T_Importadores: TTable
    Active = True
    AutoCalcFields = False
    AfterOpen = T_ImportadoresAfterOpen
    AfterScroll = T_ImportadoresAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Importadores'
    Left = 192
    Top = 65528
    object T_ImportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_ImportadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_ImportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      OnChange = T_CertificadosImportadorChange
      Size = 4
    end
    object T_ImportadoresRazoSocial: TStringField
      FieldName = 'Razão Social'
      Size = 60
    end
  end
  object T_Contratos: TTable
    Active = True
    AutoCalcFields = False
    AfterOpen = T_ContratosAfterOpen
    AfterScroll = T_ContratosAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = DS_Importadores
    TableName = 'Contratos'
    Left = 240
    Top = 65528
    object T_ContratosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_ContratosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_ContratosImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_ContratosContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_ContratosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_ContratosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object T_ContratosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object T_ContratosTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
  object T_Locais: TTable
    Active = True
    AutoCalcFields = False
    AfterOpen = T_LocaisAfterOpen
    AfterScroll = T_LocaisAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Importador;Contrato'
    MasterFields = 'Empresa;Filial;Importador;Contrato'
    MasterSource = DS_Contratos
    TableName = 'Locais_Inventario'
    Left = 288
    Top = 65528
    object T_LocaisEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_LocaisFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_LocaisImportador: TStringField
      FieldName = 'Importador'
      Required = True
      Size = 4
    end
    object T_LocaisContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      Size = 8
    end
    object T_LocaisLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_LocaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 250
    end
    object T_LocaisTipo_local: TStringField
      FieldName = 'Tipo_local'
      Size = 4
    end
    object T_LocaisProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 15
    end
    object T_LocaisCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object T_LocaisUnidade_Jur: TStringField
      FieldName = 'Unidade_Jur'
      Size = 7
    end
    object T_LocaisFiel_nome: TStringField
      FieldName = 'Fiel_nome'
      Size = 100
    end
    object T_LocaisFiel_cpf: TStringField
      FieldName = 'Fiel_cpf'
      Size = 18
    end
  end
  object T_Tipo: TTable
    Active = True
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Tipos_Certificados'
    Left = 336
    Top = 65528
  end
  object DS_Importadores: TDataSource
    DataSet = T_Importadores
    Left = 208
  end
  object DS_Contratos: TDataSource
    DataSet = T_Contratos
    Left = 256
  end
  object DS_Locais: TDataSource
    DataSet = T_Locais
    Left = 304
  end
  object DS_Tipo: TDataSource
    DataSet = T_Tipo
    Left = 352
  end
  object T_Certificados: TTable
    Active = True
    AutoCalcFields = False
    AfterScroll = T_CertificadosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Certificados'
    Left = 144
    Top = 65528
    object T_CertificadosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_CertificadosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_CertificadosImportador: TStringField
      FieldName = 'Importador'
      Required = True
      OnChange = T_CertificadosImportadorChange
      Size = 4
    end
    object T_CertificadosContrato: TStringField
      FieldName = 'Contrato'
      Required = True
      OnChange = T_CertificadosContratoChange
      Size = 8
    end
    object T_CertificadosLocal: TStringField
      FieldName = 'Local'
      Required = True
      Size = 4
    end
    object T_Certificadosreg: TAutoIncField
      FieldName = 'reg'
    end
    object T_CertificadosTipo: TStringField
      FieldName = 'Tipo'
      Size = 4
    end
    object T_CertificadosVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object T_CertificadosVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object T_CertificadosObservacoes: TStringField
      FieldName = 'Observacoes'
      Size = 255
    end
  end
  object DS_Certificados: TDataSource
    DataSet = T_Certificados
    Left = 160
  end
  object Q_Localizar: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    Left = 432
    Top = 65528
    object Q_LocalizarRazao: TStringField
      DisplayLabel = 'Importadores'
      FieldName = 'Razao'
    end
    object Q_LocalizarDescCon: TStringField
      DisplayLabel = 'Contratos'
      FieldName = 'DescCon'
    end
    object Q_LocalizarDescLoc: TStringField
      DisplayLabel = 'Locais de Inventário'
      FieldName = 'DescLoc'
    end
    object Q_LocalizarObs: TStringField
      DisplayLabel = 'Observação'
      FieldName = 'Obs'
    end
    object Q_LocalizarVigIni: TDateField
      DisplayLabel = 'Vigência Inicial'
      FieldName = 'VigIni'
    end
    object Q_LocalizarVigFin: TDateField
      DisplayLabel = 'Vigência Final'
      FieldName = 'VigFin'
    end
    object Q_LocalizarReg: TAutoIncField
      FieldName = 'Reg'
    end
  end
  object DS_Localizar: TDataSource
    DataSet = Q_Localizar
    Left = 448
  end
end
