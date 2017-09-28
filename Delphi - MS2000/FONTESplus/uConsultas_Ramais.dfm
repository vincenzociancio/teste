object frmConsultas_Ramais: TfrmConsultas_Ramais
  Left = 128
  Top = 95
  ActiveControl = edtFuncionario
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Ramais'
  ClientHeight = 507
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 488
    Width = 853
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 29
      Width = 57
      Height = 13
      Caption = 'Colaborador'
    end
    object btnLocalizar: TBitBtn
      Left = 400
      Top = 24
      Width = 105
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = btnLocalizarClick
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
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 851
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'Localizar '
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object edtFuncionario: TEdit
      Left = 80
      Top = 26
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = btnLocalizarClick
    end
    object StaticText2: TStaticText
      Left = 1
      Top = 55
      Width = 851
      Height = 17
      Align = alBottom
      Alignment = taCenter
      Caption = 'Ramais'
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 512
      Top = 24
      Width = 105
      Height = 25
      Caption = 'Exportar'
      TabOrder = 4
      Visible = False
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 97
    Width = 853
    Height = 350
    Align = alClient
    ColCount = 1
    Color = clWhite
    DataSource = dtsUsuario
    PanelHeight = 29
    PanelWidth = 837
    ParentColor = False
    TabOrder = 2
    RowCount = 12
    SelectedColor = clGray
    object Bevel2: TBevel
      Left = 208
      Top = 0
      Width = 9
      Height = 29
      Shape = bsLeftLine
    end
    object Bevel3: TBevel
      Left = 278
      Top = 0
      Width = 9
      Height = 29
      Shape = bsLeftLine
    end
    object Bevel6: TBevel
      Left = 480
      Top = 0
      Width = 9
      Height = 29
      Shape = bsLeftLine
    end
    object Bevel8: TBevel
      Left = 715
      Top = 0
      Width = 9
      Height = 29
      Shape = bsLeftLine
    end
    object DBEdit1: TDBEdit
      Left = 283
      Top = 4
      Width = 195
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'descricao'
      DataSource = dtsUsuario
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 4
      Top = 4
      Width = 202
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      DataField = 'Nome_Completo'
      DataSource = dtsUsuario
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 213
      Top = 4
      Width = 63
      Height = 21
      AutoSize = False
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'Ramal'
      DataSource = dtsUsuario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnChange = DBEdit3Change
    end
    object DBEdit4: TDBEdit
      Left = 485
      Top = 4
      Width = 228
      Height = 21
      BorderStyle = bsNone
      DataField = 'Email'
      DataSource = dtsUsuario
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 720
      Top = 4
      Width = 113
      Height = 21
      BorderStyle = bsNone
      DataField = 'Celular'
      DataSource = dtsUsuario
      ReadOnly = True
      TabOrder = 4
    end
  end
  object pnlB: TPanel
    Left = 0
    Top = 447
    Width = 853
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn2: TBitBtn
      Left = 736
      Top = 8
      Width = 105
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 853
    Height = 24
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 4
    object Label2: TLabel
      Left = 8
      Top = 5
      Width = 57
      Height = 13
      Caption = 'Colaborador'
    end
    object Label4: TLabel
      Left = 231
      Top = 5
      Width = 30
      Height = 13
      Caption = 'Ramal'
      FocusControl = DBEdit3
    end
    object Bevel1: TBevel
      Left = 278
      Top = 0
      Width = 9
      Height = 24
      Shape = bsLeftLine
    end
    object Bevel4: TBevel
      Left = 208
      Top = 0
      Width = 9
      Height = 24
      Shape = bsLeftLine
    end
    object Label3: TLabel
      Left = 288
      Top = 5
      Width = 25
      Height = 13
      Caption = 'Setor'
    end
    object Bevel5: TBevel
      Left = 480
      Top = 0
      Width = 9
      Height = 24
      Shape = bsLeftLine
    end
    object Label5: TLabel
      Left = 488
      Top = 5
      Width = 25
      Height = 13
      Caption = 'Email'
    end
    object Label6: TLabel
      Left = 720
      Top = 5
      Width = 32
      Height = 13
      Caption = 'Celular'
      FocusControl = DBEdit5
    end
    object Bevel7: TBevel
      Left = 715
      Top = 0
      Width = 9
      Height = 24
      Shape = bsLeftLine
    end
  end
  object qryUsuario: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT '
      ' descricao'
      ' ,Nome_Completo'
      ' ,Ramal'
      ' ,Email'
      ' ,Celular'
      'FROM '
      '  Usuarios'
      'left join '
      '  Setores on ( codigo = Setor )'
      'where '
      ' Ativo = 1'
      'order by'
      '  Nome_Completo')
    Left = 296
    Top = 160
    object qryUsuariodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'DBNMSCOMEX.Setores.descricao'
      FixedChar = True
      Size = 50
    end
    object qryUsuarioNome_Completo: TStringField
      FieldName = 'Nome_Completo'
      Origin = 'DBNMSCOMEX.Usuarios.Nome_Completo'
      FixedChar = True
      Size = 45
    end
    object qryUsuarioRamal: TStringField
      Alignment = taCenter
      FieldName = 'Ramal'
      Origin = 'DBNMSCOMEX.Usuarios.Ramal'
      FixedChar = True
      Size = 10
    end
    object qryUsuarioEmail: TStringField
      FieldName = 'Email'
      Origin = 'DBNMSCOMEX.Usuarios.Email'
      FixedChar = True
      Size = 50
    end
    object qryUsuarioCelular: TStringField
      FieldName = 'Celular'
      Origin = 'DBNMSCOMEX.Usuarios.Celular'
      FixedChar = True
      Size = 10
    end
  end
  object dtsUsuario: TDataSource
    DataSet = qryUsuario
    Left = 336
    Top = 161
  end
end
