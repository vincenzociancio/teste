unit u_tbd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls;

type
  Tf_tbd = class(TForm)
    DB_MSCOMEX: TDatabase;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tbd: Tf_tbd;

implementation

{$R *.DFM}

procedure Tf_tbd.Button1Click(Sender: TObject);
var qsenha:string;
    qsenha2:string;
    asenha:string;
    s1:string;
    s2:string;
    s3:string;
    s4:string;
    s5:string;
    s6:string;
    s7:string;
    s8:string;
    s9:string;
    c1:integer;
    c2:integer;
    c3:integer;
    c4:integer;
    c5:integer;
    c6:integer;
    c7:integer;
    c8:integer;
    c9:integer;
    qreg:integer;
    pos:integer;

begin
    DB_MSCOMEX.Params.Values['USER NAME'] := '';
    qreg:=0;
    asenha:='lasbr';
    qsenha := '';
    qsenha2:= '';
    s1:= '';
    s2:= '';
    s3:= '';
    s4:= '';
    s5:= '';
    s6:= '';
    s7:= '';
    s8:= '';
    s9:= '';

    while true do begin
          for c1 := 48 to 90 do begin
          s1 := chr(c1);
          for c2 := 48 to 90 do begin
          s2 := chr(c2);
          for c3 := 48 to 90 do begin
          s3 := chr(c3);
          for c4 := 48 to 90 do begin
          s4 := chr(c4);
          for c5 := 48 to 90 do begin
          s5 := chr(c5);
          {for c6 := 48 to 90 do begin
          s6 := chr(c6);
          for c7 := 48 to 90 do begin
          s7 := chr(c7);
          for c8 := 48 to 90 do begin
          s8 := chr(c8);
          for c9 := 48 to 90 do begin
          s9 := chr(c9);
           }
          qsenha2 := s1+s2+s3+s4+s5+s6+s7+s8+s9;
          {qsenha2:='';
          for pos := 1 to 5 do begin
          qsenha2 := qsenha2+copy(qsenha,pos,1);
           }
          qreg:=qreg+1;
          {DB_MSCOMEX.Params.Values['PASSWORD'] := qsenha2;
          try
          DB_MSCOMEX.Connected := true;
          showmessage('SENHA='+qsenha2);
          DB_MSCOMEX.Connected := false;
          except
          On E:Exception do begin
              label1.caption := 'tentativa... '+inttostr(qreg)+' - senha testada... '+qsenha2;
              label1.Refresh;
          end;
          end;

          qsenha2 := lowercase(qsenha2);
          qreg:=qreg+1;
          DB_MSCOMEX.Params.Values['PASSWORD'] := qsenha2;
          try
          DB_MSCOMEX.Connected := true;
          showmessage('SENHA='+qsenha2);
          DB_MSCOMEX.Connected := false;
          except
          On E:Exception do begin
              label1.caption := 'tentativa... '+inttostr(qreg)+' - senha testada... '+qsenha2;
              label1.Refresh;
          end;
          end;}

          if (qsenha2=asenha) then showmessage('SENHA='+qsenha2)
              else begin
              label1.caption := 'tentativa... '+inttostr(qreg)+' - senha testada... '+qsenha2;
              label1.Refresh;
          end;

         //end;




          end;
          end;
          end;
          end;
          end;
          {end;
          end;
          end;
          end;}




        ///if i = 15 then qsenha:='lasbrug30';
        {DB_MSCOMEX.Params.Values['PASSWORD'] := qsenha;
        try
          DB_MSCOMEX.Connected := true;
          showmessage('SENHA='+qsenha);
          DB_MSCOMEX.Connected := false;
        except
        On E:Exception do begin
           label1.caption := 'tentativa... '+inttostr(qreg)+' - senha testada... '+qsenha;
           label1.Refresh;
           end;
        end;}
    end;

end;

end.
