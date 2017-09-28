object f_localizarcontasapagar: Tf_localizarcontasapagar
  Left = 353
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 393
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object p_filtrar: TPanel
    Left = 0
    Top = -2
    Width = 505
    Height = 395
    BevelWidth = 4
    Color = clSilver
    TabOrder = 0
    object Label48: TLabel
      Left = 47
      Top = 9
      Width = 278
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Filtrar Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10514464
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object b_aplicarfiltro: TBitBtn
      Left = 108
      Top = 358
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      TabOrder = 0
      OnClick = b_aplicarfiltroClick
      Kind = bkOK
    end
    object b_cancelafiltro: TBitBtn
      Left = 195
      Top = 358
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
      Width = 340
      Height = 315
      TabOrder = 2
      object Label47: TLabel
        Left = 31
        Top = 110
        Width = 58
        Height = 13
        Caption = 'Venc. Inicial'
      end
      object Label49: TLabel
        Left = 183
        Top = 110
        Width = 53
        Height = 13
        Caption = 'Venc. Final'
      end
      object Label10: TLabel
        Left = 31
        Top = 60
        Width = 54
        Height = 13
        Caption = 'Valor Inicial'
      end
      object Label11: TLabel
        Left = 183
        Top = 60
        Width = 49
        Height = 13
        Caption = 'Valor Final'
      end
      object Label54: TLabel
        Left = 31
        Top = 260
        Width = 49
        Height = 13
        Caption = 'Solicitante'
      end
      object Label45: TLabel
        Left = 31
        Top = 14
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
      end
      object Label12: TLabel
        Left = 31
        Top = 164
        Width = 73
        Height = 13
        Caption = 'Vlr. Prev. Inicial'
      end
      object Label13: TLabel
        Left = 183
        Top = 164
        Width = 68
        Height = 13
        Caption = 'Vlr. Prev. Final'
      end
      object Label14: TLabel
        Left = 31
        Top = 214
        Width = 86
        Height = 13
        Caption = 'Venc. Prev. Inicial'
      end
      object Label15: TLabel
        Left = 183
        Top = 214
        Width = 81
        Height = 13
        Caption = 'Venc. Prev. Final'
      end
      object edVencFinal: TMaskEdit
        Left = 183
        Top = 126
        Width = 114
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 5
        Text = '  /  /    '
      end
      object edVencInicial: TMaskEdit
        Left = 31
        Top = 126
        Width = 114
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 4
        Text = '  /  /    '
      end
      object edVlrFinal: TEdit
        Left = 183
        Top = 76
        Width = 114
        Height = 21
        TabOrder = 3
      end
      object edVlrInicial: TEdit
        Left = 31
        Top = 76
        Width = 114
        Height = 21
        TabOrder = 2
      end
      object dblcSolicitante: TDBLookupComboBox
        Left = 31
        Top = 276
        Width = 266
        Height = 21
        KeyField = 'Usuario'
        ListField = 'Nome_Completo'
        ListSource = f_contasapagar.dsSolicitantesfiltro
        TabOrder = 10
      end
      object sbLimpaSolicitante: TBitBtn
        Left = 302
        Top = 276
        Width = 21
        Height = 21
        TabOrder = 11
        TabStop = False
        OnClick = sbLimpaSolicitanteClick
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
      object dblcFornecedor: TDBLookupComboBox
        Left = 31
        Top = 30
        Width = 266
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Razao_Social'
        ListSource = f_contasapagar.dsFornecedoresfiltro
        TabOrder = 0
      end
      object sbLimpaFornecedor: TBitBtn
        Left = 302
        Top = 30
        Width = 21
        Height = 21
        TabOrder = 1
        TabStop = False
        OnClick = sbLimpaFornecedorClick
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
      object edVlrPrevFinal: TEdit
        Left = 183
        Top = 180
        Width = 114
        Height = 21
        TabOrder = 7
      end
      object edVlrPrevInicial: TEdit
        Left = 31
        Top = 180
        Width = 114
        Height = 21
        TabOrder = 6
      end
      object edVencPrevInicial: TMaskEdit
        Left = 31
        Top = 230
        Width = 114
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 8
        Text = '  /  /    '
      end
      object edVencPrevFinal: TMaskEdit
        Left = 183
        Top = 230
        Width = 114
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 9
        Text = '  /  /    '
      end
    end
  end
end
