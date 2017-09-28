unit uGrafico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart;

type
  TfrmGrafico = class(TForm)
    dbchCheck: TDBChart;
    Series1: TPieSeries;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmGrafico: TfrmGrafico;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmGrafico.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams( Params ) ;
  Params.Style := Params.Style and (not WS_CAPTION)
end;

procedure TfrmGrafico.FormShow(Sender: TObject);
begin
  Self.Left := (F_MSCOMEX.ClientWidth - frmGrafico.ClientWidth)-25;
  Self.Top := (F_MSCOMEX.ClientHeight - frmGrafico.ClientHeight)-45;
end;

end.
