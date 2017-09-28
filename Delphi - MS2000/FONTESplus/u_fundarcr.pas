unit u_fundarcr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, StdCtrls, Buttons, Mask;

type
  TF_fundarcr = class(TForm)
    t_Funda: TTable;
    dsFunda: TDataSource;
    dbgFunda: TDBGrid;
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
    q_Teste: TQuery;
    q_Proc: TQuery;
    q_ProcFundamentacao_RCR: TStringField;
    q_TesteCodigo: TStringField;
    t_FundaCodigo: TStringField;
    t_FundaDescricao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_FundaAfterScroll(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_fundarcr: TF_fundarcr;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_fundarcr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     t_Funda.Close;

     Action := caFree;
     f_fundarcr := nil;
     f_mscomex.FundamentaoRCR1.Enabled := True;
end;

procedure TF_fundarcr.FormActivate(Sender: TObject);
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
     width := w; }

end;

procedure TF_fundarcr.FormCreate(Sender: TObject);
begin
     t_Funda.Open;
end;

procedure TF_fundarcr.t_FundaAfterScroll(DataSet: TDataSet);
begin
     if t_Funda.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

procedure TF_fundarcr.btnNovoClick(Sender: TObject);
begin
  t_Funda.Append;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgFunda.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure TF_fundarcr.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgFunda.Enabled := False;
  dbedtDesc.Enabled := True;

  t_Funda.Edit;
  dbedtDesc.SetFocus;
end;

procedure TF_fundarcr.btnExcluirClick(Sender: TObject);
begin
     q_Proc.Params[0].AsString := t_FundaCodigo.AsString;
     q_Proc.Open;
     if q_Proc.RecordCount <> 0 then
        MessageDlg('Existem Processos com esta Fundamentação RCR. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão desta Fundamentação RCR?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_Funda.Delete;
           ShowMessage('Fundamentação RCR excluída!');
         end;
     q_Proc.Close;
     btnNovo.SetFocus;
end;

procedure TF_fundarcr.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgFunda.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  t_Funda.Cancel;
  btnNovo.SetFocus;
end;

procedure TF_fundarcr.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código da Fundamentação RCR!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else
        if dbedtDesc.Text = '' then begin
           MessageDlg('Digite a descrição da Fundamentação RCR!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              q_Teste.Params[0].AsString := t_FundaCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Fundamentação RCR com este código!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
           end
           else begin
              t_Funda.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('Fundamentação RCR incluída com sucesso!')
              else
                 ShowMessage('Fundamentação RCR alterada com sucesso!');

              btnNovo.Enabled := True;
              btnAlterar.Enabled := True;
              btnExcluir.Enabled := True;
              btnGravar.Enabled := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgFunda.Enabled  := True;
              dbedtCod.Enabled := False;
              dbedtDesc.Enabled := False;

              dbgFunda.SetFocus;
           end;
           q_Teste.Close
        end;
end;

procedure TF_fundarcr.btnSairClick(Sender: TObject);
begin
     Close;
end;

end.
