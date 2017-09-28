unit U_concertifi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Db, DBTables, StdCtrls, Mask, DBCtrls;
                                            
type
  Tf_concertific = class(TForm)
    Panel1: TPanel;
    q_certif: TQuery;
    ds_qcertif: TDataSource;
    DBGrid1: TDBGrid;
    q_certifqimp: TStringField;
    q_certifqdescon: TStringField;
    q_certifqvigini: TDateTimeField;
    q_certifqvigfin: TDateTimeField;
    q_certifqdoc: TStringField;
    q_certifqdias: TIntegerField;
    q_certifqdiastexto: TStringField;
    q_certifqdescont: TStringField;
    q_certifqdescloc: TStringField;
    q_certifqsubtipo: TStringField;
    q_certifOrgao: TStringField;
    q_certifObservacoes: TStringField;
    q_certifqstatus: TStringField;
    q_certifqdescstatus: TStringField;
    q_certifProcesso: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_concertific: Tf_concertific;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_concertific.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_concertific := nil;
f_mscomex.Certificados1.enabled := true;

end;

procedure Tf_concertific.FormActivate(Sender: TObject);
begin
     Left := 1;
     Top  := 1;


q_certif.active := false;
q_certif.active := true;
end;

end.
