unit u_relapucpmf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tf_relapucpmf = class(TForm)
    b_imprime: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    me_dataini: TMaskEdit;
    Label6: TLabel;
    me_datafin: TMaskEdit;
    Label1: TLabel;
    q_emp: TQuery;
    q_empEmpresa: TStringField;
    q_empFilial: TStringField;
    q_empCodigo: TStringField;
    q_empRazoSocial: TStringField;
    ds_qemp: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure b_imprimeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_relapucpmf: Tf_relapucpmf;
  v_total:real;

implementation

uses U_MSCOMEX, u_reldespq, u_reldespqana;

{$R *.DFM}

procedure Tf_relapucpmf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action := cafree;
        f_relapucpmf := nil;
        f_mscomex.ApuraodeCPMF1.enabled := true;

end;

procedure Tf_relapucpmf.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Tf_relapucpmf.b_imprimeClick(Sender: TObject);
begin
{
q_deldespm.params[0].asstring := v_usuario;
q_deldespm.execsql;

q_incdespm.params[0].asstring := v_usuario;
q_incdespm.params[1].asdatetime := strtodate(me_dataini.text);
q_incdespm.params[2].asdatetime := strtodate(me_datafin.text);
q_incdespm.execsql;

q_incdespm2.params[0].asstring := v_usuario;
q_incdespm2.execsql;


////if MessageDlg(v_usuario+', a geração deste relatório pode demorar alguns minutos. Por favor aguarde. Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then begin

if cb_todos.checked = true then begin
   if MessageDlg(v_usuario+', deseja imprimir também as despesas referentes a Numerários de Processos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
      q_plano2.filter := 'codigo <> '+chr(39)+'NUM'+chr(39);
   end;
end
else begin
   q_plano2.filter := 'codigo = '+chr(39)+q_plano2codigo.asstring+chr(39);
end;

if rg_tipo.itemindex = 0 then begin

   qr_reldesp.q_desp.close;
   qr_reldesp.qrl_periodo.caption := ' de '+me_dataini.text+' até '+me_datafin.text;
   qr_reldesp.qrl_total.caption   := '0';

   qr_reldesp.qrl_versao.caption  := v_versao;
   qr_reldesp.qrl_empresa.caption := q_emprazosocial.asstring;
   qr_reldesp.q_desp.params[0].asdatetime := strtodate(me_dataini.text);
   qr_reldesp.q_desp.params[1].asdatetime := strtodate(me_datafin.text);
   qr_reldesp.q_desp.params[2].asstring   := v_usuario;
   qr_reldesp.q_desp.params[3].asstring   := q_empcodigo.asstring;

   qr_reldesp.q_desp.open;
   v_total := 0;
   while not qr_reldesp.q_desp.eof do begin
         v_total := v_total+qr_reldesp.q_despqvalor.asfloat;
         qr_reldesp.q_desp.next;
   end;

   qr_reldesp.preview;
end
else begin

   q_plano.filter := q_plano2.filter;
   q_plano.close;
   q_plano.open;

   qr_reldespana.qrl_versao.caption  := v_versao;
   qr_reldespana.qrl_empresa.caption := q_emprazosocial.asstring;

   qr_reldespana.qrl_periodo.caption := ' de '+me_dataini.text+' até '+me_datafin.text;
   if cb_todos.checked then qr_reldespana.qrl_plano.caption := 'Todos'
   else qr_reldespana.qrl_plano.caption := q_planodescricao.asstring;

   qr_reldespana.preview;

end;
///end;
}
end;

procedure Tf_relapucpmf.FormCreate(Sender: TObject);
begin

q_emp.open;
//q_plano.open;
///q_plano2.open;

me_dataini.text := datetostr(date()-30);
me_datafin.text := datetostr(date());
 {
if not assigned (qr_reldesp) then Application.CreateForm(Tqr_reldesp, qr_reldesp);
if not assigned (qr_reldespana) then Application.CreateForm(Tqr_reldespana, qr_reldespana);
  }
end;

end.
