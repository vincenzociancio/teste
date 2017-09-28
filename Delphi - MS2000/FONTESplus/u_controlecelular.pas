unit u_controlecelular;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleCelular = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtUsuario: TEdit;
    edtAparelho: TEdit;
    edtSerie: TEdit;
    edtNumero: TEdit;
    btnFechar: TBitBtn;
    btnImprimir: TBitBtn;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_controleCelular: TF_controleCelular;

implementation

uses u_Relcontrolecelular;

{$R *.DFM}

procedure TF_controleCelular.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_celular) then Application.CreateForm(TQR_Controle_celular, QR_Controle_celular);
    // QR_importadores.q_Import.Open;
     QR_Controle_celular.Preview;
end;

procedure TF_controleCelular.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleCelular.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   F_controleCelular := nil;
   Action := caFree;
end;

end.
