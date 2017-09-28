object f_TELEFONIA: Tf_TELEFONIA
  Left = 1
  Top = 42
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Controle de Pontos de Telefonia'
  ClientHeight = 491
  ClientWidth = 804
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
    Top = 0
    Width = 804
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Pontos de Telefonia'
    Color = clOlive
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlPrinc: TPanel
    Left = 0
    Top = 25
    Width = 804
    Height = 466
    Align = alClient
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 8
    Color = 10514464
    TabOrder = 1
    object pnlMenu: TPanel
      Left = 8
      Top = 413
      Width = 788
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object sb_loc: TSpeedButton
        Left = 104
        Top = 17
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
          330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
          830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
          F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
        OnClick = sb_locClick
      end
      object Label3: TLabel
        Left = 7
        Top = 0
        Width = 83
        Height = 13
        Caption = 'Localizar PONTO'
      end
      object btnIncluir: TBitBtn
        Left = 216
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Incluir Transmittal'
        Caption = 'Incluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnIncluirClick
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
      object btnSalvar: TBitBtn
        Left = 320
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Salvar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnSalvarClick
        Kind = bkOK
      end
      object btnCancelar: TBitBtn
        Left = 400
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnCancelarClick
        Kind = bkRetry
      end
      object btnSair: TBitBtn
        Left = 792
        Top = 13
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnSairClick
        Kind = bkClose
      end
      object btnexcluir: TBitBtn
        Left = 501
        Top = 14
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnexcluirClick
        Kind = bkCancel
      end
      object me_loc: TMaskEdit
        Left = 7
        Top = 15
        Width = 94
        Height = 21
        TabOrder = 5
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 8
      Width = 788
      Height = 405
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object dbG_papeis: TDBGrid
        Left = 1
        Top = 0
        Width = 872
        Height = 240
        Hint = 'Duplo Clique - Fecha Movimento'
        DataSource = ds_qIPS
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'PONTO'
            Title.Caption = 'Ponto'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QSET'
            Title.Caption = 'Setor'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUSU'
            Title.Caption = 'Usuário'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE-RAMAL'
            Title.Caption = 'Tel/Ramal'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'POSICAO-CENTRAL'
            Title.Caption = 'Pos.Central'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID01'
            Title.Caption = 'Id01'
            Width = 174
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID01-BLOCO'
            Title.Caption = 'Id01-Bloco'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID01-PAR'
            Title.Caption = 'Id01-Par'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID02'
            Title.Caption = 'Id02'
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID02-PORTA'
            Title.Caption = 'Id02-Porta'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 293
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALHES'
            Width = 275
            Visible = True
          end>
      end
      object paneledt: TPanel
        Left = 2
        Top = 242
        Width = 871
        Height = 160
        TabOrder = 1
        object Label1: TLabel
          Left = 6
          Top = 5
          Width = 28
          Height = 13
          Caption = 'Ponto'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 649
          Top = 5
          Width = 50
          Height = 13
          Caption = 'Tel/Ramal'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 373
          Top = 5
          Width = 36
          Height = 13
          Caption = 'Usuário'
        end
        object Label6: TLabel
          Left = 73
          Top = 5
          Width = 25
          Height = 13
          Caption = 'Setor'
        end
        object Label7: TLabel
          Left = 741
          Top = 5
          Width = 54
          Height = 13
          Caption = 'Pos.Central'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 6
          Top = 44
          Width = 23
          Height = 13
          Caption = 'ID01'
        end
        object Label9: TLabel
          Left = 289
          Top = 44
          Width = 62
          Height = 13
          Caption = 'ID01-BLOCO'
          FocusControl = DBEdit7
        end
        object Label10: TLabel
          Left = 361
          Top = 44
          Width = 48
          Height = 13
          Caption = 'ID01-PAR'
          FocusControl = DBEdit8
        end
        object Label11: TLabel
          Left = 463
          Top = 44
          Width = 23
          Height = 13
          Caption = 'ID02'
        end
        object Label12: TLabel
          Left = 729
          Top = 44
          Width = 63
          Height = 13
          Caption = 'ID02-PORTA'
          FocusControl = DBEdit10
        end
        object sbLimpaMoedaFOB: TSpeedButton
          Left = 620
          Top = 20
          Width = 25
          Height = 22
          Hint = 'Limpa Usuário'
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
          OnClick = sbLimpaMoedaFOBClick
        end
        object SpeedButton1: TSpeedButton
          Left = 698
          Top = 60
          Width = 25
          Height = 22
          Hint = 'Limpa ID02'
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
        object SpeedButton2: TSpeedButton
          Left = 258
          Top = 59
          Width = 25
          Height = 22
          Hint = 'Limpa ID01'
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
        object SpeedButton3: TSpeedButton
          Left = 344
          Top = 20
          Width = 25
          Height = 22
          Hint = 'Limpa Setor'
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
          OnClick = SpeedButton3Click
        end
        object Label2: TLabel
          Left = 4
          Top = 79
          Width = 48
          Height = 13
          Caption = 'Descrição'
          FocusControl = DBEdit3
        end
        object Label13: TLabel
          Left = 4
          Top = 119
          Width = 42
          Height = 13
          Caption = 'Detalhes'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 6
          Top = 21
          Width = 64
          Height = 21
          DataField = 'PONTO'
          DataSource = ds_tPONTOS
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 649
          Top = 21
          Width = 89
          Height = 21
          DataField = 'TELEFONE_RAMAL'
          DataSource = ds_tPONTOS
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 741
          Top = 21
          Width = 54
          Height = 21
          DataField = 'POSICAO_CENTRAL'
          DataSource = ds_tPONTOS
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 289
          Top = 60
          Width = 64
          Height = 21
          DataField = 'ID01_BLOCO'
          DataSource = ds_tPONTOS
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 361
          Top = 60
          Width = 64
          Height = 21
          DataField = 'ID01_PAR'
          DataSource = ds_tPONTOS
          TabOrder = 7
        end
        object DBEdit10: TDBEdit
          Left = 727
          Top = 60
          Width = 64
          Height = 21
          DataField = 'ID02_PORTA'
          DataSource = ds_tPONTOS
          TabOrder = 9
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 460
          Top = 60
          Width = 234
          Height = 21
          DataField = 'ID02'
          DataSource = ds_tPONTOS
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DS_ID02
          TabOrder = 8
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 3
          Top = 60
          Width = 251
          Height = 21
          DataField = 'ID01'
          DataSource = ds_tPONTOS
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DS_QID01
          TabOrder = 5
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 69
          Top = 21
          Width = 273
          Height = 21
          DataField = 'Setor'
          DataSource = ds_tPONTOS
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = ds_qsetores
          TabOrder = 1
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 371
          Top = 21
          Width = 246
          Height = 21
          DataField = 'Usuario'
          DataSource = ds_tPONTOS
          KeyField = 'Usuario'
          ListField = 'Nome_Completo'
          ListSource = DS_QUSU
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 4
          Top = 95
          Width = 625
          Height = 21
          DataField = 'Descricao'
          DataSource = ds_tPONTOS
          TabOrder = 10
        end
        object DBEdit4: TDBEdit
          Left = 4
          Top = 135
          Width = 625
          Height = 21
          DataField = 'DetalheS'
          DataSource = ds_tPONTOS
          TabOrder = 11
        end
      end
    end
  end
  object q_PONTOS: TQuery
    AfterScroll = q_PONTOSAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT CON.PONTO, CON.TELEFONE_RAMAL, CON.POSICAO_CENTRAL, USU.N' +
        'ome_Completo AS QUSU, [SET].descricao AS QSET, ID01.descricao AS' +
        ' ID01, CON.ID01_BLOCO, CON.ID01_PAR, ID02.descricao AS ID02, CON' +
        '.ID02_PORTA, CON.DESCRICAO, CON.DETALHES'
      
        'FROM (((Controle_Rede_Telefonia AS CON LEFT JOIN Controle_Rede_T' +
        'elefonia_ID01 AS ID01 ON CON.ID01 = ID01.codigo) LEFT JOIN Setor' +
        'es AS [SET] ON CON.Setor = [SET].codigo) LEFT JOIN Controle_Rede' +
        '_Telefonia_ID02 AS ID02 ON CON.ID02 = ID02.codigo) LEFT JOIN Usu' +
        'arios AS USU ON CON.Usuario = USU.Usuario'
      'ORDER BY CON.PONTO;')
    Left = 176
    Top = 97
    object q_PONTOSPONTO: TStringField
      FieldName = 'PONTO'
      FixedChar = True
      Size = 10
    end
    object q_PONTOSTELEFONE_RAMAL: TStringField
      FieldName = 'TELEFONE_RAMAL'
      FixedChar = True
      Size = 50
    end
    object q_PONTOSPOSICAO_CENTRAL: TSmallintField
      FieldName = 'POSICAO_CENTRAL'
    end
    object q_PONTOSQUSU: TStringField
      FieldName = 'QUSU'
      FixedChar = True
      Size = 45
    end
    object q_PONTOSQSET: TStringField
      FieldName = 'QSET'
      FixedChar = True
      Size = 50
    end
    object q_PONTOSID01: TStringField
      FieldName = 'ID01'
      FixedChar = True
      Size = 50
    end
    object q_PONTOSID01_BLOCO: TSmallintField
      FieldName = 'ID01_BLOCO'
    end
    object q_PONTOSID01_PAR: TSmallintField
      FieldName = 'ID01_PAR'
    end
    object q_PONTOSID02: TStringField
      FieldName = 'ID02'
      FixedChar = True
      Size = 50
    end
    object q_PONTOSID02_PORTA: TSmallintField
      FieldName = 'ID02_PORTA'
    end
    object q_PONTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 255
    end
    object q_PONTOSDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 255
    end
  end
  object ds_qIPS: TDataSource
    DataSet = q_PONTOS
    Left = 192
    Top = 112
  end
  object t_PONTOS: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'PONTO'
    TableName = 'Controle_Rede_Telefonia'
    Left = 232
    Top = 89
    object t_PONTOSPONTO: TStringField
      FieldName = 'PONTO'
      FixedChar = True
      Size = 10
    end
    object t_PONTOSSetor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object t_PONTOSUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object t_PONTOSTELEFONE_RAMAL: TStringField
      FieldName = 'TELEFONE_RAMAL'
      FixedChar = True
      Size = 50
    end
    object t_PONTOSPOSICAO_CENTRAL: TSmallintField
      FieldName = 'POSICAO_CENTRAL'
    end
    object t_PONTOSID01: TStringField
      FieldName = 'ID01'
      FixedChar = True
    end
    object t_PONTOSID01_BLOCO: TSmallintField
      FieldName = 'ID01_BLOCO'
    end
    object t_PONTOSID01_PAR: TSmallintField
      FieldName = 'ID01_PAR'
    end
    object t_PONTOSID02: TStringField
      FieldName = 'ID02'
      FixedChar = True
    end
    object t_PONTOSID02_PORTA: TSmallintField
      FieldName = 'ID02_PORTA'
    end
    object t_PONTOSDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 255
    end
    object t_PONTOSDetalheS: TStringField
      FieldName = 'DetalheS'
      FixedChar = True
      Size = 255
    end
  end
  object ds_tPONTOS: TDataSource
    DataSet = t_PONTOS
    Left = 240
    Top = 104
  end
  object q_setores: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Setores.codigo, Setores.descricao'
      'FROM Setores'
      'ORDER BY Setores.descricao;')
    Left = 328
    Top = 113
    object q_setorescodigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Setores.codigo'
      FixedChar = True
      Size = 4
    end
    object q_setoresdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Setores.descricao'
      FixedChar = True
      Size = 50
    end
  end
  object ds_qsetores: TDataSource
    DataSet = q_setores
    Left = 344
    Top = 128
  end
  object t_PONTOS2: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'PONTO'
    TableName = 'Controle_Rede_Telefonia'
    Left = 416
    Top = 97
    object t_PONTOS2PONTO: TStringField
      FieldName = 'PONTO'
      FixedChar = True
      Size = 10
    end
    object t_PONTOS2Setor: TStringField
      FieldName = 'Setor'
      FixedChar = True
      Size = 4
    end
    object t_PONTOS2Usuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object t_PONTOS2TELEFONE_RAMAL: TStringField
      FieldName = 'TELEFONE_RAMAL'
      FixedChar = True
      Size = 50
    end
    object t_PONTOS2POSICAO_CENTRAL: TSmallintField
      FieldName = 'POSICAO_CENTRAL'
    end
    object t_PONTOS2ID01: TStringField
      FieldName = 'ID01'
      FixedChar = True
    end
    object t_PONTOS2ID01_BLOCO: TSmallintField
      FieldName = 'ID01_BLOCO'
    end
    object t_PONTOS2ID01_PAR: TSmallintField
      FieldName = 'ID01_PAR'
    end
    object t_PONTOS2ID02: TStringField
      FieldName = 'ID02'
      FixedChar = True
    end
    object t_PONTOS2ID02_PORTA: TSmallintField
      FieldName = 'ID02_PORTA'
    end
    object t_PONTOS2Descricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 255
    end
    object t_PONTOS2DetalheS: TStringField
      FieldName = 'DetalheS'
      FixedChar = True
      Size = 255
    end
  end
  object q_pat: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT PAT.Plaqueta, PAT.Setor, USU.Nome_Completo AS QDESC, PAT.' +
        'Detalhe AS detalhes'
      
        'FROM (Patrimonio AS PAT LEFT JOIN Usuarios AS USU ON PAT.Usuario' +
        ' = USU.Usuario) LEFT JOIN Setores AS [set] ON PAT.Setor = [set].' +
        'codigo'
      
        'WHERE (((PAT.Plaqueta)=:qpat) AND ((PAT.Status_Patrimonio)="0"))' +
        ';')
    Left = 408
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'qpat'
        ParamType = ptUnknown
        Value = '0700'
      end>
  end
  object q_ID01: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Controle_Rede_Telefonia_ID01.codigo, Controle_Rede_Telefo' +
        'nia_ID01.descricao'
      'FROM Controle_Rede_Telefonia_ID01'
      'ORDER BY Controle_Rede_Telefonia_ID01.descricao;')
    Left = 482
    Top = 185
    object q_ID01codigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Controle_Rede_Telefonia_ID01.codigo'
      FixedChar = True
    end
    object q_ID01descricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Controle_Rede_Telefonia_ID01.descricao'
      FixedChar = True
      Size = 50
    end
  end
  object Q_ID02: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Controle_Rede_Telefonia_ID02.codigo, Controle_Rede_Telefo' +
        'nia_ID02.descricao'
      'FROM Controle_Rede_Telefonia_ID02'
      'ORDER BY Controle_Rede_Telefonia_ID02.descricao;')
    Left = 482
    Top = 217
    object Q_ID02codigo: TStringField
      FieldName = 'codigo'
      Origin = 'DBNMSCOMEX.Controle_Rede_Telefonia_ID02.codigo'
      FixedChar = True
    end
    object Q_ID02descricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Controle_Rede_Telefonia_ID02.descricao'
      FixedChar = True
      Size = 50
    end
  end
  object q_usu: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Usuarios.Usuario, Usuarios.Nome_Completo, Usuarios.Nivel'
      'FROM Usuarios'
      'WHERE (((Usuarios.Nivel)<>"X"))'
      'ORDER BY Usuarios.Nome_Completo;')
    Left = 490
    Top = 89
    object q_usuUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Usuarios.Usuario'
      FixedChar = True
      Size = 10
    end
    object q_usuNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object q_usuNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'DBNMSCOMEX.Usuarios.Nivel'
      FixedChar = True
      Size = 4
    end
  end
  object DS_ID02: TDataSource
    DataSet = Q_ID02
    Left = 514
    Top = 217
  end
  object DS_QUSU: TDataSource
    DataSet = q_usu
    Left = 530
    Top = 89
  end
  object DS_QID01: TDataSource
    DataSet = q_ID01
    Left = 514
    Top = 185
  end
  object q_up1: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'UPDATE Controle_Rede_Telefonia '
      'SET Controle_Rede_Telefonia.Setor = [usu].[setor]'
      'FROM Controle_Rede_Telefonia '
      
        'INNER JOIN Usuarios AS usu ON Controle_Rede_Telefonia.Usuario = ' +
        'usu.Usuario ')
    Left = 72
    Top = 41
  end
end
