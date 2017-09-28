object f_clientes: Tf_clientes
  Left = 399
  Top = 246
  ActiveControl = edFiltroCliente
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Clientes - Contas Correntes '
  ClientHeight = 411
  ClientWidth = 735
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
  object p_itens: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 409
    Color = 10514464
    TabOrder = 0
    object lblImportador: TLabel
      Left = 241
      Top = 50
      Width = 4
      Height = 16
      Alignment = taCenter
      Color = 10514464
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 4
      Width = 101
      Height = 13
      Caption = 'Busca por Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 47
      Width = 726
      Height = 277
      DataSource = ds_qimportadores
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Title.Alignment = taCenter
          Title.Caption = 'CNPJ / CPF'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Title.Alignment = taCenter
          Title.Caption = 'Clientes'
          Width = 365
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ccdepdescr'
          Title.Alignment = taCenter
          Title.Caption = 'Conta Corrente para Depósito de Numerários'
          Width = 230
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 5
      Top = 327
      Width = 726
      Height = 79
      Color = clSilver
      TabOrder = 1
      object Label5: TLabel
        Left = 312
        Top = 32
        Width = 31
        Height = 13
        Caption = 'Banco'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 352
        Top = 32
        Width = 39
        Height = 13
        Caption = 'Agencia'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 400
        Top = 32
        Width = 71
        Height = 13
        Caption = 'Conta Corrente'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 8
        Top = 32
        Width = 48
        Height = 13
        Caption = 'Descrição'
        FocusControl = DBEdit4
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 724
        Height = 24
        Align = alTop
        Caption = 'Conta Corrente para Depósito de Numerários'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 312
        Top = 48
        Width = 34
        Height = 21
        DataField = 'Banco'
        DataSource = ds_contasdep
        Enabled = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 352
        Top = 48
        Width = 41
        Height = 21
        DataField = 'Agencia'
        DataSource = ds_contasdep
        Enabled = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 400
        Top = 48
        Width = 76
        Height = 21
        DataField = 'Conta_Corrente'
        DataSource = ds_contasdep
        Enabled = False
        TabOrder = 3
      end
      object btnAlterar: TBitBtn
        Left = 482
        Top = 45
        Width = 75
        Height = 25
        Hint = 'Alterar dados do Parâmetro'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
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
        Left = 569
        Top = 45
        Width = 75
        Height = 25
        Caption = '&Salvar'
        Enabled = False
        TabOrder = 5
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
        Left = 645
        Top = 45
        Width = 75
        Height = 25
        Caption = '&Cancelar'
        Enabled = False
        TabOrder = 6
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 48
        Width = 297
        Height = 21
        Enabled = False
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = ds_contasdep
        TabOrder = 7
      end
    end
    object edFiltroCliente: TEdit
      Left = 7
      Top = 19
      Width = 281
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
    object cbClientesSemConta: TCheckBox
      Left = 301
      Top = 24
      Width = 112
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Clientes s/ Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = cbClientesSemContaClick
    end
  end
  object ds_importadores: TDataSource
    DataSet = T_Importadores
    Left = 113
    Top = 166
  end
  object q_importadores: TQuery
    AfterScroll = q_importadoresAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Importadores.Empresa, Importadores.Filial, Importadores.C' +
        'odigo, Importadores.CNPJ_CPF_COMPLETO, Importadores.Razao_Social' +
        ', Contas_Correntes.Codigo AS ccdep, Contas_Correntes.Descricao A' +
        'S ccdepdescr, Contas_Correntes.Banco AS bancodep, Contas_Corrent' +
        'es.Agencia AS agenciadep, Contas_Correntes.Conta_Corrente AS con' +
        'tadep'
      
        '   FROM ((Parametros INNER JOIN Importadores ON (Parametros.Empr' +
        'esa = Importadores.Empresa) AND (Parametros.Filial = Importadore' +
        's.Filial)) LEFT JOIN Contas_Correntes ON (Importadores.Empresa =' +
        ' Contas_Correntes.Empresa) AND (Importadores.Filial = Contas_Cor' +
        'rentes.Filial) AND (Importadores.Conta_Corrente_Deposito = Conta' +
        's_Correntes.Codigo)) '
      ' ORDER BY Importadores.Razao_Social ')
    Left = 194
    Top = 106
    object q_importadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object q_importadoresFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object q_importadoresCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object q_importadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object q_importadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Size = 60
    end
    object q_importadoresccdep: TAutoIncField
      FieldName = 'ccdep'
    end
    object q_importadoresccdepdescr: TStringField
      FieldName = 'ccdepdescr'
      Size = 45
    end
    object q_importadoresbancodep: TStringField
      FieldName = 'bancodep'
      Size = 5
    end
    object q_importadoresagenciadep: TStringField
      FieldName = 'agenciadep'
      Size = 5
    end
    object q_importadorescontadep: TStringField
      FieldName = 'contadep'
      Size = 8
    end
  end
  object ds_qimportadores: TDataSource
    DataSet = q_importadores
    Left = 195
    Top = 166
  end
  object T_contasdep: TTable
    DatabaseName = 'DBNMSCOMEX'
    Filter = 'Nivel = 2'
    Filtered = True
    IndexFieldNames = 'Empresa;Filial;Codigo'
    MasterFields = 'Empresa;Filial'
    MasterSource = ds_importadores
    TableName = 'Contas_Correntes'
    Left = 32
    Top = 106
    object T_contasdepEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object T_contasdepFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object T_contasdepCodigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object T_contasdepBanco_Caixa: TStringField
      FieldName = 'Banco_Caixa'
      FixedChar = True
      Size = 1
    end
    object T_contasdepDescricao: TStringField
      FieldName = 'Descricao'
      FixedChar = True
      Size = 45
    end
    object T_contasdepBanco: TStringField
      FieldName = 'Banco'
      FixedChar = True
      Size = 5
    end
    object T_contasdepAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 5
    end
    object T_contasdepConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      FixedChar = True
      Size = 8
    end
    object T_contasdepSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object T_contasdepNivel: TStringField
      FieldName = 'Nivel'
      FixedChar = True
      Size = 4
    end
    object T_contasdepData: TDateTimeField
      FieldName = 'Data'
    end
    object T_contasdepEmpresacc: TStringField
      FieldName = 'Empresacc'
      FixedChar = True
      Size = 4
    end
    object T_contasdepFilialcc: TStringField
      FieldName = 'Filialcc'
      FixedChar = True
      Size = 4
    end
    object T_contasdepASCAA: TSmallintField
      FieldName = 'ASCAA'
    end
  end
  object ds_contasdep: TDataSource
    DataSet = T_contasdep
    Left = 34
    Top = 167
  end
  object T_Importadores: TTable
    DatabaseName = 'DBNMSCOMEX'
    IndexFieldNames = 'Empresa;Filial;Codigo'
    TableName = 'Importadores'
    Left = 112
    Top = 104
    object T_ImportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 4
    end
    object T_ImportadoresFilial: TStringField
      FieldName = 'Filial'
      Size = 4
    end
    object T_ImportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object T_ImportadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
    end
  end
end
