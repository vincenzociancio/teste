program APA;


uses
  Forms,
  Windows,
  Dialogs,
  Messages,
  u_APA in 'u_APA.pas' {frmAPA};

{$R *.RES}

const
     cSIST_DESC = 'APA - Aviso de Processos Abertos';
     cSIST_VERS = 'Vers�o 2.1 SS - Jul/2011';

var
   Hwnd: THandle;

begin
  Hwnd := FindWindow('TfrmAPA', nil);
  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
 //    Halt;
  End;

  Application.Initialize;
  Application.Title := 'APA';
  Application.CreateForm(TfrmAPA, frmAPA);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
