unit u_controleRequisicaoCompras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleRequisicaoCompras = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    edtRequisitante: TEdit;
    edtData: TEdit;
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
  F_controleRequisicaoCompras: TF_controleRequisicaoCompras;

implementation

uses u_RelcontroleRequisicaoCompra;

{$R *.DFM}

procedure TF_controleRequisicaoCompras.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_Requisicao_Compras) then Application.CreateForm(TQR_Controle_Requisicao_Compras, QR_Controle_Requisicao_Compras);
    // QR_importadores.q_Import.Open;
     QR_Controle_Requisicao_Compras.Preview;
end;

procedure TF_controleRequisicaoCompras.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleRequisicaoCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    F_controleRequisicaoCompras:= nil;
    Action := caFree;
end;

end.
