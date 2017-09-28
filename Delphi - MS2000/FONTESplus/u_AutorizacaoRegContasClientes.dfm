object f_AutorizacaoRegContasClientes: Tf_AutorizacaoRegContasClientes
  Left = 257
  Top = 223
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Contas - Clientes'
  ClientHeight = 263
  ClientWidth = 765
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlprincipal: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 263
    Color = 10514464
    TabOrder = 0
    object lblImportador: TLabel
      Left = 241
      Top = 50
      Width = 4
      Height = 16
      Alignment = taCenter
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 503
      Top = 208
      Width = 31
      Height = 13
      Caption = 'Banco'
      FocusControl = dbeBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 547
      Top = 208
      Width = 39
      Height = 13
      Caption = 'Agência'
      FocusControl = dbeAgencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 594
      Top = 208
      Width = 71
      Height = 13
      Caption = 'Conta Corrente'
      FocusControl = dbeContaCorrente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 208
      Width = 33
      Height = 13
      Caption = 'Código'
      FocusControl = dbeBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 208
      Width = 50
      Height = 13
      Caption = 'Importador'
      FocusControl = dbeAgencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 678
      Top = 8
      Width = 4
      Height = 187
      Shape = bsLeftLine
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 7
      Width = 668
      Height = 186
      DataSource = ds_autorizacao_registros_contas_clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
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
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Razão Social'
          Width = 383
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Agencia'
          Title.Caption = 'Agência'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Conta_Corrente'
          Title.Caption = 'Conta Corrente'
          Width = 76
          Visible = True
        end>
    end
    object dbeBanco: TDBEdit
      Left = 503
      Top = 224
      Width = 37
      Height = 21
      DataField = 'Banco'
      DataSource = ds_autorizacao_registros_contas_clientes
      Enabled = False
      TabOrder = 9
      OnKeyPress = dbeBancoKeyPress
    end
    object dbeAgencia: TDBEdit
      Left = 545
      Top = 224
      Width = 44
      Height = 21
      DataField = 'Agencia'
      DataSource = ds_autorizacao_registros_contas_clientes
      Enabled = False
      TabOrder = 10
      OnKeyPress = dbeBancoKeyPress
    end
    object dbeContaCorrente: TDBEdit
      Left = 594
      Top = 224
      Width = 79
      Height = 21
      DataField = 'Conta_Corrente'
      DataSource = ds_autorizacao_registros_contas_clientes
      Enabled = False
      TabOrder = 11
      OnKeyPress = dbeBancoKeyPress
    end
    object dbeImportador: TDBEdit
      Left = 8
      Top = 224
      Width = 37
      Height = 21
      DataField = 'Importador'
      DataSource = ds_autorizacao_registros_contas_clientes
      Enabled = False
      TabOrder = 7
    end
    object dbeRazao_Social: TDBEdit
      Left = 48
      Top = 224
      Width = 449
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Razao_Social'
      DataSource = ds_autorizacao_registros_contas_clientes
      Enabled = False
      TabOrder = 8
    end
    object btnNovo: TBitBtn
      Left = 685
      Top = 8
      Width = 74
      Height = 25
      Hint = 'Novo Exportador'
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      Left = 685
      Top = 35
      Width = 74
      Height = 25
      Hint = 'Alterar dados do Exportador'
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      Left = 685
      Top = 62
      Width = 74
      Height = 25
      Hint = 'Excluir Exportador'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object btnGravar: TBitBtn
      Left = 685
      Top = 100
      Width = 74
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
      Left = 685
      Top = 127
      Width = 74
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Cancel = True
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Left = 685
      Top = 165
      Width = 74
      Height = 25
      Hint = 'Fechar cadastro de Exportadores'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnFecharClick
      Kind = bkClose
    end
  end
  object pnlLocalizar: TPanel
    Left = 256
    Top = -5
    Width = 417
    Height = 233
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 4
    BiDiMode = bdLeftToRight
    BorderWidth = 1
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    object Label14: TLabel
      Left = 16
      Top = 34
      Width = 66
      Height = 13
      Caption = 'Razão Social:'
    end
    object btnOK: TBitBtn
      Left = 176
      Top = 196
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edtLocalizarChange
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 80
      Width = 385
      Height = 109
      DataSource = dsLocalizar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'Código'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Razão Social'
          Width = 314
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Title.Caption = 'CNPJ'
          Width = 110
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 5
      Top = 5
      Width = 407
      Height = 24
      Align = alTop
      Caption = 'Localizar Importador'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object T_autorizacao_registros_contas_clientes: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Razao_Social'
    TableName = 'Autorizacao_Registros_Contas_Clientes'
    Left = 102
    Top = 67
    object T_autorizacao_registros_contas_clientesImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_autorizacao_registros_contas_clientesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object T_autorizacao_registros_contas_clientesBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object T_autorizacao_registros_contas_clientesAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object T_autorizacao_registros_contas_clientesConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
  end
  object ds_autorizacao_registros_contas_clientes: TDataSource
    DataSet = T_autorizacao_registros_contas_clientes
    Left = 105
    Top = 126
  end
  object q_Localizar: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO'
      
        '   FROM Parametros AS P INNER JOIN Importadores AS I ON P.Filial' +
        ' = I.Filial AND P.Empresa = I.Empresa '
      '  WHERE I.Codigo NOT LIKE '#39'X%'#39' AND I.Ativo = 1'
      'ORDER BY I.Razao_Social')
    Left = 517
    Top = 153
    object q_LocalizarCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object q_LocalizarRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object q_LocalizarCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object dsLocalizar: TDataSource
    DataSet = q_Localizar
    Left = 589
    Top = 153
  end
end
