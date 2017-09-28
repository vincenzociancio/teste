unit u_Sac;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Grids, DBGrids;

type
  TfrmSac = class(TForm)
    pnlTop: TPanel;
    dbgSac: TDBGrid;
    Label1: TLabel;
    dsSac: TDataSource;
    qrSac: TQuery;
    qrSacFoco: TStringField;
    qrSacAssunto: TStringField;
    qrSacComentarios: TStringField;
    qrSacData_Sac: TStringField;
    qrSacNome: TStringField;
    qrSacEmail: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSac: TfrmSac;

implementation

{$R *.DFM}

procedure TfrmSac.FormActivate(Sender: TObject);
begin
 qrSac.close;
 qrSac.open;
end;

procedure TfrmSac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      frmSac := Nil;
     Action := caFree;
    // F_MSCOMEX.CapaDISepetiba1.enabled := True;
end;

end.
