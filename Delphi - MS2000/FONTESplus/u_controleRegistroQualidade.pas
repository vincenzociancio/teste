unit u_controleRegistroQualidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleRegistroQualidade = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtResponsavel: TEdit;
    edtCargo: TEdit;
    edtData: TEdit;
    edtSetor: TEdit;
    btnFechar: TBitBtn;
    btnImprimir: TBitBtn;
    Label5: TLabel;
    edtVagas: TEdit;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_controleRegistroQualidade: TF_controleRegistroQualidade;

implementation

uses U_relControleQualidade;

{$R *.DFM}

procedure TF_controleRegistroQualidade.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_Qualidade) then Application.CreateForm(TQR_Controle_Qualidade, QR_Controle_Qualidade);
    // QR_importadores.q_Import.Open;
     QR_Controle_Qualidade.Preview;
end;

procedure TF_controleRegistroQualidade.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TF_controleRegistroQualidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_controleRegistroQualidade := nil;
  Action := caFree;
end;

end.
