object f_AutorizacaoRegContas: Tf_AutorizacaoRegContas
  Left = 51
  Top = 152
  BorderStyle = bsNone
  Caption = 'Cadastro de Contas'
  ClientHeight = 280
  ClientWidth = 603
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
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 280
    Align = alClient
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 510
      Top = 8
      Width = 9
      Height = 260
      Shape = bsLeftLine
    end
    object Label1: TLabel
      Left = 18
      Top = 186
      Width = 37
      Height = 13
      Caption = 'Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 155
      Top = 186
      Width = 47
      Height = 13
      Caption = 'Agência'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 291
      Top = 186
      Width = 34
      Height = 13
      Caption = 'Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 227
      Width = 187
      Height = 13
      Caption = 'Conta Corrente ( CONTABILIZA )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnFechar: TBitBtn
      Left = 522
      Top = 184
      Width = 75
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
      TabOrder = 0
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object btnCancelar: TBitBtn
      Left = 522
      Top = 146
      Width = 75
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
      TabOrder = 1
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
    object btnGravar: TBitBtn
      Left = 522
      Top = 119
      Width = 75
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
      TabOrder = 2
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
    object btnExcluir: TBitBtn
      Left = 522
      Top = 81
      Width = 75
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
    object btnAlterar: TBitBtn
      Left = 522
      Top = 54
      Width = 75
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
      TabOrder = 4
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
    object btnNovo: TBitBtn
      Left = 522
      Top = 27
      Width = 75
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
      TabOrder = 5
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
    object dbGridDestinatario: TDBGrid
      Left = 8
      Top = 8
      Width = 497
      Height = 169
      DataSource = dsAutRegCont
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Banco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QNOME'
          Title.Caption = 'Conta Corrente - ( CONTABILIZA ) '
          Visible = True
        end>
    end
    object dbeBanco: TDBEdit
      Left = 18
      Top = 200
      Width = 121
      Height = 21
      DataField = 'Banco'
      DataSource = dsTBAutRegCont
      Enabled = False
      TabOrder = 7
    end
    object dbeAgencia: TDBEdit
      Left = 154
      Top = 200
      Width = 121
      Height = 21
      DataField = 'Agencia'
      DataSource = dsTBAutRegCont
      Enabled = False
      TabOrder = 8
    end
    object dbeConta: TDBEdit
      Left = 290
      Top = 200
      Width = 99
      Height = 21
      DataField = 'Conta'
      DataSource = dsTBAutRegCont
      Enabled = False
      TabOrder = 9
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 244
      Width = 377
      Height = 21
      DataField = 'CONTAC'
      DataSource = dsTBAutRegCont
      KeyField = 'Codigo'
      ListField = 'QNOME'
      ListSource = DSQCC
      TabOrder = 10
    end
  end
  object qrAutRegCont: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Autorizacao_Registros_Contas.Banco, Autorizacao_Registros' +
        '_Contas.Agencia, Autorizacao_Registros_Contas.Conta, CC.Codigo, ' +
        '[CC].[DESCRICAO]+" - Banco:"+[cc].[banco]+" - Agência:"+[cc].[ag' +
        'encia]+" - C/C:"+[CC].[CONTA_CORRENTE] AS QNOME'
      
        'FROM Autorizacao_Registros_Contas LEFT JOIN Contas_Correntes AS ' +
        'CC ON Autorizacao_Registros_Contas.CONTAC = CC.Codigo'
      
        'ORDER BY Autorizacao_Registros_Contas.Banco, Autorizacao_Registr' +
        'os_Contas.Agencia, Autorizacao_Registros_Contas.Conta, [CC].[DES' +
        'CRICAO]+" - Banco:"+[cc].[banco]+" - Agência:"+[cc].[agencia]+" ' +
        '- C/C:"+[CC].[CONTA_CORRENTE];')
    Left = 96
    object qrAutRegContBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object qrAutRegContAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object qrAutRegContConta: TStringField
      FieldName = 'Conta'
      Size = 8
    end
    object qrAutRegContCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object qrAutRegContQNOME: TStringField
      FieldName = 'QNOME'
      Size = 255
    end
  end
  object dsAutRegCont: TDataSource
    DataSet = qrAutRegCont
    Left = 96
    Top = 16
  end
  object tbAutRegCont: TTable
    AfterPost = tbAutRegContAfterPost
    BeforeDelete = tbAutRegContBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Banco;Agencia;Conta'
    MasterFields = 'Banco;Agencia;Conta'
    MasterSource = dsAutRegCont
    TableName = 'Autorizacao_Registros_Contas'
    Left = 136
    object tbAutRegContBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object tbAutRegContAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object tbAutRegContConta: TStringField
      FieldName = 'Conta'
      Size = 8
    end
    object tbAutRegContCONTAC: TIntegerField
      FieldName = 'CONTAC'
    end
  end
  object dsTBAutRegCont: TDataSource
    DataSet = tbAutRegCont
    Left = 136
    Top = 32
  end
  object QCC: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT CC.Codigo, [CC].[DESCRICAO]+" - Banco:"+[cc].[banco]+" - ' +
        'Agência:"+[cc].[agencia]+" - C/C:"+[CC].[CONTA_CORRENTE] AS QNOM' +
        'E, CC.ASCAA'
      'FROM Contas_Correntes AS CC'
      'WHERE (((CC.ASCAA)=1))'
      
        'ORDER BY [CC].[DESCRICAO]+" - Banco:"+[cc].[banco]+" - Agência:"' +
        '+[cc].[agencia]+" - C/C:"+[CC].[CONTA_CORRENTE];')
    Left = 288
    Top = 8
    object QCCCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object QCCQNOME: TStringField
      FieldName = 'QNOME'
      FixedChar = True
      Size = 90
    end
    object QCCASCAA: TIntegerField
      FieldName = 'ASCAA'
    end
  end
  object DSQCC: TDataSource
    DataSet = QCC
    Left = 296
    Top = 16
  end
end
