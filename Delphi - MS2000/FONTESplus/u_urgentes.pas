unit u_urgentes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  Tf_urgentes = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    q_urg: TQuery;
    ds_qurg: TDataSource;
    DBG_followup: TDBGrid;
    DS_follow: TDataSource;
    q_followup: TQuery;
    q_urgCliente: TStringField;
    q_urgProcesso: TStringField;
    q_urgRefcli: TStringField;
    q_urgLocalizacao_da_Pasta: TStringField;
    q_urgEmpresa: TStringField;
    q_urgFilial: TStringField;
    q_followupEmpresa: TStringField;
    q_followupFilial: TStringField;
    q_followupCodigo: TStringField;
    q_followupSequencial: TAutoIncField;
    q_followupData: TDateTimeField;
    q_followupHora: TStringField;
    q_followupCodevento: TStringField;
    q_followupqevento: TStringField;
    q_followupCodobs: TStringField;
    q_followupqobs: TStringField;
    q_followupObs_especifica: TStringField;
    q_followuplink: TStringField;
    q_followupsequencial_1: TAutoIncField;
    procedure q_urgAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_urgentes: Tf_urgentes;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_urgentes.q_urgAfterScroll(DataSet: TDataSet);
begin
q_followup.close;
q_followup.params[0].asstring := q_urgempresa.asstring;
q_followup.params[1].asstring := q_urgfilial.asstring;
q_followup.params[2].asstring := q_urgprocesso.asstring;
q_followup.open;

end;

procedure Tf_urgentes.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


    { h := Height;
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

q_urg.open;

q_followup.close;
q_followup.params[0].asstring := q_urgempresa.asstring;
q_followup.params[1].asstring := q_urgfilial.asstring;
q_followup.params[2].asstring := q_urgprocesso.asstring;
q_followup.open;

end;

procedure Tf_urgentes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_urgentes := nil;
    // f_mscomex.ProcessosUrgentes1.Enabled := True;
end;

end.
