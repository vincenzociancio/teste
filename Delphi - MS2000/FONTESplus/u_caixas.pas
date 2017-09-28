unit u_caixas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables;

type
  TF_caixas = class(TForm)
    T_parametros: TTable;
    T_caixas: TTable;
    ds_parametros: TDataSource;
    ds_caixas: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_caixas: TF_caixas;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_caixas.FormActivate(Sender: TObject);
begin
f_caixas.left := 0;
f_caixas.top  := 0;
end;

procedure TF_caixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_caixas := nil;
f_mscomex.caixas2.enabled := true;

end;

end.
