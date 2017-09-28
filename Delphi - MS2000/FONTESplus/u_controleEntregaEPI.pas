unit u_controleEntregaEPI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleEntregaEPI = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNome: TEdit;
    edtArea: TEdit;
    edtCargo: TEdit;
    edtMatricula: TEdit;
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
  F_controleEntregaEPI: TF_controleEntregaEPI;

implementation

uses u_RelcontroleEntregaEPI;

{$R *.DFM}

procedure TF_controleEntregaEPI.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_EntregaEPI) then Application.CreateForm(TQR_Controle_EntregaEPI, QR_Controle_EntregaEPI);
    // QR_importadores.q_Import.Open;
     QR_Controle_EntregaEPI.Preview;
end;

procedure TF_controleEntregaEPI.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleEntregaEPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    F_controleEntregaEPI := nil;
    Action := caFree;
end;

end.
