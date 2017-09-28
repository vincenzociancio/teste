object f_TiposAvisosAuto: Tf_TiposAvisosAuto
  Left = 204
  Top = 161
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Tipos de Avisos Automáticos por e-Mail'
  ClientHeight = 324
  ClientWidth = 655
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
    Width = 560
    Height = 324
    Align = alClient
    TabOrder = 0
    object pnlPrincipal: TPanel
      Left = 1
      Top = 1
      Width = 558
      Height = 191
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object dbGrdTipo: TDBGrid
        Left = 16
        Top = 16
        Width = 529
        Height = 175
        DataSource = dsTipo
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
            FieldName = 'codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 366
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tem_parametro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Somente_HTML'
            Title.Caption = 'HTML'
            Width = 39
            Visible = True
          end>
      end
    end
    object pnlCampos: TPanel
      Left = 1
      Top = 192
      Width = 558
      Height = 131
      Align = alBottom
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Código'
      end
      object Label2: TLabel
        Left = 64
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Descrição'
      end
      object Label3: TLabel
        Left = 16
        Top = 80
        Width = 124
        Height = 13
        Caption = 'Observação do Parâmetro'
      end
      object dbEdtObs: TDBEdit
        Left = 16
        Top = 96
        Width = 529
        Height = 21
        DataField = 'obs_parametro'
        DataSource = dsTipo
        TabOrder = 4
      end
      object dbedtCod: TDBEdit
        Left = 16
        Top = 24
        Width = 41
        Height = 21
        CharCase = ecUpperCase
        DataField = 'codigo'
        DataSource = dsTipo
        TabOrder = 0
        OnChange = dbedtCodChange
      end
      object dbedtDesc: TDBEdit
        Left = 64
        Top = 24
        Width = 481
        Height = 21
        DataField = 'descricao'
        DataSource = dsTipo
        TabOrder = 1
      end
      object dbcbParam: TDBCheckBox
        Left = 208
        Top = 56
        Width = 97
        Height = 17
        Caption = 'Tem Parâmetros'
        DataField = 'Tem_parametro'
        DataSource = dsTipo
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = dbcbParamClick
      end
      object dbcbHTML: TDBCheckBox
        Left = 16
        Top = 56
        Width = 153
        Height = 17
        Caption = 'Somente e-Mails em HTML'
        DataField = 'Somente_HTML'
        DataSource = dsTipo
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = dbcbParamClick
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 560
    Top = 0
    Width = 95
    Height = 324
    Align = alRight
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 9
      Top = 19
      Width = 75
      Height = 25
      Hint = 'Novo Tipo'
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
      Hint = 'Alterar dados do Tipo'
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
      Hint = 'Excluir Tipo'
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
      Top = 164
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
      Top = 199
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
      Top = 280
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Tipos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnFecharClick
      Kind = bkClose
    end
  end
  object tbTipo: TTable
    AfterOpen = tbTipoAfterPost
    BeforeInsert = tbTipoBeforeEdit
    BeforeEdit = tbTipoBeforeEdit
    AfterPost = tbTipoAfterPost
    AfterCancel = tbTipoAfterPost
    AfterScroll = tbTipoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Tipos_Email_Aviso'
    Left = 120
    object tbTipocodigo: TStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 4
    end
    object tbTipodescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 50
    end
    object tbTipoTem_parametro: TSmallintField
      FieldName = 'Tem_parametro'
    end
    object tbTipoobs_parametro: TStringField
      FieldName = 'obs_parametro'
      FixedChar = True
      Size = 255
    end
    object tbTipoSomente_HTML: TSmallintField
      FieldName = 'Somente_HTML'
    end
  end
  object dsTipo: TDataSource
    DataSet = tbTipo
    Left = 120
    Top = 40
  end
  object qrAvisos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT E.Tipo'
      
        'FROM Parametros AS P INNER JOIN Emails_avisos AS E ON P.Filial =' +
        ' E.Filial AND P.Empresa = E.Empresa'
      'WHERE E.Tipo = :tipo')
    Left = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qrAvisosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Tipo'
      FixedChar = True
      Size = 4
    end
  end
  object qrParam: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial'
      'FROM Parametros')
    Left = 168
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
end
