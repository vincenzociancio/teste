program ADES;

uses
  Windows,
  Forms,
  Messages,
  u_ADES in 'u_ADES.pas' {frmADES};

{$R *.RES}

const
     cSIST_DESC = 'ADES - ANÁLISE DE DESEMBARAÇOS';
     cSIST_VERS = 'Versão 1.0 - FEV/2011';

var
   Hwnd: THandle;

begin
{  Hwnd := FindWindow('TfrmADES', nil);
  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
     Halt;
  End;}

  Application.Initialize;
  Application.Title := 'ADES';
  Application.CreateForm(TfrmADES, frmADES);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
