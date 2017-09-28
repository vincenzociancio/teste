unit U_armazens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, DBCtrls, Grids, DBGrids, DBTables, Mask;

type
  TF_armazens = class(TForm)
    t_Armazem: TTable;
    dsArmazem: TDataSource;
    dbgArmazem: TDBGrid;
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
    q_Cargas: TQuery;
    q_Teste: TQuery;
    t_ArmazemCodigo: TStringField;
    t_ArmazemDescricao: TStringField;
    q_CargasCodArmazem: TStringField;
    q_TesteCodigo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure t_ArmazemAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_armazens: TF_armazens;

implementation

uses U_MSCOMEX ;

{$R *.DFM}

procedure TF_armazens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     t_Armazem.Close;
     
     Action := caFree;
     f_armazens := nil;
     f_mscomex.Armazens1.Enabled := True;
end;

procedure TF_armazens.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

    { h := Height;
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
     width := w;}

end;

procedure TF_armazens.FormCreate(Sender: TObject);
begin
     t_Armazem.Open;
end;

procedure TF_armazens.btnNovoClick(Sender: TObject);
begin
  t_Armazem.Append;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgArmazem.Enabled := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure TF_armazens.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgArmazem.Enabled := False;
  dbedtDesc.Enabled := True;

  t_Armazem.Edit;
  dbedtDesc.SetFocus;
end;

procedure TF_armazens.btnExcluirClick(Sender: TObject);
begin
     q_Cargas.Params[0].AsString := t_ArmazemCodigo.AsString;
     q_Cargas.Open;
     if q_Cargas.RecordCount <> 0 then
        MessageDlg('Existem Processos com este Armazém. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão deste Armazém?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_Armazem.Delete;
           ShowMessage('Armazém excluído!');
         end;
     q_Cargas.Close;
     btnNovo.SetFocus;
end;

procedure TF_armazens.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgArmazem.Enabled := True;
  dbedtCod.Enabled  := False;
  dbedtDesc.Enabled := False;

  t_Armazem.Cancel;
  btnNovo.SetFocus;
end;

procedure TF_armazens.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtCod.Text = '' then begin
        MessageDlg('Digite o código do Armazém!', mtInformation,[mbOk], 0);
        dbedtCod.SetFocus;
     end
     else
        if dbedtDesc.Text = '' then begin
           MessageDlg('Digite a descrição do Armazém!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              q_Teste.Params[0].AsString := t_ArmazemCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Armazém com este código!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
           end
           else begin
              t_Armazem.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('Armazém incluído com sucesso!')
              else
                 ShowMessage('Armazém alterado com sucesso!');

              btnNovo.Enabled := True;
              btnAlterar.Enabled := True;
              btnExcluir.Enabled := True;
              btnGravar.Enabled := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgArmazem.Enabled  := True;
              dbedtCod.Enabled := False;
              dbedtDesc.Enabled := False;

              dbgArmazem.SetFocus;
           end;
           q_Teste.Close
        end;
end;

procedure TF_armazens.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_armazens.t_ArmazemAfterScroll(DataSet: TDataSet);
begin
     if t_Armazem.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

end.
