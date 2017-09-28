unit u_profollowupRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, DBCtrls, DBTables, Buttons, ExtCtrls;

type
  TF_profollowupRes = class(TForm)
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBMemo2: TDBMemo;
    pnlBaixo: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_profollowupRes: TF_profollowupRes;

implementation

uses u_profollowup;

{$R *.DFM}

procedure TF_profollowupRes.btnSairClick(Sender: TObject);
begin
F_proFollowupRes.Close;
end;

procedure TF_profollowupRes.btnSalvarClick(Sender: TObject);
begin
      f_profollowup.t_followres.edit;
      f_profollowup.t_followres.post;
end;

procedure TF_profollowupRes.btnCancelarClick(Sender: TObject);
begin
    f_profollowup.t_followres.cancel;
end;

procedure TF_profollowupRes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_profollowup.btnResumido.Enabled := True;
     f_profollowupres := Nil;
     Action := caFree;
end;

procedure TF_profollowupRes.FormActivate(Sender: TObject);
begin
    F_profollowupRes.Caption := 'Follow Up de Processos Resumido : '+  f_profollowup.ME_nossaref.text;
end;

end.
