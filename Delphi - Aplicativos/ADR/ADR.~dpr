program ADR;


uses
  Windows,
  Forms,
  Messages,
  U_ADR in 'U_ADR.pas' {frmADR};

{$R *.RES}

const
     cSIST_DESC = 'ADR - Aviso Automático de DI''s Registradas';
     cSIST_VERS = 'Versão 2.5 SS - DEZ/2011';

var
   Hwnd: THandle;

begin
  Hwnd := FindWindow('TfrmADR', nil);
  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
    // Halt;
  End;

  Application.Initialize;
  Application.Title := 'ADR';
  Application.CreateForm(TfrmADR, frmADR);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
