unit u_RelCustoProc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask, Db, DBTables, ComObj;

type
  TF_RelCustoProc = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtProcesso: TEdit;
    btnExcel: TBitBtn;
    qrExcelAux: TQuery;
    qrExcelAuxRazao_Social: TStringField;
    qrExcelAuxCodigo: TStringField;
    qrExcelAuxEmpresa: TStringField;
    qrExcelAuxFilial: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelCustoProc: TF_RelCustoProc;
  vEmp, vFil: String;

implementation

uses U_MSCOMEX, u_QRCustoProc;

{$R *.DFM}

procedure TF_RelCustoProc.FormCreate(Sender: TObject);
begin
     vEmp := F_MSCOMEX.t_parametrosEmpresa.AsString;
     vFil := F_MSCOMEX.t_parametrosFilial.AsString;

     If Not Assigned(QR_RelCustoProc) Then Application.CreateForm(TQR_RelCustoProc, QR_RelCustoProc);
end;

procedure TF_RelCustoProc.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


     {h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w; }
end;

procedure TF_RelCustoProc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     F_MSCOMEX.Processo1.Enabled := True;
     Action := caFree;
     F_RelCustoProc := nil;
end;

procedure TF_RelCustoProc.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_RelCustoProc.btnImprimirClick(Sender: TObject);
var
   i: Integer;
   vFiltro, vFiltroDt: String;

begin
     If Trim(edtProcesso.Text) = '' Then Begin
        MessageDlg('O ''Processo'' não pode estar em branco!', mtWarning, [mbOK], 0);
        edtProcesso.SetFocus;
        Exit;
     End;

     With QR_RelCustoProc Do Begin
         With qrCusto Do Begin
             Params[0].AsString := vEmp;
             Params[1].AsString := vFil;
             Params[2].AsString := Trim(edtProcesso.Text);
             Open;
         End;

         With qrCli Do Begin
             Params[0].AsString := vEmp;
             Params[1].AsString := vFil;
             Open;
         End;

         Preview;
         qrCli.Close;
         qrCusto.Close;
     End;
end;

procedure TF_RelCustoProc.btnExcelClick(Sender: TObject);
Var Excel : Variant;
    i: Integer;
    v_total : Real;
begin
     v_total := 0;
     If Trim(edtProcesso.Text) = '' Then Begin
        MessageDlg('O ''Processo'' não pode estar em branco!', mtWarning, [mbOK], 0);
        edtProcesso.SetFocus;
        Exit;
     End;

     With QR_RelCustoProc Do Begin
         With qrCusto Do Begin
             Params[0].AsString := vEmp;
             Params[1].AsString := vFil;
             Params[2].AsString := Trim(edtProcesso.Text);
             Open;
         End;

         With qrCli Do Begin
             Params[0].AsString := vEmp;
             Params[1].AsString := vFil;
             Open;
         End;

//         qrCli.Close;
//         qrCusto.Close;
     End;
     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Workbooks.add(1);

     Excel.visible := True;
     Excel.Worksheets[1].Name := 'Relatório';
     Excel.ActiveWindow.DisplayGridlines := False;
     Excel.Cells[1,1].Font.Size := 12;
     Excel.Cells[1,1] := 'MS2000 - Sistema Gerencial Aduaneiro';
     Excel.Cells[1,1].Font.Bold := True;
     Excel.Cells[2,1] := v_versao;
     Excel.Cells[2,1].Font.Bold := True;
     //Excel.Worksheets[1].PageSetup.PaperSize := '9';
     Excel.ActiveSheet.PageSetup.LeftMargin := '28';
     Excel.ActiveSheet.PageSetup.RightMargin := '28';

     Excel.Cells[5,1] := 'RELATÓRIO DE CUSTOS POR PROCESSO '  ;
     Excel.Cells[5, 1].Font.Color := clMaroon;
     Excel.Cells[5,1].Font.Bold := True;

     Excel.Cells.Range['A' + IntToStr(7), 'D' + IntToStr(7)].Merge;
     qrExcelAux.Close;
     qrExcelAux.Params[0].AsString := vEmp;
     qrExcelAux.Params[1].AsString := vFil;
     qrExcelAux.Params[2].AsString := Trim(edtProcesso.Text);
     qrExcelAux.Open;
     Excel.Cells[8,1] := 'Cliente: ' + qrExcelAuxRazao_Social.AsString;
     Excel.Cells[8,1].Font.Bold := True;
     Excel.Cells[8,1].Font.Size := 9;
     qrExcelAux.Close;

     Excel.cells[6, 1].Borders.Item[8].Weight := 3;
     Excel.cells[6, 2].Borders.Item[8].Weight := 3;
     Excel.cells[6, 3].Borders.Item[8].Weight := 3;
     Excel.cells[6,1].Borders.Item[8].LineStyle := 1;
     Excel.cells[6,2].Borders.Item[8].LineStyle := 1;
     Excel.cells[6,3].Borders.Item[8].LineStyle := 1;

     Excel.Cells[7,1].Font.Bold := True;
     Excel.Cells[7,1].Font.Size := 9;
     Excel.Cells[7,1] := 'Processo: ' + edtProcesso.Text;
     Excel.Cells.Range['A' + IntToStr(7), 'C' + IntToStr(7)].Merge;

//     Excel.cells[6,1] := ' - Período: ' + mePerIni.text + ' Até: ' + mePerFin.text;


     Excel.Cells[10,1] := 'Data';
     Excel.Cells[10,2] := 'Processo';
     Excel.Cells[10,3] := 'Valor R$';

     Excel.Range['A10', 'C10'].HorizontalAlignment := -4108;
     Excel.Range['A10', 'C10'].Font.Bold := True;
     Excel.Range['A10', 'C10'].Font.Size := 10;
     Excel.Range['A10', 'C10'].Borders.Item[9].LineStyle := 1;
     Excel.Range['A10', 'C10'].Borders.Item[8].LineStyle := 1;

     For i := 1 To 5 Do Excel.Cells.Range['A' + IntToStr(i), 'C' + IntToStr(i)].Merge;

     i:=11;

     Excel.Cells.Range['A8', 'A8'].ColumnWidth := 9;
     Excel.Cells.Range['B8', 'B8'].ColumnWidth := 65;
     Excel.Cells.Range['C8', 'C8'].ColumnWidth := 17;

        With QR_RelCustopROC Do Begin
           While Not qrCusto.Eof Do Begin
               Excel.Cells[i,1] := qrCustoData_Registro.AsString;
               Excel.Cells[i,2] := qrCustoDescricao.AsString;
               Excel.Cells[i,3] := FormatFloat('###,###,##0.00', (qrCustoValor_Registrado.AsFloat));
               v_total := v_total + qrCustoValor_Registrado.AsFloat;
               qrCusto.Next;
               Inc(i);
           End;
        End;
     Excel.Range['A10', 'A'+inttostr(i)].HorizontalAlignment := -4108;
     Excel.Range['C10', 'C'+inttostr(i)].HorizontalAlignment := -4152;
     Excel.Range['C10', 'C'+inttostr(i)].numberFormat := '#.##0,00';
     Excel.Range['A10', 'C'+inttostr(i-1)].Borders.LineStyle := 1;
//     Inc(i);

     Excel.Range['A9', 'C'+inttostr(i)].Font.Size := 9;

     Excel.cells[i, 1].Borders.Item[9].LineStyle := 1;
     Excel.cells[i, 2].Borders.Item[9].LineStyle := 1;
     Excel.cells[i, 3].Borders.Item[9].LineStyle := 1;
     Excel.cells[i,1] := 'TOTAL';
     Excel.Cells[i,1].Font.Bold := True;
     Excel.Cells[i,1].HorizontalAlignment := -4131;
     Excel.Cells[i,1].Font.Size := 9;
     Excel.cells[i,3] := FormatFloat('###,###,##0.00', (v_total));
     Excel.Cells[i,3].Font.Bold := True;
     Excel.Cells[i,3].Font.Size := 9;
     Excel.Cells[i,3].HorizontalAlignment := -4152;
     Excel.cells[i,1].Borders.Item[7].LineStyle := 1;
     Excel.cells[i,3].Borders.Item[10].LineStyle := 1;

//     Inc(i);
  //   Inc(i);
   //  Inc(i);
    // Inc(i);
//     Excel.cells[i, 1].Borders.Item[9].LineStyle := 1;
 //    Excel.cells[i, 2].Borders.Item[9].LineStyle := 1;
  //   Excel.cells[i, 3].Borders.Item[9].LineStyle := 1;
     Excel.Worksheets[1].Shapes.AddPicture ('d:\ms2000\fontesplus\ms2000.bmp', True, True, 375, 4, 110, 60);

end;

end.
