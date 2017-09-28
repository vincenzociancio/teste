unit u_visuNormaSGI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,shellAPI, Db, DBTables;

type
  TF_visuNormaSGI = class(TForm)
    DBGrid1: TDBGrid;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    btnAbrir: TBitBtn;
    dsVisuNorma: TDataSource;
    qrVisuNorma: TQuery;
    qrVisuNormaSetor: TStringField;
    qrVisuNormaNorma: TStringField;
    qrVisuNormaNome_PDF: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_visuNormaSGI: TF_visuNormaSGI;
  nome : string;

implementation
 uses U_MSCOMEX, U_acesso;
{$R *.DFM}

procedure TF_visuNormaSGI.FormActivate(Sender: TObject);
begin
  qrVisuNorma.close;
 // qrVisuNorma.ParamByName( 'Pusuario' ).value := v_usuario;
 // qrVisuNorma.ExecSQL;
  qrVisuNorma.open;

end;

procedure TF_visuNormaSGI.btnAbrirClick(Sender: TObject);
Var
 Pdir : pchar ;
begin
  nome := '\\msserver01\Procedimentos_ISO\'+ qrVisuNormaNome_PDF.AsString +'.pdf';
  GetMem(Pdir,256);
  StrPCopy(Pdir,nome);
  if FileExists(nome) then begin
    ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
    FreeMem(Pdir,256);
  end
  else
  ShowMessage('O arquivo não Foi localizado.');
end;

procedure TF_visuNormaSGI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    f_mscomex.visualizanormasSGI.Enabled := True;
    F_visuNormaSGI := nil;
    Action := caFree;
end;

end.
