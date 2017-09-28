unit U_ms2000plus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, ComCtrls;

type
  Tf_ms2000plus = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    l_versao: TLabel;
    m_frases: TMemo;
    RichEdit1: TRichEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  f_ms2000plus: Tf_ms2000plus;


implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_ms2000plus.FormCreate(Sender: TObject);
var
   hR: THandle;
begin
     //hR := CreateRectRgn(10, 30, 780, 470);
     SetWindowRgn(Handle, hR, true);
end;

procedure Tf_ms2000plus.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams( Params ) ;
  Params.Style := Params.Style and (not WS_CAPTION);
end;

procedure Tf_ms2000plus.FormActivate(Sender: TObject);
begin
  //label1.caption := v_sistema;
  //L_versao.caption := v_versao;
end;

end.
