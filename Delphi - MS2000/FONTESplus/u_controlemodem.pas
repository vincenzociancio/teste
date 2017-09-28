unit u_controlemodem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleModem = class(TForm)
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
  F_controleModem: TF_controleModem;

implementation

uses U_relControleModem;

{$R *.DFM}

procedure TF_controleModem.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_modem) then Application.CreateForm(TQR_Controle_modem, QR_Controle_modem);
    // QR_importadores.q_Import.Open;
     QR_Controle_modem.Preview;
end;

procedure TF_controleModem.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleModem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    F_controleModem := nil;
    Action := caFree;
end;

end.
