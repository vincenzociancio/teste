unit u_localizarlancamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  Tf_localizarlancamentos = class(TForm)
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
  f_localizarlancamentos: Tf_localizarlancamentos;

implementation

uses
  u_uploaddocumentos;

{$R *.DFM}

procedure Tf_localizarlancamentos.b_oklocClick(Sender: TObject);
begin
  f_uploaddocumentos.b_oklocClick(b_okloc);
end;

procedure Tf_localizarlancamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  f_localizarlancamentos := nil;
end;

procedure Tf_localizarlancamentos.b_fechalocClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_localizarlancamentos.rg_localizaClick(Sender: TObject);
begin
  e_chave.Clear;
  e_chave.SetFocus;

  btnAnterior.Visible := rg_localiza.ItemIndex >= 1;
  btnProximo.Visible  := rg_localiza.ItemIndex >= 1;
end;

procedure Tf_localizarlancamentos.btnProximoClick(Sender: TObject);
begin
  if f_uploaddocumentos.Posicao <= f_uploaddocumentos.QtdMovimentacoes
   then begin
     f_uploaddocumentos.Posicao := f_uploaddocumentos.Posicao + 1;

     btnAnterior.Enabled := f_uploaddocumentos.Posicao > 1;
     btnProximo.Enabled  := not(f_uploaddocumentos.Posicao = f_uploaddocumentos.QtdMovimentacoes);

     f_uploaddocumentos.q_mov.Locate('codigo_mov',f_uploaddocumentos.Movimentacao[f_uploaddocumentos.Posicao],[]);
   end;
end;

procedure Tf_localizarlancamentos.btnAnteriorClick(Sender: TObject);
begin
  if f_uploaddocumentos.Posicao <= f_uploaddocumentos.QtdMovimentacoes
   then begin
     f_uploaddocumentos.Posicao := f_uploaddocumentos.Posicao - 1;

     btnAnterior.Enabled := f_uploaddocumentos.Posicao > 1;
     btnProximo.Enabled  := not(f_uploaddocumentos.Posicao = f_uploaddocumentos.QtdMovimentacoes);

     f_uploaddocumentos.q_mov.Locate('codigo_mov',f_uploaddocumentos.Movimentacao[f_uploaddocumentos.Posicao],[]);
   end;
end;

procedure Tf_localizarlancamentos.e_chaveChange(Sender: TObject);
begin
  btnAnterior.Enabled := False;
  btnProximo.Enabled  := False;
end;

procedure Tf_localizarlancamentos.e_chaveKeyPress(Sender: TObject;
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
