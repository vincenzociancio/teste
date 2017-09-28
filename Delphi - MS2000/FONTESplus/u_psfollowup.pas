unit u_psfollowup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Gauges, Grids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  Tf_psfollowup = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    b_fecha: TBitBtn;
    sg_follow: TStringGrid;
    Panel4: TPanel;
    Label2: TLabel;
    g_processa: TGauge;
    b_imprime: TBitBtn;
    procedure b_fechaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_psfollowup: Tf_psfollowup;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_psfollowup.b_fechaClick(Sender: TObject);
begin
f_psfollowup.close;
end;

procedure Tf_psfollowup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

if MessageDlg('Deseja repetir este Aviso de Follow Up daqui à 30 minutos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
   f_mscomex.timer_follow.enabled := false;
end;

F_psfollowup.sg_follow.Visible := false;
F_psfollowup.panel2.visible := false;
action := cafree;
f_psfollowup := nil;

end;

procedure Tf_psfollowup.FormActivate(Sender: TObject);
begin
f_psfollowup.left := 15;
f_psfollowup.top  := 15;

end;

end.
