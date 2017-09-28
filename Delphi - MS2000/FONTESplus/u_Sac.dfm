object frmSac: TfrmSac
  Left = 367
  Top = 179
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = ' Gerenciamento do SAC'
  ClientHeight = 412
  ClientWidth = 969
  Color = 10514464
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 73
    Align = alTop
    Color = 10514464
    TabOrder = 0
    object Label1: TLabel
      Left = 336
      Top = 24
      Width = 296
      Height = 32
      Caption = ' Gerenciamento do SAC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dbgSac: TDBGrid
    Left = 0
    Top = 72
    Width = 969
    Height = 341
    DataSource = dsSac
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comentarios'
        Width = 413
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Assunto'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Foco'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Sac'
        Title.Caption = 'Data'
        Width = 108
        Visible = True
      end>
  end
  object dsSac: TDataSource
    DataSet = qrSac
    Left = 352
    Top = 168
  end
  object qrSac: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      ''
      
        'select  S.Foco,S.Assunto,S.Comentarios,S.Data_Sac,SU.Nome,SU.Ema' +
        'il '
      'from SAC as S inner join Sac_User as SU on S.Fk_User = SU.Pin'
      'Order by Data_Sac'
      '')
    Left = 448
    Top = 184
    object qrSacFoco: TStringField
      FieldName = 'Foco'
      FixedChar = True
      Size = 45
    end
    object qrSacAssunto: TStringField
      FieldName = 'Assunto'
      FixedChar = True
      Size = 45
    end
    object qrSacComentarios: TStringField
      FieldName = 'Comentarios'
      FixedChar = True
      Size = 255
    end
    object qrSacData_Sac: TStringField
      FieldName = 'Data_Sac'
      FixedChar = True
    end
    object qrSacNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 100
    end
    object qrSacEmail: TStringField
      FieldName = 'Email'
      FixedChar = True
      Size = 200
    end
  end
end
