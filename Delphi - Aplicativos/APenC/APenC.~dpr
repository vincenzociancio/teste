program APenC;

uses
  Windows,
  Forms,
  Messages,
  u_APenC in 'u_APenC.pas' {frmAPenC};

{$R *.RES}

const
     cSIST_DESC = 'APenC - Monitoração de Pendências de Clientes';
     cSIST_VERS = 'Versão 1.2 - JAN/2011';

var
   Hwnd: THandle;

begin
  Hwnd := FindWindow('TfrmAPenC', nil);
  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
     //Halt;
  End;

  Application.Initialize;
  Application.Title := 'APenC';
  Application.CreateForm(TfrmAPenC, frmAPenC);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
