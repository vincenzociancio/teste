object frmSolicitacaoNumerario: TfrmSolicitacaoNumerario
  Left = 250
  Top = 137
  ActiveControl = btnNovo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Solicitação de Autorição de Numerário'
  ClientHeight = 601
  ClientWidth = 803
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 803
    Height = 302
    Align = alClient
    Caption = ' Dados da Solicitação '
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 106
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object Label3: TLabel
      Left = 152
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Solicitante'
    end
    object Label4: TLabel
      Left = 416
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object Label5: TLabel
      Left = 8
      Top = 100
      Width = 79
      Height = 13
      Caption = 'Autorizador atual'
    end
    object Label7: TLabel
      Left = 280
      Top = 100
      Width = 69
      Height = 13
      Caption = 'Cancelado por'
    end
    object edtDtSolicitacao: TMaskEdit
      Left = 8
      Top = 72
      Width = 89
      Height = 21
      Hint = 'Data da solicitação'
      TabStop = False
      Color = clBtnFace
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      Text = '  /  /    '
    end
    object edtHora: TMaskEdit
      Left = 104
      Top = 72
      Width = 41
      Height = 21
      TabStop = False
      Color = clBtnFace
      EditMask = '!90:00;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '  :  '
    end
    object edtSolicitante: TEdit
      Left = 152
      Top = 72
      Width = 257
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object edtStatus: TEdit
      Left = 416
      Top = 72
      Width = 161
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
      Text = 'Solicitado'
    end
    object pnlMS: TPanel
      Left = 8
      Top = 19
      Width = 785
      Height = 30
      BevelOuter = bvLowered
      TabOrder = 4
      object Label6: TLabel
        Left = 8
        Top = 8
        Width = 99
        Height = 13
        Caption = 'Número do Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblCliente: TLabel
        Left = 208
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Cliente: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtProcesso: TMaskEdit
        Left = 112
        Top = 4
        Width = 73
        Height = 21
        Enabled = False
        EditMask = '99999/99;1;_'
        MaxLength = 8
        TabOrder = 0
        Text = '     /  '
        OnChange = edtProcessoChange
      end
    end
    object grbMovimento: TGroupBox
      Left = 8
      Top = 142
      Width = 617
      Height = 155
      Caption = 'Movimentações'
      TabOrder = 5
      object dbGridMovimento: TDBGrid
        Left = 2
        Top = 15
        Width = 613
        Height = 138
        Align = alClient
        Color = clInfoBk
        DataSource = dtsMovimento
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Data_Solicitacao'
            Title.Caption = 'Data'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hora_Solicitacao'
            Title.Caption = 'Hora'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Autorizador'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Validade'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Enviado_Por'
            Title.Caption = 'Enviado por'
            Width = 170
            Visible = True
          end>
      end
    end
    object edtAutorizador: TEdit
      Left = 8
      Top = 116
      Width = 265
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 6
    end
    object edtCancelPor: TEdit
      Left = 280
      Top = 116
      Width = 297
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 7
    end
    object pnlOBS: TPanel
      Left = 145
      Top = 16
      Width = 433
      Height = 233
      BevelWidth = 4
      TabOrder = 8
      Visible = False
      object mmObs: TMemo
        Left = 4
        Top = 25
        Width = 425
        Height = 204
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object pnlTituloObs: TPanel
        Left = 4
        Top = 4
        Width = 425
        Height = 21
        Align = alTop
        Alignment = taLeftJustify
        Caption = ' Observação de Cancelamento'
        Color = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object lblFechar: TLabel
          Left = 368
          Top = 4
          Width = 58
          Height = 13
          Cursor = crHandPoint
          Caption = 'x - Fechar'
          Color = clGray
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = lblFecharClick
        end
      end
    end
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    Caption = 'Solicitação de Autorização de Numerário'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 582
    Width = 803
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object dbGridMain: TDBGrid
    Left = 0
    Top = 343
    Width = 803
    Height = 239
    Align = alBottom
    DataSource = dtsMain
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PK_Solicitacao'
        Title.Caption = 'Número'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FK_msNumero'
        Title.Caption = 'Processo'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Solicitacao'
        Title.Caption = 'Data da Solicitação'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Autorizador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status_Atual'
        Title.Caption = 'Status Atual'
        Visible = True
      end>
  end
  object pnlBotao: TPanel
    Left = 632
    Top = 99
    Width = 161
    Height = 238
    BevelInner = bvRaised
    Color = clGray
    TabOrder = 4
    object Bevel1: TBevel
      Left = 8
      Top = 108
      Width = 145
      Height = 9
      Shape = bsTopLine
    end
    object Bevel2: TBevel
      Left = 8
      Top = 188
      Width = 145
      Height = 9
      Shape = bsTopLine
    end
    object btnNovo: TBitBtn
      Left = 8
      Top = 8
      Width = 145
      Height = 25
      Hint = 'Incluir uma nova solicitação'
      Caption = 'Nova Solicitação'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnNovoClick
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
    object btnGravar: TBitBtn
      Left = 8
      Top = 43
      Width = 145
      Height = 25
      Hint = 'Gravar dados da solicitação'
      Caption = 'Gravar Solicitação'
      Enabled = False
      ModalResult = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnGravarClick
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
    object btnCancel: TBitBtn
      Left = 8
      Top = 118
      Width = 145
      Height = 25
      Hint = 'Cancelar solicitação selecionada'
      Caption = 'Cancelar Solicitação'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnCancelClick
      Kind = bkCancel
    end
    object btnClose: TBitBtn
      Left = 8
      Top = 196
      Width = 145
      Height = 25
      Hint = 'Fechar tela de solicitação'
      Caption = 'Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Kind = bkClose
    end
    object btnDesistir: TBitBtn
      Left = 8
      Top = 78
      Width = 145
      Height = 25
      Caption = 'Desistir'
      Enabled = False
      TabOrder = 4
      OnClick = btnDesistirClick
      Kind = bkRetry
    end
    object ToolBar1: TToolBar
      Left = 8
      Top = 146
      Width = 151
      Height = 39
      Align = alNone
      ButtonHeight = 36
      ButtonWidth = 133
      Caption = 'ToolBar1'
      Color = clGray
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = img
      ParentColor = False
      ShowCaptions = True
      TabOrder = 5
      Transparent = True
      object ToolButton1: TToolButton
        Left = 0
        Top = 2
        Caption = '           Observações          '
        DropdownMenu = popupOBS
        ImageIndex = 0
        Style = tbsDropDown
      end
    end
  end
  object qryUsuarios: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select'
      ' Nome_Completo,'
      ' Email'
      'from'
      ' Usuarios'
      'Where '
      ' Usuario=:Usuario')
    Left = 264
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryProcessos_Importador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' p.Status, '
      ' p.tipo,'
      ' p.Responsavel_Empresa,'
      ' i.Razao_Social,'
      ' i.CNPJ_CPF_COMPLETO'
      'from '
      ' Processos p'
      ' inner join importadores i on i.codigo = p.importador '
      'where'
      ' p.Codigo=:Codigo')
    Left = 368
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    object qryProcessos_ImportadorStatus: TStringField
      FieldName = 'Status'
      Origin = 'DBNMSCOMEX.Processos.Status'
      FixedChar = True
      Size = 3
    end
    object qryProcessos_ImportadorResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      Origin = 'DBNMSCOMEX.Processos.Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object qryProcessos_ImportadorRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.importadores.Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryProcessos_ImportadorCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.importadores.CNPJ_CPF_COMPLETO'
      FixedChar = True
      Size = 14
    end
    object qryProcessos_ImportadorTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
  end
  object qryAutorizador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      '  SELECT Autorizador ='
      '   CASE'
      '      --WHEN c.Tipo = 1 THEN c.FK_Colaborador_Independente'
      
        '      WHEN (c.FK_Supervisor <> '#39#39') AND(c.FK_Supervisor<>:Auxilia' +
        'r_1)THEN c.FK_Supervisor'
      '      WHEN c.FK_Coordenador <> '#39#39' THEN c.FK_Coordenador'
      '      WHEN c.FK_Gerente <> '#39#39' THEN c.FK_Gerente'
      '   END,'
      '   Tipo ='
      '   CASE'
      '      --WHEN c.Tipo = 1 THEN '#39'SUPERVISOR'#39
      
        '      WHEN ( c.FK_Supervisor <> '#39#39' )AND(c.FK_Supervisor<>:Auxili' +
        'ar_2) THEN '#39'SUPERVISOR'#39
      '      WHEN c.FK_Coordenador <> '#39#39' THEN '#39'COORDENADOR'#39
      '      WHEN c.FK_Gerente <> '#39#39' THEN '#39'GERENTE'#39
      '   END'
      'FROM '
      ' Controle_Hierarquico_Colaborador_Cel cc'
      
        ' inner join Controle_Hierarquico_Celulas c on c.PK_Celula = cc.F' +
        'K_Celula'
      'where'
      ' c.Excluido = 0 '
      ' and cc.FK_Colaborador =:Usuario')
    Left = 448
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Auxiliar_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Auxiliar_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object qryGSolicitacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_Numerarios_Solicitacao'
      '(FK_MsNumero'
      ' ,Data_Solicitacao'
      ' ,Hora_Solicitacao'
      ' ,Solicitante'
      ' ,Autorizador_Atual'
      ' ,Status_Atual'
      ' ,OBS_Solicitacao'
      ' ,Tipo)'
      'values'
      '(:FK_MsNumero'
      ' ,GETDATE()'
      ' ,Convert(Time, GETDATE())'
      ' ,:Solicitante'
      ' ,:Autorizador_Atual'
      ' ,:Status_Atual'
      ' ,:OBSSolicitacao'
      ' ,:Tipo)')
    Left = 512
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_MsNumero'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Solicitante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Autorizador_Atual'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Status_Atual'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'OBSSolicitacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
  end
  object qryMain: TQuery
    AfterScroll = qryMainAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' PK_Solicitacao,'
      ' FK_msNumero,'
      ' Cast(Data_Solicitacao as DateTime) as '#39'Data_Solicitacao'#39','
      ' Cast(Hora_Solicitacao as DateTime) as '#39'Hora_Solicitacao'#39', '
      ' u1.Nome_Completo as '#39'Solicitante'#39','
      ' u2.Nome_Completo as '#39'Autorizador'#39','
      ' autorizador_atual,'
      ' u3.Nome_Completo as '#39'Cancelado_por'#39
      ' ,OBS_Cancelamento'
      ' ,OBS_NaoAutorizado'
      ' ,OBS_Solicitacao'
      ' ,st.Status as '#39'Status_Atual'#39
      'from'
      ' Controle_Numerarios_Solicitacao'
      ' left join usuarios u1 on u1.Usuario = Solicitante'
      ' left join usuarios u2 on u2.Usuario = autorizador_atual'
      ' left join usuarios u3 on u3.Usuario =  Cancelado_por'
      
        ' inner join Controle_Numerarios_Status st on st.PK_status = Stat' +
        'us_Atual '
      'where '
      ' Solicitante=:Usuario '
      'order by'
      ' Data_Solicitacao desc,'
      ' Hora_Solicitacao desc')
    Left = 344
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    object qryMainPK_Solicitacao: TAutoIncField
      FieldName = 'PK_Solicitacao'
    end
    object qryMainFK_msNumero: TStringField
      FieldName = 'FK_msNumero'
      FixedChar = True
      Size = 8
    end
    object qryMainStatus_Atual: TStringField
      FieldName = 'Status_Atual'
      FixedChar = True
    end
    object qryMainSolicitante: TStringField
      FieldName = 'Solicitante'
      FixedChar = True
      Size = 45
    end
    object qryMainAutorizador: TStringField
      FieldName = 'Autorizador'
      FixedChar = True
      Size = 45
    end
    object qryMainData_Solicitacao: TDateTimeField
      FieldName = 'Data_Solicitacao'
    end
    object qryMainHora_Solicitacao: TDateTimeField
      FieldName = 'Hora_Solicitacao'
    end
    object qryMainautorizador_atual: TStringField
      FieldName = 'autorizador_atual'
      FixedChar = True
      Size = 30
    end
    object qryMainCancelado_por: TStringField
      FieldName = 'Cancelado_por'
      FixedChar = True
    end
    object qryMainOBS_Cancelamento: TStringField
      FieldName = 'OBS_Cancelamento'
      FixedChar = True
      Size = 255
    end
    object qryMainOBS_NaoAutorizado: TStringField
      FieldName = 'OBS_NaoAutorizado'
      FixedChar = True
      Size = 255
    end
    object qryMainOBS_Solicitacao: TStringField
      FieldName = 'OBS_Solicitacao'
      FixedChar = True
      Size = 255
    end
  end
  object dtsMain: TDataSource
    DataSet = qryMain
    Left = 192
    Top = 352
  end
  object qryMovimento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ' select '
      ' Cast(M.Data_Movimento as DateTime) as '#39'Data_Solicitacao'#39','
      ' Cast(M.Hora_Movimento as DateTime) as '#39'Hora_Solicitacao'#39', '
      ' u.Nome_Completo as '#39'Autorizador'#39','
      ' st.Status,'
      ' U2.Nome_Completo as '#39'Cancelado_Por'#39','
      ' M.Validade,'
      ' u3.Nome_Completo as '#39'Enviado_Por'#39
      'from'
      ' Controle_Numerarios_Movimentos M'
      ' left join usuarios u on u.Usuario = autorizador'
      ' left join usuarios u2 on u2.Usuario = M.Cancelado_Por'
      ' left join usuarios u3 on u3.Usuario = M.Enviado_Por'
      
        ' inner join Controle_Numerarios_Status st on st.PK_Status = M.St' +
        'atus'
      'where '
      ' M.FK_Solicitacao=:PK_Solicitacao '
      'order by'
      ' M.PK_Movimento')
    Left = 264
    Top = 291
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PK_Solicitacao'
        ParamType = ptUnknown
      end>
    object qryMovimentoData_Solicitacao: TDateTimeField
      FieldName = 'Data_Solicitacao'
    end
    object qryMovimentoAutorizador: TStringField
      FieldName = 'Autorizador'
      FixedChar = True
      Size = 45
    end
    object qryMovimentoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
    end
    object qryMovimentoHora_Solicitacao: TDateTimeField
      DisplayLabel = 'Hora da Solicitação'
      FieldName = 'Hora_Solicitacao'
      OnGetText = qryMovimentoHora_SolicitacaoGetText
    end
    object qryMovimentoCancelado_Por: TStringField
      FieldName = 'Cancelado_Por'
      FixedChar = True
    end
    object qryMovimentoValidade: TDateTimeField
      FieldName = 'Validade'
    end
    object qryMovimentoEnviado_Por: TStringField
      FieldName = 'Enviado_Por'
      FixedChar = True
      Size = 45
    end
  end
  object dtsMovimento: TDataSource
    DataSet = qryMovimento
    Left = 200
    Top = 243
  end
  object qryInsertMov: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'insert into Controle_Numerarios_Movimentos (FK_Solicitacao,Data_' +
        'Movimento,Hora_Movimento,Autorizador,[Status],Validade)'
      ' select top 1'
      ' PK_Solicitacao,'
      ' Data_Solicitacao,'
      ' Hora_Solicitacao,'
      ' Autorizador_Atual,'
      ' Status_Atual,'
      ' CAST(CAST(:Validade AS DATE) AS DATETIME) +'
      ' CAST(Hora_Solicitacao AS TIME) AS Validade'
      'from '
      ' Controle_Numerarios_Solicitacao'
      ' where solicitante =:solicitante'
      ' order by '
      ' PK_Solicitacao desc')
    Left = 392
    Top = 275
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Validade'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'solicitante'
        ParamType = ptUnknown
      end>
  end
  object qryCancelSolicitacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Controle_Numerarios_Solicitacao set'
      
        'Cancelado_Por=:Cancelado_Por, Status_Atual=:Status,OBS_Cancelame' +
        'nto=:OBS_Cancelamento'
      'where PK_Solicitacao=:Solicitacao')
    Left = 136
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cancelado_Por'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'OBS_Cancelamento'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Solicitacao'
        ParamType = ptUnknown
      end>
  end
  object qryCancelMovimento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_Numerarios_Movimentos '
      
        '(FK_Solicitacao,Data_Movimento,Hora_Movimento,Cancelado_Por,[Sta' +
        'tus],Autorizador)'
      'values'
      
        ' (:FK_Solicitacao,GETDATE(),Convert(Time, GETDATE()),:Cancelado_' +
        'Por,:Status,:Autorizador)'
      ''
      ' '
      ' ')
    Left = 256
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FK_Solicitacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cancelado_Por'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Autorizador'
        ParamType = ptUnknown
      end>
  end
  object qryVerificaSolicitacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select top 1'
      ' Status_Atual'
      'from'
      ' Controle_Numerarios_Solicitacao'
      'where '
      ' FK_MsNumero=:MS'
      'order by '
      ' PK_Solicitacao desc')
    Left = 480
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MS'
        ParamType = ptUnknown
      end>
  end
  object qryEmail_Auto: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ''
      'insert into Email_auto'
      ' (Programa'
      ' ,Assunto'
      ' ,Titulo'
      ' ,De'
      ' ,Para'
      ' ,CC'
      ' ,CCO'
      ' ,Body'
      ' ,Anexo'
      ' ,HTML'
      ' ,Data'
      ' ,Hora)'
      ' values'
      '(:Programa'
      ' ,:Assunto'
      ' ,:Titulo'
      ' ,:De'
      ' ,:Para'
      ' ,:CC'
      ' ,:CCO'
      ' ,:Body'
      ' ,:Anexo'
      ' ,:HTML'
      ' ,:Data'
      ' ,:Hora)')
    Left = 571
    Top = 398
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Programa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Assunto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'De'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Para'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'CC'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftMemo
        Name = 'Body'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Anexo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HTML'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Hora'
        ParamType = ptUnknown
      end>
  end
  object popupOBS: TPopupMenu
    Images = img
    Left = 400
    Top = 345
    object Solicitao1: TMenuItem
      Caption = 'Solicitação'
      OnClick = Solicitao1Click
    end
    object Cancelamento1: TMenuItem
      Caption = 'Cancelamento'
      OnClick = Cancelamento1Click
    end
    object NoAutorizao1: TMenuItem
      Caption = 'Não Autorização   '
      OnClick = NoAutorizao1Click
    end
  end
  object img: TImageList
    Left = 472
    Top = 243
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFF0000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080000000FFFF
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFF0000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000808000008080000080
      80000080800000808000008080000080800080000000FFFF0000FF000000FF00
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080000000000000FFFF00C0C0
      C00080808000000000000000000080808000C0C0C000FF000000FF0000000080
      800000FFFF000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000C0C0C0008080
      8000C0C0C000FFFF0000C0C0C0000000000080808000008080000080800000FF
      FF00C0C0C0000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000FFFF0000C0C0C000FFFF0000C0C0C000000000000080800000FFFF00C0C0
      C00000FFFF000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080000000000080808000FFFF
      000000000000FFFF0000C0C0C000FFFF00000000000000808000C0C0C00000FF
      FF00C0C0C0000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000808080000000
      0000FFFF000000000000FFFF0000C0C0C000000000008080800000FFFF00C0C0
      C00000FFFF000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000C0C0C0008080
      800000000000FFFF000000000000000000008080800000FFFF00C0C0C00000FF
      FF00C0C0C0000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080000000000000FFFF00C0C0
      C0008080800080808000000000008080800000FFFF00C0C0C00000FFFF00C0C0
      C00000FFFF000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C00000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C0008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C00000FF
      FF00C0C0C00000FFFF00C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFF3000000000000FFE1000000000000
      FFC1000000000000800300000000000000010000000000004001000000000000
      4001000000000000500100000000000048010000000000005401000000000000
      4A0100000000000040010000000000007FF90000000000000003000000000000
      80FF000000000000C1FF00000000000000000000000000000000000000000000
      000000000000}
  end
  object qryFeriados: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Feriados'
      'WHERE  Data = :data')
    Left = 648
    Top = 456
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end>
    object qryFeriadosData: TDateTimeField
      FieldName = 'Data'
      Origin = 'DBNMSCOMEX.Feriados.Data'
    end
    object qryFeriadosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Feriados.Descricao'
      FixedChar = True
      Size = 50
    end
    object qryFeriadosFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Feriados.Filial'
      FixedChar = True
      Size = 4
    end
    object qryFeriadosCodObservacao: TStringField
      FieldName = 'CodObservacao'
      Origin = 'DBNMSCOMEX.Feriados.CodObservacao'
      FixedChar = True
      Size = 4
    end
  end
end
