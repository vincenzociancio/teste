program ALC;

uses
  Windows,
  Forms,
  Messages,
  u_ALC in 'u_ALC.pas' {frmALC};

{$R *.RES}

const
  cSIST_DESC = 'ALC - Aviso de Liberação de Carga';
  cSIST_VERS = 'Versão 2.0 SS - JAN/2011';

var
  Hwnd: THandle;

begin
  Hwnd := FindWindow('TfrmALC', nil);

  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
     //Halt;
  End;

  Application.Initialize;
  Application.Title := 'ALC';
  Application.CreateForm(TfrmALC, frmALC);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
