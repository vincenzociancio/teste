object F_Produtos: TF_Produtos
  Left = 374
  Top = 210
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 374
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label31: TLabel
    Left = 373
    Top = 177
    Width = 39
    Height = 13
    Caption = 'NALADI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label32: TLabel
    Left = 295
    Top = 218
    Width = 93
    Height = 13
    Caption = 'Unidade na Medida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label33: TLabel
    Left = 292
    Top = 177
    Width = 73
    Height = 13
    Caption = 'Destaque NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label34: TLabel
    Left = 8
    Top = 259
    Width = 33
    Height = 13
    Caption = 'Moeda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label35: TLabel
    Left = 373
    Top = 259
    Width = 63
    Height = 13
    Caption = 'Valor Unitário'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label36: TLabel
    Left = 292
    Top = 259
    Width = 63
    Height = 13
    Caption = 'Peso Unitário'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label37: TLabel
    Left = 8
    Top = 218
    Width = 146
    Height = 13
    Caption = 'Unidade na Medida Estatística'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label38: TLabel
    Left = 8
    Top = 138
    Width = 50
    Height = 13
    Caption = 'Fabricante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label39: TLabel
    Left = 295
    Top = 138
    Width = 50
    Height = 13
    Caption = 'Importador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label40: TLabel
    Left = 8
    Top = 177
    Width = 24
    Height = 13
    Caption = 'NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label41: TLabel
    Left = 8
    Top = 49
    Width = 48
    Height = 13
    Caption = 'Descrição'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 266
    Top = 153
    Width = 23
    Height = 21
    Hint = 'Localizar Fabricante'
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    OnClick = sbLocFabricClick
  end
  object SpeedButton2: TSpeedButton
    Left = 550
    Top = 153
    Width = 23
    Height = 21
    Hint = 'Localizar Importador'
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    OnClick = sbLocImportClick
  end
  object SpeedButton3: TSpeedButton
    Left = 266
    Top = 193
    Width = 23
    Height = 21
    Hint = 'Localizar NCM'
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    OnClick = sbLocNCMClick
  end
  object SpeedButton4: TSpeedButton
    Left = 266
    Top = 233
    Width = 23
    Height = 21
    Hint = 'Localizar Unidade na medida estatistica'
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    OnClick = sbLocUniMedEstatClick
  end
  object SpeedButton5: TSpeedButton
    Left = 550
    Top = 233
    Width = 23
    Height = 21
    Hint = 'Localizar Unidade na media'
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    OnClick = sbLocUniMedClick
  end
  object SpeedButton6: TSpeedButton
    Left = 266
    Top = 273
    Width = 23
    Height = 21
    Hint = 'Localizar Moeda'
    Enabled = False
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888800000888880000080F000888880F00080F000888880F
      0008000000080000000800F000000F00000800F000800F00000800F000800F00
      00088000000000000088880F00080F0008888800000800000888888000888000
      88888880F08880F0888888800088800088888888888888888888}
    OnClick = sbLocMoedaClick
  end
  object Label42: TLabel
    Left = 8
    Top = 9
    Width = 33
    Height = 13
    Caption = 'Código'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 374
    Align = alClient
    BevelOuter = bvNone
    Color = 10514464
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label12: TLabel
      Left = 568
      Top = 274
      Width = 39
      Height = 13
      Caption = 'NALADI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 336
      Top = 314
      Width = 167
      Height = 13
      Caption = 'Unidade de Medida Comercializada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 488
      Top = 274
      Width = 73
      Height = 13
      Caption = 'Destaque NCM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 314
      Width = 146
      Height = 13
      Caption = 'Unidade de Medida Estatística'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 332
      Top = 1
      Width = 50
      Height = 13
      Caption = 'Fabricante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 1
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 274
      Width = 24
      Height = 13
      Caption = 'NCM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sbLocFabric: TSpeedButton
      Left = 630
      Top = 17
      Width = 23
      Height = 21
      Hint = 'Localizar Fabricante'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = sbLocFabricClick
    end
    object sbLocImport: TSpeedButton
      Left = 304
      Top = 17
      Width = 23
      Height = 21
      Hint = 'Localizar Importador'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = sbLocImportClick
    end
    object sbLocNCM: TSpeedButton
      Left = 456
      Top = 290
      Width = 23
      Height = 21
      Hint = 'Localizar NCM'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = sbLocNCMClick
    end
    object sbLocUniMedEstat: TSpeedButton
      Left = 304
      Top = 330
      Width = 23
      Height = 21
      Hint = 'Localizar Unidade na medida estatistica'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = sbLocUniMedEstatClick
    end
    object sbLocUniMed: TSpeedButton
      Left = 632
      Top = 330
      Width = 23
      Height = 21
      Hint = 'Localizar Unidade na media'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = sbLocUniMedClick
    end
    object Label3: TLabel
      Left = 8
      Top = 41
      Width = 88
      Height = 13
      Caption = 'Código do Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 101
      Width = 99
      Height = 13
      Caption = 'Descrição Português'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 8
      Top = 187
      Width = 79
      Height = 13
      Caption = 'Descrição Inglês'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 571
      Top = 95
      Width = 1
      Height = 116
      Brush.Color = clRed
      Pen.Color = clRed
    end
    object Label43: TLabel
      Left = 213
      Top = 94
      Width = 354
      Height = 11
      Caption = 
        'RCR - COMPLETAR COM ESPAÇOS ATÉ A MARCA VERMELHA EM CADA LINHA -' +
        '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label44: TLabel
      Left = 259
      Top = 82
      Width = 257
      Height = 11
      Caption = 'ATENÇÃO!! - DESCRIÇÕES COM VÁRIAS LINHAS, PARA O '
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label45: TLabel
      Left = 264
      Top = 105
      Width = 235
      Height = 11
      Caption = 'utilize "home" e "end" para verificar o final da linha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 328
      Top = 41
      Width = 59
      Height = 13
      Caption = 'Part Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 656
      Top = 360
      Width = 185
      Height = 89
      Lines.Strings = (
        '')
      TabOrder = 0
      Visible = False
    end
    object p_rodape: TPanel
      Left = 0
      Top = 357
      Width = 662
      Height = 17
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'log'
      Color = 10514464
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object me_codigo: TMaskEdit
      Left = 8
      Top = 56
      Width = 305
      Height = 21
      TabOrder = 5
      OnKeyDown = me_codigoKeyDown
    end
    object me_partnumber: TMaskEdit
      Left = 325
      Top = 57
      Width = 325
      Height = 21
      TabOrder = 6
      OnKeyDown = me_partnumberKeyDown
    end
    object me_importador: TMaskEdit
      Left = 8
      Top = 17
      Width = 32
      Height = 21
      MaxLength = 4
      TabOrder = 1
      OnChange = me_importadorChange
    end
    object me_fabricante: TMaskEdit
      Left = 331
      Top = 17
      Width = 47
      Height = 21
      MaxLength = 6
      TabOrder = 3
      OnChange = me_fabricanteChange
    end
    object me_ncm: TMaskEdit
      Left = 8
      Top = 290
      Width = 54
      Height = 21
      MaxLength = 8
      TabOrder = 9
      OnChange = me_ncmChange
      OnExit = me_ncmChange
      OnKeyPress = me_ncmKeyPress
    end
    object me_unidadee: TMaskEdit
      Left = 8
      Top = 330
      Width = 30
      Height = 21
      TabOrder = 13
      OnExit = me_unidadeeExit
    end
    object me_unidade: TMaskEdit
      Left = 336
      Top = 330
      Width = 30
      Height = 21
      TabOrder = 15
      OnExit = me_unidadeExit
    end
    object me_destaque: TMaskEdit
      Left = 488
      Top = 290
      Width = 73
      Height = 21
      TabOrder = 11
    end
    object me_naladi: TMaskEdit
      Left = 568
      Top = 290
      Width = 49
      Height = 21
      TabOrder = 12
    end
    object memo_port: TMemo
      Left = 8
      Top = 116
      Width = 569
      Height = 68
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyDown = memo_portKeyDown
    end
    object memo_ing: TMemo
      Left = 7
      Top = 201
      Width = 569
      Height = 68
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyDown = memo_ingKeyDown
    end
    object dbg_importadores: TDBGrid
      Left = 42
      Top = 16
      Width = 259
      Height = 24
      DataSource = dsImportadores
      Options = [dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = dbg_importadoresKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 230
          Visible = True
        end>
    end
    object dbg_fabricantes: TDBGrid
      Left = 378
      Top = 16
      Width = 248
      Height = 24
      DataSource = dsFabricantes
      Options = [dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = dbg_fabricantesKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 200
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 66
      Top = 288
      Width = 387
      Height = 24
      DataSource = dsNCM
      Enabled = False
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 360
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 42
      Top = 328
      Width = 258
      Height = 24
      DataSource = dsUniMedEstat
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 230
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 368
      Top = 329
      Width = 258
      Height = 24
      DataSource = dsUniMed
      Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 230
          Visible = True
        end>
    end
  end
  object pnlMenu: TPanel
    Left = 662
    Top = 0
    Width = 95
    Height = 374
    Align = alRight
    Color = 10514464
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Hint = 'Novo Produto'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnNovoClick
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
    object btnExcluir: TBitBtn
      Left = 8
      Top = 88
      Width = 75
      Height = 25
      Hint = 'Excluir Produto'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object btnAlterar: TBitBtn
      Left = 8
      Top = 56
      Width = 75
      Height = 25
      Hint = 'Alterar dados do Produto'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
    object btnGravar: TBitBtn
      Left = 8
      Top = 128
      Width = 75
      Height = 25
      Hint = 'Gravar'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object btnCancelar: TBitBtn
      Left = 8
      Top = 160
      Width = 75
      Height = 25
      Hint = 'Cancelar'
      BiDiMode = bdLeftToRight
      Caption = '&Cancelar'
      Enabled = False
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
    object btnLocalizar: TBitBtn
      Left = 8
      Top = 196
      Width = 75
      Height = 25
      Hint = 'Localizar um Produto'
      Caption = '&Localizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnLocalizarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
    end
    object btnFechar: TBitBtn
      Left = 9
      Top = 227
      Width = 75
      Height = 25
      Hint = 'Fechar cadastro de Produtos'
      Caption = '&Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnFecharClick
      Kind = bkClose
    end
  end
  object pnlLocNCM: TPanel
    Left = 24
    Top = 8
    Width = 640
    Height = 33
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 5
    Visible = False
    object Label15: TLabel
      Left = 12
      Top = 38
      Width = 147
      Height = 16
      Caption = 'Código ou Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocNCMCanc: TBitBtn
      Left = 528
      Top = 204
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 3
      OnClick = btnLocNCMCancClick
      Kind = bkCancel
    end
    object btnLocNCMOk: TBitBtn
      Left = 448
      Top = 204
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = btnLocNCMOkClick
      Kind = bkOK
    end
    object dbGrdNCM: TDBGrid
      Left = 16
      Top = 64
      Width = 585
      Height = 133
      DataSource = dsLocNCM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Código'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descrição'
          Width = 500
          Visible = True
        end>
    end
    object meLocNCM: TMaskEdit
      Left = 168
      Top = 36
      Width = 433
      Height = 21
      TabOrder = 0
      OnChange = meLocNCMChange
    end
    object Panel5: TPanel
      Left = 6
      Top = 6
      Width = 628
      Height = 27
      Align = alTop
      Caption = 'Localiza NCM'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlLocUniMed: TPanel
    Left = 72
    Top = 104
    Width = 617
    Height = 33
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 7
    Visible = False
    object Label17: TLabel
      Left = 12
      Top = 38
      Width = 147
      Height = 16
      Caption = 'Código ou Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocUniMedCanc: TBitBtn
      Left = 528
      Top = 204
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 3
      OnClick = btnLocUniMedCancClick
      Kind = bkCancel
    end
    object btnLocUniMedOk: TBitBtn
      Left = 448
      Top = 204
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = btnLocUniMedOkClick
      Kind = bkOK
    end
    object dbGrdUniMed: TDBGrid
      Left = 16
      Top = 64
      Width = 585
      Height = 133
      DataSource = dsLocUniMed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Código'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descrição'
          Width = 500
          Visible = True
        end>
    end
    object meLocUniMed: TMaskEdit
      Left = 168
      Top = 36
      Width = 433
      Height = 21
      TabOrder = 0
      OnChange = meLocUniMedChange
    end
    object Panel3: TPanel
      Left = 6
      Top = 6
      Width = 605
      Height = 27
      Align = alTop
      Caption = 'Localiza Unidade de Medida'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlLocMoedas: TPanel
    Left = 16
    Top = 560
    Width = 617
    Height = 73
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 8
    Visible = False
    object Label18: TLabel
      Left = 12
      Top = 38
      Width = 147
      Height = 16
      Caption = 'Código ou Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocMoeCanc: TBitBtn
      Left = 528
      Top = 204
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 3
      OnClick = btnLocMoeCancClick
      Kind = bkCancel
    end
    object btnLocMoeOk: TBitBtn
      Left = 448
      Top = 204
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = btnLocMoeOkClick
      Kind = bkOK
    end
    object dbGrdMoedas: TDBGrid
      Left = 16
      Top = 64
      Width = 585
      Height = 133
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Código'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descrição'
          Width = 500
          Visible = True
        end>
    end
    object meLocMoedas: TMaskEdit
      Left = 168
      Top = 36
      Width = 433
      Height = 21
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 6
      Top = 6
      Width = 605
      Height = 27
      Align = alTop
      Caption = 'Localiza Moeda'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlVerNCM: TPanel
    Left = 8
    Top = 664
    Width = 617
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 9
    Visible = False
    object dbGrdVerNCM: TDBGrid
      Left = 16
      Top = 40
      Width = 585
      Height = 145
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Destaque_NCM'
          Title.Caption = 'Destaque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NALADI'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Title.Caption = 'Código'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Produto'
          Title.Caption = 'Descrição Produto'
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Código'
          Title.Caption = 'Processo'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razão Social'
          Title.Caption = 'Importador'
          Width = 484
          Visible = True
        end>
    end
    object btnOk: TBitBtn
      Left = 268
      Top = 192
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 1
      OnClick = btnOkClick
      Kind = bkOK
    end
    object Panel10: TPanel
      Left = 6
      Top = 6
      Width = 605
      Height = 27
      Align = alTop
      Caption = 'Produtos que utilizaram esta NCM, DESTAQUE e NALADI'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlLocProdutos: TPanel
    Left = 120
    Top = 128
    Width = 481
    Height = 33
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 2
    Visible = False
    object L_busca: TLabel
      Left = 16
      Top = 33
      Width = 241
      Height = 16
      Caption = 'Código, Part Number ou Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 18
      Top = 211
      Width = 99
      Height = 13
      Caption = 'Descrição Português'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 18
      Top = 267
      Width = 79
      Height = 13
      Caption = 'Descrição Inglês'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnLocProOk: TBitBtn
      Left = 256
      Top = 328
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 3
      OnClick = btnLocProOkClick
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
    object dbGrdProdutos: TDBGrid
      Left = 16
      Top = 73
      Width = 625
      Height = 137
      DataSource = dsLocProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Importador'
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fabricante'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PART_NUMBER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Destaque_NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NALADI'
          Visible = True
        end>
    end
    object meLocProdutos: TMaskEdit
      Left = 16
      Top = 50
      Width = 361
      Height = 21
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 469
      Height = 27
      Align = alTop
      Caption = 'Localiza Produto'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object btnLocProCanc: TBitBtn
      Left = 336
      Top = 328
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 4
      OnClick = btnLocProCancClick
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
    object btnFiltrarProd: TBitBtn
      Left = 382
      Top = 48
      Width = 59
      Height = 24
      Caption = '&Filtrar'
      TabOrder = 1
      OnClick = btnFiltrarProdClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
        00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
        00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
        03FF33337FFF77777333333300000333333F3333777773333333}
      NumGlyphs = 2
    end
    object DBMemo1: TDBMemo
      Left = 18
      Top = 227
      Width = 569
      Height = 40
      DataField = 'Descricao'
      DataSource = dsLocProdutos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBMemo2: TDBMemo
      Left = 18
      Top = 281
      Width = 569
      Height = 45
      DataField = 'Descricao_ing'
      DataSource = dsLocProdutos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = dbMemoDescIngKeyPress
    end
  end
  object pnlLocFabricantes: TPanel
    Left = 27
    Top = 248
    Width = 640
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 3
    Visible = False
    object Label13: TLabel
      Left = 12
      Top = 38
      Width = 169
      Height = 16
      Caption = 'Código ou Razão Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocFabCanc: TBitBtn
      Left = 528
      Top = 204
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 3
      OnClick = btnLocFabCancClick
      Kind = bkCancel
    end
    object btnLocFabOk: TBitBtn
      Left = 448
      Top = 204
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = btnLocFabOkClick
      Kind = bkOK
    end
    object dbGrdFabricantes: TDBGrid
      Left = 16
      Top = 64
      Width = 585
      Height = 133
      DataSource = dsLocFabricantes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Title.Caption = 'Cidade'
          Visible = True
        end>
    end
    object meLocFabricantes: TMaskEdit
      Left = 184
      Top = 36
      Width = 417
      Height = 21
      TabOrder = 0
      OnChange = meLocFabricantesChange
    end
    object Panel7: TPanel
      Left = 6
      Top = 6
      Width = 628
      Height = 27
      Align = alTop
      Caption = 'Localiza Fabricante'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlLocIMportadores: TPanel
    Left = 52
    Top = 88
    Width = 640
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object Label14: TLabel
      Left = 12
      Top = 38
      Width = 169
      Height = 16
      Caption = 'Código ou Razão Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocImpCanc: TBitBtn
      Left = 528
      Top = 204
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 3
      OnClick = btnLocImpCancClick
      Kind = bkCancel
    end
    object btnLocImpOk: TBitBtn
      Left = 448
      Top = 204
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = btnLocImpOkClick
      Kind = bkOK
    end
    object dbGrdImportadores: TDBGrid
      Left = 16
      Top = 64
      Width = 585
      Height = 133
      DataSource = dsLocImportadores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'Código'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Razao_Social'
          Width = 320
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_CPF_COMPLETO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereço'
          Visible = True
        end>
    end
    object meLocImportadores: TMaskEdit
      Left = 184
      Top = 36
      Width = 417
      Height = 21
      TabOrder = 0
      OnChange = meLocImportadoresChange
    end
    object Panel6: TPanel
      Left = 6
      Top = 6
      Width = 628
      Height = 27
      Align = alTop
      Caption = 'Localiza Importador'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlLocUniMedEstat: TPanel
    Left = 48
    Top = 200
    Width = 617
    Height = 33
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 5
    BorderWidth = 1
    TabOrder = 6
    Visible = False
    object Label16: TLabel
      Left = 12
      Top = 38
      Width = 147
      Height = 16
      Caption = 'Código ou Descrição'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLocUniMedEstatCanc: TBitBtn
      Left = 528
      Top = 204
      Width = 75
      Height = 25
      Caption = '&Cancela'
      TabOrder = 3
      OnClick = btnLocUniMedEstatCancClick
      Kind = bkCancel
    end
    object btnLocUniMedEstatOk: TBitBtn
      Left = 448
      Top = 204
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 2
      OnClick = btnLocUniMedEstatOkClick
      Kind = bkOK
    end
    object dbGrdUniMedEstat: TDBGrid
      Left = 16
      Top = 64
      Width = 585
      Height = 133
      DataSource = dsLocUniMedEstat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Código'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descrição'
          Width = 500
          Visible = True
        end>
    end
    object meLocUniMedEstat: TMaskEdit
      Left = 168
      Top = 36
      Width = 433
      Height = 21
      TabOrder = 0
      OnChange = meLocUniMedEstatChange
    end
    object Panel4: TPanel
      Left = 6
      Top = 6
      Width = 605
      Height = 27
      Align = alTop
      Caption = 'Localiza Unidade de Medida Estatística'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object dsProdutos: TDataSource
    DataSet = qrProdutos
    Left = 64
    Top = 112
  end
  object qrLocProdutos: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT TOP 100 Produtosnew.REG, Produtosnew.CODIGO, Produtosnew.' +
        'PART_NUMBER, Produtosnew.Descricao, Produtosnew.Descricao_ing, P' +
        'rodutosnew.NCM, Produtosnew.Destaque_NCM, Produtosnew.NALADI, Pr' +
        'odutosnew.Unidade, Produtosnew.Unidade_Medida_Estat, Produtosnew' +
        '.DATA_INCLUSAO, Produtosnew.Usuario_INCLUSAO, Produtosnew.DATA_U' +
        'LTIMA_ALTERACAO, Produtosnew.Usuario_ALTERACAO, Produtosnew.Revi' +
        'sado, Produtosnew.Revisao_Data, Produtosnew.Revisao_Usuario, Pro' +
        'dutosnew.Revisao_OBS, Importadores.Razao_Social AS Importador, F' +
        'abricantes_Produtores.Razao_Social AS Fabricante '
      
        'FROM (Produtosnew LEFT JOIN Importadores ON Produtosnew.Importad' +
        'or = Importadores.Codigo) LEFT JOIN Fabricantes_Produtores ON Pr' +
        'odutosnew.Fabricante = Fabricantes_Produtores.Codigo'
      
        'WHERE (((Produtosnew.CODIGO) Like :cod)) OR (((Produtosnew.PART_' +
        'NUMBER) Like :part)) OR (((Produtosnew.Descricao) Like :desc)) O' +
        'R (((Produtosnew.Descricao_ing) Like :descing));')
    Left = 400
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'part'
        ParamType = ptUnknown
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'descIng'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocProdutosREG: TAutoIncField
      FieldName = 'REG'
    end
    object qrLocProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 50
    end
    object qrLocProdutosPART_NUMBER: TStringField
      FieldName = 'PART_NUMBER'
      FixedChar = True
      Size = 50
    end
    object qrLocProdutosDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
    object qrLocProdutosDescricao_ing: TMemoField
      FieldName = 'Descricao_ing'
      BlobType = ftMemo
    end
    object qrLocProdutosNCM: TStringField
      FieldName = 'NCM'
      FixedChar = True
      Size = 8
    end
    object qrLocProdutosDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object qrLocProdutosNALADI: TStringField
      FieldName = 'NALADI'
      FixedChar = True
      Size = 8
    end
    object qrLocProdutosUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 2
    end
    object qrLocProdutosUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object qrLocProdutosDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
    end
    object qrLocProdutosUsuario_INCLUSAO: TStringField
      FieldName = 'Usuario_INCLUSAO'
      FixedChar = True
      Size = 10
    end
    object qrLocProdutosDATA_ULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
    end
    object qrLocProdutosUsuario_ALTERACAO: TStringField
      FieldName = 'Usuario_ALTERACAO'
      FixedChar = True
      Size = 10
    end
    object qrLocProdutosRevisado: TIntegerField
      FieldName = 'Revisado'
    end
    object qrLocProdutosRevisao_Data: TDateTimeField
      FieldName = 'Revisao_Data'
    end
    object qrLocProdutosRevisao_Usuario: TStringField
      FieldName = 'Revisao_Usuario'
      FixedChar = True
      Size = 10
    end
    object qrLocProdutosRevisao_OBS: TMemoField
      FieldName = 'Revisao_OBS'
      BlobType = ftMemo
    end
    object qrLocProdutosImportador: TStringField
      FieldName = 'Importador'
      FixedChar = True
      Size = 60
    end
    object qrLocProdutosFabricante: TStringField
      FieldName = 'Fabricante'
      FixedChar = True
      Size = 60
    end
  end
  object dsLocProdutos: TDataSource
    DataSet = qrLocProdutos
    Left = 304
    Top = 48
  end
  object dsFabricantes: TDataSource
    DataSet = qrFabricantes
    Left = 216
    Top = 232
  end
  object dsImportadores: TDataSource
    DataSet = qrImportadores
    Left = 264
    Top = 200
  end
  object dsMoedas: TDataSource
    DataSet = qrMoedas
    Left = 216
    Top = 352
  end
  object dsNCM: TDataSource
    DataSet = qrNCM
    Left = 216
    Top = 272
  end
  object dsUniMedEstat: TDataSource
    DataSet = qrUniMedEstat
    Left = 216
    Top = 312
  end
  object qrLocFabricantes: TQuery
    AutoCalcFields = False
    AfterOpen = qrLocFabricantesAfterOpen
    AfterScroll = qrLocFabricantesAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Codigo, Razao_Social, endereco, cidade'
      'FROM Fabricantes_Produtores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'AND (Codigo Like :cod OR Razao_Social Like :rs)'
      'ORDER BY Razao_Social')
    Left = 400
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'rs'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocFabricantesEmpresa: TStringField
      FieldName = 'Empresa'
      FixedChar = True
      Size = 4
    end
    object qrLocFabricantesFilial: TStringField
      FieldName = 'Filial'
      FixedChar = True
      Size = 4
    end
    object qrLocFabricantesCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 6
    end
    object qrLocFabricantesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      FixedChar = True
      Size = 60
    end
    object qrLocFabricantesendereco: TStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 40
    end
    object qrLocFabricantescidade: TStringField
      FieldName = 'cidade'
      FixedChar = True
      Size = 25
    end
  end
  object dsLocFabricantes: TDataSource
    DataSet = qrLocFabricantes
    Left = 432
    Top = 128
  end
  object qrLocImportadores: TQuery
    AutoCalcFields = False
    AfterOpen = qrLocImportadoresAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT *'
      'FROM Importadores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'AND (Codigo Like :cod OR Razao_Social Like :rs)')
    Left = 344
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'RJO'
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'rs'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocImportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object qrLocImportadoresFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object qrLocImportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object qrLocImportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
    object qrLocImportadoresPais: TStringField
      FieldName = 'Pais'
      Origin = 'DBNMSCOMEX.Importadores.Pais'
      Size = 3
    end
    object qrLocImportadoresCNPJ_CPF_COMPLETO: TStringField
      FieldName = 'CNPJ_CPF_COMPLETO'
      Origin = 'DBNMSCOMEX.Importadores.CNPJ_CPF_COMPLETO'
      Size = 14
    end
    object qrLocImportadoresCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Origin = 'DBNMSCOMEX.Importadores.CGC_CPF'
      Size = 10
    end
    object qrLocImportadoresTipo_Importador: TStringField
      FieldName = 'Tipo_Importador'
      Origin = 'DBNMSCOMEX.Importadores.Tipo_Importador'
      Size = 1
    end
    object qrLocImportadoresEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'DBNMSCOMEX.Importadores.Endereco'
      Size = 40
    end
    object qrLocImportadoresNumero: TStringField
      FieldName = 'Numero'
      Origin = 'DBNMSCOMEX.Importadores.Numero'
      Size = 6
    end
    object qrLocImportadoresComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'DBNMSCOMEX.Importadores.Complemento'
      Size = 21
    end
    object qrLocImportadoresBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'DBNMSCOMEX.Importadores.Bairro'
      Size = 25
    end
    object qrLocImportadoresCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'DBNMSCOMEX.Importadores.Cidade'
      Size = 25
    end
    object qrLocImportadoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'DBNMSCOMEX.Importadores.CEP'
      Size = 10
    end
    object qrLocImportadoresUF: TStringField
      FieldName = 'UF'
      Origin = 'DBNMSCOMEX.Importadores.UF'
      Size = 2
    end
    object qrLocImportadoresEstado: TStringField
      FieldName = 'Estado'
      Origin = 'DBNMSCOMEX.Importadores.Estado'
      Size = 25
    end
    object qrLocImportadoresInscricao_Estadual: TStringField
      FieldName = 'Inscricao_Estadual'
      Origin = 'DBNMSCOMEX.Importadores.Inscricao_Estadual'
      Size = 15
    end
    object qrLocImportadoresBanco: TStringField
      FieldName = 'Banco'
      Origin = 'DBNMSCOMEX.Importadores.Banco'
      Size = 5
    end
    object qrLocImportadoresAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'DBNMSCOMEX.Importadores.Agencia'
      Size = 5
    end
    object qrLocImportadoresConta_Corrente: TStringField
      FieldName = 'Conta_Corrente'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente'
      Size = 8
    end
    object qrLocImportadoresConta_Corrente_Registro: TIntegerField
      FieldName = 'Conta_Corrente_Registro'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Registro'
    end
    object qrLocImportadoresConta_Corrente_Deposito: TIntegerField
      FieldName = 'Conta_Corrente_Deposito'
      Origin = 'DBNMSCOMEX.Importadores.Conta_Corrente_Deposito'
    end
    object qrLocImportadoreslink: TStringField
      FieldName = 'link'
      Origin = 'DBNMSCOMEX.Importadores.link'
      Size = 50
    end
    object qrLocImportadoresCAE: TStringField
      FieldName = 'CAE'
      Origin = 'DBNMSCOMEX.Importadores.CAE'
      Size = 15
    end
    object qrLocImportadoresTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'DBNMSCOMEX.Importadores.Telefone'
      Size = 15
    end
    object qrLocImportadoresAtivo: TSmallintField
      FieldName = 'Ativo'
      Origin = 'DBNMSCOMEX.Importadores.Ativo'
    end
    object qrLocImportadoresAcesso_WEB_MS: TSmallintField
      FieldName = 'Acesso_WEB_MS'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_MS'
    end
    object qrLocImportadoresAcesso_WEB_CLI: TSmallintField
      FieldName = 'Acesso_WEB_CLI'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_CLI'
    end
    object qrLocImportadoresAcesso_WEB_REC: TSmallintField
      FieldName = 'Acesso_WEB_REC'
      Origin = 'DBNMSCOMEX.Importadores.Acesso_WEB_REC'
    end
    object qrLocImportadoresBASE_ICMS: TSmallintField
      FieldName = 'BASE_ICMS'
      Origin = 'DBNMSCOMEX.Importadores.BASE_ICMS'
    end
  end
  object dsLocImportadores: TDataSource
    DataSet = qrLocImportadores
    Left = 368
    Top = 160
  end
  object qrLocNCM: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, UNIDADE_MEDIDA'
      'FROM TAB_NCM'
      'WHERE CODIGO Like :cod OR DESCRICAO Like :desc')
    Left = 400
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocNCMCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNTABSISCO.TAB_NCM.CODIGO'
      Size = 8
    end
    object qrLocNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNTABSISCO.TAB_NCM.DESCRICAO'
      Size = 120
    end
    object qrLocNCMUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'DBNTABSISCO.TAB_NCM.UNIDADE_MEDIDA'
      Size = 4
    end
  end
  object dsLocNCM: TDataSource
    DataSet = qrLocNCM
    Left = 432
    Top = 192
  end
  object qrLocUniMedEstat: TQuery
    AutoCalcFields = False
    AfterOpen = qrLocUniMedEstatAfterOpen
    AfterScroll = qrLocUniMedEstatAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_UNID_MEDIDA'
      'WHERE CODIGO Like :cod OR DESCRICAO Like :desc')
    Left = 400
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocUniMedEstatCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrLocUniMedEstatDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
  end
  object dsLocUniMedEstat: TDataSource
    DataSet = qrLocUniMedEstat
    Left = 432
    Top = 224
  end
  object dsItensFatura: TDataSource
    DataSet = qrItensFatura
    Left = 192
    Top = 24
  end
  object qrLocUniMed: TQuery
    AutoCalcFields = False
    AfterOpen = qrLocUniMedAfterOpen
    AfterScroll = qrLocUniMedAfterOpen
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_UNID_MEDIDA'
      'WHERE CODIGO Like :cod OR DESCRICAO Like :desc')
    Left = 400
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '**'
      end
      item
        DataType = ftString
        Name = 'desc'
        ParamType = ptUnknown
        Value = '**'
      end>
    object qrLocUniMedCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrLocUniMedDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
  end
  object dsLocUniMed: TDataSource
    DataSet = qrLocUniMed
    Left = 433
    Top = 256
  end
  object qrFabricantes: TQuery
    AutoCalcFields = False
    AfterScroll = qrFabricantesAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Codigo, Razao_Social'
      'FROM Fabricantes_Produtores'
      'WHERE Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 184
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'RJO'
      end>
    object qrFabricantesCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Fabricantes_Produtores.Codigo'
      Size = 4
    end
    object qrFabricantesRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Fabricantes_Produtores.Razao_Social'
      Size = 60
    end
  end
  object qrImportadores: TQuery
    AutoCalcFields = False
    AfterScroll = qrImportadoresAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Codigo, Razao_Social'
      'FROM Importadores'
      'GROUP BY Empresa, Filial, Codigo, Razao_Social'
      'HAVING Empresa = :emp AND Filial = :filial'
      'ORDER BY Razao_Social')
    Left = 224
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
        Value = 'RJO'
      end>
    object qrImportadoresEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.Importadores.Empresa'
      Size = 4
    end
    object qrImportadoresFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.Importadores.Filial'
      Size = 4
    end
    object qrImportadoresCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'DBNMSCOMEX.Importadores.Codigo'
      Size = 4
    end
    object qrImportadoresRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'DBNMSCOMEX.Importadores.Razao_Social'
      Size = 60
    end
  end
  object qrNCM: TQuery
    AutoCalcFields = False
    AfterScroll = qrNCMAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO, UNIDADE_MEDIDA'
      'FROM TAB_NCM'
      'WHERE CODIGO Like :cod '
      'ORDER BY DESCRICAO')
    Left = 184
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
        Value = '12'
      end>
    object qrNCMCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_NCM.CODIGO'
      FixedChar = True
      Size = 8
    end
    object qrNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_NCM.DESCRICAO'
      FixedChar = True
      Size = 120
    end
    object qrNCMUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'DBNMSCOMEX.TAB_NCM.UNIDADE_MEDIDA'
      FixedChar = True
      Size = 4
    end
  end
  object qrUniMedEstat: TQuery
    AutoCalcFields = False
    AfterScroll = qrUniMedEstatAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_UNID_MEDIDA'
      'ORDER BY DESCRICAO')
    Left = 184
    Top = 312
    object qrUniMedEstatCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrUniMedEstatDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
  end
  object qrUniMed: TQuery
    AutoCalcFields = False
    AfterScroll = qrUniMedAfterScroll
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_UNID_MEDIDA'
      'ORDER BY DESCRICAO')
    Left = 472
    Top = 328
    object qrUniMedCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.CODIGO'
      Size = 2
    end
    object qrUniMedDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_UNID_MEDIDA.DESCRICAO'
      Size = 120
    end
  end
  object qrMoedas: TQuery
    AutoCalcFields = False
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT CODIGO, DESCRICAO'
      'FROM TAB_MOEDA'
      'ORDER BY DESCRICAO')
    Left = 184
    Top = 352
    object qrMoedasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.CODIGO'
      Size = 3
    end
    object qrMoedasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DBNMSCOMEX.TAB_MOEDA.DESCRICAO'
      Size = 120
    end
  end
  object dsUniMed: TDataSource
    DataSet = qrUniMed
    Left = 504
    Top = 328
  end
  object qrItensFatura: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT Empresa, Filial, Processo, Fatura, Sequencial, Produto'
      'FROM ItensFaturas'
      'WHERE Empresa = :emp AND Filial = :filial AND Produto = :prod')
    Left = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'filial'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'prod'
        ParamType = ptUnknown
      end>
    object qrItensFaturaEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'DBNMSCOMEX.ItensFaturas.Empresa'
      Size = 4
    end
    object qrItensFaturaFilial: TStringField
      FieldName = 'Filial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Filial'
      Size = 4
    end
    object qrItensFaturaProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'DBNMSCOMEX.ItensFaturas.Processo'
      Size = 8
    end
    object qrItensFaturaFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'DBNMSCOMEX.ItensFaturas.Fatura'
      Size = 30
    end
    object qrItensFaturaSequencial: TStringField
      FieldName = 'Sequencial'
      Origin = 'DBNMSCOMEX.ItensFaturas.Sequencial'
      Size = 4
    end
    object qrItensFaturaProduto: TStringField
      FieldName = 'Produto'
      Origin = 'DBNMSCOMEX.ItensFaturas.Produto'
      Size = 25
    end
  end
  object qrProdutos: TQuery
    AfterOpen = qrProdutosAfterOpen
    AutoRefresh = True
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT * from Produtosnew'
      'where reg=:qreg')
    UpdateMode = upWhereChanged
    Left = 64
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'qreg'
        ParamType = ptUnknown
        Value = 1
      end>
    object qrProdutosREG: TAutoIncField
      FieldName = 'REG'
      Origin = 'DBNMSCOMEX.Produtosnew.REG'
    end
    object qrProdutosImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Produtosnew.Importador'
      FixedChar = True
      Size = 4
    end
    object qrProdutosFabricante: TStringField
      FieldName = 'Fabricante'
      Origin = 'DBNMSCOMEX.Produtosnew.Fabricante'
      FixedChar = True
      Size = 6
    end
    object qrProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBNMSCOMEX.Produtosnew.CODIGO'
      FixedChar = True
      Size = 50
    end
    object qrProdutosPART_NUMBER: TStringField
      FieldName = 'PART_NUMBER'
      Origin = 'DBNMSCOMEX.Produtosnew.PART_NUMBER'
      FixedChar = True
      Size = 50
    end
    object qrProdutosDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'DBNMSCOMEX.Produtosnew.Descricao'
      BlobType = ftMemo
    end
    object qrProdutosDescricao_ing: TMemoField
      FieldName = 'Descricao_ing'
      Origin = 'DBNMSCOMEX.Produtosnew.Descricao_ing'
      BlobType = ftMemo
    end
    object qrProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'DBNMSCOMEX.Produtosnew.NCM'
      FixedChar = True
      Size = 8
    end
    object qrProdutosDestaque_NCM: TStringField
      FieldName = 'Destaque_NCM'
      Origin = 'DBNMSCOMEX.Produtosnew.Destaque_NCM'
      FixedChar = True
      Size = 3
    end
    object qrProdutosNALADI: TStringField
      FieldName = 'NALADI'
      Origin = 'DBNMSCOMEX.Produtosnew.NALADI'
      FixedChar = True
      Size = 8
    end
    object qrProdutosUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'DBNMSCOMEX.Produtosnew.Unidade'
      FixedChar = True
      Size = 2
    end
    object qrProdutosUnidade_Medida_Estat: TStringField
      FieldName = 'Unidade_Medida_Estat'
      Origin = 'DBNMSCOMEX.Produtosnew.Unidade_Medida_Estat'
      FixedChar = True
      Size = 2
    end
    object qrProdutosDATA_INCLUSAO: TDateTimeField
      FieldName = 'DATA_INCLUSAO'
      Origin = 'DBNMSCOMEX.Produtosnew.DATA_INCLUSAO'
    end
    object qrProdutosUsuario_INCLUSAO: TStringField
      FieldName = 'Usuario_INCLUSAO'
      Origin = 'DBNMSCOMEX.Produtosnew.Usuario_INCLUSAO'
      FixedChar = True
      Size = 10
    end
    object qrProdutosDATA_ULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ALTERACAO'
      Origin = 'DBNMSCOMEX.Produtosnew.DATA_ULTIMA_ALTERACAO'
    end
    object qrProdutosUsuario_ALTERACAO: TStringField
      FieldName = 'Usuario_ALTERACAO'
      Origin = 'DBNMSCOMEX.Produtosnew.Usuario_ALTERACAO'
      FixedChar = True
      Size = 10
    end
    object qrProdutosRevisado: TIntegerField
      FieldName = 'Revisado'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisado'
    end
    object qrProdutosRevisao_Data: TDateTimeField
      FieldName = 'Revisao_Data'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisao_Data'
    end
    object qrProdutosRevisao_Usuario: TStringField
      FieldName = 'Revisao_Usuario'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisao_Usuario'
      FixedChar = True
      Size = 10
    end
    object qrProdutosRevisao_OBS: TMemoField
      FieldName = 'Revisao_OBS'
      Origin = 'DBNMSCOMEX.Produtosnew.Revisao_OBS'
      BlobType = ftMemo
    end
  end
  object q_itensup: TQuery
    AutoRefresh = True
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'INSERT INTO [Produtosnew]  '
      ' ([Importador] '
      ',[Fabricante]'
      ',[CODIGO]            '
      ',[PART_NUMBER]            '
      ',[Descricao]            '
      ',[Descricao_ing]            '
      ',[NCM]            '
      ',[Destaque_NCM]            '
      ',[NALADI]            '
      ',[Unidade]            '
      ',[Unidade_Medida_Estat]            '
      ',[DATA_INCLUSAO]            '
      ',[Usuario_INCLUSAO]            '
      ',[DATA_ULTIMA_ALTERACAO]            '
      ',[Usuario_ALTERACAO])       '
      ' VALUES '
      '('
      ':pImportador'
      ',:pFabricante'
      ',:pCODIGO            '
      ',:pPART_NUMBER            '
      ',:pDescricao            '
      ',:pDescricao_ing           '
      ',:pNCM            '
      ',:pDestaque_NCM            '
      ',:pNALADI            '
      ',:pUnidade            '
      ',:pUnidade_Medida_Estat            '
      ',:pDATA_INCLUSAO            '
      ',:pUsuario_INCLUSAO            '
      ',:pDATA_ULTIMA_ALTERACAO            '
      ',:pUsuario_ALTERACAO       '
      ')  ')
    Left = 101
    Top = 81
    ParamData = <
      item
        DataType = ftString
        Name = 'pImportador'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pFabricante'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pCODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPART_NUMBER'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'pDescricao'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'pDescricao_ing'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pNCM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pDestaque_NCM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pNALADI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pUnidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pUnidade_Medida_Estat'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'pDATA_INCLUSAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pUsuario_INCLUSAO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'pDATA_ULTIMA_ALTERACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pUsuario_ALTERACAO'
        ParamType = ptInput
      end>
  end
  object qlocpart: TQuery
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      
        'SELECT Produtosnew.Importador, Produtosnew.Fabricante, Produtosn' +
        'ew.PART_NUMBER, Produtosnew.CODIGO'
      'FROM Produtosnew'
      
        'WHERE (((Produtosnew.Importador)=:qimp) AND ((Produtosnew.Fabric' +
        'ante)=:qfab) AND ((Produtosnew.PART_NUMBER)=:qpn) AND ((Produtos' +
        'new.CODIGO)=:qcod));')
    Left = 600
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'qimp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'qfab'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'qpn'
        ParamType = ptUnknown
        Value = '3'
      end
      item
        DataType = ftString
        Name = 'qcod'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qlocpartImportador: TStringField
      FieldName = 'Importador'
      Origin = 'DBNMSCOMEX.Produtosnew.Importador'
      Size = 4
    end
    object qlocpartFabricante: TStringField
      FieldName = 'Fabricante'
      Origin = 'DBNMSCOMEX.Produtosnew.Fabricante'
      Size = 4
    end
    object qlocpartPART_NUMBER: TStringField
      FieldName = 'PART_NUMBER'
      Origin = 'DBNMSCOMEX.Produtosnew.PART_NUMBER'
      Size = 25
    end
  end
  object q_inc: TQuery
    AutoRefresh = True
    DatabaseName = 'DBNMSCOMEX'
    SQL.Strings = (
      'SELECT MAX(REG) as qreg FROM Produtosnew')
    Left = 141
    Top = 81
    object q_incqreg: TIntegerField
      FieldName = 'qreg'
      Origin = 'DBNMSCOMEX.Produtosnew.REG'
    end
  end
end
