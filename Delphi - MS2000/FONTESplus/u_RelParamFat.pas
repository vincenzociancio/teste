unit u_RelParamFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBCtrls, Grids, DBGrids;

type
  Tf_RelParamFat = class(TForm)
    cb_todos: TCheckBox;
    Label1: TLabel;
    btnRel: TBitBtn;
    btnSair: TBitBtn;
    qrImport: TQuery;
    dsImportRS: TDataSource;
    DBGrid1: TDBGrid;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    cbAtivos: TCheckBox;
    cb_para: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_RelParamFat: Tf_RelParamFat;

implementation

uses u_qrRelParamFat, U_MSCOMEX;

{$R *.DFM}

procedure Tf_RelParamFat.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


    { h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w;}
end;

procedure Tf_RelParamFat.FormCreate(Sender: TObject);
begin
     qrImport.Open;
end;

procedure Tf_RelParamFat.btnRelClick(Sender: TObject);
begin

     If not Assigned(f_qrRelParamFat) then Application.CreateForm(Tf_qrRelParamFat, f_qrRelParamFat);
     With f_qrRelParamFat Do Begin
         If cb_todos.Checked Then
            qrCliente.Params[0].AsString := '%'
         Else
            qrCliente.Params[0].AsString := qrImportCodigo.AsString;
         if cbativos.Checked then begin
            qrCliente.Params[1].Asinteger := 1;
            qrl_titulo.Caption := qrl_titulo.Caption+' - Somente Cliente Ativos';
         end
         else begin
            qrCliente.Params[1].Asinteger := 0;
         end;
         if cb_para.Checked then begin
            qrFaturamento.Params[1].Asinteger := 0;
            qrl_titulo.Caption := qrl_titulo.Caption+' - Somente Parametros Desativados';
         end
         else begin
            qrFaturamento.Params[1].Asinteger := 1;
         end;
         qrCliente.Open;
         Preview;
         qrCliente.Close;
     End;

end;

procedure Tf_RelParamFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  F_MSComex.ParmetrosdeFaturamento1.Enabled := True;
  F_RelParamFat := nil;
    Action := caFree;
end;

procedure Tf_RelParamFat.btnSairClick(Sender: TObject);
begin
     Close;
end;

end.
