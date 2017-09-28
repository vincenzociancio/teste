program APen;

uses
  Windows,
  Forms,
  Messages,
  u_APen in 'u_APen.pas' {frmAPen};

{$R *.RES}

const
     cSIST_DESC = 'APen - Monitoração de Pendências';
     cSIST_VERS = 'Versão 11 - FEV/2011';

var
   Hwnd: THandle;

begin
  Hwnd := FindWindow('TfrmAPen', nil);
  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
     //Halt;
  End;

  Application.Initialize;
  Application.Title := 'APen';
  Application.CreateForm(TfrmAPen, frmAPen);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
