object frmConsultaNumerario: TfrmConsultaNumerario
  Left = 153
  Top = 169
  ActiveControl = edtProcesso
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta Solicitação de Numerários'
  ClientHeight = 575
  ClientWidth = 870
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
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 556
    Width = 870
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 41
    Align = alTop
    Caption = 'Consulta Solicitação de Numerários'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 870
    Height = 29
    Align = alTop
    TabOrder = 2
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
      EditMask = '99999/99;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '     /  '
      OnChange = edtProcessoChange
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 70
    Width = 870
    Height = 160
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 3
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 868
      Height = 16
      Align = alTop
      Caption = 'Solicitações'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 17
      Width = 868
      Height = 142
      Align = alClient
      Color = clInfoBk
      DataSource = dtsSolicitacoes
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PK_Solicitacao'
          Title.Caption = 'Nº Solicitação'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Solicitacao'
          Title.Caption = 'Data Solicitação'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hora_Solicitacao'
          Title.Caption = 'Hora Solicitação'
          Width = 88
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
          FieldName = 'Autorizador'
          Title.Caption = 'Autorizador Atual'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cancelado_por'
          Title.Caption = 'Cancelado por'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status_Atual'
          Title.Caption = 'Status Atual'
          Width = 127
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 230
    Width = 870
    Height = 326
    Align = alClient
    TabOrder = 4
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 868
      Height = 16
      Align = alTop
      Caption = 'Movimentações'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 17
      Width = 868
      Height = 308
      Align = alClient
      DataSource = dtsMovimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Data_Solicitacao'
          Title.Caption = 'Data'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Autorizador'
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hora_Solicitacao'
          Title.Caption = 'Hora'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cancelado_Por'
          Title.Caption = 'Cancelado por'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Validade'
          Title.Caption = 'Data de Validade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Enviado_Por'
          Title.Caption = 'Enviado por'
          Width = 180
          Visible = True
        end>
    end
  end
  object qryProcessos_Importador: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'select '
      ' p.Status, '
      ' p.Responsavel_Empresa,'
      ' i.Razao_Social,'
      ' i.CNPJ_CPF_COMPLETO'
      'from '
      ' Processos p'
      ' inner join importadores i on i.codigo = p.importador '
      'where'
      ' p.Codigo=:Codigo')
    Left = 440
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
  end
  object qrySolicitacoes: TQuery
    AfterScroll = qrySolicitacoesAfterScroll
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
      ' FK_msNumero=:MS'
      'order by'
      ' PK_Solicitacao')
    Left = 400
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MS'
        ParamType = ptUnknown
      end>
    object qrySolicitacoesPK_Solicitacao: TAutoIncField
      FieldName = 'PK_Solicitacao'
    end
    object qrySolicitacoesFK_msNumero: TStringField
      FieldName = 'FK_msNumero'
      FixedChar = True
      Size = 8
    end
    object qrySolicitacoesData_Solicitacao: TDateTimeField
      FieldName = 'Data_Solicitacao'
      OnGetText = qrySolicitacoesData_SolicitacaoGetText
    end
    object qrySolicitacoesHora_Solicitacao: TDateTimeField
      FieldName = 'Hora_Solicitacao'
      OnGetText = qrySolicitacoesHora_SolicitacaoGetText
    end
    object qrySolicitacoesSolicitante: TStringField
      FieldName = 'Solicitante'
      FixedChar = True
      Size = 45
    end
    object qrySolicitacoesAutorizador: TStringField
      FieldName = 'Autorizador'
      FixedChar = True
      Size = 45
    end
    object qrySolicitacoesautorizador_atual: TStringField
      FieldName = 'autorizador_atual'
      FixedChar = True
      Size = 30
    end
    object qrySolicitacoesCancelado_por: TStringField
      FieldName = 'Cancelado_por'
      FixedChar = True
      Size = 45
    end
    object qrySolicitacoesOBS_Cancelamento: TStringField
      FieldName = 'OBS_Cancelamento'
      FixedChar = True
      Size = 255
    end
    object qrySolicitacoesOBS_NaoAutorizado: TStringField
      FieldName = 'OBS_NaoAutorizado'
      FixedChar = True
      Size = 255
    end
    object qrySolicitacoesOBS_Solicitacao: TStringField
      FieldName = 'OBS_Solicitacao'
      FixedChar = True
      Size = 255
    end
    object qrySolicitacoesStatus_Atual: TStringField
      FieldName = 'Status_Atual'
      FixedChar = True
      Size = 50
    end
  end
  object dtsSolicitacoes: TDataSource
    DataSet = qrySolicitacoes
    Left = 216
    Top = 166
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
    Left = 168
    Top = 307
  end
end
