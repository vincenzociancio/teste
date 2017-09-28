object frmTaxasConversaoCambioAmanha: TfrmTaxasConversaoCambioAmanha
  Left = 173
  Top = 56
  BorderStyle = bsSingle
  Caption = 'Taxas Conversao Câmbio'
  ClientHeight = 579
  ClientWidth = 872
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTaxaConv: TPanel
    Left = -5
    Top = -8
    Width = 885
    Height = 666
    BevelInner = bvLowered
    Color = 10514464
    TabOrder = 0
    object Label1: TLabel
      Left = 250
      Top = 501
      Width = 78
      Height = 13
      Caption = 'Taxa Conversao'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 377
      Top = 502
      Width = 71
      Height = 13
      Caption = 'Vigência Inicial'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 500
      Top = 502
      Width = 66
      Height = 13
      Caption = 'Vigência Final'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 501
      Width = 58
      Height = 13
      Caption = 'Cód. Moeda'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbgTaxaConvC: TDBGrid
      Left = 15
      Top = 10
      Width = 852
      Height = 485
      DataSource = dstbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
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
          FieldName = 'Descricao'
          Title.Caption = 'Moeda'
          Width = 478
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Taxa_Conversao'
          Title.Caption = 'Taxa Conversao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vigencia_Inicio_Taxa'
          Title.Caption = 'Vigencia Inicio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vigencia_Fim_Taxa'
          Title.Caption = 'Vigencia Fim'
          Visible = True
        end>
    end
    object btnAlterarTaxaC: TBitBtn
      Left = 418
      Top = 555
      Width = 225
      Height = 24
      Hint = 'Alterar Taxa de Conversão'
      Caption = 'Editar Taxa de Conversao da moeda'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlterarTaxaCClick
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
    object btnCopiar: TButton
      Left = 12
      Top = 555
      Width = 218
      Height = 25
      Caption = 'Copiar Todas as  Moedas do SISCOMEX'
      TabOrder = 2
      OnClick = btnCopiarClick
    end
    object btnGravar: TButton
      Left = 647
      Top = 554
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 3
      Visible = False
      OnClick = btnGravarClick
    end
    object txtTxConversao: TEdit
      Left = 250
      Top = 519
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object txtVI: TEdit
      Left = 375
      Top = 518
      Width = 121
      Height = 21
      Color = clWhite
      TabOrder = 5
    end
    object txtVF: TEdit
      Left = 498
      Top = 518
      Width = 98
      Height = 21
      Color = clWhite
      TabOrder = 6
    end
    object btnAlterarVigencias: TButton
      Left = 233
      Top = 555
      Width = 183
      Height = 25
      Caption = 'Alterar somente as vigências'
      TabOrder = 7
      OnClick = btnAlterarVigenciasClick
    end
    object GroupBox1: TGroupBox
      Left = 603
      Top = 500
      Width = 262
      Height = 51
      Caption = 'Vincular Taxa de Conversão no Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      object ME_nossaref: TMaskEdit
        Left = 16
        Top = 20
        Width = 65
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        OnChange = ME_nossarefChange
      end
      object btnVincularProcesso: TBitBtn
        Left = 112
        Top = 19
        Width = 141
        Height = 25
        Caption = 'Gravar Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clActiveCaption
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnVincularProcessoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
          0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
          B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
          FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
          FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
          FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
          0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
          0555555555777777755555555555555555555555555555555555}
        NumGlyphs = 2
      end
    end
    object BitBtn1: TBitBtn
      Left = 791
      Top = 554
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 9
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 68
      Top = 517
      Width = 180
      Height = 25
      Caption = '&Pesquisar pelo Cód. da Moeda'
      TabOrder = 10
      OnClick = BitBtn2Click
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
    object txtCodMoedaPesq: TEdit
      Left = 16
      Top = 519
      Width = 49
      Height = 21
      TabOrder = 11
    end
  end
  object tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA: TTable
    AfterScroll = tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA'
    Left = 393
    Top = 95
    object tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHACodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 3
    end
    object tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHADescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 120
    end
    object tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHATaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      FixedChar = True
      Size = 9
    end
    object tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAVigencia_Inicio_Taxa: TStringField
      FieldName = 'Vigencia_Inicio_Taxa'
      FixedChar = True
      Size = 10
    end
    object tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAVigencia_Fim_Taxa: TStringField
      FieldName = 'Vigencia_Fim_Taxa'
      FixedChar = True
      Size = 10
    end
  end
  object dstbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA: TDataSource
    DataSet = tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA
    Left = 393
    Top = 143
  end
  object qrTAB_CONVERSAO_CAMBIO: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Codigo, Descricao, Taxa_Conversao, Vigencia_Inicio_Taxa, ' +
        'Vigencia_Fim_Taxa  FROM TAB_CONVERSAO_CAMBIO')
    Left = 401
    Top = 223
    object qrTAB_CONVERSAO_CAMBIOCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.TAB_CONVERSAO_CAMBIO.Codigo'
      FixedChar = True
      Size = 3
    end
    object qrTAB_CONVERSAO_CAMBIODescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.TAB_CONVERSAO_CAMBIO.Descricao'
      FixedChar = True
      Size = 120
    end
    object qrTAB_CONVERSAO_CAMBIOTaxa_Conversao: TStringField
      FieldName = 'Taxa_Conversao'
      Origin = 'DBNMSCOMEX.TAB_CONVERSAO_CAMBIO.Taxa_Conversao'
      FixedChar = True
      Size = 9
    end
    object qrTAB_CONVERSAO_CAMBIOVigencia_Inicio_Taxa: TStringField
      FieldName = 'Vigencia_Inicio_Taxa'
      Origin = 'DBNMSCOMEX.TAB_CONVERSAO_CAMBIO.Vigencia_Inicio_Taxa'
      FixedChar = True
      Size = 10
    end
    object qrTAB_CONVERSAO_CAMBIOVigencia_Fim_Taxa: TStringField
      FieldName = 'Vigencia_Fim_Taxa'
      Origin = 'DBNMSCOMEX.TAB_CONVERSAO_CAMBIO.Vigencia_Fim_Taxa'
      FixedChar = True
      Size = 10
    end
  end
  object qrInsereMoedas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'INSERT INTO PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA ([Codigo],[D' +
        'escricao],[Taxa_Conversao],[Vigencia_Inicio_Taxa],[Vigencia_Fim_' +
        'Taxa])'
      
        'VALUES(:pCodigo, :pDescricao, :pTaxa_Conversao, :pVigencia_Inici' +
        'o_Taxa, :pVigencia_Fim_Taxa)')
    Left = 401
    Top = 287
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pDescricao'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pTaxa_Conversao'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pVigencia_Inicio_Taxa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pVigencia_Fim_Taxa'
        ParamType = ptInput
      end>
  end
  object qrDeleteMoedas: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'delete PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA')
    Left = 673
    Top = 79
  end
  object qrAlterarTx: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA'
      'SET Taxa_Conversao = :pTaxa_Conversao'
      'WHERE Codigo = :pCodigo'
      ' ')
    Left = 385
    Top = 383
    ParamData = <
      item
        DataType = ftString
        Name = 'pTaxa_Conversao'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
  end
  object qrExcluir: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'DELETE FROM PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA WHERE CODIGO' +
        ' =:pCodigo')
    Left = 617
    Top = 215
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
  end
  object qrAlterarVigencia: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE PROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA SET '
      'Vigencia_Inicio_Taxa = :pVigencia_Inicio_Taxa,'
      'Vigencia_Fim_Taxa = :pVigencia_Fim_Taxa')
    Left = 625
    Top = 335
    ParamData = <
      item
        DataType = ftString
        Name = 'pVigencia_Inicio_Taxa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pVigencia_Fim_Taxa'
        ParamType = ptInput
      end>
  end
  object qExcluiProcessoComTaxa: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'delete from Processos_Taxas_ConversaoDoDiaSeguinte where process' +
        'o =:pProcesso and Moeda =:pMoeda')
    Left = 637
    Top = 456
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pMoeda'
        ParamType = ptInput
      end>
  end
  object qIncluiProcessoComTaxa: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO Processos_Taxas_ConversaoDoDiaSeguinte'
      
        '([Empresa],[Filial],[Processo],[Moeda],[Taxa_conversao],[Taxa_co' +
        'nversaoc])'
      
        'VALUES('#39'1'#39','#39'RJO'#39', :pProcesso, :pMoeda, :pTaxa_conversao, :pTaxa_' +
        'conversaoc)')
    Left = 637
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pMoeda'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pTaxa_conversao'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'pTaxa_conversaoc'
        ParamType = ptInput
      end>
  end
  object qrProcessos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo as Processo'
      'FROM Processos'
      'where Codigo=:pProcesso')
    Left = 160
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
  end
end
