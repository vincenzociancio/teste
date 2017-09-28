unit u_padrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables;

type
  TF_prodesembaraco = class(TForm)
    p_processo1: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    q_processos: TQuery;
    ds_qprocessos: TDataSource;
    l_cliente: TLabel;
    q_processosEmpresa: TStringField;
    q_processosFilial: TStringField;
    q_processosProcesso: TStringField;
    q_processosData: TDateTimeField;
    q_processosrefcli: TStringField;
    q_processosCliente: TStringField;
    q_processostipodecla: TStringField;
    q_processostipopro: TStringField;
    q_processosqcontrato: TStringField;
    q_processosqlocal: TStringField;
    p_processo2: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_prodesembaraco: TF_prodesembaraco;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_prodesembaraco.FormActivate(Sender: TObject);
begin
f_prodesembaraco.left := 0;
f_prodesembaraco.top  := 0;
q_processos.close;
q_processos.open;
end;

procedure TF_prodesembaraco.ME_nossarefChange(Sender: TObject);
begin
if length(me_nossaref.text)= 8 then begin
   if q_processos.Locate('Processo',me_nossaref.text,[loCaseInsensitive]) then begin
      l_cliente.caption := q_processoscliente.asstring;
      p_processo2.visible := true;
   end
   else begin
      showmessage('Processo não encontrado!');
      l_cliente.caption := '';
      me_nossaref.text := '';
      p_processo2.visible := false;
   end;
end;
end;

procedure TF_prodesembaraco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_prodesembaraco := nil;
f_mscomex.Desembarao1.enabled := true;
end;

end.
