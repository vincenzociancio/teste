unit u_localizarcontascorrentes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  Tf_localizarcontascorrentes = class(TForm)
    p_localizar: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    rg_localiza: TRadioGroup;
    e_chave: TEdit;
    b_okloc: TBitBtn;
    b_fechaloc: TBitBtn;
    btnAnterior: TButton;
    btnProximo: TButton;
    procedure b_oklocClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_fechalocClick(Sender: TObject);
    procedure rg_localizaClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure e_chaveChange(Sender: TObject);
    procedure e_chaveKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_localizarcontascorrentes: Tf_localizarcontascorrentes;

implementation

uses
  u_contascorrentes;

{$R *.DFM}

procedure Tf_localizarcontascorrentes.b_oklocClick(Sender: TObject);
begin
  f_contascorrentes.b_oklocClick(b_okloc);
end;

procedure Tf_localizarcontascorrentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  f_localizarcontascorrentes := nil;
end;

procedure Tf_localizarcontascorrentes.b_fechalocClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_localizarcontascorrentes.rg_localizaClick(Sender: TObject);
begin
  e_chave.Clear;
  e_chave.SetFocus;

  btnAnterior.Visible := rg_localiza.ItemIndex >= 1;
  btnProximo.Visible  := rg_localiza.ItemIndex >= 1;
end;

procedure Tf_localizarcontascorrentes.btnProximoClick(Sender: TObject);
begin
  if f_contascorrentes.Posicao <= f_contascorrentes.QtdMovimentacoes
   then begin
     f_contascorrentes.Posicao := f_contascorrentes.Posicao + 1;

     btnAnterior.Enabled := f_contascorrentes.Posicao > 1;
     btnProximo.Enabled  := not(f_contascorrentes.Posicao = f_contascorrentes.QtdMovimentacoes);

     f_contascorrentes.q_mov.Locate('codigo_mov',f_contascorrentes.Movimentacao[f_contascorrentes.Posicao],[]);
   end;
end;

procedure Tf_localizarcontascorrentes.btnAnteriorClick(Sender: TObject);
begin
  if f_contascorrentes.Posicao <= f_contascorrentes.QtdMovimentacoes
   then begin
     f_contascorrentes.Posicao := f_contascorrentes.Posicao - 1;

     btnAnterior.Enabled := f_contascorrentes.Posicao > 1;
     btnProximo.Enabled  := not(f_contascorrentes.Posicao = f_contascorrentes.QtdMovimentacoes);

     f_contascorrentes.q_mov.Locate('codigo_mov',f_contascorrentes.Movimentacao[f_contascorrentes.Posicao],[]);
   end;
end;

procedure Tf_localizarcontascorrentes.e_chaveChange(Sender: TObject);
begin
  btnAnterior.Enabled := False;
  btnProximo.Enabled  := False;
end;

procedure Tf_localizarcontascorrentes.e_chaveKeyPress(Sender: TObject;
  var Key: Char);
begin
  if rg_localiza.ItemIndex = 0
   then begin
    if not (Key in ['0'..'9','/', #8])
     then Key := #0;
   end;

  if rg_localiza.ItemIndex = 3
   then begin
    if not (Key in ['0'..'9',',','-', #8])
     then Key := #0;
   end;
end;

end.
