unit u_bancos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  Tf_bancos = class(TForm)
    T_parametros: TTable;
    ds_parametros: TDataSource;
    T_bancos: TTable;
    ds_bancos: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_bancos: Tf_bancos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_bancos.FormActivate(Sender: TObject);
begin
f_bancos.left := 0;
f_bancos.top  := 0;
end;

procedure Tf_bancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_bancos := nil;
f_mscomex.bancos2.enabled := true;

end;

end.
