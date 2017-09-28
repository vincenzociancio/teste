object f_atosconce: Tf_atosconce
  Left = 188
  Top = 111
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Atos Concessórios'
  ClientHeight = 442
  ClientWidth = 714
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 154
    Align = alTop
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 300
      Top = 4
      Width = 48
      Height = 13
      Caption = 'Descricao'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 172
      Top = 44
      Width = 73
      Height = 13
      Caption = 'Vigencia_inicial'
    end
    object Label4: TLabel
      Left = 252
      Top = 44
      Width = 66
      Height = 13
      Caption = 'Vigencia_final'
    end
    object Label5: TLabel
      Left = 328
      Top = 44
      Width = 33
      Height = 13
      Caption = 'Moeda'
    end
    object Label6: TLabel
      Left = 172
      Top = 87
      Width = 85
      Height = 13
      Caption = 'Valor Importações'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 172
      Top = 132
      Width = 86
      Height = 13
      Caption = 'Valor Exportações'
      FocusControl = DBEdit6
    end
    object Label15: TLabel
      Left = 172
      Top = 4
      Width = 37
      Height = 13
      Caption = 'Numero'
      FocusControl = DBEdit14
    end
    object Label17: TLabel
      Left = 344
      Top = 87
      Width = 110
      Height = 13
      Caption = 'Com Cobertura Cambial'
      FocusControl = DBEdit5
    end
    object Label18: TLabel
      Left = 480
      Top = 87
      Width = 110
      Height = 13
      Caption = 'Sem Cobertura Cambial'
      FocusControl = DBEdit5
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 161
      Height = 121
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Numero'
          Title.Caption = 'Número Ato'
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 300
      Top = 20
      Width = 313
      Height = 21
      DataField = 'Descricao'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 172
      Top = 101
      Width = 133
      Height = 21
      DataField = 'Valor_imp'
      DataSource = ds_atosconce
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 268
      Top = 128
      Width = 133
      Height = 21
      DataField = 'Valor_exp'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object b_novo: TBitBtn
      Left = 632
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = b_novoClick
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
    object b_grava: TBitBtn
      Left = 632
      Top = 44
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = b_gravaClick
      Kind = bkOK
    end
    object b_exclui: TBitBtn
      Left = 632
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 12
      OnClick = b_excluiClick
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
    object b_fecha: TBitBtn
      Left = 632
      Top = 100
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = b_fechaClick
      Kind = bkCancel
    end
    object DBEdit2: TDBEdit
      Left = 172
      Top = 60
      Width = 69
      Height = 21
      DataField = 'Vigencia_inicial'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 252
      Top = 60
      Width = 69
      Height = 21
      DataField = 'Vigencia_final'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit14: TDBEdit
      Left = 172
      Top = 20
      Width = 124
      Height = 21
      DataField = 'Numero'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 328
      Top = 60
      Width = 285
      Height = 21
      DataField = 'Moeda'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = ds_moeda
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 344
      Top = 101
      Width = 133
      Height = 21
      DataField = 'Valor_impc'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 480
      Top = 101
      Width = 133
      Height = 21
      DataField = 'Valor_imps'
      DataSource = ds_atosconce
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 154
    Width = 714
    Height = 192
    Align = alTop
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 1
      Top = 1
      Width = 712
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Beneficiários / Solidários'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 124
      Width = 50
      Height = 13
      Caption = 'Importador'
    end
    object Label10: TLabel
      Left = 244
      Top = 124
      Width = 92
      Height = 13
      Caption = 'Tipo de Concessão'
    end
    object Label11: TLabel
      Left = 392
      Top = 124
      Width = 8
      Height = 13
      Caption = '%'
      FocusControl = DBEdit10
    end
    object Label12: TLabel
      Left = 12
      Top = 168
      Width = 85
      Height = 13
      Caption = 'Valor Importações'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 236
      Top = 168
      Width = 86
      Height = 13
      Caption = 'Valor Exportações'
      FocusControl = DBEdit12
    end
    object Label8: TLabel
      Left = 448
      Top = 124
      Width = 97
      Height = 13
      Caption = 'Valor Com Cobertura'
      FocusControl = DBEdit11
    end
    object Label14: TLabel
      Left = 576
      Top = 124
      Width = 97
      Height = 13
      Caption = 'Valor Sem Cobertura'
      FocusControl = DBEdit11
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 21
      Width = 712
      Height = 100
      Align = alTop
      DataSource = ds_qbenef
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DBGrid2Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'Razão Social'
          Width = 202
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Tipo de Concessão'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Percentual'
          Title.Caption = '%'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_impc'
          Title.Caption = 'Valor Com Cobertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_imps'
          Title.Caption = 'Valor Sem Cobertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_imp'
          Title.Caption = 'Valor Importações'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_exp'
          Title.Caption = 'Valor  Exportações'
          Visible = True
        end>
    end
    object DBEdit10: TDBEdit
      Left = 392
      Top = 136
      Width = 52
      Height = 21
      DataField = 'Percentual'
      DataSource = ds_atosimp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 104
      Top = 164
      Width = 125
      Height = 21
      DataField = 'Valor_imp'
      DataSource = ds_atosimp
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 336
      Top = 164
      Width = 125
      Height = 21
      DataField = 'Valor_exp'
      DataSource = ds_atosimp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 12
      Top = 136
      Width = 229
      Height = 21
      DataField = 'Importador'
      DataSource = ds_atosimp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Razao_Social'
      ListSource = ds_impor
      ParentFont = False
      TabOrder = 4
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 244
      Top = 136
      Width = 145
      Height = 21
      DataField = 'Tipo'
      DataSource = ds_atosimp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = ds_tipoato
      ParentFont = False
      TabOrder = 5
    end
    object b_novobene: TBitBtn
      Left = 472
      Top = 163
      Width = 75
      Height = 25
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = b_novobeneClick
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
    object b_gravabene: TBitBtn
      Left = 551
      Top = 163
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = b_gravabeneClick
      Kind = bkOK
    end
    object b_excluibene: TBitBtn
      Left = 629
      Top = 163
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 8
      OnClick = b_excluibeneClick
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
    object DBEdit7: TDBEdit
      Left = 448
      Top = 136
      Width = 125
      Height = 21
      DataField = 'Valor_impc'
      DataSource = ds_atosimp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit9: TDBEdit
      Left = 576
      Top = 136
      Width = 125
      Height = 21
      DataField = 'Valor_imps'
      DataSource = ds_atosimp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 346
    Width = 714
    Height = 96
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Label16: TLabel
      Left = 1
      Top = 1
      Width = 712
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Sub Contratados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid3: TDBGrid
      Left = 1
      Top = 21
      Width = 712
      Height = 70
      Align = alTop
      DataSource = ds_sub
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DBGrid2Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Title.Caption = 'CNPJ'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Caption = 'Razão Social da Empresa Sub Contratada'
          Width = 561
          Visible = True
        end>
    end
  end
  object T_parametros: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    TableName = 'Parametros'
    Left = 124
    Top = 144
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
  object T_atosconce: TTable
    AfterScroll = T_atosconceAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_parametros
    TableName = 'Atos_concessorios'
    Left = 152
    Top = 144
    object T_atosconceEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_atosconceFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_atosconceNumero: TStringField
      FieldName = 'Numero'
    end
    object T_atosconceDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object T_atosconceVigencia_inicial: TDateTimeField
      FieldName = 'Vigencia_inicial'
    end
    object T_atosconceVigencia_final: TDateTimeField
      FieldName = 'Vigencia_final'
    end
    object T_atosconceMoeda: TStringField
      FieldName = 'Moeda'
      Size = 3
    end
    object T_atosconceValor_imp: TFloatField
      FieldName = 'Valor_imp'
    end
    object T_atosconceValor_impc: TFloatField
      FieldName = 'Valor_impc'
    end
    object T_atosconceValor_imps: TFloatField
      FieldName = 'Valor_imps'
    end
    object T_atosconceValor_exp: TFloatField
      FieldName = 'Valor_exp'
    end
    object T_atosconceSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_atosconceSaldoC: TFloatField
      FieldName = 'SaldoC'
    end
    object T_atosconceSaldoS: TFloatField
      FieldName = 'SaldoS'
    end
  end
  object T_atosimp: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Numero;Importador'
    MasterFields = 'Empresa;Filial;Numero;Importador'
    MasterSource = ds_qbenef
    TableName = 'Atos_Importador'
    Left = 176
    Top = 144
    object T_atosimpEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_atosimpFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_atosimpNumero: TStringField
      FieldName = 'Numero'
    end
    object T_atosimpImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object T_atosimpTipo: TStringField
      FieldName = 'Tipo'
      Size = 4
    end
    object T_atosimpPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object T_atosimpValor_imp: TFloatField
      FieldName = 'Valor_imp'
    end
    object T_atosimpValor_impc: TFloatField
      FieldName = 'Valor_impc'
    end
    object T_atosimpValor_imps: TFloatField
      FieldName = 'Valor_imps'
    end
    object T_atosimpValor_exp: TFloatField
      FieldName = 'Valor_exp'
    end
    object T_atosimpSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object T_atotipo: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Atos_tipos_benefic'
    Left = 176
    Top = 168
    object T_atotipocodigo: TStringField
      FieldName = 'codigo'
      Size = 4
    end
    object T_atotipodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object T_impor: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Importadores'
    Left = 192
    Top = 172
    object T_imporEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object T_imporFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object T_imporCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
    object T_imporRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object T_imporPais: TStringField
      FieldName = 'Pais'
      Size = 3
    end
    object T_imporCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object T_imporCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 10
    end
    object T_imporTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Size = 1
    end
    object T_imporEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object T_imporNumero: TStringField
      FieldName = 'Numero'
      Size = 6
    end
    object T_imporComplemento: TStringField
      FieldName = 'Complemento'
      Size = 21
    end
    object T_imporBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object T_imporCidade: TStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object T_imporCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object T_imporUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object T_imporEstado: TStringField
      FieldName = 'Estado'
      Size = 25
    end
    object T_imporInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Size = 15
    end
    object T_imporBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object T_imporAgencia: TStringField
      FieldName = 'Agencia'
      Size = 5
    end
    object T_imporConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Size = 8
    end
    object T_imporConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
    end
    object T_imporConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
    object T_imporlink: TStringField
      FieldName = 'link'
      Size = 50
    end
    object T_imporCAE: TStringField
      FieldName = 'CAE'
      Size = 15
    end
    object T_imporTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object T_imporAtivo: TSmallintField
      FieldName = 'Ativo'
    end
    object T_imporAcesso_WEB_MS: TSmallintField
      FieldName = 'Acesso_WEB_MS'
    end
    object T_imporAcesso_WEB_CLI: TSmallintField
      FieldName = 'Acesso_WEB_CLI'
    end
    object T_imporAcesso_WEB_REC: TSmallintField
      FieldName = 'Acesso_WEB_REC'
    end
    object T_imporBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
    end
  end
  object ds_parametros: TDataSource
    DataSet = T_parametros
    Left = 200
    Top = 184
  end
  object ds_atosconce: TDataSource
    DataSet = T_atosconce
    Left = 208
    Top = 200
  end
  object ds_atosimp: TDataSource
    DataSet = T_atosimp
    Left = 220
    Top = 212
  end
  object ds_tipoato: TDataSource
    DataSet = T_atotipo
    Left = 232
    Top = 220
  end
  object ds_impor: TDataSource
    DataSet = T_impor
    Left = 244
    Top = 236
  end
  object t_moeda: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'CODIGO'
    TableName = 'TAB_MOEDA'
    Left = 540
    Top = 208
    object t_moedaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object t_moedaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object ds_moeda: TDataSource
    DataSet = t_moeda
    Left = 560
    Top = 228
  end
  object q_benef: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Atos_Importador.Numero, Importadores.Razao_Social, Atos_t' +
        'ipos_benefic.descricao, Atos_Importador.Percentual, Atos_Importa' +
        'dor.Valor_imp, Atos_Importador.Valor_impc, Atos_Importador.Valor' +
        '_imps, Atos_Importador.Valor_exp, Atos_Importador.Saldo, Atos_Im' +
        'portador.Filial, Atos_Importador.Empresa, Atos_Importador.Import' +
        'ador'
      
        'FROM (Parametros INNER JOIN (Atos_Importador LEFT JOIN Importado' +
        'res ON (Atos_Importador.Importador = Importadores.Codigo) AND (A' +
        'tos_Importador.Filial = Importadores.Filial) AND (Atos_Importado' +
        'r.Empresa = Importadores.Empresa)) ON (Parametros.Filial = Atos_' +
        'Importador.Filial) AND (Parametros.Empresa = Atos_Importador.Emp' +
        'resa)) LEFT JOIN Atos_tipos_benefic ON Atos_Importador.Tipo = At' +
        'os_tipos_benefic.codigo'
      'WHERE (((Atos_Importador.Numero)=:qato));')
    Left = 460
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'qato'
        ParamType = ptUnknown
        Value = '123'
      end>
    object q_benefNumero: TStringField
      FieldName = 'Numero'
    end
    object q_benefRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object q_benefdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object q_benefPercentual: TFloatField
      FieldName = 'Percentual'
    end
    object q_benefValor_imp: TFloatField
      FieldName = 'Valor_imp'
    end
    object q_benefValor_impc: TFloatField
      FieldName = 'Valor_impc'
    end
    object q_benefValor_imps: TFloatField
      FieldName = 'Valor_imps'
    end
    object q_benefValor_exp: TFloatField
      FieldName = 'Valor_exp'
    end
    object q_benefSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object q_benefFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_benefEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_benefImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
  end
  object ds_qbenef: TDataSource
    DataSet = q_benef
    Left = 472
    Top = 228
  end
  object t_sub: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Numero;Importador'
    MasterFields = 'Empresa;Filial;Numero;Importador'
    MasterSource = ds_atosimp
    TableName = 'Atos_subcontratadas'
    Left = 384
    Top = 321
    object t_subEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      Size = 4
    end
    object t_subFilial: TStringField
      FieldName = 'Filial'
      Required = True
      Size = 4
    end
    object t_subNumero: TStringField
      FieldName = 'Numero'
    end
    object t_subImportador: TStringField
      FieldName = 'Importador'
      Size = 4
    end
    object t_subCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object t_subRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 50
    end
    object t_subValor_imp: TFloatField
      FieldName = 'Valor_imp'
    end
    object t_subValor_impc: TFloatField
      FieldName = 'Valor_impc'
    end
    object t_subValor_imps: TFloatField
      FieldName = 'Valor_imps'
    end
    object t_subValor_exp: TFloatField
      FieldName = 'Valor_exp'
    end
    object t_subSaldo: TFloatField
      FieldName = 'Saldo'
    end
  end
  object ds_sub: TDataSource
    DataSet = t_sub
    Left = 416
    Top = 336
  end
end
