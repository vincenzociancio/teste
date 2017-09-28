object frmControle_BL: TfrmControle_BL
  Left = 159
  Top = 154
  BorderStyle = bsSingle
  Caption = 'Controle BL'
  ClientHeight = 453
  ClientWidth = 722
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
    Left = 634
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
    Width = 722
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 434
    Align = alClient
    Color = clSilver
    TabOrder = 2
    object gridMain: TDBGrid
      Left = 1
      Top = 216
      Width = 632
      Height = 217
      Align = alBottom
      BorderStyle = bsNone
      DataSource = dtsStatus
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
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDE'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RE'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Num_BL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Navio'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade_Receita'
          Width = 150
          Visible = True
        end>
    end
    object pnlText: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 215
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
        Left = 384
        Top = 48
        Width = 23
        Height = 13
        Caption = 'DDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 496
        Top = 48
        Width = 15
        Height = 13
        Caption = 'RE'
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
      object pnlNum_Processo_Pasta: TPanel
        Left = 1
        Top = 1
        Width = 630
        Height = 33
        Align = alTop
        BevelOuter = bvLowered
        Color = clAqua
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 148
          Height = 13
          Caption = 'Número do Processo (MS2000)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtProcessoMS2000: TMaskEdit
          Left = 168
          Top = 6
          Width = 73
          Height = 21
          EditMask = '99999/99;1;_'
          MaxLength = 8
          TabOrder = 0
          Text = '     /  '
          OnChange = btnBuscarClick
        end
        object btnBuscar: TBitBtn
          Left = 247
          Top = 4
          Width = 130
          Height = 25
          Caption = 'Buscar processo'
          TabOrder = 1
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
      end
      object edtCliente: TEdit
        Left = 96
        Top = 64
        Width = 281
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
      object edtDDE: TEdit
        Left = 384
        Top = 64
        Width = 105
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object edtRE: TEdit
        Left = 496
        Top = 64
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 88
        Width = 601
        Height = 113
        Caption = 'Preenchimento obrigatório'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object Label10: TLabel
          Left = 16
          Top = 20
          Width = 28
          Height = 13
          Caption = 'Nº BL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 369
          Top = 20
          Width = 80
          Height = 13
          Caption = 'Unidade Receita'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 127
          Top = 20
          Width = 74
          Height = 13
          Caption = 'Nome do Navio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 127
          Top = 68
          Width = 30
          Height = 13
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 16
          Top = 68
          Width = 97
          Height = 13
          Caption = 'Data de Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtNum_BL: TEdit
          Left = 16
          Top = 36
          Width = 105
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          TabOrder = 0
        end
        object edtUnidReceita: TEdit
          Left = 368
          Top = 36
          Width = 217
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtNavio: TEdit
          Left = 128
          Top = 36
          Width = 233
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 40
          ParentFont = False
          TabOrder = 1
        end
        object cbStatus: TComboBox
          Left = 128
          Top = 84
          Width = 169
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 4
          Items.Strings = (
            'Andamento'
            'Finalizado')
        end
        object edtDTVecto: TMaskEdit
          Left = 16
          Top = 84
          Width = 105
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 3
          Text = '  /  /    '
        end
      end
    end
  end
  object qryBuscaProcesso: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select TOP 10'
      ' P.Codigo'
      ',P.Importador      '
      ',P.DDE '
      ',I.Razao_Social       '
      'from'
      ' Processos P'
      ' inner join Importadores I on I.Codigo = P.Importador'
      'where '
      ' P.Codigo = :Processo')
    Left = 73
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end>
  end
  object qryExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 104
    Top = 384
  end
  object qryInsert: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_BL'
      ''
      '(FK_Processo, '
      'Nome_Navio, '
      'Unidade_Receita, '
      'DT_Vecto, '
      'Num_BL, '
      'Status,'
      'RE)'
      ''
      'values'
      ''
      '(:FK_Processo, '
      ':Nome_Navio, '
      ':Unidade_Receita, '
      'Cast( :DT_Vecto as Date ), '
      ':Num_BL, '
      ':Status,'
      ':RE)')
    Left = 64
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Nome_Navio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Unidade_Receita'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DT_Vecto'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Num_BL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RE'
        ParamType = ptUnknown
      end>
  end
  object qryUpdate: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Controle_BL set'
      ' FK_Processo =:FK_Processo, '
      ' Nome_Navio =:Nome_Navio, '
      ' Unidade_Receita =:Unidade_Receita, '
      ' DT_Vecto =Cast( :DT_Vecto as Date ), '
      ' Num_BL =:Num_BL, '
      ' Status =:Status,'
      ' RE =:RE'
      'where'
      ' PK_Controle_BL =:PK_Controle_BL')
    Left = 24
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Nome_Navio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Unidade_Receita'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DT_Vecto'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Num_BL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_Controle_BL'
        ParamType = ptUnknown
      end>
  end
  object qryMain: TQuery
    AfterScroll = qryMainAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' C.PK_Controle_BL'
      ',P.Codigo'
      ',P.Importador      '
      ',P.DDE'
      ',C.RE '
      ',I.Razao_Social'
      ',C.Nome_Navio'
      ',C.Num_BL'
      ',Cast( C.DT_Vecto as DateTime ) as "DT_Vecto"'
      ',C.Status'
      ',C.Unidade_Receita'
      'from'
      ' Controle_BL C '
      ' inner join Processos P on P.Codigo = C.FK_Processo  '
      ' inner join Importadores I on I.Codigo = P.Importador'
      'where '
      ' C.Excluido = 0'
      'order by'
      ' P.Importador'
      ',P.Codigo')
    Left = 440
    Top = 256
    object qryMainCodigo: TStringField
      DisplayLabel = 'Nº MS2000'
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object qryMainImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qryMainDDE: TStringField
      FieldName = 'DDE'
      FixedChar = True
      Size = 30
    end
    object qryMainRE: TStringField
      FieldName = 'RE'
      FixedChar = True
      Size = 30
    end
    object qryMainRazao_Social: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryMainNome_Navio: TStringField
      DisplayLabel = 'Nome do Navio'
      FieldName = 'Nome_Navio'
      FixedChar = True
      Size = 50
    end
    object qryMainNum_BL: TStringField
      DisplayLabel = 'Nº BL'
      FieldName = 'Num_BL'
      FixedChar = True
      Size = 15
    end
    object qryMainStatus: TIntegerField
      FieldName = 'Status'
    end
    object qryMainUnidade_Receita: TStringField
      DisplayLabel = 'Unidade Receita'
      FieldName = 'Unidade_Receita'
      FixedChar = True
      Size = 50
    end
    object qryMainPK_Controle_BL: TAutoIncField
      FieldName = 'PK_Controle_BL'
    end
    object qryMainDT_Vecto: TDateTimeField
      FieldName = 'DT_Vecto'
    end
  end
  object dtsStatus: TDataSource
    DataSet = qryMain
    Left = 352
    Top = 344
  end
end
