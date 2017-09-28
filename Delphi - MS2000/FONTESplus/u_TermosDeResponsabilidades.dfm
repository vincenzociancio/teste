object frmTermosDeResponsabilidade: TfrmTermosDeResponsabilidade
  Left = 323
  Top = 116
  BorderStyle = bsNone
  Caption = 'Termos de Responsabilidade'
  ClientHeight = 481
  ClientWidth = 971
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 481
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 51
      Width = 109
      Height = 13
      Caption = 'Selecione o Importador'
    end
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 243
      Height = 13
      Caption = 'Informe a Razão Social do Importador para localizar'
    end
    object Label3: TLabel
      Left = 7
      Top = 196
      Width = 99
      Height = 13
      Caption = 'Selecione o Contrato'
    end
    object Label4: TLabel
      Left = 8
      Top = 338
      Width = 150
      Height = 13
      Caption = 'Selecione o Local de Inventário'
    end
    object Label5: TLabel
      Left = 576
      Top = 8
      Width = 132
      Height = 13
      Caption = 'Termo de Responsabilidade'
    end
    object btnNovo: TBitBtn
      Left = 892
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Novo Procurador'
      Caption = '&Novo'
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
      Left = 892
      Top = 63
      Width = 75
      Height = 25
      Hint = 'Excluir Procurador'
      Caption = '&Excluir'
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
      Left = 892
      Top = 36
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Procurador'
      Caption = '&Alterar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Left = 892
      Top = 93
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
      TabOrder = 0
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
      Left = 892
      Top = 120
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
    object btnFechar: TBitBtn
      Left = 893
      Top = 450
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Procuradores'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 69
      Width = 553
      Height = 120
      DataSource = dsImportadores
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Código'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Razao_Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Razão Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 337
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'CNPJ'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 127
          Visible = True
        end>
    end
    object txtLocalizaImp: TEdit
      Left = 8
      Top = 24
      Width = 474
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object btnLocalizar: TBitBtn
      Left = 486
      Top = 24
      Width = 75
      Height = 26
      Hint = 'Localizar um Procurador'
      Caption = '&Localizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
    object DBGrid2: TDBGrid
      Left = 6
      Top = 213
      Width = 553
      Height = 120
      DataSource = dsContrato
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Descrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 456
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 6
      Top = 355
      Width = 553
      Height = 120
      DataSource = dsLocalInventario
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Local'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'Descrição'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 486
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 568
      Top = 24
      Width = 313
      Height = 449
      DataField = 'Termo'
      DataSource = dsTermoDeResponsabilidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object qImportadores: TQuery
    AfterScroll = qImportadoresAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social, CNPJ_CPF_COMPLETO'
      'FROM Importadores'
      'WHERE Ativo = '#39'1'#39'  and Razao_Social like '#39'%:RS%'#39
      'ORDER BY Razao_Social')
    Left = 128
    Top = 88
    object qImportadoresCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qImportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qImportadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object dsImportadores: TDataSource
    DataSet = qImportadores
    Left = 176
    Top = 88
  end
  object qContrato: TQuery
    AfterScroll = qContratoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Contratos.Contrato, Contratos.Descricao, Contratos.Ativo'
      'FROM Contratos'
      
        'WHERE  (Contratos.Importador=:pImportadores) AND ( Contratos.Ati' +
        'vo = 1 )  '
      'ORDER BY Contratos.Descricao;')
    Left = 136
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'pImportadores'
        ParamType = ptInput
      end>
    object qContratoContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object qContratoDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object qContratoAtivo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object dsContrato: TDataSource
    DataSet = qContrato
    Left = 200
    Top = 264
  end
  object qLocalInventario: TQuery
    AfterScroll = qLocalInventarioAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Locais_Inventario.Local, Locais_Inventario.Descricao, Loc' +
        'ais_Inventario.Ativo'
      'FROM Locais_Inventario'
      
        'WHERE Locais_Inventario.Importador=:pImportador AND Locais_Inven' +
        'tario.Contrato=:pContrato AND Locais_Inventario.Ativo = 1 '
      'ORDER BY Locais_Inventario.Descricao')
    Left = 136
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'pImportador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pContrato'
        ParamType = ptInput
      end>
    object qLocalInventarioLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 4
    end
    object qLocalInventarioDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 250
    end
    object qLocalInventarioAtivo: TIntegerField
      FieldName = 'Ativo'
    end
  end
  object dsLocalInventario: TDataSource
    DataSet = qLocalInventario
    Left = 200
    Top = 392
  end
  object qTermoDeResponsabilidade11111: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'select Termo from Termos_De_Responsabilidade where Importador =:' +
        'pImp and Contrato =:pContrato and Local =:pLocal')
    Left = 656
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'pImp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pContrato'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pLocal'
        ParamType = ptInput
      end>
    object qTermoDeResponsabilidade11111Termo: TMemoField
      FieldName = 'Termo'
      BlobType = ftMemo
    end
  end
  object dsTermoDeResponsabilidade: TDataSource
    DataSet = tbTermoDeResponsabilidade
    Left = 808
    Top = 96
  end
  object qEditaTermo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Termos_De_Responsabilidade SET Termo =:pTermo'
      
        ' WHERE Importador =:pImportador and Contrato =:pContrato and Loc' +
        'al =:pLocal')
    Left = 616
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'pTermo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pImportador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pLocal'
        ParamType = ptInput
      end>
  end
  object qInsereTermo: TQuery
    SQL.Strings = (
      
        'INSERT INTO Termos_De_Responsabilidade([Importador],[Contrato],[' +
        'Local],[Termo])'
      'VALUES (:pImportador, :pContrato, :pLocal, :pTermo)')
    Left = 608
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pImportador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pContrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pLocal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pTermo'
        ParamType = ptUnknown
      end>
  end
  object qExcluirTermo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE FROM Termos_De_Responsabilidade'
      
        'WHERE Importador =:pImportador and Contrato =:pContrato and Loca' +
        'l =:pLocal')
    Left = 616
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'pImportador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pContrato'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pLocal'
        ParamType = ptInput
      end>
  end
  object tbTermoDeResponsabilidade: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Termos_De_Responsabilidade'
    Left = 736
    Top = 112
    object tbTermoDeResponsabilidadeImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object tbTermoDeResponsabilidadeContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 8
    end
    object tbTermoDeResponsabilidadeLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 4
    end
    object tbTermoDeResponsabilidadeTermo: TMemoField
      FieldName = 'Termo'
      BlobType = ftMemo
    end
  end
end
