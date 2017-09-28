object f_controletracla: Tf_controletracla
  Left = 1
  Top = 49
  Width = 796
  Height = 470
  AutoSize = True
  Caption = 'Controle de Traduções e Classificações'
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
  PixelsPerInch = 96
  TextHeight = 13
  object gb_filtro: TGroupBox
    Left = 0
    Top = 0
    Width = 787
    Height = 77
    Caption = '> Filtros <'
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 10
      Top = 15
      Width = 40
      Height = 13
      Caption = 'Cliente'
    end
    object Label4: TLabel
      Left = 11
      Top = 37
      Width = 61
      Height = 13
      Caption = 'Fabricante'
    end
    object Label6: TLabel
      Left = 288
      Top = 56
      Width = 71
      Height = 13
      Caption = 'Part Number'
    end
    object Label7: TLabel
      Left = 562
      Top = 57
      Width = 28
      Height = 13
      Caption = 'NCM'
    end
    object Label8: TLabel
      Left = 288
      Top = 18
      Width = 119
      Height = 13
      Caption = 'Descrição Português'
    end
    object Label9: TLabel
      Left = 311
      Top = 37
      Width = 96
      Height = 13
      Caption = 'Descrição Inglês'
    end
    object Label1: TLabel
      Left = 11
      Top = 58
      Width = 40
      Height = 13
      Caption = 'Código'
    end
    object edt_fabricante: TEdit
      Left = 75
      Top = 29
      Width = 207
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object edt_port: TEdit
      Left = 409
      Top = 10
      Width = 258
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object edt_ing: TEdit
      Left = 409
      Top = 30
      Width = 258
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object B_FILTRAR: TBitBtn
      Left = 695
      Top = 46
      Width = 78
      Height = 25
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = B_FILTRARClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
        330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
        830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
        F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
    end
    object edt_part: TEdit
      Left = 361
      Top = 52
      Width = 195
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edt_ncm: TEdit
      Left = 595
      Top = 51
      Width = 72
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edt_importador: TEdit
      Left = 75
      Top = 8
      Width = 207
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cb_naorevisados: TCheckBox
      Left = 669
      Top = 9
      Width = 116
      Height = 17
      Caption = 'NÃO Revisados'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object edt_cod: TEdit
      Left = 75
      Top = 51
      Width = 207
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 77
    Width = 788
    Height = 366
    Color = clNavy
    TabOrder = 1
    object l_reg: TLabel
      Left = 1
      Top = 1
      Width = 786
      Height = 13
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbg_itens: TDBGrid
      Left = 1
      Top = 16
      Width = 782
      Height = 225
      Hint = 'Duplo clique abre o item no cadastro de produtos'
      Color = clWhite
      DataSource = ds_qitens
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbg_itensDrawColumnCell
      OnDblClick = dbg_itensDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cod_imp'
          Title.Caption = 'Cod.I'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Importador'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_fab'
          Title.Caption = 'Cod.F'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fabricante'
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Código'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PART_NUMBER'
          Title.Caption = 'Part Number'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desc'
          Title.Caption = 'Descrição'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desci'
          Title.Caption = 'Descrição Inglês'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Destaque_NCM'
          Title.Caption = 'Destaque NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NALADI'
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 243
      Width = 789
      Height = 119
      Caption = '> Detalhes da Revisão - Cadastro de Produtos <'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label18: TLabel
        Left = 384
        Top = 15
        Width = 28
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit3
        Visible = False
      end
      object Label20: TLabel
        Left = 530
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Usuário'
        FocusControl = DBEdit4
        Visible = False
      end
      object Label21: TLabel
        Left = 7
        Top = 16
        Width = 75
        Height = 13
        Caption = 'Observações'
        FocusControl = DBM_obs2
      end
      object DBEdit3: TDBEdit
        Left = 415
        Top = 8
        Width = 112
        Height = 21
        DataField = 'Revisao_Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Visible = False
      end
      object DBEdit4: TDBEdit
        Left = 578
        Top = 8
        Width = 113
        Height = 21
        DataField = 'Revisao_Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Visible = False
      end
      object DBM_obs2: TDBMemo
        Left = 8
        Top = 30
        Width = 769
        Height = 84
        DataField = 'Revisao_OBS'
        DataSource = ds_qitens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object bb2: TBitBtn
        Left = 699
        Top = 9
        Width = 78
        Height = 20
        Caption = 'Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = bb2Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          00FFFFFFFFFFFFF4EC0FFFFFFFFFFF4ECC0FF000000004ECC0FF733333334ECC
          330F7FB870078CC3B30F7F878E80733B830F7F7FE8E803B8B30F7F7EFE8E038B
          830F7F7FEFE807B8B30F7F87FEF07B8B830F7FB87707B8B8B30F7FFFFFFFFFFF
          F30F78B8B8B8777777FFF78B8B87FFFFFFFFFF77777FFFFFFFFF}
      end
      object e_revisado: TEdit
        Left = 288
        Top = 8
        Width = 405
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Memo1: TMemo
        Left = 240
        Top = 13
        Width = 289
        Height = 44
        Lines.Strings = (
          '')
        TabOrder = 5
        Visible = False
      end
    end
  end
  object q_itens: TQuery
    AfterScroll = q_itensAfterScroll
    AutoRefresh = True
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT top 1000 Produtosnew.Importador as cod_imp, Produtosnew.F' +
        'abricante as cod_fab, Produtosnew.REG, Produtosnew.CODIGO, Produ' +
        'tosnew.PART_NUMBER, cast([Descricao] as varchar) AS [desc], cast' +
        '([Descricao_ing] as varchar) AS desci, '
      
        'Produtosnew.NCM, Produtosnew.Destaque_NCM, Produtosnew.NALADI, P' +
        'rodutosnew.Unidade, Produtosnew.Unidade_Medida_Estat, Produtosne' +
        'w.DATA_INCLUSAO, Produtosnew.Usuario_INCLUSAO, Produtosnew.DATA_' +
        'ULTIMA_ALTERACAO, '
      
        'Produtosnew.Usuario_ALTERACAO, Produtosnew.Revisado, Produtosnew' +
        '.Revisao_Data, Produtosnew.Revisao_Usuario, Produtosnew.Revisao_' +
        'OBS, Importadores.Razao_Social AS Importador, Fabricantes_Produt' +
        'ores.Razao_Social AS Fabricante'
      
        'FROM (Produtosnew LEFT JOIN Importadores ON Produtosnew.Importad' +
        'or = Importadores.Codigo) LEFT JOIN Fabricantes_Produtores ON Pr' +
        'odutosnew.Fabricante = Fabricantes_Produtores.Codigo'
      
        'WHERE (((Produtosnew.CODIGO) Like :cod) AND ((Produtosnew.PART_N' +
        'UMBER) Like :par) AND ((cast([Descricao] as varchar)) Like :desc' +
        ') AND ((cast([Descricao_ing] as varchar)) Like :desci) AND ((Pro' +
        'dutosnew.NCM) Like :ncm)  '
      
        'AND ((Produtosnew.Revisado) Like :rev) AND ((Importadores.Razao_' +
        'Social) Like :imp) AND ((Fabricantes_Produtores.Razao_Social) Li' +
        'ke :fab));')
    Left = 245
    Top = 137
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'par'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'desci'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'ncm'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftInteger
        Name = 'rev'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'imp'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'fab'
        ParamType = ptUnknown
        Value = '*'
      end>
    object q_itenscod_imp: TStringField
      FieldName = 'cod_imp'
      FixedChar = True
      Size = 4
    end
    object q_itenscod_fab: TStringField
      FieldName = 'cod_fab'
      FixedChar = True
      Size = 6
    end
    object q_itensREG: TAutoIncField
      FieldName = 'REG'
    end
    object q_itensCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 25
    end
    object q_itensPART_NUMBER: TStringField
      FieldName = 'PART_NUMBER'
      FixedChar = True
      Size = 25
    end
    object q_itensdesc: TStringField
      FieldName = 'desc'
      FixedChar = True
      Size = 30
    end
    object q_itensdesci: TStringField
      FieldName = 'desci'
      FixedChar = True
      Size = 30
    end
    object q_itensNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object q_itensDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object q_itensNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object q_itensUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object q_itensUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object q_itensDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
    end
    object q_itensUsuario_INCLUSAO: TStringField
      FieldName = 'Usuario_INCLUSAO'
      FixedChar = True
      Size = 10
    end
    object q_itensDATA_ULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
    end
    object q_itensUsuario_ALTERACAO: TStringField
      FieldName = 'Usuario_ALTERACAO'
      FixedChar = True
      Size = 10
    end
    object q_itensRevisado: TIntegerField
      FieldName = 'Revisado'
    end
    object q_itensRevisao_Data: TDateTimeField
      FieldName = 'Revisao_Data'
    end
    object q_itensRevisao_Usuario: TStringField
      FieldName = 'Revisao_Usuario'
      FixedChar = True
      Size = 10
    end
    object q_itensRevisao_OBS: TMemoField
      FieldName = 'Revisao_OBS'
      BlobType = ftMemo
    end
    object q_itensImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 60
    end
    object q_itensFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 60
    end
  end
  object ds_qitens: TDataSource
    DataSet = q_itens
    Left = 253
    Top = 153
  end
  object q_itensup: TQuery
    AfterScroll = q_itensAfterScroll
    AutoRefresh = True
    DatabaseName = 'DBNMSCOMEX'
    Left = 309
    Top = 161
    object StringField1: TStringField
      FieldName = 'cod_imp'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'cod_fab'
      FixedChar = True
      Size = 6
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'REG'
    end
    object StringField3: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 25
    end
    object StringField4: TStringField
      FieldName = 'PART_NUMBER'
      FixedChar = True
      Size = 25
    end
    object StringField5: TStringField
      FieldName = 'desc'
      FixedChar = True
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'desci'
      FixedChar = True
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object StringField8: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object StringField9: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object StringField10: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
    end
    object StringField12: TStringField
      FieldName = 'Usuario_INCLUSAO'
      FixedChar = True
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
    end
    object StringField13: TStringField
      FieldName = 'Usuario_ALTERACAO'
      FixedChar = True
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'Revisado'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'Revisao_Data'
    end
    object StringField14: TStringField
      FieldName = 'Revisao_Usuario'
      FixedChar = True
      Size = 10
    end
    object MemoField1: TMemoField
      FieldName = 'Revisao_OBS'
      BlobType = ftMemo
    end
    object StringField15: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 60
    end
    object StringField16: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 60
    end
  end
end
