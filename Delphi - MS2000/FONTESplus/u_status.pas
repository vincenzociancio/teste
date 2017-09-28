unit u_status;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, StdCtrls, Mask, Buttons;

type
  Tf_status = class(TForm)
    t_Status: TTable;
    dsStatus: TDataSource;
    dbgStatus: TDBGrid;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnSair: TBitBtn;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dbedtCod: TDBEdit;
    dbedtDesc: TDBEdit;
    q_Proc: TQuery;
    q_Teste: TQuery;
    t_StatusCODIGO: TStringField;
    t_StatusDESCRICAO: TStringField;
    q_ProcStatus: TStringField;
    q_TesteCODIGO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure t_StatusAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_status: Tf_status;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_status.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     t_Status.Open;

     Action := caFree;
     f_status := nil;
 //    f_mscomex.StatusdeProcessos1.Enabled := True;
end;

procedure Tf_status.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

{     h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w;   }

end;

procedure Tf_status.FormCreate(Sender: TObject);
begin
     t_Status.Open;
end;

procedure Tf_status.btnNovoClick(Sender: TObject);
begin
  t_Status.Append;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgStatus.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure Tf_status.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgStatus.Enabled := False;
  dbedtDesc.Enabled := True;

  t_Status.Edit;
  dbedtDesc.SetFocus;
end;

procedure Tf_status.btnExcluirClick(Sender: TObject);
begin
     q_Proc.Params[0].AsString := t_StatusCodigo.AsString;
     q_Proc.Open;
     if q_Proc.RecordCount <> 0 then
        MessageDlg('Existem Processos com este Status de Processos. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão deste Status de Processos?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_Status.Delete;
           ShowMessage('Status de Processos excluído!');
         end;
     q_Proc.Close;
     btnNovo.SetFocus;
end;

procedure Tf_status.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgStatus.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  t_Status.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_status.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do Status de Processos!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else
        if dbedtDesc.Text = '' then begin
           MessageDlg('Digite a descrição do Status de Processos!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              q_Teste.Params[0].AsString := t_StatusCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Status de Processos com este código!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
           end
           else begin
              t_Status.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('Status de Processos incluído com sucesso!')
              else
                 ShowMessage('Status de Processos alterado com sucesso!');

              btnNovo.Enabled := True;
              btnAlterar.Enabled := True;
              btnExcluir.Enabled := True;
              btnGravar.Enabled := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgStatus.Enabled  := True;
              dbedtCod.Enabled := False;
              dbedtDesc.Enabled := False;

              dbgStatus.SetFocus;
           end;
           q_Teste.Close
        end;
end;

procedure Tf_status.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_status.t_StatusAfterScroll(DataSet: TDataSet);
begin
     if t_Status.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

end.
