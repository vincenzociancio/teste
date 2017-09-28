object f_controlenumerarios: Tf_controlenumerarios
  Left = 257
  Top = 296
  ActiveControl = edFiltroValor
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Numerários'
  ClientHeight = 438
  ClientWidth = 786
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
  object p_itens: TPanel
    Left = -1
    Top = 0
    Width = 787
    Height = 438
    Color = 10514464
    TabOrder = 0
    object DBGrid: TDBGrid
      Left = 5
      Top = 127
      Width = 778
      Height = 276
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -8
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Processo'
          Title.Alignment = taCenter
          Title.Caption = 'Ref. MS'
          Width = 58
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cliente'
          Title.Alignment = taCenter
          Width = 294
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Solicitacao'
          Title.Alignment = taCenter
          Title.Caption = 'Data Sol.'
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Total'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Sol.'
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Status'
          Title.Alignment = taCenter
          Width = 135
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data_Recebimento'
          Title.Alignment = taCenter
          Title.Caption = 'Recebimento'
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Autorizador'
          Title.Alignment = taCenter
          Width = 77
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Solicitante'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end>
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 3
      Width = 777
      Height = 114
      Caption = ' Busca por '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 179
        Top = 20
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 97
        Top = 20
        Width = 53
        Height = 13
        Caption = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 30
        Height = 13
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edFiltroCliente: TEdit
        Left = 179
        Top = 36
        Width = 243
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 2
        OnChange = edFiltroClienteChange
      end
      object edFiltroProcesso: TEdit
        Left = 96
        Top = 36
        Width = 76
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 1
        OnChange = edFiltroProcessoChange
      end
      object GroupBox1: TGroupBox
        Left = 429
        Top = 17
        Width = 340
        Height = 41
        Caption = ' Status '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object rbTodos: TRadioButton
          Left = 9
          Top = 20
          Width = 60
          Height = 17
          Caption = 'Todos'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbTodosClick
        end
        object rbRecebidos: TRadioButton
          Left = 75
          Top = 20
          Width = 83
          Height = 17
          Caption = 'Recebidos'
          TabOrder = 1
          OnClick = rbTodosClick
        end
        object rbAguardandoRecebimento: TRadioButton
          Left = 169
          Top = 20
          Width = 168
          Height = 17
          Caption = 'Aguardando Recebimento'
          TabOrder = 2
          OnClick = rbTodosClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 7
        Top = 64
        Width = 273
        Height = 43
        Caption = ' Valor '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label5: TLabel
          Left = 19
          Top = 21
          Width = 17
          Height = 13
          Caption = 'De'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 139
          Top = 21
          Width = 20
          Height = 13
          Caption = 'Até'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edFiltroValorDe: TMaskEdit
          Left = 45
          Top = 15
          Width = 82
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          OnChange = edFiltroValorDeChange
          OnKeyPress = edFiltroValorKeyPress
        end
        object edFiltroValorAte: TMaskEdit
          Left = 170
          Top = 15
          Width = 82
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 1
          OnChange = edFiltroValorDeChange
          OnKeyPress = edFiltroValorKeyPress
        end
      end
      object GroupBox4: TGroupBox
        Left = 530
        Top = 64
        Width = 239
        Height = 43
        Caption = ' Data Recebimento '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object Label7: TLabel
          Left = 8
          Top = 21
          Width = 17
          Height = 13
          Caption = 'De'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 120
          Top = 21
          Width = 20
          Height = 13
          Caption = 'Até'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDataRecebimentoDe: TMaskEdit
          Left = 32
          Top = 15
          Width = 82
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnChange = edDataRecebimentoDeChange
          OnKeyPress = edDataSolicitacaoDeKeyPress
        end
        object edDataRecebimentoAte: TMaskEdit
          Left = 149
          Top = 14
          Width = 82
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
          OnChange = edDataRecebimentoAteChange
          OnKeyPress = edDataSolicitacaoDeKeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 286
        Top = 64
        Width = 239
        Height = 43
        Caption = ' Data de Solicitação '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label2: TLabel
          Left = 9
          Top = 21
          Width = 17
          Height = 13
          Caption = 'De'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 122
          Top = 21
          Width = 20
          Height = 13
          Caption = 'Até'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDataSolicitacaoDe: TMaskEdit
          Left = 32
          Top = 15
          Width = 82
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnChange = edDataSolicitacaoDeChange
          OnKeyPress = edDataSolicitacaoDeKeyPress
        end
        object edDataSolicitacaoAte: TMaskEdit
          Left = 149
          Top = 14
          Width = 82
          Height = 21
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
          OnChange = edDataSolicitacaoAteChange
          OnKeyPress = edDataSolicitacaoDeKeyPress
        end
      end
      object edFiltroValor: TMaskEdit
        Left = 7
        Top = 36
        Width = 82
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        OnChange = edFiltroValorChange
        OnKeyPress = edFiltroValorKeyPress
      end
    end
    object b_imprimir: TBitBtn
      Left = 626
      Top = 410
      Width = 79
      Height = 23
      Caption = 'Imprimir'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
      OnClick = b_imprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 7
      Top = 408
      Width = 98
      Height = 25
      Hint = 'Alterar Status da Solicitação'
      Caption = '&Alterar Status'
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
    object btnFechar: TBitBtn
      Left = 708
      Top = 410
      Width = 75
      Height = 23
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object btnExcluir: TBitBtn
      Left = 111
      Top = 408
      Width = 75
      Height = 25
      Hint = 'Excluir Tipo de Numerário'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
  end
  object DataSource1: TDataSource
    DataSet = q_Numerarios
    Left = 590
    Top = 168
  end
  object q_Numerarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Codigo, Processo, Cliente, Data_Solicitacao, Total, Solic' +
        'itante, Autorizador, Data_recebimento, '
      
        '          CASE STATUS WHEN 0                                    ' +
        '                                          '
      
        '            THEN '#39'Aguardando recebimento'#39'                       ' +
        '                                        '
      
        '            ELSE '#39'Recebido'#39'                                     ' +
        '                                        '
      
        '          END AS STATUS                                         ' +
        '                                          '
      
        '     FROM Controle_numerarios                                   ' +
        '                                          '
      
        '    WHERE ATIVO = 1 AND Solicitante IS NOT NULL                 ' +
        '                                                        '
      '   ORDER BY Data_recebimento DESC, Data_Solicitacao   ')
    Left = 670
    Top = 168
    object q_NumerariosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object q_NumerariosProcesso: TStringField
      FieldName = 'Processo'
      Size = 8
    end
    object q_NumerariosCliente: TStringField
      FieldName = 'Cliente'
      Size = 250
    end
    object q_NumerariosTotal: TFloatField
      FieldName = 'Total'
      OnGetText = q_NumerariosTotalGetText
    end
    object q_NumerariosSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 10
    end
    object q_NumerariosAutorizador: TStringField
      FieldName = 'Autorizador'
      Size = 10
    end
    object q_NumerariosData_Recebimento: TDateTimeField
      FieldName = 'Data_Recebimento'
    end
    object q_NumerariosAtivo: TIntegerField
      FieldName = 'Ativo'
    end
    object q_NumerariosStatus: TStringField
      FieldName = 'Status'
    end
    object q_NumerariosData_Solicitacao: TDateTimeField
      FieldName = 'Data_Solicitacao'
      OnGetText = q_NumerariosData_SolicitacaoGetText
    end
  end
end
