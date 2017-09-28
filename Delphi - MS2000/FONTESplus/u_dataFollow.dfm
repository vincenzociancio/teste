object f_dataFollow: Tf_dataFollow
  Left = 192
  Top = 107
  Width = 544
  Height = 399
  Caption = 'Gera senhas para usuários Internet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DB_MSCOMEX: TDatabase
    AliasName = 'A_MS2000'
    DatabaseName = 'DBNMSCOMEX'
    LoginPrompt = False
    SessionName = 'Default'
  end
  object t_dataFollow: TTable
    DatabaseName = 'DBNMSCOMEX'
    TableName = 'Follow_Data'
    Left = 28
    object t_dataFollowData: TDateTimeField
      FieldName = 'Data'
    end
  end
  object q_up01: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'UPDATE Parametros AS p SET p.Numerador_Processos = "00000/"+Mid(' +
        'Year(Date()),3,2), p.Numerador_Transmittal = "00000/"+Mid(Year(D' +
        'ate()),3,2), p.Numerador_Sol_Cheques = "00000/"+Mid(Year(Date())' +
        ',3,2), p.Numerador_Sol_Reg = "00000/"+Mid(Year(Date()),3,2), p.N' +
        'umerador_Sol_Tracla = "00000/"+Mid(Year(Date()),3,2)'
      
        'WHERE (((Mid([Numerador_Processos],7,2))<>Mid(Year(Date()),3,2))' +
        ');')
    Left = 88
    Top = 56
  end
end
