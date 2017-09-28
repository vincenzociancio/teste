object frmAutorizarNumerario: TfrmAutorizarNumerario
  Left = 199
  Top = 212
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Autorização de Numerários'
  ClientHeight = 513
  ClientWidth = 765
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
    Top = 494
    Width = 765
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    Caption = 'Autorização de Numerário'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 765
    Height = 199
    Align = alClient
    Caption = ' Dados da Solicitação '
    Color = clBtnFace
    ParentColor = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 75
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
      Left = 122
      Top = 75
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object Label3: TLabel
      Left = 168
      Top = 75
      Width = 49
      Height = 13
      Caption = 'Solicitante'
    end
    object Label4: TLabel
      Left = 440
      Top = 75
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object lblCliente: TLabel
      Left = 120
      Top = 30
      Width = 38
      Height = 13
      Caption = 'Cliente: '
    end
    object Label6: TLabel
      Left = 8
      Top = 30
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
    object Label5: TLabel
      Left = 440
      Top = 30
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object edtDtSolicitacao: TMaskEdit
      Left = 8
      Top = 91
      Width = 105
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
      Left = 120
      Top = 91
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
      Left = 168
      Top = 91
      Width = 265
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object edtStatus: TEdit
      Left = 440
      Top = 91
      Width = 145
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
      Text = 'Solicitado'
    end
    object edtProcessoMS2000: TMaskEdit
      Left = 8
      Top = 47
      Width = 105
      Height = 21
      TabStop = False
      Color = clBtnFace
      EditMask = '99999/99;1;_'
      MaxLength = 8
      ReadOnly = True
      TabOrder = 4
      Text = '     /  '
    end
    object edtCliente: TEdit
      Left = 120
      Top = 47
      Width = 313
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 5
    end
    object edtCNPJ: TEdit
      Left = 440
      Top = 47
      Width = 145
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 6
    end
    object Panel1: TPanel
      Left = 592
      Top = 14
      Width = 161
      Height = 107
      BevelInner = bvRaised
      Color = clGray
      TabOrder = 7
      object Bevel2: TBevel
        Left = 8
        Top = 64
        Width = 145
        Height = 9
        Shape = bsTopLine
      end
      object btnAutorizar: TBitBtn
        Left = 8
        Top = 8
        Width = 145
        Height = 25
        Hint = 'Autorizar a solicitação'
        Caption = 'Autorizar Solicitação'
        Enabled = False
        ModalResult = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAutorizarClick
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
      object btnNaoAutorizar: TBitBtn
        Left = 8
        Top = 35
        Width = 145
        Height = 25
        Hint = 'Não autorizar a solicitação'
        Caption = 'Não Autorizar '
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnNaoAutorizarClick
        Kind = bkCancel
      end
      object btnClose: TBitBtn
        Left = 8
        Top = 72
        Width = 145
        Height = 25
        Hint = 'Fechar tela de autorização'
        Caption = 'Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Kind = bkClose
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 120
      Width = 745
      Height = 73
      Caption = ' Observação do solicitante '
      TabOrder = 8
      object mmObs: TMemo
        Left = 2
        Top = 15
        Width = 741
        Height = 56
        TabStop = False
        Align = alClient
        Lines.Strings = (
          '')
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object dbGridMain: TDBGrid
    Left = 0
    Top = 240
    Width = 765
    Height = 254
    Align = alBottom
    Color = clInfoBk
    DataSource = dtsMain
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FK_msNumero'
        Title.Caption = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Solicitacao'
        Title.Caption = 'Data da Solicitação'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora_Solicitacao'
        Title.Caption = 'Hora da Solicitação'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Solicitante'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_CPF_COMPLETO'
        Title.Caption = 'CNPJ'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Title.Caption = 'Cliente'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status_Atual'
        Title.Caption = 'Status'
        Width = 106
        Visible = True
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
      ' st.Status as '#39'Status_Atual'#39','
      ' u1.Nome_Completo as '#39'Solicitante'#39','
      ' u1.Email as '#39'EmailSolicitante'#39', '
      ' autorizador_atual,'
      ' i.Razao_Social,'
      ' i.CNPJ_CPF_COMPLETO,'
      ' u2.Nome_Completo as '#39'Autorizador'#39','
      ' u2.Email as '#39'EmailAutorizador'#39','
      ' OBS_Solicitacao'
      'from'
      ' Controle_Numerarios_Solicitacao'
      ' inner join usuarios u1 on u1.Usuario = Solicitante'
      ' inner join usuarios u2 on u2.Usuario = autorizador_atual'
      ' inner join Processos p on p.Codigo = FK_MsNumero'
      ' inner join Importadores i on i.Codigo = p.Importador'
      
        ' inner join Controle_Numerarios_Status st on st.PK_Status =  Sta' +
        'tus_Atual '
      'where '
      ' autorizador_atual=:Autorizador and Status_Atual = 1'
      'order by'
      ' Data_Solicitacao desc')
    Left = 344
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Autorizador'
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
    object qryMainData_Solicitacao: TDateTimeField
      FieldName = 'Data_Solicitacao'
    end
    object qryMainHora_Solicitacao: TDateTimeField
      FieldName = 'Hora_Solicitacao'
      OnGetText = qryMainHora_SolicitacaoGetText
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
    object qryMainEmailSolicitante: TStringField
      FieldName = 'EmailSolicitante'
      FixedChar = True
      Size = 50
    end
    object qryMainautorizador_atual: TStringField
      FieldName = 'autorizador_atual'
      FixedChar = True
      Size = 30
    end
    object qryMainRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 250
    end
    object qryMainCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      OnGetText = qryMainCNPJ_CPF_COMPLETOGetText
      FixedChar = True
      Size = 14
    end
    object qryMainAutorizador: TStringField
      FieldName = 'Autorizador'
      FixedChar = True
      Size = 45
    end
    object qryMainEmailAutorizador: TStringField
      FieldName = 'EmailAutorizador'
      FixedChar = True
      Size = 50
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
  object qryGAutorizacao: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'update Controle_Numerarios_Solicitacao set Status_Atual=:Status_' +
        'Atual'
      'where PK_Solicitacao=:PK_Solicitacao')
    Left = 384
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'Status_Atual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_Solicitacao'
        ParamType = ptUnknown
      end>
  end
  object qryNaoAutorizar: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'update Controle_Numerarios_Solicitacao '
      'set '
      'Status_Atual=:Status_Atual,'
      'OBS_NaoAutorizado=:OBS_NaoAutorizado'
      'where PK_Solicitacao=:PK_Solicitacao')
    Left = 520
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'Status_Atual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBS_NaoAutorizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PK_Solicitacao'
        ParamType = ptUnknown
      end>
  end
  object qryGravaMovimento: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'insert into Controle_Numerarios_Movimentos '
      
        '(FK_Solicitacao,Data_Movimento,Hora_Movimento,[Status],Autorizad' +
        'or)'
      'values'
      
        ' (:FK_Solicitacao,GETDATE(),Convert(Time, GETDATE()),:Status,:Au' +
        'torizador)'
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
        Name = 'Status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Autorizador'
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
end
