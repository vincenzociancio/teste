object frmPlataformas: TfrmPlataformas
  Left = 244
  Top = 173
  BorderStyle = bsSingle
  Caption = 'Plataformas'
  ClientHeight = 415
  ClientWidth = 588
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbControle: TScrollBox
    Left = 500
    Top = 0
    Width = 88
    Height = 396
    Align = alRight
    BorderStyle = bsNone
    Color = clGray
    ParentColor = False
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Hint = 'Novo Produto'
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
      Left = 8
      Top = 56
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Produto'
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
      Left = 8
      Top = 88
      Width = 75
      Height = 25
      Hint = 'Excluir Produto'
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
    object btnGravar: TBitBtn
      Left = 8
      Top = 120
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Left = 8
      Top = 160
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
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
      Left = 9
      Top = 195
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Kind = bkClose
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 396
    Width = 588
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 396
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object gridMain: TDBGrid
      Left = 1
      Top = 146
      Width = 498
      Height = 249
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsPlataforma
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Plataforma'
          Width = 315
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sigla'
          Width = 138
          Visible = True
        end>
    end
    object pnlText: TPanel
      Left = 1
      Top = 1
      Width = 498
      Height = 120
      Align = alTop
      Color = 10514464
      DragMode = dmAutomatic
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 64
        Width = 116
        Height = 13
        Caption = 'Descrição da Plataforma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 360
        Top = 64
        Width = 23
        Height = 13
        Caption = 'Sigla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 360
        Top = 16
        Width = 27
        Height = 13
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 330
        Top = 32
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object edtPlataforma: TEdit
        Left = 16
        Top = 80
        Width = 337
        Height = 21
        TabOrder = 0
      end
      object edtSigla: TEdit
        Left = 360
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edtCliente: TEdit
        Left = 16
        Top = 32
        Width = 313
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtCNPJ: TEdit
        Left = 360
        Top = 32
        Width = 121
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 121
      Width = 498
      Height = 25
      Align = alTop
      TabOrder = 2
      object Label6: TLabel
        Left = 8
        Top = 4
        Width = 94
        Height = 13
        Caption = 'Localizar plataforma'
      end
      object edtLocalizarPlataforma: TEdit
        Left = 109
        Top = 2
        Width = 386
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = edtLocalizarPlataformaChange
      end
    end
    object pnlImport: TPanel
      Left = 18
      Top = 110
      Width = 465
      Height = 209
      BevelWidth = 3
      BorderWidth = 1
      TabOrder = 3
      Visible = False
      object Panel1: TPanel
        Left = 4
        Top = 4
        Width = 457
        Height = 20
        Align = alTop
        Caption = 'Seleção de Clientes'
        Color = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 49
        Width = 457
        Height = 120
        Align = alTop
        DataSource = dtsImport
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
            FieldName = 'Razao_Social'
            Title.Caption = 'Cliente'
            Width = 305
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPF_COMPLETO'
            Title.Caption = 'CNPJ'
            Width = 113
            Visible = True
          end>
      end
      object BitBtn1: TBitBtn
        Left = 142
        Top = 176
        Width = 89
        Height = 25
        Caption = 'Confirmar'
        ModalResult = 1
        TabOrder = 2
        OnClick = BitBtn1Click
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
      object BitBtn2: TBitBtn
        Left = 234
        Top = 176
        Width = 89
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = BitBtn2Click
        Kind = bkCancel
      end
      object Panel2: TPanel
        Left = 4
        Top = 24
        Width = 457
        Height = 25
        Align = alTop
        TabOrder = 4
        object Label5: TLabel
          Left = 8
          Top = 4
          Width = 76
          Height = 13
          Caption = 'Localizar cliente'
        end
        object edtLocalizar: TEdit
          Left = 88
          Top = 2
          Width = 366
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = edtLocalizarChange
        end
      end
    end
  end
  object qryMain: TQuery
    AfterScroll = qryMainAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' PK_Plataforma'
      ' ,FK_Importador'
      ' ,Plataforma'
      ' ,Sigla'
      ' ,Excluido'
      ' ,Razao_Social'
      ' ,CNPJ_CPF_COMPLETO'
      'from '
      ' Plataformas'
      ' inner join Importadores on (Codigo = FK_Importador)'
      'where'
      ' Excluido = 0')
    Left = 456
    Top = 280
    object qryMainPK_Plataforma: TAutoIncField
      FieldName = 'PK_Plataforma'
      Origin = 'DBNMSCOMEX.Plataformas.PK_Plataforma'
    end
    object qryMainFK_Importador: TStringField
      FieldName = 'FK_Importador'
      Origin = 'DBNMSCOMEX.Plataformas.FK_Importador'
      FixedChar = True
      Size = 4
    end
    object qryMainPlataforma: TStringField
      DisplayLabel = 'Descrição da Plataforma'
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Plataformas.Plataforma'
      FixedChar = True
      Size = 30
    end
    object qryMainSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'DBNMSCOMEX.Plataformas.Sigla'
      FixedChar = True
      Size = 10
    end
    object qryMainExcluido: TBooleanField
      FieldName = 'Excluido'
      Origin = 'DBNMSCOMEX.Plataformas.Excluido'
    end
    object qryMainRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryMainCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object dsPlataforma: TDataSource
    DataSet = qryMain
    Left = 424
    Top = 296
  end
  object qryExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 160
    Top = 248
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Plataformas'
      '(FK_Importador, Plataforma, Sigla)'
      'values'
      '(:FK_Importador, :Plataforma, :Sigla)')
    Left = 88
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Plataforma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Sigla'
        ParamType = ptUnknown
      end>
  end
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Plataformas'
      'set '
      ' FK_Importador=:FK_Importador,'
      ' Plataforma=:Plataforma,'
      ' Sigla=:Sigla'
      'where'
      ' PK_Plataforma=:PK_Plataforma')
    Left = 24
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Plataforma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Sigla'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_Plataforma'
        ParamType = ptUnknown
      end>
  end
  object qryImportador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Codigo,'
      ' Razao_Social,'
      ' CNPJ_CPF_COMPLETO '
      'from'
      ' importadores'
      'where'
      ' Ativo = 1'
      'order by'
      ' Razao_Social,'
      ' CNPJ_CPF_COMPLETO')
    Left = 441
    Top = 17
    object qryImportadorCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.importadores.Codigo'
      FixedChar = True
      Size = 4
    end
    object qryImportadorRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryImportadorCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object dtsImport: TDataSource
    DataSet = qryImportador
    Left = 473
    Top = 73
  end
end
