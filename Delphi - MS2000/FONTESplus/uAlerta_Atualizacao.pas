unit uAlerta_Atualizacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, StdCtrls, Db, DBTables;

type
  TfrmAlerta = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    lblSegundos: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    timer: TTimer;
    procedure timerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    tempo : integer;
  public
    { Public declarations }
  end;

var
  frmAlerta: TfrmAlerta;

implementation

{$R *.DFM}

procedure TfrmAlerta.timerTimer(Sender: TObject);
  var
    x : integer;
begin
  inc(tempo, -1);
  lblSegundos.Caption := IntToStr(tempo) + ' segundos...';
  if ( tempo <= 0 ) then
    lblSegundos.Caption := 'O sistema será finalizado';
end;

procedure TfrmAlerta.FormShow(Sender: TObject);
begin
  tempo := 60;
end;

end.
