unit u_conresp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, Buttons;

type
  Tf_resp = class(TForm)
    q_resp: TQuery;
    q_respResponsavel_Empresa: TStringField;
    q_respCdigo: TStringField;
    q_respRazoSocial: TStringField;
    q_respCODIGO: TStringField;
    q_respDESCRICAO: TStringField;
    ds_qresp: TDataSource;
    DBGrid3: TDBGrid;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_resp: Tf_resp;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_resp.FormActivate(Sender: TObject);
begin
f_resp.Caption := v_nomecompleto+', estes processos estão sob sua responsabilidade. ';
q_resp.close;
q_resp.params[0].asstring := v_usuario;
f_resp.left := 0;
f_resp.top  := 0;
q_resp.open;

end;

procedure Tf_resp.BitBtn1Click(Sender: TObject);
begin
f_resp.close;
end;

procedure Tf_resp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_resp := nil;
end;

end.
