unit u_controleveiculo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleVeiculo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCondutor: TEdit;
    edtCarro: TEdit;
    edtPlaca: TEdit;
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
  F_controleVeiculo: TF_controleVeiculo;

implementation

uses U_relControleVeiculo;

{$R *.DFM}

procedure TF_controleVeiculo.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_veiculos) then Application.CreateForm(TQR_Controle_veiculos, QR_Controle_veiculos);
    // QR_importadores.q_Import.Open;
     QR_Controle_veiculos.Preview;
end;

procedure TF_controleVeiculo.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_controleVeiculo := nil;
  Action := caFree;
end;

end.
