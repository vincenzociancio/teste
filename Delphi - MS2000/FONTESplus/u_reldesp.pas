unit u_reldesp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  Tf_reldesp = class(TForm)
    b_imprime: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    me_dataini: TMaskEdit;
    Label6: TLabel;
    me_datafin: TMaskEdit;
    rg_tipo: TRadioGroup;
    Label1: TLabel;
    ds_plano: TDataSource;
    gb_ana: TGroupBox;
    cb_todos: TCheckBox;
    dblc_plano: TDBLookupComboBox;
    q_plano: TQuery;
    q_desp: TQuery;
    q_plano2: TQuery;
    q_deldespm: TQuery;
    q_incdespm: TQuery;
    q_emp: TQuery;
    ds_qemp: TDataSource;
    DBGrid1: TDBGrid;
    q_incdespm2: TQuery;
    Q_despA: TQuery;
    q_plano2Descricao: TStringField;
    q_plano2Codigo: TStringField;
    q_planoDescricao: TStringField;
    q_planoCodigo: TStringField;
    Q_despANumerario: TStringField;
    Q_despADescricao: TStringField;
    q_despusuario_temp: TStringField;
    q_despCliente: TStringField;
    q_despPlano: TStringField;
    q_despData: TDateTimeField;
    q_despEmpresa: TStringField;
    q_despFilial: TStringField;
    q_despccorrente: TIntegerField;
    q_despTipo: TIntegerField;
    q_despDescricao: TStringField;
    q_despDoc: TStringField;
    q_despHistorico: TStringField;
    q_despUsuario: TStringField;
    q_despConta_Corrente: TStringField;
    q_despvalor: TFloatField;
    q_despobs: TStringField;
    q_despNumerario: TStringField;
    q_empEmpresa: TStringField;
    q_empFilial: TStringField;
    q_empCodigo: TStringField;
    q_empRazao_Social: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure b_imprimeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rg_tipoClick(Sender: TObject);
    procedure dblc_planoClick(Sender: TObject);
    procedure cb_todosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure q_planoAfterScroll(DataSet: TDataSet);
    procedure Q_despAAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_reldesp: Tf_reldesp;
  v_total:real;

implementation

uses U_MSCOMEX, u_reldespq, u_reldespqana;

{$R *.DFM}

procedure Tf_reldesp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        q_deldespm.params[0].asstring := v_usuario;
        q_deldespm.execsql;

        action := cafree;
        f_reldesp := nil;
        f_mscomex.DespesasMensais1.enabled := true;

end;

procedure Tf_reldesp.BitBtn2Click(Sender: TObject);
begin
f_reldesp.close;
end;

procedure Tf_reldesp.b_imprimeClick(Sender: TObject);
var qplanofora:string;
begin

q_deldespm.params[0].asstring := v_usuario;
q_deldespm.execsql;
//showmessage('1');

q_incdespm.params[0].asstring := v_usuario;
q_incdespm.params[1].asdatetime := strtodate(me_dataini.text);
q_incdespm.params[2].asdatetime := strtodate(me_datafin.text);
q_incdespm.execsql;
//showmessage('2');

q_incdespm2.params[0].asstring := v_usuario;
q_incdespm2.execsql;
//showmessage('3');

////if MessageDlg(v_usuario+', a geração deste relatório pode demorar alguns minutos. Por favor aguarde. Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrYES then begin
qplanofora :='ZERO';
if cb_todos.checked = true then begin
   if MessageDlg(v_usuario+', deseja imprimir também as despesas referentes a Numerários de Processos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
      q_plano2.filter := 'codigo <> '+chr(39)+'NUM'+chr(39);
      qplanofora :='NUM';
   end;
end
else begin
   q_plano2.filter := 'codigo = '+chr(39)+q_plano2codigo.asstring+chr(39);
   qplanofora :='ZERO';
end;

if rg_tipo.itemindex = 0 then begin

   qr_reldesp.q_desp.close;
   qr_reldesp.qrl_periodo.caption := ' de '+me_dataini.text+' até '+me_datafin.text;
   qr_reldesp.qrl_total.caption   := '0';

   qr_reldesp.qrl_versao.caption  := v_versao;
   qr_reldesp.qrl_empresa.caption := q_emprazao_social.asstring;
   qr_reldesp.q_desp.params[0].asdatetime := strtodate(me_dataini.text);
   qr_reldesp.q_desp.params[1].asdatetime := strtodate(me_datafin.text);
   qr_reldesp.q_desp.params[2].asstring   := qplanofora;
   qr_reldesp.q_desp.params[3].asstring   := v_usuario;
   qr_reldesp.q_desp.params[4].asstring   := q_empcodigo.asstring;

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

{   f_reldesp.q_despA.close;
   f_reldesp.q_despA.params[0].asstring   := v_usuario;
   f_reldesp.q_despA.params[1].asstring   := q_empcodigo.asstring;
   f_reldesp.q_despA.params[2].asstring   := f_reldesp.q_planocodigo.asstring;
   f_reldesp.q_despA.params[3].asdatetime := strtodate(f_reldesp.me_dataini.text);
   f_reldesp.q_despA.params[4].asdatetime := strtodate(f_reldesp.me_datafin.text);
   f_reldesp.q_despA.open;       }

   qr_reldespana.qrl_versao.caption  := v_versao;
   qr_reldespana.qrl_empresa.caption := q_emprazao_social.asstring;

   qr_reldespana.qrl_periodo.caption := ' de '+me_dataini.text+' até '+me_datafin.text;
   if cb_todos.checked then qr_reldespana.qrl_plano.caption := 'Todos'
   else qr_reldespana.qrl_plano.caption := q_planodescricao.asstring;
   qr_reldespana.qrl_total.caption   := '0';
   qr_reldespana.preview;

end;
///end;
end;

procedure Tf_reldesp.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


 {    h := Height;
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
     width := w;  }
///copy(datetostr(date()),1,2)+copy(datetostr(date()),4,2)+copy(datetostr(date()),7,4);
q_plano2.close;
q_plano2.open;
///q_plano2.filter := '';

end;


procedure Tf_reldesp.rg_tipoClick(Sender: TObject);
begin
if rg_tipo.itemindex = 0 then gb_ana.enabled := false
else gb_ana.enabled := true;
end;

procedure Tf_reldesp.dblc_planoClick(Sender: TObject);
begin
cb_todos.checked := false;
q_plano2.filter := 'Codigo = '+chr(39)+q_plano2codigo.asstring+chr(39);
end;

procedure Tf_reldesp.cb_todosClick(Sender: TObject);
begin

if cb_todos.checked then q_plano2.filter := '';

end;

procedure Tf_reldesp.FormCreate(Sender: TObject);
begin

q_emp.open;
//q_plano.open;
///q_plano2.open;

me_dataini.text := datetostr(date()-30);
me_datafin.text := datetostr(date());

if not assigned (qr_reldesp) then Application.CreateForm(Tqr_reldesp, qr_reldesp);
if not assigned (qr_reldespana) then Application.CreateForm(Tqr_reldespana, qr_reldespana);

end;

procedure Tf_reldesp.q_planoAfterScroll(DataSet: TDataSet);
begin

////   qr_reldespana.qrl_sub.caption := '0';
  // SHOWMESSAGE(q_empcodigo.asstring);
   f_reldesp.q_despA.close;
   f_reldesp.q_despA.params[0].asstring   := v_usuario;
   f_reldesp.q_despA.params[1].asstring   := q_empcodigo.asstring;
   f_reldesp.q_despA.params[2].asstring   := f_reldesp.q_planocodigo.asstring;
   f_reldesp.q_despA.params[3].asdatetime := strtodate(f_reldesp.me_dataini.text);
   f_reldesp.q_despA.params[4].asdatetime := strtodate(f_reldesp.me_datafin.text);
   f_reldesp.q_despA.open;
   qr_reldespana.qrb_plano.enabled := true;
   qr_reldespana.qrb_despesa.enabled := true;
   qr_reldespana.titulocreditos.enabled := true;
   qr_reldespana.qrb_lanca.enabled := true;
   qr_reldespana.rodapeTP.enabled := true;
   qr_reldespana.rodapePC.enabled := true;
   if q_despA.RecordCount=0 then begin
      qr_reldespana.qrb_plano.enabled := false;
      qr_reldespana.qrb_despesa.enabled := false;
      qr_reldespana.titulocreditos.enabled := false;
      qr_reldespana.qrb_lanca.enabled := false;
      qr_reldespana.rodapeTP.enabled := false;
      qr_reldespana.rodapePC.enabled := false;


   end;

 
end;

procedure Tf_reldesp.Q_despAAfterScroll(DataSet: TDataSet);
begin
   f_reldesp.q_desp.close;
   f_reldesp.q_desp.params[0].asstring   := v_usuario;
   f_reldesp.q_desp.params[1].asstring   := q_empcodigo.asstring;
   f_reldesp.q_desp.params[2].asstring   := f_reldesp.q_planocodigo.asstring;
   f_reldesp.q_desp.params[3].asstring   := f_reldesp.q_despANumerario.asstring;
   f_reldesp.q_desp.params[4].asdatetime := strtodate(f_reldesp.me_dataini.text);
   f_reldesp.q_desp.params[5].asdatetime := strtodate(f_reldesp.me_datafin.text);
   f_reldesp.q_desp.open;
   if f_reldesp.q_despvalor.asfloat = 0 then begin
//      qr_reldespana.qrband2.enabled := false;
//      qr_reldespana.titulocreditos.enabled := false;
///      qr_reldespana.subcreditos.enabled := false;
//      qr_reldespana.rodapecreditos.enabled := false;
   end
   else begin
//      qr_reldespana.qrband2.enabled := true;
//      qr_reldespana.titulocreditos.enabled := true;
///      qr_reldespana.subcreditos.enabled := true;
///      qr_reldespana.rodapecreditos.enabled := true;
   end;

end;

end.
