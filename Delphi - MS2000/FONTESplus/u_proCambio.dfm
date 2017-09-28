object F_proCambio: TF_proCambio
  Left = 248
  Top = 111
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Câmbio'
  ClientHeight = 465
  ClientWidth = 760
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 33
    Width = 760
    Height = 386
    Align = alClient
    Color = 10514464
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 56
      Width = 127
      Height = 13
      Caption = 'Modalidade de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 112
      Height = 13
      Caption = 'Instituição Financiadora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 136
      Width = 32
      Height = 13
      Caption = 'Motivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbLcbModPag: TDBLookupComboBox
      Left = 16
      Top = 72
      Width = 729
      Height = 21
      DataField = 'Modalidade_de_Pagamento'
      DataSource = dsFaturas
      KeyField = 'CODIGO'
      ListField = 'CODIGO;DESCRICAO'
      ListFieldIndex = 1
      ListSource = dsModPag
      TabOrder = 1
      OnClick = dbLcbModPagClick
    end
    object dbLcbMotivo: TDBLookupComboBox
      Left = 16
      Top = 152
      Width = 729
      Height = 21
      DataField = 'Motivo_Sem_Cobertura'
      DataSource = dsFaturas
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListFieldIndex = 1
      ListSource = dsMotivo
      TabOrder = 3
      OnClick = dbLcbMotivoClick
    end
    object pcCobertura: TPageControl
      Left = 16
      Top = 184
      Width = 729
      Height = 185
      ActivePage = tsPag1
      TabOrder = 4
      OnChange = pcCoberturaChange
      object tsPag1: TTabSheet
        Caption = 'Pagamento Antecipado'
        object Label57: TLabel
          Left = 8
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Contrato '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label58: TLabel
          Left = 80
          Top = 32
          Width = 34
          Height = 13
          Caption = 'Banco '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TLabel
          Left = 120
          Top = 32
          Width = 28
          Height = 13
          Caption = 'Praça'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 8
          Top = 72
          Width = 35
          Height = 13
          Caption = 'Valor %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 8
          Top = 112
          Width = 51
          Height = 13
          Caption = 'Comprador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label279: TLabel
          Left = 80
          Top = 72
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
        object Label290: TLabel
          Left = 160
          Top = 32
          Width = 80
          Height = 13
          Caption = 'Data Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbGrdPagVinc: TDBGrid
          Left = 248
          Top = 8
          Width = 465
          Height = 141
          DataSource = dsPagVinc
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Moeda Nacional'
              Title.Caption = 'MN'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Contrato'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Banco'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Praca'
              Title.Caption = 'Praça'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor Percentual'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJ Comprador'
              Title.Caption = 'Comprador'
              Width = 94
              Visible = True
            end>
        end
        object meContrato: TMaskEdit
          Left = 8
          Top = 48
          Width = 73
          Height = 21
          EditMask = '9999999999;0; '
          MaxLength = 10
          TabOrder = 0
          OnExit = meContratoExit
        end
        object meBanco: TMaskEdit
          Left = 80
          Top = 48
          Width = 41
          Height = 21
          MaxLength = 5
          TabOrder = 1
          OnChange = meBancoChange
          OnExit = meBancoChange
          OnKeyPress = meBancoKeyPress
        end
        object mePraca: TMaskEdit
          Left = 120
          Top = 48
          Width = 41
          Height = 21
          MaxLength = 4
          TabOrder = 2
          OnChange = mePracaChange
          OnExit = mePracaChange
          OnKeyPress = mePracaKeyPress
        end
        object meValPerc: TMaskEdit
          Left = 8
          Top = 88
          Width = 73
          Height = 21
          TabOrder = 4
          OnChange = meValPercChange
          OnExit = meValPercExit
          OnKeyPress = meValPercKeyPress
        end
        object meComprador: TMaskEdit
          Left = 8
          Top = 128
          Width = 153
          Height = 21
          TabOrder = 6
        end
        object btnExcluirPag: TBitBtn
          Left = 168
          Top = 120
          Width = 75
          Height = 25
          Caption = '&Excluir'
          TabOrder = 8
          OnClick = btnExcluirPagClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333FF3333333333333003333333333333F77F33333333333009033
            333333333F7737F333333333009990333333333F773337FFFFFF330099999000
            00003F773333377777770099999999999990773FF33333FFFFF7330099999000
            000033773FF33777777733330099903333333333773FF7F33333333333009033
            33333333337737F3333333333333003333333333333377333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object btnIncluirPag: TBitBtn
          Left = 168
          Top = 88
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 7
          OnClick = btnIncluirPagClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333FF3333333333333003333
            3333333333773FF3333333333309003333333333337F773FF333333333099900
            33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
            99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
            33333333337F3F77333333333309003333333333337F77333333333333003333
            3333333333773333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object cbMoedaNac: TCheckBox
          Left = 8
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Moeda Nacional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object meValReal: TMaskEdit
          Left = 80
          Top = 88
          Width = 81
          Height = 21
          TabOrder = 5
          OnChange = meValRealChange
          OnExit = meValRealExit
          OnKeyPress = meValRealKeyPress
        end
        object meData: TMaskEdit
          Left = 160
          Top = 48
          Width = 81
          Height = 21
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 3
          Text = '  /  /    '
        end
        object btnContratos: TButton
          Left = 120
          Top = 8
          Width = 121
          Height = 17
          Caption = 'Ver contratos '
          TabOrder = 11
          OnClick = btnContratosClick
        end
      end
      object tsPag2: TTabSheet
        Caption = 'Pagamento à Vista'
        ImageIndex = 1
        object Label56: TLabel
          Left = 8
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Contrato '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 80
          Top = 32
          Width = 34
          Height = 13
          Caption = 'Banco '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 120
          Top = 32
          Width = 28
          Height = 13
          Caption = 'Praça'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TLabel
          Left = 8
          Top = 72
          Width = 35
          Height = 13
          Caption = 'Valor %'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label66: TLabel
          Left = 8
          Top = 112
          Width = 51
          Height = 13
          Caption = 'Comprador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label280: TLabel
          Left = 80
          Top = 72
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
        object meContrato2: TMaskEdit
          Left = 8
          Top = 48
          Width = 73
          Height = 21
          EditMask = '9999999999;0; '
          MaxLength = 10
          TabOrder = 0
        end
        object meBanco2: TMaskEdit
          Left = 80
          Top = 48
          Width = 41
          Height = 21
          MaxLength = 5
          TabOrder = 1
          OnChange = meBanco2Change
          OnExit = meBanco2Change
          OnKeyPress = meBanco2KeyPress
        end
        object mePraca2: TMaskEdit
          Left = 120
          Top = 48
          Width = 41
          Height = 21
          MaxLength = 4
          TabOrder = 2
          OnChange = mePraca2Change
          OnExit = mePraca2Change
          OnKeyPress = mePraca2KeyPress
        end
        object meValPerc2: TMaskEdit
          Left = 8
          Top = 88
          Width = 75
          Height = 21
          TabOrder = 3
          OnChange = meValPerc2Change
          OnExit = meValPerc2Exit
          OnKeyPress = meValPerc2KeyPress
        end
        object meComprador2: TMaskEdit
          Left = 8
          Top = 128
          Width = 153
          Height = 21
          TabOrder = 4
        end
        object btnIncluirPag2: TBitBtn
          Left = 168
          Top = 88
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 5
          OnClick = btnIncluirPag2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333FF3333333333333003333
            3333333333773FF3333333333309003333333333337F773FF333333333099900
            33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
            99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
            33333333337F3F77333333333309003333333333337F77333333333333003333
            3333333333773333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object btnExcluirPag2: TBitBtn
          Left = 168
          Top = 120
          Width = 75
          Height = 25
          Caption = '&Excluir'
          TabOrder = 6
          OnClick = btnExcluirPag2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333FF3333333333333003333333333333F77F33333333333009033
            333333333F7737F333333333009990333333333F773337FFFFFF330099999000
            00003F773333377777770099999999999990773FF33333FFFFF7330099999000
            000033773FF33777777733330099903333333333773FF7F33333333333009033
            33333333337737F3333333333333003333333333333377333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object cbMoedaNac2: TCheckBox
          Left = 8
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Moeda Nacional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object meValReal2: TMaskEdit
          Left = 80
          Top = 88
          Width = 81
          Height = 21
          TabOrder = 8
          OnChange = meValReal2Change
          OnExit = meValReal2Exit
          OnKeyPress = meValReal2KeyPress
        end
        object dbGrdPagVinc2: TDBGrid
          Left = 248
          Top = 8
          Width = 465
          Height = 141
          DataSource = dsPagVinc
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 9
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Moeda Nacional'
              Title.Caption = 'MN'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Contrato'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Banco'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Praca'
              Title.Caption = 'Praça'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor Percentual'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJ Comprador'
              Title.Caption = 'Comprador'
              Width = 94
              Visible = True
            end>
        end
      end
      object tsPag3: TTabSheet
        Caption = 'Pagamento em até 180 Dias'
        ImageIndex = 2
        object pnlFixas: TPanel
          Left = 8
          Top = 31
          Width = 225
          Height = 125
          Color = clSilver
          Enabled = False
          TabOrder = 1
          object Label67: TLabel
            Left = 5
            Top = 13
            Width = 71
            Height = 13
            Caption = 'Nº de Parcelas'
          end
          object Label68: TLabel
            Left = 117
            Top = 13
            Width = 64
            Height = 13
            Caption = 'Periodicidade'
          end
          object Label69: TLabel
            Left = 5
            Top = 37
            Width = 65
            Height = 13
            Caption = ' % da Parcela'
          end
          object Label7: TLabel
            Left = 7
            Top = 57
            Width = 78
            Height = 13
            Caption = 'Valor da Parcela'
          end
          object dbEdtNParcelas: TDBEdit
            Left = 80
            Top = 8
            Width = 33
            Height = 21
            DataField = 'Numero_de_parcelas'
            DataSource = dsFaturas
            TabOrder = 0
          end
          object dbEdtPeriodicidade: TDBEdit
            Left = 184
            Top = 8
            Width = 33
            Height = 21
            DataField = 'Periodicidade'
            DataSource = dsFaturas
            TabOrder = 1
          end
          object dbEdtValorParc: TDBEdit
            Left = 96
            Top = 32
            Width = 121
            Height = 21
            DataField = 'Valor_das_Parcelas'
            DataSource = dsFaturas
            TabOrder = 2
            OnExit = dbEdtValorParcExit
          end
          object dbRgIndicador: TDBRadioGroup
            Left = 8
            Top = 76
            Width = 209
            Height = 41
            Caption = ' Indicador de Periciocidade '
            Columns = 2
            DataField = 'Indicador_Periodicidade'
            DataSource = dsFaturas
            Items.Strings = (
              '0 - Diária'
              '1 - Mensal')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1')
          end
          object me_valorparc: TMaskEdit
            Left = 96
            Top = 56
            Width = 121
            Height = 21
            TabOrder = 4
            Text = '0'
            OnExit = me_valorparcExit
          end
        end
        object pnlVaria: TPanel
          Left = 240
          Top = 8
          Width = 217
          Height = 145
          Color = clInactiveCaptionText
          Enabled = False
          TabOrder = 2
          object dbGrdParcVar: TDBGrid
            Left = 8
            Top = 8
            Width = 201
            Height = 101
            Color = clCaptionText
            DataSource = dsParcVar
            FixedColor = clScrollBar
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
                FieldName = 'Percentual'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data de Pagamento'
                Title.Caption = 'Data'
                Width = 47
                Visible = True
              end>
          end
          object btnIncluirParcVar: TBitBtn
            Left = 56
            Top = 113
            Width = 33
            Height = 24
            Hint = 'Nova Parcela'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btnIncluirTaxaClick
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
          object btnAlterarParcVar: TBitBtn
            Left = 95
            Top = 113
            Width = 33
            Height = 24
            Hint = 'Alterar Parcela'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btnAlterarParcVarClick
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
          object btnExcluirParcVar: TBitBtn
            Left = 135
            Top = 113
            Width = 33
            Height = 24
            Hint = 'Excluir Parcela'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btnExcluirParcVarClick
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
        object pnlJuros: TPanel
          Left = 464
          Top = 8
          Width = 145
          Height = 145
          Color = clSilver
          TabOrder = 3
          object Label73: TLabel
            Left = 8
            Top = 40
            Width = 33
            Height = 13
            Caption = 'Código'
          end
          object Label74: TLabel
            Left = 8
            Top = 88
            Width = 67
            Height = 13
            Caption = 'Taxa de Juros'
          end
          object dbRbTaxaJuros: TDBCheckBox
            Left = 8
            Top = 16
            Width = 129
            Height = 17
            Caption = 'Com Taxa de Juros'
            DataField = 'Taxa_de_Juros'
            DataSource = dsFaturas
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object edtEdtValTaxaJuros: TDBEdit
            Left = 8
            Top = 104
            Width = 129
            Height = 21
            DataField = 'Valor_Taxa_de_Juros'
            DataSource = dsFaturas
            TabOrder = 1
          end
          object dbLcbTaxaJuros: TDBLookupComboBox
            Left = 8
            Top = 56
            Width = 129
            Height = 21
            DataField = 'Codigo_Taxa_de_Juros'
            DataSource = dsFaturas
            KeyField = 'CODIGO'
            ListField = 'CODIGO;DESCRICAO'
            ListFieldIndex = 1
            ListSource = dsTaxaJuros
            TabOrder = 2
          end
        end
        object pnlRof: TPanel
          Left = 616
          Top = 8
          Width = 97
          Height = 145
          Color = clInactiveCaptionText
          Enabled = False
          TabOrder = 4
          object Label70: TLabel
            Left = 8
            Top = 24
            Width = 76
            Height = 13
            Caption = 'Nº ROF BACEN'
          end
          object Label210: TLabel
            Left = 8
            Top = 72
            Width = 51
            Height = 13
            Caption = 'Percentual'
          end
          object dbEdtRof: TDBEdit
            Left = 8
            Top = 40
            Width = 81
            Height = 21
            DataField = 'ROF_BACEN'
            DataSource = dsFaturas
            TabOrder = 0
          end
          object dbEdtValPerRof: TDBEdit
            Left = 8
            Top = 88
            Width = 81
            Height = 21
            DataField = 'Percentual_ROF'
            DataSource = dsFaturas
            TabOrder = 1
          end
        end
        object dbRgParcelas: TDBRadioGroup
          Left = 8
          Top = 0
          Width = 225
          Height = 27
          Caption = ' Parcelas '
          Columns = 2
          DataField = 'Tipo_Parcela'
          DataSource = dsFaturas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            '1 - Fixas'
            '2 - Variáveis')
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '1'
            '2')
          OnChange = dbRgParcelasChange
        end
      end
    end
    object dbRgCambial: TDBRadioGroup
      Left = 16
      Top = 8
      Width = 729
      Height = 41
      Caption = ' Cobertura Cambial '
      Columns = 4
      DataField = 'Cobertura_Cambial'
      DataSource = dsFaturas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        '1 - Até 180 Dias'
        '2 - De 181 até 360 Dias'
        '3 - Acima de 360 Dias'
        '4 - Sem Cobertura')
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3'
        '4')
      OnChange = dbRgCambialChange
    end
    object dbLcbInst: TDBLookupComboBox
      Left = 16
      Top = 112
      Width = 729
      Height = 21
      DataField = 'Instituicao_Financiadora'
      DataSource = dsFaturas
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListFieldIndex = 1
      ListSource = dsInst
      TabOrder = 2
      OnClick = dbLcbInstClick
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 33
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label26: TLabel
      Left = 8
      Top = 10
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
    object l_cliente: TLabel
      Left = 296
      Top = 10
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 10
      Width = 30
      Height = 13
      Caption = 'Fatura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ME_nossaref: TMaskEdit
      Left = 56
      Top = 6
      Width = 65
      Height = 21
      Enabled = False
      MaxLength = 8
      TabOrder = 0
    end
    object edtFatura: TEdit
      Left = 160
      Top = 6
      Width = 129
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  object pnlBaixo: TPanel
    Left = 0
    Top = 419
    Width = 760
    Height = 46
    Align = alBottom
    Color = 10514464
    TabOrder = 2
    object btnSair: TBitBtn
      Left = 672
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = btnSairClick
      Kind = bkClose
    end
    object btnAlterar: TBitBtn
      Left = 24
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Alterar'
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
    object btnSalvar: TBitBtn
      Left = 296
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Default = True
      Enabled = False
      TabOrder = 2
      OnClick = btnSalvarClick
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
    object btnCancelar: TBitBtn
      Left = 392
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
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
  end
  object pnlContratos: TPanel
    Left = 136
    Top = 72
    Width = 497
    Height = 137
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label291: TLabel
      Left = 16
      Top = 312
      Width = 152
      Height = 13
      Caption = 'Duplo click seleciona o contrato'
    end
    object Panel41: TPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 27
      Align = alTop
      Caption = 'Contratos Antecipados deste Cliente com este Exportador'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid5: TDBGrid
      Left = 16
      Top = 40
      Width = 465
      Height = 257
      DataSource = dsCambio
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid5DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CONTRATO_CAMBIO'
          Title.Caption = 'Contrato'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Praca'
          Title.Caption = 'Praça'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Moeda'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_PAG_CAMBIO'
          Title.Caption = 'Dt.Pag.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Total'
          Title.Caption = 'Valor Total'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_vinculado'
          Title.Caption = 'Valor Vinculado'
          Width = 80
          Visible = True
        end>
    end
    object btnFechaCont: TButton
      Left = 432
      Top = 304
      Width = 50
      Height = 25
      Caption = 'Fecha'
      TabOrder = 2
      OnClick = btnFechaContClick
    end
  end
  object pnlParcelas: TPanel
    Left = 632
    Top = 376
    Width = 281
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Label5: TLabel
      Left = 16
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Percentual'
    end
    object Label6: TLabel
      Left = 96
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label72: TLabel
      Left = 192
      Top = 40
      Width = 71
      Height = 13
      Caption = 'Data (MesAno)'
    end
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 269
      Height = 27
      Align = alTop
      Caption = 'Parcelas'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object btnSalvarParc: TBitBtn
      Left = 50
      Top = 92
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 1
      OnClick = btnSalvarParcClick
      Kind = bkOK
    end
    object btnCancelarParc: TBitBtn
      Left = 154
      Top = 92
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      OnClick = btnCancelarParcClick
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
    object mePercentual: TMaskEdit
      Left = 16
      Top = 56
      Width = 73
      Height = 21
      TabOrder = 3
      OnChange = mePercentualChange
      OnExit = mePercentualExit
      OnKeyPress = mePercentualKeyPress
    end
    object meValor: TMaskEdit
      Left = 96
      Top = 56
      Width = 89
      Height = 21
      TabOrder = 4
      OnChange = meValorChange
      OnExit = meValorExit
      OnKeyPress = meValorKeyPress
    end
    object meDataPar: TMaskEdit
      Left = 192
      Top = 56
      Width = 73
      Height = 21
      Hint = 'Formato da Data: MMAAAA'
      EditMask = '!000000;1;_'
      MaxLength = 6
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '      '
    end
  end
  object tbFaturas: TTable
    AfterPost = tbFaturasAfterPost
    BeforeDelete = tbFaturasBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo;Codigo'
    TableName = 'Faturas'
    Left = 304
    object tbFaturasEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object tbFaturasFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object tbFaturasProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object tbFaturasCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 30
    end
    object tbFaturasExportador: TStringField
      FieldName = 'Exportador'
      FixedChar = True
      Size = 4
    end
    object tbFaturasIncoterm: TStringField
      FieldName = 'Incoterm'
      FixedChar = True
      Size = 3
    end
    object tbFaturasVinculacao: TStringField
      FieldName = 'Vinculacao'
      FixedChar = True
      Size = 1
    end
    object tbFaturasCondicao: TStringField
      FieldName = 'Condicao'
      FixedChar = True
      Size = 50
    end
    object tbFaturasValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object tbFaturasPeso_Total: TFloatField
      FieldName = 'Peso_Total'
    end
    object tbFaturasPeso_Total_Acertado: TFloatField
      FieldName = 'Peso_Total_Acertado'
    end
    object tbFaturasAcrescimos_Reducoes: TSmallintField
      FieldName = 'Acrescimos_Reducoes'
    end
    object tbFaturasMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object tbFaturasCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      FixedChar = True
      Size = 1
    end
    object tbFaturasMotivo_Sem_Cobertura: TStringField
      FieldName = 'Motivo_Sem_Cobertura'
      FixedChar = True
      Size = 2
    end
    object tbFaturasModalidade_de_Pagamento: TStringField
      FieldName = 'Modalidade_de_Pagamento'
      FixedChar = True
      Size = 2
    end
    object tbFaturasInstituicao_Financiadora: TStringField
      FieldName = 'Instituicao_Financiadora'
      FixedChar = True
      Size = 2
    end
    object tbFaturasTipo_Parcela: TStringField
      FieldName = 'Tipo_Parcela'
      FixedChar = True
      Size = 1
    end
    object tbFaturasNumero_de_parcelas: TStringField
      FieldName = 'Numero_de_parcelas'
      FixedChar = True
      Size = 3
    end
    object tbFaturasPeriodicidade: TStringField
      FieldName = 'Periodicidade'
      FixedChar = True
      Size = 3
    end
    object tbFaturasValor_das_Parcelas: TFloatField
      FieldName = 'Valor_das_Parcelas'
    end
    object tbFaturasIndicador_Periodicidade: TStringField
      FieldName = 'Indicador_Periodicidade'
      FixedChar = True
      Size = 1
    end
    object tbFaturasTaxa_de_Juros: TSmallintField
      FieldName = 'Taxa_de_Juros'
    end
    object tbFaturasCodigo_Taxa_de_Juros: TStringField
      FieldName = 'Codigo_Taxa_de_Juros'
      FixedChar = True
      Size = 4
    end
    object tbFaturasValor_Taxa_de_Juros: TFloatField
      FieldName = 'Valor_Taxa_de_Juros'
    end
    object tbFaturasROF_BACEN: TStringField
      FieldName = 'ROF_BACEN'
      FixedChar = True
      Size = 8
    end
    object tbFaturasPercentual_ROF: TFloatField
      FieldName = 'Percentual_ROF'
    end
    object tbFaturasDT_PREV_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PREV_PAG_CAMBIO'
    end
    object tbFaturasDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object tbFaturasSTATUS_CAMBIO: TStringField
      FieldName = 'STATUS_CAMBIO'
      FixedChar = True
      Size = 1
    end
    object tbFaturasCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      FixedChar = True
      Size = 10
    end
    object tbFaturasSALDO_CAMBIO: TFloatField
      FieldName = 'SALDO_CAMBIO'
    end
    object tbFaturasDtEmissao: TDateTimeField
      FieldName = 'DtEmissao'
    end
    object tbFaturasPeso_Libra: TSmallintField
      FieldName = 'Peso_Libra'
    end
  end
  object dsFaturas: TDataSource
    DataSet = tbFaturas
    Left = 312
    Top = 16
  end
  object qrCambio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT [CGC_CPF], CONTRATO_CAMBIO, Cod_Fornecedor, DT_PAG_CAMBIO' +
        ', Moeda, Valor_Total, Banco, Praca, Valor_vinculado, antecipado'
      'FROM Cambio_antecipado'
      
        'WHERE [CGC_CPF] = :cgc AND Cod_Fornecedor = :exp AND [ANTECIPADO' +
        '] = 1')
    Left = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'cgc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'exp'
        ParamType = ptUnknown
      end>
    object qrCambioCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object qrCambioCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      FixedChar = True
      Size = 10
    end
    object qrCambioCod_Fornecedor: TStringField
      FieldName = 'Cod_Fornecedor'
      FixedChar = True
      Size = 4
    end
    object qrCambioDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
    object qrCambioMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 3
    end
    object qrCambioValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object qrCambioBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object qrCambioPraca: TStringField
      FieldName = 'Praca'
      FixedChar = True
      Size = 10
    end
    object qrCambioValor_vinculado: TFloatField
      FieldName = 'Valor_vinculado'
    end
    object qrCambioantecipado: TSmallintField
      FieldName = 'antecipado'
    end
  end
  object qrInsCambio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Cambio_antecipado ( [CGC_CPF], Cod_Fornecedor, Moeda' +
        ', CONTRATO_CAMBIO, Banco, Praca, DT_PAG_CAMBIO, Valor_vinculado,' +
        ' Valor_Total, antecipado )'
      
        'SELECT :cgc, :exp, :moe, :cont, :banco, :praca, :data, :vinc, :v' +
        'al, 1')
    Left = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'cgc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'exp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'moe'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'banco'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'praca'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'vinc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end>
  end
  object qrUpCambio: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Cambio_antecipado SET Valor_Vinculado = :val'
      'WHERE CONTRATO_CAMBIO = :cont AND [CGC_CPF] = :cgc')
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cgc'
        ParamType = ptUnknown
      end>
  end
  object qrSomaCambioFat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sum(Valor_Total) AS SomaValorTotal'
      'FROM Cambio_antecipado_faturas'
      'GROUP BY [CGC_CPF], CONTRATO_CAMBIO'
      'HAVING [CGC_CPF] = :cgc AND CONTRATO_CAMBIO = :cont')
    Left = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'cgc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptUnknown
      end>
    object qrSomaCambioFatSomaValorTotal: TFloatField
      FieldName = 'SomaValorTotal'
    end
  end
  object qrDelPagVinc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM PG_PERC_VINC'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat AND Sequencial = :seq')
    Left = 560
    Top = 120
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end>
  end
  object qrModPag: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_MODALID_PAGAMENTO')
    Left = 152
    Top = 80
    object qrModPagCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_MODALID_PAGAMENTO.CODIGO'
      Size = 2
    end
    object qrModPagDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MODALID_PAGAMENTO.DESCRICAO'
      Size = 120
    end
  end
  object dsModPag: TDataSource
    DataSet = qrModPag
    Left = 184
    Top = 80
  end
  object qrInst: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_INST_FINANC_INTERNACIONAL')
    Left = 152
    Top = 120
    object qrInstCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_INST_FINANC_INTERNACIONAL.CODIGO'
      Size = 2
    end
    object qrInstDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_INST_FINANC_INTERNACIONAL.DESCRICAO'
      Size = 120
    end
  end
  object dsInst: TDataSource
    DataSet = qrInst
    Left = 184
    Top = 120
  end
  object qrInsPagVinc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PG_PERC_VINC ( Empresa, Filial, Processo, Fatura, Se' +
        'quencial, [Forma_de_Pagamento], [Moeda_Nacional], Contrato, Banc' +
        'o, Praca, [Valor_Percentual], Valor, [CNPJ_Comprador] )'
      
        'SELECT :emp, :filial, :pro, :fat, :seq, :forma, :moe, :cont, :ba' +
        'n, :pra, :per, :val, :comp')
    Left = 560
    Top = 88
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'forma'
        ParamType = ptUnknown
      end
      item
        DataType = ftBoolean
        Name = 'moe'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cont'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ban'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'pra'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'per'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'comp'
        ParamType = ptUnknown
      end>
  end
  object qrMotivo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_MOT_SEM_COBERT_CAMBIAL')
    Left = 152
    Top = 160
    object qrMotivoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_MOT_SEM_COBERT_CAMBIAL.CODIGO'
      Size = 2
    end
    object qrMotivoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOT_SEM_COBERT_CAMBIAL.DESCRICAO'
      Size = 120
    end
  end
  object dsMotivo: TDataSource
    DataSet = qrMotivo
    Left = 184
    Top = 160
  end
  object qrDelParcVar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE '
      'FROM PG_PARC_VAR'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat AND Sequencial = :seq')
    Left = 664
    Top = 32
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end>
  end
  object qrExport: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Codigo, [Razao_Social]'
      'FROM Exportadores'
      'WHERE Empresa = :emp AND Filial = :filial')
    Left = 496
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
      end>
    object qrExportEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrExportFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrExportCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object qrExportRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
  end
  object qrMoeda: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_MOEDA')
    Left = 528
    object qrMoedaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.CODIGO'
      Size = 3
    end
    object qrMoedaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      Size = 120
    end
  end
  object qrUltimoSeqVinc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sequencial'
      'FROM PG_PERC_VINC'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura  = :fat'
      'ORDER BY Cast(Sequencial as real) DESC')
    Left = 688
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrUltimoSeqVincSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 4
    end
  end
  object qrSomaPagVinc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Sum(Valor) AS SomaValor, Sum([Valor Percentual]) AS SomaV' +
        'alorPercentual'
      'FROM PG_PERC_VINC'
      'GROUP BY Empresa, Filial, Processo, Fatura, [Forma de Pagamento]'
      
        'HAVING Empresa = :emp AND Filial = :filial AND Processo = :pro A' +
        'ND Fatura  = :fat AND [Forma de Pagamento] = :forma')
    Left = 624
    Top = 33
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'forma'
        ParamType = ptUnknown
      end>
    object qrSomaPagVincSomaValor: TFloatField
      FieldName = 'SomaValor'
    end
    object qrSomaPagVincSomaValorPercentual: TFloatField
      FieldName = 'SomaValorPercentual'
    end
  end
  object alGravaCambrio: TActionList
    Left = 728
    object acExcluirPagVinc: TAction
      Caption = 'acExcluirPagVinc'
      OnExecute = acExcluirPagVincExecute
    end
    object acExcluirParcVar: TAction
      Caption = 'acExcluirParcVar'
      OnExecute = acExcluirParcVarExecute
    end
    object acExcluirFixas: TAction
      Caption = 'acExcluirFixas'
      OnExecute = acExcluirFixasExecute
    end
    object acExcluirParcelas: TAction
      Caption = 'acExcluirParcelas'
      OnExecute = acExcluirParcelasExecute
    end
  end
  object qrPagVinc: TQuery
    AfterOpen = qrPagVincAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Fatura, Sequencial, [Forma_de_' +
        'Pagamento], [Moeda_Nacional], Banco, Praca, Contrato, [Valor_Per' +
        'centual], [CNPJ_Comprador], [Tipo_CNPJ], Valor'
      'FROM PG_PERC_VINC'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat AND [Forma_de_Pagamento] = :forma')
    Left = 428
    Top = 201
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'forma'
        ParamType = ptUnknown
      end>
    object qrPagVincEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrPagVincFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrPagVincProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrPagVincFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object qrPagVincSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 4
    end
    object qrPagVincForma_de_Pagamento: TStringField
      FieldName = 'Forma_de_Pagamento'
      FixedChar = True
      Size = 1
    end
    object qrPagVincMoeda_Nacional: TSmallintField
      FieldName = 'Moeda_Nacional'
    end
    object qrPagVincBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object qrPagVincPraca: TStringField
      FieldName = 'Praca'
      FixedChar = True
      Size = 4
    end
    object qrPagVincContrato: TStringField
      FieldName = 'Contrato'
      FixedChar = True
      Size = 10
    end
    object qrPagVincValor_Percentual: TFloatField
      FieldName = 'Valor_Percentual'
    end
    object qrPagVincCNPJ_Comprador: TStringField
      FieldName = 'CNPJ_Comprador'
      FixedChar = True
      Size = 14
    end
    object qrPagVincTipo_CNPJ: TStringField
      FieldName = 'Tipo_CNPJ'
      FixedChar = True
      Size = 1
    end
    object qrPagVincValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object dsPagVinc: TDataSource
    DataSet = qrPagVinc
    Left = 440
    Top = 216
  end
  object qrUltimoSeqParc: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Sequencial'
      'FROM PG_PARC_VAR'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura  = :fat'
      'ORDER BY Val(Sequencial) DESC')
    Left = 696
    Top = 16
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrUltimoSeqParcSequencial: TStringField
      FieldName = 'Sequencial'
      Size = 50
    end
  end
  object qrInsParcVar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PG_PARC_VAR ( Empresa, Filial, Processo, Fatura, Seq' +
        'uencial, Percentual, Valor, [Data_de_Pagamento] )'
      'SELECT :emp, :filial, :pro, :fat, :seq, :perc, :val, :data')
    Left = 592
    Top = 88
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'perc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'data'
        ParamType = ptUnknown
      end>
  end
  object qrParcVar: TQuery
    AfterOpen = qrParcVarAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Empresa, Filial, Processo, Fatura, Sequencial, Percentual' +
        ', [Data_de_Pagamento], Valor'
      'FROM PG_PARC_VAR'
      
        'WHERE Empresa = :emp AND Filial = :filial AND Processo = :pro AN' +
        'D Fatura = :fat')
    Left = 508
    Top = 201
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
    object qrParcVarEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrParcVarFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrParcVarProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrParcVarFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object qrParcVarSequencial: TStringField
      FieldName = 'Sequencial'
      FixedChar = True
      Size = 50
    end
    object qrParcVarPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object qrParcVarData_de_Pagamento: TStringField
      FieldName = 'Data_de_Pagamento'
      FixedChar = True
      Size = 6
    end
    object qrParcVarValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object dsParcVar: TDataSource
    DataSet = qrParcVar
    Left = 520
    Top = 216
  end
  object qrUpParcVar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE PG_PARC_VAR SET '
      'Percentual = :perc,'
      'Valor = :val, '
      '[Data_de_Pagamento] = :data'
      
        'WHERE Sequencial = :seq AND Empresa = :emp AND Filial = :filial ' +
        'AND Processo = :pro AND Fatura = :fat')
    Left = 656
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'perc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'seq'
        ParamType = ptUnknown
      end
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
        Name = 'pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
      end>
  end
  object dsCambio: TDataSource
    DataSet = qrCambio
    Left = 352
    Top = 16
  end
  object qrTaxaJuros: TQuery
    DatabaseName = 'DBNTABSISCO'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, MOEDA'
      'FROM TAB_TAXAS_JUROS_BACEN'
      'WHERE MOEDA = :moe')
    Left = 576
    Top = 201
    ParamData = <
      item
        DataType = ftString
        Name = 'moe'
        ParamType = ptUnknown
      end>
  end
  object dsTaxaJuros: TDataSource
    DataSet = qrTaxaJuros
    Left = 592
    Top = 216
  end
  object TbCambioFat: TTable
    BeforeDelete = TbCambioFatBeforeDelete
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'REG'
    TableName = 'Cambio_antecipado_faturas'
    Left = 360
    Top = 57
    object TbCambioFatREG: TAutoIncField
      FieldName = 'REG'
    end
    object TbCambioFatCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      FixedChar = True
      Size = 10
    end
    object TbCambioFatCONTRATO_CAMBIO: TStringField
      FieldName = 'CONTRATO_CAMBIO'
      FixedChar = True
      Size = 10
    end
    object TbCambioFatFatura: TStringField
      FieldName = 'Fatura'
      FixedChar = True
      Size = 30
    end
    object TbCambioFatProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object TbCambioFatValor_Total: TFloatField
      FieldName = 'Valor_Total'
    end
    object TbCambioFatVinculada: TSmallintField
      FieldName = 'Vinculada'
    end
    object TbCambioFatOBS: TStringField
      FieldName = 'OBS'
      FixedChar = True
      Size = 255
    end
    object TbCambioFatDT_PAG_CAMBIO: TDateTimeField
      FieldName = 'DT_PAG_CAMBIO'
    end
  end
  object T_transpprocesso: TTable
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Processo'
    TableName = 'Conhecimento_Processo'
    UpdateMode = upWhereChanged
    Left = 348
    Top = 148
    object T_transpprocessoEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_transpprocessoFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_transpprocessoProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object T_transpprocessoVia: TStringField
      FieldName = 'Via'
      FixedChar = True
      Size = 1
    end
    object T_transpprocessoMultimodal: TSmallintField
      FieldName = 'Multimodal'
    end
    object T_transpprocessoPLaca: TStringField
      FieldName = 'PLaca'
      FixedChar = True
      Size = 15
    end
    object T_transpprocessoLacre: TStringField
      FieldName = 'Lacre'
      FixedChar = True
      Size = 15
    end
    object T_transpprocessoEmbarcacao: TStringField
      FieldName = 'Embarcacao'
      FixedChar = True
      Size = 30
    end
    object T_transpprocessoTransportador: TStringField
      FieldName = 'Transportador'
      FixedChar = True
      Size = 4
    end
    object T_transpprocessoTipodoccarga: TStringField
      FieldName = 'Tipodoccarga'
      FixedChar = True
      Size = 2
    end
    object T_transpprocessoNumerodoccarga: TStringField
      FieldName = 'Numerodoccarga'
      FixedChar = True
      Size = 18
    end
    object T_transpprocessoNumeromaster: TStringField
      FieldName = 'Numeromaster'
      FixedChar = True
      Size = 18
    end
    object T_transpprocessoLocal: TStringField
      FieldName = 'Local'
      FixedChar = True
      Size = 50
    end
    object T_transpprocessoData: TDateTimeField
      FieldName = 'Data'
    end
    object T_transpprocessoUtilizacao: TStringField
      FieldName = 'Utilizacao'
      FixedChar = True
      Size = 1
    end
    object T_transpprocessoTipomanifesto: TStringField
      FieldName = 'Tipomanifesto'
      FixedChar = True
      Size = 1
    end
    object T_transpprocessoNumeromanifesto: TStringField
      FieldName = 'Numeromanifesto'
      FixedChar = True
      Size = 15
    end
    object T_transpprocessoCodigo_Presenca_Carga: TStringField
      FieldName = 'Codigo_Presenca_Carga'
      FixedChar = True
      Size = 50
    end
    object T_transpprocessoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object T_transpprocessoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object T_transpprocessoAgente: TStringField
      FieldName = 'Agente'
      FixedChar = True
      Size = 30
    end
    object T_transpprocessoPais_Procedencia: TStringField
      FieldName = 'Pais_Procedencia'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object T_transpprocessoData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object T_transpprocessoURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object T_transpprocessoData_Chegada_URF_Desp: TDateTimeField
      FieldName = 'Data_Chegada_URF_Desp'
    end
    object T_transpprocessoRecinto_Alfandegario: TStringField
      FieldName = 'Recinto_Alfandegario'
      FixedChar = True
      Size = 7
    end
    object T_transpprocessoSetor_Alfandegario: TStringField
      FieldName = 'Setor_Alfandegario'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoArmazem: TStringField
      FieldName = 'Armazem'
      FixedChar = True
      Size = 30
    end
    object T_transpprocessoOperacao_FUNDAP: TSmallintField
      FieldName = 'Operacao_FUNDAP'
    end
    object T_transpprocessoContratante_OPCAMBIAL: TStringField
      FieldName = 'Contratante_OPCAMBIAL'
      FixedChar = True
      Size = 18
    end
    object T_transpprocessoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoFrete_Prepaid: TFloatField
      FieldName = 'Frete_Prepaid'
    end
    object T_transpprocessoFrete_Collect: TFloatField
      FieldName = 'Frete_Collect'
    end
    object T_transpprocessoFrete_Ter_Nac: TFloatField
      FieldName = 'Frete_Ter_Nac'
    end
    object T_transpprocessoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoValor_Seguro: TFloatField
      FieldName = 'Valor_Seguro'
    end
    object T_transpprocessoMoeda_Despesas_ate_FOB: TStringField
      FieldName = 'Moeda_Despesas_ate_FOB'
      FixedChar = True
      Size = 3
    end
    object T_transpprocessoValor_Despesas_ate_FOB: TFloatField
      FieldName = 'Valor_Despesas_ate_FOB'
    end
    object T_transpprocessoUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object T_transpprocessoQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object qrInscambio_faturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO Cambio_antecipado_faturas ( [CGC_CPF], CONTRATO_CAMB' +
        'IO, Fatura, Processo, Valor_Total, Vinculada, OBS,  DT_PAG_CAMBI' +
        'O )'
      'SELECT :cgc, :con, :fat, :pro, :val, 1, :obs, :dtpag')
    Left = 416
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'cgc'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'con'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'val'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'obs'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'dtpag'
        ParamType = ptUnknown
        Value = '11/11/1111'
      end>
  end
  object qrexccambio_faturas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'DELETE  FROM Cambio_antecipado_faturas'
      
        'WHERE [CGC_CPF] = :cgc  AND CONTRATO_CAMBIO = :con AND fatura = ' +
        ':fat AND processo = :pro')
    Left = 440
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'cgc'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'con'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'fat'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pro'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
end
