unit u_controleRegistroTreinamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleRegistroTreinamento = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtTreinamento: TEdit;
    edtMinistrado: TEdit;
    edtData: TEdit;
    edtLocal: TEdit;
    btnFechar: TBitBtn;
    btnImprimir: TBitBtn;
    Label5: TLabel;
    edtHorario: TEdit;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_controleRegistroTreinamento: TF_controleRegistroTreinamento;

implementation

uses U_relControleTreinamento;

{$R *.DFM}

procedure TF_controleRegistroTreinamento.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_Treinamento) then Application.CreateForm(TQR_Controle_Treinamento, QR_Controle_Treinamento);
    // QR_importadores.q_Import.Open;
     QR_Controle_Treinamento.Preview;
end;

procedure TF_controleRegistroTreinamento.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleRegistroTreinamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_controleRegistroTreinamento := nil;
  Action := caFree;
end;

end.
