program AFAT;

uses
  Windows,
  Forms,
  Messages,
  u_AFAT in 'u_AFAT.pas' {frmAFAT};

{$R *.RES}

const
     cSIST_DESC = 'AFAT - PLANILHA DE PROCESSOS À FATURAR';
     cSIST_VERS = 'Versão 2.0 SS - JUN/2009';

var
   Hwnd: THandle;

begin
  Hwnd := FindWindow('TfrmAVSD', nil);
  If Hwnd <> 0 Then Begin
     SetForegroundWindow(Hwnd);
     //Halt;
  End;

  Application.Initialize;
  Application.Title := 'AFAT';
  Application.CreateForm(TfrmAFAT, frmAFAT);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
