object frmControleTR: TfrmControleTR
  Left = 192
  Top = 103
  BorderStyle = bsSingle
  Caption = 'Termo de Responsabilidade'
  ClientHeight = 453
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbControle: TScrollBox
    Left = 571
    Top = 0
    Width = 88
    Height = 434
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
    Top = 434
    Width = 659
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 434
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object gridMain: TDBGrid
      Left = 1
      Top = 240
      Width = 569
      Height = 193
      Align = alBottom
      BorderStyle = bsNone
      DataSource = dtsStatus
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Processo'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_TR'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_TR_Vecto'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Importador'
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo_Receita'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Intr_Normativa'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_Status'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IN'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DI'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Embarcacao'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Despacho'
          Width = 100
          Visible = True
        end>
    end
    object pnlText: TPanel
      Left = 1
      Top = 1
      Width = 569
      Height = 212
      Align = alClient
      Color = 10514464
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 96
        Top = 48
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
      object Label2: TLabel
        Left = 16
        Top = 144
        Width = 11
        Height = 13
        Caption = 'DI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 288
        Top = 96
        Width = 30
        Height = 13
        Caption = 'Nº TR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 48
        Width = 55
        Height = 13
        Caption = 'Nº MS2000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 376
        Top = 48
        Width = 99
        Height = 13
        Caption = 'Processo na Receita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 96
        Width = 60
        Height = 13
        Caption = 'Embarcação'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 376
        Top = 96
        Width = 56
        Height = 13
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 112
        Top = 144
        Width = 11
        Height = 13
        Caption = 'IN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 376
        Top = 144
        Width = 49
        Height = 13
        Caption = 'Despacho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 464
        Top = 96
        Width = 84
        Height = 13
        Caption = 'Data Prorrogação'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnlNum_Processo_Pasta: TPanel
        Left = 1
        Top = 1
        Width = 567
        Height = 33
        Align = alTop
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 95
          Height = 13
          Caption = 'Número do MS2000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnBuscar: TBitBtn
          Left = 191
          Top = 4
          Width = 130
          Height = 25
          Caption = 'Buscar processo'
          TabOrder = 0
          OnClick = btnBuscarClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
            330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
            830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
            F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
        end
        object Panel1: TPanel
          Left = 328
          Top = 1
          Width = 238
          Height = 31
          Align = alRight
          Alignment = taLeftJustify
          BevelInner = bvLowered
          Color = clAqua
          TabOrder = 1
          object Label11: TLabel
            Left = 8
            Top = 8
            Width = 51
            Height = 13
            Caption = 'Status TR '
          end
          object edtStatus: TEdit
            Left = 59
            Top = 6
            Width = 174
            Height = 21
            CharCase = ecUpperCase
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object edtProcessoMS2000: TMaskEdit
          Left = 112
          Top = 6
          Width = 73
          Height = 21
          EditMask = '99999/99;1;_'
          MaxLength = 8
          TabOrder = 2
          Text = '     /  '
          OnChange = btnBuscarClick
        end
      end
      object edtCliente: TEdit
        Left = 96
        Top = 64
        Width = 273
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object edtNumMS: TEdit
        Left = 16
        Top = 64
        Width = 73
        Height = 21
        Enabled = False
        MaxLength = 8
        TabOrder = 2
      end
      object edtDI: TEdit
        Left = 16
        Top = 160
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object edtTR: TEdit
        Left = 288
        Top = 112
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object edtNumReceita: TEdit
        Left = 376
        Top = 64
        Width = 177
        Height = 21
        Enabled = False
        TabOrder = 5
      end
      object edtEmbarcacao: TEdit
        Left = 16
        Top = 112
        Width = 265
        Height = 21
        Enabled = False
        TabOrder = 6
      end
      object edtDTVecto: TMaskEdit
        Left = 376
        Top = 111
        Width = 81
        Height = 21
        Enabled = False
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        Text = '  /  /    '
      end
      object edtIN: TEdit
        Left = 112
        Top = 160
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
      end
      object edtDespacho: TEdit
        Left = 376
        Top = 160
        Width = 177
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 9
      end
      object edtDTProrrogacao: TMaskEdit
        Left = 464
        Top = 111
        Width = 89
        Height = 21
        Enabled = False
        EditMask = '!99/99/9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 10
        Text = '  /  /    '
      end
    end
    object pnlLocalizar: TPanel
      Left = 1
      Top = 213
      Width = 569
      Height = 27
      Align = alBottom
      BevelInner = bvLowered
      Color = 16777134
      TabOrder = 2
      object Label13: TLabel
        Left = 16
        Top = 6
        Width = 161
        Height = 13
        Caption = 'Localizar por Número  do MS2000'
      end
      object edtBusca: TMaskEdit
        Left = 184
        Top = 3
        Width = 73
        Height = 21
        Color = clWhite
        EditMask = '99999/99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        Text = '     /  '
        OnChange = edtBuscaChange
      end
    end
  end
  object qryBuscaProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' select '
      'D.Importador, D.Processo, D.Sub_Tipo_Doc'
      
        ',D.Numero_Doc as '#39'Num_TR'#39', D.Vigencia_inicial as '#39'DT_TR_Inicial'#39 +
        ', '
      'D.Vigencia_final as '#39'DT_TR_Vecto'#39' '
      
        ',D.Local as '#39'Codigo_Local'#39', L.Descricao as '#39'Nome_Local'#39', I.Razao' +
        '_Social as '#39'Nome_Importador'#39
      
        ',P.NR_DECLARACAO_IMP as '#39'DI'#39', lTrim(rTrim( P.Numero_RCR )) as '#39'P' +
        'rocesso_Receita'#39', RCR_LOCAL as '#39'URF_Despacho'#39
      
        ',F.Descricao as '#39'Intr_Normativa'#39', S.CODIGO as '#39'Status'#39', S.Descri' +
        'cao as '#39'Desc_Status'#39','
      'D.Arquivo, D.Data_renovacao'
      'from  '
      '   Documentos D '
      ' left join Importadores I on ( I.Codigo = D.Importador ) '
      ' left join Processos P on ( P.Codigo = D.Processo ) '
      
        ' left join Fundamentacao_RCR F on ( P.Fundamentacao_RCR = F.Codi' +
        'go ) '
      ' left join Tipos_status_documentos S on ( S.CODIGO = D.Status ) '
      ' left join Locais_Inventario L on '
      ' (L.Importador = P.Importador )'
      ' AND (L.Contrato= P.Contrato )'
      ' AND ( (L.Ativo = 1 ) '
      ' or (L.Local = P.Local_Inventario and L.Ativo = 1))'
      'where '
      ' D.Sub_Tipo_Doc = '#39'11'#39' and D.Pagina = 1 and D.Processo=:Processo')
    Left = 73
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
    object qryBuscaProcessoImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qryBuscaProcessoProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qryBuscaProcessoSub_Tipo_Doc: TStringField
      FieldName = 'Sub_Tipo_Doc'
      FixedChar = True
      Size = 4
    end
    object qryBuscaProcessoNum_TR: TStringField
      FieldName = 'Num_TR'
      FixedChar = True
      Size = 30
    end
    object qryBuscaProcessoDT_TR_Inicial: TDateTimeField
      FieldName = 'DT_TR_Inicial'
    end
    object qryBuscaProcessoDT_TR_Vecto: TDateTimeField
      FieldName = 'DT_TR_Vecto'
    end
    object qryBuscaProcessoCodigo_Local: TStringField
      FieldName = 'Codigo_Local'
      FixedChar = True
      Size = 4
    end
    object qryBuscaProcessoNome_Local: TStringField
      FieldName = 'Nome_Local'
      FixedChar = True
      Size = 250
    end
    object qryBuscaProcessoNome_Importador: TStringField
      FieldName = 'Nome_Importador'
      FixedChar = True
      Size = 250
    end
    object qryBuscaProcessoDI: TStringField
      FieldName = 'DI'
      FixedChar = True
      Size = 10
    end
    object qryBuscaProcessoProcesso_Receita: TStringField
      FieldName = 'Processo_Receita'
      FixedChar = True
    end
    object qryBuscaProcessoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 100
    end
    object qryBuscaProcessoIntr_Normativa: TStringField
      FieldName = 'Intr_Normativa'
      FixedChar = True
      Size = 120
    end
    object qryBuscaProcessoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object qryBuscaProcessoDesc_Status: TStringField
      FieldName = 'Desc_Status'
      FixedChar = True
      Size = 100
    end
    object qryBuscaProcessoArquivo: TStringField
      FieldName = 'Arquivo'
      FixedChar = True
      Size = 11
    end
    object qryBuscaProcessoData_renovacao: TDateTimeField
      FieldName = 'Data_renovacao'
    end
  end
  object qryExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 104
    Top = 384
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_TR'
      '(FK_Importador'
      ',Embarcacao'
      ',FK_Processo'
      ',DI'
      ',[IN]'
      ',Despacho'
      ',FK_Documento_Arquivo)'
      'values'
      '(:FK_Importador'
      ',:Embarcacao'
      ',:FK_Processo'
      ',:DI'
      ',:IN'
      ',:Despacho'
      ',:FK_Documento_Arquivo)')
    Left = 64
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Embarcacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Despacho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FK_Documento_Arquivo'
        ParamType = ptUnknown
      end>
  end
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Controle_TR set'
      ' Embarcacao=:Embarcacao,'
      ' DI=:DI,'
      ' [IN]=:IN,'
      ' Despacho=:Despacho'
      'where '
      ' PK_TR=:PK_TR')
    Left = 24
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Embarcacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Despacho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_TR'
        ParamType = ptUnknown
      end>
  end
  object qryMain: TQuery
    AfterScroll = qryMainAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' D.Processo, D.Numero_Doc as '#39'Num_TR'#39', '
      ' Cast(D.Vigencia_final as DateTime ) as '#39'DT_TR_Vecto'#39','
      ' I.Razao_Social as '#39'Nome_Importador'#39','
      ' P.Numero_RCR as '#39'Processo_Receita'#39', '
      ' F.Descricao as '#39'Intr_Normativa'#39', '
      ' S.Descricao as '#39'Desc_Status'#39','
      ' TR.[IN],'
      ' TR.DI, '
      ' LI.Descricao as '#39'Embarcacao'#39','
      ' TR.Despacho,'
      ' TR.PK_TR,'
      ' D.Data_renovacao'
      'from Controle_TR TR'
      ' left join Documentos D on (D.Arquivo = TR.FK_Documento_Arquivo)'
      ' left join Importadores I on ( I.Codigo = D.Importador ) '
      ' left join Processos P on ( P.Codigo = D.Processo ) '
      
        ' left join Fundamentacao_RCR F on ( P.Fundamentacao_RCR = F.Codi' +
        'go ) '
      ' left join Tipos_status_documentos S on ( S.CODIGO = D.Status ) '
      ' left join Locais_Inventario LI on '
      ' (LI.Importador = P.Importador )'
      'AND (LI.Contrato= P.Contrato )'
      'AND ( (LI.Ativo = 1 ) '
      'or (LI.Local = P.Local_Inventario and LI.Ativo = 1))'
      'where '
      ' TR.Excluido = 0'
      'order by'
      ' I.Razao_Social')
    Left = 440
    Top = 256
    object qryMainProcesso: TStringField
      DisplayLabel = 'Nº MS2000'
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qryMainNum_TR: TStringField
      DisplayLabel = 'Nº TR'
      FieldName = 'Num_TR'
      FixedChar = True
      Size = 30
    end
    object qryMainDT_TR_Vecto: TDateTimeField
      DisplayLabel = 'Vencimento TR'
      FieldName = 'DT_TR_Vecto'
    end
    object qryMainNome_Importador: TStringField
      DefaultExpression = 'Cliente'
      DisplayLabel = 'Cliente'
      FieldName = 'Nome_Importador'
      FixedChar = True
      Size = 250
    end
    object qryMainProcesso_Receita: TStringField
      FieldName = 'Processo_Receita'
      FixedChar = True
    end
    object qryMainIntr_Normativa: TStringField
      DisplayLabel = 'IN'
      FieldName = 'Intr_Normativa'
      FixedChar = True
      Size = 120
    end
    object qryMainDesc_Status: TStringField
      DisplayLabel = 'Status'
      FieldName = 'Desc_Status'
      FixedChar = True
      Size = 100
    end
    object qryMainIN: TStringField
      FieldName = 'IN'
      FixedChar = True
      Size = 120
    end
    object qryMainDI: TStringField
      FieldName = 'DI'
      FixedChar = True
      Size = 10
    end
    object qryMainEmbarcacao: TStringField
      DisplayLabel = 'Embarcação'
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 50
    end
    object qryMainDespacho: TStringField
      FieldName = 'Despacho'
      FixedChar = True
      Size = 100
    end
    object qryMainPK_TR: TAutoIncField
      FieldName = 'PK_TR'
    end
    object qryMainData_renovacao: TDateTimeField
      FieldName = 'Data_renovacao'
    end
  end
  object dtsStatus: TDataSource
    DataSet = qryMain
    Left = 352
    Top = 344
  end
  object qryVerificaMS: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Controle_TR'
      'where Excluido = 0 and FK_Processo=:Processo')
    Left = 193
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
end
