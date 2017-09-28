unit uPlanilhaPrestacaoContasConsolidada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, ComCtrls, Grids, Buttons, Db, DBTables, COMobj;

Const Rows = 12;
  AL_DIREITA = -4152;
  AL_ESQUERDA = -4131;
  AL_CENTRO = -4108;
  Aleft = -4131;
  Aright = -4152;
  ACenter = -4108;

type
  TfrmPCConsolidada = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    edtMS: TMaskEdit;
    StatusBar1: TStatusBar;
    SGrid: TStringGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnExcel: TBitBtn;
    qryMain: TQuery;
    lblImportador: TLabel;
    qryAuto_Reg: TQuery;
    qryQT: TQuery;
    qryTotal_Taxa_Siscomex: TQuery;
    qryTotal_Taxa_Siscomextotal_taxa: TFloatField;
    qryTotal_Produtos: TQuery;
    qryTotal_ProdutosValor_Total: TFloatField;
    qryMainVL_II: TFloatField;
    qryMainVL_IPI: TFloatField;
    qryMainVL_PIS: TFloatField;
    qryMainValor_Total: TFloatField;
    qryMainVA_NEW: TFloatField;
    qryMainVL_COFINS: TFloatField;
    qryMainVL_FECP: TFloatField;
    qryMainFK_Plataforma: TIntegerField;
    qryMainPlataforma: TStringField;
    qryMainSigla: TStringField;
    qryMainRazao_Social: TStringField;
    qryMainCNPJ: TStringField;
    qryMainCodigo: TStringField;
    qryMainNR_DECLARACAO_IMP: TStringField;
    qryMainAliq_ICMS: TFloatField;
    qryMainAliq_ICMS_EXTRA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure edtMSChange(Sender: TObject);
    procedure StringGridClear();
    procedure btnExcelClick(Sender: TObject);
  private
    PagoPor : String;
    Debitado : String;
    procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer; FormatarComo : string; FName : String ); overload;
    procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : Double; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer; FormatarComo : string; FName : String ); overload;
    procedure GerarPlanilha();
  public
    { Public declarations }
  end;

var
  frmPCConsolidada: TfrmPCConsolidada;
  Excel : Variant;

  Total_Produtos,
  Total_Taxa_Siscomex,
  Total_Prod_Siscomex,
  VLConst,

  temp_va,
  tempii,
  temp_ipi,
  temp_tx,
  temp_confis,
  temp_pis,
  dif_icms,
  base_calculo_icms,
  aliq_ICMS_valor,
  valor_icms : Double;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmPCConsolidada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.Prestaodecontasconsolidada1.Enabled := True;
  frmPCConsolidada := Nil;
  Action := caFree;
end;

procedure TfrmPCConsolidada.FormShow(Sender: TObject);
begin
  SGrid.RowCount := Rows;
  SGrid.ColWidths[0] := 350;
  SGrid.Cells[0,0] := ' DEBITO C/C ';
  SGrid.Cells[0,1] := ' IMPOSTO DE IMPORTAÇÃO';
  SGrid.Cells[0,2] := ' IPI';
  SGrid.Cells[0,3] := ' TAXA SISCOMEX';
  SGrid.Cells[0,4] := ' PIS/PASEP (IMPORTAÇÃO)';
  SGrid.Cells[0,5] := ' COFINS (IMPORTAÇÃO)';
  SGrid.Cells[0,6] := ' TOTAL P/ PLATAFORMA';
  SGrid.Cells[0,8] := ' PAGO P/ ';
  SGrid.Cells[0,9] := ' ICMS / FECP';
  SGrid.Cells[0,10]:= ' ICMS / GNRE';
  SGrid.Cells[0,11]:= ' TOTAL P/ PLATAFORMA';
end;

procedure TfrmPCConsolidada.SGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with (Sender as TStringGrid) do begin
    if ( ACol = 0 ) then begin
      Canvas.Font.Style := [fsBold];
    end;
    if ( ARow = 0 )or( ARow = 8 ) then begin
      Canvas.Brush.Color := clYellow;
      Canvas.Font.Style := [fsBold];
    end
    else
    if ( ARow = 6 )or( ARow = 11 ) then begin
      Canvas.Brush.Color := $0099CCFF;
      Canvas.Font.Style := [fsBold];
    end
    else Begin
      Canvas.Font.Color:= clBlack;
      Canvas.Brush.Color := clWhite;
    end;
    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;
end;

procedure TfrmPCConsolidada.edtMSChange(Sender: TObject);
  var
    i, j : Integer;
    T_II,
    T_IPI,
    T_PIS,
    T_COFINS,
    T_FECP,
    T_ICMS : Double;
begin
  if ( Length(Trim(edtMS.Text)) < 8 ) then
    Exit;
  StringGridClear;
  Self.OnShow(Self);
  lblImportador.Caption := '';

  //qryQT.ParamByName('Processo').Value := edtMS.Text;
 // qryQT.Close;
 // qryQT.Open;

  qryMain.ParamByName('Processo').Value := edtMS.Text;
  //qryMain.ParamByName('QT').Value := qryQT.FieldByName('QT').AsInteger;
  qryMain.Close;
  qryMain.Open;
  // verifica contabilizaocao
  qryAuto_Reg.Params[0].Value := edtMS.Text;
  qryAuto_Reg.Close;
  qryAuto_Reg.Open;

  // Total Produtos
  qryTotal_Produtos.Params[0].asstring := edtMS.text;
  qryTotal_Produtos.open;
  Total_Produtos := qryTotal_ProdutosValor_Total.AsFloat;
  qryTotal_Produtos.close;
  //---
  // Total Taxa Siscomex
  qryTotal_Taxa_Siscomex.Params[0].asstring   := edtMS.text;
  qryTotal_Taxa_Siscomex.open;
  Total_Taxa_Siscomex := qryTotal_Taxa_Siscomextotal_taxa.AsFloat;
  qryTotal_Taxa_Siscomex.close;
  //---
  Total_Prod_Siscomex := Total_Produtos + Total_Taxa_Siscomex;
  VLConst :=  Total_Prod_Siscomex / Total_Produtos;


  btnExcel.Enabled := ( Not qryMain.IsEmpty );
  If ( qryAuto_Reg.IsEmpty ) Then Begin
    PagoPor := 'MS LOGÍSTICA';
    Debitado:= 'MS LOGÍSTICA';
  End
  Else Begin
    // ICMS Pago por
    If ( qryAuto_Reg.FieldByName( 'Contabilizado_cliente_icms' ).AsInteger = 0 ) Then
      PagoPor := 'MS LOGÍSTICA'
    Else
      PagoPor := qryMain.FieldByName( 'Razao_Social' ).AsString;
    // Debitado
    If ( qryAuto_Reg.FieldByName( 'Contabilizado_cliente' ).AsInteger = 0 ) Then
      Debitado := 'MS LOGÍSTICA'
    Else
      Debitado := qryMain.FieldByName( 'Razao_Social' ).AsString;
  End;
  //--
  If ( Not qryMain.IsEmpty ) Then Begin
    lblImportador.Caption := 'Cliente: ' + qryMain.FieldByName( 'Razao_Social' ).AsString +
                             ' - CNPJ: ' + qryMain.FieldByName( 'Cnpj' ).AsString;
    T_II  := 0;
    T_IPI := 0;
    T_PIS := 0;
    T_COFINS := 0;
    T_FECP := 0;
    T_ICMS := 0;
    SGrid.ColCount := qryMain.RecordCount+2;
    For i := 1 To qryMain.RecordCount Do Begin
      SGrid.Cells[0, 0] := ' DEBITO C/C ' + Debitado;
      SGrid.Cells[i, 0] := qryMain.FieldByName( 'Sigla' ).AsString;
      SGrid.Cells[i, 1] := FormatFloat('#,##0.00', qryMain.FieldByName( 'VL_II' ).AsFloat );
      SGrid.Cells[i, 2] := FormatFloat('#,##0.00', qryMain.FieldByName( 'VL_IPI' ).AsFloat );
      SGrid.Cells[i, 3] := FormatFloat('#,##0.00', ((qryMain.FieldByName( 'Valor_Total' ).AsFloat * VLConst ) - qryMain.FieldByName( 'Valor_Total' ).AsFloat ));
      SGrid.Cells[i, 4] := FormatFloat('#,##0.00', qryMain.FieldByName( 'VL_PIS' ).AsFloat );
      SGrid.Cells[i, 5] := FormatFloat('#,##0.00', qryMain.FieldByName( 'VL_COFINS' ).AsFloat );
      // 1 - Total p/ plataforma
      SGrid.Cells[i, 6] := FormatFloat('#,##0.00', (
      StrToFloat(StringReplace(SGrid.Cells[i, 1], '.','', [])) +
      StrToFloat(StringReplace(SGrid.Cells[i, 2], '.','', [])) +
      StrToFloat(StringReplace(SGrid.Cells[i, 3], '.','', [])) +
      StrToFloat(StringReplace(SGrid.Cells[i, 4], '.','', [])) +
      StrToFloat(StringReplace(SGrid.Cells[i, 5], '.','', []))));
      {
      SGrid.Cells[i, 6] := FormatFloat('#,##0.00', qryMain.FieldByName( 'VL_II' ).AsFloat +
                                                   qryMain.FieldByName( 'VL_IPI' ).AsFloat +
                                                   ((qryMain.FieldByName( 'Valor_Total' ).AsFloat * VLConst ) - qryMain.FieldByName( 'Valor_Total' ).AsFloat )+
                                                   qryMain.FieldByName( 'VL_PIS' ).AsFloat +
                                                   qryMain.FieldByName( 'VL_COFINS' ).AsFloat);

      }
      SGrid.Cells[0, 8] := ' PAGO PELA ' + PagoPor;
      SGrid.Cells[i, 8] := qryMain.FieldByName( 'Sigla' ).AsString;

      // calculando ICMS
      temp_va := qryMainVA_NEW.AsFloat;
      tempii := qryMainVL_II.AsFloat;
      temp_ipi := qryMainVL_IPI.AsFloat;
      temp_tx := ((qryMain.FieldByName( 'Valor_Total' ).AsFloat * VLConst ) - qryMain.FieldByName( 'Valor_Total' ).AsFloat );
      temp_confis := qryMainVL_COFINS.AsFloat;
      temp_pis := qryMainVL_PIS.AsFloat;
      dif_icms := ((100-(qryMainAliq_ICMS.AsFloat + qryMainAliq_ICMS_EXTRA.AsFloat))/100);
      base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;
      aliq_ICMS_valor := (qryMainAliq_ICMS.AsFloat)/100;
      valor_icms := base_calculo_icms *  aliq_ICMS_valor;
      //--

      SGrid.Cells[i, 9] := FormatFloat('#,##0.00', qryMain.FieldByName( 'VL_FECP' ).AsFloat );
      SGrid.Cells[i, 10] := FormatFloat('#,##0.00', valor_icms );
      // 2 - Total p/ plataforma
      SGrid.Cells[i, 11] := FormatFloat('#,##0.00', (
      StrToFloat(StringReplace(SGrid.Cells[i, 9], '.','', [])) +
      StrToFloat(StringReplace(SGrid.Cells[i, 10], '.','', []))));

      {
      SGrid.Cells[i, 11] := FormatFloat('#,##0.00', qryMain.FieldByName( 'VL_FECP' ).AsFloat +
                                                    qryMain.FieldByName( 'VL_ICMS' ).AsFloat);
      }
      // Totais
      {
      T_II := T_II + StrToFloat(StringReplace(SGrid.Cells[i, 1], '.','', []));
      T_IPI := T_IPI + StrToFloat(StringReplace(SGrid.Cells[i, 2], '.','', []));
      T_PIS := T_PIS + StrToFloat(StringReplace(SGrid.Cells[i, 4], '.','', []));
      T_COFINS := T_COFINS + StrToFloat(StringReplace(SGrid.Cells[i, 5], '.','', []));
      T_FECP := T_FECP + StrToFloat(StringReplace(SGrid.Cells[i, 9], '.','', []));
      T_ICMS := T_ICMS + StrToFloat(StringReplace(SGrid.Cells[i, 10], '.','', []));
      }

      T_II := T_II + qryMain.FieldByName( 'VL_II' ).AsFloat;
      T_IPI := T_IPI + qryMain.FieldByName( 'VL_IPI' ).AsFloat;
      T_PIS := T_PIS + qryMain.FieldByName( 'VL_PIS' ).AsFloat;
      T_COFINS := T_COFINS + qryMain.FieldByName( 'VL_COFINS' ).AsFloat;
      T_FECP := T_FECP + qryMain.FieldByName( 'VL_FECP' ).AsFloat;
      T_ICMS := T_ICMS + Round(valor_icms*100)/100;;
      
      //-------
      qryMain.Next;
      Application.ProcessMessages;
    End;
    // Total
    SGrid.Cells[i, 0] := 'TOTAL';
    SGrid.Cells[i, 1] := FormatFloat('#,##0.00', T_II);
    SGrid.Cells[i, 2] := FormatFloat('#,##0.00', T_IPI);
    SGrid.Cells[i, 3] := FormatFloat('#,##0.00', Total_Taxa_Siscomex );
    SGrid.Cells[i, 4] := FormatFloat('#,##0.00', T_PIS);
    SGrid.Cells[i, 5] := FormatFloat('#,##0.00', T_COFINS);
    SGrid.Cells[i, 6] := FormatFloat('#,##0.00', T_II + T_IPI + Total_Taxa_Siscomex + T_PIS + T_COFINS);
    SGrid.Cells[i, 8] := 'TOTAL';
    SGrid.Cells[i, 9] := FormatFloat('#,##0.00', T_FECP);
    SGrid.Cells[i, 10] := FormatFloat('#,##0.00', T_ICMS);
    SGrid.Cells[i, 11] := FormatFloat('#,##0.00', T_ICMS + T_FECP);
  End
  Else
    Application.MessageBox('Processo não encontrado', 'Informação', MB_OK+MB_ICONINFORMATION );
end;

procedure TfrmPCConsolidada.StringGridClear;
  Var
    I: integer;
begin
  begin
    with SGrid do
      for I := 0 to RowCount -1 do
        Rows[I].Clear;
  end;
end;

Procedure TfrmPCConsolidada.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer; FormatarComo : string; FName : String );
Begin
  if ( CTitulo <> '' ) then
    Excel.cells[linha, coluna] := CTitulo
  else
    Excel.cells[linha, coluna] := ' ';

  Excel.cells[linha, coluna].interior.Color := CColor;
  Excel.cells[linha, coluna].Font.Color := FColor;
  Excel.cells[linha, coluna].Font.Size := FSize;
  Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
  Excel.cells[linha, coluna].Borders.Weight := 2;
  Excel.cells[linha, coluna].Borders.LineStyle := 1;
  Excel.Columns[coluna].ColumnWidth := COLSize;
  Excel.cells[linha, coluna].Font.Name := FName;
  Excel.cells[linha, coluna].Font.Bold := True;

  if ( FormatarComo = 'texto' ) then
    Excel.cells[linha, coluna].NumberFormat := '@';
  if ( FormatarComo = 'N' ) then
    Excel.Cells[linha,coluna].NumberFormat := '#.##0,00';
  if ( FormatarComo = 'data' ) then
    Excel.cells[linha, coluna].NumberFormat := 'd\/m\/aaaa';
End;
// overload
procedure TfrmPCConsolidada.CelDetalhe(linha, Coluna: Integer;
  CTitulo: Double; CColor, CAlign, FColor, FSize, COLSize: Integer;
  FormatarComo, FName: String);
begin

  Excel.cells[linha, coluna] := CTitulo;
  Excel.cells[linha, coluna].interior.Color := CColor;
  Excel.cells[linha, coluna].Font.Color := FColor;
  Excel.cells[linha, coluna].Font.Size := FSize;
  Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
  Excel.cells[linha, coluna].Borders.Weight := 2;
  Excel.cells[linha, coluna].Borders.LineStyle := 1;
  Excel.Columns[coluna].ColumnWidth := COLSize;
  Excel.cells[linha, coluna].Font.Name := FName;
  Excel.cells[linha, coluna].Font.Bold := True;
  Excel.Cells[linha,coluna].NumberFormatLocal := '#.##0,00';
end;

procedure TfrmPCConsolidada.GerarPlanilha;
  //Const
    //L = 30;
  var
    X, Y, i, L : Integer;
    Total_II,
    Total_IPI,
    Total_PIS,
    Total_COFINS,
    Total_FECP,
    Total_ICMS : Double;
begin
  try
    Total_II := 0;
    Total_IPI := 0;
    Total_PIS := 0;
    Total_COFINS := 0;
    Total_FECP := 0;
    Total_ICMS := 0;
    
    qryMain.First;
    Excel := CreateOleObject('excel.application');
    if ( not Excel.Application.Visible ) then
      Excel.Application.Visible := true;
      Excel.Workbooks.add(1);
      Excel.Workbooks[1].Worksheets[ 'Plan1' ].Name := 'PCC';
      Excel.WorkSheets['PCC'].Select;
      // Cabeçalho
      Excel.cells[1, 1].interior.Color := clWhite;
      Excel.Columns[1].ColumnWidth := 2;
      Excel.WorkSheets['PCC'].Shapes.AddPicture ('\\msserver01\Sistemas\MS2000\seadril.bmp', True, True, 10, 10, 75, 25);
      Excel.Cells[3,2] := '                         PRESTAÇÃO DE CONTAS - MS LOGÍSTICA';
      Excel.Cells[4,2] := '                                   MS ' + qryMain.FieldByName( 'Codigo' ).AsString;
      Excel.Cells[5,2] := '                                   DI ' + qryMain.FieldByName( 'NR_DECLARACAO_IMP' ).AsString;
      for x := 1 to 7 do begin
        for y := 1 to qryMain.RecordCount+3 do begin
          Excel.cells[x,y].interior.Color := clWhite;
          Excel.Cells[x,y].Font.Size := 10;
          Excel.Cells[x,y].Font.Name := 'Arial';
          Excel.cells[x,y].Font.Bold := True;
        end;
      end;
      // fim cabeçalho

      // Body
      {
      CelDetalhe(7, 2, ' ', clWhite, ACenter, clBlack, 10, 9, '', 'Arial');
      For i := 1 To qryMain.RecordCount Do Begin
        CelDetalhe(7, i+2, qryMain.FieldByName( 'Sigla' ).AsString, clWhite, ACenter, clBlack, 10, 9, '', 'Arial');
        qryMain.Next;
        Application.ProcessMessages;
      end;
      CelDetalhe(7, i+2, 'TOTAL', clWhite, ACenter, clBlack, 10, 9, '', 'Arial');
      }
      // Fim Body
      L := 25 + qryMain.RecordCount;
      // Body Fixo
      // INICIO 1 BLOCO
      CelDetalhe(7, 2, ' ', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      For i := 1 To qryMain.RecordCount Do Begin
        CelDetalhe(7, i+2, qryMain.FieldByName( 'Sigla' ).AsString, clWhite, ACenter, clBlack, 10, 9, '', 'Arial');
        qryMain.Next;
        Application.ProcessMessages;
      end;
      CelDetalhe(7, i+2, 'TOTAL', clWhite, ACenter, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(8, 2, 'ADIANTAMENTO', clYellow, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(9, 2, 'IR ADTO', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(10, 2, 'COFINS - CRED.FAT', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(11, 2, 'PIS - CRED. FAT', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(12, 2, 'COFINS (IMPORTAÇÃO)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(13, 2, 'CSLL -CRED.FAT', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(14, 2, 'TOTAL', $00BFBFBF, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(15, 2, ' ', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      qryMain.First;
      For i := 1 To qryMain.RecordCount Do Begin
        CelDetalhe(15, i+2, ' ', clYellow, ACenter, clBlack, 10, 9, '', 'Arial');
        CelDetalhe(8,i+2, ' ', clYellow, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(9,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(10,i+2, ' ', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
        CelDetalhe(11,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(12,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(13,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(14,i+2, ' ', $00BFBFBF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(15,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');

        qryMain.Next;
        Application.ProcessMessages;
      end;
      CelDetalhe(8,i+2, ' ', clYellow, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(9,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(10,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(11,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(12,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(13,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(14,i+2, ' ', $00BFBFBF, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(15,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      // FIM 1 BLOCO

      // INICIO 2 BLOCO
      qryMain.First;
      CelDetalhe(16, 2, 'PRESTAÇÃO CONTAS', clYellow, Aleft, clBlack, 10, 15, '', 'Arial');
      For i := 1 To qryMain.RecordCount Do Begin
        CelDetalhe(16, i+2, qryMain.FieldByName( 'Sigla' ).AsString, clYellow, ACenter, clBlack, 10, 9, '', 'Arial');
        qryMain.Next;
        Application.ProcessMessages;
      end;
      CelDetalhe(16, i+2, 'TOTAL', clYellow, ACenter, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(17, 2, 'ARMAZENAGEM (AIRJ)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(18, 2, 'ARMAZENAGEM (AIRJ)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(19, 2, 'ARMAZENAGEM (AIRJ)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(20, 2, 'IRRF ( REEMBOLSO)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(21, 2, 'COFINS-CRED.FAT (REEMB)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(22, 2, 'PIS-CRED. FAT  (REEMB)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(23, 2, 'CSLL-CRED.FAT  (REEMB)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(24, 2, 'HONORARIOS', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(25, 2, 'IMPOSTO SOBRE SERVIÇOS', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(26, 2, 'LÍQUIDO A PAGAR', $0099CCFF, Aleft, clBlack, 10, 60, '', 'Arial');
      qryMain.First;
      For i := 1 To qryMain.RecordCount Do Begin
        //CelDetalhe(16, i+2, ' ', clYellow, ACenter, clBlack, 10, 9, '', 'Arial');
        CelDetalhe(17,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(18,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 60, '', 'Arial');
        CelDetalhe(19,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(20,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(21,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(22,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(23,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(24,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(25,i+2, ' ', $0099FFFF, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(26,i+2, ' ', $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
        qryMain.Next;
        Application.ProcessMessages;
      end;
      CelDetalhe(17,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(18,i+2, ' ', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(19,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(20,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(21,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(22,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(23,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(24,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(25,i+2, ' ', clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(26,i+2, ' ', $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
      // FIM 2 BLOCO

      // BLOCO 3
      qryMain.First;
      For i := 1 To qryMain.RecordCount Do Begin
        CelDetalhe(28+I, 2, 'SALDO A PAGAR', clWhite, Aleft, clBlack, 10, 14, '', 'Arial');
        CelDetalhe(28+I, 3, qryMain.FieldByName( 'Sigla' ).AsString, clWhite, ACenter, clBlack, 10, 14, '', 'Arial');
        CelDetalhe(28+I, 4, ' ', clWhite, ACenter, clBlack, 10, 14, '', 'Arial');
        qryMain.Next;
        Application.ProcessMessages;
      end;
      CelDetalhe(28+I, 2, 'SALDO A PAGAR  TOTAL', $0099FFFF, Aleft, clBlack, 10, 28, '', 'Arial');
      CelDetalhe(28+I, 3, '', $0099FFFF, ACenter, clBlack, 10, 14, '', 'Arial');
      CelDetalhe(28+I, 4, ' ', $0099FFFF, ACenter, clBlack, 10, 14, '', 'Arial');


      // FIM BLOCO 3

      //----------


      // Body
      CelDetalhe(7+L, 2, 'DEBITO C/C '+Debitado, clYellow, Aleft, clBlack, 10, 60, '', 'Arial');
      qryMain.First;
      For i := 1 To qryMain.RecordCount Do Begin
        CelDetalhe(7+L, i+2, qryMain.FieldByName( 'Sigla' ).AsString, clYellow, ACenter, clBlack, 10, 9, '', 'Arial');
        qryMain.Next;
        Application.ProcessMessages;
      end;
      CelDetalhe(7+L, i+2, 'TOTAL', clYellow, ACenter, clBlack, 10, 15, '', 'Arial');
      //--

      CelDetalhe(8+L, 2, 'IMPOSTO DE IMPORTAÇÃO', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(9+L, 2, 'IPI', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(10+L, 2, 'TAXA SISCOMEX', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(11+L, 2, 'PIS/PASEP (IMPORTAÇÃO)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(12+L, 2, 'COFINS (IMPORTAÇÃO)', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(13+L, 2, 'TOTAL P/ PLATAFORMA', $0099CCFF, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(14+L, 2, ' ', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(15+L, 2, 'PAGO PELA '+Debitado, clYellow, Aleft, clBlack, 10, 60, '', 'Arial');
      qryMain.First;
      For i := 1 To qryMain.RecordCount Do Begin
        CelDetalhe(15+L, i+2, qryMain.FieldByName( 'Sigla' ).AsString, clYellow, ACenter, clBlack, 10, 9, '', 'Arial');
        // valores
        CelDetalhe(8+L,i+2, qryMain.FieldByName( 'VL_II' ).AsFloat, clWhite, Aleft, clBlack, 10, 15, 'N', 'Arial');
        CelDetalhe(9+L,i+2, qryMain.FieldByName( 'VL_IPI' ).AsFloat, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(10+L,i+2,((qryMain.FieldByName( 'Valor_Total' ).AsFloat * VLConst ) - qryMain.FieldByName( 'Valor_Total' ).AsFloat ), clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
        CelDetalhe(11+L,i+2, qryMain.FieldByName( 'VL_PIS' ).AsFloat, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
        CelDetalhe(12+L,i+2, qryMain.FieldByName( 'VL_COFINS' ).AsFloat, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');

        //--------
        // 1 - Total p/ plataforma
        //CelDetalhe(13+L,i+2, '=c37+c38' , $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
         CelDetalhe(13+L,i+2, FormatFloat('#,##0.00', (
         StrToFloat(StringReplace(SGrid.Cells[i, 1], '.','', [])) +
         StrToFloat(StringReplace(SGrid.Cells[i, 2], '.','', [])) +
         StrToFloat(StringReplace(SGrid.Cells[i, 3], '.','', [])) +
         StrToFloat(StringReplace(SGrid.Cells[i, 4], '.','', [])) +
         StrToFloat(StringReplace(SGrid.Cells[i, 5], '.','', [])))), $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
        {
        CelDetalhe(13+L,i+2, round(((qryMain.FieldByName( 'VL_II' ).AsFloat +
                           qryMain.FieldByName( 'VL_IPI' ).AsFloat +
                           ((qryMain.FieldByName( 'Valor_Total' ).AsFloat * VLConst ) - qryMain.FieldByName( 'Valor_Total' ).AsFloat ) +
                           qryMain.FieldByName( 'VL_PIS' ).AsFloat +
                           qryMain.FieldByName( 'VL_COFINS' ).AsFloat)*100)/100), $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
        }
        CelDetalhe(16+L,i+2, qryMain.FieldByName( 'VL_FECP' ).AsFloat, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');

        // calculando ICMS
        temp_va := qryMainVA_NEW.AsFloat;
        tempii := qryMainVL_II.AsFloat;
        temp_ipi := qryMainVL_IPI.AsFloat;
        temp_tx := ((qryMain.FieldByName( 'Valor_Total' ).AsFloat * VLConst ) - qryMain.FieldByName( 'Valor_Total' ).AsFloat );
        temp_confis := qryMainVL_COFINS.AsFloat;
        temp_pis := qryMainVL_PIS.AsFloat;
        dif_icms := ((100-(qryMainAliq_ICMS.AsFloat + qryMainAliq_ICMS_EXTRA.AsFloat))/100);
        base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;
        aliq_ICMS_valor := (qryMainAliq_ICMS.AsFloat)/100;
        valor_icms := base_calculo_icms *  aliq_ICMS_valor;
        //--
        
        CelDetalhe(17+L,i+2, valor_icms, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');

        // 2 - Total p/ plataforma
        CelDetalhe(18+L,i+2, FormatFloat('#,##0.00', (
        StrToFloat(StringReplace(SGrid.Cells[i, 9], '.','', [])) +
        StrToFloat(StringReplace(SGrid.Cells[i, 10], '.','', [])))), $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
        {
        CelDetalhe(18+L,i+2, (qryMain.FieldByName( 'VL_FECP' ).AsFloat +
                              qryMain.FieldByName( 'VL_ICMS' ).AsFloat), $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
        }
        Total_II := Total_II + qryMain.FieldByName( 'VL_II' ).AsFloat;
        Total_IPI := Total_IPI + qryMain.FieldByName( 'VL_IPI' ).AsFloat;
        Total_PIS := Total_PIS + qryMain.FieldByName( 'VL_PIS' ).AsFloat;
        Total_COFINS := Total_COFINS + qryMain.FieldByName( 'VL_COFINS' ).AsFloat;
        Total_FECP := Total_FECP + qryMain.FieldByName( 'VL_FECP' ).AsFloat;
        Total_ICMS := Total_ICMS + Round(valor_icms * 100)/100;
        //--------
        qryMain.Next;
        Application.ProcessMessages;
      end;

      CelDetalhe(15+L, i+2, 'TOTAL', clYellow, ACenter, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(16+L, 2, 'ICMS / FECP', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(17+L, 2, 'ICMS / GNRE', clWhite, Aleft, clBlack, 10, 60, '', 'Arial');
      CelDetalhe(18+L, 2, 'TOTAL P/ PLATAFORMA', $0099CCFF, Aleft, clBlack, 10, 60, '', 'Arial');
      //---------
      // Total
      CelDetalhe(8+L,i+2, Total_II, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(9+L,i+2, Total_IPI, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(10+L,i+2, Total_Taxa_Siscomex, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(11+L,i+2, Total_PIS, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(12+L,i+2, Total_COFINS, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(13+L,i+2, (Total_II + Total_IPI + Total_Taxa_Siscomex + Total_PIS + Total_COFINS), $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');

      CelDetalhe(16+L,i+2, Total_FECP, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(17+L,i+2, Total_ICMS, clWhite, Aleft, clBlack, 10, 15, '', 'Arial');
      CelDetalhe(18+L,i+2, (Total_ICMS + Total_FECP), $0099CCFF, Aleft, clBlack, 10, 15, '', 'Arial');
      //------
      // Fim Body
  except
    showmessage('Não foi possível gerar a planilha.')
  end;
end;

procedure TfrmPCConsolidada.btnExcelClick(Sender: TObject);
begin
  GerarPlanilha;
end;



end.
