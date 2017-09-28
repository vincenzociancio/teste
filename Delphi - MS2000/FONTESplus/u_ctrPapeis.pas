unit u_ctrPapeis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls;

type
  Tf_papeis = class(TForm)
    Panel2: TPanel;
    pnlPrinc: TPanel;
    pnlMenu: TPanel;
    btnIncluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnimp: TBitBtn;
    btnSair_Item: TBitBtn;
    Panel6: TPanel;
    dbG_papeis: TDBGrid;
    q_papel: TQuery;
    ds_qpapel: TDataSource;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    t_papel: TTable;
    ds_tpapel: TDataSource;
    paneledt: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    q_papelData: TDateTimeField;
    q_papelDescricao: TStringField;
    q_papelDebitos: TFloatField;
    q_papelCreditos: TFloatField;
    q_papelSaldo: TFloatField;
    q_papelImpressoes: TFloatField;
    q_papelImpressoes_Dia: TFloatField;
    q_papelFechado: TStringField;
    q_papelUsuario: TStringField;
    t_papelData: TDateTimeField;
    t_papelDescricao: TStringField;
    t_papelDebitos: TFloatField;
    t_papelCreditos: TFloatField;
    t_papelSaldo: TFloatField;
    t_papelImpressoes: TFloatField;
    t_papelImpressoes_Dia: TFloatField;
    t_papelFechado: TStringField;
    t_papelUsuario: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure q_papelAfterScroll(DataSet: TDataSet);
    procedure dbG_papeisDblClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_papeis: Tf_papeis;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_papeis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_papeis := Nil;
   //  F_MSCOMEX.ControledePapisImpresses1.Enabled := true;
end;

procedure Tf_papeis.FormActivate(Sender: TObject);
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

end;

procedure Tf_papeis.q_papelAfterScroll(DataSet: TDataSet);
begin
t_papel.FindKey([q_papeldata.asdatetime]);
paneledt.Enabled := true;
btnSalvar.Enabled := true;
btncancelar.Enabled := true;
if t_papelfechado.asstring='SIM' THEN begin
    paneledt.Enabled := FALSE;
    btnSalvar.Enabled := false;
    btncancelar.Enabled := false;    
end;
end;

procedure Tf_papeis.dbG_papeisDblClick(Sender: TObject);
var qdata:string;
begin
if t_papelfechado.asstring <> 'SIM' then begin

t_papel.edit;
t_papelfechado.asstring := 'SIM';
t_papelusuario.asstring := v_usuario;
t_papel.post;
qdata := t_papeldata.asstring;
q_papel.close;
q_papel.open;
q_papel.locate('data',qdata,[]);
end;
end;

procedure Tf_papeis.btnIncluirClick(Sender: TObject);
begin
if t_papel.FindKey([strtodate(v_dataFollow)]) then begin
   Showmessage(v_usuario+', Data já incluída');
   exit;
end;
btnSalvar.Enabled := true;
btncancelar.Enabled := true;
paneledt.Enabled := true;
t_papel.append;
t_papeldata.asstring := (v_dataFollow);
t_papelusuario.asstring := v_usuario;

end;

procedure Tf_papeis.btnCancelarClick(Sender: TObject);
begin
t_papel.cancel;
q_papel.close;
q_papel.open;
q_papel.last;
end;

procedure Tf_papeis.FormCreate(Sender: TObject);
begin
t_papel.open;
q_papel.open;
end;

procedure Tf_papeis.btnSalvarClick(Sender: TObject);
var qdata:string;
    qsaldo,qsaldoi:real;
begin
t_papel.edit;
t_papel.post;
qdata := t_papeldata.asstring;
t_papel.first;
qsaldo := 0;
qsaldoi := 0;
while not t_papel.eof do begin
     t_papel.edit;
     t_papelsaldo.asfloat := qsaldo+(t_papelcreditos.asfloat-t_papeldebitos.asfloat);
     t_papelimpressoes_dia.asfloat := t_papelimpressoes.asfloat-qsaldoi;
     t_papel.post;
     qsaldo  := t_papelsaldo.asfloat;
     qsaldoi := t_papelimpressoes.asfloat;

     t_papel.next;
end;
q_papel.close;
q_papel.open;
q_papel.locate('data',qdata,[]);

end;

end.
