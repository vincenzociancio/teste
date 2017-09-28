object f_CadAvisoAuto: Tf_CadAvisoAuto
  Left = 198
  Top = 160
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Avisos Automáticos por e-Mail'
  ClientHeight = 358
  ClientWidth = 696
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 358
    Align = alClient
    TabOrder = 0
    object pnlPrincipal: TPanel
      Left = 1
      Top = 1
      Width = 598
      Height = 183
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object dbGrdAvisos: TDBGrid
        Left = 16
        Top = 16
        Width = 569
        Height = 166
        DataSource = dsAvisos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Importador'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_completo'
            Width = 342
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Parametros'
            Width = 121
            Visible = True
          end>
      end
    end
    object pnlCampos: TPanel
      Left = 1
      Top = 184
      Width = 598
      Height = 173
      Align = alBottom
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 75
        Height = 13
        Caption = 'Nome Completo'
      end
      object Label3: TLabel
        Left = 400
        Top = 48
        Width = 28
        Height = 13
        Caption = 'e-Mail'
      end
      object Label4: TLabel
        Left = 16
        Top = 88
        Width = 65
        Height = 13
        Caption = 'Tipo de Aviso'
      end
      object Label5: TLabel
        Left = 400
        Top = 88
        Width = 53
        Height = 13
        Caption = 'Parâmetros'
      end
      object Label6: TLabel
        Left = 16
        Top = 128
        Width = 124
        Height = 13
        Caption = 'Observação do Parâmetro'
      end
      object dbLcbCli: TDBLookupComboBox
        Left = 56
        Top = 24
        Width = 529
        Height = 21
        DataField = 'Importador'
        DataSource = dsAvisos
        KeyField = 'Codigo'
        ListField = 'Razao_Social'
        ListSource = dsImport
        TabOrder = 1
      end
      object dbEdtCli: TDBEdit
        Left = 16
        Top = 24
        Width = 41
        Height = 21
        DataField = 'Importador'
        DataSource = dsAvisos
        TabOrder = 0
      end
      object dbEdtNome: TDBEdit
        Left = 16
        Top = 64
        Width = 377
        Height = 21
        DataField = 'Nome_completo'
        DataSource = dsAvisos
        TabOrder = 2
      end
      object dbEdtEmail: TDBEdit
        Left = 400
        Top = 64
        Width = 185
        Height = 21
        DataField = 'Email'
        DataSource = dsAvisos
        TabOrder = 3
      end
      object dbLcbTipo: TDBLookupComboBox
        Left = 56
        Top = 104
        Width = 337
        Height = 21
        DataField = 'Tipo'
        DataSource = dsAvisos
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = dsTipo
        TabOrder = 6
      end
      object dbEdtParam: TDBEdit
        Left = 400
        Top = 104
        Width = 185
        Height = 21
        DataField = 'Parametros'
        DataSource = dsAvisos
        TabOrder = 7
      end
      object dbEdtTipo: TDBEdit
        Left = 16
        Top = 104
        Width = 41
        Height = 21
        DataField = 'Tipo'
        DataSource = dsAvisos
        TabOrder = 5
      end
      object dbEdtObs: TDBEdit
        Left = 16
        Top = 144
        Width = 569
        Height = 21
        Color = clScrollBar
        DataField = 'obs_parametro'
        DataSource = dsTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object dbcbHTML: TDBCheckBox
        Left = 456
        Top = 46
        Width = 129
        Height = 17
        Caption = 'Receber como HTML'
        DataField = 'HTML'
        DataSource = dsAvisos
        Enabled = False
        TabOrder = 4
        ValueChecked = '-1'
        ValueUnchecked = '0'
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 600
    Top = 0
    Width = 96
    Height = 358
    Align = alRight
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 9
      Top = 19
      Width = 75
      Height = 25
      Hint = 'Novo Aviso por E-mail'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object btnAlterar: TBitBtn
      Left = 9
      Top = 54
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Aviso por E-mail'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
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
    object btnExcluir: TBitBtn
      Left = 9
      Top = 89
      Width = 75
      Height = 25
      Hint = 'Excluir Aviso por E-mail'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object btnSalvar: TBitBtn
      Left = 9
      Top = 180
      Width = 75
      Height = 25
      Hint = 'Salvar'
      Caption = '&Salvar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Left = 9
      Top = 215
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
      TabOrder = 4
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
    object btnFechar: TBitBtn
      Left = 8
      Top = 312
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Avisos por E-mail'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnFecharClick
      Kind = bkClose
    end
  end
  object tbAvisos: TTable
    AfterOpen = tbAvisosAfterPost
    BeforeInsert = tbAvisosBeforeInsert
    BeforeEdit = tbAvisosBeforeInsert
    AfterPost = tbAvisosAfterPost
    AfterCancel = tbAvisosAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = dsParam
    TableName = 'Emails_avisos'
    Left = 184
    object tbAvisosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbAvisosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbAvisosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object tbAvisosTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 4
    end
    object tbAvisosEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 50
    end
    object tbAvisosNome_completo: TStringField
      FieldName = 'Nome_completo'
      FixedChar = True
      Size = 50
    end
    object tbAvisosParametros: TStringField
      FieldName = 'Parametros'
      FixedChar = True
      Size = 255
    end
    object tbAvisosHTML: TIntegerField
      FieldName = 'HTML'
    end
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 136
    object qrParamEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Parametros.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrParamFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Parametros.Filial'
      FixedChar = True
      Size = 4
    end
  end
  object dsParam: TDataSource
    DataSet = qrParam
    Left = 152
    Top = 16
  end
  object dsAvisos: TDataSource
    DataSet = tbAvisos
    Left = 200
    Top = 16
  end
  object qrImport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social'
      'FROM Importadores '
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end>
    object qrImportCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qrImportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 60
    end
  end
  object dsImport: TDataSource
    DataSet = qrImport
    Left = 248
    Top = 16
  end
  object qrTipo: TQuery
    AfterScroll = qrTipoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Tipos_Email_Aviso'
      'ORDER BY Descricao')
    Left = 280
    object qrTipocodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Tipos_Email_Aviso.codigo'
      FixedChar = True
      Size = 4
    end
    object qrTipodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Tipos_Email_Aviso.descricao'
      FixedChar = True
      Size = 50
    end
    object qrTipoTem_parametro: TIntegerField
      FieldName = 'Tem_parametro'
      Origin = 'DBNMSCOMEX.Tipos_Email_Aviso.Tem_parametro'
    end
    object qrTipoobs_parametro: TStringField
      FieldName = 'obs_parametro'
      Origin = 'DBNMSCOMEX.Tipos_Email_Aviso.obs_parametro'
      FixedChar = True
      Size = 255
    end
    object qrTipoSomente_HTML: TIntegerField
      FieldName = 'Somente_HTML'
      Origin = 'DBNMSCOMEX.Tipos_Email_Aviso.Somente_HTML'
    end
  end
  object dsTipo: TDataSource
    DataSet = qrTipo
    Left = 296
    Top = 16
  end
end
