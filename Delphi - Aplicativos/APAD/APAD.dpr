program APAD;


uses
  Forms,
  Windows,
  Dialogs,
  Messages,
  u_APAD in 'u_APAD.pas' {frmAPAD};

{$R *.RES}

const
  cSIST_DESC = 'APAD - Aviso de Processos Aguardando Desembaraço';
  cSIST_VERS = 'Versão 1.1 SS - Jul/2011';

begin
  Application.Initialize;
  Application.Title := 'APAD';
  Application.CreateForm(TfrmAPAD, frmAPAD);
  SendMessage(Application.MainForm.Handle, WM_SETTEXT, 0, Integer(PChar(cSIST_DESC +' - '+ cSIST_VERS)));
  Application.MainForm.Show;
  SetForegroundWindow(Application.MainForm.Handle);
  Application.Run;
end.
