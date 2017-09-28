unit u_controlenotebook;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TF_controleNotebook = class(TForm)
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
  F_controleNotebook: TF_controleNotebook;

implementation

uses U_relControleNotebook;

{$R *.DFM}

procedure TF_controleNotebook.btnImprimirClick(Sender: TObject);
begin
   if not Assigned(QR_Controle_notebook) then Application.CreateForm(TQR_Controle_notebook, QR_Controle_notebook);
    // QR_importadores.q_Import.Open;
     QR_Controle_notebook.Preview;
end;

procedure TF_controleNotebook.btnFecharClick(Sender: TObject);
begin
    close;
end;

procedure TF_controleNotebook.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    F_controleNotebook := nil;
    Action := caFree;
end;

end.
