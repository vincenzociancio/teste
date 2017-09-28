object f_contascorrentes: Tf_contascorrentes
  Left = 275
  Top = 242
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas Correntes'
  ClientHeight = 448
  ClientWidth = 753
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
  object Panel2: TPanel
    Left = 0
    Top = 78
    Width = 753
    Height = 371
    Align = alTop
    Color = clSilver
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 336
      Width = 751
      Height = 34
      Align = alBottom
      BevelInner = bvLowered
      Color = 10514464
      TabOrder = 2
      object btnNovo: TBitBtn
        Left = 6
        Top = 5
        Width = 58
        Height = 25
        Hint = 'Nova Movimentação'
        Caption = '&Incluir'
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
      object btnExcluir: TBitBtn
        Left = 65
        Top = 5
        Width = 63
        Height = 25
        Hint = 'Exclui Movimentação'
        Caption = '&Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
        Left = 129
        Top = 5
        Width = 63
        Height = 25
        Hint = 'Alterar uma Movimentação'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnNovoClick
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
      object btnLocalizar: TBitBtn
        Left = 281
        Top = 5
        Width = 86
        Height = 25
        Hint = 'Localizar uma Movimentação'
        Caption = '&Localizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
      object b_extrato: TBitBtn
        Left = 544
        Top = 5
        Width = 65
        Height = 25
        Caption = 'Extrato'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = b_extratoClick
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
      object btndesmembrar: TBitBtn
        Left = 193
        Top = 5
        Width = 86
        Height = 25
        Hint = 'Desmembra Valores'
        Caption = '&Desmembra'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btndesmembrarClick
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
      object b_clientes: TBitBtn
        Left = 612
        Top = 5
        Width = 65
        Height = 25
        Caption = 'Clientes'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
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
      object b_saldos: TBitBtn
        Left = 680
        Top = 5
        Width = 65
        Height = 25
        Caption = 'Saldos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = b_saldosClick
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
      object b_saldosdiarios: TBitBtn
        Left = 443
        Top = 5
        Width = 96
        Height = 25
        Hint = 'Localizar uma Movimentação'
        Caption = '&Saldos Diários'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = b_saldosdiariosClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
      end
      object b_filtrar: TBitBtn
        Left = 369
        Top = 5
        Width = 63
        Height = 25
        Hint = 'Alterar uma Movimentação'
        Caption = '&Filtrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
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
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 751
      Height = 24
      Align = alTop
      Caption = 'Movimentações'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 24
      Width = 749
      Height = 310
      Hint = 'teste'
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
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = btndesmembrarClick
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      OnKeyUp = DBGrid1KeyUp
      OnMouseDown = DBGrid1MouseDown
      OnMouseMove = DBGrid1MouseMove
      OnMouseUp = DBGrid1MouseUp
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
    object p_saldosdiarios: TPanel
      Left = 584
      Top = 86
      Width = 680
      Height = 249
      BevelWidth = 4
      TabOrder = 7
      Visible = False
      object Label46: TLabel
        Left = 4
        Top = 4
        Width = 672
        Height = 20
        Align = alTop
        Alignment = taCenter
        Caption = 'Saldos Diários'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel19: TPanel
        Left = 4
        Top = 24
        Width = 672
        Height = 171
        Align = alTop
        TabOrder = 0
        object DBGrid12: TDBGrid
          Left = 8
          Top = 8
          Width = 633
          Height = 161
          DataSource = ds_saldosdiarios
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid12DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo'
              Title.Caption = 'Saldo Fechado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo_sis'
              Title.Caption = 'Saldo Calculado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fechado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Obs'
              Title.Caption = 'Observação'
              Width = 344
              Visible = True
            end>
        end
      end
      object Panel20: TPanel
        Left = 4
        Top = 195
        Width = 672
        Height = 48
        Align = alTop
        TabOrder = 1
        object Label50: TLabel
          Left = 28
          Top = 23
          Width = 118
          Height = 13
          Caption = 'Data de início Recálculo'
        end
        object BitBtn1: TBitBtn
          Left = 564
          Top = 12
          Width = 78
          Height = 25
          Caption = 'Fechar'
          TabOrder = 1
          OnClick = BitBtn1Click
          Kind = bkCancel
        end
        object b_recalcular: TBitBtn
          Left = 394
          Top = 12
          Width = 84
          Height = 25
          Caption = 'Recalcular'
          TabOrder = 0
          OnClick = b_recalcularClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF33339993707399933333773337F3777FF3399933000339
            9933377333777F3377F3399333707333993337733337333337FF993333333333
            399377F33333F333377F993333303333399377F33337FF333373993333707333
            333377F333777F333333993333101333333377F333777F3FFFFF993333000399
            999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
            99933773FF777F3F777F339993707399999333773F373F77777F333999999999
            3393333777333777337333333999993333333333377777333333}
          NumGlyphs = 2
        end
        object me_dtrecalc: TMaskEdit
          Left = 152
          Top = 15
          Width = 69
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object cb_geral: TCheckBox
          Left = 228
          Top = 20
          Width = 57
          Height = 17
          Caption = 'Geral'
          TabOrder = 3
        end
        object btnPdfSd: TBitBtn
          Left = 486
          Top = 12
          Width = 70
          Height = 25
          Cancel = True
          Caption = 'Pdf`s'
          ModalResult = 2
          TabOrder = 4
          OnClick = btnPdfSdClick
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
      end
    end
    object p_extrato: TPanel
      Left = 741
      Top = 92
      Width = 450
      Height = 281
      BevelWidth = 4
      TabOrder = 6
      Visible = False
      OnExit = b_fechaextratoClick
      object Label31: TLabel
        Left = 4
        Top = 4
        Width = 442
        Height = 20
        Align = alTop
        Alignment = taCenter
        Caption = 'Extrato de Contas Correntes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel5: TPanel
        Left = 4
        Top = 24
        Width = 442
        Height = 169
        Align = alTop
        TabOrder = 0
        object Label30: TLabel
          Left = 8
          Top = 8
          Width = 81
          Height = 13
          Caption = 'Contas Correntes'
        end
        object Label35: TLabel
          Left = 220
          Top = 8
          Width = 98
          Height = 13
          Caption = 'Tipo de Lançamento'
        end
        object DBGrid2: TDBGrid
          Left = 8
          Top = 24
          Width = 205
          Height = 120
          DataSource = ds_contas_e
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 180
              Visible = True
            end>
        end
        object cb_contas: TCheckBox
          Left = 8
          Top = 148
          Width = 97
          Height = 17
          Caption = 'Todas'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object DBGrid8: TDBGrid
          Left = 220
          Top = 24
          Width = 217
          Height = 120
          DataSource = ds_lancamento
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 190
              Visible = True
            end>
        end
        object cb_tipos: TCheckBox
          Left = 220
          Top = 148
          Width = 97
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object DBGrid9: TDBGrid
          Left = 76
          Top = 44
          Width = 241
          Height = 81
          DataSource = ds_qextrato
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Visible = False
        end
      end
      object Panel15: TPanel
        Left = 4
        Top = 193
        Width = 442
        Height = 76
        Align = alTop
        TabOrder = 1
        object Label33: TLabel
          Left = 8
          Top = 20
          Width = 56
          Height = 13
          Caption = 'Período de '
        end
        object Label34: TLabel
          Left = 48
          Top = 48
          Width = 15
          Height = 13
          Caption = 'até'
        end
        object me_dataini: TMaskEdit
          Left = 72
          Top = 16
          Width = 65
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
        end
        object me_datafin: TMaskEdit
          Left = 72
          Top = 40
          Width = 65
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnExit = me_datafinExit
        end
        object b_fechaextrato: TBitBtn
          Left = 356
          Top = 43
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 5
          OnClick = b_fechaextratoClick
          Kind = bkCancel
        end
        object cb_desmembra: TCheckBox
          Left = 168
          Top = 11
          Width = 201
          Height = 17
          Caption = 'Desmembrar Movimentações'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object cb_resumo: TCheckBox
          Left = 168
          Top = 31
          Width = 97
          Height = 17
          Caption = 'Resumo Final'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object b_imprimirextrato: TBitBtn
          Left = 356
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 4
          OnClick = b_imprimirextratoClick
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
        object cb_processos_financ: TCheckBox
          Left = 168
          Top = 51
          Width = 150
          Height = 17
          Caption = 'somente Processos Financ'
          TabOrder = 6
        end
      end
    end
    object p_desmdeb: TPanel
      Left = 546
      Top = -33
      Width = 717
      Height = 336
      BevelWidth = 4
      TabOrder = 5
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
        Top = 101
        Width = 709
        Height = 144
        Align = alTop
        Caption = 'Panel7'
        TabOrder = 1
        object Label23: TLabel
          Left = 1
          Top = 130
          Width = 707
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = 'Total Desmembrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid5: TDBGrid
          Left = 16
          Top = 7
          Width = 681
          Height = 120
          DataSource = ds_qdebitos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'Saldo'
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
        Top = 245
        Width = 709
        Height = 84
        Align = alTop
        TabOrder = 2
        object Label27: TLabel
          Left = 16
          Top = 4
          Width = 44
          Height = 13
          Caption = 'Processo'
        end
        object Label28: TLabel
          Left = 96
          Top = 4
          Width = 87
          Height = 13
          Caption = 'Tipo de Numerário'
        end
        object Label29: TLabel
          Left = 576
          Top = 4
          Width = 95
          Height = 13
          Caption = 'Valor Desmembrado'
        end
        object b_gravadeb: TBitBtn
          Left = 465
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 5
          OnClick = b_gravadebClick
          Kind = bkOK
        end
        object b_excluideb: TBitBtn
          Left = 545
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Excluir'
          Default = True
          ModalResult = 1
          TabOrder = 6
          OnClick = b_excluidebClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
            305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
            005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
            B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
            B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
            B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
            B0557777FF577777F7F500000E055550805577777F7555575755500000555555
            05555777775555557F5555000555555505555577755555557555}
          NumGlyphs = 2
        end
        object b_fechadesmdeb: TBitBtn
          Left = 624
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 7
          OnClick = b_fechadesmdebClick
          Kind = bkCancel
        end
        object DBEdit15: TDBEdit
          Left = 16
          Top = 20
          Width = 77
          Height = 21
          DataField = 'Processo'
          DataSource = ds_numerarios
          Enabled = False
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 576
          Top = 20
          Width = 121
          Height = 21
          DataField = 'Valor_Contabilizado'
          DataSource = ds_numerarios
          TabOrder = 3
          OnKeyPress = DBEdit10KeyPress
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 96
          Top = 20
          Width = 257
          Height = 21
          DataField = 'Numerario'
          DataSource = ds_numerarios
          Enabled = False
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = ds_tiposnumerarios
          TabOrder = 1
        end
        object b_novodeb: TBitBtn
          Left = 385
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 4
          OnClick = b_novodebClick
          Kind = bkOK
        end
        object DBEdit19: TDBEdit
          Left = 356
          Top = 20
          Width = 217
          Height = 21
          DataField = 'Detalhe'
          DataSource = ds_numerarios
          TabOrder = 2
          OnKeyPress = DBEdit10KeyPress
        end
        object b_carga: TBitBtn
          Left = 16
          Top = 52
          Width = 133
          Height = 25
          Cancel = True
          Caption = 'NF - Carga/descarga'
          ModalResult = 2
          TabOrder = 8
          OnClick = b_cargaClick
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
        object b_cp: TBitBtn
          Left = 160
          Top = 52
          Width = 133
          Height = 25
          Cancel = True
          Caption = 'Contas a Pagar'
          ModalResult = 2
          TabOrder = 9
          OnClick = b_cpClick
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
        object btnPdfDeb: TBitBtn
          Left = 310
          Top = 52
          Width = 70
          Height = 25
          Cancel = True
          Caption = 'Pdf`s'
          ModalResult = 2
          TabOrder = 10
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
      end
      object p_carga: TPanel
        Left = 20
        Top = 36
        Width = 677
        Height = 33
        Color = clTeal
        TabOrder = 4
        Visible = False
        OnExit = b_fecharfatClick
        object Label43: TLabel
          Left = 14
          Top = 183
          Width = 72
          Height = 13
          Caption = 'Localiza Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 188
          Top = 176
          Width = 23
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000888880000080F000888880F00080F000888880F
            0008000000080000000800F000000F00000800F000800F00000800F000800F00
            00088000000000000088880F00080F0008888800000800000888888000888000
            88888880F08880F0888888800088800088888888888888888888}
          OnClick = SpeedButton1Click
        end
        object Panel18: TPanel
          Left = 1
          Top = 1
          Width = 675
          Height = 24
          Align = alTop
          Caption = 'Faturas de Movimentação de Carga/Descarga não contabilizadas'
          Color = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBGrid10: TDBGrid
          Left = 5
          Top = 29
          Width = 340
          Height = 136
          DataSource = ds_faturas
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
              FieldName = 'Fatura'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Boleto'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Peso'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end>
        end
        object b_incluirfat: TBitBtn
          Left = 468
          Top = 175
          Width = 121
          Height = 25
          Caption = 'Incluir Fatura'
          TabOrder = 2
          OnClick = b_incluirfatClick
          Kind = bkOK
        end
        object b_fecharfat: TBitBtn
          Left = 594
          Top = 175
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 3
          OnClick = b_fecharfatClick
          Kind = bkCancel
        end
        object e_fatura: TEdit
          Left = 101
          Top = 176
          Width = 81
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBGrid11: TDBGrid
          Left = 349
          Top = 29
          Width = 323
          Height = 136
          DataSource = ds_itens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Processo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DI'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTA'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Peso'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end>
        end
      end
      object Panel10: TPanel
        Left = 4
        Top = 24
        Width = 709
        Height = 77
        Align = alTop
        Enabled = False
        TabOrder = 0
        object Label16: TLabel
          Left = 16
          Top = 4
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label17: TLabel
          Left = 96
          Top = 4
          Width = 87
          Height = 13
          Caption = 'Empresa / Cliente '
        end
        object Label19: TLabel
          Left = 460
          Top = 4
          Width = 98
          Height = 13
          Caption = 'Tipo de Lançamento'
        end
        object Label20: TLabel
          Left = 96
          Top = 37
          Width = 41
          Height = 13
          Caption = 'Histórico'
        end
        object Label21: TLabel
          Left = 16
          Top = 37
          Width = 55
          Height = 13
          Caption = 'Documento'
        end
        object Label22: TLabel
          Left = 576
          Top = 37
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 460
          Top = 16
          Width = 237
          Height = 21
          DataField = 'Tipo'
          DataSource = ds_movcc
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = ds_lancamento
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 16
          Top = 16
          Width = 77
          Height = 21
          DataField = 'Data'
          DataSource = ds_movcc
          TabOrder = 1
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 96
          Top = 16
          Width = 361
          Height = 21
          DataField = 'Cliente'
          DataSource = ds_movcc
          KeyField = 'Codigo'
          ListField = 'Razao_Social'
          ListSource = ds_qimportadores
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 16
          Top = 49
          Width = 77
          Height = 21
          DataField = 'Doc'
          DataSource = ds_movcc
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 96
          Top = 49
          Width = 357
          Height = 21
          DataField = 'Historico'
          DataSource = ds_movcc
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 576
          Top = 49
          Width = 121
          Height = 21
          DataField = 'Valor'
          DataSource = ds_movcc
          TabOrder = 5
          OnKeyPress = DBEdit4KeyPress
        end
      end
      object p_debito2: TPanel
        Left = 42
        Top = -53
        Width = 541
        Height = 276
        Color = 10514464
        TabOrder = 3
        Visible = False
        object Label36: TLabel
          Left = 449
          Top = 167
          Width = 24
          Height = 13
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 14
          Top = 167
          Width = 44
          Height = 13
          Caption = 'Processo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 74
          Top = 167
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
        object Label40: TLabel
          Left = 74
          Top = 205
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
        object Panel14: TPanel
          Left = 1
          Top = 1
          Width = 539
          Height = 28
          Align = alTop
          Alignment = taLeftJustify
          Caption = '  Processos com Débitos não contabilizados'
          Color = 10514464
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          object Label38: TLabel
            Left = 290
            Top = 11
            Width = 69
            Height = 13
            Caption = 'Filtra Processo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object e_proc: TEdit
            Left = 364
            Top = 4
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnChange = e_procChange
          end
          object cb_todos: TCheckBox
            Left = 448
            Top = 8
            Width = 82
            Height = 17
            Caption = 'Ver Todos'
            TabOrder = 1
            OnClick = cb_todosClick
          end
        end
        object DBGrid6: TDBGrid
          Left = 8
          Top = 32
          Width = 525
          Height = 129
          DataSource = ds_qdebitos2
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
              FieldName = 'Processo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Caption = 'Descrição'
              Width = 263
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Registrado'
              Title.Caption = 'Valor Registrado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Contabilizado'
              Title.Caption = 'Valor Contabilizado'
              Width = 93
              Visible = True
            end>
        end
        object b_okdebito: TBitBtn
          Left = 378
          Top = 246
          Width = 75
          Height = 25
          Caption = 'Ok'
          TabOrder = 8
          OnClick = b_okdebitoClick
          Kind = bkOK
        end
        object b_fechadebito: TBitBtn
          Left = 458
          Top = 246
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 9
          OnClick = b_fechadebitoClick
          Kind = bkCancel
        end
        object DBEdit18: TDBEdit
          Left = 16
          Top = 152
          Width = 57
          Height = 21
          DataField = 'Processo'
          DataSource = ds_numerarios2
          TabOrder = 11
          Visible = False
          OnChange = DBEdit18Change
        end
        object DBLC_TIPOS: TDBLookupComboBox
          Left = 72
          Top = 182
          Width = 373
          Height = 21
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = ds_tiposnumerarios
          TabOrder = 2
        end
        object b_novodebito: TBitBtn
          Left = 12
          Top = 246
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 5
          OnClick = b_novodebitoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
            0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
            33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
        object b_gravanov: TBitBtn
          Left = 90
          Top = 246
          Width = 75
          Height = 25
          Caption = 'Gravar'
          Enabled = False
          TabOrder = 6
          OnClick = b_gravanovClick
          Kind = bkOK
        end
        object b_cancelanov: TBitBtn
          Left = 170
          Top = 246
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          Enabled = False
          TabOrder = 7
          OnClick = b_cancelanovClick
          Kind = bkCancel
        end
        object q_processo: TEdit
          Left = 12
          Top = 182
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          MaxLength = 8
          TabOrder = 1
          OnChange = q_processoChange
          OnExit = q_processoExit
        end
        object cbFixaNumerario: TCheckBox
          Left = 350
          Top = 168
          Width = 93
          Height = 14
          Caption = 'Fixar Numerário'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = cbFixaNumerarioClick
        end
        object edtValor_Contabilizado: TEdit
          Left = 447
          Top = 182
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnKeyPress = DBEdit10KeyPress
        end
        object edtDetalhe: TEdit
          Left = 72
          Top = 218
          Width = 461
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 4
          OnKeyPress = DBEdit10KeyPress
        end
      end
      object p_contasp: TPanel
        Left = 752
        Top = 69
        Width = 542
        Height = 68
        Color = 10514464
        TabOrder = 5
        Visible = False
        OnExit = b_fechacpClick
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
          DataSource = ds_qcontasp
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
          OnClick = b_okcpClick
          Kind = bkOK
        end
        object b_fechacp: TBitBtn
          Left = 463
          Top = 207
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 3
          OnClick = b_fechacpClick
          Kind = bkCancel
        end
        object e_valorapagar: TEdit
          Left = 399
          Top = 176
          Width = 101
          Height = 21
          TabOrder = 1
          Text = '0'
          OnKeyPress = e_valorapagarKeyPress
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 8
          Top = 175
          Width = 373
          Height = 21
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = ds_tiposnumerarios
          TabOrder = 5
          OnClick = DBLookupComboBox2Click
          OnEnter = DBLookupComboBox2Click
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
            OnChange = e_contaspChange
            OnEnter = e_contaspEnter
          end
        end
      end
    end
    object p_incluir: TPanel
      Left = 169
      Top = 26
      Width = 465
      Height = 279
      BevelWidth = 4
      TabOrder = 3
      Visible = False
      OnExit = b_fechaincluiClick
      object Label3: TLabel
        Left = 16
        Top = 40
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object l_titulo: TLabel
        Left = 136
        Top = 16
        Width = 214
        Height = 20
        Caption = 'Inclusão de Movimentação'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 96
        Top = 40
        Width = 84
        Height = 13
        Caption = 'Empresa / Cliente'
      end
      object Label6: TLabel
        Left = 16
        Top = 80
        Width = 98
        Height = 13
        Caption = 'Tipo de Lançamento'
      end
      object Label7: TLabel
        Left = 16
        Top = 120
        Width = 41
        Height = 13
        Caption = 'Histórico'
      end
      object Label8: TLabel
        Left = 336
        Top = 80
        Width = 55
        Height = 13
        Caption = 'Documento'
      end
      object Label9: TLabel
        Left = 336
        Top = 164
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label39: TLabel
        Left = 16
        Top = 160
        Width = 238
        Height = 13
        Caption = 'Plano de Contas ( lançamento não desmembrado )'
      end
      object sb_limpa: TSpeedButton
        Left = 304
        Top = 176
        Width = 29
        Height = 22
        Hint = 'Limpa Plano de Contas'
        Caption = 'Não'
        OnClick = sb_limpaClick
      end
      object b_gravainclui: TBitBtn
        Left = 297
        Top = 245
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 8
        OnClick = b_gravaincluiClick
        Kind = bkOK
      end
      object b_fechainclui: TBitBtn
        Left = 377
        Top = 245
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 9
        OnClick = b_fechaincluiClick
        Kind = bkCancel
      end
      object dblc_tipolanca: TDBLookupComboBox
        Left = 16
        Top = 96
        Width = 313
        Height = 21
        DataField = 'Tipo'
        DataSource = ds_movcc
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = ds_lancamentof
        TabOrder = 2
        OnExit = dblc_tipolancaExit
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 56
        Width = 77
        Height = 21
        DataField = 'Data'
        DataSource = ds_movcc
        TabOrder = 0
      end
      object dbl_clientes: TDBLookupComboBox
        Left = 96
        Top = 56
        Width = 361
        Height = 21
        DataField = 'Cliente'
        DataSource = ds_movcc
        KeyField = 'Codigo'
        ListField = 'Razao_Social'
        ListFieldIndex = 1
        ListSource = ds_qimportadores
        TabOrder = 1
        OnExit = dbl_clientesExit
      end
      object DBEdit2: TDBEdit
        Left = 336
        Top = 96
        Width = 121
        Height = 21
        DataField = 'Doc'
        DataSource = ds_movcc
        TabOrder = 3
        OnExit = DBEdit2Exit
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 136
        Width = 441
        Height = 21
        DataField = 'Historico'
        DataSource = ds_movcc
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 336
        Top = 176
        Width = 121
        Height = 21
        DataField = 'Valor'
        DataSource = ds_movcc
        TabOrder = 6
        OnKeyPress = DBEdit4KeyPress
      end
      object dbl_plano: TDBLookupComboBox
        Left = 16
        Top = 176
        Width = 285
        Height = 21
        DataField = 'Plano_Contas'
        DataSource = ds_movcc
        Enabled = False
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = ds_plano
        TabOrder = 5
        OnExit = dbl_planoExit
      end
      object gbicms: TGroupBox
        Left = 16
        Top = 202
        Width = 217
        Height = 48
        Caption = 'Período de Apuração do ICMS'
        Enabled = False
        TabOrder = 7
        Visible = False
        object Label51: TLabel
          Left = 10
          Top = 28
          Width = 27
          Height = 13
          Caption = 'Início'
        end
        object Label52: TLabel
          Left = 111
          Top = 28
          Width = 22
          Height = 13
          Caption = 'Final'
        end
        object DBEdit21: TDBEdit
          Left = 40
          Top = 20
          Width = 65
          Height = 21
          DataField = 'Data_apuracao_cpmf_inicial'
          DataSource = ds_movcc
          TabOrder = 0
          OnExit = DBEdit2Exit
        end
        object DBEdit22: TDBEdit
          Left = 136
          Top = 20
          Width = 65
          Height = 21
          DataField = 'Data_apuracao_cpmf_final'
          DataSource = ds_movcc
          TabOrder = 1
          OnExit = DBEdit22Exit
        end
      end
      object cbVerificaDesmembramento: TCheckBox
        Left = 297
        Top = 224
        Width = 155
        Height = 17
        Caption = 'Verificar Desmembramento'
        TabOrder = 10
      end
      object cbVerificaDigitalizacao: TCheckBox
        Left = 297
        Top = 205
        Width = 155
        Height = 17
        Caption = 'Verificar Digitalização'
        TabOrder = 11
      end
    end
    object pnlUploadPdf: TPanel
      Left = 80
      Top = 33
      Width = 609
      Height = 304
      BevelWidth = 4
      TabOrder = 8
      Visible = False
      OnExit = b_fechaincluiClick
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
        Top = 214
        Width = 98
        Height = 13
        Caption = 'Localizar arquivo pdf'
      end
      object btnBuscar: TSpeedButton
        Left = 384
        Top = 230
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
        Top = 230
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
        Top = 257
        Width = 58
        Height = 13
        Caption = 'Observação'
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 594
        Height = 199
        Caption = ' PDF'#39's - Saldos Diários '
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
          Top = 54
          Width = 572
          Height = 135
          Hint = 'Duplo Clique para Vizualizar Arquivo'
          DataSource = ds_Arquivos
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid13DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Data_envio'
              Title.Caption = 'Data Saldo'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Observacoes'
              Title.Caption = 'Observações'
              Width = 300
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
        Top = 231
        Width = 369
        Height = 21
        Enabled = False
        TabOrder = 1
        OnChange = edtCaminhoChange
      end
      object btnUpload: TBitBtn
        Left = 384
        Top = 270
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
        Top = 270
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
      object edtObservacoesPdf: TEdit
        Left = 8
        Top = 274
        Width = 369
        Height = 21
        TabOrder = 4
        OnChange = edtCaminhoChange
      end
      object btnExcluirPdf: TBitBtn
        Left = 458
        Top = 270
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
    object p_desmcred: TPanel
      Left = 548
      Top = 15
      Width = 717
      Height = 338
      BevelWidth = 4
      TabOrder = 4
      Visible = False
      OnExit = b_fechadesmcredClick
      object Label18: TLabel
        Left = 4
        Top = 4
        Width = 709
        Height = 20
        Align = alTop
        Alignment = taCenter
        Caption = 'Desmembramento de Créditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10514464
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel6: TPanel
        Left = 4
        Top = 24
        Width = 709
        Height = 77
        Align = alTop
        Enabled = False
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 4
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label11: TLabel
          Left = 96
          Top = 4
          Width = 84
          Height = 13
          Caption = 'Empresa / Cliente'
        end
        object Label12: TLabel
          Left = 460
          Top = 4
          Width = 98
          Height = 13
          Caption = 'Tipo de Lançamento'
        end
        object Label13: TLabel
          Left = 96
          Top = 37
          Width = 41
          Height = 13
          Caption = 'Histórico'
        end
        object Label14: TLabel
          Left = 16
          Top = 37
          Width = 55
          Height = 13
          Caption = 'Documento'
        end
        object Label15: TLabel
          Left = 576
          Top = 37
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 460
          Top = 16
          Width = 237
          Height = 21
          DataField = 'Tipo'
          DataSource = ds_movcc
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = ds_lancamento
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 16
          Width = 77
          Height = 21
          DataField = 'Data'
          DataSource = ds_movcc
          TabOrder = 1
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 96
          Top = 16
          Width = 361
          Height = 21
          DataField = 'Cliente'
          DataSource = ds_movcc
          KeyField = 'Codigo'
          ListField = 'Razao_Social'
          ListSource = ds_qimportadores
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 16
          Top = 49
          Width = 77
          Height = 21
          DataField = 'Doc'
          DataSource = ds_movcc
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 96
          Top = 49
          Width = 357
          Height = 21
          DataField = 'Historico'
          DataSource = ds_movcc
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 576
          Top = 49
          Width = 121
          Height = 21
          DataField = 'Valor'
          DataSource = ds_movcc
          TabOrder = 5
          OnKeyPress = DBEdit4KeyPress
        end
      end
      object Panel7: TPanel
        Left = 4
        Top = 101
        Width = 709
        Height = 144
        Align = alTop
        Caption = 'Panel7'
        TabOrder = 1
        object l_tdesmcred: TLabel
          Left = 1
          Top = 130
          Width = 707
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = 'Total Desmembrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid3: TDBGrid
          Left = 16
          Top = 7
          Width = 681
          Height = 120
          DataSource = ds_qcreditos
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Data_Credito'
              Title.Caption = 'Data Crédito'
              Width = 72
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
              Title.Caption = 'Descricao do tipo de crédito'
              Width = 252
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Detalhe'
              Width = 151
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 91
              Visible = True
            end>
        end
      end
      object Panel8: TPanel
        Left = 4
        Top = 245
        Width = 709
        Height = 84
        Align = alTop
        TabOrder = 2
        object Label26: TLabel
          Left = 16
          Top = 4
          Width = 44
          Height = 13
          Caption = 'Processo'
        end
        object Label25: TLabel
          Left = 96
          Top = 4
          Width = 72
          Height = 13
          Caption = 'Tipo de Crédito'
        end
        object Label24: TLabel
          Left = 576
          Top = 4
          Width = 95
          Height = 13
          Caption = 'Valor Desmembrado'
        end
        object b_gravarcred: TBitBtn
          Left = 379
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Gravar'
          Enabled = False
          TabOrder = 4
          OnClick = b_gravarcredClick
          Kind = bkOK
        end
        object b_excluidcred: TBitBtn
          Left = 545
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Excluir'
          Default = True
          Enabled = False
          ModalResult = 1
          TabOrder = 5
          OnClick = b_excluidcredClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
            305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
            005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
            B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
            B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
            B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
            B0557777FF577777F7F500000E055550805577777F7555575755500000555555
            05555777775555557F5555000555555505555577755555557555}
          NumGlyphs = 2
        end
        object b_fechadesmcred: TBitBtn
          Left = 624
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 6
          OnClick = b_fechadesmcredClick
          Kind = bkCancel
        end
        object DBEdit9: TDBEdit
          Left = 16
          Top = 20
          Width = 77
          Height = 21
          DataField = 'Processo'
          DataSource = ds_creditos
          TabOrder = 0
          OnEnter = DBEdit9Enter
          OnExit = DBEdit9Exit
          OnKeyPress = DBEdit9KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 576
          Top = 20
          Width = 121
          Height = 21
          DataField = 'Valor'
          DataSource = ds_creditos
          TabOrder = 3
          OnExit = DBEdit10Exit
          OnKeyPress = DBEdit10KeyPress
        end
        object DBL_tipos: TDBLookupComboBox
          Left = 96
          Top = 20
          Width = 259
          Height = 21
          DataField = 'Credito'
          DataSource = ds_creditos
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = ds_tiposcreditos
          TabOrder = 1
          OnExit = DBL_tiposExit
        end
        object b_novodcred: TBitBtn
          Left = 299
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Novo'
          TabOrder = 7
          OnClick = b_novodcredClick
          Kind = bkOK
        end
        object b_cancelcred: TBitBtn
          Left = 464
          Top = 51
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          Enabled = False
          TabOrder = 8
          OnClick = b_cancelcredClick
          Kind = bkCancel
        end
        object dbedtDetalheCredito: TDBEdit
          Left = 356
          Top = 20
          Width = 217
          Height = 21
          DataField = 'Detalhe'
          DataSource = ds_creditos
          MaxLength = 100
          TabOrder = 2
        end
      end
      object p_processos: TPanel
        Left = 236
        Top = 32
        Width = 201
        Height = 241
        Color = clTeal
        TabOrder = 3
        Visible = False
        OnExit = b_fechaprocessoClick
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 199
          Height = 24
          Align = alTop
          Caption = 'Processos com Saldos '
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBGrid4: TDBGrid
          Left = 8
          Top = 32
          Width = 185
          Height = 166
          DataSource = ds_qprocessos
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
              Title.Caption = 'Processo'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo_Faturamento'
              Title.Caption = 'Saldo'
              Width = 72
              Visible = True
            end>
        end
        object b_okproc: TBitBtn
          Left = 10
          Top = 208
          Width = 75
          Height = 25
          Caption = 'Ok'
          TabOrder = 1
          OnClick = b_okprocClick
          Kind = bkOK
        end
        object b_fechaprocesso: TBitBtn
          Left = 114
          Top = 208
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 2
          OnClick = b_fechaprocessoClick
          Kind = bkCancel
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 78
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object b_excluirconta: TBitBtn
      Left = 683
      Top = 53
      Width = 63
      Height = 21
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 3
      Visible = False
      OnClick = b_excluircontaClick
    end
    object b_gravarconta: TBitBtn
      Left = 683
      Top = 29
      Width = 63
      Height = 21
      Caption = 'Gravar'
      Enabled = False
      TabOrder = 2
      Visible = False
      OnClick = b_gravarcontaClick
    end
    object b_novaconta: TBitBtn
      Left = 683
      Top = 5
      Width = 63
      Height = 21
      Caption = 'Nova'
      Enabled = False
      TabOrder = 1
      Visible = False
      OnClick = b_novacontaClick
    end
    object DBG_CC: TDBGrid
      Left = 1
      Top = 1
      Width = 751
      Height = 76
      Hint = 'Duplo Clique = Ver saldo em conta Corrente'
      Align = alClient
      Color = clWhite
      DataSource = ds_contascorrentes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBG_CCDblClick
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
          Width = 331
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
          Visible = True
        end>
    end
  end
  object p_filtrar: TPanel
    Left = 240
    Top = 38
    Width = 289
    Height = 287
    BevelWidth = 4
    TabOrder = 2
    Visible = False
    OnExit = p_filtrarExit
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
      Top = 246
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      TabOrder = 0
      OnClick = b_aplicarfiltroClick
      Kind = bkOK
    end
    object b_cancelafiltro: TBitBtn
      Left = 151
      Top = 246
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
      Height = 207
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
      object Label45: TLabel
        Left = 44
        Top = 158
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object me_datafinal: TMaskEdit
        Left = 132
        Top = 30
        Width = 69
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object me_datainicial: TMaskEdit
        Left = 44
        Top = 30
        Width = 69
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object me_valorfinal: TEdit
        Left = 132
        Top = 76
        Width = 69
        Height = 21
        TabOrder = 2
      end
      object me_valorinicial: TEdit
        Left = 44
        Top = 76
        Width = 69
        Height = 21
        TabOrder = 3
      end
      object dblcTpLancamento: TDBLookupComboBox
        Left = 44
        Top = 124
        Width = 158
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = ds_lancamentof
        TabOrder = 4
      end
      object dblcCliente: TDBLookupComboBox
        Left = 44
        Top = 174
        Width = 158
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Nome_Grupo'
        ListSource = ds_importadores_grupos
        TabOrder = 5
      end
      object sbLimpaCliente: TBitBtn
        Left = 206
        Top = 174
        Width = 21
        Height = 21
        TabOrder = 6
        OnClick = sbLimpaClienteClick
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
      object sbLimpaTpLancamento: TBitBtn
        Left = 206
        Top = 124
        Width = 21
        Height = 21
        TabOrder = 7
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
  object T_parametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Parametros'
    Left = 752
    Top = 84
    object T_parametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_parametrosFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object T_parametrosNumerador_Processos: TStringField
      FieldName = 'Numerador_Processos'
      Size = 8
    end
    object T_parametrosNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Size = 8
    end
    object T_parametrosEndereco_ftp: TStringField
      FieldName = 'Endereco_ftp'
      Size = 30
    end
    object T_parametrosUsuario_ftp: TStringField
      FieldName = 'Usuario_ftp'
      Size = 30
    end
    object T_parametrosSenha_ftp: TStringField
      FieldName = 'Senha_ftp'
      Size = 16
    end
    object T_parametrosHost: TStringField
      FieldName = 'Host'
      Size = 15
    end
    object T_parametrosVersao: TStringField
      FieldName = 'Versao'
      Size = 50
    end
    object T_parametroskeycrypt: TStringField
      FieldName = 'keycrypt'
      Size = 255
    end
    object T_parametrosHost_smtp: TStringField
      FieldName = 'Host_smtp'
      Size = 15
    end
    object T_parametrosPorta_smtp: TSmallintField
      FieldName = 'Porta_smtp'
    end
    object T_parametrosUsuario_smtp: TStringField
      FieldName = 'Usuario_smtp'
      Size = 30
    end
    object T_parametrosSenha_smtp: TStringField
      FieldName = 'Senha_smtp'
      Size = 16
    end
    object T_parametrosNumerador_Transmittal: TStringField
      FieldName = 'Numerador_Transmittal'
      Size = 8
    end
    object T_parametrosPATH_SERVER: TStringField
      FieldName = 'PATH_SERVER'
      Size = 100
    end
    object T_parametrosAliq_PIS_PASEP: TFloatField
      FieldName = 'Aliq_PIS_PASEP'
    end
    object T_parametrosAliq_COFINS: TFloatField
      FieldName = 'Aliq_COFINS'
    end
    object T_parametrosAliq_ICMS: TFloatField
      FieldName = 'Aliq_ICMS'
    end
    object T_parametrosAliq_ICMS_EXTRA: TFloatField
      FieldName = 'Aliq_ICMS_EXTRA'
    end
    object T_parametrosNumerador_Sol_Cheques: TStringField
      FieldName = 'Numerador_Sol_Cheques'
      Size = 50
    end
    object T_parametrosNumerador_Sol_Reg: TStringField
      FieldName = 'Numerador_Sol_Reg'
      Size = 50
    end
    object T_parametrosNumerador_Sol_Tracla: TStringField
      FieldName = 'Numerador_Sol_Tracla'
      Size = 50
    end
  end
  object DS_parametros: TDataSource
    DataSet = T_parametros
    Left = 747
    Top = 563
  end
  object t_contascorrentes: TTable
    AfterScroll = t_contascorrentesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_contascorrentes
    TableName = 'Contas_Correntes'
    Left = 756
    Top = 196
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
  object ds_contascorrentes: TDataSource
    DataSet = q_cc
    Left = 834
    Top = 562
  end
  object T_movcc: TTable
    BeforePost = T_movccBeforePost
    AfterPost = T_movccAfterPost
    BeforeDelete = T_movccBeforeDelete
    AfterDelete = t_contascorrentesAfterScroll
    AfterScroll = T_movccAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo;Codigo_Mov'
    MasterFields = 'Empresa;Filial;Codigo;Codigo_Mov'
    MasterSource = ds_qmov
    TableName = 'Movimentacao_Contas_Correntes'
    Left = 816
    Top = 84
    object T_movccEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_movccFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_movccCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object T_movccData: TDateTimeField
      FieldName = 'Data'
    end
    object T_movccTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object T_movccDoc: TStringField
      FieldName = 'Doc'
      FixedChar = True
      Size = 15
    end
    object T_movccHistorico: TStringField
      FieldName = 'Historico'
      FixedChar = True
      Size = 255
    end
    object T_movccValor: TFloatField
      FieldName = 'Valor'
    end
    object T_movccCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 4
    end
    object T_movccCodigo_Mov: TAutoIncField
      FieldName = 'Codigo_Mov'
    end
    object T_movccPlano_Contas: TStringField
      FieldName = 'Plano_Contas'
      FixedChar = True
      Size = 8
    end
    object T_movccUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object T_movccData_apuracao_cpmf_inicial: TDateTimeField
      FieldName = 'Data_apuracao_cpmf_inicial'
    end
    object T_movccData_apuracao_cpmf_final: TDateTimeField
      FieldName = 'Data_apuracao_cpmf_final'
    end
    object T_movccDesmembra: TSmallintField
      FieldName = 'Desmembra'
    end
    object T_movccDigitaliza: TSmallintField
      FieldName = 'Digitaliza'
    end
    object T_movccCodigo_SOLREG: TStringField
      FieldName = 'Codigo_SOLREG'
      FixedChar = True
      Size = 50
    end
    object T_movccCodigo_SOLCHEQUE: TStringField
      FieldName = 'Codigo_SOLCHEQUE'
    end
    object T_movccCodigo_ContasAPagar: TStringField
      FieldName = 'Codigo_ContasAPagar'
    end
  end
  object ds_movcc: TDataSource
    DataSet = T_movcc
    Left = 835
    Top = 618
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
      
        'WHERE (((Movimentacao_Contas_Correntes.Empresa)=:QEMPRESA) AND (' +
        '(Movimentacao_Contas_Correntes.Filial)=:QFILIAL) AND ((Movimenta' +
        'cao_Contas_Correntes.Codigo)=:QCONTA) AND ((Movimentacao_Contas_' +
        'Correntes.Data)>=:qdataini And (Movimentacao_Contas_Correntes.Da' +
        'ta)<=:qdatafin))'
      
        'ORDER BY Movimentacao_Contas_Correntes.Data DESC, Movimentacao_C' +
        'ontas_Correntes.Codigo_Mov DESC;')
    Left = 344
    Top = 513
    ParamData = <
      item
        DataType = ftString
        Name = 'QEMPRESA'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'QFILIAL'
        ParamType = ptUnknown
        Value = 'RJO'
      end
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
  object ds_qmov: TDataSource
    DataSet = q_mov
    Left = 783
    Top = 618
  end
  object q_saldo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Conta' +
        's_Correntes.Filial, Movimentacao_Contas_Correntes.Codigo, Sum(Mo' +
        'vimentacao_Contas_Correntes.Valor) AS saldo'
      
        'FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Cc' +
        'orrente ON Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamento' +
        '_Ccorrente.Codigo'
      
        'GROUP BY Movimentacao_Contas_Correntes.Empresa, Movimentacao_Con' +
        'tas_Correntes.Filial, Movimentacao_Contas_Correntes.Codigo'
      
        'HAVING (((Movimentacao_Contas_Correntes.Empresa)=:qempresa) AND ' +
        '((Movimentacao_Contas_Correntes.Filial)=:qfilial) AND ((Moviment' +
        'acao_Contas_Correntes.Codigo)=:qconta));')
    Left = 574
    Top = 513
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_saldoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Empresa'
      Size = 4
    end
    object q_saldoFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Filial'
      Size = 4
    end
    object q_saldoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Codigo'
    end
    object q_saldosaldo: TFloatField
      FieldName = 'saldo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Valor'
    end
  end
  object t_lancamento: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Tipos_Lancamento_Ccorrente'
    Left = 1012
    Top = 84
    object t_lancamentoCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_lancamentoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object t_lancamentoPositivo: TSmallintField
      FieldName = 'Positivo'
    end
  end
  object ds_lancamento: TDataSource
    DataSet = t_lancamento
    Left = 572
    Top = 620
  end
  object q_saldogeral: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Conta' +
        's_Correntes.Filial, Sum(Movimentacao_Contas_Correntes.Valor) AS ' +
        'saldo'
      
        'FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Cc' +
        'orrente ON Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamento' +
        '_Ccorrente.Codigo'
      
        'GROUP BY Movimentacao_Contas_Correntes.Empresa, Movimentacao_Con' +
        'tas_Correntes.Filial'
      
        'HAVING (((Movimentacao_Contas_Correntes.Empresa)=:qempresa) AND ' +
        '((Movimentacao_Contas_Correntes.Filial)=:qfilial));')
    Left = 190
    Top = 455
    ParamData = <
      item
        DataType = ftString
        Name = 'qempresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfilial'
        ParamType = ptUnknown
        Value = 'RJO'
      end>
    object q_saldogeralEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Empresa'
      Size = 4
    end
    object q_saldogeralFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Filial'
      Size = 4
    end
    object q_saldogeralsaldo: TFloatField
      FieldName = 'saldo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Valor'
    end
  end
  object t_importadores: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_qimportadores
    TableName = 'Importadores'
    Left = 756
    Top = 140
    object t_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_importadoresFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object t_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object t_importadoresPais: TStringField
      FieldName = 'Pais'
      Size = 3
    end
    object t_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object t_importadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 10
    end
    object t_importadoresTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Size = 1
    end
    object t_importadoresEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object t_importadoresNumero: TStringField
      FieldName = 'Numero'
      Size = 6
    end
    object t_importadoresComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object t_importadoresBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object t_importadoresCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object t_importadoresCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object t_importadoresUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object t_importadoresEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object t_importadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Size = 15
    end
    object t_importadoresBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object t_importadoresAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object t_importadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object t_importadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object t_importadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object t_importadoreslink: TStringField
      FieldName = 'link'
      Size = 50
    end
    object t_importadoresCAE: TStringField
      FieldName = 'CAE'
      Size = 15
    end
    object t_importadoresTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object t_importadoresAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object t_importadoresAcesso_WEB_MS: TSmallintField
      FieldName = 'Acesso_WEB_MS'
    end
    object t_importadoresAcesso_WEB_CLI: TSmallintField
      FieldName = 'Acesso_WEB_CLI'
    end
    object t_importadoresAcesso_WEB_REC: TSmallintField
      FieldName = 'Acesso_WEB_REC'
    end
    object t_importadoresBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
  end
  object ds_importadores: TDataSource
    DataSet = t_importadores
    Left = 652
    Top = 619
  end
  object t_creditos: TTable
    AfterPost = t_creditosAfterPost
    BeforeDelete = t_creditosBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    TableName = 'Creditos_Processos'
    Left = 949
    Top = 84
    object t_creditosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_creditosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_creditosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_creditosREG: TAutoIncField
      FieldName = 'REG'
    end
    object t_creditosCredito: TStringField
      FieldName = 'Credito'
      FixedChar = True
      Size = 4
    end
    object t_creditosData_Credito: TDateTimeField
      FieldName = 'Data_Credito'
    end
    object t_creditosValor: TFloatField
      FieldName = 'Valor'
    end
    object t_creditosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object t_creditosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object t_creditosContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object t_creditosImpdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object t_creditosContabilizado_cliente: TSmallintField
      FieldName = 'Contabilizado_cliente'
    end
    object t_creditosREG_numerarios: TIntegerField
      FieldName = 'REG_numerarios'
    end
    object t_creditosProcesso_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
    object t_creditosDetalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
  end
  object ds_creditos: TDataSource
    DataSet = t_creditos
    Left = 96
    Top = 568
  end
  object t_tiposcreditos: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Codigo <> '#39'IRRF'#39
    Filtered = True
    TableName = 'Tipos_creditos'
    Left = 828
    Top = 140
    object t_tiposcreditosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_tiposcreditosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_tiposcreditosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_tiposcreditosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_tiposcreditosPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
  end
  object ds_tiposcreditos: TDataSource
    DataSet = t_tiposcreditos
    Left = 253
    Top = 567
  end
  object q_processos2: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PRO.Empresa, PRO.Filial, PRO.Codigo, [IMP].Codigo, PRO.Im' +
        'portador, PRO.Saldo_Faturamento'
      
        'FROM ((Importadores AS IMP INNER JOIN Importadores_Agrupados AS ' +
        'IG1 ON [IMP].Codigo = IG1.Codigo) INNER JOIN Importadores_Agrupa' +
        'dos AS IG2 ON IG1.Codigo_AGRUPADO = IG2.Codigo_AGRUPADO) INNER J' +
        'OIN Processos AS PRO ON IG2.Codigo = PRO.Importador'
      
        'WHERE (((PRO.Codigo) Like :qprocesso) AND (([IMP].Codigo)=:qimpo' +
        'rtador));')
    Left = 688
    Top = 700
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'qimportador'
        ParamType = ptUnknown
        Value = '1'
      end>
    object q_processos2Empresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_processos2Filial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_processos2Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 8
    end
    object q_processos2Codigo_1: TStringField
      FieldName = 'Codigo_1'
      FixedChar = True
      Size = 4
    end
    object q_processos2Importador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object q_processos2Saldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
  end
  object ds_qprocessos: TDataSource
    DataSet = q_processos2
    Left = 25
    Top = 567
  end
  object Q_creditos: TQuery
    AfterScroll = Q_creditosAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Creditos_Processos.Empresa, Creditos_Processos.Filial' +
        ', Creditos_Processos.Conta_Corrente, Creditos_Processos.Codigo_m' +
        'ov, '
      
        '                      Creditos_Processos.Data_Credito, Creditos_' +
        'Processos.Contabilizado, Creditos_Processos.Processo, Creditos_P' +
        'rocessos.REG, '
      
        '                      Creditos_Processos.Credito, Tipos_creditos' +
        '.Descricao, Creditos_Processos.Valor, Creditos_Processos.Detalhe'
      'FROM         Creditos_Processos LEFT OUTER JOIN'
      
        '                      Tipos_creditos ON Creditos_Processos.Credi' +
        'to = Tipos_creditos.Codigo'
      
        'WHERE (((Creditos_Processos.Conta_Corrente)=:qconta) AND ((Credi' +
        'tos_Processos.Codigo_mov)=:qmov) AND ((Creditos_Processos.Contab' +
        'ilizado)="SIM"));'
      '')
    Left = 298
    Top = 454
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
        Value = 1
      end>
    object Q_creditosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Empresa'
      FixedChar = True
      Size = 4
    end
    object Q_creditosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Filial'
      FixedChar = True
      Size = 4
    end
    object Q_creditosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Conta_Corrente'
    end
    object Q_creditosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Codigo_mov'
    end
    object Q_creditosData_Credito: TDateTimeField
      FieldName = 'Data_Credito'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Data_Credito'
    end
    object Q_creditosContabilizado: TStringField
      FieldName = 'Contabilizado'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Contabilizado'
      FixedChar = True
      Size = 3
    end
    object Q_creditosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Processo'
      FixedChar = True
      Size = 8
    end
    object Q_creditosREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Creditos_Processos.REG'
    end
    object Q_creditosCredito: TStringField
      FieldName = 'Credito'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Credito'
      FixedChar = True
      Size = 4
    end
    object Q_creditosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_creditos.Descricao'
      FixedChar = True
      Size = 50
    end
    object Q_creditosValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Valor'
    end
    object Q_creditosDetalhe: TStringField
      FieldName = 'Detalhe'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Detalhe'
      FixedChar = True
      Size = 50
    end
  end
  object ds_qcreditos: TDataSource
    DataSet = Q_creditos
    Left = 726
    Top = 618
  end
  object q_totaldesmcred: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Creditos_Processos.Conta_Corrente, Creditos_Processos.Cod' +
        'igo_mov, Sum(Creditos_Processos.Valor) AS Valor'
      'FROM  Creditos_Processos'
      
        'GROUP BY Creditos_Processos.Conta_Corrente, Creditos_Processos.C' +
        'odigo_mov'
      
        'HAVING (((Creditos_Processos.Conta_Corrente)=:qconta) AND ((Cred' +
        'itos_Processos.Codigo_mov)=:qmov));')
    Left = 369
    Top = 453
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
        Value = 1
      end>
    object q_totaldesmcredConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Conta_Corrente'
    end
    object q_totaldesmcredCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Codigo_mov'
    end
    object q_totaldesmcredValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Valor'
    end
  end
  object q_debitos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Numerarios_Processos.Empresa, '
      '       Numerarios_Processos.Filial, '
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
      '       END AS Arquivo  '
      
        ' FROM Numerarios_Processos LEFT JOIN Tipos_Numerario ON (Numerar' +
        'ios_Processos.Numerario = Tipos_Numerario.Codigo) LEFT JOIN Proc' +
        'essos '
      
        '   ON Numerarios_Processos.Processo = Processos.Codigo LEFT JOIN' +
        ' Importadores'
      '   ON Processos.Importador = Importadores.Codigo'
      
        'WHERE (((Numerarios_Processos.Contabilizado)="SIM") AND ((Numera' +
        'rios_Processos.Conta_Corrente)=:qconta) AND ((Numerarios_Process' +
        'os.Codigo_mov)=:qmov));')
    Left = 884
    Top = 508
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
      OnGetText = q_debitosSaldoGetText
    end
    object q_debitosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 250
    end
    object q_debitosArquivo: TStringField
      FieldName = 'Arquivo'
    end
  end
  object T_contas_e: TTable
    CachedUpdates = True
    AfterScroll = t_contascorrentesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Contas_Correntes'
    Left = 968
    Top = 139
    object T_contas_eEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_contas_eFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_contas_eCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object T_contas_eBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      FixedChar = True
      Size = 1
    end
    object T_contas_eDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object T_contas_eBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object T_contas_eAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object T_contas_eConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object T_contas_eSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_contas_eNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object T_contas_eData: TDateTimeField
      FieldName = 'Data'
    end
    object T_contas_eEmpresacc: TStringField
      FieldName = 'Empresacc'
      FixedChar = True
      Size = 4
    end
    object T_contas_eFilialcc: TStringField
      FieldName = 'Filialcc'
      FixedChar = True
      Size = 4
    end
    object T_contas_eASCAA: TSmallintField
      FieldName = 'ASCAA'
    end
  end
  object ds_contas_e: TDataSource
    DataSet = T_contas_e
    Left = 386
    Top = 620
  end
  object ds_qdebitos: TDataSource
    DataSet = q_debitos
    Left = 677
    Top = 564
  end
  object q_totaldesmdeb: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Conta_Corrente, Numerarios_Processos' +
        '.Codigo_mov, Sum(Numerarios_Processos.Valor_Contabilizado) AS va' +
        'lor, Numerarios_Processos.Contabilizado'
      'from Numerarios_Processos'
      
        'GROUP BY Numerarios_Processos.Conta_Corrente, Numerarios_Process' +
        'os.Codigo_mov, Numerarios_Processos.Contabilizado'
      
        'HAVING (((Numerarios_Processos.Conta_Corrente)=:qconta) AND ((Nu' +
        'merarios_Processos.Codigo_mov)=:qmov) AND ((Numerarios_Processos' +
        '.Contabilizado)="SIM"));')
    Left = 456
    Top = 452
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
        Value = 0
      end>
    object q_totaldesmdebConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Conta_Corrente'
    end
    object q_totaldesmdebCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Codigo_mov'
    end
    object q_totaldesmdebvalor: TFloatField
      FieldName = 'valor'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
    object q_totaldesmdebContabilizado: TStringField
      FieldName = 'Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Contabilizado'
      Size = 3
    end
  end
  object t_numerarios: TTable
    BeforePost = t_numerariosBeforePost
    AfterPost = t_numerariosAfterPost
    BeforeDelete = t_numerariosBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    MasterFields = 'Empresa;Filial;Processo;REG'
    MasterSource = ds_qdebitos
    TableName = 'Numerarios_Processos'
    Left = 756
    Top = 308
    object t_numerariosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_numerariosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_numerariosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_numerariosREG: TAutoIncField
      FieldName = 'REG'
    end
    object t_numerariosNumerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object t_numerariosUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object t_numerariosData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object t_numerariosValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object t_numerariosPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object t_numerariosOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object t_numerariosUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object t_numerariosData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object t_numerariosValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object t_numerariosValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object t_numerariosContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object t_numerariosUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object t_numerariosConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object t_numerariosCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object t_numerariosImpdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object t_numerariosDetalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object t_numerariosDocsis: TStringField
      FieldName = 'Docsis'
      FixedChar = True
      Size = 15
    end
    object t_numerariosFatura_mov: TStringField
      FieldName = 'Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object t_numerariosFornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object t_numerariosCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object t_numerariosContabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object t_numerariosREG_creditos: TIntegerField
      FieldName = 'REG_creditos'
    end
    object t_numerariosProcesso_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
  end
  object ds_numerarios: TDataSource
    DataSet = t_numerarios
    Left = 547
    Top = 564
  end
  object t_tiposnumerarios: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    TableName = 'Tipos_Numerario'
    Left = 904
    Top = 252
    object t_tiposnumerariosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_tiposnumerariosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_tiposnumerariosCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object t_tiposnumerariosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_tiposnumerariosPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
    object t_tiposnumerariosRateio: TStringField
      FieldName = 'Rateio'
      Size = 1
    end
    object t_tiposnumerariosContabilizaCC: TSmallintField
      FieldName = 'ContabilizaCC'
    end
  end
  object ds_tiposnumerarios: TDataSource
    DataSet = q_tiposnumerarios
    Left = 896
    Top = 623
  end
  object q_debitos2: TQuery
    AfterScroll = q_debitos2AfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Empresa, Numerarios_Processos.Filial' +
        ', Numerarios_Processos.Processo, Numerarios_Processos.REG, Numer' +
        'arios_Processos.Numerario, Numerarios_Processos.Usuario_Previsao' +
        ', Numerarios_Processos.Data_Previsao, Numerarios_Processos.Valor' +
        '_Previsao, Numerarios_Processos.Previsao_solicitada, Numerarios_' +
        'Processos.Ok_Previsao_financeiro, Numerarios_Processos.Usuario_F' +
        'inanceiro, Numerarios_Processos.Data_Registro, Numerarios_Proces' +
        'sos.Valor_Registrado, Numerarios_Processos.Valor_Contabilizado, ' +
        'Numerarios_Processos.Contabilizado, Numerarios_Processos.Usuario' +
        '_Contablizado, Numerarios_Processos.Conta_Corrente, Numerarios_P' +
        'rocessos.Codigo_mov, Numerarios_Processos.Impdemfim, Numerarios_' +
        'Processos.Detalhe, Numerarios_Processos.Docsis, Numerarios_Proce' +
        'ssos.Fatura_mov, Numerarios_Processos.Fornecedor, Numerarios_Pro' +
        'cessos.Codigo, Numerarios_Processos.Contabilizado_cliente, Numer' +
        'arios_Processos.REG_creditos, Numerarios_Processos.Processo_Fund' +
        'oFIXO, Tipos_Numerario.Descricao, Processos.Importador'
      
        'FROM (Numerarios_Processos INNER JOIN Tipos_Numerario ON Numerar' +
        'ios_Processos.Numerario = Tipos_Numerario.Codigo) INNER JOIN Pro' +
        'cessos ON Numerarios_Processos.Processo = Processos.Codigo'
      
        'WHERE (((Numerarios_Processos.Processo) Like :qprocesso) AND ((N' +
        'umerarios_Processos.Contabilizado)<>"SIM") AND ((Tipos_Numerario' +
        '.ContabilizaCC)=1) AND ((Processos.Importador) Like :qcliente))'
      'ORDER BY Numerarios_Processos.Processo;')
    Left = 980
    Top = 620
    ParamData = <
      item
        DataType = ftString
        Name = 'qprocesso'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'qcliente'
        ParamType = ptUnknown
        Value = '*'
      end>
    object q_debitos2Empresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_debitos2Filial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_debitos2Processo: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_debitos2REG: TAutoIncField
      FieldName = 'REG'
    end
    object q_debitos2Numerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object q_debitos2Usuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object q_debitos2Data_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object q_debitos2Valor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object q_debitos2Previsao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object q_debitos2Ok_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object q_debitos2Usuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object q_debitos2Data_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object q_debitos2Valor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object q_debitos2Valor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object q_debitos2Contabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object q_debitos2Usuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object q_debitos2Conta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object q_debitos2Codigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object q_debitos2Impdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object q_debitos2Detalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object q_debitos2Docsis: TStringField
      FieldName = 'Docsis'
      FixedChar = True
      Size = 15
    end
    object q_debitos2Fatura_mov: TStringField
      FieldName = 'Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object q_debitos2Fornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object q_debitos2Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object q_debitos2Contabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object q_debitos2REG_creditos: TIntegerField
      FieldName = 'REG_creditos'
    end
    object q_debitos2Processo_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
    object q_debitos2Descricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object q_debitos2Importador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
  end
  object ds_qdebitos2: TDataSource
    DataSet = q_debitos2
    Left = 17
    Top = 623
  end
  object T_numerarios2: TTable
    BeforePost = T_numerarios2BeforePost
    AfterPost = T_numerarios2AfterPost
    BeforeDelete = T_numerarios2BeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    MasterFields = 'Empresa;Filial;Processo;REG'
    MasterSource = ds_qdebitos2
    TableName = 'Numerarios_Processos'
    Left = 824
    Top = 308
    object T_numerarios2Empresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_numerarios2Filial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_numerarios2Processo: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_numerarios2REG: TAutoIncField
      FieldName = 'REG'
    end
    object T_numerarios2Numerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object T_numerarios2Usuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object T_numerarios2Data_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object T_numerarios2Valor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object T_numerarios2Previsao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object T_numerarios2Ok_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object T_numerarios2Usuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object T_numerarios2Data_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object T_numerarios2Valor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object T_numerarios2Valor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object T_numerarios2Contabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object T_numerarios2Usuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object T_numerarios2Conta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object T_numerarios2Codigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object T_numerarios2Impdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object T_numerarios2Detalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object T_numerarios2Docsis: TStringField
      FieldName = 'Docsis'
      FixedChar = True
      Size = 15
    end
    object T_numerarios2Fatura_mov: TStringField
      FieldName = 'Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object T_numerarios2Fornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object T_numerarios2Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object T_numerarios2Contabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object T_numerarios2REG_creditos: TIntegerField
      FieldName = 'REG_creditos'
    end
    object T_numerarios2Processo_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
  end
  object ds_numerarios2: TDataSource
    DataSet = T_numerarios2
    Left = 168
    Top = 621
  end
  object Q_extrato: TQuery
    AfterScroll = Q_extratoAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Conta' +
        's_Correntes.Filial, Contas_Correntes.Descricao, Movimentacao_Con' +
        'tas_Correntes.Codigo, Movimentacao_Contas_Correntes.Data, Movime' +
        'ntacao_Contas_Correntes.Tipo, Tipos_Lancamento_Ccorrente.Descric' +
        'ao AS otipo, Movimentacao_Contas_Correntes.Doc, Movimentacao_Con' +
        'tas_Correntes.Historico, Movimentacao_Contas_Correntes.Valor, Mo' +
        'vimentacao_Contas_Correntes.Cliente, Movimentacao_Contas_Corrent' +
        'es.Codigo_Mov'
      
        'FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Cc' +
        'orrente ON (Movimentacao_Contas_Correntes.Tipo = Tipos_Lancament' +
        'o_Ccorrente.Codigo) LEFT JOIN Contas_Correntes ON (Movimentacao_' +
        'Contas_Correntes.Empresa = Contas_Correntes.Empresa) AND (Movime' +
        'ntacao_Contas_Correntes.Filial = Contas_Correntes.Filial) AND (M' +
        'ovimentacao_Contas_Correntes.Codigo = Contas_Correntes.Codigo)'
      
        'WHERE (((Movimentacao_Contas_Correntes.Codigo) Like :qconta) AND' +
        ' ((Movimentacao_Contas_Correntes.Data)>=:qdataini And (Movimenta' +
        'cao_Contas_Correntes.Data)<=:qdatafin) AND ((Movimentacao_Contas' +
        '_Correntes.Tipo) Like :qtipo))'
      'ORDER BY Movimentacao_Contas_Correntes.Data;')
    Left = 824
    Top = 512
    ParamData = <
      item
        DataType = ftString
        Name = 'qconta'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 36892d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 37256d
      end
      item
        DataType = ftString
        Name = 'qtipo'
        ParamType = ptUnknown
        Value = '*'
      end>
    object Q_extratoEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object Q_extratoFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object Q_extratoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object Q_extratoCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object Q_extratoData: TDateTimeField
      FieldName = 'Data'
    end
    object Q_extratoTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object Q_extratootipo: TStringField
      FieldName = 'otipo'
      Size = 45
    end
    object Q_extratoDoc: TStringField
      FieldName = 'Doc'
      Size = 15
    end
    object Q_extratoHistorico: TStringField
      FieldName = 'Historico'
      Size = 255
    end
    object Q_extratoValor: TFloatField
      FieldName = 'Valor'
    end
    object Q_extratoCliente: TStringField
      FieldName = 'Cliente'
      Size = 4
    end
    object Q_extratoCodigo_Mov: TAutoIncField
      FieldName = 'Codigo_Mov'
    end
  end
  object ds_qextrato: TDataSource
    DataSet = Q_extrato
    Left = 504
    Top = 620
  end
  object q_santerior: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(Valor) AS Saldoanterior'
      'FROM Movimentacao_Contas_Correntes '
      
        'WHERE Codigo Like :qconta AND Data>= :qdataini And Data < :qdata' +
        'fin')
    Left = 669
    Top = 450
    ParamData = <
      item
        DataType = ftString
        Name = 'qconta'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftDateTime
        Name = 'qdataini'
        ParamType = ptUnknown
        Value = 36892d
      end
      item
        DataType = ftDateTime
        Name = 'qdatafin'
        ParamType = ptUnknown
        Value = 37256d
      end>
    object q_santeriorSaldoanterior: TFloatField
      FieldName = 'Saldoanterior'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Valor'
    end
  end
  object q_doc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Movimentacao_Contas_Correntes.Codigo, Movimentacao_Contas' +
        '_Correntes.Tipo, Movimentacao_Contas_Correntes.Doc'
      
        'FROM Parametros LEFT JOIN Movimentacao_Contas_Correntes ON (Para' +
        'metros.Filial = Movimentacao_Contas_Correntes.Filial) AND (Param' +
        'etros.Empresa = Movimentacao_Contas_Correntes.Empresa)'
      
        'WHERE (((Movimentacao_Contas_Correntes.Codigo)=:qconta) AND ((Mo' +
        'vimentacao_Contas_Correntes.Tipo)=:qtipo) AND ((Movimentacao_Con' +
        'tas_Correntes.Doc)=:qdoc));')
    Left = 619
    Top = 513
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'qtipo'
        ParamType = ptUnknown
        Value = '5'
      end
      item
        DataType = ftString
        Name = 'qdoc'
        ParamType = ptUnknown
        Value = 'bmn'
      end>
    object q_docCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Codigo'
    end
    object q_docTipo: TIntegerField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Tipo'
    end
    object q_docDoc: TStringField
      FieldName = 'Doc'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Doc'
      Size = 15
    end
  end
  object t_lancamentof: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Codigo <> 1'
    Filtered = True
    TableName = 'Tipos_Lancamento_Ccorrente'
    Left = 932
    Top = 195
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
  object ds_lancamentof: TDataSource
    DataSet = t_lancamentof
    Left = 333
    Top = 567
  end
  object ds_plano: TDataSource
    DataSet = q_plano
    Left = 445
    Top = 620
  end
  object q_excluicred: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Creditos_Processos'
      
        'SET Creditos_Processos.Conta_Corrente = Null, Creditos_Processos' +
        '.Codigo_mov = Null, Creditos_Processos.Contabilizado = "NÃO"'
      'from Creditos_Processos'
      
        'Parametros INNER JOIN (Creditos_Processos INNER JOIN Tipos_credi' +
        'tos ON (Creditos_Processos.Credito = Tipos_creditos.Codigo) AND ' +
        '(Creditos_Processos.Filial = Tipos_creditos.Filial) AND (Credito' +
        's_Processos.Empresa = Tipos_creditos.Empresa)) ON (Parametros.Fi' +
        'lial = Creditos_Processos.Filial) AND (Parametros.Empresa = Cred' +
        'itos_Processos.Empresa) '
      
        'WHERE (((Creditos_Processos.Conta_Corrente)=:qconta) AND ((Credi' +
        'tos_Processos.Codigo_mov)=:qmov) AND ((Creditos_Processos.Contab' +
        'ilizado)="SIM"));')
    Left = 605
    Top = 451
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'qmov'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object q_excluideb: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE Numerarios_Processos SET Numerarios_Processos.Conta_Corre' +
        'nte = Null, Numerarios_Processos.Codigo_mov = Null, Numerarios_P' +
        'rocessos.Contabilizado = "NÃO"'
      
        'WHERE (((Numerarios_Processos.Contabilizado)="SIM") AND ((Numera' +
        'rios_Processos.Conta_Corrente)=:qconta) AND ((Numerarios_Process' +
        'os.Codigo_mov)=:qmov));')
    Left = 976
    Top = 506
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'qmov'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object q_importadores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Codigo <>'#39'0000'#39
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.Razao_Social, Importadores.cnpj_cpf_completo'
      
        'FROM Parametros INNER JOIN Importadores ON (Parametros.Filial = ' +
        'Importadores.Filial) AND (Parametros.Empresa = Importadores.Empr' +
        'esa)'
      'ORDER BY Importadores.Razao_Social;')
    Left = 32
    Top = 510
    object q_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object q_importadoresFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object q_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object q_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object q_importadorescnpj_cpf_completo: TStringField
      FieldName = 'cnpj_cpf_completo'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      Size = 14
    end
  end
  object ds_qimportadores: TDataSource
    DataSet = q_importadores
    Left = 419
    Top = 566
  end
  object q_saldos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Razao_Social, Sum(Extrato_temp.Valor) AS qva' +
        'lor'
      
        'FROM Importadores INNER JOIN Extrato_temp ON (Importadores.Empre' +
        'sa = Extrato_temp.Empresa) AND (Importadores.Filial = Extrato_te' +
        'mp.Filial) AND (Importadores.Codigo = Extrato_temp.Cliente)'
      'WHERE (((Importadores.Codigo)<>"0000"))'
      'GROUP BY Importadores.Razao_Social'
      
        'HAVING (((Sum(Extrato_temp.Valor))<>0 And (Sum(Extrato_temp.Valo' +
        'r)) Is Not Null));')
    Left = 724
    Top = 450
    object q_saldosRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object q_saldosqvalor: TFloatField
      FieldName = 'qvalor'
      Origin = 'DBNMSCOMEX.Extrato_temp.Valor'
    end
  end
  object q_contas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Contas_Correntes.*'
      
        'FROM Parametros INNER JOIN Contas_Correntes ON (Parametros.Filia' +
        'l = Contas_Correntes.Filial) AND (Parametros.Empresa = Contas_Co' +
        'rrentes.Empresa);')
    Left = 715
    Top = 514
    object q_contasEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_contasFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Filial'
      FixedChar = True
      Size = 4
    end
    object q_contasCodigo: TAutoIncField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Codigo'
    end
    object q_contasBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Banco_Caixa'
      FixedChar = True
      Size = 1
    end
    object q_contasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Descricao'
      FixedChar = True
      Size = 45
    end
    object q_contasBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Banco'
      FixedChar = True
      Size = 5
    end
    object q_contasAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Agencia'
      FixedChar = True
      Size = 5
    end
    object q_contasConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object q_contasSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Saldo'
    end
    object q_contasNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Nivel'
      FixedChar = True
      Size = 4
    end
    object q_contasData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Data'
    end
    object q_contasEmpresacc: TStringField
      FieldName = 'Empresacc'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Empresacc'
      FixedChar = True
      Size = 4
    end
    object q_contasFilialcc: TStringField
      FieldName = 'Filialcc'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Filialcc'
      FixedChar = True
      Size = 4
    end
    object q_contasASCAA: TSmallintField
      FieldName = 'ASCAA'
      Origin = 'DBNMSCOMEX.Contas_Correntes.ASCAA'
    end
  end
  object t_faturas: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Codigo_mov = 0'
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Fatura'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Faturas_mov'
    Left = 824
    Top = 196
    object t_faturasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_faturasFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_faturasFornecedor: TStringField
      FieldName = 'Fornecedor'
      Required = True
      Size = 4
    end
    object t_faturasFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object t_faturasBoleto: TStringField
      FieldName = 'Boleto'
      Size = 15
    end
    object t_faturasVencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object t_faturasPeso: TFloatField
      FieldName = 'Peso'
    end
    object t_faturasValor: TFloatField
      FieldName = 'Valor'
    end
    object t_faturasConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object t_faturasCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object t_faturasDoc_contabil: TStringField
      FieldName = 'Doc_contabil'
      Size = 15
    end
  end
  object t_itens: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Fatura;reg'
    MasterFields = 'Empresa;Filial;Fornecedor;Fatura'
    MasterSource = ds_faturas
    TableName = 'Itens_Faturas_Mov'
    Left = 873
    Top = 195
    object t_itensEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_itensFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_itensFornecedor: TStringField
      FieldName = 'Fornecedor'
      Required = True
      Size = 4
    end
    object t_itensFatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object t_itensreg: TAutoIncField
      FieldName = 'reg'
    end
    object t_itensProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object t_itensDI: TStringField
      FieldName = 'DI'
      Size = 10
    end
    object t_itensDTA: TStringField
      FieldName = 'DTA'
      Size = 15
    end
    object t_itensPeso: TFloatField
      FieldName = 'Peso'
    end
    object t_itensValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object ds_faturas: TDataSource
    DataSet = t_faturas
    Left = 616
    Top = 564
  end
  object ds_itens: TDataSource
    DataSet = t_itens
    Left = 486
    Top = 565
  end
  object q_excluifat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE Parametros'
      
        'FROM Parametros INNER JOIN Numerarios_Processos ON (Parametros.F' +
        'ilial = Numerarios_Processos.Filial) AND (Parametros.Empresa = N' +
        'umerarios_Processos.Empresa)'
      'WHERE (((Numerarios_Processos.Fatura_mov)=:qfat));')
    Left = 288
    Top = 512
    ParamData = <
      item
        DataType = ftString
        Name = 'qfat'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object T_faturas2: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = DS_parametros
    TableName = 'Faturas_mov'
    Left = 980
    Top = 252
    object T_faturas2Empresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_faturas2Filial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_faturas2Fornecedor: TStringField
      FieldName = 'Fornecedor'
      Required = True
      Size = 4
    end
    object T_faturas2Fatura: TStringField
      FieldName = 'Fatura'
      Size = 15
    end
    object T_faturas2Boleto: TStringField
      FieldName = 'Boleto'
      Size = 15
    end
    object T_faturas2Vencimento: TDateTimeField
      FieldName = 'Vencimento'
    end
    object T_faturas2Peso: TFloatField
      FieldName = 'Peso'
    end
    object T_faturas2Valor: TFloatField
      FieldName = 'Valor'
    end
    object T_faturas2Conta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object T_faturas2Codigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object T_faturas2Doc_contabil: TStringField
      FieldName = 'Doc_contabil'
      Size = 15
    end
  end
  object t_saldosdiarios: TTable
    AfterPost = t_saldosdiariosAfterPost
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo;Data'
    MasterFields = 'Empresa;Filial;Codigo'
    MasterSource = ds_contascorrentes
    TableName = 'Saldos_diarios'
    Left = 824
    Top = 254
    object t_saldosdiariosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_saldosdiariosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_saldosdiariosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object t_saldosdiariosData: TDateTimeField
      FieldName = 'Data'
    end
    object t_saldosdiariosSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object t_saldosdiariosSaldo_sis: TFloatField
      FieldName = 'Saldo_sis'
    end
    object t_saldosdiariosFechado: TStringField
      FieldName = 'Fechado'
      Size = 3
    end
    object t_saldosdiariosObs: TStringField
      FieldName = 'Obs'
      Size = 50
    end
  end
  object ds_saldosdiarios: TDataSource
    DataSet = t_saldosdiarios
    Left = 168
    Top = 568
  end
  object q_saldosdiarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Contas_Correntes.Codigo, SUM(Movimentacao_Contas_Corr' +
        'entes.Valor) AS saldo'
      'FROM         Contas_Correntes LEFT OUTER JOIN'
      
        '                      Movimentacao_Contas_Correntes ON Contas_Co' +
        'rrentes.Codigo = Movimentacao_Contas_Correntes.Codigo AND '
      
        '                      Contas_Correntes.Filial = Movimentacao_Con' +
        'tas_Correntes.Filial AND '
      
        '                      Contas_Correntes.Empresa = Movimentacao_Co' +
        'ntas_Correntes.Empresa'
      'WHERE (((Movimentacao_Contas_Correntes.Data)<=:atequedata))'
      'GROUP BY Contas_Correntes.Codigo'
      'HAVING (((Contas_Correntes.Codigo)=:qconta));')
    Left = 788
    Top = 450
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'atequedata'
        ParamType = ptUnknown
        Value = 37256d
      end
      item
        DataType = ftInteger
        Name = 'qconta'
        ParamType = ptUnknown
        Value = 1
      end>
    object q_saldosdiariosCodigo: TAutoIncField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Correntes.Codigo'
    end
    object q_saldosdiariossaldo: TFloatField
      FieldName = 'saldo'
      Origin = 'DBNMSCOMEX.Movimentacao_Contas_Correntes.Valor'
    end
  end
  object q_tiposnumerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Tipos_Numerario.Empresa, Tipos_Numerario.Filial, Tipos_Nu' +
        'merario.Codigo, Tipos_Numerario.Descricao, Tipos_Numerario.Plano' +
        '_contas'
      'FROM Tipos_Numerario'
      'ORDER BY Tipos_Numerario.Descricao;')
    Left = 875
    Top = 450
    object q_tiposnumerariosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Empresa'
      Size = 4
    end
    object q_tiposnumerariosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Filial'
      Size = 4
    end
    object q_tiposnumerariosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Codigo'
      Size = 4
    end
    object q_tiposnumerariosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
    object q_tiposnumerariosPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Plano_contas'
      Size = 8
    end
  end
  object q_import: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.Razao_Social'
      'FROM Importadores'
      'WHERE (((Importadores.Codigo)<>"0000"))'
      'ORDER BY Importadores.Razao_Social;')
    Left = 164
    Top = 513
    object q_importEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object q_importFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object q_importCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object q_importRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
  end
  object q_creditosimp: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Codigo, Sum(Creditos_Processos.Valor) AS cre' +
        'ditos'
      
        'FROM (Importadores LEFT JOIN Processos ON (Importadores.Codigo =' +
        ' Processos.Importador) AND (Importadores.Filial = Processos.Fili' +
        'al) AND (Importadores.Empresa = Processos.Empresa)) LEFT JOIN Cr' +
        'editos_Processos ON (Processos.Codigo = Creditos_Processos.Proce' +
        'sso) AND (Processos.Filial = Creditos_Processos.Filial) AND (Pro' +
        'cessos.Empresa = Creditos_Processos.Empresa)'
      'GROUP BY Importadores.Codigo;')
    Left = 404
    Top = 513
    object q_creditosimpCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_creditosimpcreditos: TFloatField
      FieldName = 'creditos'
    end
  end
  object q_debitosimp: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Codigo, Sum(Numerarios_Processos.Valor_Regis' +
        'trado) AS debitos'
      
        'FROM (Importadores LEFT JOIN Processos ON (Importadores.Codigo =' +
        ' Processos.Importador) AND (Importadores.Filial = Processos.Fili' +
        'al) AND (Importadores.Empresa = Processos.Empresa)) LEFT JOIN Nu' +
        'merarios_Processos ON (Processos.Codigo = Numerarios_Processos.P' +
        'rocesso) AND (Processos.Filial = Numerarios_Processos.Filial) AN' +
        'D (Processos.Empresa = Numerarios_Processos.Empresa)'
      'GROUP BY Importadores.Codigo;')
    Left = 980
    Top = 561
    object q_debitosimpCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_debitosimpdebitos: TFloatField
      FieldName = 'debitos'
    end
  end
  object q_cc: TQuery
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
      'WHERE (((Contas_Correntes.Nivel)>=:qnivel))'
      
        'ORDER BY Contas_Correntes.Empresa, Contas_Correntes.Filial, Cont' +
        'as_Correntes.Codigo;')
    Left = 248
    Top = 455
    ParamData = <
      item
        DataType = ftString
        Name = 'qnivel'
        ParamType = ptUnknown
        Value = '0'
      end>
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
  object ds_qcontasp: TDataSource
    DataSet = q_contasp
    Left = 241
    Top = 620
  end
  object q_contasp: TQuery
    AutoCalcFields = False
    AfterScroll = q_contaspAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Contas_Pagar.Empresa, Contas_Pagar.Filial, Contas_Pagar.F' +
        'ornecedor, Contas_Pagar.Codigo, Contas_Pagar.Data_Emissao, Conta' +
        's_Pagar.Data_Vencimento, Contas_Pagar.Historico, Contas_Pagar.Pl' +
        'ano_contas, Contas_Pagar.Saldo, Contas_Pagar.Valor, Fornecedores' +
        '.Razao_Social AS qfor'
      
        'FROM Contas_Pagar LEFT JOIN Fornecedores ON (Contas_Pagar.Empres' +
        'a = Fornecedores.Empresa) AND (Contas_Pagar.Filial = Fornecedore' +
        's.Filial) AND (Contas_Pagar.Fornecedor = Fornecedores.Codigo)'
      'WHERE (((Contas_Pagar.Saldo)>0))'
      'ORDER BY Contas_Pagar.Codigo;')
    Left = 104
    Top = 509
    object q_contaspEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Empresa'
      Size = 4
    end
    object q_contaspFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Filial'
      Size = 4
    end
    object q_contaspFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Fornecedor'
      Size = 4
    end
    object q_contaspCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Codigo'
      Size = 15
    end
    object q_contaspData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Data_Emissao'
    end
    object q_contaspData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Data_Vencimento'
    end
    object q_contaspHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Historico'
      Size = 120
    end
    object q_contaspPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Plano_contas'
      Size = 8
    end
    object q_contaspSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Saldo'
    end
    object q_contaspValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.Contas_Pagar.Valor'
    end
    object q_contaspqfor: TStringField
      FieldName = 'qfor'
      Origin = 'DBNMSCOMEX.Fornecedores.Razao_Social'
      Size = 60
    end
  end
  object t_numerarios3: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;REG'
    TableName = 'Numerarios_Processos'
    Left = 896
    Top = 308
    object t_numerarios3Empresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_numerarios3Filial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_numerarios3Processo: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object t_numerarios3REG: TAutoIncField
      FieldName = 'REG'
    end
    object t_numerarios3Numerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object t_numerarios3Usuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object t_numerarios3Data_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object t_numerarios3Valor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object t_numerarios3Previsao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object t_numerarios3Ok_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object t_numerarios3Usuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object t_numerarios3Data_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object t_numerarios3Valor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object t_numerarios3Valor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object t_numerarios3Contabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object t_numerarios3Usuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object t_numerarios3Conta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object t_numerarios3Codigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object t_numerarios3Impdemfim: TStringField
      FieldName = 'Impdemfim'
      FixedChar = True
      Size = 3
    end
    object t_numerarios3Detalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object t_numerarios3Docsis: TStringField
      FieldName = 'Docsis'
      FixedChar = True
      Size = 15
    end
    object t_numerarios3Fatura_mov: TStringField
      FieldName = 'Fatura_mov'
      FixedChar = True
      Size = 15
    end
    object t_numerarios3Fornecedor: TStringField
      FieldName = 'Fornecedor'
      FixedChar = True
      Size = 4
    end
    object t_numerarios3Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 15
    end
    object t_numerarios3Contabilizado_cliente: TIntegerField
      FieldName = 'Contabilizado_cliente'
    end
    object t_numerarios3REG_creditos: TIntegerField
      FieldName = 'REG_creditos'
    end
    object t_numerarios3Processo_FundoFIXO: TStringField
      FieldName = 'Processo_FundoFIXO'
      FixedChar = True
      Size = 8
    end
  end
  object alContas: TActionList
    Left = 776
    Top = 376
    object acCalculaSaldo: TAction
      Caption = 'acCalculaSaldo'
      OnExecute = acCalculaSaldoExecute
    end
  end
  object tbContasPag: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Fornecedor;Codigo'
    MasterFields = 'Empresa;Filial;Fornecedor;Codigo'
    TableName = 'Contas_Pagar'
    Left = 756
    Top = 256
    object tbContasPagEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object tbContasPagFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object tbContasPagFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 4
    end
    object tbContasPagCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tbContasPagData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
    end
    object tbContasPagData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object tbContasPagHistorico: TStringField
      FieldName = 'Historico'
      Size = 120
    end
    object tbContasPagPlano_contas: TStringField
      FieldName = 'Plano_contas'
      Size = 8
    end
    object tbContasPagSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object tbContasPagValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object qrLocCorrecoes: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(C.Valor) AS ValorTot, T.positivo'
      
        'FROM Contas_Pagar_Correcoes AS C INNER JOIN Contas_Pagar_Tipos_C' +
        'orrecoes AS T ON C.Tipo_Correcao = T.Codigo'
      
        'WHERE C.Empresa = :emp AND C.Filial = :filial AND C.Fornecedor =' +
        ' :fornec AND C.Codigo = :cod'
      'GROUP BY C.Empresa, T.positivo')
    Left = 24
    Top = 455
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
      end
      item
        DataType = ftString
        Name = 'fornec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrLocCorrecoesValorTot: TFloatField
      FieldName = 'ValorTot'
      Origin = 'DBNMSCOMEX.Contas_Pagar_Correcoes.Valor'
    end
    object qrLocCorrecoespositivo: TSmallintField
      FieldName = 'positivo'
      Origin = 'DBNMSCOMEX.Contas_Pagar_Tipos_Correcoes.positivo'
    end
  end
  object qrLocPagamentos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(Valor_Contabilizado) AS ValorTot'
      'FROM Numerarios_Processos'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Fornecedor = :forn' +
        'ec AND Codigo = :cod'
      'GROUP BY Empresa'
      '')
    Left = 112
    Top = 456
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
      end
      item
        DataType = ftString
        Name = 'fornec'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end>
    object qrLocPagamentosValorTot: TFloatField
      FieldName = 'ValorTot'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
  end
  object ds_numerarios3: TDataSource
    DataSet = t_numerarios3
    Left = 313
    Top = 620
  end
  object QNUM: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Processo, Numerarios_Processos.Numer' +
        'ario, Numerarios_Processos.Data_Registro, Numerarios_Processos.V' +
        'alor_Contabilizado'
      'FROM Numerarios_Processos'
      
        'WHERE (Numerarios_Processos.Processo=:QPRO)  AND (Numerarios_Pro' +
        'cessos.Numerario=:vNUM)  AND (Numerarios_Processos.Valor_Contabi' +
        'lizado=:QVALOR)')
    Left = 767
    Top = 516
    ParamData = <
      item
        DataType = ftString
        Name = 'QPRO'
        ParamType = ptUnknown
        Value = '00725/05'
      end
      item
        DataType = ftString
        Name = 'vNUM'
        ParamType = ptUnknown
        Value = 'FRIM'
      end
      item
        DataType = ftFloat
        Name = 'QVALOR'
        ParamType = ptUnknown
        Value = 0
      end>
    object QNUMProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      Size = 8
    end
    object QNUMNumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      Size = 4
    end
    object QNUMData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Registro'
    end
    object QNUMValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
  end
  object q_credpro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Creditos_Processos.Processo, Sum(Creditos_Processos.Valor' +
        ') AS qvalor'
      'FROM Creditos_Processos'
      'GROUP BY Creditos_Processos.Processo'
      'HAVING (((Creditos_Processos.Processo)=:qpro))')
    Left = 471
    Top = 513
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02267/04'
      end>
    object q_credproProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Processo'
      Size = 8
    end
    object q_credproqvalor: TFloatField
      FieldName = 'qvalor'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Valor'
    end
  end
  object q_debpro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Processo, Sum(Numerarios_Processos.V' +
        'alor_Registrado) AS qvalor'
      'FROM Numerarios_Processos'
      'GROUP BY Numerarios_Processos.Processo'
      'HAVING (((Numerarios_Processos.Processo)=:qpro))')
    Left = 525
    Top = 513
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02267/04'
      end>
    object q_debproProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      Size = 8
    end
    object q_debproqvalor: TFloatField
      FieldName = 'qvalor'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Registrado'
    end
  end
  object q_temHONO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Numerarios_Processos.Processo, Numerarios_Processos.Numer' +
        'ario'
      'FROM Numerarios_Processos'
      
        'WHERE (((Numerarios_Processos.Processo)=:qpro) AND ((Numerarios_' +
        'Processos.Numerario)="HONO"));')
    Left = 956
    Top = 450
    ParamData = <
      item
        DataType = ftString
        Name = 'qpro'
        ParamType = ptUnknown
        Value = '02267/04'
      end>
    object q_temHONOProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      Size = 8
    end
    object q_temHONONumerario: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      Size = 4
    end
  end
  object q_cc_update: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Contas_Correntes'
      'SET Contas_Correntes.Saldo = :P1'
      'WHERE Codigo = :P2')
    Left = 224
    Top = 512
    ParamData = <
      item
        DataType = ftFloat
        Name = 'P1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2'
        ParamType = ptUnknown
      end>
  end
  object q_plano: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from Plano_Contas order by descricao')
    Left = 665
    Top = 513
    object q_planoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Plano_Contas.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_planoFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Plano_Contas.Filial'
      FixedChar = True
      Size = 4
    end
    object q_planoCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Plano_Contas.Codigo'
      FixedChar = True
      Size = 8
    end
    object q_planoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Plano_Contas.Descricao'
      FixedChar = True
      Size = 50
    end
  end
  object t_tiposnumerarios2: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Tipos_Numerario'
    Left = 848
    Top = 372
    object t_tiposnumerarios2Empresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object t_tiposnumerarios2Filial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object t_tiposnumerarios2Codigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object t_tiposnumerarios2Descricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object t_tiposnumerarios2Plano_contas: TStringField
      FieldName = 'Plano_contas'
      FixedChar = True
      Size = 8
    end
    object t_tiposnumerarios2Rateio: TStringField
      FieldName = 'Rateio'
      FixedChar = True
      Size = 1
    end
    object t_tiposnumerarios2ContabilizaCC: TIntegerField
      FieldName = 'ContabilizaCC'
    end
    object t_tiposnumerarios2Sequencia: TAutoIncField
      FieldName = 'Sequencia'
    end
  end
  object ds_tiposnumerarios2: TDataSource
    DataSet = t_tiposnumerarios2
    Left = 89
    Top = 620
  end
  object q_Num: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT DISTINCT NUMERARIO FROM NUMERARIOS_PROCESSOS')
    Left = 924
    Top = 372
    object StringField1: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Empresa'
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Filial'
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Processo'
      Size = 8
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.REG'
    end
    object StringField4: TStringField
      FieldName = 'Numerario'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Numerario'
      Size = 4
    end
    object StringField5: TStringField
      FieldName = 'Usuario_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Previsao'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Data_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Previsao'
    end
    object FloatField1: TFloatField
      FieldName = 'Valor_Previsao'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Previsao'
    end
    object StringField6: TStringField
      FieldName = 'Previsao_solicitada'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Previsao_solicitada'
      Size = 3
    end
    object StringField7: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Ok_Previsao_financeiro'
      Size = 3
    end
    object StringField8: TStringField
      FieldName = 'Usuario_Financeiro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Financeiro'
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Data_Registro'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Data_Registro'
    end
    object FloatField2: TFloatField
      FieldName = 'Valor_Registrado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Registrado'
    end
    object FloatField3: TFloatField
      FieldName = 'Valor_Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Valor_Contabilizado'
    end
    object StringField9: TStringField
      FieldName = 'Contabilizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Contabilizado'
      Size = 3
    end
    object StringField10: TStringField
      FieldName = 'Usuario_Contablizado'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Usuario_Contablizado'
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Conta_Corrente'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Codigo_mov'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Codigo_mov'
    end
    object StringField11: TStringField
      FieldName = 'Detalhe'
      Origin = 'DBNMSCOMEX.Numerarios_Processos.Detalhe'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_Numerario.Descricao'
      Size = 50
    end
  end
  object tbEmailAuto: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Email_Auto'
    Left = 981
    Top = 322
    object tbEmailAutoCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object tbEmailAutoPrograma: TStringField
      FieldName = 'Programa'
      FixedChar = True
      Size = 5
    end
    object tbEmailAutoAssunto: TStringField
      FieldName = 'Assunto'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoTitulo: TStringField
      FieldName = 'Titulo'
      FixedChar = True
      Size = 150
    end
    object tbEmailAutoDe: TStringField
      FieldName = 'De'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoPara: TStringField
      FieldName = 'Para'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoCCO: TStringField
      FieldName = 'CCO'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoBody: TMemoField
      FieldName = 'Body'
      BlobType = ftMemo
    end
    object tbEmailAutoAnexo: TStringField
      FieldName = 'Anexo'
      FixedChar = True
      Size = 255
    end
    object tbEmailAutoHTML: TIntegerField
      FieldName = 'HTML'
    end
    object tbEmailAutoData: TDateTimeField
      FieldName = 'Data'
    end
    object tbEmailAutoHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  object t_lancamentocc: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filtered = True
    IndexFieldNames = 'codigo'
    MasterFields = 'tipo'
    MasterSource = ds_qmov
    TableName = 'Tipos_Lancamento_Ccorrente'
    Left = 883
    Top = 84
    object t_lancamentoccCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object t_lancamentoccDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object t_lancamentoccPositivo: TIntegerField
      FieldName = 'Positivo'
    end
  end
  object q_importadores_grupos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Codigo <>'#39'0000'#39
    SQL.Strings = (
      '  SELECT Nome_Grupo, Codigo_AGRUPADO AS CODIGO'
      '    FROM Importadores_Agrupados'
      '   WHERE Nome_Grupo <> '#39'*** DESAGRUPADOS ***'#39' '
      'GROUP BY Nome_Grupo, Codigo_AGRUPADO   '
      'UNION'
      '  SELECT I.Razao_Social AS NOME_GRUPO, IA.Codigo AS CODIGO'
      '    FROM Importadores_Agrupados IA INNER JOIN Importadores I'
      '      ON IA.Codigo = I.Codigo'
      '   WHERE Nome_Grupo = '#39'*** DESAGRUPADOS ***'#39' '
      'GROUP BY I.Razao_Social, IA.Codigo'
      'ORDER BY Nome_Grupo')
    Left = 56
    Top = 686
    object q_importadores_gruposNome_Grupo: TStringField
      FieldName = 'Nome_Grupo'
    end
    object q_importadores_gruposCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
  end
  object ds_importadores_grupos: TDataSource
    DataSet = q_importadores_grupos
    Left = 59
    Top = 758
  end
  object OP: TOpenDialog
    FileName = '*.pdf'
    Filter = '*.pdf|*.pdf'
    Title = 'Selecionar'
    Left = 161
    Top = 687
  end
  object qryParametro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Numerador_Documentos'
      'from '
      ' Parametros')
    Left = 162
    Top = 753
    object qryParametroNumerador_Documentos: TStringField
      FieldName = 'Numerador_Documentos'
      Origin = 'DBNMSCOMEX.Parametros.Numerador_Documentos'
      FixedChar = True
      Size = 8
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
      'PDF)'
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
      '1)')
    Left = 232
    Top = 688
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
        DataType = ftUnknown
        Name = 'Observacoes'
        ParamType = ptUnknown
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
      end>
  end
  object qryUpdateN: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update parametros set Numerador_Documentos=:NewNumero')
    Left = 297
    Top = 688
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
    Left = 296
    Top = 753
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
  object qryArquivos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Data_inclusao, Numero_Doc, Codigo, Arquivo, Observacoes f' +
        'rom Documentos Where processo =: processo and PDF = 1')
    Left = 992
    Top = 721
    ParamData = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    object qryArquivosData_envio: TDateTimeField
      FieldName = 'Data_envio'
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
    Left = 992
    Top = 783
  end
  object q_creditos_financ: TQuery
    AfterScroll = q_creditos_financAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Creditos_Processos.Empresa, Creditos_Processos.Filial' +
        ', Creditos_Processos.Conta_Corrente, Creditos_Processos.Codigo_m' +
        'ov, '
      
        '                      Creditos_Processos.Data_Credito, Creditos_' +
        'Processos.Contabilizado, Creditos_Processos.Processo, Creditos_P' +
        'rocessos.REG, '
      
        '                      Creditos_Processos.Credito, Tipos_creditos' +
        '.Descricao, Creditos_Processos.Valor'
      'FROM         Creditos_Processos LEFT OUTER JOIN'
      
        '                      Tipos_creditos ON Creditos_Processos.Credi' +
        'to = Tipos_creditos.Codigo'
      
        'WHERE Creditos_Processos.Processo = '#39'FINANC'#39' AND  (((Creditos_Pr' +
        'ocessos.Conta_Corrente)=:qconta) AND ((Creditos_Processos.Codigo' +
        '_mov)=:qmov) AND ((Creditos_Processos.Contabilizado)="SIM"));'
      '')
    Left = 506
    Top = 699
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
        Value = 1
      end>
    object q_creditos_financEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_creditos_financFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Filial'
      FixedChar = True
      Size = 4
    end
    object q_creditos_financConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Conta_Corrente'
    end
    object q_creditos_financCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Codigo_mov'
    end
    object q_creditos_financData_Credito: TDateTimeField
      FieldName = 'Data_Credito'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Data_Credito'
    end
    object q_creditos_financContabilizado: TStringField
      FieldName = 'Contabilizado'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Contabilizado'
      FixedChar = True
      Size = 3
    end
    object q_creditos_financProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Processo'
      FixedChar = True
      Size = 8
    end
    object q_creditos_financREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Creditos_Processos.REG'
    end
    object q_creditos_financCredito: TStringField
      FieldName = 'Credito'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Credito'
      FixedChar = True
      Size = 4
    end
    object q_creditos_financDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Tipos_creditos.Descricao'
      FixedChar = True
      Size = 50
    end
    object q_creditos_financValor: TFloatField
      FieldName = 'Valor'
      Origin = 'DBNMSCOMEX.Creditos_Processos.Valor'
    end
  end
  object q_debitos_financ: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Numerarios_Processos.Empresa, '
      '       Numerarios_Processos.Filial, '
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
      '       END AS Arquivo  '
      
        ' FROM Numerarios_Processos LEFT JOIN Tipos_Numerario ON (Numerar' +
        'ios_Processos.Numerario = Tipos_Numerario.Codigo) LEFT JOIN Proc' +
        'essos '
      
        '   ON Numerarios_Processos.Processo = Processos.Codigo LEFT JOIN' +
        ' Importadores'
      '   ON Processos.Importador = Importadores.Codigo'
      
        'WHERE Numerarios_Processos.Processo = '#39'FINANC'#39' AND (((Numerarios' +
        '_Processos.Contabilizado)="SIM") AND ((Numerarios_Processos.Cont' +
        'a_Corrente)=:qconta) AND ((Numerarios_Processos.Codigo_mov)=:qmo' +
        'v));')
    Left = 604
    Top = 699
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
    object q_debitos_financEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object q_debitos_financFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object q_debitos_financProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object q_debitos_financREG: TAutoIncField
      FieldName = 'REG'
    end
    object q_debitos_financNumerario: TStringField
      FieldName = 'Numerario'
      FixedChar = True
      Size = 4
    end
    object q_debitos_financUsuario_Previsao: TStringField
      FieldName = 'Usuario_Previsao'
      FixedChar = True
      Size = 10
    end
    object q_debitos_financData_Previsao: TDateTimeField
      FieldName = 'Data_Previsao'
    end
    object q_debitos_financValor_Previsao: TFloatField
      FieldName = 'Valor_Previsao'
    end
    object q_debitos_financPrevisao_solicitada: TStringField
      FieldName = 'Previsao_solicitada'
      FixedChar = True
      Size = 3
    end
    object q_debitos_financOk_Previsao_financeiro: TStringField
      FieldName = 'Ok_Previsao_financeiro'
      FixedChar = True
      Size = 3
    end
    object q_debitos_financUsuario_Financeiro: TStringField
      FieldName = 'Usuario_Financeiro'
      FixedChar = True
      Size = 10
    end
    object q_debitos_financData_Registro: TDateTimeField
      FieldName = 'Data_Registro'
    end
    object q_debitos_financValor_Registrado: TFloatField
      FieldName = 'Valor_Registrado'
    end
    object q_debitos_financValor_Contabilizado: TFloatField
      FieldName = 'Valor_Contabilizado'
    end
    object q_debitos_financContabilizado: TStringField
      FieldName = 'Contabilizado'
      FixedChar = True
      Size = 3
    end
    object q_debitos_financUsuario_Contablizado: TStringField
      FieldName = 'Usuario_Contablizado'
      FixedChar = True
      Size = 10
    end
    object q_debitos_financConta_Corrente: TIntegerField
      FieldName = 'Conta_Corrente'
    end
    object q_debitos_financCodigo_mov: TIntegerField
      FieldName = 'Codigo_mov'
    end
    object q_debitos_financDetalhe: TStringField
      FieldName = 'Detalhe'
      FixedChar = True
      Size = 50
    end
    object q_debitos_financDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 50
    end
    object q_debitos_financSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object q_debitos_financRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
    object q_debitos_financArquivo: TStringField
      FieldName = 'Arquivo'
      FixedChar = True
      Size = 3
    end
  end
  object q_processos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Codigo, Faturado, saldo_faturamento '
      '  FROM Processos '
      
        'WHERE Empresa = :Empresa AND Filial =:Filial AND Codigo = :Codig' +
        'o')
    Left = 536
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    object q_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Processos.Empresa'
      FixedChar = True
      Size = 4
    end
    object q_processosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Processos.Filial'
      FixedChar = True
      Size = 4
    end
    object q_processosCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Processos.Codigo'
      FixedChar = True
      Size = 8
    end
    object q_processosFaturado: TIntegerField
      FieldName = 'Faturado'
      Origin = 'DBNMSCOMEX.Processos.Faturado'
    end
    object q_processossaldo_faturamento: TFloatField
      FieldName = 'saldo_faturamento'
    end
  end
  object q_incnumerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [Numerarios_Processos]'
      '           ([Empresa]'
      '           ,[Filial]'
      '           ,[Processo]'
      '           ,[Numerario]           '
      '           ,[Usuario_Financeiro]'
      '           ,[Data_Registro]'
      '           ,[Valor_Registrado]'
      '           ,[Valor_Contabilizado]'
      '           ,[Detalhe]'
      '           ,[Contabilizado]'
      '           ,[Conta_Corrente]'
      '           ,[Codigo_mov])'
      '     VALUES'
      '           (:Empresa'
      '           ,:Filial'
      '           ,:Processo'
      '           ,:Numerario'
      '           ,:Usuario_Financeiro'
      '           ,:Data_Registro'
      '           ,:Valor_Registrado'
      '           ,:Valor_Contabilizado'
      '           ,:Detalhe'
      '           ,:Contabilizado'
      '           ,:Conta_Corrente'
      '           ,:Codigo_mov)')
    Left = 784
    Top = 698
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Processo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Numerario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario_Financeiro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data_Registro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor_Registrado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Valor_Contabilizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Detalhe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Contabilizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Conta_Corrente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Codigo_mov'
        ParamType = ptUnknown
      end>
  end
  object q_desmdebatual: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT MAX(REG) AS REG'
      '   FROM NUMERARIOS_PROCESSOS'
      'WHERE CONTABILIZADO = '#39'SIM'#39' AND '
      '      EMPRESA = :EMPRESA AND '
      '      FILIAL = :FILIAL AND  '
      '      PROCESSO =:PROCESSO AND'
      '      NUMERARIO =:NUMERARIO AND'
      '      CODIGO_MOV =:CODIGO_MOV'
      ''
      '               '
      '               ')
    Left = 784
    Top = 770
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROCESSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMERARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_MOV'
        ParamType = ptUnknown
      end>
    object q_desmdebatualREG: TIntegerField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.NUMERARIOS_PROCESSOS.REG'
    end
  end
  object qrEmailsAvisos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT EMAIL'
      '   FROM Emails_avisos'
      'WHERE Ativo = 1 AND Tipo = '#39'MSRECNUM'#39)
    Left = 392
    Top = 692
    object qrEmailsAvisosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Emails_avisos.Empresa'
      FixedChar = True
      Size = 4
    end
    object qrEmailsAvisosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Emails_avisos.Filial'
      FixedChar = True
      Size = 4
    end
    object qrEmailsAvisosImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Importador'
      FixedChar = True
      Size = 4
    end
    object qrEmailsAvisosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Tipo'
      FixedChar = True
      Size = 8
    end
    object qrEmailsAvisosEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Emails_avisos.Email'
      FixedChar = True
      Size = 50
    end
    object qrEmailsAvisosNome_completo: TStringField
      FieldName = 'Nome_completo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Nome_completo'
      FixedChar = True
      Size = 50
    end
    object qrEmailsAvisosParametros: TStringField
      FieldName = 'Parametros'
      Origin = 'DBNMSCOMEX.Emails_avisos.Parametros'
      FixedChar = True
      Size = 255
    end
    object qrEmailsAvisosHTML: TIntegerField
      FieldName = 'HTML'
      Origin = 'DBNMSCOMEX.Emails_avisos.HTML'
    end
    object qrEmailsAvisosPlataforma: TStringField
      FieldName = 'Plataforma'
      Origin = 'DBNMSCOMEX.Emails_avisos.Plataforma'
      FixedChar = True
      Size = 100
    end
    object qrEmailsAvisosCnpj_Importador: TStringField
      FieldName = 'Cnpj_Importador'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cnpj_Importador'
      FixedChar = True
      Size = 10
    end
    object qrEmailsAvisosPara: TBooleanField
      FieldName = 'Para'
      Origin = 'DBNMSCOMEX.Emails_avisos.Para'
    end
    object qrEmailsAvisosCc: TBooleanField
      FieldName = 'Cc'
      Origin = 'DBNMSCOMEX.Emails_avisos.Cc'
    end
    object qrEmailsAvisosCCo: TBooleanField
      FieldName = 'CCo'
      Origin = 'DBNMSCOMEX.Emails_avisos.CCo'
    end
    object qrEmailsAvisosAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Emails_avisos.Ativo'
    end
  end
end
