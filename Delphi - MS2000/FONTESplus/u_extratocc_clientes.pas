unit u_extratocc_clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, ExtCtrls, Db, DBTables, ComObj;

type
  Tf_extratocc_clientes = class(TForm)
    p_clientes: TPanel;
    Label41: TLabel;
    Panel16: TPanel;
    Label42: TLabel;
    DBGrid7: TDBGrid;
    Panel17: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    me_datainic: TMaskEdit;
    me_datafinc: TMaskEdit;
    b_fechacliente: TBitBtn;
    b_imprimecliente: TBitBtn;
    q_extratoexcluir: TQuery;
    q_extratomovi: TQuery;
    q_extratonumer: TQuery;
    q_saldoanterior: TQuery;
    q_saldoanteriorCliente: TStringField;
    q_saldoanteriorsaldoanterior: TFloatField;
    q_extratonoperiodo: TQuery;
    q_saldoposterior: TQuery;
    q_saldoposteriorCliente: TStringField;
    q_saldoposteriorsaldoposterior: TFloatField;
    q_importadores: TQuery;
    ds_qimportadores: TDataSource;
    btnExcel: TBitBtn;
    q_importadoresEmpresa: TStringField;
    q_importadoresFilial: TStringField;
    q_importadoresCodigo: TStringField;
    q_importadoresRazao_Social: TStringField;
    q_importadorescnpj_cpf_completo: TStringField;
    q_extratonoperiodoEmpresa: TStringField;
    q_extratonoperiodoFilial: TStringField;
    q_extratonoperiodoCliente: TStringField;
    q_extratonoperiodoRazao_Social: TStringField;
    q_extratonoperiodoData: TDateTimeField;
    q_extratonoperiodoHistorico: TStringField;
    q_extratonoperiodoValor: TFloatField;
    q_extratonoperiodoauto: TAutoIncField;
    procedure b_imprimeclienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure me_datafincExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure b_fechaclienteClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_extratocc_clientes: Tf_extratocc_clientes;
  Excel : Variant;

implementation

uses U_MSCOMEX, u_relextratoc;

{$R *.DFM}

procedure Tf_extratocc_clientes.b_imprimeclienteClick(Sender: TObject);
begin
if (me_datainic.text = '  /  /    ') or (me_datafinc.text = '  /  /    ') then begin
   showmessage('Informe o Período de Extrato.');
   me_datainic.SetFocus;
end
else begin
q_extratoexcluir.close;
////q_extratoexcluir.params[0].asstring := q_importadorescodigo.asstring;
q_extratoexcluir.execsql;

q_extratomovi.close;
q_extratomovi.params[0].asstring := q_importadorescodigo.asstring;
q_extratomovi.execsql;

q_extratonumer.close;
q_extratonumer.params[0].asstring := q_importadorescodigo.asstring;
q_extratonumer.execsql;

q_saldoanterior.close;
q_saldoanterior.params[0].asdatetime := strtodate(me_datainic.text);
q_saldoanterior.params[1].asstring := q_importadorescodigo.asstring;
q_saldoanterior.open;

q_extratonoperiodo.close;
q_extratonoperiodo.params[0].asstring := q_importadorescodigo.asstring;
q_extratonoperiodo.params[1].asdatetime := strtodate(me_datainic.text);
q_extratonoperiodo.params[2].asdatetime := strtodate(me_datafinc.text);
q_extratonoperiodo.open;

q_saldoposterior.close;
q_saldoposterior.params[0].asdatetime := strtodate(me_datafinc.text);
q_saldoposterior.params[1].asstring := q_importadorescodigo.asstring;
q_saldoposterior.open;

if not assigned (qr_extratoc) then Application.CreateForm(Tqr_extratoc, qr_extratoc);

qr_extratoc.qrl_conta.caption := q_extratonoperiodoRazao_Social.asstring;
qr_extratoc.qrl_dataini.caption := me_datainic.text;
qr_extratoc.qrl_datafin.caption := me_datafinc.text;
qr_extratoc.qrl_saldoanterior.caption := floattostrf(q_saldoanteriorsaldoanterior.asfloat,fffixed,15,2);
qr_extratoc.qrl_creditos.caption := '0';
qr_extratoc.qrl_debitos.caption := '0';
qr_extratoc.qrl_saldonoperiodo.caption := '0';
qr_extratoc.qrl_saldoposterior.caption := floattostrf(q_saldoposteriorsaldoposterior.asfloat,fffixed,15,2);
qr_extratoc.qrl_saldoatual.caption := '0';

qr_extratoc.preview;
end;

end;

procedure Tf_extratocc_clientes.FormCreate(Sender: TObject);
begin
q_importadores.open;
end;

procedure Tf_extratocc_clientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_extratocc_clientes := nil;
f_mscomex.ExtratoContaCorrenteClientes1.enabled := true;
end;

procedure Tf_extratocc_clientes.me_datafincExit(Sender: TObject);
begin
if strtodate(me_datafinc.text) < strtodate(me_datainic.text) then begin
   showmessage('Data Final não pode ser menor que a data de início.');
   me_datafinc.setfocus;
end;

end;

procedure Tf_extratocc_clientes.FormActivate(Sender: TObject);
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

procedure Tf_extratocc_clientes.b_fechaclienteClick(Sender: TObject);
begin
close;
end;

procedure Tf_extratocc_clientes.btnExcelClick(Sender: TObject);
var i : Integer;
    v_spaco : String;
    v_credito, v_debito, v_saldoNoPeriodo, v_saldoAtual : Real;

begin
     v_spaco := '                                                                             ';
     v_credito := 0;
     v_debito := 0;
     v_saldoNoPeriodo := 0;
     If (me_datainic.text = '  /  /    ') or (me_datafinc.text = '  /  /    ') then begin
       showmessage('Informe o Período de Extrato.');
       me_datainic.SetFocus;
       Exit;
     End;


q_extratoexcluir.close;
////q_extratoexcluir.params[0].asstring := q_importadorescodigo.asstring;
q_extratoexcluir.execsql;

q_extratomovi.close;
////q_extratomovi.params[0].asstring := q_importadorescodigo.asstring;
q_extratomovi.execsql;

q_extratonumer.close;
////q_extratonumer.params[0].asstring := q_importadorescodigo.asstring;
q_extratonumer.execsql;

q_saldoanterior.close;
q_saldoanterior.params[0].asdatetime := strtodate(me_datainic.text);
q_saldoanterior.params[1].asstring := q_importadorescodigo.asstring;
q_saldoanterior.open;

q_extratonoperiodo.close;
q_extratonoperiodo.params[0].asstring := q_importadorescodigo.asstring;
q_extratonoperiodo.params[1].asdatetime := strtodate(me_datainic.text);
q_extratonoperiodo.params[2].asdatetime := strtodate(me_datafinc.text);
q_extratonoperiodo.open;

q_saldoposterior.close;
q_saldoposterior.params[0].asdatetime := strtodate(me_datafinc.text);
q_saldoposterior.params[1].asstring := q_importadorescodigo.asstring;
q_saldoposterior.open;

q_extratonoperiodo.Close;
     q_extratonoperiodo.params[0].asstring := q_importadorescodigo.asstring;
     q_extratonoperiodo.params[1].asdatetime := strtodate(me_datainic.text);
     q_extratonoperiodo.params[2].asdatetime := strtodate(me_datafinc.text);
     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Workbooks.add(1);

     Excel.visible := True;
     Excel.Worksheets[1].Name := 'Extrato';
     Excel.ActiveWindow.DisplayGridlines := False;
     Excel.Cells[1,1].Font.Size := 12;
     Excel.Cells[1,1] := 'MS2000 - Sistema Gerencial Aduaneiro';
     Excel.Cells[1,1].Font.Bold := True;
     Excel.Cells[2,1] := v_versao;
     Excel.Cells[2,1].Font.Bold := True;
     //Excel.Worksheets[1].PageSetup.PaperSize := '9';
     Excel.ActiveSheet.PageSetup.LeftMargin := '28';
     Excel.ActiveSheet.PageSetup.RightMargin := '28';
  //   Excel.WorkSheets.PageSetup.PageSize := 9;
     //     Excel.Worksheets[1].PageSetup.LeftMargin := '1.0';
 //    Excel.Worksheets[1].PageSetup.RightMargin := '1.0';

     Excel.Cells[5,1] := 'Extrato Conta Corrente de Clientes'  + ' - Período: ' + me_datainic.text + ' Até: ' + me_datafinc.text;
//     Excel.Cells[5, 1].Font.Color := clMaroon;
     Excel.Cells[5,1].Font.Bold := True;

     Excel.Cells.Range['A' + IntToStr(7), 'C' + IntToStr(7)].Merge;
     Excel.Cells[7,1] := 'Cliente: ' + q_importadoresRazao_Social.asstring;
     Excel.Cells[7,1].Font.Bold := True;
     Excel.Cells[7,1].Font.Size := 9;
     Excel.cells[7,1].Borders.Item[8].LineStyle := 2;
     Excel.cells[7,2].Borders.Item[8].LineStyle := 2;
     Excel.cells[7,3].Borders.Item[8].LineStyle := 2;
//     Excel.cells[7, 1].Find['cliente'].select;
  //   showmessage('1');
   //  excel.selection.Font.Color := 4;
//     Excel.Cells[6,1] := Excel.Cells[6,1] + 'Período';

//     Excel.Cells[6,2] := 'Período: ' + me_datainic.text + ' Até: ' + me_datafinc.text;

     Excel.Cells[8,1] := 'Data';
     Excel.Cells[8,1].HorizontalAlignment := -4108;
     Excel.Cells[8,2] := 'Histórico';
     Excel.Cells[8,2].HorizontalAlignment := -4108;
     Excel.Cells[8,3] := 'Valor';
     Excel.Cells[8,3].HorizontalAlignment := -4108;
     Excel.Cells[8,1].Font.Bold := True;
     Excel.Cells[8,2].Font.Bold := True;
     Excel.Cells[8,3].Font.Bold := True;
     Excel.Cells[8,1].Font.Size := 10;
     Excel.Cells[8,2].Font.Size := 10;
     Excel.Cells[8,3].Font.Size := 10;
     Excel.cells[8, 1].Borders.Item[9].LineStyle := 1;
     Excel.cells[8, 2].Borders.Item[9].LineStyle := 1;
     Excel.cells[8, 3].Borders.Item[9].LineStyle := 1;

     Excel.cells[8, 1].Borders.Item[8].LineStyle := 1;
     Excel.cells[8, 2].Borders.Item[8].LineStyle := 1;
     Excel.cells[8, 3].Borders.Item[8].LineStyle := 1;



     For i := 1 To 5 Do Excel.Cells.Range['A' + IntToStr(i), 'C' + IntToStr(i)].Merge;

     i:=9;
     q_extratonoperiodo.Open;
//     showmessage(inttostr(q_extratonoperiodo.RecordCount));
     q_extratonoperiodo.First;

     Excel.Cells.Range['A8', 'A8'].ColumnWidth := 9;
     Excel.Cells.Range['B8', 'B8'].ColumnWidth := 67; //78
     Excel.Cells.Range['C8', 'C8'].ColumnWidth := 15;
     q_extratonoperiodo.First;
     While Not q_extratonoperiodo.Eof Do Begin
          Excel.Cells[i,1] := q_extratonoperiodoData.AsString;
          Excel.Cells[i,2] := q_extratonoperiodoHistorico.AsString;
          If q_extratonoperiodoValor.AsFloat < 0 Then  Begin
            Excel.Cells[i,3] := '(' + FormatFloat('###,###,##0.00', (q_extratonoperiodoValor.AsFloat)) + ')';
            Excel.Cells[i,3].Font.Color := clMaroon;
            v_debito := v_debito + q_extratonoperiodoValor.AsFloat;
          End
          Else Begin
              Excel.Cells[i,3] := FormatFloat('###,###,##0.00', (q_extratonoperiodoValor.AsFloat));
              v_credito := v_credito + q_extratonoperiodoValor.AsFloat;
          End;
          Excel.Cells[i,3].HorizontalAlignment := -4152;
          Excel.Cells[i,3].numberFormat := '#.##0,00';
          Inc(i);

//          showmessage(q_extratonoperiodovalor.asString);

          v_saldoNoPeriodo := v_saldoNoPeriodo + q_extratonoperiodovalor.asfloat;
//          q_extratonoperiodo.Next;
          q_extratonoperiodo.Next;
     End;
     Excel.Range['A9', 'C'+inttostr(i)].Font.Size := 9;

     Excel.cells[i, 1].Borders.Item[9].LineStyle := 1;
     Excel.cells[i, 2].Borders.Item[9].LineStyle := 1;
     Excel.cells[i, 3].Borders.Item[9].LineStyle := 1;
     Inc(i);
     Inc(i);
//////
     Excel.cells[i, 2] := v_spaco + 'Saldo Anterior ao Período';
     Excel.cells[i, 3] := floattostrf(q_saldoanteriorsaldoanterior.asfloat,fffixed,15,2);
     Excel.Cells[i, 3].HorizontalAlignment := -4152;
     Excel.Cells[i, 3].Font.Color := clMaroon;

     Inc(i);
     Excel.cells[i, 2] := v_spaco + 'Créditos no Período';
     Excel.cells[i, 3] := floattostrf(v_credito,fffixed,15,2);
     Excel.Cells[i, 3].HorizontalAlignment := -4152;
     Excel.Cells[i, 3].Font.Color := clMaroon;

     Inc(i);
     Excel.cells[i, 2] := v_spaco + 'Débitos no Período';
     If v_debito < 0 Then v_debito := v_debito * (-1);
     Excel.cells[i, 3] := floattostrf(v_debito,fffixed,15,2);
     Excel.Cells[i, 3].HorizontalAlignment := -4152;
     Excel.Cells[i, 3].Font.Color := clMaroon;

     Inc(i);
     Excel.cells[i, 2] := v_spaco + 'Saldo ao final do Período';
//showmessage(f_extratocc_clientes.q_extratonoperiodovalor.AsString);

     v_saldoAtual := q_saldoanteriorsaldoanterior.asfloat + q_saldoposteriorsaldoposterior.asfloat + v_saldoNoPeriodo;

     v_saldoNoPeriodo :=  v_saldoNoPeriodo + q_saldoanteriorsaldoanterior.asfloat;
     Excel.cells[i, 3] := floattostrf(v_saldoNoPeriodo,fffixed,15,2);
     Excel.Cells[i, 3].HorizontalAlignment := -4152;
     Excel.Cells[i, 3].Font.Color := clMaroon;

     Inc(i);
     Excel.cells[i, 2] := v_spaco + 'Saldo Posterior ao Período';
     Excel.cells[i, 3] := floattostrf(q_saldoposteriorsaldoposterior.asfloat,fffixed,15,2);
     Excel.Cells[i, 3].HorizontalAlignment := -4152;
     Excel.Cells[i, 3].Font.Color := clMaroon;

     Inc(i);
     Excel.cells[i, 2] := v_spaco + 'Saldo Atual';
     Excel.cells[i, 3] := floattostrf(v_saldoAtual,fffixed,15,2);
     Excel.Cells[i, 3].HorizontalAlignment := -4152;
     Excel.Cells[i, 3].Font.Color := clMaroon;
//////

     Inc(i);
     Inc(i);
     Excel.cells[i, 1].Borders.Item[9].LineStyle := 1;
     Excel.cells[i, 2].Borders.Item[9].LineStyle := 1;
     Excel.cells[i, 3].Borders.Item[9].LineStyle := 1;
     Excel.Worksheets[1].Shapes.AddPicture ('d:\ms2000\fontesplus\ms2000.bmp', True, True, 375, 10, 110, 60);
end;

end.
