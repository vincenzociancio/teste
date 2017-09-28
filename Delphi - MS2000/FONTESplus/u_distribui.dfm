object f_distribui: Tf_distribui
  Left = 282
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Distribuição Operacional de Processos'
  ClientHeight = 376
  ClientWidth = 724
  Color = 10514464
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 3
    Top = 36
    Width = 458
    Height = 330
    Color = 10514464
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 70
      Width = 81
      Height = 13
      Caption = 'Responsável MS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 119
      Width = 97
      Height = 13
      Caption = 'Responsável Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Cliente :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 56
      Top = 16
      Width = 369
      Height = 17
      DataField = 'Razao_Social'
      DataSource = ds_imp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 40
      Width = 50
      Height = 13
      Caption = 'Processo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 64
      Top = 40
      Width = 369
      Height = 17
      DataField = 'Codigo'
      DataSource = ds_processos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sb_limpadecla: TSpeedButton
      Left = 427
      Top = 86
      Width = 23
      Height = 22
      Hint = 'Limpa Responsável'
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
      OnClick = sb_limpadeclaClick
    end
    object Label7: TLabel
      Left = 8
      Top = 216
      Width = 126
      Height = 13
      Caption = 'Coordenador Responsável'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 168
      Width = 115
      Height = 13
      Caption = 'Supervisor Responsável'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 427
      Top = 134
      Width = 23
      Height = 22
      Hint = 'Limpa Responsável'
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
      OnClick = SpeedButton1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 86
      Width = 417
      Height = 21
      DataField = 'Responsavel_Empresa'
      DataSource = ds_processos
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = ds_usuarios
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 8
      Top = 135
      Width = 417
      Height = 21
      DataField = 'Responsavel_Importador'
      DataSource = ds_processos
      KeyField = 'Nome'
      ListField = 'Nome_completo'
      ListSource = ds_resp
      TabOrder = 1
    end
    object b_ok: TBitBtn
      Left = 349
      Top = 296
      Width = 100
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
      OnClick = b_okClick
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
    object BBCANCEL: TBitBtn
      Left = 244
      Top = 296
      Width = 100
      Height = 25
      TabOrder = 3
      OnClick = BBCANCELClick
      Kind = bkCancel
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 8
      Top = 232
      Width = 441
      Height = 21
      DataField = 'Coordenador_Resp'
      DataSource = ds_processos
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dtsCoordenacao
      TabOrder = 4
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 8
      Top = 184
      Width = 441
      Height = 21
      DataField = 'Supervisor_Resp'
      DataSource = ds_processos
      KeyField = 'Usuario'
      ListField = 'Nome_Completo'
      ListSource = dtsSupervisor
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 464
    Top = 36
    Width = 257
    Height = 331
    Color = clInfoBk
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 33
      Width = 255
      Height = 264
      Align = alTop
      DataSource = ds_contapro
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome_Completo'
          Title.Alignment = taCenter
          Title.Caption = 'Usuário'
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContarDeCodigo'
          Title.Alignment = taCenter
          Title.Caption = 'QTD'
          Width = 29
          Visible = True
        end>
    end
    object bb_atualiza: TBitBtn
      Left = 76
      Top = 300
      Width = 105
      Height = 25
      Caption = 'Atualiza'
      TabOrder = 1
      OnClick = bb_atualizaClick
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
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 255
      Height = 32
      Align = alTop
      Caption = 'Processos em andamento por usuário'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 33
    Align = alTop
    Color = clInfoBk
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 86
      Height = 13
      Caption = 'Localiza Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnLocalizar: TSpeedButton
      Left = 188
      Top = 5
      Width = 30
      Height = 21
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
        330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
        830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
        F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
      OnClick = btnLocalizarClick
    end
    object lblRotuloCNPJ: TLabel
      Left = 237
      Top = 8
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblCNPJ: TLabel
      Left = 274
      Top = 8
      Width = 55
      Height = 13
      Caption = 'xxxxxxxxxxx'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object ME_nossaref: TMaskEdit
      Left = 102
      Top = 5
      Width = 83
      Height = 21
      EditMask = '!#####/##;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = ME_nossarefChange
    end
  end
  object ds_imp: TDataSource
    DataSet = t_imp
    Left = 180
    Top = 52
  end
  object q_contapro: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Usuarios.Nome_Completo, Usuarios.Usuario, Count(Processos' +
        '.Codigo) AS ContarDeCodigo'
      
        'FROM Usuarios LEFT JOIN Processos ON Usuarios.Usuario = Processo' +
        's.Responsavel_Empresa'
      'WHERE (((Usuarios.Nivel)>"0") AND ((Processos.Status)<"1"))'
      'GROUP BY Usuarios.Nome_Completo, Usuarios.Usuario'
      'ORDER BY Count(Processos.Codigo);')
    Left = 488
    Top = 112
  end
  object ds_contapro: TDataSource
    DataSet = q_contapro
    Left = 392
    Top = 80
  end
  object t_processos: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Processos'
    Left = 168
    Top = 88
    object t_processosEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_processosFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_processosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 8
    end
    object t_processosData: TDateTimeField
      FieldName = 'Data'
    end
    object t_processosImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object t_processosCodigo_Cliente: TStringField
      FieldName = 'Codigo_Cliente'
      Size = 60
    end
    object t_processosTipo_Declaracao: TStringField
      FieldName = 'Tipo_Declaracao'
      Size = 2
    end
    object t_processosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object t_processosContrato: TStringField
      FieldName = 'Contrato'
      Size = 8
    end
    object t_processosLocal_Inventario: TStringField
      FieldName = 'Local_Inventario'
      Size = 4
    end
    object t_processosNR_DECL_IMP_MICRO: TStringField
      FieldName = 'NR_DECL_IMP_MICRO'
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROT: TStringField
      FieldName = 'NR_DECL_IMP_PROT'
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object t_processosDT_PROCESSAMENTO: TStringField
      FieldName = 'DT_PROCESSAMENTO'
      Size = 8
    end
    object t_processosDT_TRANSMISSAO: TStringField
      FieldName = 'DT_TRANSMISSAO'
      Size = 8
    end
    object t_processosDT_REGISTRO_DI: TStringField
      FieldName = 'DT_REGISTRO_DI'
      Size = 8
    end
    object t_processosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object t_processosDT_DISTRIBUICAO: TDateTimeField
      FieldName = 'DT_DISTRIBUICAO'
    end
    object t_processosCanal: TStringField
      FieldName = 'Canal'
      Size = 1
    end
    object t_processosFiscal: TStringField
      FieldName = 'Fiscal'
    end
    object t_processosStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object t_processosCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 1
    end
    object t_processosCD_MOTIVO_TRANS: TStringField
      FieldName = 'CD_MOTIVO_TRANS'
      Size = 1
    end
    object t_processosIN_MOEDA_UNICA: TSmallintField
      FieldName = 'IN_MOEDA_UNICA'
    end
    object t_processosTX_INFO_COMPL: TMemoField
      FieldName = 'TX_INFO_COMPL'
      BlobType = ftMemo
    end
    object t_processosCD_TIPO_PGTO_TRIB: TStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object t_processosNumero_RCR: TStringField
      FieldName = 'Numero_RCR'
    end
    object t_processosData_Entrada_RCR: TDateTimeField
      FieldName = 'Data_Entrada_RCR'
    end
    object t_processosData_Aprovacao_RCR: TDateTimeField
      FieldName = 'Data_Aprovacao_RCR'
    end
    object t_processosFundamentacao_RCR: TStringField
      FieldName = 'Fundamentacao_RCR'
      Size = 4
    end
    object t_processosProcurador: TStringField
      FieldName = 'Procurador'
      Size = 4
    end
    object t_processosNumero_TR: TStringField
      FieldName = 'Numero_TR'
    end
    object t_processosData_Entrada_TR: TDateTimeField
      FieldName = 'Data_Entrada_TR'
    end
    object t_processosData_vencimento_TR: TDateTimeField
      FieldName = 'Data_vencimento_TR'
    end
    object t_processosData_Aprovacao_TR: TDateTimeField
      FieldName = 'Data_Aprovacao_TR'
    end
    object t_processosData_Baixa_TR: TDateTimeField
      FieldName = 'Data_Baixa_TR'
    end
    object t_processosData_CI: TDateTimeField
      FieldName = 'Data_CI'
    end
    object t_processosTipo_Garantia: TStringField
      FieldName = 'Tipo_Garantia'
      Size = 1
    end
    object t_processosNome_banco_GAR: TStringField
      FieldName = 'Nome_banco_GAR'
      Size = 50
    end
    object t_processosAgencia_GAR: TStringField
      FieldName = 'Agencia_GAR'
      Size = 5
    end
    object t_processosData_deposito_GAR: TDateTimeField
      FieldName = 'Data_deposito_GAR'
    end
    object t_processosNome_titulo_GAR: TStringField
      FieldName = 'Nome_titulo_GAR'
      Size = 50
    end
    object t_processosnumeros_titulos_GAR: TStringField
      FieldName = 'numeros_titulos_GAR'
      Size = 50
    end
    object t_processosNome_seguradora_GAR: TStringField
      FieldName = 'Nome_seguradora_GAR'
      Size = 50
    end
    object t_processosapolice_GAR: TStringField
      FieldName = 'apolice_GAR'
    end
    object t_processosnome_fiador_GAR: TStringField
      FieldName = 'nome_fiador_GAR'
      Size = 50
    end
    object t_processosCNPJ_fiador_GAR: TStringField
      FieldName = 'CNPJ_fiador_GAR'
      Size = 18
    end
    object t_processosendereco_fiador_GAR: TStringField
      FieldName = 'endereco_fiador_GAR'
      Size = 200
    end
    object t_processosQuantidade_LI: TFloatField
      FieldName = 'Quantidade_LI'
    end
    object t_processosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object t_processosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object t_processosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Size = 10
    end
    object t_processosResponsavel_Importador: TStringField
      FieldName = 'Responsavel_Importador'
      Size = 10
    end
    object t_processosSaldo_Faturamento: TFloatField
      FieldName = 'Saldo_Faturamento'
    end
    object t_processosNR_DECL_IMP_MICROC: TStringField
      FieldName = 'NR_DECL_IMP_MICROC'
      Size = 8
    end
    object t_processosNR_DECL_IMP_PROTC: TStringField
      FieldName = 'NR_DECL_IMP_PROTC'
      Size = 10
    end
    object t_processosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      Size = 10
    end
    object t_processosDT_PROCESSAMENTOC: TStringField
      FieldName = 'DT_PROCESSAMENTOC'
      Size = 8
    end
    object t_processosDT_TRANSMISSAOC: TStringField
      FieldName = 'DT_TRANSMISSAOC'
      Size = 8
    end
    object t_processosDT_REGISTRO_DIC: TStringField
      FieldName = 'DT_REGISTRO_DIC'
      Size = 8
    end
    object t_processosDT_DESEMBARACOC: TDateTimeField
      FieldName = 'DT_DESEMBARACOC'
    end
    object t_processosDT_DISTRIBUICAOC: TDateTimeField
      FieldName = 'DT_DISTRIBUICAOC'
    end
    object t_processosCanalC: TStringField
      FieldName = 'CanalC'
      Size = 1
    end
    object t_processosFiscalC: TStringField
      FieldName = 'FiscalC'
    end
    object t_processosCOD_SITC: TStringField
      FieldName = 'COD_SITC'
      Size = 1
    end
    object t_processosData_CIC: TDateTimeField
      FieldName = 'Data_CIC'
    end
    object t_processosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object t_processosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object t_processosident_meio1: TStringField
      FieldName = 'ident_meio1'
      Size = 100
    end
    object t_processosident_meio2: TStringField
      FieldName = 'ident_meio2'
      Size = 100
    end
    object t_processosCodevento: TStringField
      FieldName = 'Codevento'
      Size = 4
    end
    object t_processosCodobs: TStringField
      FieldName = 'Codobs'
      Size = 4
    end
    object t_processosObs_especifica: TStringField
      FieldName = 'Obs_especifica'
      Size = 120
    end
    object t_processosData_ufollowup: TDateTimeField
      FieldName = 'Data_ufollowup'
    end
    object t_processosHora_ufollowup: TStringField
      FieldName = 'Hora_ufollowup'
      Size = 5
    end
    object t_processosData_liberacao: TDateTimeField
      FieldName = 'Data_liberacao'
    end
    object t_processosUrgente: TSmallintField
      FieldName = 'Urgente'
    end
    object t_processosconsolidado: TSmallintField
      FieldName = 'consolidado'
    end
    object t_processosPag_proporcional: TSmallintField
      FieldName = 'Pag_proporcional'
    end
    object t_processosTR_VAL_FOB_US: TFloatField
      FieldName = 'TR_VAL_FOB_US'
    end
    object t_processosTR_VAL_CIF_US: TFloatField
      FieldName = 'TR_VAL_CIF_US'
    end
    object t_processosTR_VAL_II: TFloatField
      FieldName = 'TR_VAL_II'
    end
    object t_processosTR_VAL_IPI: TFloatField
      FieldName = 'TR_VAL_IPI'
    end
    object t_processosDDE: TStringField
      FieldName = 'DDE'
      Size = 30
    end
    object t_processosProcesso_Adm: TStringField
      FieldName = 'Processo_Adm'
      Size = 30
    end
    object t_processosProc_Adm_Data_Entrada: TDateTimeField
      FieldName = 'Proc_Adm_Data_Entrada'
    end
    object t_processosFaturado: TSmallintField
      FieldName = 'Faturado'
    end
    object t_processosFechado: TSmallintField
      FieldName = 'Fechado'
    end
    object t_processosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 4
    end
    object t_processosProcurador2: TStringField
      FieldName = 'Procurador2'
      Size = 4
    end
    object t_processosTR_VAL_PIS: TFloatField
      FieldName = 'TR_VAL_PIS'
    end
    object t_processosTR_VAL_COFINS: TFloatField
      FieldName = 'TR_VAL_COFINS'
    end
    object t_processosRCR_LOCAL: TStringField
      FieldName = 'RCR_LOCAL'
      Size = 100
    end
    object t_processosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      Size = 10
    end
    object t_processosvinc_processo: TSmallintField
      FieldName = 'vinc_processo'
    end
    object t_processosproc_vinc: TStringField
      FieldName = 'proc_vinc'
      Size = 8
    end
    object t_processosCoordenador_Resp: TStringField
      FieldName = 'Coordenador_Resp'
      FixedChar = True
      Size = 10
    end
    object t_processosSupervisor_Resp: TStringField
      FieldName = 'Supervisor_Resp'
      FixedChar = True
      Size = 10
    end
  end
  object ds_processos: TDataSource
    DataSet = t_processos
    Left = 148
    Top = 128
  end
  object ds_usuarios: TDataSource
    DataSet = q_usuarios
    Left = 231
    Top = 87
  end
  object ds_resp: TDataSource
    DataSet = q_resp
    Left = 298
    Top = 104
  end
  object t_imp: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial;Importador'
    MasterSource = ds_processos
    TableName = 'Importadores'
    Left = 128
    Top = 56
  end
  object q_usuarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from usuarios'
      'where Responsavel=1 AND Ativo = 1'
      'and Setor in ('#39'OPN'#39','#39'SECR'#39','#39'RECP'#39','#39'VIT'#39')')
    Left = 232
    Top = 56
  end
  object q_resp: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select * from'
      'Responsaveis_por_Importador')
    Left = 296
    Top = 56
  end
  object q_CNPJ: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select Importadores.CNPJ_CPF_COMPLETO from Processos'
      
        'Inner join Importadores on Processos.Importador = Importadores.c' +
        'odigo'
      'where Processos.Codigo = :pCodigo')
    Left = 424
    Top = 65
    ParamData = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    object q_CNPJCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
  end
  object qryCoordenador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Usuario,'
      ' Nome_Completo, ativo'
      'from'
      ' Usuarios'
      'where '
      ' Hierarquia in(2,1)'
      ' and Ativo = 1'
      ' and Usuario not in ('#39'MANUEL'#39','#39'DUDA'#39','#39'MROCHA'#39')'
      'order by'
      ' Nome_Completo')
    Left = 120
    Top = 303
    object qryCoordenadorUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object qryCoordenadorNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
  object dtsCoordenacao: TDataSource
    DataSet = qryCoordenador
    Left = 208
    Top = 271
  end
  object dtsSupervisor: TDataSource
    DataSet = qrySupervisor
    Left = 328
    Top = 248
  end
  object qrySupervisor: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' Usuario,'
      ' Nome_Completo'
      'from'
      ' Usuarios'
      'where '
      ' Hierarquia in (2,3) and Ativo = '#39'1'#39
      'order by'
      ' Nome_Completo')
    Left = 408
    Top = 240
    object qrySupervisorUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object qrySupervisorNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      FixedChar = True
      Size = 45
    end
  end
end
