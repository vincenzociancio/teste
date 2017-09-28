object f_uploaddocumentos: Tf_uploaddocumentos
  Tag = 50703
  Left = 310
  Top = 304
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas Correntes - Upload de Documentos'
  ClientHeight = 464
  ClientWidth = 737
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
  object DBG_CC: TDBGrid
    Left = 0
    Top = 0
    Width = 737
    Height = 81
    Color = clWhite
    DataSource = ds_contascorrentes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'QEMPRESA'
        Title.Caption = 'Empresa'
        Title.Color = 10514464
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 193
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descrição da Conta Corrente'
        Title.Color = 10514464
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 314
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Banco_Caixa'
        PickList.Strings = (
          'B'
          'C')
        Title.Alignment = taCenter
        Title.Caption = 'B/C'
        Title.Color = 10514464
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Banco'
        Title.Alignment = taCenter
        Title.Color = 10514464
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Agencia'
        Title.Alignment = taCenter
        Title.Caption = 'Agência'
        Title.Color = 10514464
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Conta_Corrente'
        Title.Alignment = taCenter
        Title.Caption = 'C.Corrente'
        Title.Color = 10514464
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 737
    Height = 24
    Caption = 'Movimentações'
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 0
    Top = 430
    Width = 737
    Height = 34
    Align = alBottom
    BevelInner = bvLowered
    Color = 10514464
    TabOrder = 2
    object btnLocalizar: TBitBtn
      Left = 5
      Top = 5
      Width = 86
      Height = 25
      Hint = 'Localizar uma Movimentação'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object b_filtrar: TBitBtn
      Left = 93
      Top = 5
      Width = 86
      Height = 25
      Hint = 'Alterar uma Movimentação'
      Caption = '&Filtrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = b_filtrarClick
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
  end
  object DBGrid1: TDBGrid
    Left = -12
    Top = 104
    Width = 749
    Height = 327
    Hint = 'Duplo click para vizualizar desmembramento.'
    Color = clWhite
    DataSource = ds_qmov
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Doc'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Historico'
        Width = 394
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 80
        Visible = True
      end>
  end
  object p_desmdeb: TPanel
    Left = 10
    Top = 103
    Width = 717
    Height = 341
    BevelWidth = 4
    TabOrder = 4
    Visible = False
    object Label10: TLabel
      Left = 4
      Top = 4
      Width = 709
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Desmembramento de Débitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel11: TPanel
      Left = 4
      Top = 24
      Width = 709
      Height = 267
      Align = alTop
      Caption = 'Panel7'
      TabOrder = 0
      object DBGrid5: TDBGrid
        Left = 16
        Top = 7
        Width = 681
        Height = 251
        Hint = 'Duplo Click para vizualizar anexo.'
        DataSource = ds_qdebitos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid5DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Data_Registro'
            Title.Caption = 'Data Débito'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Arquivo'
            Title.Caption = 'Anexo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descrição Numerário'
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Detalhe'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Contabilizado'
            Title.Caption = 'Valor'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Razao_Social'
            Title.Caption = 'Cliente'
            Width = 500
            Visible = True
          end>
      end
    end
    object Panel12: TPanel
      Left = 4
      Top = 291
      Width = 709
      Height = 45
      Align = alTop
      TabOrder = 1
      object btnPdfDeb: TBitBtn
        Left = 547
        Top = 12
        Width = 70
        Height = 25
        Cancel = True
        Caption = 'Arquivos'
        ModalResult = 2
        TabOrder = 0
        OnClick = btnPdfDebClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
          000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
          FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
          FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
          0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
          05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
          55557F7777777555555500000005555555557777777555555555}
        NumGlyphs = 2
      end
      object b_fechadesmdeb: TBitBtn
        Left = 621
        Top = 12
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 1
        OnClick = b_fechadesmdebClick
        Kind = bkCancel
      end
      object btnLocalizarValor: TBitBtn
        Left = 17
        Top = 12
        Width = 75
        Height = 25
        Hint = 'Localizar uma Movimentação por Valor'
        Caption = '&Localizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnLocalizarValorClick
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
    end
    object p_contasp: TPanel
      Left = 752
      Top = 69
      Width = 542
      Height = 68
      Color = 10514464
      TabOrder = 2
      Visible = False
      object Label41: TLabel
        Left = 401
        Top = 162
        Width = 63
        Height = 13
        Caption = 'Valor a pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 10
        Top = 162
        Width = 114
        Height = 13
        Caption = 'Descrição do Numerário'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 10
        Top = 197
        Width = 37
        Height = 13
        Caption = 'Detalhe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid7: TDBGrid
        Left = 8
        Top = 32
        Width = 525
        Height = 129
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            Title.Caption = 'Conta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qfor'
            Title.Caption = 'Fornecedor'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Vencimento'
            Title.Caption = 'Dt.Venc.'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Emissao'
            Title.Caption = 'Dt.Emissão'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Historico'
            Title.Caption = 'Histórico'
            Visible = True
          end>
      end
      object b_okcp: TBitBtn
        Left = 383
        Top = 207
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 2
        Kind = bkOK
      end
      object b_fechacp: TBitBtn
        Left = 463
        Top = 207
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 3
        Kind = bkCancel
      end
      object e_valorapagar: TEdit
        Left = 399
        Top = 176
        Width = 101
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 8
        Top = 175
        Width = 373
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descricao'
        TabOrder = 5
      end
      object e_detcp: TEdit
        Left = 8
        Top = 209
        Width = 369
        Height = 21
        TabOrder = 6
      end
      object Panel16: TPanel
        Left = 1
        Top = 1
        Width = 540
        Height = 28
        Align = alTop
        Alignment = taLeftJustify
        Caption = 'Contas a Pagar com saldos em aberto'
        Color = 10514464
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label53: TLabel
          Left = 355
          Top = 11
          Width = 70
          Height = 13
          Caption = 'Localiza Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object e_contasp: TEdit
          Left = 442
          Top = 4
          Width = 81
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object pnlUploadPdf: TPanel
    Left = 64
    Top = 137
    Width = 609
    Height = 272
    BevelWidth = 4
    TabOrder = 5
    Visible = False
    object Label56: TLabel
      Left = 136
      Top = 16
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label55: TLabel
      Left = 8
      Top = 182
      Width = 98
      Height = 13
      Caption = 'Localizar arquivo pdf'
    end
    object btnBuscar: TSpeedButton
      Left = 384
      Top = 198
      Width = 23
      Height = 22
      Hint = 'Salvar .pdf'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      OnClick = btnBuscarClick
    end
    object SpeedButton2: TSpeedButton
      Left = 408
      Top = 198
      Width = 23
      Height = 22
      Hint = 'Limpar caminho'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object Label57: TLabel
      Left = 8
      Top = 225
      Width = 110
      Height = 13
      Caption = 'Número do Documento'
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 594
      Height = 165
      Caption = ' Arquivo - Desmembramento '
      TabOrder = 0
      object lblPdfs: TLabel
        Left = 28
        Top = 22
        Width = 264
        Height = 20
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid13: TDBGrid
        Left = 10
        Top = 22
        Width = 572
        Height = 135
        Hint = 'Duplo Clique para Vizualizar Arquivo'
        DataSource = ds_Arquivos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Data_Inclusao'
            Title.Caption = 'Data Inclusão'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observacoes'
            Title.Caption = 'Observações'
            Width = 277
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Numero_Doc'
            Title.Caption = 'Nº do Documento'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Caption = 'Pasta'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Arquivo'
            Width = 117
            Visible = True
          end>
      end
    end
    object edtCaminho: TEdit
      Left = 8
      Top = 199
      Width = 369
      Height = 21
      Enabled = False
      TabOrder = 1
      OnChange = edtCaminhoChange
    end
    object btnUpload: TBitBtn
      Left = 384
      Top = 238
      Width = 69
      Height = 25
      Caption = 'Upload'
      Enabled = False
      TabOrder = 2
      OnClick = btnUploadClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFF555555555544C4C5555555555F777775FF5555554C444C444
        5555555775FF55775F55554C4334444445555575577F55557FF554C4C334C4C4
        335557F5577FF55577F554CCC3334444335557555777F555775FCCCCC333CCC4
        C4457F55F777F555557F4CC33333CCC444C57F577777F5F5557FC4333333C3C4
        CCC57F777777F7FF557F4CC33333333C4C457F577777777F557FCCC33CC4333C
        C4C575F7755F777FF5755CCCCC3333334C5557F5FF777777F7F554C333333333
        CC55575777777777F755553333CC3C33C555557777557577755555533CC4C4CC
        5555555775FFFF77555555555C4CCC5555555555577777555555}
      NumGlyphs = 2
    end
    object btnFechaPnlUpload: TBitBtn
      Left = 532
      Top = 238
      Width = 69
      Height = 25
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = btnFechaPnlUploadClick
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
    object edtNumero_Documento: TEdit
      Left = 8
      Top = 242
      Width = 369
      Height = 21
      MaxLength = 30
      TabOrder = 4
    end
    object btnExcluirPdf: TBitBtn
      Left = 458
      Top = 238
      Width = 69
      Height = 25
      Hint = 'Exclui Movimentação'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnExcluirPdfClick
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
  end
  object p_filtrar: TPanel
    Left = 226
    Top = 134
    Width = 289
    Height = 235
    BevelWidth = 4
    TabOrder = 6
    Visible = False
    object Label48: TLabel
      Left = 4
      Top = 9
      Width = 278
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Filtrar as Movimentações'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object b_aplicarfiltro: TBitBtn
      Left = 64
      Top = 198
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      TabOrder = 0
      OnClick = b_aplicarfiltroClick
      Kind = bkOK
    end
    object b_cancelafiltro: TBitBtn
      Left = 151
      Top = 198
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = b_cancelafiltroClick
      Kind = bkCancel
    end
    object GroupBox1: TGroupBox
      Left = 21
      Top = 30
      Width = 245
      Height = 155
      TabOrder = 2
      object Label47: TLabel
        Left = 44
        Top = 14
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label49: TLabel
        Left = 132
        Top = 14
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object Label1: TLabel
        Left = 44
        Top = 60
        Width = 54
        Height = 13
        Caption = 'Valor Inicial'
      end
      object Label2: TLabel
        Left = 132
        Top = 60
        Width = 49
        Height = 13
        Caption = 'Valor Final'
      end
      object Label54: TLabel
        Left = 44
        Top = 108
        Width = 98
        Height = 13
        Caption = 'Tipo de Lançamento'
      end
      object me_datafinal: TMaskEdit
        Left = 132
        Top = 30
        Width = 69
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object me_datainicial: TMaskEdit
        Left = 44
        Top = 30
        Width = 69
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object me_valorfinal: TEdit
        Left = 132
        Top = 76
        Width = 69
        Height = 21
        TabOrder = 3
      end
      object me_valorinicial: TEdit
        Left = 44
        Top = 76
        Width = 69
        Height = 21
        TabOrder = 2
      end
      object dblcTpLancamento: TDBLookupComboBox
        Left = 44
        Top = 124
        Width = 158
        Height = 21
        DropDownRows = 2
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = ds_lancamentof
        TabOrder = 4
      end
      object sbLimpaTpLancamento: TBitBtn
        Left = 206
        Top = 124
        Width = 21
        Height = 21
        TabOrder = 5
        OnClick = sbLimpaTpLancamentoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
      end
    end
  end
  object p_locdesmembra: TPanel
    Left = 226
    Top = 168
    Width = 289
    Height = 120
    BevelWidth = 4
    TabOrder = 7
    Visible = False
    object Label3: TLabel
      Left = 4
      Top = 9
      Width = 278
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Localizar Desmembramento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      Left = 21
      Top = 30
      Width = 245
      Height = 48
      TabOrder = 0
      object Label6: TLabel
        Left = 60
        Top = 20
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object edValor: TEdit
        Left = 92
        Top = 16
        Width = 69
        Height = 21
        TabOrder = 0
        OnKeyPress = edValorKeyPress
      end
    end
    object BitBtn1: TBitBtn
      Left = 64
      Top = 84
      Width = 75
      Height = 26
      Caption = 'Aplicar'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 151
      Top = 84
      Width = 75
      Height = 26
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object ds_contascorrentes: TDataSource
    DataSet = q_cc
    Left = 108
    Top = 24
  end
  object q_cc: TQuery
    AfterScroll = q_ccAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Contas_Correntes.Empresa, Contas_Correntes.Filial, Contas' +
        '_Correntes.Codigo, Contas_Correntes.Banco_Caixa, Contas_Corrente' +
        's.Descricao, Contas_Correntes.Banco, Contas_Correntes.Agencia, C' +
        'ontas_Correntes.Conta_Corrente, Contas_Correntes.Saldo, Contas_C' +
        'orrentes.Nivel, Contas_Correntes.Data, Empresas.Razao_Social AS ' +
        'QEMPRESA, Filiais.Descricao AS QFILIAL'
      
        'FROM (Contas_Correntes LEFT JOIN Empresas ON Contas_Correntes.Em' +
        'presacc = Empresas.Codigo) LEFT JOIN Filiais ON (Contas_Corrente' +
        's.Empresacc = Filiais.Codigo_Empresa) AND (Contas_Correntes.Fili' +
        'alcc = Filiais.Codigo_Filial)'
      
        'WHERE Contas_Correntes.Nivel >= 1 AND Contas_Correntes.Banco <> ' +
        #39#39
      
        'ORDER BY Contas_Correntes.Empresa, Contas_Correntes.Filial, Cont' +
        'as_Correntes.Codigo;')
    Left = 32
    Top = 23
    object q_ccEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_ccFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_ccCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object q_ccBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      Size = 1
    end
    object q_ccDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object q_ccBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object q_ccAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object q_ccConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object q_ccSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object q_ccNivel: TStringField
      FieldName = 'Nivel'
      Size = 4
    end
    object q_ccData: TDateTimeField
      FieldName = 'Data'
    end
    object q_ccQEMPRESA: TStringField
      FieldName = 'QEMPRESA'
      Size = 70
    end
    object q_ccQFILIAL: TStringField
      FieldName = 'QFILIAL'
      Size = 50
    end
  end
  object ds_qmov: TDataSource
    DataSet = q_mov
    Left = 695
    Top = 154
  end
  object q_mov: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Conta' +
        's_Correntes.Filial, Movimentacao_Contas_Correntes.Codigo, Movime' +
        'ntacao_Contas_Correntes.Data, Movimentacao_Contas_Correntes.Tipo' +
        ', Tipos_Lancamento_Ccorrente.Descricao, Movimentacao_Contas_Corr' +
        'entes.Doc, Movimentacao_Contas_Correntes.Historico, Movimentacao' +
        '_Contas_Correntes.Valor, Movimentacao_Contas_Correntes.Cliente, ' +
        'Movimentacao_Contas_Correntes.Codigo_Mov, '
      'Movimentacao_Contas_Correntes.Codigo_SOLREG'
      
        'FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Cc' +
        'orrente ON Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamento' +
        '_Ccorrente.Codigo'
      'WHERE Tipos_Lancamento_Ccorrente.Codigo IN ('#39'2'#39','#39'7'#39','#39'5'#39') AND '
      '      Movimentacao_Contas_Correntes.Codigo =  :QCONTA     AND '
      '      Movimentacao_Contas_Correntes.Data   >= :qdataini AND '
      '      Movimentacao_Contas_Correntes.Data   <= :qdatafin'
      
        'ORDER BY Movimentacao_Contas_Correntes.Data DESC, Movimentacao_C' +
        'ontas_Correntes.Codigo_Mov DESC      ')
    Left = 648
    Top = 153
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QCONTA'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 36526d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 55153d
      end>
    object q_movEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Empresa'
      Size = 4
    end
    object q_movFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Filial'
      Size = 4
    end
    object q_movCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Codigo'
    end
    object q_movData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Data'
    end
    object q_movTipo: TIntegerField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Tipo'
    end
    object q_movDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Lancamento_Ccorrente.Descricao'
      Size = 45
    end
    object q_movDoc: TStringField
      FieldName = 'Doc'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Doc'
      Size = 15
    end
    object q_movHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Historico'
      Size = 255
    end
    object q_movValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Valor'
    end
    object q_movCliente: TStringField
      FieldName = 'Cliente'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Cliente'
      Size = 4
    end
    object q_movCodigo_Mov: TAutoIncField
      FieldName = 'Codigo_Mov'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Codigo_Mov'
    end
    object q_movCodigo_SOLREG: TStringField
      FieldName = 'Codigo_SOLREG'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Codigo_SOLREG'
      Size = 50
    end
  end
  object t_contascorrentes: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Codigo'
    MasterFields = 'Codigo'
    MasterSource = ds_contascorrentes
    TableName = 'Contas_Correntes'
    Left = 492
    Top = 156
    object t_contascorrentesEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_contascorrentesFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_contascorrentesCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_contascorrentesBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      FixedChar = True
      Size = 1
    end
    object t_contascorrentesDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object t_contascorrentesBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object t_contascorrentesAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object t_contascorrentesConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object t_contascorrentesSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object t_contascorrentesNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object t_contascorrentesData: TDateTimeField
      FieldName = 'Data'
    end
    object t_contascorrentesEmpresacc: TStringField
      FieldName = 'Empresacc'
      FixedChar = True
      Size = 4
    end
    object t_contascorrentesFilialcc: TStringField
      FieldName = 'Filialcc'
      FixedChar = True
      Size = 4
    end
    object t_contascorrentesASCAA: TSmallintField
      FieldName = 'ASCAA'
    end
  end
  object ds_qdebitos: TDataSource
    DataSet = q_debitos
    Left = 541
    Top = 380
  end
  object q_debitos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Numerarios_Processos.Empresa, '
      '       Numerarios_Processos.Filial,'
      '       Importadores.Codigo, '
      '       Numerarios_Processos.Processo, '
      '       Numerarios_Processos.REG, '
      '       Numerarios_Processos.Numerario, '
      '       Numerarios_Processos.Usuario_Previsao, '
      '       Numerarios_Processos.Data_Previsao, '
      '       Numerarios_Processos.Valor_Previsao, '
      '       Numerarios_Processos.Previsao_solicitada, '
      '       Numerarios_Processos.Ok_Previsao_financeiro, '
      '       Numerarios_Processos.Usuario_Financeiro, '
      '       Numerarios_Processos.Data_Registro, '
      '       Numerarios_Processos.Valor_Registrado, '
      '       Numerarios_Processos.Valor_Contabilizado, '
      '       Numerarios_Processos.Contabilizado, '
      '       Numerarios_Processos.Usuario_Contablizado, '
      '       Numerarios_Processos.Conta_Corrente, '
      '       Numerarios_Processos.Codigo_mov, '
      '       Numerarios_Processos.Detalhe, '
      '       Tipos_Numerario.Descricao,'
      
        '  (((SELECT ISNULL(SUM(NP.VALOR_REGISTRADO),0) FROM NUMERARIOS_P' +
        'ROCESSOS NP WHERE NP.PROCESSO = Numerarios_Processos.PROCESSO) -' +
        ' (SELECT ISNULL(SUM(CP.Valor),0) FROM CREDITOS_PROCESSOS CP WHER' +
        'E CP.PROCESSO = Numerarios_Processos.PROCESSO))*-1) AS SALDO,'
      '       Importadores.Razao_Social,               '
      
        '       CASE (SELECT COUNT(Reg_Numerario) FROM Documentos WHERE R' +
        'eg_Numerario = Numerarios_Processos.REG) WHEN 0'
      '         THEN '#39'NÃO'#39
      '         ELSE '#39'SIM'#39
      '       END AS Arquivo,'
      '     Processos.Local_Inventario, '
      '     Processos.Contrato   '
      
        ' FROM Numerarios_Processos LEFT JOIN Tipos_Numerario ON (Numerar' +
        'ios_Processos.Numerario = Tipos_Numerario.Codigo) LEFT JOIN Proc' +
        'essos '
      
        '   ON Numerarios_Processos.Processo = Processos.Codigo LEFT JOIN' +
        ' Importadores'
      '   ON Processos.Importador = Importadores.Codigo'
      
        'WHERE (((Numerarios_Processos.Contabilizado)="SIM") AND ((Numera' +
        'rios_Processos.Conta_Corrente)=:qconta) AND ((Numerarios_Process' +
        'os.Codigo_mov)=:qmov))'
      'ORDER BY Numerarios_Processos.Processo DESC')
    Left = 612
    Top = 380
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'qmov'
        ParamType = ptUnknown
        Value = '0'
      end>
    object q_debitosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Empresa'
      Size = 4
    end
    object q_debitosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Filial'
      Size = 4
    end
    object q_debitosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      Size = 8
    end
    object q_debitosREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.REG'
    end
    object q_debitosNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      Size = 4
    end
    object q_debitosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Previsao'
      Size = 10
    end
    object q_debitosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Previsao'
    end
    object q_debitosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Previsao'
    end
    object q_debitosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Previsao_solicitada'
      Size = 3
    end
    object q_debitosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Ok_Previsao_financeiro'
      Size = 3
    end
    object q_debitosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Financeiro'
      Size = 10
    end
    object q_debitosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Registro'
    end
    object q_debitosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Registrado'
    end
    object q_debitosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
    object q_debitosContabilizado: TStringField
      FieldName = 'Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Contabilizado'
      Size = 3
    end
    object q_debitosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Contablizado'
      Size = 10
    end
    object q_debitosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Conta_Corrente'
    end
    object q_debitosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Codigo_mov'
    end
    object q_debitosDetalhe: TStringField
      FieldName = 'Detalhe'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Detalhe'
      Size = 50
    end
    object q_debitosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
    object q_debitosSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object q_debitosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object q_debitosArquivo: TStringField
      FieldName = 'Arquivo'
    end
    object q_debitosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_debitosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object q_debitosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
  end
  object qryIncDocs: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Documentos '
      '(Arquivo,'
      'Pagina, '
      'ftp, '
      'Data_inclusao, '
      'Data_Envio,'
      'Empresa, '
      'Filial, '
      'Importador, '
      'Processo, '
      'Conta_Corrente,'
      'Tipo_Doc, '
      'Sub_Tipo_Doc, '
      'Numero_Doc, '
      'Codigo, '
      'Vigencia_inicial, '
      'Vigencia_final, '
      'Observacoes, '
      'Status, '
      'usuario_dig,'
      'PDF,'
      'Reg_Numerario,'
      'Contrato,'
      'Local)'
      ''
      'values'
      ''
      '(:Arquivo,'
      ':Pagina, '
      '0, '
      'GetDate(),'
      ':Data_Envio, '
      #39'1'#39', '
      #39'RJO'#39', '
      ':Importador, '
      ':Processo, '
      ':Conta_Corrente,'
      ':Tipo_Doc, '
      ':Sub_Tipo_Doc, '
      ':Numero_Doc, '
      ':Codigo, '
      'Cast(:Vigencia_inicial as Date ),'
      'Cast(:Vigencia_final as Date ), '
      ':Observacoes, '
      ':Status, '
      ':usuario,'
      ':pdf,'
      ':Reg_Numerario,'
      ':Contrato,'
      ':Local)')
    Left = 96
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Arquivo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Pagina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data_Envio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Importador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conta_Corrente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo_Doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Sub_Tipo_Doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Numero_Doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'Vigencia_inicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Vigencia_final'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Observacoes'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Reg_Numerario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Local'
        ParamType = ptUnknown
      end>
  end
  object qryUpdateN: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update parametros set Numerador_Documentos=:NewNumero')
    Left = 161
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NewNumero'
        ParamType = ptUnknown
      end>
  end
  object qryDelErro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete from documentos'
      'where Codigo=:Codigo and Arquivo=:Arquivo')
    Left = 160
    Top = 569
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Arquivo'
        ParamType = ptUnknown
      end>
  end
  object OP: TOpenDialog
    Filter = '*.pdf|*.pdf'
    Title = 'Selecionar'
    Left = 25
    Top = 503
  end
  object qryArquivos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Data_inclusao, Numero_Doc, Codigo, Arquivo, Observacoes, ' +
        'Reg_Numerario '
      '  FROM Documentos '
      ' WHERE processo =:processo and Reg_Numerario = :Reg_Numerario')
    Left = 232
    Top = 505
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Reg_Numerario'
        ParamType = ptUnknown
      end>
    object qryArquivosData_Inclusao: TDateTimeField
      FieldName = 'Data_Inclusao'
    end
    object qryArquivosNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      Origin = 'DBNMSCOMEX.Documentos.Numero_Doc'
      FixedChar = True
      Size = 30
    end
    object qryArquivosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Documentos.Codigo'
      FixedChar = True
      Size = 11
    end
    object qryArquivosArquivo: TStringField
      FieldName = 'Arquivo'
      Origin = 'DBNMSCOMEX.Documentos.Arquivo'
      FixedChar = True
      Size = 11
    end
    object qryArquivosObservacoes: TStringField
      FieldName = 'Observacoes'
      Origin = 'DBNMSCOMEX.Documentos.Observacoes'
      FixedChar = True
      Size = 255
    end
  end
  object ds_Arquivos: TDataSource
    DataSet = qryArquivos
    Left = 231
    Top = 569
  end
  object qryParametro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Numerador_Documentos'
      'from '
      ' Parametros')
    Left = 306
    Top = 505
    object qryParametroNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Origin = 'DBNMSCOMEX.Parametros.Numerador_Documentos'
      FixedChar = True
      Size = 8
    end
  end
  object ds_lancamentof: TDataSource
    DataSet = t_lancamentof
    Left = 485
    Top = 507
  end
  object t_lancamentof: TTable
    CachedUpdates = True
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Tipos_Lancamento_Ccorrente'
    Left = 404
    Top = 507
    object t_lancamentofCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_lancamentofDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object t_lancamentofPositivo: TSmallintField
      FieldName = 'Positivo'
    end
  end
end
