object f_avldescontrolehierarquia: Tf_avldescontrolehierarquia
  Left = 200
  Top = 178
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Hierarquia'
  ClientHeight = 512
  ClientWidth = 605
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 512
    Align = alClient
    TabOrder = 0
    object btn1: TSpeedButton
      Left = 168
      Top = 280
      Width = 41
      Height = 22
      Caption = '>'
      Enabled = False
      OnClick = btn1Click
    end
    object btn4: TSpeedButton
      Left = 168
      Top = 312
      Width = 41
      Height = 22
      Caption = '<'
      Enabled = False
      OnClick = btn4Click
    end
    object btn5: TSpeedButton
      Left = 398
      Top = 280
      Width = 41
      Height = 22
      Caption = '>'
      Enabled = False
      OnClick = btn5Click
    end
    object btn8: TSpeedButton
      Left = 398
      Top = 312
      Width = 41
      Height = 22
      Caption = '<'
      Enabled = False
      OnClick = btn8Click
    end
    object List1: TListBox
      Left = 1
      Top = 125
      Width = 144
      Height = 386
      Align = alLeft
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      MultiSelect = True
      ParentFont = False
      TabOrder = 0
    end
    object List3: TListBox
      Left = 460
      Top = 125
      Width = 144
      Height = 386
      Align = alRight
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      MultiSelect = True
      ParentFont = False
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 1
      Top = 101
      Width = 603
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      object lb1: TLabel
        Left = 32
        Top = 5
        Width = 82
        Height = 13
        Caption = 'Colaboradores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb2: TLabel
        Left = 500
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Gestor(es)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 262
        Top = 5
        Width = 82
        Height = 13
        Caption = 'Supervisor(es)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 603
      Height = 100
      Align = alTop
      TabOrder = 3
      object Bevel1: TBevel
        Left = 10
        Top = 49
        Width = 583
        Height = 3
        Shape = bsTopLine
      end
      object Label7: TLabel
        Left = 8
        Top = 4
        Width = 52
        Height = 13
        Caption = 'Pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnGravar: TBitBtn
        Left = 90
        Top = 56
        Width = 75
        Height = 38
        Hint = 'Gravar'
        Caption = '&Gravar'
        Enabled = False
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
      object btnAlterar: TBitBtn
        Left = 12
        Top = 56
        Width = 75
        Height = 38
        Hint = 'Alterar dados do Produto'
        Caption = '&Alterar'
        Enabled = False
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
      object btnCancelar: TBitBtn
        Left = 168
        Top = 56
        Width = 75
        Height = 38
        Hint = 'Cancelar'
        BiDiMode = bdLeftToRight
        Caption = '&Cancelar'
        Enabled = False
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
      object btnHierarquiaAnalise: TBitBtn
        Left = 256
        Top = 56
        Width = 145
        Height = 38
        Caption = 'Hierarquia da Análise'
        Enabled = False
        TabOrder = 3
        OnClick = btnHierarquiaAnaliseClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888800000888880000080BFB0888880BFB080FBF0888880FBF08000008808800
          000888088808088808888808808E80880888880008E8E80008888888808E8088
          8888888888080888888888888880888888888888800000888888888880FBF088
          8888888880BFB088888888888000008888888888888888888888}
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 7
        Top = 20
        Width = 201
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = DataSource2
        TabOrder = 4
        OnClick = DBLookupComboBox1Click
      end
    end
    object List2: TListBox
      Left = 230
      Top = 125
      Width = 144
      Height = 387
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      MultiSelect = True
      ParentFont = False
      TabOrder = 4
    end
  end
  object tbPesquisas: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Anl_Des_Analises'
    Left = 328
    Top = 6
    object tbPesquisasCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tbPesquisasDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
  end
  object DataSource2: TDataSource
    DataSet = tbPesquisas
    Left = 240
    Top = 6
  end
  object DataSource1: TDataSource
    DataSet = qrControleHierarquia
    Left = 200
    Top = 384
  end
  object qrControleHierarquia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * '
      '   FROM Anl_Des_Controle_Hierarquia'
      'ORDER BY USUARIO, NIVEL')
    Left = 288
    Top = 384
  end
  object QryAux: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 376
    Top = 384
  end
end
