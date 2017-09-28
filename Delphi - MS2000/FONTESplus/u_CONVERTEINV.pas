unit u_CONVERTEINV;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables;

type
  Tf_converteinv = class(TForm)
    e_arquivo: TEdit;
    B_OK: TButton;
    Memo1: TMemo;
    e_itens: TEdit;
    Database1: TDatabase;
    Table1: TTable;
    Table1reg: TAutoIncField;
    Table1Descricao: TStringField;
    Table1nserie: TStringField;
    procedure B_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_converteinv: Tf_converteinv;
  v_textoinv: textfile;

implementation

{$R *.DFM}

procedure Tf_converteinv.B_OKClick(Sender: TObject);
var
S,m: string;
achou:boolean;
i:integer;
v_itens:integer;

begin

assignfile(v_textoinv,e_arquivo.text);
Reset(v_textoinv);
memo1.clear;
achou := false;
v_itens := 0;
while not Eof(v_textoinv) do  begin
      Readln(v_textoinv,s);
      if (uppercase(copy(s,1,8)) = 'ON PLACE') or
         (uppercase(copy(s,1,9)) = 'ON REPAIR') or
         (uppercase(copy(s,1,8)) = 'IN STORE') or
         (uppercase(copy(s,1,7)) = 'ON MOVE') then begin
         achou := true;
         v_itens := v_itens+1;
      end;
      if achou then begin
      m := '';
      for i := 0 to 5 do begin
          Readln(v_textoinv,s);
          if (i = 2) or (i = 4) then  m := m + copy(trim(s)+'                                             ',1,40);
          if (i = 2) then begin
             table1.append;
             table1descricao.asstring := trim(s);
             table1.post;
          end;
          if (i = 4) then begin
             table1.edit;
             table1nserie.asstring := trim(s);
             table1.post;
          end;

      end;
         memo1.Lines.Add(m);
         memo1.refresh;
         e_itens.text := inttostr(v_itens);
         e_itens.refresh;
         achou := false;
      end;

end;


end;

end.
