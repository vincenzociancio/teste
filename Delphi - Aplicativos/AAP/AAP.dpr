program AAP;

uses
  Windows,
  Forms,
  Messages,
  U_AAP in 'U_AAP.pas' {frmAAP};

{$R *.RES}

const
     cSIST_DESC = 'AAP - Aviso de Acompanhamento de Processos por Respons�vel';
     cSIST_VERS = 'Vers�o 4.0 SS - OUT/2010';

var
   Hwnd: THandle;

begin
  Hwnd := FindWindow('TfrmAAP', nil);
  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
    // Halt;
  End;

  Application.Initialize;
  Application.Title := 'AAP';
  Application.CreateForm(TfrmAAP, frmAAP);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.