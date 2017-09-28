object f_papeis: Tf_papeis
  Left = 39
  Top = 56
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Controle de Papéis / Impressões'
  ClientHeight = 446
  ClientWidth = 688
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
    Width = 688
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Controle de Papéis / Impressões'
    Color = clMaroon
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
    Width = 688
    Height = 421
    Align = alClient
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 8
    Color = 10514464
    TabOrder = 1
    object pnlMenu: TPanel
      Left = 8
      Top = 374
      Width = 672
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object btnIncluir: TBitBtn
        Left = 152
        Top = 12
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
        Left = 256
        Top = 12
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
      object btnimp: TBitBtn
        Left = 440
        Top = 12
        Width = 75
        Height = 25
        Hint = 'Imprimir Itens do Transmittal Selecionado'
        Caption = '&Imprimir'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Visible = False
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
      object btnSair_Item: TBitBtn
        Left = 688
        Top = 12
        Width = 75
        Height = 25
        Hint = 'Sair'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Kind = bkClose
      end
      object btnCancelar: TBitBtn
        Left = 336
        Top = 12
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnCancelarClick
        Kind = bkCancel
      end
      object btnSair: TBitBtn
        Left = 592
        Top = 11
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Transmittal'
        Caption = 'Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Kind = bkClose
      end
    end
    object Panel6: TPanel
      Left = 8
      Top = 8
      Width = 672
      Height = 366
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object dbG_papeis: TDBGrid
        Left = 0
        Top = 0
        Width = 672
        Height = 308
        Hint = 'Duplo Clique - Fecha Movimento'
        DataSource = ds_qpapel
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbG_papeisDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Data'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 245
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Debitos'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Creditos'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Impressoes'
            Title.Caption = 'Impress.'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Impressoes_Dia'
            Title.Caption = 'Imp.Dia'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fechado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Width = 69
            Visible = True
          end>
      end
      object paneledt: TPanel
        Left = 5
        Top = 317
        Width = 513
        Height = 49
        TabOrder = 1
        object Label1: TLabel
          Left = 11
          Top = 3
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label2: TLabel
          Left = 75
          Top = 3
          Width = 48
          Height = 13
          Caption = 'Descrição'
        end
        object Label3: TLabel
          Left = 316
          Top = 3
          Width = 36
          Height = 13
          Caption = 'Débitos'
        end
        object Label4: TLabel
          Left = 367
          Top = 3
          Width = 38
          Height = 13
          Caption = 'Créditos'
        end
        object Label5: TLabel
          Left = 438
          Top = 3
          Width = 53
          Height = 13
          Caption = 'Impressões'
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 17
          Width = 65
          Height = 21
          DataField = 'Data'
          DataSource = ds_tpapel
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 74
          Top = 17
          Width = 241
          Height = 21
          DataField = 'Descricao'
          DataSource = ds_tpapel
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 314
          Top = 17
          Width = 52
          Height = 21
          DataField = 'Debitos'
          DataSource = ds_tpapel
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 366
          Top = 17
          Width = 52
          Height = 21
          DataField = 'Creditos'
          DataSource = ds_tpapel
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 437
          Top = 17
          Width = 52
          Height = 21
          DataField = 'Impressoes'
          DataSource = ds_tpapel
          TabOrder = 4
        end
      end
    end
  end
  object q_papel: TQuery
    AfterScroll = q_papelAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Data, Descricao, Debitos, Creditos, Saldo, Impressoes, Im' +
        'pressoes_Dia, Fechado, Usuario FROM CONTROLE_PAPEL'
      'ORDER BY DATA')
    Left = 176
    Top = 97
    object q_papelData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Controle_Papel.Data'
    end
    object q_papelDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Controle_Papel.Descricao'
      Size = 50
    end
    object q_papelDebitos: TFloatField
      FieldName = 'Debitos'
      Origin = 'DBNMSCOMEX.Controle_Papel.Debitos'
    end
    object q_papelCreditos: TFloatField
      FieldName = 'Creditos'
      Origin = 'DBNMSCOMEX.Controle_Papel.Creditos'
    end
    object q_papelSaldo: TFloatField
      FieldName = 'Saldo'
      Origin = 'DBNMSCOMEX.Controle_Papel.Saldo'
    end
    object q_papelImpressoes: TFloatField
      FieldName = 'Impressoes'
      Origin = 'DBNMSCOMEX.Controle_Papel.Impressoes'
    end
    object q_papelImpressoes_Dia: TFloatField
      FieldName = 'Impressoes_Dia'
      Origin = 'DBNMSCOMEX.Controle_Papel.Impressoes_Dia'
    end
    object q_papelFechado: TStringField
      FieldName = 'Fechado'
      Origin = 'DBNMSCOMEX.Controle_Papel.Fechado'
      Size = 3
    end
    object q_papelUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DBNMSCOMEX.Controle_Papel.Usuario'
      Size = 10
    end
  end
  object ds_qpapel: TDataSource
    DataSet = q_papel
    Left = 192
    Top = 112
  end
  object t_papel: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Data'
    TableName = 'Controle_Papel'
    Left = 240
    Top = 97
    object t_papelData: TDateTimeField
      FieldName = 'Data'
    end
    object t_papelDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object t_papelDebitos: TFloatField
      FieldName = 'Debitos'
    end
    object t_papelCreditos: TFloatField
      FieldName = 'Creditos'
    end
    object t_papelSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object t_papelImpressoes: TFloatField
      FieldName = 'Impressoes'
    end
    object t_papelImpressoes_Dia: TFloatField
      FieldName = 'Impressoes_Dia'
    end
    object t_papelFechado: TStringField
      FieldName = 'Fechado'
      Size = 3
    end
    object t_papelUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object ds_tpapel: TDataSource
    DataSet = t_papel
    Left = 248
    Top = 112
  end
end
