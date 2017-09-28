object frmATAereo: TfrmATAereo
  Left = 425
  Top = 219
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Acréscimo ICMS ATAéreo'
  ClientHeight = 148
  ClientWidth = 410
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 410
    Height = 148
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10514464
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblValorICMS: TLabel
      Left = 10
      Top = 131
      Width = 56
      Height = 13
      Caption = 'Total ICMS:'
      Visible = False
    end
    object lblFECP: TLabel
      Left = 10
      Top = 113
      Width = 33
      Height = 13
      Caption = 'FECP :'
      Visible = False
    end
    object lblICMS13: TLabel
      Left = 10
      Top = 97
      Width = 32
      Height = 13
      Caption = 'ICMS :'
      Visible = False
    end
    object btnFechar: TBitBtn
      Left = 327
      Top = 121
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Procuradores'
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnFecharClick
      Kind = bkClose
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 408
      Height = 33
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = 10514464
      TabOrder = 1
      object Label26: TLabel
        Left = 8
        Top = 10
        Width = 113
        Height = 13
        Caption = 'Digite o Nº do Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ME_nossaref: TMaskEdit
        Left = 128
        Top = 6
        Width = 65
        Height = 21
        EditMask = '!#####/##;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        Text = '     /  '
        OnChange = ME_nossarefChange
      end
    end
    object pnlConteudo: TPanel
      Left = 2
      Top = 37
      Width = 560
      Height = 57
      BevelOuter = bvNone
      BiDiMode = bdRightToLeftNoAlign
      Color = 10514464
      ParentBiDiMode = False
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 124
        Height = 13
        Caption = 'Informe o acréscimo ICMS'
      end
      object txtAcresc: TEdit
        Left = 7
        Top = 24
        Width = 121
        Height = 21
        BiDiMode = bdRightToLeftNoAlign
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object btnGravar: TBitBtn
        Left = 136
        Top = 22
        Width = 75
        Height = 25
        Hint = 'Gravar'
        Caption = '&Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnGravarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
      object optAliq: TRadioGroup
        Left = 213
        Top = 0
        Width = 187
        Height = 47
        Caption = 'Alíquota'
        Columns = 3
        ItemIndex = 2
        Items.Strings = (
          '1,5%'
          '3   %'
          '13 %')
        TabOrder = 2
      end
    end
  end
  object qrProcessos: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT     Processos.Empresa, Processos.Filial, Processos.Codigo' +
        ' AS Processo, Processos.Tipo, Processos.Tipo_Declaracao AS decl,' +
        ' Processos.Data,'
      
        '                      Importadores.Razao_Social AS Cliente, Impo' +
        'rtadores.CNPJ_CPF_COMPLETO AS qcnpj, '
      
        '                      Importadores.Endereco + '#39', '#39' + LTRIM(RTRIM' +
        '(Importadores.Numero)) + '#39' - '#39' + LTRIM(RTRIM(Importadores.Comple' +
        'mento)) '
      
        '                      + '#39' - '#39' + LTRIM(RTRIM(Importadores.Bairro)' +
        ') AS endereco, Importadores.Cidade AS mun, Importadores.UF, Impo' +
        'rtadores.CEP, '
      
        '                      Importadores.Inscricao_Estadual AS insc, P' +
        'rocessos.Valor_FOB, Processos.Valor_CIF, Processos.Valor_FOBC, P' +
        'rocessos.Valor_CIFC, '
      
        '                      Processos_registro_impostos.II, Processos_' +
        'registro_impostos.IPI, Processos_registro_impostos.Taxa_SISCOMEX' +
        ', Processos_registro_impostos.IIc, '
      
        '                      Processos_registro_impostos.IPIc, Processo' +
        's_registro_impostos.Taxa_SISCOMEXc, Processos.NR_DECLARACAO_IMP,' +
        ' '
      
        '                      Processos.NR_DECLARACAO_IMPC, Conhecimento' +
        '_Processo.URF_chegada, Conhecimento_Processo.Data_Chegada_URF_Ch' +
        'eg, '
      
        '                      Processos.DT_DESEMBARACO, Conhecimento_Pro' +
        'cesso.URF_Despacho, Processos.Fechado, Importadores.Ativo, Proce' +
        'ssos.Importador, '
      
        '                      Processos.Pag_proporcional, Processos.Resp' +
        'onsavel_Empresa, Processos.Responsavel_EmpresaC, Processos.BASE_' +
        'ICMS, '
      
        '                      Processos.TR_IMPRESSOES, Processos.TR_IMPR' +
        'ESSOES_FECP, Usuarios_1.Nome_Completo AS NOMESUPER, '
      '                      Usuarios_1.Senha AS SENHASUPER'
      'FROM         Parametros INNER JOIN'
      
        '                      Processos ON Parametros.Filial = Processos' +
        '.Filial AND Parametros.Empresa = Processos.Empresa LEFT OUTER JO' +
        'IN'
      
        '                      Importadores ON Processos.Importador = Imp' +
        'ortadores.Codigo AND Processos.Filial = Importadores.Filial AND '
      
        '                      Processos.Empresa = Importadores.Empresa I' +
        'NNER JOIN'
      
        '                      Processos_registro_impostos ON Processos.C' +
        'odigo = Processos_registro_impostos.Processo AND '
      
        '                      Processos.Filial = Processos_registro_impo' +
        'stos.Filial AND Processos.Empresa = Processos_registro_impostos.' +
        'Empresa LEFT OUTER JOIN'
      
        '                      Usuarios ON Processos.Responsavel_Empresa ' +
        '= Usuarios.Usuario LEFT OUTER JOIN'
      
        '                      Conhecimento_Processo ON Processos.Empresa' +
        ' = Conhecimento_Processo.Empresa AND Processos.Filial = Conhecim' +
        'ento_Processo.Filial AND '
      
        '                      Processos.Codigo = Conhecimento_Processo.P' +
        'rocesso LEFT OUTER JOIN'
      
        '                      Usuarios AS Usuarios_1 ON Usuarios.Supervi' +
        'sor = Usuarios_1.Usuario'
      'WHERE Processos.Codigo =:Processo'
      'ORDER BY Processo'
      ' ')
    Left = 256
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
      end>
    object qrProcessosEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrProcessosFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrProcessosProcesso: TStringField
      FieldName = 'Processo'
      FixedChar = True
      Size = 8
    end
    object qrProcessosdecl: TStringField
      FieldName = 'decl'
      FixedChar = True
      Size = 2
    end
    object qrProcessosData: TDateTimeField
      FieldName = 'Data'
    end
    object qrProcessosCliente: TStringField
      FieldName = 'Cliente'
      FixedChar = True
      Size = 60
    end
    object qrProcessosqcnpj: TStringField
      FieldName = 'qcnpj'
      FixedChar = True
      Size = 14
    end
    object qrProcessosendereco: TStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 100
    end
    object qrProcessosmun: TStringField
      FieldName = 'mun'
      FixedChar = True
      Size = 25
    end
    object qrProcessosUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qrProcessosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object qrProcessosinsc: TStringField
      FieldName = 'insc'
      FixedChar = True
      Size = 15
    end
    object qrProcessosValor_FOB: TFloatField
      FieldName = 'Valor_FOB'
    end
    object qrProcessosValor_CIF: TFloatField
      FieldName = 'Valor_CIF'
    end
    object qrProcessosValor_FOBC: TFloatField
      FieldName = 'Valor_FOBC'
    end
    object qrProcessosValor_CIFC: TFloatField
      FieldName = 'Valor_CIFC'
    end
    object qrProcessosII: TFloatField
      FieldName = 'II'
    end
    object qrProcessosIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrProcessosTaxa_SISCOMEX: TFloatField
      FieldName = 'Taxa_SISCOMEX'
    end
    object qrProcessosIIc: TFloatField
      FieldName = 'IIc'
    end
    object qrProcessosIPIc: TFloatField
      FieldName = 'IPIc'
    end
    object qrProcessosTaxa_SISCOMEXc: TFloatField
      FieldName = 'Taxa_SISCOMEXc'
    end
    object qrProcessosNR_DECLARACAO_IMP: TStringField
      FieldName = 'NR_DECLARACAO_IMP'
      FixedChar = True
      Size = 10
    end
    object qrProcessosNR_DECLARACAO_IMPC: TStringField
      FieldName = 'NR_DECLARACAO_IMPC'
      FixedChar = True
      Size = 10
    end
    object qrProcessosURF_chegada: TStringField
      FieldName = 'URF_chegada'
      FixedChar = True
      Size = 7
    end
    object qrProcessosData_Chegada_URF_Cheg: TDateTimeField
      FieldName = 'Data_Chegada_URF_Cheg'
    end
    object qrProcessosDT_DESEMBARACO: TDateTimeField
      FieldName = 'DT_DESEMBARACO'
    end
    object qrProcessosURF_Despacho: TStringField
      FieldName = 'URF_Despacho'
      FixedChar = True
      Size = 7
    end
    object qrProcessosFechado: TIntegerField
      FieldName = 'Fechado'
    end
    object qrProcessosAtivo: TIntegerField
      FieldName = 'Ativo'
    end
    object qrProcessosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 4
    end
    object qrProcessosPag_proporcional: TIntegerField
      FieldName = 'Pag_proporcional'
    end
    object qrProcessosResponsavel_Empresa: TStringField
      FieldName = 'Responsavel_Empresa'
      FixedChar = True
      Size = 10
    end
    object qrProcessosResponsavel_EmpresaC: TStringField
      FieldName = 'Responsavel_EmpresaC'
      FixedChar = True
      Size = 10
    end
    object qrProcessosBASE_ICMS: TIntegerField
      FieldName = 'BASE_ICMS'
    end
    object qrProcessosTR_IMPRESSOES: TIntegerField
      FieldName = 'TR_IMPRESSOES'
    end
    object qrProcessosTR_IMPRESSOES_FECP: TIntegerField
      FieldName = 'TR_IMPRESSOES_FECP'
    end
    object qrProcessosNOMESUPER: TStringField
      FieldName = 'NOMESUPER'
      FixedChar = True
      Size = 45
    end
    object qrProcessosSENHASUPER: TStringField
      FieldName = 'SENHASUPER'
      FixedChar = True
      Size = 10
    end
    object qrProcessosTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
  end
  object qVerificaATAereo: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT processo,valor, Aliq FROM Acresc_ATAereo where processo =' +
        ':pProcesso')
    Left = 313
    Top = 9
    ParamData = <
      item
        DataType = ftString
        Name = 'pProcesso'
        ParamType = ptInput
      end>
    object qVerificaATAereoprocesso: TStringField
      FieldName = 'processo'
      FixedChar = True
      Size = 8
    end
    object qVerificaATAereovalor: TFloatField
      FieldName = 'valor'
    end
    object qVerificaATAereoAliq: TSmallintField
      FieldName = 'Aliq'
    end
  end
  object qOper: TQuery
    DatabaseName = 'DBNMSCOMEX'
    Left = 130
    Top = 69
  end
end
