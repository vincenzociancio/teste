unit u_dataFollow;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables;

type
  Tf_dataFollow = class(TForm)
    DB_MSCOMEX: TDatabase;
    t_dataFollow: TTable;
    t_dataFollowData: TDateTimeField;
    q_up01: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_dataFollow: Tf_dataFollow;

implementation

{$R *.DFM}

procedure Tf_dataFollow.FormCreate(Sender: TObject);
begin
    DB_MSCOMEX.Params.Values['USER NAME'] := '';
    DB_MSCOMEX.Params.Values['PASSWORD'] := 'lasbrug30';
    DB_MSCOMEX.Connected := true;
    t_dataFollow.open;
end;

procedure Tf_dataFollow.FormShow(Sender: TObject);

begin

t_dataFollow.Edit;
t_dataFollowdata.asstring := datetostr(date());
t_dataFollow.post;


//q_up01.ExecSQL;
f_dataFollow.close;

end;

end.
