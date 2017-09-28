unit U_about;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg;

type
  TF_SOBRE = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    L_sistema2: TLabel;
    L_sistema1: TLabel;
    L_versao: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_SOBRE: TF_SOBRE;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_SOBRE.Panel1Click(Sender: TObject);
begin
f_sobre.close;
end;

procedure TF_SOBRE.FormActivate(Sender: TObject);
begin
    L_sistema2.caption := v_sistema;
    L_sistema1.caption := v_sistema;
    L_versao.caption := v_versao;

end;

procedure TF_SOBRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_sobre := nil;
end;

end.

