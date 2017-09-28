unit uSolicitacaoNumerarioOBS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TfrmSolicitacaoNumerarioOBS = class(TForm)
    pnlTopo: TPanel;
    lbl1: TLabel;
    mmOBS: TMemo;
    pnlBase: TPanel;
    lbl2: TLabel;
    pnlTitulo: TPanel;
    btnOK: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    ftipo: Integer;
    { Private declarations }
  public
    { Public declarations }
    property tipo : Integer read ftipo write ftipo;
  end;

var
  frmSolicitacaoNumerarioOBS: TfrmSolicitacaoNumerarioOBS;

implementation

uses uSolicitacaoNumerario, uAutorizacaoNumerario;

{$R *.DFM}

procedure TfrmSolicitacaoNumerarioOBS.btnOKClick(Sender: TObject);
begin
  if ( tipo = 3 ) then
    frmAutorizarNumerario.OBSNaoAutorizado := mmOBS.Lines.Text
  else
    frmSolicitacaoNumerario.OBSSolicitacao := mmOBS.Lines.Text;
end;

procedure TfrmSolicitacaoNumerarioOBS.FormShow(Sender: TObject);
begin
  if ( tipo = 1 ) then begin
    pnlTitulo.Color := clGray;
    pnlTitulo.Caption := 'Observação da "SOLICITAÇÃO" de Numerário';
    lbl1.Caption := 'Entre com observação da "SOLICITAÇÃO" de de autorização de numerários.';
  end
  else
  if ( tipo = 2 ) then begin
    pnlTitulo.Color := clRed;
    pnlTitulo.Caption := 'Observação do "CANCELAMENTO" da Solicitação de Numerário';
    lbl1.Caption := 'Entre com observação do "CANCELAMENTO" da solicitação de autorização de numerários.';
  end
  else
  if ( tipo = 3 ) then begin
    pnlTitulo.Color := clOlive;
    pnlTitulo.Caption := 'Observação da "NÃO AUTORIZAÇÃO" da Solicitação de Numerário';
    lbl1.Caption := 'Entre com observação da "NÃO AUTORIZAÇÃO" da solicitação de autorização de numerários.';
    lbl2.Caption := 'As informções digitadas aqui, serão enviados no corpo do e-mail para responsável pela solicitação.';
  end
end;

end.
