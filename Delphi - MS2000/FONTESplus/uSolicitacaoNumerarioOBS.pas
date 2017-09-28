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
    pnlTitulo.Caption := 'Observa��o da "SOLICITA��O" de Numer�rio';
    lbl1.Caption := 'Entre com observa��o da "SOLICITA��O" de de autoriza��o de numer�rios.';
  end
  else
  if ( tipo = 2 ) then begin
    pnlTitulo.Color := clRed;
    pnlTitulo.Caption := 'Observa��o do "CANCELAMENTO" da Solicita��o de Numer�rio';
    lbl1.Caption := 'Entre com observa��o do "CANCELAMENTO" da solicita��o de autoriza��o de numer�rios.';
  end
  else
  if ( tipo = 3 ) then begin
    pnlTitulo.Color := clOlive;
    pnlTitulo.Caption := 'Observa��o da "N�O AUTORIZA��O" da Solicita��o de Numer�rio';
    lbl1.Caption := 'Entre com observa��o da "N�O AUTORIZA��O" da solicita��o de autoriza��o de numer�rios.';
    lbl2.Caption := 'As inform��es digitadas aqui, ser�o enviados no corpo do e-mail para respons�vel pela solicita��o.';
  end
end;

end.
