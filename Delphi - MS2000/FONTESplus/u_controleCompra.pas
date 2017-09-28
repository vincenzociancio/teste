unit u_controleCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleCompra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtFornecedor: TEdit;
    edtEndereco: TEdit;
    edtData: TEdit;
    edtVendedor: TEdit;
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
  F_controleCompra: TF_controleCompra;

implementation

uses u_RelcontroleCompra;

{$R *.DFM}

procedure TF_controleCompra.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_compra) then Application.CreateForm(TQR_Controle_compra, QR_Controle_compra);
    // QR_importadores.q_Import.Open;
     QR_Controle_compra.Preview;
end;

procedure TF_controleCompra.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    F_controleCompra:= nil;
    Action := caFree;
end;

end.
