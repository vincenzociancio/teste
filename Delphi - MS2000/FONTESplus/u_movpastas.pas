unit u_movpastas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Db, DBTables, Buttons, Grids, DBGrids;

type
  Tf_movpastas = class(TForm)
    q_mov: TQuery;
    ds_qmov: TDataSource;
    Label1: TLabel;
    me_processo: TMaskEdit;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    q_movmovimento: TAutoIncField;
    q_movProcesso: TStringField;
    q_movDe_usuario: TStringField;
    q_movPara_usuario: TStringField;
    q_movData: TDateTimeField;
    q_movHora: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_movpastas: Tf_movpastas;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_movpastas.SpeedButton1Click(Sender: TObject);
begin
q_mov.close;
q_mov.Params[0].asstring := me_processo.text;
q_mov.open;
if (q_mov.recordcount = 0) then begin
   showmessage('Processo não possue Movimentação de pasta.');
   me_processo.text := '';
end;

end;

procedure Tf_movpastas.FormActivate(Sender: TObject);
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
     width := w;}
end;

procedure Tf_movpastas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     f_movpastas := nil;
     f_mscomex.MovimentaodePastas1.Enabled := True;
end;

end.
