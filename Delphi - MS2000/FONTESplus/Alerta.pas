unit Alerta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  Tf_alerta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    RichEdit1: TRichEdit;
    Panel4: TPanel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_alerta: Tf_alerta;

implementation

{$R *.DFM}

procedure Tf_alerta.BitBtn1Click(Sender: TObject);
begin
f_alerta.close;
end;

end.
