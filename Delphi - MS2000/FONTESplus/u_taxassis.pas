unit u_taxassis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls;

type
  Tf_taxas = class(TForm)
    p_taxas: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    t_taxas: TTable;
    ds_taxas: TDataSource;
    t_taxasCodigo: TStringField;
    t_taxasDescricao: TStringField;
    t_taxasTaxa_Conversao: TStringField;
    t_taxasVigencia_Inicio_Taxa: TStringField;
    t_taxasVigencia_Fim_Taxa: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_taxas: Tf_taxas;

implementation

{$R *.DFM}

procedure Tf_taxas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_taxas := nil;

end;

procedure Tf_taxas.FormActivate(Sender: TObject);
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

end;

end.
