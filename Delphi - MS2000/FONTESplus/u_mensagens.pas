unit u_mensagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  Tf_mensagens = class(TForm)
    l_mensagem: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_mensagens: Tf_mensagens;

implementation

{$R *.DFM}

end.
